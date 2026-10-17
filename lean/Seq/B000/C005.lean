import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A027602.P2679377937091624113

`n^3+(n+1)^3+(n+2)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027602.P2679377937091624113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (n + 1) ^ 3 + (n + 2) ^ 3

end

end A027602.P2679377937091624113

noncomputable section

/-- A027602: a(n) = n^3 + (n+1)^3 + (n+2)^3.

Offset 0, canonical program `A027602.P2679377937091624113`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3+(n+2)^3` (program `A027602.P2679377937091624113`, by `A027602.P2679377937091624113.correct`). Lean does not check the parsing of the name. -/
def A027602 (n : ℕ) : ℤ :=
  (A027602.P2679377937091624113.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3+(n+2)^3` (program `A027602.P2679377937091624113`, by `A027602.P2679377937091624113.correct`). Lean does not check the parsing of the name. -/
def A027602.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027604.P17635356302932696174

`n^3+(n+1)^3+(n+2)^3+(n+3)^3+(n+4)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027604.P17635356302932696174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (n + 1) ^ 3 + (n + 2) ^ 3 + (n + 3) ^ 3 + (n + 4) ^ 3

end

end A027604.P17635356302932696174

noncomputable section

/-- A027604: a(n) = n^3 + (n+1)^3 + (n+2)^3 + (n+3)^3 + (n+4)^3.

Offset 0, canonical program `A027604.P17635356302932696174`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3+(n+2)^3+(n+3)^3+(n+4)^3` (program `A027604.P17635356302932696174`, by `A027604.P17635356302932696174.correct`). Lean does not check the parsing of the name. -/
def A027604 (n : ℕ) : ℤ :=
  (A027604.P17635356302932696174.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3+(n+2)^3+(n+3)^3+(n+4)^3` (program `A027604.P17635356302932696174`, by `A027604.P17635356302932696174.correct`). Lean does not check the parsing of the name. -/
def A027604.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027622.P14168221498897382064

`n+(n+1)²+(n+2)^3+(n+3)^4+(n+4)^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027622.P14168221498897382064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (n + 1) ^ 2 + (n + 2) ^ 3 + (n + 3) ^ 4 + (n + 4) ^ 5

end

end A027622.P14168221498897382064

noncomputable section

/-- A027622: a(n) = n + (n+1)^2 + (n+2)^3 + (n+3)^4 + (n+4)^5.

Offset 0, canonical program `A027622.P14168221498897382064`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²+(n+2)^3+(n+3)^4+(n+4)^5` (program `A027622.P14168221498897382064`, by `A027622.P14168221498897382064.correct`). Lean does not check the parsing of the name. -/
def A027622 (n : ℕ) : ℤ :=
  (A027622.P14168221498897382064.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²+(n+2)^3+(n+3)^4+(n+4)^5` (program `A027622.P14168221498897382064`, by `A027622.P14168221498897382064.correct`). Lean does not check the parsing of the name. -/
def A027622.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027649.P2434933350896167885

`2*3^n-2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027649.P2434933350896167885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ n : ℤ) - (2 ^ n : ℤ)

end

end A027649.P2434933350896167885

noncomputable section

/-- A027649: a(n) = 2*(3^n) - 2^n.

Offset 0, canonical program `A027649.P2434933350896167885`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-2^n` (program `A027649.P2434933350896167885`, by `A027649.P2434933350896167885.correct`). Lean does not check the parsing of the name. -/
def A027649 (n : ℕ) : ℤ :=
  A027649.P2434933350896167885.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-2^n` (program `A027649.P2434933350896167885`, by `A027649.P2434933350896167885.correct`). Lean does not check the parsing of the name. -/
def A027649.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027688.P8442410975372676491

`n²+n+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027688.P8442410975372676491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 3)

end

end A027688.P8442410975372676491

noncomputable section

/-- A027688: a(n) = n^2 + n + 3.

Offset 0, canonical program `A027688.P8442410975372676491`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+3` (program `A027688.P8442410975372676491`, by `A027688.P8442410975372676491.correct`). Lean does not check the parsing of the name. -/
def A027688 (n : ℕ) : ℤ :=
  (A027688.P8442410975372676491.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+3` (program `A027688.P8442410975372676491`, by `A027688.P8442410975372676491.correct`). Lean does not check the parsing of the name. -/
def A027688.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027689.P325012815377208042

`n²+n+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027689.P325012815377208042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 4)

end

end A027689.P325012815377208042

noncomputable section

/-- A027689: a(n) = n^2 + n + 4.

Offset 0, canonical program `A027689.P325012815377208042`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+4` (program `A027689.P325012815377208042`, by `A027689.P325012815377208042.correct`). Lean does not check the parsing of the name. -/
def A027689 (n : ℕ) : ℤ :=
  (A027689.P325012815377208042.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+4` (program `A027689.P325012815377208042`, by `A027689.P325012815377208042.correct`). Lean does not check the parsing of the name. -/
def A027689.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027690.P2580232155574305531

`n²+n+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027690.P2580232155574305531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 5)

end

end A027690.P2580232155574305531

noncomputable section

/-- A027690: a(n) = n^2 + n + 5.

Offset 0, canonical program `A027690.P2580232155574305531`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+5` (program `A027690.P2580232155574305531`, by `A027690.P2580232155574305531.correct`). Lean does not check the parsing of the name. -/
def A027690 (n : ℕ) : ℤ :=
  (A027690.P2580232155574305531.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+5` (program `A027690.P2580232155574305531`, by `A027690.P2580232155574305531.correct`). Lean does not check the parsing of the name. -/
def A027690.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027691.P16614032398726760404

`n²+n+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027691.P16614032398726760404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 6)

end

end A027691.P16614032398726760404

noncomputable section

/-- A027691: a(n) = n^2 + n + 6.

Offset 0, canonical program `A027691.P16614032398726760404`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+6` (program `A027691.P16614032398726760404`, by `A027691.P16614032398726760404.correct`). Lean does not check the parsing of the name. -/
def A027691 (n : ℕ) : ℤ :=
  (A027691.P16614032398726760404.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+6` (program `A027691.P16614032398726760404`, by `A027691.P16614032398726760404.correct`). Lean does not check the parsing of the name. -/
def A027691.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027692.P10671245545243804733

`n²+n+7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027692.P10671245545243804733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 7)

end

end A027692.P10671245545243804733

noncomputable section

/-- A027692: a(n) = n^2 + n + 7.

Offset 0, canonical program `A027692.P10671245545243804733`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+7` (program `A027692.P10671245545243804733`, by `A027692.P10671245545243804733.correct`). Lean does not check the parsing of the name. -/
def A027692 (n : ℕ) : ℤ :=
  (A027692.P10671245545243804733.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+7` (program `A027692.P10671245545243804733`, by `A027692.P10671245545243804733.correct`). Lean does not check the parsing of the name. -/
def A027692.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027693.P12090355357805951648

`n²+n+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027693.P12090355357805951648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 8)

end

end A027693.P12090355357805951648

noncomputable section

/-- A027693: a(n) = n^2 + n + 8.

Offset 0, canonical program `A027693.P12090355357805951648`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+8` (program `A027693.P12090355357805951648`, by `A027693.P12090355357805951648.correct`). Lean does not check the parsing of the name. -/
def A027693 (n : ℕ) : ℤ :=
  (A027693.P12090355357805951648.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+8` (program `A027693.P12090355357805951648`, by `A027693.P12090355357805951648.correct`). Lean does not check the parsing of the name. -/
def A027693.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027694.P15839147966433052367

`n²+n+9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027694.P15839147966433052367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 9)

end

end A027694.P15839147966433052367

noncomputable section

/-- A027694: a(n) = n^2 + n + 9.

Offset 0, canonical program `A027694.P15839147966433052367`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+9` (program `A027694.P15839147966433052367`, by `A027694.P15839147966433052367.correct`). Lean does not check the parsing of the name. -/
def A027694 (n : ℕ) : ℤ :=
  (A027694.P15839147966433052367.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+9` (program `A027694.P15839147966433052367`, by `A027694.P15839147966433052367.correct`). Lean does not check the parsing of the name. -/
def A027694.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027849.P11589793859807254720

`(n+1)*(5*n²+4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027849.P11589793859807254720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (5 * n ^ 2 + 4 * n + 1)

end

end A027849.P11589793859807254720

noncomputable section

/-- A027849: a(n) = (n+1)*(5*n^2+4*n+1).

Offset 0, canonical program `A027849.P11589793859807254720`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(5*n²+4*n+1)` (program `A027849.P11589793859807254720`, by `A027849.P11589793859807254720.correct`). Lean does not check the parsing of the name. -/
def A027849 (n : ℕ) : ℤ :=
  (A027849.P11589793859807254720.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(5*n²+4*n+1)` (program `A027849.P11589793859807254720`, by `A027849.P11589793859807254720.correct`). Lean does not check the parsing of the name. -/
def A027849.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027850.P14715144222992184215

`(n+1)*(14*n^3+13*n²+6*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027850.P14715144222992184215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (14 * n ^ 3 + 13 * n ^ 2 + 6 * n + 1)

end

end A027850.P14715144222992184215

noncomputable section

/-- A027850: a(n) = (n+1)*(14*n^3+13*n^2+6*n+1).

Offset 0, canonical program `A027850.P14715144222992184215`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(14*n^3+13*n²+6*n+1)` (program `A027850.P14715144222992184215`, by `A027850.P14715144222992184215.correct`). Lean does not check the parsing of the name. -/
def A027850 (n : ℕ) : ℤ :=
  (A027850.P14715144222992184215.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(14*n^3+13*n²+6*n+1)` (program `A027850.P14715144222992184215`, by `A027850.P14715144222992184215.correct`). Lean does not check the parsing of the name. -/
def A027850.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027903.P1291765981776182975

`n*(n+1)*(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027903.P1291765981776182975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) * (3 * n + 1))

end

end A027903.P1291765981776182975

noncomputable section

/-- A027903: a(n) = n*(n + 1)*(3*n + 1).

Offset 0, canonical program `A027903.P1291765981776182975`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(3*n+1)` (program `A027903.P1291765981776182975`, by `A027903.P1291765981776182975.correct`). Lean does not check the parsing of the name. -/
def A027903 (n : ℕ) : ℤ :=
  (A027903.P1291765981776182975.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(3*n+1)` (program `A027903.P1291765981776182975`, by `A027903.P1291765981776182975.correct`). Lean does not check the parsing of the name. -/
def A027903.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027934.P16798785412658734534

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027934.P16798785412658734534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A027934.P16798785412658734534

noncomputable section

/-- A027934: a(0)=0, a(1)=1, a(2)=2; for n > 2, a(n) = 3*a(n-1) - a(n-2) - 2*a(n-3).

Offset 0, canonical program `A027934.P16798785412658734534`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-2*a(n-3)` (program `A027934.P16798785412658734534`, by `A027934.P16798785412658734534.correct`). Lean does not check the parsing of the name. -/
def A027934 (n : ℕ) : ℤ :=
  A027934.P16798785412658734534.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-2*a(n-3)` (program `A027934.P16798785412658734534`, by `A027934.P16798785412658734534.correct`). Lean does not check the parsing of the name. -/
def A027934.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028303.P13740220522913106850

`floor(C(n, floor(n/2))/(1+ceil(n/2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028303.P13740220522913106850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (1 + ⌈(n : ℚ) / 2⌉ : ℚ)⌋

end

end A028303.P13740220522913106850

noncomputable section

/-- A028303: a(n) = floor( binomial(n, floor(n/2))/(1 + ceiling(n/2)) ) (interpolates between Catalan numbers).

Offset 0, canonical program `A028303.P13740220522913106850`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, floor(n/2))/(1+ceil(n/2)))` (program `A028303.P13740220522913106850`, by `A028303.P13740220522913106850.correct`). Lean does not check the parsing of the name. -/
def A028303 (n : ℕ) : ℤ :=
  A028303.P13740220522913106850.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, floor(n/2))/(1+ceil(n/2)))` (program `A028303.P13740220522913106850`, by `A028303.P13740220522913106850.correct`). Lean does not check the parsing of the name. -/
def A028303.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028304.P2970693193829967291

`ceil(C(n, floor(n/2))/(1+ceil(n/2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028304.P2970693193829967291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (1 + ⌈(n : ℚ) / 2⌉ : ℚ)⌉

end

end A028304.P2970693193829967291

noncomputable section

/-- A028304: a(n) = ceiling( binomial(n, floor(n/2))/(1 + ceiling(n/2)) ) (interpolates between Catalan numbers).

Offset 0, canonical program `A028304.P2970693193829967291`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(n, floor(n/2))/(1+ceil(n/2)))` (program `A028304.P2970693193829967291`, by `A028304.P2970693193829967291.correct`). Lean does not check the parsing of the name. -/
def A028304 (n : ℕ) : ℤ :=
  A028304.P2970693193829967291.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(n, floor(n/2))/(1+ceil(n/2)))` (program `A028304.P2970693193829967291`, by `A028304.P2970693193829967291.correct`). Lean does not check the parsing of the name. -/
def A028304.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028366.P12369114174315101345

`(2^n-1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028366.P12369114174315101345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((2 ^ n : ℤ) - 1).toNat

end

end A028366.P12369114174315101345

noncomputable section

/-- A028366: a(n) = (2^n - 1)!.

Offset 0, canonical program `A028366.P12369114174315101345`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)!` (program `A028366.P12369114174315101345`, by `A028366.P12369114174315101345.correct`). Lean does not check the parsing of the name. -/
def A028366 (n : ℕ) : ℤ :=
  (A028366.P12369114174315101345.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)!` (program `A028366.P12369114174315101345`, by `A028366.P12369114174315101345.correct`). Lean does not check the parsing of the name. -/
def A028366.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028387.P5954590561330899546

`n+(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028387.P5954590561330899546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (n + 1) ^ 2

end

end A028387.P5954590561330899546

noncomputable section

/-- A028387: a(n) = n + (n+1)^2.

Offset 0, canonical program `A028387.P5954590561330899546`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²` (program `A028387.P5954590561330899546`, by `A028387.P5954590561330899546.correct`). Lean does not check the parsing of the name. -/
def A028387 (n : ℕ) : ℤ :=
  (A028387.P5954590561330899546.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²` (program `A028387.P5954590561330899546`, by `A028387.P5954590561330899546.correct`). Lean does not check the parsing of the name. -/
def A028387.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028391.P17198271841435315725

`n-floor(sqrt(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028391.P17198271841435315725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n : ℤ)

end

end A028391.P17198271841435315725

noncomputable section

/-- A028391: a(n) = n - floor(sqrt(n)).

Offset 0, canonical program `A028391.P17198271841435315725`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-floor(sqrt(n))` (program `A028391.P17198271841435315725`, by `A028391.P17198271841435315725.correct`). Lean does not check the parsing of the name. -/
def A028391 (n : ℕ) : ℤ :=
  A028391.P17198271841435315725.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-floor(sqrt(n))` (program `A028391.P17198271841435315725`, by `A028391.P17198271841435315725.correct`). Lean does not check the parsing of the name. -/
def A028391.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028392.P968666440364652535

`n+floor(sqrt(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028392.P968666440364652535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.sqrt n

end

end A028392.P968666440364652535

noncomputable section

/-- A028392: a(n) = n + floor(sqrt(n)).

Offset 0, canonical program `A028392.P968666440364652535`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(sqrt(n))` (program `A028392.P968666440364652535`, by `A028392.P968666440364652535.correct`). Lean does not check the parsing of the name. -/
def A028392 (n : ℕ) : ℤ :=
  (A028392.P968666440364652535.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(sqrt(n))` (program `A028392.P968666440364652535`, by `A028392.P968666440364652535.correct`). Lean does not check the parsing of the name. -/
def A028392.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028400.P8275181187823269939

`(2^n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028400.P8275181187823269939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1) ^ 2

end

end A028400.P8275181187823269939

noncomputable section

/-- A028400: a(n) = (2^n + 1)^2.

Offset 0, canonical program `A028400.P8275181187823269939`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)²` (program `A028400.P8275181187823269939`, by `A028400.P8275181187823269939.correct`). Lean does not check the parsing of the name. -/
def A028400 (n : ℕ) : ℤ :=
  (A028400.P8275181187823269939.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)²` (program `A028400.P8275181187823269939`, by `A028400.P8275181187823269939.correct`). Lean does not check the parsing of the name. -/
def A028400.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028557.P14629390258788046737

`n*(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028557.P14629390258788046737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 5)

end

end A028557.P14629390258788046737

noncomputable section

/-- A028557: a(n) = n*(n+5).

Offset 0, canonical program `A028557.P14629390258788046737`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+5)` (program `A028557.P14629390258788046737`, by `A028557.P14629390258788046737.correct`). Lean does not check the parsing of the name. -/
def A028557 (n : ℕ) : ℤ :=
  (A028557.P14629390258788046737.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+5)` (program `A028557.P14629390258788046737`, by `A028557.P14629390258788046737.correct`). Lean does not check the parsing of the name. -/
def A028557.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028560.P2309686278855513759

`n*(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028560.P2309686278855513759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 6)

end

end A028560.P2309686278855513759

noncomputable section

/-- A028560: a(n) = n*(n + 6).

Offset 0, canonical program `A028560.P2309686278855513759`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+6)` (program `A028560.P2309686278855513759`, by `A028560.P2309686278855513759.correct`). Lean does not check the parsing of the name. -/
def A028560 (n : ℕ) : ℤ :=
  (A028560.P2309686278855513759.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+6)` (program `A028560.P2309686278855513759`, by `A028560.P2309686278855513759.correct`). Lean does not check the parsing of the name. -/
def A028560.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028563.P15186121141906373506

`n*(n+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028563.P15186121141906373506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 7)

end

end A028563.P15186121141906373506

noncomputable section

/-- A028563: a(n) = n*(n+7).

Offset 0, canonical program `A028563.P15186121141906373506`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+7)` (program `A028563.P15186121141906373506`, by `A028563.P15186121141906373506.correct`). Lean does not check the parsing of the name. -/
def A028563 (n : ℕ) : ℤ :=
  (A028563.P15186121141906373506.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+7)` (program `A028563.P15186121141906373506`, by `A028563.P15186121141906373506.correct`). Lean does not check the parsing of the name. -/
def A028563.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028569.P13869279125010986353

`n*(n+9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028569.P13869279125010986353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 9)

end

end A028569.P13869279125010986353

noncomputable section

/-- A028569: a(n) = n*(n + 9).

Offset 0, canonical program `A028569.P13869279125010986353`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+9)` (program `A028569.P13869279125010986353`, by `A028569.P13869279125010986353.correct`). Lean does not check the parsing of the name. -/
def A028569 (n : ℕ) : ℤ :=
  (A028569.P13869279125010986353.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+9)` (program `A028569.P13869279125010986353`, by `A028569.P13869279125010986353.correct`). Lean does not check the parsing of the name. -/
def A028569.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028875.P8156869436290036666

`n²-5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028875.P8156869436290036666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

end

end A028875.P8156869436290036666

noncomputable section

/-- A028875: a(n) = n^2 - 5.

Offset 0, canonical program `A028875.P8156869436290036666`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-5` (program `A028875.P8156869436290036666`, by `A028875.P8156869436290036666.correct`). Lean does not check the parsing of the name. -/
def A028875 (n : ℕ) : ℤ :=
  A028875.P8156869436290036666.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-5` (program `A028875.P8156869436290036666`, by `A028875.P8156869436290036666.correct`). Lean does not check the parsing of the name. -/
def A028875.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028878.P2945989185203519759

`(n+3)²-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028878.P2945989185203519759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - 6

end

end A028878.P2945989185203519759

noncomputable section

/-- A028878: a(n) = (n+3)^2 - 6.

Offset 0, canonical program `A028878.P2945989185203519759`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)²-6` (program `A028878.P2945989185203519759`, by `A028878.P2945989185203519759.correct`). Lean does not check the parsing of the name. -/
def A028878 (n : ℕ) : ℤ :=
  A028878.P2945989185203519759.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)²-6` (program `A028878.P2945989185203519759`, by `A028878.P2945989185203519759.correct`). Lean does not check the parsing of the name. -/
def A028878.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028884.P6863667227585996307

`(n+3)²-8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028884.P6863667227585996307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - 8

end

end A028884.P6863667227585996307

noncomputable section

/-- A028884: a(n) = (n + 3)^2 - 8.

Offset 0, canonical program `A028884.P6863667227585996307`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)²-8` (program `A028884.P6863667227585996307`, by `A028884.P6863667227585996307.correct`). Lean does not check the parsing of the name. -/
def A028884 (n : ℕ) : ℤ :=
  A028884.P6863667227585996307.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)²-8` (program `A028884.P6863667227585996307`, by `A028884.P6863667227585996307.correct`). Lean does not check the parsing of the name. -/
def A028884.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028896.P12671123993650379957

`3*n*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028896.P12671123993650379957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * (n + 1))

end

end A028896.P12671123993650379957

noncomputable section

/-- A028896: 6 times triangular numbers: a(n) = 3*n*(n+1).

Offset 0, canonical program `A028896.P12671123993650379957`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)` (program `A028896.P12671123993650379957`, by `A028896.P12671123993650379957.correct`). Lean does not check the parsing of the name. -/
def A028896 (n : ℕ) : ℤ :=
  (A028896.P12671123993650379957.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)` (program `A028896.P12671123993650379957`, by `A028896.P12671123993650379957.correct`). Lean does not check the parsing of the name. -/
def A028896.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A029711.P15920591540948397863

`n^(n+1)+(n-1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A029711.P15920591540948397863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n + 1) : ℤ) + ((n : ℤ) - 1) ^ 2

end

end A029711.P15920591540948397863

noncomputable section

/-- A029711: a(n) = n^(n+1) + (n-1)^2.

Offset 0, canonical program `A029711.P15920591540948397863`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)+(n-1)²` (program `A029711.P15920591540948397863`, by `A029711.P15920591540948397863.correct`). Lean does not check the parsing of the name. -/
def A029711 (n : ℕ) : ℤ :=
  A029711.P15920591540948397863.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)+(n-1)²` (program `A029711.P15920591540948397863`, by `A029711.P15920591540948397863.correct`). Lean does not check the parsing of the name. -/
def A029711.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A029929.P9949562801206903288

`n*(n+ceil(2^n/12))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A029929.P9949562801206903288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) + ⌈(2 ^ n : ℚ) / 12⌉)

end

end A029929.P9949562801206903288

noncomputable section

/-- A029929: a(n) = n*(n + ceiling(2^n/12)).

Offset 0, canonical program `A029929.P9949562801206903288`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+ceil(2^n/12))` (program `A029929.P9949562801206903288`, by `A029929.P9949562801206903288.correct`). Lean does not check the parsing of the name. -/
def A029929 (n : ℕ) : ℤ :=
  A029929.P9949562801206903288.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+ceil(2^n/12))` (program `A029929.P9949562801206903288`, by `A029929.P9949562801206903288.correct`). Lean does not check the parsing of the name. -/
def A029929.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030110.P6847496981912939315

`2^n-n²+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030110.P6847496981912939315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n ^ 2 : ℤ) + 1

end

end A030110.P6847496981912939315

noncomputable section

/-- A030110: a(n) = 2^n - n^2 + 1.

Offset 0, canonical program `A030110.P6847496981912939315`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n²+1` (program `A030110.P6847496981912939315`, by `A030110.P6847496981912939315.correct`). Lean does not check the parsing of the name. -/
def A030110 (n : ℕ) : ℤ :=
  A030110.P6847496981912939315.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n²+1` (program `A030110.P6847496981912939315`, by `A030110.P6847496981912939315.correct`). Lean does not check the parsing of the name. -/
def A030110.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030118.P6436773226617813877

`a(n-1)-a(n-2)+n` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030118.P6436773226617813877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) + (n : ℤ)

end

end A030118.P6436773226617813877

noncomputable section

/-- A030118: a(0) = 1, a(1) = 1, a(n) = a(n-1) - a(n-2) + n.

Offset 0, canonical program `A030118.P6436773226617813877`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)+n` (program `A030118.P6436773226617813877`, by `A030118.P6436773226617813877.correct`). Lean does not check the parsing of the name. -/
def A030118 (n : ℕ) : ℤ :=
  A030118.P6436773226617813877.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)+n` (program `A030118.P6436773226617813877`, by `A030118.P6436773226617813877.correct`). Lean does not check the parsing of the name. -/
def A030118.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030119.P11249973913337593535

`a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030119.P11249973913337593535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) + n

end

end A030119.P11249973913337593535

noncomputable section

/-- A030119: a(n) = a(n-1) + a(n-2) + n, a(0) = a(1) = 1.

Offset 0, canonical program `A030119.P11249973913337593535`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n` (program `A030119.P11249973913337593535`, by `A030119.P11249973913337593535.correct`). Lean does not check the parsing of the name. -/
def A030119 (n : ℕ) : ℤ :=
  (A030119.P11249973913337593535.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n` (program `A030119.P11249973913337593535`, by `A030119.P11249973913337593535.correct`). Lean does not check the parsing of the name. -/
def A030119.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030186.P5552931916037222847

`3*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030186.P5552931916037222847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  3 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A030186.P5552931916037222847

noncomputable section

/-- A030186: a(n) = 3*a(n-1) + a(n-2) - a(n-3) for n >= 3, a(0)=1, a(1)=2, a(2)=7.

Offset 0, canonical program `A030186.P5552931916037222847`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)-a(n-3)` (program `A030186.P5552931916037222847`, by `A030186.P5552931916037222847.correct`). Lean does not check the parsing of the name. -/
def A030186 (n : ℕ) : ℤ :=
  A030186.P5552931916037222847.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)-a(n-3)` (program `A030186.P5552931916037222847`, by `A030186.P5552931916037222847.correct`). Lean does not check the parsing of the name. -/
def A030186.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030195.P14060356971139714760

`3*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030195.P14060356971139714760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2)

end

end A030195.P14060356971139714760

noncomputable section

/-- A030195: a(n) = 3*a(n-1) + 3*a(n-2), a(0)=0, a(1)=1.

Offset 0, canonical program `A030195.P14060356971139714760`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A030195.P14060356971139714760`, by `A030195.P14060356971139714760.correct`). Lean does not check the parsing of the name. -/
def A030195 (n : ℕ) : ℤ :=
  (A030195.P14060356971139714760.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A030195.P14060356971139714760`, by `A030195.P14060356971139714760.correct`). Lean does not check the parsing of the name. -/
def A030195.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030297.P13471567161351345238

`n*(n+a(n-1))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030297.P13471567161351345238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n + a (n - 1))

end

end A030297.P13471567161351345238

noncomputable section

/-- A030297: a(n) = n*(n + a(n-1)) with a(0)=0.

Offset 0, canonical program `A030297.P13471567161351345238`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+a(n-1))` (program `A030297.P13471567161351345238`, by `A030297.P13471567161351345238.correct`). Lean does not check the parsing of the name. -/
def A030297 (n : ℕ) : ℤ :=
  (A030297.P13471567161351345238.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+a(n-1))` (program `A030297.P13471567161351345238`, by `A030297.P13471567161351345238.correct`). Lean does not check the parsing of the name. -/
def A030297.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030495.P773199002299498144

`(n+1)!+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030495.P773199002299498144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + n

end

end A030495.P773199002299498144

noncomputable section

/-- A030495: a(n) = (n+1)! + n.

Offset 0, canonical program `A030495.P773199002299498144`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!+n` (program `A030495.P773199002299498144`, by `A030495.P773199002299498144.correct`). Lean does not check the parsing of the name. -/
def A030495 (n : ℕ) : ℤ :=
  (A030495.P773199002299498144.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!+n` (program `A030495.P773199002299498144`, by `A030495.P773199002299498144.correct`). Lean does not check the parsing of the name. -/
def A030495.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032031.P13727891932517305363

`3^n*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032031.P13727891932517305363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.factorial n

end

end A032031.P13727891932517305363

noncomputable section

/-- A032031: Triple factorial numbers: (3n)!!! = 3^n*n!.

Offset 0, canonical program `A032031.P13727891932517305363`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*n!` (program `A032031.P13727891932517305363`, by `A032031.P13727891932517305363.correct`). Lean does not check the parsing of the name. -/
def A032031 (n : ℕ) : ℤ :=
  (A032031.P13727891932517305363.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*n!` (program `A032031.P13727891932517305363`, by `A032031.P13727891932517305363.correct`). Lean does not check the parsing of the name. -/
def A032031.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032343.P6404201742553652725

`10*a(n-1)+n²` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032343.P6404201742553652725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + n ^ 2

end

end A032343.P6404201742553652725

noncomputable section

/-- A032343: a(n) = 10*a(n-1)+n^2, a(0)=0.

Offset 0, canonical program `A032343.P6404201742553652725`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+n²` (program `A032343.P6404201742553652725`, by `A032343.P6404201742553652725.correct`). Lean does not check the parsing of the name. -/
def A032343 (n : ℕ) : ℤ :=
  (A032343.P6404201742553652725.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+n²` (program `A032343.P6404201742553652725`, by `A032343.P6404201742553652725.correct`). Lean does not check the parsing of the name. -/
def A032343.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032525.P10829071454421506549

`floor(7*n²/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032525.P10829071454421506549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * n ^ 2 : ℚ) / 2⌋

end

end A032525.P10829071454421506549

noncomputable section

/-- A032525: Floor( 7*n^2/2 ).

Offset 0, canonical program `A032525.P10829071454421506549`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*n²/2)` (program `A032525.P10829071454421506549`, by `A032525.P10829071454421506549.correct`). Lean does not check the parsing of the name. -/
def A032525 (n : ℕ) : ℤ :=
  A032525.P10829071454421506549.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*n²/2)` (program `A032525.P10829071454421506549`, by `A032525.P10829071454421506549.correct`). Lean does not check the parsing of the name. -/
def A032525.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032526.P11336692325814997317

`floor(5*n²/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032526.P11336692325814997317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n ^ 2 : ℚ) / 2⌋

end

end A032526.P11336692325814997317

noncomputable section

/-- A032526: a(n) = floor(5*n^2/2).

Offset 0, canonical program `A032526.P11336692325814997317`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n²/2)` (program `A032526.P11336692325814997317`, by `A032526.P11336692325814997317.correct`). Lean does not check the parsing of the name. -/
def A032526 (n : ℕ) : ℤ :=
  A032526.P11336692325814997317.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n²/2)` (program `A032526.P11336692325814997317`, by `A032526.P11336692325814997317.correct`). Lean does not check the parsing of the name. -/
def A032526.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032527.P1214835893418776109

`floor(5*n²/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032527.P1214835893418776109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n ^ 2 : ℚ) / 4⌋

end

end A032527.P1214835893418776109

noncomputable section

/-- A032527: Concentric pentagonal numbers: floor(5*n^2 / 4).

Offset 0, canonical program `A032527.P1214835893418776109`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n²/4)` (program `A032527.P1214835893418776109`, by `A032527.P1214835893418776109.correct`). Lean does not check the parsing of the name. -/
def A032527 (n : ℕ) : ℤ :=
  A032527.P1214835893418776109.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n²/4)` (program `A032527.P1214835893418776109`, by `A032527.P1214835893418776109.correct`). Lean does not check the parsing of the name. -/
def A032527.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032528.P6916664106980979500

`floor(3*n²/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032528.P6916664106980979500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 : ℚ) / 2⌋

end

end A032528.P6916664106980979500

noncomputable section

/-- A032528: Concentric hexagonal numbers: floor(3*n^2/2).

Offset 0, canonical program `A032528.P6916664106980979500`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n²/2)` (program `A032528.P6916664106980979500`, by `A032528.P6916664106980979500.correct`). Lean does not check the parsing of the name. -/
def A032528 (n : ℕ) : ℤ :=
  A032528.P6916664106980979500.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n²/2)` (program `A032528.P6916664106980979500`, by `A032528.P6916664106980979500.correct`). Lean does not check the parsing of the name. -/
def A032528.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033428.P10473664201403486648

`3*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033428.P10473664201403486648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

end

end A033428.P10473664201403486648

noncomputable section

/-- A033428: a(n) = 3*n^2.

Offset 0, canonical program `A033428.P10473664201403486648`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²` (program `A033428.P10473664201403486648`, by `A033428.P10473664201403486648.correct`). Lean does not check the parsing of the name. -/
def A033428 (n : ℕ) : ℤ :=
  (A033428.P10473664201403486648.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²` (program `A033428.P10473664201403486648`, by `A033428.P10473664201403486648.correct`). Lean does not check the parsing of the name. -/
def A033428.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033429.P6959806467874002675

`5*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033429.P6959806467874002675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2

end

end A033429.P6959806467874002675

noncomputable section

/-- A033429: a(n) = 5*n^2.

Offset 0, canonical program `A033429.P6959806467874002675`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²` (program `A033429.P6959806467874002675`, by `A033429.P6959806467874002675.correct`). Lean does not check the parsing of the name. -/
def A033429 (n : ℕ) : ℤ :=
  (A033429.P6959806467874002675.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²` (program `A033429.P6959806467874002675`, by `A033429.P6959806467874002675.correct`). Lean does not check the parsing of the name. -/
def A033429.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033430.P5214425656551841819

`4*n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033430.P5214425656551841819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 3

end

end A033430.P5214425656551841819

noncomputable section

/-- A033430: a(n) = 4*n^3.

Offset 0, canonical program `A033430.P5214425656551841819`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3` (program `A033430.P5214425656551841819`, by `A033430.P5214425656551841819.correct`). Lean does not check the parsing of the name. -/
def A033430 (n : ℕ) : ℤ :=
  (A033430.P5214425656551841819.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3` (program `A033430.P5214425656551841819`, by `A033430.P5214425656551841819.correct`). Lean does not check the parsing of the name. -/
def A033430.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033431.P14261726496554658204

`2*n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033431.P14261726496554658204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3

end

end A033431.P14261726496554658204

noncomputable section

/-- A033431: a(n) = 2*n^3.

Offset 0, canonical program `A033431.P14261726496554658204`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3` (program `A033431.P14261726496554658204`, by `A033431.P14261726496554658204.correct`). Lean does not check the parsing of the name. -/
def A033431 (n : ℕ) : ℤ :=
  (A033431.P14261726496554658204.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3` (program `A033431.P14261726496554658204`, by `A033431.P14261726496554658204.correct`). Lean does not check the parsing of the name. -/
def A033431.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033484.P10856640375789116383

`3*2^n-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033484.P10856640375789116383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2

end

end A033484.P10856640375789116383

noncomputable section

/-- A033484: a(n) = 3*2^n - 2.

Offset 0, canonical program `A033484.P10856640375789116383`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n-2` (program `A033484.P10856640375789116383`, by `A033484.P10856640375789116383.correct`). Lean does not check the parsing of the name. -/
def A033484 (n : ℕ) : ℤ :=
  A033484.P10856640375789116383.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n-2` (program `A033484.P10856640375789116383`, by `A033484.P10856640375789116383.correct`). Lean does not check the parsing of the name. -/
def A033484.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033538.P7428243990660546962

`1+3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033538.P7428243990660546962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + (3 * a (n - 1) + a (n - 2))

end

end A033538.P7428243990660546962

noncomputable section

/-- A033538: a(0)=1, a(1)=1, a(n) = 3*a(n-1) + a(n-2) + 1.

Offset 0, canonical program `A033538.P7428243990660546962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+3*a(n-1)+a(n-2)` (program `A033538.P7428243990660546962`, by `A033538.P7428243990660546962.correct`). Lean does not check the parsing of the name. -/
def A033538 (n : ℕ) : ℤ :=
  (A033538.P7428243990660546962.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+3*a(n-1)+a(n-2)` (program `A033538.P7428243990660546962`, by `A033538.P7428243990660546962.correct`). Lean does not check the parsing of the name. -/
def A033538.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033539.P17746699228737138609

`1+2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033539.P17746699228737138609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 + (2 * a (n - 1) + a (n - 2))

end

end A033539.P17746699228737138609

noncomputable section

/-- A033539: a(0)=1, a(1)=1, a(2)=1, a(n) = 2*a(n-1) + a(n-2) + 1.

Offset 0, canonical program `A033539.P17746699228737138609`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*a(n-1)+a(n-2)` (program `A033539.P17746699228737138609`, by `A033539.P17746699228737138609.correct`). Lean does not check the parsing of the name. -/
def A033539 (n : ℕ) : ℤ :=
  (A033539.P17746699228737138609.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*a(n-1)+a(n-2)` (program `A033539.P17746699228737138609`, by `A033539.P17746699228737138609.correct`). Lean does not check the parsing of the name. -/
def A033539.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033562.P8318221385347379331

`2*n^3+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033562.P8318221385347379331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 1

end

end A033562.P8318221385347379331

noncomputable section

/-- A033562: a(n) = 2*n^3 + 1.

Offset 0, canonical program `A033562.P8318221385347379331`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3+1` (program `A033562.P8318221385347379331`, by `A033562.P8318221385347379331.correct`). Lean does not check the parsing of the name. -/
def A033562 (n : ℕ) : ℤ :=
  (A033562.P8318221385347379331.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3+1` (program `A033562.P8318221385347379331`, by `A033562.P8318221385347379331.correct`). Lean does not check the parsing of the name. -/
def A033562.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033566.P726618908899133796

`(2*n+1)*(4*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033566.P726618908899133796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((4 * n : ℤ) - 1)

end

end A033566.P726618908899133796

noncomputable section

/-- A033566: a(n) = (2*n+1) * (4*n-1).

Offset 0, canonical program `A033566.P726618908899133796`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(4*n-1)` (program `A033566.P726618908899133796`, by `A033566.P726618908899133796.correct`). Lean does not check the parsing of the name. -/
def A033566 (n : ℕ) : ℤ :=
  A033566.P726618908899133796.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(4*n-1)` (program `A033566.P726618908899133796`, by `A033566.P726618908899133796.correct`). Lean does not check the parsing of the name. -/
def A033566.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033567.P4876348831150855649

`(2*n-1)*(4*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033567.P4876348831150855649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * ((4 * n : ℤ) - 1)

end

end A033567.P4876348831150855649

noncomputable section

/-- A033567: a(n) = (2*n-1)*(4*n-1).

Offset 0, canonical program `A033567.P4876348831150855649`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(4*n-1)` (program `A033567.P4876348831150855649`, by `A033567.P4876348831150855649.correct`). Lean does not check the parsing of the name. -/
def A033567 (n : ℕ) : ℤ :=
  A033567.P4876348831150855649.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(4*n-1)` (program `A033567.P4876348831150855649`, by `A033567.P4876348831150855649.correct`). Lean does not check the parsing of the name. -/
def A033567.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033569.P5108390427402809841

`(2*n-1)*(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033569.P5108390427402809841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (3 * n + 1 : ℤ)

end

end A033569.P5108390427402809841

noncomputable section

/-- A033569: a(n) = (2*n - 1)*(3*n + 1).

Offset 0, canonical program `A033569.P5108390427402809841`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n+1)` (program `A033569.P5108390427402809841`, by `A033569.P5108390427402809841.correct`). Lean does not check the parsing of the name. -/
def A033569 (n : ℕ) : ℤ :=
  A033569.P5108390427402809841.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n+1)` (program `A033569.P5108390427402809841`, by `A033569.P5108390427402809841.correct`). Lean does not check the parsing of the name. -/
def A033569.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033570.P8308357737011808276

`(2*n+1)*(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033570.P8308357737011808276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (3 * n + 1)

end

end A033570.P8308357737011808276

noncomputable section

/-- A033570: Pentagonal numbers with odd index: a(n) = (2*n+1)*(3*n+1).

Offset 0, canonical program `A033570.P8308357737011808276`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)` (program `A033570.P8308357737011808276`, by `A033570.P8308357737011808276.correct`). Lean does not check the parsing of the name. -/
def A033570 (n : ℕ) : ℤ :=
  (A033570.P8308357737011808276.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)` (program `A033570.P8308357737011808276`, by `A033570.P8308357737011808276.correct`). Lean does not check the parsing of the name. -/
def A033570.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033571.P11165558806189646725

`(2*n+1)*(5*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033571.P11165558806189646725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (5 * n + 1)

end

end A033571.P11165558806189646725

noncomputable section

/-- A033571: a(n) = (2*n + 1)*(5*n + 1).

Offset 0, canonical program `A033571.P11165558806189646725`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(5*n+1)` (program `A033571.P11165558806189646725`, by `A033571.P11165558806189646725.correct`). Lean does not check the parsing of the name. -/
def A033571 (n : ℕ) : ℤ :=
  (A033571.P11165558806189646725.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(5*n+1)` (program `A033571.P11165558806189646725`, by `A033571.P11165558806189646725.correct`). Lean does not check the parsing of the name. -/
def A033571.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033572.P9937606357578850850

`(2*n+1)*(7*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033572.P9937606357578850850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (7 * n + 1)

end

end A033572.P9937606357578850850

noncomputable section

/-- A033572: a(n) = (2*n+1)*(7*n+1).

Offset 0, canonical program `A033572.P9937606357578850850`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(7*n+1)` (program `A033572.P9937606357578850850`, by `A033572.P9937606357578850850.correct`). Lean does not check the parsing of the name. -/
def A033572 (n : ℕ) : ℤ :=
  (A033572.P9937606357578850850.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(7*n+1)` (program `A033572.P9937606357578850850`, by `A033572.P9937606357578850850.correct`). Lean does not check the parsing of the name. -/
def A033572.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033573.P5635402715111793120

`(2*n+1)*(9*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033573.P5635402715111793120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (9 * n + 1)

end

end A033573.P5635402715111793120

noncomputable section

/-- A033573: a(n) = (2*n+1)*(9*n+1).

Offset 0, canonical program `A033573.P5635402715111793120`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(9*n+1)` (program `A033573.P5635402715111793120`, by `A033573.P5635402715111793120.correct`). Lean does not check the parsing of the name. -/
def A033573 (n : ℕ) : ℤ :=
  (A033573.P5635402715111793120.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(9*n+1)` (program `A033573.P5635402715111793120`, by `A033573.P5635402715111793120.correct`). Lean does not check the parsing of the name. -/
def A033573.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033574.P17979063128835907106

`(2*n+1)*(10*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033574.P17979063128835907106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (10 * n + 1)

end

end A033574.P17979063128835907106

noncomputable section

/-- A033574: a(n) = (2*n+1)*(10*n+1).

Offset 0, canonical program `A033574.P17979063128835907106`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(10*n+1)` (program `A033574.P17979063128835907106`, by `A033574.P17979063128835907106.correct`). Lean does not check the parsing of the name. -/
def A033574 (n : ℕ) : ℤ :=
  (A033574.P17979063128835907106.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(10*n+1)` (program `A033574.P17979063128835907106`, by `A033574.P17979063128835907106.correct`). Lean does not check the parsing of the name. -/
def A033574.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033575.P16220226138320304507

`(2*n+1)*(11*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033575.P16220226138320304507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (11 * n + 1)

end

end A033575.P16220226138320304507

noncomputable section

/-- A033575: a(n) = (2*n+1)*(11*n+1).

Offset 0, canonical program `A033575.P16220226138320304507`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(11*n+1)` (program `A033575.P16220226138320304507`, by `A033575.P16220226138320304507.correct`). Lean does not check the parsing of the name. -/
def A033575 (n : ℕ) : ℤ :=
  (A033575.P16220226138320304507.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(11*n+1)` (program `A033575.P16220226138320304507`, by `A033575.P16220226138320304507.correct`). Lean does not check the parsing of the name. -/
def A033575.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033576.P4702801893956750476

`(2*n+1)*(12*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033576.P4702801893956750476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (12 * n + 1)

end

end A033576.P4702801893956750476

noncomputable section

/-- A033576: a(n) = (2*n+1)*(12*n+1).

Offset 0, canonical program `A033576.P4702801893956750476`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(12*n+1)` (program `A033576.P4702801893956750476`, by `A033576.P4702801893956750476.correct`). Lean does not check the parsing of the name. -/
def A033576 (n : ℕ) : ℤ :=
  (A033576.P4702801893956750476.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(12*n+1)` (program `A033576.P4702801893956750476`, by `A033576.P4702801893956750476.correct`). Lean does not check the parsing of the name. -/
def A033576.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033577.P191086975953029494

`(3*n+1)*(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033577.P191086975953029494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * (4 * n + 1)

end

end A033577.P191086975953029494

noncomputable section

/-- A033577: a(n) = (3*n+1)*(4*n+1).

Offset 0, canonical program `A033577.P191086975953029494`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(4*n+1)` (program `A033577.P191086975953029494`, by `A033577.P191086975953029494.correct`). Lean does not check the parsing of the name. -/
def A033577 (n : ℕ) : ℤ :=
  (A033577.P191086975953029494.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(4*n+1)` (program `A033577.P191086975953029494`, by `A033577.P191086975953029494.correct`). Lean does not check the parsing of the name. -/
def A033577.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033578.P7557653025791932754

`(3*n-1)*(4*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033578.P7557653025791932754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 1) * ((4 * n : ℤ) - 1)

end

end A033578.P7557653025791932754

noncomputable section

/-- A033578: a(n) = (3*n - 1)*(4*n - 1).

Offset 0, canonical program `A033578.P7557653025791932754`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n-1)*(4*n-1)` (program `A033578.P7557653025791932754`, by `A033578.P7557653025791932754.correct`). Lean does not check the parsing of the name. -/
def A033578 (n : ℕ) : ℤ :=
  A033578.P7557653025791932754.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n-1)*(4*n-1)` (program `A033578.P7557653025791932754`, by `A033578.P7557653025791932754.correct`). Lean does not check the parsing of the name. -/
def A033578.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033580.P4822567712168801870

`2*n*(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033580.P4822567712168801870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (3 * n + 1))

end

end A033580.P4822567712168801870

noncomputable section

/-- A033580: Four times second pentagonal numbers: a(n) = 2*n*(3*n+1).

Offset 0, canonical program `A033580.P4822567712168801870`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(3*n+1)` (program `A033580.P4822567712168801870`, by `A033580.P4822567712168801870.correct`). Lean does not check the parsing of the name. -/
def A033580 (n : ℕ) : ℤ :=
  (A033580.P4822567712168801870.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(3*n+1)` (program `A033580.P4822567712168801870`, by `A033580.P4822567712168801870.correct`). Lean does not check the parsing of the name. -/
def A033580.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033581.P13583599227635646969

`6*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033581.P13583599227635646969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

end

end A033581.P13583599227635646969

noncomputable section

/-- A033581: a(n) = 6*n^2.

Offset 0, canonical program `A033581.P13583599227635646969`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²` (program `A033581.P13583599227635646969`, by `A033581.P13583599227635646969.correct`). Lean does not check the parsing of the name. -/
def A033581 (n : ℕ) : ℤ :=
  (A033581.P13583599227635646969.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²` (program `A033581.P13583599227635646969`, by `A033581.P13583599227635646969.correct`). Lean does not check the parsing of the name. -/
def A033581.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033582.P4303886374806047270

`7*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033582.P4303886374806047270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2

end

end A033582.P4303886374806047270

noncomputable section

/-- A033582: a(n) = 7*n^2.

Offset 0, canonical program `A033582.P4303886374806047270`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²` (program `A033582.P4303886374806047270`, by `A033582.P4303886374806047270.correct`). Lean does not check the parsing of the name. -/
def A033582 (n : ℕ) : ℤ :=
  (A033582.P4303886374806047270.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²` (program `A033582.P4303886374806047270`, by `A033582.P4303886374806047270.correct`). Lean does not check the parsing of the name. -/
def A033582.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033583.P12285480609414282410

`10*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033583.P12285480609414282410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 2

end

end A033583.P12285480609414282410

noncomputable section

/-- A033583: a(n) = 10*n^2.

Offset 0, canonical program `A033583.P12285480609414282410`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²` (program `A033583.P12285480609414282410`, by `A033583.P12285480609414282410.correct`). Lean does not check the parsing of the name. -/
def A033583 (n : ℕ) : ℤ :=
  (A033583.P12285480609414282410.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²` (program `A033583.P12285480609414282410`, by `A033583.P12285480609414282410.correct`). Lean does not check the parsing of the name. -/
def A033583.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033584.P5749212620470657919

`11*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033584.P5749212620470657919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n ^ 2

end

end A033584.P5749212620470657919

noncomputable section

/-- A033584: a(n) = 11*n^2.

Offset 0, canonical program `A033584.P5749212620470657919`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n²` (program `A033584.P5749212620470657919`, by `A033584.P5749212620470657919.correct`). Lean does not check the parsing of the name. -/
def A033584 (n : ℕ) : ℤ :=
  (A033584.P5749212620470657919.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n²` (program `A033584.P5749212620470657919`, by `A033584.P5749212620470657919.correct`). Lean does not check the parsing of the name. -/
def A033584.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033585.P10129062387530801716

`2*n*(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033585.P10129062387530801716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (4 * n + 1))

end

end A033585.P10129062387530801716

noncomputable section

/-- A033585: a(n) = 2*n*(4*n + 1).

Offset 0, canonical program `A033585.P10129062387530801716`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n+1)` (program `A033585.P10129062387530801716`, by `A033585.P10129062387530801716.correct`). Lean does not check the parsing of the name. -/
def A033585 (n : ℕ) : ℤ :=
  (A033585.P10129062387530801716.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n+1)` (program `A033585.P10129062387530801716`, by `A033585.P10129062387530801716.correct`). Lean does not check the parsing of the name. -/
def A033585.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033586.P503020411439998200

`4*n*(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033586.P503020411439998200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (2 * n + 1))

end

end A033586.P503020411439998200

noncomputable section

/-- A033586: a(n) = 4*n*(2*n + 1).

Offset 0, canonical program `A033586.P503020411439998200`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(2*n+1)` (program `A033586.P503020411439998200`, by `A033586.P503020411439998200.correct`). Lean does not check the parsing of the name. -/
def A033586 (n : ℕ) : ℤ :=
  (A033586.P503020411439998200.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(2*n+1)` (program `A033586.P503020411439998200`, by `A033586.P503020411439998200.correct`). Lean does not check the parsing of the name. -/
def A033586.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033587.P7231674093024316260

`2*n*(4*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033587.P7231674093024316260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (4 * n + 3))

end

end A033587.P7231674093024316260

noncomputable section

/-- A033587: a(n) = 2*n*(4*n + 3).

Offset 0, canonical program `A033587.P7231674093024316260`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n+3)` (program `A033587.P7231674093024316260`, by `A033587.P7231674093024316260.correct`). Lean does not check the parsing of the name. -/
def A033587 (n : ℕ) : ℤ :=
  (A033587.P7231674093024316260.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n+3)` (program `A033587.P7231674093024316260`, by `A033587.P7231674093024316260.correct`). Lean does not check the parsing of the name. -/
def A033587.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033589.P2239338839583757323

`(2*n-1)*(3*n-1)*(4*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033589.P2239338839583757323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (((3 * n : ℤ) - 1) * ((4 * n : ℤ) - 1))

end

end A033589.P2239338839583757323

noncomputable section

/-- A033589: a(n) = (2*n-1)*(3*n-1)*(4*n-1).

Offset 0, canonical program `A033589.P2239338839583757323`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n-1)*(4*n-1)` (program `A033589.P2239338839583757323`, by `A033589.P2239338839583757323.correct`). Lean does not check the parsing of the name. -/
def A033589 (n : ℕ) : ℤ :=
  A033589.P2239338839583757323.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n-1)*(4*n-1)` (program `A033589.P2239338839583757323`, by `A033589.P2239338839583757323.correct`). Lean does not check the parsing of the name. -/
def A033589.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033590.P17291163441773668678

`(2*n-1)*(3*n-1)*(4*n-1)*(5*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033590.P17291163441773668678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (((3 * n : ℤ) - 1) * (((4 * n : ℤ) - 1) * ((5 * n : ℤ) - 1)))

end

end A033590.P17291163441773668678

noncomputable section

/-- A033590: a(n) = (2*n-1)*(3*n-1)*(4*n-1)*(5*n-1).

Offset 0, canonical program `A033590.P17291163441773668678`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n-1)*(4*n-1)*(5*n-1)` (program `A033590.P17291163441773668678`, by `A033590.P17291163441773668678.correct`). Lean does not check the parsing of the name. -/
def A033590 (n : ℕ) : ℤ :=
  A033590.P17291163441773668678.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n-1)*(4*n-1)*(5*n-1)` (program `A033590.P17291163441773668678`, by `A033590.P17291163441773668678.correct`). Lean does not check the parsing of the name. -/
def A033590.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033591.P132646755978206688

`(2*n+1)*(3*n+1)*(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033591.P132646755978206688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((3 * n + 1) * (4 * n + 1))

end

end A033591.P132646755978206688

noncomputable section

/-- A033591: a(n) = (2*n+1)*(3*n+1)*(4*n+1).

Offset 0, canonical program `A033591.P132646755978206688`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)*(4*n+1)` (program `A033591.P132646755978206688`, by `A033591.P132646755978206688.correct`). Lean does not check the parsing of the name. -/
def A033591 (n : ℕ) : ℤ :=
  (A033591.P132646755978206688.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)*(4*n+1)` (program `A033591.P132646755978206688`, by `A033591.P132646755978206688.correct`). Lean does not check the parsing of the name. -/
def A033591.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033592.P4489364706692772461

`(2*n+1)*(3*n+1)*(4*n+1)*(5*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033592.P4489364706692772461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((3 * n + 1) * ((4 * n + 1) * (5 * n + 1)))

end

end A033592.P4489364706692772461

noncomputable section

/-- A033592: a(n) = (2*n+1)*(3*n+1)*(4*n+1)*(5*n+1).

Offset 0, canonical program `A033592.P4489364706692772461`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)*(4*n+1)*(5*n+1)` (program `A033592.P4489364706692772461`, by `A033592.P4489364706692772461.correct`). Lean does not check the parsing of the name. -/
def A033592 (n : ℕ) : ℤ :=
  (A033592.P4489364706692772461.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)*(4*n+1)*(5*n+1)` (program `A033592.P4489364706692772461`, by `A033592.P4489364706692772461.correct`). Lean does not check the parsing of the name. -/
def A033592.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033593.P16168694735683483245

`(n-1)*(2*n-1)*(3*n-1)*(4*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033593.P16168694735683483245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((2 * n : ℤ) - 1) * (((3 * n : ℤ) - 1) * ((4 * n : ℤ) - 1)))

end

end A033593.P16168694735683483245

noncomputable section

/-- A033593: a(n) = (n-1)*(2*n-1)*(3*n-1)*(4*n-1).

Offset 0, canonical program `A033593.P16168694735683483245`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(2*n-1)*(3*n-1)*(4*n-1)` (program `A033593.P16168694735683483245`, by `A033593.P16168694735683483245.correct`). Lean does not check the parsing of the name. -/
def A033593 (n : ℕ) : ℤ :=
  A033593.P16168694735683483245.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(2*n-1)*(3*n-1)*(4*n-1)` (program `A033593.P16168694735683483245`, by `A033593.P16168694735683483245.correct`). Lean does not check the parsing of the name. -/
def A033593.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033594.P14515624844179514935

`(n-1)*(2*n-1)*(3*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033594.P14515624844179514935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((2 * n : ℤ) - 1) * ((3 * n : ℤ) - 1))

end

end A033594.P14515624844179514935

noncomputable section

/-- A033594: a(n) = (n-1)*(2*n-1)*(3*n-1).

Offset 0, canonical program `A033594.P14515624844179514935`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(2*n-1)*(3*n-1)` (program `A033594.P14515624844179514935`, by `A033594.P14515624844179514935.correct`). Lean does not check the parsing of the name. -/
def A033594 (n : ℕ) : ℤ :=
  A033594.P14515624844179514935.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(2*n-1)*(3*n-1)` (program `A033594.P14515624844179514935`, by `A033594.P14515624844179514935.correct`). Lean does not check the parsing of the name. -/
def A033594.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033595.P9823408466719881306

`(n²-1)*(2*n²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033595.P9823408466719881306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * ((2 * n ^ 2 : ℤ) - 1)

end

end A033595.P9823408466719881306

noncomputable section

/-- A033595: a(n) = (n^2-1)*(2*n^2-1).

Offset 0, canonical program `A033595.P9823408466719881306`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-1)*(2*n²-1)` (program `A033595.P9823408466719881306`, by `A033595.P9823408466719881306.correct`). Lean does not check the parsing of the name. -/
def A033595 (n : ℕ) : ℤ :=
  A033595.P9823408466719881306.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-1)*(2*n²-1)` (program `A033595.P9823408466719881306`, by `A033595.P9823408466719881306.correct`). Lean does not check the parsing of the name. -/
def A033595.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033596.P15895326898760574531

`(n²-1)*(n²-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033596.P15895326898760574531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * ((n ^ 2 : ℤ) - 3)

end

end A033596.P15895326898760574531

noncomputable section

/-- A033596: a(n) = (n^2 - 1)*(n^2 - 3).

Offset 0, canonical program `A033596.P15895326898760574531`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-1)*(n²-3)` (program `A033596.P15895326898760574531`, by `A033596.P15895326898760574531.correct`). Lean does not check the parsing of the name. -/
def A033596 (n : ℕ) : ℤ :=
  A033596.P15895326898760574531.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-1)*(n²-3)` (program `A033596.P15895326898760574531`, by `A033596.P15895326898760574531.correct`). Lean does not check the parsing of the name. -/
def A033596.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033669.P11573085056732799068

`n^6*(n^6+1)*(n²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033669.P11573085056732799068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 6 : ℤ) * ((n ^ 6 + 1 : ℤ) * ((n ^ 2 : ℤ) - 1))

end

end A033669.P11573085056732799068

noncomputable section

/-- A033669: a(n) = n^6*(n^6 + 1)*(n^2 - 1).

Offset 0, canonical program `A033669.P11573085056732799068`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^6+1)*(n²-1)` (program `A033669.P11573085056732799068`, by `A033669.P11573085056732799068.correct`). Lean does not check the parsing of the name. -/
def A033669 (n : ℕ) : ℤ :=
  A033669.P11573085056732799068.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^6+1)*(n²-1)` (program `A033669.P11573085056732799068`, by `A033669.P11573085056732799068.correct`). Lean does not check the parsing of the name. -/
def A033669.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033816.P2874186077373317365

`2*n²+3*n+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033816.P2874186077373317365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 3 * n + 3

end

end A033816.P2874186077373317365

noncomputable section

/-- A033816: a(n) = 2*n^2 + 3*n + 3.

Offset 0, canonical program `A033816.P2874186077373317365`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+3*n+3` (program `A033816.P2874186077373317365`, by `A033816.P2874186077373317365.correct`). Lean does not check the parsing of the name. -/
def A033816 (n : ℕ) : ℤ :=
  (A033816.P2874186077373317365.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+3*n+3` (program `A033816.P2874186077373317365`, by `A033816.P2874186077373317365.correct`). Lean does not check the parsing of the name. -/
def A033816.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033934.P11766874347427226134

`(10^n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033934.P11766874347427226134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 1) ^ 2

end

end A033934.P11766874347427226134

noncomputable section

/-- A033934: a(n) = (10^n + 1)^2.

Offset 0, canonical program `A033934.P11766874347427226134`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+1)²` (program `A033934.P11766874347427226134`, by `A033934.P11766874347427226134.correct`). Lean does not check the parsing of the name. -/
def A033934 (n : ℕ) : ℤ :=
  (A033934.P11766874347427226134.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+1)²` (program `A033934.P11766874347427226134`, by `A033934.P11766874347427226134.correct`). Lean does not check the parsing of the name. -/
def A033934.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033954.P6740312584908585872

`n*(4*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033954.P6740312584908585872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 * n + 3)

end

end A033954.P6740312584908585872

noncomputable section

/-- A033954: Second 10-gonal (or decagonal) numbers: n*(4*n+3).

Offset 0, canonical program `A033954.P6740312584908585872`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n+3)` (program `A033954.P6740312584908585872`, by `A033954.P6740312584908585872.correct`). Lean does not check the parsing of the name. -/
def A033954 (n : ℕ) : ℤ :=
  (A033954.P6740312584908585872.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n+3)` (program `A033954.P6740312584908585872`, by `A033954.P6740312584908585872.correct`). Lean does not check the parsing of the name. -/
def A033954.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033996.P9492776512245994211

`4*n*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033996.P9492776512245994211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (n + 1))

end

end A033996.P9492776512245994211

noncomputable section

/-- A033996: 8 times triangular numbers: a(n) = 4*n*(n+1).

Offset 0, canonical program `A033996.P9492776512245994211`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n+1)` (program `A033996.P9492776512245994211`, by `A033996.P9492776512245994211.correct`). Lean does not check the parsing of the name. -/
def A033996 (n : ℕ) : ℤ :=
  (A033996.P9492776512245994211.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n+1)` (program `A033996.P9492776512245994211`, by `A033996.P9492776512245994211.correct`). Lean does not check the parsing of the name. -/
def A033996.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A033999.P17703899380244199787

`(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033999.P17703899380244199787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

end

end A033999.P17703899380244199787

noncomputable section

/-- A033999: a(n) = (-1)^n.

Offset 0, canonical program `A033999.P17703899380244199787`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n` (program `A033999.P17703899380244199787`, by `A033999.P17703899380244199787.correct`). Lean does not check the parsing of the name. -/
def A033999 (n : ℕ) : ℤ :=
  A033999.P17703899380244199787.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n` (program `A033999.P17703899380244199787`, by `A033999.P17703899380244199787.correct`). Lean does not check the parsing of the name. -/
def A033999.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A034262.P1986901683698587680

`n^3+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034262.P1986901683698587680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + n

end

end A034262.P1986901683698587680

noncomputable section

/-- A034262: a(n) = n^3 + n.

Offset 0, canonical program `A034262.P1986901683698587680`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n` (program `A034262.P1986901683698587680`, by `A034262.P1986901683698587680.correct`). Lean does not check the parsing of the name. -/
def A034262 (n : ℕ) : ℤ :=
  (A034262.P1986901683698587680.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n` (program `A034262.P1986901683698587680`, by `A034262.P1986901683698587680.correct`). Lean does not check the parsing of the name. -/
def A034262.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A034472.P6935477064191477456

`3^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034472.P6935477064191477456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 1

end

end A034472.P6935477064191477456

noncomputable section

/-- A034472: a(n) = 3^n + 1.

Offset 0, canonical program `A034472.P6935477064191477456`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+1` (program `A034472.P6935477064191477456`, by `A034472.P6935477064191477456.correct`). Lean does not check the parsing of the name. -/
def A034472 (n : ℕ) : ℤ :=
  (A034472.P6935477064191477456.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+1` (program `A034472.P6935477064191477456`, by `A034472.P6935477064191477456.correct`). Lean does not check the parsing of the name. -/
def A034472.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A034474.P1568972853745923564

`5^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034474.P1568972853745923564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + 1

end

end A034474.P1568972853745923564

noncomputable section

/-- A034474: a(n) = 5^n + 1.

Offset 0, canonical program `A034474.P1568972853745923564`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+1` (program `A034474.P1568972853745923564`, by `A034474.P1568972853745923564.correct`). Lean does not check the parsing of the name. -/
def A034474 (n : ℕ) : ℤ :=
  (A034474.P1568972853745923564.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+1` (program `A034474.P1568972853745923564`, by `A034474.P1568972853745923564.correct`). Lean does not check the parsing of the name. -/
def A034474.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A034491.P8360530145105108237

`7^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034491.P8360530145105108237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n + 1

end

end A034491.P8360530145105108237

noncomputable section

/-- A034491: a(n) = 7^n + 1.

Offset 0, canonical program `A034491.P8360530145105108237`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+1` (program `A034491.P8360530145105108237`, by `A034491.P8360530145105108237.correct`). Lean does not check the parsing of the name. -/
def A034491 (n : ℕ) : ℤ :=
  (A034491.P8360530145105108237.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+1` (program `A034491.P8360530145105108237`, by `A034491.P8360530145105108237.correct`). Lean does not check the parsing of the name. -/
def A034491.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A034524.P14152157889491239874

`11^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034524.P14152157889491239874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n + 1

end

end A034524.P14152157889491239874

noncomputable section

/-- A034524: a(n) = 11^n + 1.

Offset 0, canonical program `A034524.P14152157889491239874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+1` (program `A034524.P14152157889491239874`, by `A034524.P14152157889491239874.correct`). Lean does not check the parsing of the name. -/
def A034524 (n : ℕ) : ℤ :=
  (A034524.P14152157889491239874.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+1` (program `A034524.P14152157889491239874`, by `A034524.P14152157889491239874.correct`). Lean does not check the parsing of the name. -/
def A034524.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A034827.P5779717595868083396

`2*C(n, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034827.P5779717595868083396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 4

end

end A034827.P5779717595868083396

noncomputable section

/-- A034827: a(n) = 2*binomial(n,4).

Offset 0, canonical program `A034827.P5779717595868083396`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 4)` (program `A034827.P5779717595868083396`, by `A034827.P5779717595868083396.correct`). Lean does not check the parsing of the name. -/
def A034827 (n : ℕ) : ℤ :=
  (A034827.P5779717595868083396.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 4)` (program `A034827.P5779717595868083396`, by `A034827.P5779717595868083396.correct`). Lean does not check the parsing of the name. -/
def A034827.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A035328.P8777952282192505246

`n*(2*n-1)*(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035328.P8777952282192505246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((2 * n : ℤ) - 1) * (2 * n + 1 : ℤ))

end

end A035328.P8777952282192505246

noncomputable section

/-- A035328: a(n) = n*(2*n-1)*(2*n+1).

Offset 0, canonical program `A035328.P8777952282192505246`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n-1)*(2*n+1)` (program `A035328.P8777952282192505246`, by `A035328.P8777952282192505246.correct`). Lean does not check the parsing of the name. -/
def A035328 (n : ℕ) : ℤ :=
  A035328.P8777952282192505246.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n-1)*(2*n+1)` (program `A035328.P8777952282192505246`, by `A035328.P8777952282192505246.correct`). Lean does not check the parsing of the name. -/
def A035328.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A035329.P9818017560518846314

`n*(2*n+5)*(2*n+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035329.P9818017560518846314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((2 * n + 5) * (2 * n + 7))

end

end A035329.P9818017560518846314

noncomputable section

/-- A035329: a(n) = n*(2*n+5)*(2*n+7).

Offset 0, canonical program `A035329.P9818017560518846314`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+5)*(2*n+7)` (program `A035329.P9818017560518846314`, by `A035329.P9818017560518846314.correct`). Lean does not check the parsing of the name. -/
def A035329 (n : ℕ) : ℤ :=
  (A035329.P9818017560518846314.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+5)*(2*n+7)` (program `A035329.P9818017560518846314`, by `A035329.P9818017560518846314.correct`). Lean does not check the parsing of the name. -/
def A035329.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036085.P6699611710931681177

`(n+1)^7+n^7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036085.P6699611710931681177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 7 + n ^ 7

end

end A036085.P6699611710931681177

noncomputable section

/-- A036085: Centered cube numbers: (n+1)^7 + n^7.

Offset 0, canonical program `A036085.P6699611710931681177`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^7+n^7` (program `A036085.P6699611710931681177`, by `A036085.P6699611710931681177.correct`). Lean does not check the parsing of the name. -/
def A036085 (n : ℕ) : ℤ :=
  (A036085.P6699611710931681177.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^7+n^7` (program `A036085.P6699611710931681177`, by `A036085.P6699611710931681177.correct`). Lean does not check the parsing of the name. -/
def A036085.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036086.P15809469272928113457

`(n+1)^8+n^8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036086.P15809469272928113457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 8 + n ^ 8

end

end A036086.P15809469272928113457

noncomputable section

/-- A036086: Centered cube numbers: a(n) = (n+1)^8+n^8.

Offset 0, canonical program `A036086.P15809469272928113457`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^8+n^8` (program `A036086.P15809469272928113457`, by `A036086.P15809469272928113457.correct`). Lean does not check the parsing of the name. -/
def A036086 (n : ℕ) : ℤ :=
  (A036086.P15809469272928113457.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^8+n^8` (program `A036086.P15809469272928113457`, by `A036086.P15809469272928113457.correct`). Lean does not check the parsing of the name. -/
def A036086.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036087.P11006721384539131196

`(n+1)^9+n^9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036087.P11006721384539131196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 9 + n ^ 9

end

end A036087.P11006721384539131196

noncomputable section

/-- A036087: Centered cube numbers: a(n) = (n+1)^9 + n^9.

Offset 0, canonical program `A036087.P11006721384539131196`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^9+n^9` (program `A036087.P11006721384539131196`, by `A036087.P11006721384539131196.correct`). Lean does not check the parsing of the name. -/
def A036087 (n : ℕ) : ℤ :=
  (A036087.P11006721384539131196.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^9+n^9` (program `A036087.P11006721384539131196`, by `A036087.P11006721384539131196.correct`). Lean does not check the parsing of the name. -/
def A036087.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036088.P7773162319479978541

`(n+1)^10+n^10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036088.P7773162319479978541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 10 + n ^ 10

end

end A036088.P7773162319479978541

noncomputable section

/-- A036088: Centered cube numbers: (n+1)^10 + n^10.

Offset 0, canonical program `A036088.P7773162319479978541`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^10+n^10` (program `A036088.P7773162319479978541`, by `A036088.P7773162319479978541.correct`). Lean does not check the parsing of the name. -/
def A036088 (n : ℕ) : ℤ :=
  (A036088.P7773162319479978541.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^10+n^10` (program `A036088.P7773162319479978541`, by `A036088.P7773162319479978541.correct`). Lean does not check the parsing of the name. -/
def A036088.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036089.P5137669638222601657

`(n+1)^11+n^11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036089.P5137669638222601657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 11 + n ^ 11

end

end A036089.P5137669638222601657

noncomputable section

/-- A036089: Centered cube numbers: (n+1)^11 + n^11.

Offset 0, canonical program `A036089.P5137669638222601657`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^11+n^11` (program `A036089.P5137669638222601657`, by `A036089.P5137669638222601657.correct`). Lean does not check the parsing of the name. -/
def A036089 (n : ℕ) : ℤ :=
  (A036089.P5137669638222601657.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^11+n^11` (program `A036089.P5137669638222601657`, by `A036089.P5137669638222601657.correct`). Lean does not check the parsing of the name. -/
def A036089.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036090.P16713206158881378213

`(n+1)^12+n^12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036090.P16713206158881378213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 12 + n ^ 12

end

end A036090.P16713206158881378213

noncomputable section

/-- A036090: Centered cube numbers: (n+1)^12 + n^12.

Offset 0, canonical program `A036090.P16713206158881378213`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^12+n^12` (program `A036090.P16713206158881378213`, by `A036090.P16713206158881378213.correct`). Lean does not check the parsing of the name. -/
def A036090 (n : ℕ) : ℤ :=
  (A036090.P16713206158881378213.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^12+n^12` (program `A036090.P16713206158881378213`, by `A036090.P16713206158881378213.correct`). Lean does not check the parsing of the name. -/
def A036090.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036091.P6794838911853245920

`(n+1)^13+n^13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036091.P6794838911853245920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 13 + n ^ 13

end

end A036091.P6794838911853245920

noncomputable section

/-- A036091: Centered cube numbers: (n+1)^13+n^13.

Offset 0, canonical program `A036091.P6794838911853245920`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^13+n^13` (program `A036091.P6794838911853245920`, by `A036091.P6794838911853245920.correct`). Lean does not check the parsing of the name. -/
def A036091 (n : ℕ) : ℤ :=
  (A036091.P6794838911853245920.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^13+n^13` (program `A036091.P6794838911853245920`, by `A036091.P6794838911853245920.correct`). Lean does not check the parsing of the name. -/
def A036091.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036092.P6843422934604541421

`(n+1)^14+n^14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036092.P6843422934604541421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 14 + n ^ 14

end

end A036092.P6843422934604541421

noncomputable section

/-- A036092: Centered cube numbers: a(n) = (n+1)^14 + n^14.

Offset 0, canonical program `A036092.P6843422934604541421`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^14+n^14` (program `A036092.P6843422934604541421`, by `A036092.P6843422934604541421.correct`). Lean does not check the parsing of the name. -/
def A036092 (n : ℕ) : ℤ :=
  (A036092.P6843422934604541421.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^14+n^14` (program `A036092.P6843422934604541421`, by `A036092.P6843422934604541421.correct`). Lean does not check the parsing of the name. -/
def A036092.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036093.P8608577771298230220

`(n+1)^15+n^15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036093.P8608577771298230220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 15 + n ^ 15

end

end A036093.P8608577771298230220

noncomputable section

/-- A036093: Centered cube numbers: (n+1)^15 + n^15.

Offset 0, canonical program `A036093.P8608577771298230220`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^15+n^15` (program `A036093.P8608577771298230220`, by `A036093.P8608577771298230220.correct`). Lean does not check the parsing of the name. -/
def A036093 (n : ℕ) : ℤ :=
  (A036093.P8608577771298230220.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^15+n^15` (program `A036093.P8608577771298230220`, by `A036093.P8608577771298230220.correct`). Lean does not check the parsing of the name. -/
def A036093.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036094.P2162227290417152042

`(n+1)^16+n^16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036094.P2162227290417152042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 16 + n ^ 16

end

end A036094.P2162227290417152042

noncomputable section

/-- A036094: Centered cube numbers: (n+1)^16 + n^16.

Offset 0, canonical program `A036094.P2162227290417152042`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^16+n^16` (program `A036094.P2162227290417152042`, by `A036094.P2162227290417152042.correct`). Lean does not check the parsing of the name. -/
def A036094 (n : ℕ) : ℤ :=
  (A036094.P2162227290417152042.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^16+n^16` (program `A036094.P2162227290417152042`, by `A036094.P2162227290417152042.correct`). Lean does not check the parsing of the name. -/
def A036094.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036095.P5793492866088705674

`(n+1)^17+n^17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036095.P5793492866088705674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 17 + n ^ 17

end

end A036095.P5793492866088705674

noncomputable section

/-- A036095: Centered cube numbers: a(n) = (n+1)^17 + n^17.

Offset 0, canonical program `A036095.P5793492866088705674`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^17+n^17` (program `A036095.P5793492866088705674`, by `A036095.P5793492866088705674.correct`). Lean does not check the parsing of the name. -/
def A036095 (n : ℕ) : ℤ :=
  (A036095.P5793492866088705674.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^17+n^17` (program `A036095.P5793492866088705674`, by `A036095.P5793492866088705674.correct`). Lean does not check the parsing of the name. -/
def A036095.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036096.P2633988152001810233

`(n+1)^18+n^18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036096.P2633988152001810233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 18 + n ^ 18

end

end A036096.P2633988152001810233

noncomputable section

/-- A036096: Centered cube numbers: (n+1)^18 + n^18.

Offset 0, canonical program `A036096.P2633988152001810233`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^18+n^18` (program `A036096.P2633988152001810233`, by `A036096.P2633988152001810233.correct`). Lean does not check the parsing of the name. -/
def A036096 (n : ℕ) : ℤ :=
  (A036096.P2633988152001810233.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^18+n^18` (program `A036096.P2633988152001810233`, by `A036096.P2633988152001810233.correct`). Lean does not check the parsing of the name. -/
def A036096.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036097.P8683106660414537380

`(n+1)^19+n^19`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036097.P8683106660414537380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 19 + n ^ 19

end

end A036097.P8683106660414537380

noncomputable section

/-- A036097: Centered cube numbers: (n+1)^19+n^19.

Offset 0, canonical program `A036097.P8683106660414537380`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^19+n^19` (program `A036097.P8683106660414537380`, by `A036097.P8683106660414537380.correct`). Lean does not check the parsing of the name. -/
def A036097 (n : ℕ) : ℤ :=
  (A036097.P8683106660414537380.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^19+n^19` (program `A036097.P8683106660414537380`, by `A036097.P8683106660414537380.correct`). Lean does not check the parsing of the name. -/
def A036097.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036098.P16820759973379616246

`(n+1)^20+n^20`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036098.P16820759973379616246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 20 + n ^ 20

end

end A036098.P16820759973379616246

noncomputable section

/-- A036098: Centered cube numbers: a(n) = (n+1)^20 + n^20.

Offset 0, canonical program `A036098.P16820759973379616246`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^20+n^20` (program `A036098.P16820759973379616246`, by `A036098.P16820759973379616246.correct`). Lean does not check the parsing of the name. -/
def A036098 (n : ℕ) : ℤ :=
  (A036098.P16820759973379616246.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^20+n^20` (program `A036098.P16820759973379616246`, by `A036098.P16820759973379616246.correct`). Lean does not check the parsing of the name. -/
def A036098.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036099.P7054077074225571692

`(n+1)^21+n^21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036099.P7054077074225571692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 21 + n ^ 21

end

end A036099.P7054077074225571692

noncomputable section

/-- A036099: Centered cube numbers: (n+1)^21 + n^21.

Offset 0, canonical program `A036099.P7054077074225571692`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^21+n^21` (program `A036099.P7054077074225571692`, by `A036099.P7054077074225571692.correct`). Lean does not check the parsing of the name. -/
def A036099 (n : ℕ) : ℤ :=
  (A036099.P7054077074225571692.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^21+n^21` (program `A036099.P7054077074225571692`, by `A036099.P7054077074225571692.correct`). Lean does not check the parsing of the name. -/
def A036099.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036100.P9526219666505486895

`(n+1)^22+n^22`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036100.P9526219666505486895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 22 + n ^ 22

end

end A036100.P9526219666505486895

noncomputable section

/-- A036100: Centered cube numbers: (n+1)^22 + n^22.

Offset 0, canonical program `A036100.P9526219666505486895`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^22+n^22` (program `A036100.P9526219666505486895`, by `A036100.P9526219666505486895.correct`). Lean does not check the parsing of the name. -/
def A036100 (n : ℕ) : ℤ :=
  (A036100.P9526219666505486895.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^22+n^22` (program `A036100.P9526219666505486895`, by `A036100.P9526219666505486895.correct`). Lean does not check the parsing of the name. -/
def A036100.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036289.P13525419631139213940

`n*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036289.P13525419631139213940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

end

end A036289.P13525419631139213940

noncomputable section

/-- A036289: a(n) = n*2^n.

Offset 0, canonical program `A036289.P13525419631139213940`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n` (program `A036289.P13525419631139213940`, by `A036289.P13525419631139213940.correct`). Lean does not check the parsing of the name. -/
def A036289 (n : ℕ) : ℤ :=
  (A036289.P13525419631139213940.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n` (program `A036289.P13525419631139213940`, by `A036289.P13525419631139213940.correct`). Lean does not check the parsing of the name. -/
def A036289.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036291.P15305288486312192511

`n*5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036291.P15305288486312192511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ n

end

end A036291.P15305288486312192511

noncomputable section

/-- A036291: a(n) = n*5^n.

Offset 0, canonical program `A036291.P15305288486312192511`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*5^n` (program `A036291.P15305288486312192511`, by `A036291.P15305288486312192511.correct`). Lean does not check the parsing of the name. -/
def A036291 (n : ℕ) : ℤ :=
  (A036291.P15305288486312192511.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*5^n` (program `A036291.P15305288486312192511`, by `A036291.P15305288486312192511.correct`). Lean does not check the parsing of the name. -/
def A036291.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036292.P17934490040438387144

`n*6^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036292.P17934490040438387144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 6 ^ n

end

end A036292.P17934490040438387144

noncomputable section

/-- A036292: a(n) = n*6^n.

Offset 0, canonical program `A036292.P17934490040438387144`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*6^n` (program `A036292.P17934490040438387144`, by `A036292.P17934490040438387144.correct`). Lean does not check the parsing of the name. -/
def A036292 (n : ℕ) : ℤ :=
  (A036292.P17934490040438387144.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*6^n` (program `A036292.P17934490040438387144`, by `A036292.P17934490040438387144.correct`). Lean does not check the parsing of the name. -/
def A036292.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036293.P8879774288884538033

`n*7^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036293.P8879774288884538033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 7 ^ n

end

end A036293.P8879774288884538033

noncomputable section

/-- A036293: a(n) = n*7^n.

Offset 0, canonical program `A036293.P8879774288884538033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*7^n` (program `A036293.P8879774288884538033`, by `A036293.P8879774288884538033.correct`). Lean does not check the parsing of the name. -/
def A036293 (n : ℕ) : ℤ :=
  (A036293.P8879774288884538033.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*7^n` (program `A036293.P8879774288884538033`, by `A036293.P8879774288884538033.correct`). Lean does not check the parsing of the name. -/
def A036293.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036294.P5330429695356076462

`n*8^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036294.P5330429695356076462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 8 ^ n

end

end A036294.P5330429695356076462

noncomputable section

/-- A036294: a(n) = n*8^n.

Offset 0, canonical program `A036294.P5330429695356076462`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*8^n` (program `A036294.P5330429695356076462`, by `A036294.P5330429695356076462.correct`). Lean does not check the parsing of the name. -/
def A036294 (n : ℕ) : ℤ :=
  (A036294.P5330429695356076462.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*8^n` (program `A036294.P5330429695356076462`, by `A036294.P5330429695356076462.correct`). Lean does not check the parsing of the name. -/
def A036294.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036404.P18266115002161593795

`ceil(n²/5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036404.P18266115002161593795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 5⌉

end

end A036404.P18266115002161593795

noncomputable section

/-- A036404: a(n) = ceiling(n^2/5).

Offset 0, canonical program `A036404.P18266115002161593795`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/5)` (program `A036404.P18266115002161593795`, by `A036404.P18266115002161593795.correct`). Lean does not check the parsing of the name. -/
def A036404 (n : ℕ) : ℤ :=
  A036404.P18266115002161593795.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/5)` (program `A036404.P18266115002161593795`, by `A036404.P18266115002161593795.correct`). Lean does not check the parsing of the name. -/
def A036404.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036405.P15568888695052556824

`ceil(n²/7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036405.P15568888695052556824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 7⌉

end

end A036405.P15568888695052556824

noncomputable section

/-- A036405: a(n) = ceiling(n^2/7).

Offset 0, canonical program `A036405.P15568888695052556824`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/7)` (program `A036405.P15568888695052556824`, by `A036405.P15568888695052556824.correct`). Lean does not check the parsing of the name. -/
def A036405 (n : ℕ) : ℤ :=
  A036405.P15568888695052556824.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/7)` (program `A036405.P15568888695052556824`, by `A036405.P15568888695052556824.correct`). Lean does not check the parsing of the name. -/
def A036405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036406.P1382487359397210652

`ceil(n²/8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036406.P1382487359397210652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 8⌉

end

end A036406.P1382487359397210652

noncomputable section

/-- A036406: a(n) = ceiling(n^2/8).

Offset 0, canonical program `A036406.P1382487359397210652`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/8)` (program `A036406.P1382487359397210652`, by `A036406.P1382487359397210652.correct`). Lean does not check the parsing of the name. -/
def A036406 (n : ℕ) : ℤ :=
  A036406.P1382487359397210652.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/8)` (program `A036406.P1382487359397210652`, by `A036406.P1382487359397210652.correct`). Lean does not check the parsing of the name. -/
def A036406.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036407.P12987039987567592911

`ceil(n²/9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036407.P12987039987567592911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 9⌉

end

end A036407.P12987039987567592911

noncomputable section

/-- A036407: a(n) = ceiling(n^2/9).

Offset 0, canonical program `A036407.P12987039987567592911`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/9)` (program `A036407.P12987039987567592911`, by `A036407.P12987039987567592911.correct`). Lean does not check the parsing of the name. -/
def A036407 (n : ℕ) : ℤ :=
  A036407.P12987039987567592911.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/9)` (program `A036407.P12987039987567592911`, by `A036407.P12987039987567592911.correct`). Lean does not check the parsing of the name. -/
def A036407.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036408.P11396681803384752045

`ceil(n²/10)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036408.P11396681803384752045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 10⌉

end

end A036408.P11396681803384752045

noncomputable section

/-- A036408: a(n) = ceiling(n^2/10).

Offset 0, canonical program `A036408.P11396681803384752045`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/10)` (program `A036408.P11396681803384752045`, by `A036408.P11396681803384752045.correct`). Lean does not check the parsing of the name. -/
def A036408 (n : ℕ) : ℤ :=
  A036408.P11396681803384752045.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/10)` (program `A036408.P11396681803384752045`, by `A036408.P11396681803384752045.correct`). Lean does not check the parsing of the name. -/
def A036408.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036409.P7246155149988740922

`ceil(n²/11)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036409.P7246155149988740922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 11⌉

end

end A036409.P7246155149988740922

noncomputable section

/-- A036409: a(n) = ceiling(n^2/11).

Offset 0, canonical program `A036409.P7246155149988740922`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/11)` (program `A036409.P7246155149988740922`, by `A036409.P7246155149988740922.correct`). Lean does not check the parsing of the name. -/
def A036409 (n : ℕ) : ℤ :=
  A036409.P7246155149988740922.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/11)` (program `A036409.P7246155149988740922`, by `A036409.P7246155149988740922.correct`). Lean does not check the parsing of the name. -/
def A036409.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036486.P17548178815895887309

`ceil(n^3/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036486.P17548178815895887309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℚ) / 2⌉

end

end A036486.P17548178815895887309

noncomputable section

/-- A036486: a(n) = ceiling((n^3)/2).

Offset 0, canonical program `A036486.P17548178815895887309`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^3/2)` (program `A036486.P17548178815895887309`, by `A036486.P17548178815895887309.correct`). Lean does not check the parsing of the name. -/
def A036486 (n : ℕ) : ℤ :=
  A036486.P17548178815895887309.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^3/2)` (program `A036486.P17548178815895887309`, by `A036486.P17548178815895887309.correct`). Lean does not check the parsing of the name. -/
def A036486.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036487.P9713645422185084787

`floor(n^3/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036487.P9713645422185084787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℚ) / 2⌋

end

end A036487.P9713645422185084787

noncomputable section

/-- A036487: a(n) = floor((n^3)/2).

Offset 0, canonical program `A036487.P9713645422185084787`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/2)` (program `A036487.P9713645422185084787`, by `A036487.P9713645422185084787.correct`). Lean does not check the parsing of the name. -/
def A036487 (n : ℕ) : ℤ :=
  A036487.P9713645422185084787.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/2)` (program `A036487.P9713645422185084787`, by `A036487.P9713645422185084787.correct`). Lean does not check the parsing of the name. -/
def A036487.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036605.P3462420480559024181

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036605.P3462420480559024181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 7] fun n a =>
  a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A036605.P3462420480559024181

noncomputable section

/-- A036605: a(n) = a(n-2) + 2*a(n-3) + a(n-4).

Offset 0, canonical program `A036605.P3462420480559024181`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+2*a(n-3)+a(n-4)` (program `A036605.P3462420480559024181`, by `A036605.P3462420480559024181.correct`). Lean does not check the parsing of the name. -/
def A036605 (n : ℕ) : ℤ :=
  (A036605.P3462420480559024181.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+2*a(n-3)+a(n-4)` (program `A036605.P3462420480559024181`, by `A036605.P3462420480559024181.correct`). Lean does not check the parsing of the name. -/
def A036605.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036679.P12226400419972912467

`n^n-n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036679.P12226400419972912467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (Nat.factorial n : ℤ)

end

end A036679.P12226400419972912467

noncomputable section

/-- A036679: a(n) = n^n - n!.

Offset 0, canonical program `A036679.P12226400419972912467`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n-n!` (program `A036679.P12226400419972912467`, by `A036679.P12226400419972912467.correct`). Lean does not check the parsing of the name. -/
def A036679 (n : ℕ) : ℤ :=
  A036679.P12226400419972912467.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n-n!` (program `A036679.P12226400419972912467`, by `A036679.P12226400419972912467.correct`). Lean does not check the parsing of the name. -/
def A036679.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036739.P16761960508121330883

`n!^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036739.P16761960508121330883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ n + 1

end

end A036739.P16761960508121330883

noncomputable section

/-- A036739: a(n) = (n!)^n+1.

Offset 0, canonical program `A036739.P16761960508121330883`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^n+1` (program `A036739.P16761960508121330883`, by `A036739.P16761960508121330883.correct`). Lean does not check the parsing of the name. -/
def A036739 (n : ℕ) : ℤ :=
  (A036739.P16761960508121330883.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^n+1` (program `A036739.P16761960508121330883`, by `A036739.P16761960508121330883.correct`). Lean does not check the parsing of the name. -/
def A036739.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036740.P447838899479434515

`n!^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036740.P447838899479434515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ n

end

end A036740.P447838899479434515

noncomputable section

/-- A036740: a(n) = (n!)^n.

Offset 0, canonical program `A036740.P447838899479434515`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^n` (program `A036740.P447838899479434515`, by `A036740.P447838899479434515.correct`). Lean does not check the parsing of the name. -/
def A036740 (n : ℕ) : ℤ :=
  (A036740.P447838899479434515.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^n` (program `A036740.P447838899479434515`, by `A036740.P447838899479434515.correct`). Lean does not check the parsing of the name. -/
def A036740.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037205.P5515129768780928026

`(n+1)^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037205.P5515129768780928026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - 1

end

end A037205.P5515129768780928026

noncomputable section

/-- A037205: a(n) = (n+1)^n - 1.

Offset 0, canonical program `A037205.P5515129768780928026`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n-1` (program `A037205.P5515129768780928026`, by `A037205.P5515129768780928026.correct`). Lean does not check the parsing of the name. -/
def A037205 (n : ℕ) : ℤ :=
  A037205.P5515129768780928026.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n-1` (program `A037205.P5515129768780928026`, by `A037205.P5515129768780928026.correct`). Lean does not check the parsing of the name. -/
def A037205.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037248.P3776369484242163410

`n^6*(n²-1)*(n^6-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037248.P3776369484242163410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 6 : ℤ) * (((n ^ 2 : ℤ) - 1) * ((n ^ 6 : ℤ) - 1))

end

end A037248.P3776369484242163410

noncomputable section

/-- A037248: a(n) = n^6*(n^2 - 1)*(n^6 - 1).

Offset 0, canonical program `A037248.P3776369484242163410`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n²-1)*(n^6-1)` (program `A037248.P3776369484242163410`, by `A037248.P3776369484242163410.correct`). Lean does not check the parsing of the name. -/
def A037248 (n : ℕ) : ℤ :=
  A037248.P3776369484242163410.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n²-1)*(n^6-1)` (program `A037248.P3776369484242163410`, by `A037248.P3776369484242163410.correct`). Lean does not check the parsing of the name. -/
def A037248.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037250.P17689644117869653976

`n²*(n²+1)*(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037250.P17689644117869653976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((n ^ 2 + 1 : ℤ) * ((n : ℤ) - 1))

end

end A037250.P17689644117869653976

noncomputable section

/-- A037250: a(n) = n^2*(n^2 + 1)*(n-1).

Offset 0, canonical program `A037250.P17689644117869653976`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²+1)*(n-1)` (program `A037250.P17689644117869653976`, by `A037250.P17689644117869653976.correct`). Lean does not check the parsing of the name. -/
def A037250 (n : ℕ) : ℤ :=
  A037250.P17689644117869653976.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²+1)*(n-1)` (program `A037250.P17689644117869653976`, by `A037250.P17689644117869653976.correct`). Lean does not check the parsing of the name. -/
def A037250.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037251.P7730223010927134184

`n^3*(n^3+1)*(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037251.P7730223010927134184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * ((n ^ 3 + 1 : ℤ) * ((n : ℤ) - 1))

end

end A037251.P7730223010927134184

noncomputable section

/-- A037251: a(n) = n^3*(n^3 + 1)*(n-1).

Offset 0, canonical program `A037251.P7730223010927134184`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^3+1)*(n-1)` (program `A037251.P7730223010927134184`, by `A037251.P7730223010927134184.correct`). Lean does not check the parsing of the name. -/
def A037251 (n : ℕ) : ℤ :=
  A037251.P7730223010927134184.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^3+1)*(n-1)` (program `A037251.P7730223010927134184`, by `A037251.P7730223010927134184.correct`). Lean does not check the parsing of the name. -/
def A037251.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037252.P8576863340754061310

`n^12*(n^6+1)*(n^4-1)*(n^3+1)*(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037252.P8576863340754061310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 12 : ℤ) * ((n ^ 6 + 1 : ℤ) * (((n ^ 4 : ℤ) - 1) * ((n ^ 3 + 1 : ℤ) * ((n : ℤ) - 1))))

end

end A037252.P8576863340754061310

noncomputable section

/-- A037252: a(n) = n^12*(n^6 + 1)*(n^4 - 1)*(n^3 + 1)*(n-1).

Offset 0, canonical program `A037252.P8576863340754061310`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^12*(n^6+1)*(n^4-1)*(n^3+1)*(n-1)` (program `A037252.P8576863340754061310`, by `A037252.P8576863340754061310.correct`). Lean does not check the parsing of the name. -/
def A037252 (n : ℕ) : ℤ :=
  A037252.P8576863340754061310.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^12*(n^6+1)*(n^4-1)*(n^3+1)*(n-1)` (program `A037252.P8576863340754061310`, by `A037252.P8576863340754061310.correct`). Lean does not check the parsing of the name. -/
def A037252.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027472.P10528694330442229026

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=9, a(2)=54`
-/

namespace A027472.P10528694330442229026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 54] fun n a =>
  9 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A027472.P10528694330442229026

noncomputable section

/-- A027472: Third convolution of the powers of 3 (A000244).

Offset 3, canonical program `A027472.P10528694330442229026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027472 (n : ℕ) : ℤ :=
  A027472.P10528694330442229026.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027473.P14162763558740844376

`14*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=14`
-/

namespace A027473.P14162763558740844376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  14 * a (n - 1) - 49 * a (n - 2)

end

end A027473.P14162763558740844376

noncomputable section

/-- A027473: Second column of A027466.

Offset 1, canonical program `A027473.P14162763558740844376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027473 (n : ℕ) : ℤ :=
  A027473.P14162763558740844376.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027474.P8035799825745201113

`21*a(n-1)-147*a(n-2)+343*a(n-3)` with `a(0)=1, a(1)=21, a(2)=294`
-/

namespace A027474.P8035799825745201113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21, 294] fun n a =>
  21 * a (n - 1) - 147 * a (n - 2) + 343 * a (n - 3)

end

end A027474.P8035799825745201113

noncomputable section

/-- A027474: a(n) = 7^(n-2) * C(n,2).

Offset 2, canonical program `A027474.P8035799825745201113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027474 (n : ℕ) : ℤ :=
  A027474.P8035799825745201113.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027475.P13766010371244738436

`30*a(n-1)-225*a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A027475.P13766010371244738436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  30 * a (n - 1) - 225 * a (n - 2)

end

end A027475.P13766010371244738436

noncomputable section

/-- A027475: a(n) = (n-1) * 15^(n-2).

Offset 2, canonical program `A027475.P13766010371244738436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027475 (n : ℕ) : ℤ :=
  A027475.P13766010371244738436.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027480.P4665495128858654812

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=30`
-/

namespace A027480.P4665495128858654812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 12, 30] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A027480.P4665495128858654812

noncomputable section

/-- A027480: a(n) = n*(n+1)*(n+2)/2.

Offset 0, canonical program `A027480.P4665495128858654812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027480 (n : ℕ) : ℤ :=
  A027480.P4665495128858654812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027482.P1334308615150628747

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=7, a(1)=39, a(2)=126, a(3)=310, a(4)=645`
-/

namespace A027482.P1334308615150628747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 39, 126, 310, 645] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A027482.P1334308615150628747

noncomputable section

/-- A027482: a(n) = n*(n^3 - 1)/2.

Offset 2, canonical program `A027482.P1334308615150628747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027482 (n : ℕ) : ℤ :=
  A027482.P1334308615150628747.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027557.P14274752979935920469

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A027557.P14274752979935920469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3) - 2 * a (n - 4)

end

end A027557.P14274752979935920469

noncomputable section

/-- A027557: Number of 3-balanced strings of length n: let d(S)= #(1)'s in S - #(0)'s, then S is k-balanced if every substring T has -k<=d(T)<=k; here k=3.

Offset 0, canonical program `A027557.P14274752979935920469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027557 (n : ℕ) : ℤ :=
  A027557.P14274752979935920469.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027559.P16923029583332115534

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`
-/

namespace A027559.P16923029583332115534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 3 * a (n - 3) - 3 * a (n - 4)

end

end A027559.P16923029583332115534

noncomputable section

/-- A027559: Number of 4-balanced strings of length n: let d(S)= #(1)'s in S - #(0)'s, then S is k-balanced if every substring T has -k<=d(T)<=k; here k=4.

Offset 0, canonical program `A027559.P16923029583332115534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027559 (n : ℕ) : ℤ :=
  A027559.P16923029583332115534.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027575.P16825606003618692316

`(2*n+3)²+5`
-/

namespace A027575.P16825606003618692316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2 + 5

end

end A027575.P16825606003618692316

noncomputable section

/-- A027575: a(n) = n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2.

Offset 0, canonical program `A027575.P16825606003618692316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027575 (n : ℕ) : ℤ :=
  (A027575.P16825606003618692316.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027578.P5254395816834247410

`5*(n+2)²+10`
-/

namespace A027578.P5254395816834247410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2) ^ 2 + 10

end

end A027578.P5254395816834247410

noncomputable section

/-- A027578: Sums of five consecutive squares: a(n) = n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2.

Offset 0, canonical program `A027578.P5254395816834247410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027578 (n : ℕ) : ℤ :=
  (A027578.P5254395816834247410.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027599.P10300203220603702158

`((6*n-7)²+23)/12`
-/

namespace A027599.P10300203220603702158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((6 * n : ℤ) - 7) ^ 2 + 23 : ℚ) / 12

end

end A027599.P10300203220603702158

noncomputable section

/-- A027599: a(n) = 3*n^2 - 7*n + 6.

Offset 0, canonical program `A027599.P10300203220603702158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027599 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027599.P10300203220603702158.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027603.P14428741637681007839

`4*n^3+18*n²+42*n+36`
-/

namespace A027603.P14428741637681007839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 3 + 18 * n ^ 2 + 42 * n + 36

end

end A027603.P14428741637681007839

noncomputable section

/-- A027603: a(n) = n^3 + (n+1)^3 + (n+2)^3 + (n+3)^3.

Offset 0, canonical program `A027603.P14428741637681007839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027603 (n : ℕ) : ℤ :=
  (A027603.P14428741637681007839.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027608.P4586523341589999453

`n/3*(n²+3*n+8)*2^n+1`
-/

namespace A027608.P4586523341589999453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((n ^ 2 + 3 * n + 8) * 2 ^ n : ℚ) + 1

end

end A027608.P4586523341589999453

noncomputable section

/-- A027608: Expansion of 1/((1-x)*(1-2*x)^4).

Offset 0, canonical program `A027608.P4586523341589999453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027608 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027608.P4586523341589999453.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027620.P13041977439459356936

`(n+1)*(n+3)²`
-/

namespace A027620.P13041977439459356936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3) ^ 2

end

end A027620.P13041977439459356936

noncomputable section

/-- A027620: a(n) = n + (n+1)^2 + (n+2)^3.

Offset 0, canonical program `A027620.P13041977439459356936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027620 (n : ℕ) : ℤ :=
  (A027620.P13041977439459356936.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027621.P4558583486024972691

`(n+3)²*(n²+7*n+10)`
-/

namespace A027621.P4558583486024972691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 * (n ^ 2 + 7 * n + 10)

end

end A027621.P4558583486024972691

noncomputable section

/-- A027621: a(n) = n + (n+1)^2 + (n+2)^3 + (n+3)^4.

Offset 0, canonical program `A027621.P4558583486024972691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027621 (n : ℕ) : ℤ :=
  (A027621.P4558583486024972691.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027628.P17227619108845540267

`(2+13*n+33*n²+72*n^3+72*n^4)/2`
-/

namespace A027628.P17227619108845540267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + 13 * n + 33 * n ^ 2 + 72 * n ^ 3 + 72 * n ^ 4 : ℚ) / 2

end

end A027628.P17227619108845540267

noncomputable section

/-- A027628: Expansion of Molien series for 5-dimensional group G_3 acting on Jacobi polynomials of ternary self-dual codes.

Offset 0, canonical program `A027628.P17227619108845540267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027628 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027628.P17227619108845540267.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027650.P18314882017031302540

`2^n-6*3^n+6*4^n`
-/

namespace A027650.P18314882017031302540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (6 * 3 ^ n : ℤ) + (6 * 4 ^ n : ℤ)

end

end A027650.P18314882017031302540

noncomputable section

/-- A027650: Poly-Bernoulli numbers B_n^(k) with k=-3.

Offset 0, canonical program `A027650.P18314882017031302540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027650 (n : ℕ) : ℤ :=
  A027650.P18314882017031302540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027651.P8499432226660582693

`24*5^n-36*4^n+14*3^n-2^n`
-/

namespace A027651.P8499432226660582693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * 5 ^ n : ℤ) - (36 * 4 ^ n : ℤ) + (14 * 3 ^ n : ℤ) - (2 ^ n : ℤ)

end

end A027651.P8499432226660582693

noncomputable section

/-- A027651: Poly-Bernoulli numbers B_n^(k) with k=-4.

Offset 0, canonical program `A027651.P8499432226660582693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027651 (n : ℕ) : ℤ :=
  A027651.P8499432226660582693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027656.P10497759213418038365

`(n+2)*(n+1)%2/2`
-/

namespace A027656.P10497759213418038365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((((n + 1) % 2 : ℕ) : ℚ) / 2)

end

end A027656.P10497759213418038365

noncomputable section

/-- A027656: Expansion of 1/(1-x^2)^2 (included only for completeness - the policy is always to omit the zeros from such sequences).

Offset 0, canonical program `A027656.P10497759213418038365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027656.P10497759213418038365.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027657.P17836131318359914109

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=38`
-/

namespace A027657.P17836131318359914109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 38] fun n a =>
  34 * a (n - 1) - a (n - 2)

end

end A027657.P17836131318359914109

noncomputable section

/-- A027657: Expansion of (1+4*x)/(1-34*x+x^2).

Offset 0, canonical program `A027657.P17836131318359914109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027657 (n : ℕ) : ℤ :=
  A027657.P17836131318359914109.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027659.P6819466996500187260

`(n+8)*(n+2)*(n+1)*(n²+9*n+30)/120`
-/

namespace A027659.P6819466996500187260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℚ) * ((n + 2 : ℚ) * ((n + 1 : ℚ) * ((n ^ 2 + 9 * n + 30 : ℚ) / 120)))

end

end A027659.P6819466996500187260

noncomputable section

/-- A027659: a(n) = binomial(n+2,2) + binomial(n+3,3) + binomial(n+4,4) + binomial(n+5,5).

Offset 0, canonical program `A027659.P6819466996500187260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027659.P6819466996500187260.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027670.P2673453285487808303

`n*(n+1)*(n^4-n^3+4*n²+2)/12`
-/

namespace A027670.P2673453285487808303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((n ^ 4 : ℤ) - (n ^ 3 : ℤ) + (4 * n ^ 2 : ℤ) + 2 : ℚ) / 12))

end

end A027670.P2673453285487808303

noncomputable section

/-- A027670: Number of different bracelets with 6 beads of at most n colors, allowing turning over.

Offset 0, canonical program `A027670.P2673453285487808303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027670.P2673453285487808303.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027674.P14607552039919879899

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A027674.P14607552039919879899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) - a (n - 5)

end

end A027674.P14607552039919879899

noncomputable section

/-- A027674: Numerical distance between m-th and (m+n)-th spheres in loxodromic sequence of spheres in which each 5 consecutive spheres are in mutual contact.

Offset 0, canonical program `A027674.P14607552039919879899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027674 (n : ℕ) : ℤ :=
  A027674.P14607552039919879899.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027709.P11339494392271686754

`2*ceil(2*sqrt(n))`
-/

namespace A027709.P11339494392271686754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈2 * Real.sqrt (n : ℝ)⌉

end

end A027709.P11339494392271686754

noncomputable section

/-- A027709: Minimal perimeter of polyomino with n square cells.

Offset 0, canonical program `A027709.P11339494392271686754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027709 (n : ℕ) : ℤ :=
  A027709.P11339494392271686754.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027711.P12872271298144189323

`4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=9`
-/

namespace A027711.P12872271298144189323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 9] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3) + a (n - 4) - 2 * a (n - 5)

end

end A027711.P12872271298144189323

noncomputable section

/-- A027711: Number of binary sequences of length n with an even number of ones, at least two of the ones being contiguous.

Offset 1, canonical program `A027711.P12872271298144189323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027711 (n : ℕ) : ℤ :=
  A027711.P12872271298144189323.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027800.P2500424533972823738

`(n+1)²*(n+2)*(n+3)*(n+4)/24`
-/

namespace A027800.P2500424533972823738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((n + 4 : ℚ) / 24)))

end

end A027800.P2500424533972823738

noncomputable section

/-- A027800: a(n) = (n+1)*binomial(n+4, 4).

Offset 0, canonical program `A027800.P2500424533972823738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027800.P2500424533972823738.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027831.P17274736939676359409

`4*a(n-1)-2*a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=44`
-/

namespace A027831.P17274736939676359409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14, 44] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3) + 2 * a (n - 4)

end

end A027831.P17274736939676359409

noncomputable section

/-- A027831: Expansion of 1/(1 - 4*x + 2*x^2 + 4*x^3 - 2*x^4).

Offset 0, canonical program `A027831.P17274736939676359409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027831 (n : ℕ) : ℤ :=
  A027831.P17274736939676359409.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027865.P714346590624901866

`6*n²+30*n+55`
-/

namespace A027865.P714346590624901866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2 + 30 * n + 55

end

end A027865.P714346590624901866

noncomputable section

/-- A027865: Sums of six consecutive squares: a(n) = n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2 + (n+5)^2.

Offset 0, canonical program `A027865.P714346590624901866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027865 (n : ℕ) : ℤ :=
  (A027865.P714346590624901866.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027868.P16736331187050993761

`floor(n/5)+a(floor(n/5))` with `a(0)=0`
-/

namespace A027868.P16736331187050993761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 5⌋ + a ⌊(n : ℚ) / 5⌋.toNat

end

end A027868.P16736331187050993761

noncomputable section

/-- A027868: Number of trailing zeros in n!; highest power of 5 dividing n!.

Offset 0, canonical program `A027868.P16736331187050993761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027868 (n : ℕ) : ℤ :=
  A027868.P16736331187050993761.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027937.P10977973690695847010

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=26, a(3)=79`
-/

namespace A027937.P10977973690695847010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 26, 79] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A027937.P10977973690695847010

noncomputable section

/-- A027937: a(n) = T(2*n, n+1), T given by A027935.

Offset 1, canonical program `A027937.P10977973690695847010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027937 (n : ℕ) : ℤ :=
  A027937.P10977973690695847010.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027941.P9120053372006935795

`3*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A027941.P9120053372006935795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) - a (n - 2) + 1

end

end A027941.P9120053372006935795

noncomputable section

/-- A027941: a(n) = Fibonacci(2*n + 1) - 1.

Offset 0, canonical program `A027941.P9120053372006935795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027941 (n : ℕ) : ℤ :=
  A027941.P9120053372006935795.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027947.P16737674988158166657

`2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A027947.P16737674988158166657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  2 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A027947.P16737674988158166657

noncomputable section

/-- A027947: a(n) = Sum_{k=m..n} T(k,n-k), where m = floor((n+1)/2); a(n) is the n-th diagonal-sum of left justified array T given by A027935.

Offset 0, canonical program `A027947.P16737674988158166657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027947 (n : ℕ) : ℤ :=
  A027947.P16737674988158166657.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027949.P15482568513924351520

`6*a(n-1)-13*a(n-2)+13*a(n-3)-6*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=25, a(3)=97, a(4)=309, a(5)=894`
-/

namespace A027949.P15482568513924351520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 25, 97, 309, 894] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 13 * a (n - 3) - 6 * a (n - 4) + a (n - 5)

end

end A027949.P15482568513924351520

noncomputable section

/-- A027949: a(n) = T(2n,n+1), T given by A027948.

Offset 1, canonical program `A027949.P15482568513924351520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027949 (n : ℕ) : ℤ :=
  A027949.P15482568513924351520.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027959.P3404195364708109400

`3*a(n-2)+a(n-3)-3*a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7`
-/

namespace A027959.P3404195364708109400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 7] fun n a =>
  3 * a (n - 2) + a (n - 3) - 3 * a (n - 4) - a (n - 5) + a (n - 6)

end

end A027959.P3404195364708109400

noncomputable section

/-- A027959: a(n) = Sum_{k=m..n} T(k,n-k), where m = floor((n+1)/2); a(n) is the n-th diagonal-sum of left justified array T given by A027948.

Offset 1, canonical program `A027959.P3404195364708109400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027959 (n : ℕ) : ℤ :=
  A027959.P3404195364708109400.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027961.P14284898692789304593

`a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=4`
-/

namespace A027961.P14284898692789304593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 2) + 3

end

end A027961.P14284898692789304593

noncomputable section

/-- A027961: a(n) = Lucas(n+2) - 3.

Offset 1, canonical program `A027961.P14284898692789304593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027961 (n : ℕ) : ℤ :=
  (A027961.P14284898692789304593.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027975.P9460042647220153087

`a(n-2)+a(n-3)+3` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A027975.P9460042647220153087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 2) + a (n - 3) + 3

end

end A027975.P9460042647220153087

noncomputable section

/-- A027975: a(n) is the n-th diagonal sum of left justified array T given by A027960.

Offset 0, canonical program `A027975.P9460042647220153087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027975 (n : ℕ) : ℤ :=
  (A027975.P9460042647220153087.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027976.P12652982171173166105

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6, a(4)=10`
-/

namespace A027976.P12652982171173166105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 6, 10] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5)

end

end A027976.P12652982171173166105

noncomputable section

/-- A027976: n-th diagonal sum of right justified array T given by A027960.

Offset 0, canonical program `A027976.P12652982171173166105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027976 (n : ℕ) : ℤ :=
  A027976.P12652982171173166105.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027978.P13290445822772738107

`5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` with `a(0)=1, a(1)=11, a(2)=42, a(3)=145, a(4)=473`
-/

namespace A027978.P13290445822772738107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 42, 145, 473] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2) - 5 * a (n - 3) + 5 * a (n - 4) - a (n - 5)

end

end A027978.P13290445822772738107

noncomputable section

/-- A027978: a(n) = self-convolution of row n of array T given by A027960.

Offset 0, canonical program `A027978.P13290445822772738107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027978 (n : ℕ) : ℤ :=
  A027978.P13290445822772738107.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027981.P3364693400701711770

`3*2^n*(2*n-1)+4`
-/

namespace A027981.P3364693400701711770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) * ((2 * n : ℤ) - 1) + 4

end

end A027981.P3364693400701711770

noncomputable section

/-- A027981: a(n) = Sum_{k=0..2*n} (k+1)*T(n,k), T given by A027960.

Offset 0, canonical program `A027981.P3364693400701711770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027981 (n : ℕ) : ℤ :=
  A027981.P3364693400701711770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027982.P15404522321963010124

`(2*n+11)*2^n-2*(3*n+5)`
-/

namespace A027982.P15404522321963010124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 11) * 2 ^ n : ℤ) - (2 * (3 * n + 5) : ℤ)

end

end A027982.P15404522321963010124

noncomputable section

/-- A027982: a(n) = Sum_{k=0..2*n} (k+1)*T(n, 2*n-k), T given by A027960.

Offset 0, canonical program `A027982.P15404522321963010124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027982 (n : ℕ) : ℤ :=
  A027982.P15404522321963010124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027984.P10042172055875683685

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=58`
-/

namespace A027984.P10042172055875683685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 20, 58] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A027984.P10042172055875683685

noncomputable section

/-- A027984: a(n) = Sum_{k=0..n} T(n, k)*T(n, n+k), T given by A027960.

Offset 0, canonical program `A027984.P10042172055875683685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027984 (n : ℕ) : ℤ :=
  A027984.P10042172055875683685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027989.P2476009227426594195

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=33`
-/

namespace A027989.P2476009227426594195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 33] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A027989.P2476009227426594195

noncomputable section

/-- A027989: a(n) = self-convolution of row n of array T given by A027926.

Offset 0, canonical program `A027989.P2476009227426594195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027989 (n : ℕ) : ℤ :=
  A027989.P2476009227426594195.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027992.P7713747682354996554

`2^n*(3*n-1)+2`
-/

namespace A027992.P7713747682354996554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((3 * n : ℤ) - 1) + 2

end

end A027992.P7713747682354996554

noncomputable section

/-- A027992: a(n) = 1*T(n,0) + 2*T(n,1) + ... + (2n+1)*T(n,2n), T given by A027926.

Offset 0, canonical program `A027992.P7713747682354996554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027992 (n : ℕ) : ℤ :=
  A027992.P7713747682354996554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027993.P14239098711139684117

`(n+5)*2^n-2*n-4`
-/

namespace A027993.P14239098711139684117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 5) * 2 ^ n : ℤ) - (2 * n : ℤ) - 4

end

end A027993.P14239098711139684117

noncomputable section

/-- A027993: a(n) = 1*T(n,2n) + 2*T(n,2n-1) + ... + (2n+1)*T(n,0), T given by A027926.

Offset 0, canonical program `A027993.P14239098711139684117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027993 (n : ℕ) : ℤ :=
  A027993.P14239098711139684117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028003.P8682461671152515831

`(576*12^n-625*10^n+90*6^n-2^n)/40`
-/

namespace A028003.P8682461671152515831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((576 * 12 ^ n : ℤ) - (625 * 10 ^ n : ℤ) + (90 * 6 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 40

end

end A028003.P8682461671152515831

noncomputable section

/-- A028003: Expansion of 1/((1-2x)(1-6x)(1-10x)(1-12x)).

Offset 0, canonical program `A028003.P8682461671152515831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028003.P8682461671152515831.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028004.P8885431873324431264

`(6*12^(n+3)-8*11^(n+3)+3*6^(n+3)-2^(n+3))/360`
-/

namespace A028004.P8885431873324431264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 12 ^ (n + 3) : ℤ) - (8 * 11 ^ (n + 3) : ℤ) + (3 * 6 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 360

end

end A028004.P8885431873324431264

noncomputable section

/-- A028004: Expansion of 1/((1-2x)(1-6x)(1-11x)(1-12x)).

Offset 0, canonical program `A028004.P8885431873324431264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028004 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028004.P8885431873324431264.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028005.P13155927876554615617

`(15*9^(n+3)-35*8^(n+3)+3*7^(n+4)-2^(n+3))/210`
-/

namespace A028005.P13155927876554615617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 * 9 ^ (n + 3) : ℤ) - (35 * 8 ^ (n + 3) : ℤ) + (3 * 7 ^ (n + 4) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 210

end

end A028005.P13155927876554615617

noncomputable section

/-- A028005: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-9x)).

Offset 0, canonical program `A028005.P13155927876554615617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028005 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028005.P13155927876554615617.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028006.P4345146394146014032

`(5*10^(n+3)-20*8^(n+3)+16*7^(n+3)-2^(n+3))/240`
-/

namespace A028006.P4345146394146014032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ (n + 3) : ℤ) - (20 * 8 ^ (n + 3) : ℤ) + (16 * 7 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 240

end

end A028006.P4345146394146014032

noncomputable section

/-- A028006: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-10x)).

Offset 0, canonical program `A028006.P4345146394146014032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028006 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028006.P4345146394146014032.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028007.P9691698827847657066

`(5*11^(n+3)-30*8^(n+3)+27*7^(n+3)-2^(n+4))/540`
-/

namespace A028007.P9691698827847657066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 11 ^ (n + 3) : ℤ) - (30 * 8 ^ (n + 3) : ℤ) + (27 * 7 ^ (n + 3) : ℤ) - (2 ^ (n + 4) : ℤ) : ℚ) / 540

end

end A028007.P9691698827847657066

noncomputable section

/-- A028007: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-11x)).

Offset 0, canonical program `A028007.P9691698827847657066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028007 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028007.P9691698827847657066.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028008.P7439928837201268552

`(3*12^(n+3)-25*8^(n+3)+24*7^(n+3)-2^(n+4))/600`
-/

namespace A028008.P7439928837201268552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 12 ^ (n + 3) : ℤ) - (25 * 8 ^ (n + 3) : ℤ) + (24 * 7 ^ (n + 3) : ℤ) - (2 ^ (n + 4) : ℤ) : ℚ) / 600

end

end A028008.P7439928837201268552

noncomputable section

/-- A028008: Expansion of 1/((1-2x)(1-7x)(1-8x)(1-12x)).

Offset 0, canonical program `A028008.P7439928837201268552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028008.P7439928837201268552.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028012.P10957122250842599850

`(10*11^(n+3)-15*10^(n+3)+6*7^(n+3)-2^(n+3))/360`
-/

namespace A028012.P10957122250842599850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 11 ^ (n + 3) : ℤ) - (15 * 10 ^ (n + 3) : ℤ) + (6 * 7 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 360

end

end A028012.P10957122250842599850

noncomputable section

/-- A028012: Expansion of 1/((1-2x)(1-7x)(1-10x)(1-11x)).

Offset 0, canonical program `A028012.P10957122250842599850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028012 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028012.P10957122250842599850.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028014.P7518189498338103450

`(18*12^(n+3)-25*11^(n+3)+9*7^(n+3)-2^(n+4))/900`
-/

namespace A028014.P7518189498338103450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * 12 ^ (n + 3) : ℤ) - (25 * 11 ^ (n + 3) : ℤ) + (9 * 7 ^ (n + 3) : ℤ) - (2 ^ (n + 4) : ℤ) : ℚ) / 900

end

end A028014.P7518189498338103450

noncomputable section

/-- A028014: Expansion of 1/((1-2x)(1-7x)(1-11x)(1-12x)).

Offset 0, canonical program `A028014.P7518189498338103450`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028014 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028014.P7518189498338103450.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028015.P13197273361062074034

`(21*10^(n+3)-48*9^(n+3)+28*8^(n+3)-2^(n+3))/336`
-/

namespace A028015.P13197273361062074034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 10 ^ (n + 3) : ℤ) - (48 * 9 ^ (n + 3) : ℤ) + (28 * 8 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 336

end

end A028015.P13197273361062074034

noncomputable section

/-- A028015: Expansion of 1/((1-2x)(1-8x)(1-9x)(1-10x)).

Offset 0, canonical program `A028015.P13197273361062074034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028015 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028015.P13197273361062074034.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028016.P7444843843300628289

`(7*11^(n+3)-3*9^(n+4)+21*8^(n+3)-2^(n+3))/378`
-/

namespace A028016.P7444843843300628289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 11 ^ (n + 3) : ℤ) - (3 * 9 ^ (n + 4) : ℤ) + (21 * 8 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 378

end

end A028016.P7444843843300628289

noncomputable section

/-- A028016: Expansion of 1/((1-2x)(1-8x)(1-9x)(1-11x)).

Offset 0, canonical program `A028016.P7444843843300628289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028016.P7444843843300628289.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028017.P17563709142539021129

`(7*12^(n+3)-40*9^(n+3)+35*8^(n+3)-2^(n+4))/840`
-/

namespace A028017.P17563709142539021129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 12 ^ (n + 3) : ℤ) - (40 * 9 ^ (n + 3) : ℤ) + (35 * 8 ^ (n + 3) : ℤ) - (2 ^ (n + 4) : ℤ) : ℚ) / 840

end

end A028017.P17563709142539021129

noncomputable section

/-- A028017: Expansion of 1/((1-2x)(1-8x)(1-9x)(1-12x)).

Offset 0, canonical program `A028017.P17563709142539021129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028017.P17563709142539021129.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028018.P3000566333833015566

`(16*11^(n+3)-27*10^(n+3)+12*8^(n+3)-2^(n+3))/432`
-/

namespace A028018.P3000566333833015566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * 11 ^ (n + 3) : ℤ) - (27 * 10 ^ (n + 3) : ℤ) + (12 * 8 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 432

end

end A028018.P3000566333833015566

noncomputable section

/-- A028018: Expansion of 1/((1-2x)(1-8x)(1-10x)(1-11x)).

Offset 0, canonical program `A028018.P3000566333833015566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028018 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028018.P3000566333833015566.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028019.P1757697459447434439

`(6*12^(n+3)-15*10^(n+3)+10*8^(n+3)-2^(n+3))/480`
-/

namespace A028019.P1757697459447434439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 12 ^ (n + 3) : ℤ) - (15 * 10 ^ (n + 3) : ℤ) + (10 * 8 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 480

end

end A028019.P1757697459447434439

noncomputable section

/-- A028019: Expansion of 1/((1-2x)(1-8x)(1-10x)(1-12x)).

Offset 0, canonical program `A028019.P1757697459447434439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028019.P1757697459447434439.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028021.P13457334057264455486

`(28*11^(n+3)-63*10^(n+3)+36*9^(n+3)-2^(n+3))/504`
-/

namespace A028021.P13457334057264455486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((28 * 11 ^ (n + 3) : ℤ) - (63 * 10 ^ (n + 3) : ℤ) + (36 * 9 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 504

end

end A028021.P13457334057264455486

noncomputable section

/-- A028021: Expansion of 1/((1-2x)(1-9x)(1-10x)(1-11x)).

Offset 0, canonical program `A028021.P13457334057264455486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028021.P13457334057264455486.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028023.P8177061928968976377

`(21*12^(n+3)-35*11^(n+3)+15*9^(n+3)-2^(n+3))/630`
-/

namespace A028023.P8177061928968976377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 12 ^ (n + 3) : ℤ) - (35 * 11 ^ (n + 3) : ℤ) + (15 * 9 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 630

end

end A028023.P8177061928968976377

noncomputable section

/-- A028023: Expansion of 1/((1-2x)(1-9x)(1-11x)(1-12x)).

Offset 0, canonical program `A028023.P8177061928968976377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028023.P8177061928968976377.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028023.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028024.P11342237976681919125

`(36*12^(n+3)-80*11^(n+3)+45*10^(n+3)-2^(n+3))/720`
-/

namespace A028024.P11342237976681919125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((36 * 12 ^ (n + 3) : ℤ) - (80 * 11 ^ (n + 3) : ℤ) + (45 * 10 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 720

end

end A028024.P11342237976681919125

noncomputable section

/-- A028024: Expansion of 1/((1-2x)(1-10x)(1-11x)(1-12x)).

Offset 0, canonical program `A028024.P11342237976681919125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028024 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028024.P11342237976681919125.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028026.P17713287493122255422

`(7^(n+3)-6*5^(n+3)+8*4^(n+3)-3^(n+4))/24`
-/

namespace A028026.P17713287493122255422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 3) : ℤ) - (6 * 5 ^ (n + 3) : ℤ) + (8 * 4 ^ (n + 3) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 24

end

end A028026.P17713287493122255422

noncomputable section

/-- A028026: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-7x)).

Offset 0, canonical program `A028026.P17713287493122255422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028026 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028026.P17713287493122255422.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028027.P12816828639631211538

`(8^(n+3)-10*5^(n+3)+15*4^(n+3)-6*3^(n+3))/60`
-/

namespace A028027.P12816828639631211538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 3) : ℤ) - (10 * 5 ^ (n + 3) : ℤ) + (15 * 4 ^ (n + 3) : ℤ) - (6 * 3 ^ (n + 3) : ℤ) : ℚ) / 60

end

end A028027.P12816828639631211538

noncomputable section

/-- A028027: Expansion of 1 / ((1 - 3*x)*(1 - 4*x)*(1 - 5*x)*(1 - 8*x)).

Offset 0, canonical program `A028027.P12816828639631211538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028027 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028027.P12816828639631211538.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028028.P12018773882128858980

`243/40*9^n-125/8*5^n+64/5*4^n-9/4*3^n`
-/

namespace A028028.P12018773882128858980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (243 : ℚ) / 40 * (9 ^ n : ℚ) - (125 : ℚ) / 8 * (5 ^ n : ℚ) + (64 : ℚ) / 5 * (4 ^ n : ℚ) - (9 : ℚ) / 4 * (3 ^ n : ℚ)

end

end A028028.P12018773882128858980

noncomputable section

/-- A028028: Expansion of 1/((1-3*x)*(1-4*x)*(1-5*x)*(1-9*x)).

Offset 0, canonical program `A028028.P12018773882128858980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028028 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028028.P12018773882128858980.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028029.P5114941386363700503

`(10^(n+3)-21*5^(n+3)+35*4^(n+3)-15*3^(n+3))/210`
-/

namespace A028029.P5114941386363700503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (21 * 5 ^ (n + 3) : ℤ) + (35 * 4 ^ (n + 3) : ℤ) - (15 * 3 ^ (n + 3) : ℤ) : ℚ) / 210

end

end A028029.P5114941386363700503

noncomputable section

/-- A028029: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-10x)).

Offset 0, canonical program `A028029.P5114941386363700503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028029.P5114941386363700503.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028030.P17354880496093594523

`(11^(n+3)-28*5^(n+3)+48*4^(n+3)-21*3^(n+3))/336`
-/

namespace A028030.P17354880496093594523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (28 * 5 ^ (n + 3) : ℤ) + (48 * 4 ^ (n + 3) : ℤ) - (21 * 3 ^ (n + 3) : ℤ) : ℚ) / 336

end

end A028030.P17354880496093594523

noncomputable section

/-- A028030: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-11x)).

Offset 0, canonical program `A028030.P17354880496093594523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028030 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028030.P17354880496093594523.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028030.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028031.P10857721197199582604

`(12^(n+3)-36*5^(n+3)+63*4^(n+3)-28*3^(n+3))/504`
-/

namespace A028031.P10857721197199582604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (36 * 5 ^ (n + 3) : ℤ) + (63 * 4 ^ (n + 3) : ℤ) - (28 * 3 ^ (n + 3) : ℤ) : ℚ) / 504

end

end A028031.P10857721197199582604

noncomputable section

/-- A028031: Expansion of 1/((1-3x)(1-4x)(1-5x)(1-12x)).

Offset 0, canonical program `A028031.P10857721197199582604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028031 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028031.P10857721197199582604.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028032.P17711119966446657567

`(7^(n+3)-2*6^(n+3)+2*4^(n+3)-3^(n+3))/12`
-/

namespace A028032.P17711119966446657567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 3) : ℤ) - (2 * 6 ^ (n + 3) : ℤ) + (2 * 4 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 12

end

end A028032.P17711119966446657567

noncomputable section

/-- A028032: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-7x)).

Offset 0, canonical program `A028032.P17711119966446657567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028032.P17711119966446657567.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028034.P11537605159952484375

`(9^(n+3)-5*6^(n+3)+9*4^(n+3)-5*3^(n+3))/90`
-/

namespace A028034.P11537605159952484375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (5 * 6 ^ (n + 3) : ℤ) + (9 * 4 ^ (n + 3) : ℤ) - (5 * 3 ^ (n + 3) : ℤ) : ℚ) / 90

end

end A028034.P11537605159952484375

noncomputable section

/-- A028034: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-9x)).

Offset 0, canonical program `A028034.P11537605159952484375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028034.P11537605159952484375.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028035.P10814708552198430760

`(10^(n+3)-7*6^(n+3)+14*4^(n+3)-8*3^(n+3))/168`
-/

namespace A028035.P10814708552198430760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (7 * 6 ^ (n + 3) : ℤ) + (14 * 4 ^ (n + 3) : ℤ) - (8 * 3 ^ (n + 3) : ℤ) : ℚ) / 168

end

end A028035.P10814708552198430760

noncomputable section

/-- A028035: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-10x)).

Offset 0, canonical program `A028035.P10814708552198430760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028035.P10814708552198430760.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028037.P4655326577807636979

`(12^(n+3)-12*6^(n+3)+27*4^(n+3)-16*3^(n+3))/432`
-/

namespace A028037.P4655326577807636979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (12 * 6 ^ (n + 3) : ℤ) + (27 * 4 ^ (n + 3) : ℤ) - (16 * 3 ^ (n + 3) : ℤ) : ℚ) / 432

end

end A028037.P4655326577807636979

noncomputable section

/-- A028037: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-12x)).

Offset 0, canonical program `A028037.P4655326577807636979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028037.P4655326577807636979.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028038.P13657263197382989896

`(3*8^(n+3)-5*7^(n+3)+5*4^(n+3)-3^(n+4))/60`
-/

namespace A028038.P13657263197382989896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 8 ^ (n + 3) : ℤ) - (5 * 7 ^ (n + 3) : ℤ) + (5 * 4 ^ (n + 3) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 60

end

end A028038.P13657263197382989896

noncomputable section

/-- A028038: Expansion of 1/((1-3x)(1-4x)(1-7x)(1-8x)).

Offset 0, canonical program `A028038.P13657263197382989896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028038 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028038.P13657263197382989896.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028040.P7225720076472788256

`(2*10^(n+3)-7^(n+4)+14*4^(n+3)-3^(n+5))/252`
-/

namespace A028040.P7225720076472788256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 10 ^ (n + 3) : ℤ) - (7 ^ (n + 4) : ℤ) + (14 * 4 ^ (n + 3) : ℤ) - (3 ^ (n + 5) : ℤ) : ℚ) / 252

end

end A028040.P7225720076472788256

noncomputable section

/-- A028040: Expansion of g.f. 1/((1-3*x)*(1-4*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A028040.P7225720076472788256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028040.P7225720076472788256.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028042.P12878343662682153614

`(12^(n+3)-6*7^(n+3)+15*4^(n+3)-10*3^(n+3))/360`
-/

namespace A028042.P12878343662682153614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (6 * 7 ^ (n + 3) : ℤ) + (15 * 4 ^ (n + 3) : ℤ) - (10 * 3 ^ (n + 3) : ℤ) : ℚ) / 360

end

end A028042.P12878343662682153614

noncomputable section

/-- A028042: Expansion of 1/((1-3x)(1-4x)(1-7x)(1-12x)).

Offset 0, canonical program `A028042.P12878343662682153614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028042.P12878343662682153614.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028044.P9657594243599804500

`(10^(n+4)-21*8^(n+3)+35*4^(n+3)-8*3^(n+4))/840`
-/

namespace A028044.P9657594243599804500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 4) : ℤ) - (21 * 8 ^ (n + 3) : ℤ) + (35 * 4 ^ (n + 3) : ℤ) - (8 * 3 ^ (n + 4) : ℤ) : ℚ) / 840

end

end A028044.P9657594243599804500

noncomputable section

/-- A028044: Expansion of 1/((1-3x)(1-4x)(1-8x)(1-10x)).

Offset 0, canonical program `A028044.P9657594243599804500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028044.P9657594243599804500.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028050.P7305795736568797690

`(3*11^(n+3)-4*10^(n+3)+4^(n+4)-3^(n+4))/168`
-/

namespace A028050.P7305795736568797690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 3) : ℤ) - (4 * 10 ^ (n + 3) : ℤ) + (4 ^ (n + 4) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 168

end

end A028050.P7305795736568797690

noncomputable section

/-- A028050: Expansion of 1/((1-3x)(1-4x)(1-10x)(1-11x)).

Offset 0, canonical program `A028050.P7305795736568797690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028050 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028050.P7305795736568797690.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028053.P10191691300794784146

`(3*7^(n+3)-8*6^(n+3)+6*5^(n+3)-3^(n+3))/24`
-/

namespace A028053.P10191691300794784146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 7 ^ (n + 3) : ℤ) - (8 * 6 ^ (n + 3) : ℤ) + (6 * 5 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 24

end

end A028053.P10191691300794784146

noncomputable section

/-- A028053: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-7x)).

Offset 0, canonical program `A028053.P10191691300794784146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028053 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028053.P10191691300794784146.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028054.P4347206416303005116

`(8^(n+3)-5*6^(n+3)+5^(n+4)-3^(n+3))/30`
-/

namespace A028054.P4347206416303005116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 3) : ℤ) - (5 * 6 ^ (n + 3) : ℤ) + (5 ^ (n + 4) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 30

end

end A028054.P4347206416303005116

noncomputable section

/-- A028054: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-8x)).

Offset 0, canonical program `A028054.P4347206416303005116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028054 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028054.P4347206416303005116.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028055.P14844360270570848733

`(9^(n+3)-8*6^(n+3)+9*5^(n+3)-2*3^(n+3))/72`
-/

namespace A028055.P14844360270570848733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (8 * 6 ^ (n + 3) : ℤ) + (9 * 5 ^ (n + 3) : ℤ) - (2 * 3 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A028055.P14844360270570848733

noncomputable section

/-- A028055: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-9x)).

Offset 0, canonical program `A028055.P14844360270570848733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028055 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028055.P14844360270570848733.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028057.P8380822359520795287

`(11^(n+3)-16*6^(n+3)+20*5^(n+3)-5*3^(n+3))/240`
-/

namespace A028057.P8380822359520795287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (16 * 6 ^ (n + 3) : ℤ) + (20 * 5 ^ (n + 3) : ℤ) - (5 * 3 ^ (n + 3) : ℤ) : ℚ) / 240

end

end A028057.P8380822359520795287

noncomputable section

/-- A028057: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-11x)).

Offset 0, canonical program `A028057.P8380822359520795287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028057 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028057.P8380822359520795287.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028059.P1043984379278065322

`(8^(n+4)-15*7^(n+3)+2*5^(n+4)-3^(n+4))/120`
-/

namespace A028059.P1043984379278065322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 4) : ℤ) - (15 * 7 ^ (n + 3) : ℤ) + (2 * 5 ^ (n + 4) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 120

end

end A028059.P1043984379278065322

noncomputable section

/-- A028059: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-8x)).

Offset 0, canonical program `A028059.P1043984379278065322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028059.P1043984379278065322.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028060.P12974437117252257621

`(9^(n+3)-3*7^(n+3)+3*5^(n+3)-3^(n+3))/48`
-/

namespace A028060.P12974437117252257621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (3 * 7 ^ (n + 3) : ℤ) + (3 * 5 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 48

end

end A028060.P12974437117252257621

noncomputable section

/-- A028060: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-9x)).

Offset 0, canonical program `A028060.P12974437117252257621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028060.P12974437117252257621.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028062.P13222406792845821253

`(11^(n+3)-6*7^(n+3)+8*5^(n+3)-3^(n+4))/192`
-/

namespace A028062.P13222406792845821253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (6 * 7 ^ (n + 3) : ℤ) + (8 * 5 ^ (n + 3) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 192

end

end A028062.P13222406792845821253

noncomputable section

/-- A028062: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-11x)).

Offset 0, canonical program `A028062.P13222406792845821253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028062 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028062.P13222406792845821253.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028064.P11888194564065538857

`(5*9^(n+3)-8^(n+4)+5^(n+4)-2*3^(n+3))/120`
-/

namespace A028064.P11888194564065538857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ (n + 3) : ℤ) - (8 ^ (n + 4) : ℤ) + (5 ^ (n + 4) : ℤ) - (2 * 3 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A028064.P11888194564065538857

noncomputable section

/-- A028064: Expansion of 1/((1-3x)(1-5x)(1-8x)(1-9x)).

Offset 0, canonical program `A028064.P11888194564065538857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028064 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028064.P11888194564065538857.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028065.P8386349304357331608

`(3*10^(n+3)-7*8^(n+3)+7*5^(n+3)-3^(n+4))/210`
-/

namespace A028065.P8386349304357331608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 10 ^ (n + 3) : ℤ) - (7 * 8 ^ (n + 3) : ℤ) + (7 * 5 ^ (n + 3) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 210

end

end A028065.P8386349304357331608

noncomputable section

/-- A028065: Expansion of 1/((1-3x)(1-5x)(1-8x)(1-10x)).

Offset 0, canonical program `A028065.P8386349304357331608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028065 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028065.P8386349304357331608.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028066.P5942038051149849148

`(5*11^(n+3)-2*8^(n+4)+4*5^(n+4)-3^(n+5))/720`
-/

namespace A028066.P5942038051149849148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 11 ^ (n + 3) : ℤ) - (2 * 8 ^ (n + 4) : ℤ) + (4 * 5 ^ (n + 4) : ℤ) - (3 ^ (n + 5) : ℤ) : ℚ) / 720

end

end A028066.P5942038051149849148

noncomputable section

/-- A028066: Expansion of 1/((1-3x)(1-5x)(1-8x)(1-11x)).

Offset 0, canonical program `A028066.P5942038051149849148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028066 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028066.P5942038051149849148.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028066.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028069.P14645588829537545698

`(11^(n+3)-2*9^(n+3)+2*5^(n+3)-3^(n+3))/96`
-/

namespace A028069.P14645588829537545698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (2 * 9 ^ (n + 3) : ℤ) + (2 * 5 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 96

end

end A028069.P14645588829537545698

noncomputable section

/-- A028069: Expansion of 1/((1-3x)(1-5x)(1-9x)(1-11x)).

Offset 0, canonical program `A028069.P14645588829537545698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028069.P14645588829537545698.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028074.P14642307180855068707

`(6*8^(n+3)-15*7^(n+3)+10*6^(n+3)-3^(n+3))/60`
-/

namespace A028074.P14642307180855068707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 8 ^ (n + 3) : ℤ) - (15 * 7 ^ (n + 3) : ℤ) + (10 * 6 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 60

end

end A028074.P14642307180855068707

noncomputable section

/-- A028074: Expansion of 1/((1-3x)(1-6x)(1-7x)(1-8x)).

Offset 0, canonical program `A028074.P14642307180855068707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028074.P14642307180855068707.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028074.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028075.P15754860589753895336

`(2*9^(n+3)-9*7^(n+3)+8*6^(n+3)-3^(n+3))/72`
-/

namespace A028075.P15754860589753895336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 9 ^ (n + 3) : ℤ) - (9 * 7 ^ (n + 3) : ℤ) + (8 * 6 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A028075.P15754860589753895336

noncomputable section

/-- A028075: Expansion of 1/((1-3x)(1-6x)(1-7x)(1-9x)).

Offset 0, canonical program `A028075.P15754860589753895336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028075.P15754860589753895336.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028075.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028076.P5201439453501136997

`(10^(n+3)-7^(n+4)+7*6^(n+3)-3^(n+3))/84`
-/

namespace A028076.P5201439453501136997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (7 ^ (n + 4) : ℤ) + (7 * 6 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 84

end

end A028076.P5201439453501136997

noncomputable section

/-- A028076: Expansion of 1/((1-3x)(1-6x)(1-7x)(1-10x)).

Offset 0, canonical program `A028076.P5201439453501136997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028076.P5201439453501136997.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028079.P17034925631279124755

`(5*9^(n+3)-9*8^(n+3)+5*6^(n+3)-3^(n+3))/90`
-/

namespace A028079.P17034925631279124755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ (n + 3) : ℤ) - (9 * 8 ^ (n + 3) : ℤ) + (5 * 6 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 90

end

end A028079.P17034925631279124755

noncomputable section

/-- A028079: Expansion of 1/((1-3x)(1-6x)(1-8x)(1-9x)).

Offset 0, canonical program `A028079.P17034925631279124755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028079.P17034925631279124755.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028081.P3928408445716120454

`(11^(n+3)-4*8^(n+3)+4*6^(n+3)-3^(n+3))/120`
-/

namespace A028081.P3928408445716120454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (4 * 8 ^ (n + 3) : ℤ) + (4 * 6 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A028081.P3928408445716120454

noncomputable section

/-- A028081: Expansion of 1/((1-3x)(1-6x)(1-8x)(1-11x)).

Offset 0, canonical program `A028081.P3928408445716120454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028081.P3928408445716120454.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028085.P4564347766142793042

`(12^(n+3)-3*9^(n+3)+3*6^(n+3)-3^(n+3))/162`
-/

namespace A028085.P4564347766142793042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (3 * 9 ^ (n + 3) : ℤ) + (3 * 6 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 162

end

end A028085.P4564347766142793042

noncomputable section

/-- A028085: Expansion of 1/((1-3x)(1-6x)(1-9x)(1-12x)).

Offset 0, canonical program `A028085.P4564347766142793042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028085.P4564347766142793042.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028089.P7234174416746759796

`(10*9^(n+3)-24*8^(n+3)+15*7^(n+3)-3^(n+3))/120`
-/

namespace A028089.P7234174416746759796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 9 ^ (n + 3) : ℤ) - (24 * 8 ^ (n + 3) : ℤ) + (15 * 7 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A028089.P7234174416746759796

noncomputable section

/-- A028089: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-9x)).

Offset 0, canonical program `A028089.P7234174416746759796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028089.P7234174416746759796.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028090.P10288038321226916636

`(10^(n+4)-42*8^(n+3)+5*7^(n+4)-3^(n+4))/420`
-/

namespace A028090.P10288038321226916636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 4) : ℤ) - (42 * 8 ^ (n + 3) : ℤ) + (5 * 7 ^ (n + 4) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 420

end

end A028090.P10288038321226916636

noncomputable section

/-- A028090: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-10x)).

Offset 0, canonical program `A028090.P10288038321226916636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028090.P10288038321226916636.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028091.P9287121259074471476

`(5*11^(n+3)-32*8^(n+3)+30*7^(n+3)-3^(n+4))/480`
-/

namespace A028091.P9287121259074471476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 11 ^ (n + 3) : ℤ) - (32 * 8 ^ (n + 3) : ℤ) + (30 * 7 ^ (n + 3) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 480

end

end A028091.P9287121259074471476

noncomputable section

/-- A028091: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-11x)).

Offset 0, canonical program `A028091.P9287121259074471476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028091.P9287121259074471476.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028092.P1923259636261706114

`(12^(n+3)-9*8^(n+3)+9*7^(n+3)-3^(n+3))/180`
-/

namespace A028092.P1923259636261706114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (9 * 8 ^ (n + 3) : ℤ) + (9 * 7 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 180

end

end A028092.P1923259636261706114

noncomputable section

/-- A028092: Expansion of 1/((1-3x)(1-7x)(1-8x)(1-12x)).

Offset 0, canonical program `A028092.P1923259636261706114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028092 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028092.P1923259636261706114.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028092.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028093.P9886859239768555841

`(8*10^(n+3)-14*9^(n+3)+7^(n+4)-3^(n+3))/168`
-/

namespace A028093.P9886859239768555841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 10 ^ (n + 3) : ℤ) - (14 * 9 ^ (n + 3) : ℤ) + (7 ^ (n + 4) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 168

end

end A028093.P9886859239768555841

noncomputable section

/-- A028093: Expansion of 1/((1-3x)(1-7x)(1-9x)(1-10x)).

Offset 0, canonical program `A028093.P9886859239768555841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028093.P9886859239768555841.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028094.P2023324370129026564

`(3*11^(n+3)-8*9^(n+3)+6*7^(n+3)-3^(n+3))/192`
-/

namespace A028094.P2023324370129026564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 3) : ℤ) - (8 * 9 ^ (n + 3) : ℤ) + (6 * 7 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 192

end

end A028094.P2023324370129026564

noncomputable section

/-- A028094: Expansion of 1/((1-3x)(1-7x)(1-9x)(1-11x)).

Offset 0, canonical program `A028094.P2023324370129026564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028094 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028094.P2023324370129026564.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028096.P11721842921896235933

`(21*11^(n+3)-32*10^(n+3)+2*7^(n+4)-3^(n+4))/672`
-/

namespace A028096.P11721842921896235933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 11 ^ (n + 3) : ℤ) - (32 * 10 ^ (n + 3) : ℤ) + (2 * 7 ^ (n + 4) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 672

end

end A028096.P11721842921896235933

noncomputable section

/-- A028096: Expansion of 1/((1-3x)(1-7x)(1-10x)(1-11x)).

Offset 0, canonical program `A028096.P11721842921896235933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028096 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028096.P11721842921896235933.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028096.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028099.P1391782388765886958

`(15*10^(n+3)-35*9^(n+3)+21*8^(n+3)-3^(n+3))/210`
-/

namespace A028099.P1391782388765886958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 * 10 ^ (n + 3) : ℤ) - (35 * 9 ^ (n + 3) : ℤ) + (21 * 8 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 210

end

end A028099.P1391782388765886958

noncomputable section

/-- A028099: Expansion of 1/((1 - 3*x)*(1 - 8*x)*(1 - 9*x)*(1 - 10*x)).

Offset 0, canonical program `A028099.P1391782388765886958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028099.P1391782388765886958.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028100.P5347037158339530249

`(5*11^(n+3)-20*9^(n+3)+2*8^(n+4)-3^(n+3))/240`
-/

namespace A028100.P5347037158339530249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 11 ^ (n + 3) : ℤ) - (20 * 9 ^ (n + 3) : ℤ) + (2 * 8 ^ (n + 4) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 240

end

end A028100.P5347037158339530249

noncomputable section

/-- A028100: Expansion of 1/((1-3x)(1-8x)(1-9x)(1-11x)).

Offset 0, canonical program `A028100.P5347037158339530249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028100.P5347037158339530249.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028102.P11269974999195866855

`(35*11^(n+3)-6*10^(n+4)+28*8^(n+3)-3^(n+4))/840`
-/

namespace A028102.P11269974999195866855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((35 * 11 ^ (n + 3) : ℤ) - (6 * 10 ^ (n + 4) : ℤ) + (28 * 8 ^ (n + 3) : ℤ) - (3 ^ (n + 4) : ℤ) : ℚ) / 840

end

end A028102.P11269974999195866855

noncomputable section

/-- A028102: Expansion of 1/((1-3x)(1-8x)(1-10x)(1-11x)).

Offset 0, canonical program `A028102.P11269974999195866855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028102.P11269974999195866855.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028104.P18052047414520096132

`(10*12^(n+3)-15*11^(n+3)+6*8^(n+3)-3^(n+3))/360`
-/

namespace A028104.P18052047414520096132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 12 ^ (n + 3) : ℤ) - (15 * 11 ^ (n + 3) : ℤ) + (6 * 8 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 360

end

end A028104.P18052047414520096132

noncomputable section

/-- A028104: Expansion of 1/((1-3x)(1-8x)(1-11x)(1-12x)).

Offset 0, canonical program `A028104.P18052047414520096132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028104 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028104.P18052047414520096132.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028105.P12333016546658172050

`(21*11^(n+3)-48*10^(n+3)+28*9^(n+3)-3^(n+3))/336`
-/

namespace A028105.P12333016546658172050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 11 ^ (n + 3) : ℤ) - (48 * 10 ^ (n + 3) : ℤ) + (28 * 9 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 336

end

end A028105.P12333016546658172050

noncomputable section

/-- A028105: Expansion of 1/((1-3x)(1-9x)(1-10x)(1-11x)).

Offset 0, canonical program `A028105.P12333016546658172050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028105.P12333016546658172050.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028106.P16878288037499977813

`(7*12^(n+3)-27*10^(n+3)+21*9^(n+3)-3^(n+3))/378`
-/

namespace A028106.P16878288037499977813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 12 ^ (n + 3) : ℤ) - (27 * 10 ^ (n + 3) : ℤ) + (21 * 9 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 378

end

end A028106.P16878288037499977813

noncomputable section

/-- A028106: Expansion of 1/((1-3x)(1-9x)(1-10x)(1-12x)).

Offset 0, canonical program `A028106.P16878288037499977813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028106.P16878288037499977813.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028107.P6062221600691721788

`(16*12^(n+3)-27*11^(n+3)+12*9^(n+3)-3^(n+3))/432`
-/

namespace A028107.P6062221600691721788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * 12 ^ (n + 3) : ℤ) - (27 * 11 ^ (n + 3) : ℤ) + (12 * 9 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 432

end

end A028107.P6062221600691721788

noncomputable section

/-- A028107: Expansion of 1/((1-3x)(1-9x)(1-11x)(1-12x)).

Offset 0, canonical program `A028107.P6062221600691721788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028107 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028107.P6062221600691721788.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028108.P12142508768766585921

`(28*12^(n+3)-63*11^(n+3)+36*10^(n+3)-3^(n+3))/504`
-/

namespace A028108.P12142508768766585921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((28 * 12 ^ (n + 3) : ℤ) - (63 * 11 ^ (n + 3) : ℤ) + (36 * 10 ^ (n + 3) : ℤ) - (3 ^ (n + 3) : ℤ) : ℚ) / 504

end

end A028108.P12142508768766585921

noncomputable section

/-- A028108: Expansion of 1/((1-3x)(1-10x)(1-11x)(1-12x)).

Offset 0, canonical program `A028108.P12142508768766585921`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028108 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028108.P12142508768766585921.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028110.P12893175595033221456

`(8^(n+3)-6^(n+4)+8*5^(n+3)-3*4^(n+3))/24`
-/

namespace A028110.P12893175595033221456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 3) : ℤ) - (6 ^ (n + 4) : ℤ) + (8 * 5 ^ (n + 3) : ℤ) - (3 * 4 ^ (n + 3) : ℤ) : ℚ) / 24

end

end A028110.P12893175595033221456

noncomputable section

/-- A028110: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-8x)).

Offset 0, canonical program `A028110.P12893175595033221456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028110.P12893175595033221456.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028111.P16915677565496497178

`(9^(n+3)-10*6^(n+3)+3*5^(n+4)-6*4^(n+3))/60`
-/

namespace A028111.P16915677565496497178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (10 * 6 ^ (n + 3) : ℤ) + (3 * 5 ^ (n + 4) : ℤ) - (6 * 4 ^ (n + 3) : ℤ) : ℚ) / 60

end

end A028111.P16915677565496497178

noncomputable section

/-- A028111: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-9x)).

Offset 0, canonical program `A028111.P16915677565496497178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028111.P16915677565496497178.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028112.P4928885988340277800

`(10^(n+3)-15*6^(n+3)+24*5^(n+3)-10*4^(n+3))/120`
-/

namespace A028112.P4928885988340277800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (15 * 6 ^ (n + 3) : ℤ) + (24 * 5 ^ (n + 3) : ℤ) - (10 * 4 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A028112.P4928885988340277800

noncomputable section

/-- A028112: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-10x)).

Offset 0, canonical program `A028112.P4928885988340277800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028112 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028112.P4928885988340277800.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028113.P122094551861578072

`(11^(n+3)-21*6^(n+3)+7*5^(n+4)-15*4^(n+3))/210`
-/

namespace A028113.P122094551861578072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (21 * 6 ^ (n + 3) : ℤ) + (7 * 5 ^ (n + 4) : ℤ) - (15 * 4 ^ (n + 3) : ℤ) : ℚ) / 210

end

end A028113.P122094551861578072

noncomputable section

/-- A028113: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-11x)).

Offset 0, canonical program `A028113.P122094551861578072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028113.P122094551861578072.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028114.P8695699289983412909

`(12^(n+3)-28*6^(n+3)+48*5^(n+3)-21*4^(n+3))/336`
-/

namespace A028114.P8695699289983412909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (28 * 6 ^ (n + 3) : ℤ) + (48 * 5 ^ (n + 3) : ℤ) - (21 * 4 ^ (n + 3) : ℤ) : ℚ) / 336

end

end A028114.P8695699289983412909

noncomputable section

/-- A028114: Expansion of 1/((1-4x)(1-5x)(1-6x)(1-12x)).

Offset 0, canonical program `A028114.P8695699289983412909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028114.P8695699289983412909.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028115.P2225354539681697345

`(8^(n+3)-2*7^(n+3)+2*5^(n+3)-4^(n+3))/12`
-/

namespace A028115.P2225354539681697345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 3) : ℤ) - (2 * 7 ^ (n + 3) : ℤ) + (2 * 5 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 12

end

end A028115.P2225354539681697345

noncomputable section

/-- A028115: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-8x)).

Offset 0, canonical program `A028115.P2225354539681697345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028115.P2225354539681697345.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028117.P4742836676513773400

`(10^(n+3)-5*7^(n+3)+9*5^(n+3)-5*4^(n+3))/90`
-/

namespace A028117.P4742836676513773400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (5 * 7 ^ (n + 3) : ℤ) + (9 * 5 ^ (n + 3) : ℤ) - (5 * 4 ^ (n + 3) : ℤ) : ℚ) / 90

end

end A028117.P4742836676513773400

noncomputable section

/-- A028117: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-10x)).

Offset 0, canonical program `A028117.P4742836676513773400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028117.P4742836676513773400.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028118.P15457418953967805429

`(11^(n+3)-7^(n+4)+14*5^(n+3)-8*4^(n+3))/168`
-/

namespace A028118.P15457418953967805429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (7 ^ (n + 4) : ℤ) + (14 * 5 ^ (n + 3) : ℤ) - (8 * 4 ^ (n + 3) : ℤ) : ℚ) / 168

end

end A028118.P15457418953967805429

noncomputable section

/-- A028118: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-11x)).

Offset 0, canonical program `A028118.P15457418953967805429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028118.P15457418953967805429.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028119.P9891222467340400343

`19*a(n-1)-84*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=28`
-/

namespace A028119.P9891222467340400343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  19 * a (n - 1) - 84 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028119.P9891222467340400343

noncomputable section

/-- A028119: Expansion of 1/((1-4x)(1-5x)(1-7x)(1-12x)).

Offset 0, canonical program `A028119.P9891222467340400343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028119 (n : ℕ) : ℤ :=
  A028119.P9891222467340400343.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028120.P12990248173837776729

`17*a(n-1)-72*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=26`
-/

namespace A028120.P12990248173837776729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028120.P12990248173837776729

noncomputable section

/-- A028120: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-9x)).

Offset 0, canonical program `A028120.P12990248173837776729`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028120 (n : ℕ) : ℤ :=
  A028120.P12990248173837776729.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028121.P10038995587172898732

`18*a(n-1)-80*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=27`
-/

namespace A028121.P10038995587172898732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028121.P10038995587172898732

noncomputable section

/-- A028121: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-10x)).

Offset 0, canonical program `A028121.P10038995587172898732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028121 (n : ℕ) : ℤ :=
  A028121.P10038995587172898732.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028122.P13161302490456340507

`19*a(n-1)-88*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=28`
-/

namespace A028122.P13161302490456340507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028122.P13161302490456340507

noncomputable section

/-- A028122: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-11x)).

Offset 0, canonical program `A028122.P13161302490456340507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028122 (n : ℕ) : ℤ :=
  A028122.P13161302490456340507.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028123.P2735845225732327976

`20*a(n-1)-96*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=29`
-/

namespace A028123.P2735845225732327976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  20 * a (n - 1) - 96 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028123.P2735845225732327976

noncomputable section

/-- A028123: Expansion of 1/((1-4x)(1-5x)(1-8x)(1-12x)).

Offset 0, canonical program `A028123.P2735845225732327976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028123 (n : ℕ) : ℤ :=
  A028123.P2735845225732327976.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028124.P13604593609229359715

`19*a(n-1)-90*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=28`
-/

namespace A028124.P13604593609229359715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028124.P13604593609229359715

noncomputable section

/-- A028124: Expansion of 1/((1-4x)(1-5x)(1-9x)(1-10x)).

Offset 0, canonical program `A028124.P13604593609229359715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028124 (n : ℕ) : ℤ :=
  A028124.P13604593609229359715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028125.P18353353096466902462

`20*a(n-1)-99*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=29`
-/

namespace A028125.P18353353096466902462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028125.P18353353096466902462

noncomputable section

/-- A028125: Expansion of 1/((1-4x)(1-5x)(1-9x)(1-11x)).

Offset 0, canonical program `A028125.P18353353096466902462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028125 (n : ℕ) : ℤ :=
  A028125.P18353353096466902462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028126.P5384623786314200931

`21*a(n-1)-108*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=30`
-/

namespace A028126.P5384623786314200931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028126.P5384623786314200931

noncomputable section

/-- A028126: Expansion of 1/((1-4x)(1-5x)(1-9x)(1-12x)).

Offset 0, canonical program `A028126.P5384623786314200931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028126 (n : ℕ) : ℤ :=
  A028126.P5384623786314200931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028127.P2482063176981550722

`21*a(n-1)-110*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=30`
-/

namespace A028127.P2482063176981550722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028127.P2482063176981550722

noncomputable section

/-- A028127: Expansion of 1/((1-4x)(1-5x)(1-10x)(1-11x)).

Offset 0, canonical program `A028127.P2482063176981550722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028127 (n : ℕ) : ℤ :=
  A028127.P2482063176981550722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028128.P5884926791331286685

`22*a(n-1)-120*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=31`
-/

namespace A028128.P5884926791331286685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028128.P5884926791331286685

noncomputable section

/-- A028128: Expansion of 1/((1-4x)(1-5x)(1-10x)(1-12x)).

Offset 0, canonical program `A028128.P5884926791331286685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028128 (n : ℕ) : ℤ :=
  A028128.P5884926791331286685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028129.P5882279996072267250

`23*a(n-1)-132*a(n-2)+5^(n+1)-4^(n+1)` with `a(0)=1, a(1)=32`
-/

namespace A028129.P5882279996072267250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

end

end A028129.P5882279996072267250

noncomputable section

/-- A028129: Expansion of 1/((1-4x)(1-5x)(1-11x)(1-12x)).

Offset 0, canonical program `A028129.P5882279996072267250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028129 (n : ℕ) : ℤ :=
  A028129.P5882279996072267250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028130.P606229496623466269

`15*a(n-1)-56*a(n-2)-2*4^n+3*6^n` with `a(0)=1, a(1)=25`
-/

namespace A028130.P606229496623466269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  15 * a (n - 1) - 56 * a (n - 2) - (2 * 4 ^ n : ℤ) + (3 * 6 ^ n : ℤ)

end

end A028130.P606229496623466269

noncomputable section

/-- A028130: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-8x)).

Offset 0, canonical program `A028130.P606229496623466269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028130 (n : ℕ) : ℤ :=
  A028130.P606229496623466269.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028131.P8883410933783450491

`(9^(n+3)-5*7^(n+3)+5*6^(n+3)-4^(n+3))/30`
-/

namespace A028131.P8883410933783450491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (5 * 7 ^ (n + 3) : ℤ) + (5 * 6 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 30

end

end A028131.P8883410933783450491

noncomputable section

/-- A028131: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-9x)).

Offset 0, canonical program `A028131.P8883410933783450491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028131.P8883410933783450491.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028132.P12135696164699722933

`(10^(n+3)-8*7^(n+3)+9*6^(n+3)-2*4^(n+3))/72`
-/

namespace A028132.P12135696164699722933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (8 * 7 ^ (n + 3) : ℤ) + (9 * 6 ^ (n + 3) : ℤ) - (2 * 4 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A028132.P12135696164699722933

noncomputable section

/-- A028132: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-10x)).

Offset 0, canonical program `A028132.P12135696164699722933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028132 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028132.P12135696164699722933.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028134.P6458629489105547883

`(12^(n+3)-16*7^(n+3)+20*6^(n+3)-5*4^(n+3))/240`
-/

namespace A028134.P6458629489105547883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (16 * 7 ^ (n + 3) : ℤ) + (20 * 6 ^ (n + 3) : ℤ) - (5 * 4 ^ (n + 3) : ℤ) : ℚ) / 240

end

end A028134.P6458629489105547883

noncomputable section

/-- A028134: Expansion of 1/((1-4x)(1-6x)(1-7x)(1-12x)).

Offset 0, canonical program `A028134.P6458629489105547883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028134.P6458629489105547883.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028135.P9598602579900787646

`(6*9^(n+2)-10*8^(n+2)+5*6^(n+2)-4^(n+2))/10`
-/

namespace A028135.P9598602579900787646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 9 ^ (n + 2) : ℤ) - (10 * 8 ^ (n + 2) : ℤ) + (5 * 6 ^ (n + 2) : ℤ) - (4 ^ (n + 2) : ℤ) : ℚ) / 10

end

end A028135.P9598602579900787646

noncomputable section

/-- A028135: Expansion of 1/((1-4x)(1-6x)(1-8x)(1-9x)).

Offset 0, canonical program `A028135.P9598602579900787646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028135.P9598602579900787646.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028138.P1951212680681082061

`9*12^n-2*8^(n+1)+9*6^n-4^n`
-/

namespace A028138.P1951212680681082061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * 12 ^ n : ℤ) - (2 * 8 ^ (n + 1) : ℤ) + (9 * 6 ^ n : ℤ) - (4 ^ n : ℤ)

end

end A028138.P1951212680681082061

noncomputable section

/-- A028138: Expansion of 1/((1-4x)(1-6x)(1-8x)(1-12x)).

Offset 0, canonical program `A028138.P1951212680681082061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028138 (n : ℕ) : ℤ :=
  A028138.P1951212680681082061.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028143.P17639721856656403742

`(108*12^n-125*10^n+27*6^n-4*4^n)/6`
-/

namespace A028143.P17639721856656403742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((108 * 12 ^ n : ℤ) - (125 * 10 ^ n : ℤ) + (27 * 6 ^ n : ℤ) - (4 * 4 ^ n : ℤ) : ℚ) / 6

end

end A028143.P17639721856656403742

noncomputable section

/-- A028143: Expansion of 1/((1-4x)(1-6x)(1-10x)(1-12x)).

Offset 0, canonical program `A028143.P17639721856656403742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028143.P17639721856656403742.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028145.P12315979576003627854

`17*a(n-1)-72*a(n-2)+(7^(n+1)-4^(n+1))/3` with `a(0)=1, a(1)=28`
-/

namespace A028145.P12315979576003627854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 28] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + ((7 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A028145.P12315979576003627854

noncomputable section

/-- A028145: Expansion of 1/((1-4x)(1-7x)(1-8x)(1-9x)).

Offset 0, canonical program `A028145.P12315979576003627854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028145 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028145.P12315979576003627854.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028146.P6211314778944352689

`(2*10^(n+3)-9*8^(n+3)+8*7^(n+3)-4^(n+3))/72`
-/

namespace A028146.P6211314778944352689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 10 ^ (n + 3) : ℤ) - (9 * 8 ^ (n + 3) : ℤ) + (8 * 7 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A028146.P6211314778944352689

noncomputable section

/-- A028146: Expansion of 1/((1-4x)(1-7x)(1-8x)(1-10x)).

Offset 0, canonical program `A028146.P6211314778944352689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028146 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028146.P6211314778944352689.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028147.P9431957313694385678

`(11^(n+3)-7*8^(n+3)+7^(n+4)-4^(n+3))/84`
-/

namespace A028147.P9431957313694385678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (7 * 8 ^ (n + 3) : ℤ) + (7 ^ (n + 4) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 84

end

end A028147.P9431957313694385678

noncomputable section

/-- A028147: Expansion of 1/((1-4x)(1-7x)(1-8x)(1-11x)).

Offset 0, canonical program `A028147.P9431957313694385678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028147.P9431957313694385678.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028149.P6137959313321250524

`(5*10^(n+3)-9^(n+4)+5*7^(n+3)-4^(n+3))/90`
-/

namespace A028149.P6137959313321250524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ (n + 3) : ℤ) - (9 ^ (n + 4) : ℤ) + (5 * 7 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 90

end

end A028149.P6137959313321250524

noncomputable section

/-- A028149: Expansion of 1/((1-4x)(1-7x)(1-9x)(1-10x)).

Offset 0, canonical program `A028149.P6137959313321250524`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028149 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028149.P6137959313321250524.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028151.P365319427221959354

`(12^(n+3)-4*9^(n+3)+4*7^(n+3)-4^(n+3))/120`
-/

namespace A028151.P365319427221959354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (4 * 9 ^ (n + 3) : ℤ) + (4 * 7 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A028151.P365319427221959354

noncomputable section

/-- A028151: Expansion of 1/((1-4x)(1-7x)(1-9x)(1-12x)).

Offset 0, canonical program `A028151.P365319427221959354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028151.P365319427221959354.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028152.P1549497584319431662

`(9*11^(n+3)-14*10^(n+3)+7^(n+4)-2*4^(n+3))/252`
-/

namespace A028152.P1549497584319431662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 11 ^ (n + 3) : ℤ) - (14 * 10 ^ (n + 3) : ℤ) + (7 ^ (n + 4) : ℤ) - (2 * 4 ^ (n + 3) : ℤ) : ℚ) / 252

end

end A028152.P1549497584319431662

noncomputable section

/-- A028152: Expansion of 1/((1-4x)(1-7x)(1-10x)(1-11x)).

Offset 0, canonical program `A028152.P1549497584319431662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028152.P1549497584319431662.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028155.P9623364175313960181

`(10^(n+4)-24*9^(n+3)+15*8^(n+3)-4^(n+3))/120`
-/

namespace A028155.P9623364175313960181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 4) : ℤ) - (24 * 9 ^ (n + 3) : ℤ) + (15 * 8 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A028155.P9623364175313960181

noncomputable section

/-- A028155: Expansion of 1/((1-4x)(1-8x)(1-9x)(1-10x)).

Offset 0, canonical program `A028155.P9623364175313960181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028155 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028155.P9623364175313960181.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028158.P14522080325193195830

`(8*11^(n+3)-14*10^(n+3)+7*8^(n+3)-4^(n+3))/168`
-/

namespace A028158.P14522080325193195830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 11 ^ (n + 3) : ℤ) - (14 * 10 ^ (n + 3) : ℤ) + (7 * 8 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 168

end

end A028158.P14522080325193195830

noncomputable section

/-- A028158: Expansion of 1/((1-4x)(1-8x)(1-10x)(1-11x)).

Offset 0, canonical program `A028158.P14522080325193195830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028158 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028158.P14522080325193195830.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028159.P266652802698845510

`(3*12^(n+3)-8*10^(n+3)+6*8^(n+3)-4^(n+3))/192`
-/

namespace A028159.P266652802698845510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 12 ^ (n + 3) : ℤ) - (8 * 10 ^ (n + 3) : ℤ) + (6 * 8 ^ (n + 3) : ℤ) - (4 ^ (n + 3) : ℤ) : ℚ) / 192

end

end A028159.P266652802698845510

noncomputable section

/-- A028159: Expansion of 1/((1-4*x)*(1-8*x)*(1-10*x)*(1-12*x)).

Offset 0, canonical program `A028159.P266652802698845510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028159.P266652802698845510.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028160.P5454538292376429812

`23*a(n-1)-132*a(n-2)+2^(3*n+1)-4^n` with `a(0)=1, a(1)=35`
-/

namespace A028160.P5454538292376429812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 35] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (2 ^ (3 * n + 1) : ℤ) - (4 ^ n : ℤ)

end

end A028160.P5454538292376429812

noncomputable section

/-- A028160: Expansion of 1/((1-4x)(1-8x)(1-11x)(1-12x)).

Offset 0, canonical program `A028160.P5454538292376429812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028160 (n : ℕ) : ℤ :=
  A028160.P5454538292376429812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028160.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028161.P16074032200473046150

`21*a(n-1)-110*a(n-2)+(9^(n+1)-4^(n+1))/5` with `a(0)=1, a(1)=34`
-/

namespace A028161.P16074032200473046150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 34] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + ((9 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A028161.P16074032200473046150

noncomputable section

/-- A028161: Expansion of 1/((1-4*x)*(1-9*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A028161.P16074032200473046150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028161.P16074032200473046150.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028162.P11244433733540453938

`22*a(n-1)-120*a(n-2)+(9^(n+1)-4^(n+1))/5` with `a(0)=1, a(1)=35`
-/

namespace A028162.P11244433733540453938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 35] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + ((9 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A028162.P11244433733540453938

noncomputable section

/-- A028162: Expansion of 1/((1-4x)(1-9x)(1-10x)(1-12x)).

Offset 0, canonical program `A028162.P11244433733540453938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028162.P11244433733540453938.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028163.P1760750220502138560

`23*a(n-1)-132*a(n-2)+(9^(n+1)-4^(n+1))/5` with `a(0)=1, a(1)=36`
-/

namespace A028163.P1760750220502138560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 36] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + ((9 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A028163.P1760750220502138560

noncomputable section

/-- A028163: Expansion of 1/((1-4x)(1-9x)(1-11x)(1-12x)).

Offset 0, canonical program `A028163.P1760750220502138560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028163.P1760750220502138560.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028164.P10812680093312296707

`23*a(n-1)-132*a(n-2)+(10^(n+1)-4^(n+1))/6` with `a(0)=1, a(1)=37`
-/

namespace A028164.P10812680093312296707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 37] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + ((10 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 6

end

end A028164.P10812680093312296707

noncomputable section

/-- A028164: Expansion of 1/((1-4x)(1-10x)(1-11x)(1-12x)).

Offset 0, canonical program `A028164.P10812680093312296707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028164 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028164.P10812680093312296707.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028165.P9848545770980890725

`15*a(n-1)-56*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=26`
-/

namespace A028165.P9848545770980890725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  15 * a (n - 1) - 56 * a (n - 2) + (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ)

end

end A028165.P9848545770980890725

noncomputable section

/-- A028165: Expansion of 1/((1-5*x)*(1-6*x)*(1-7*x)*(1-8*x)).

Offset 0, canonical program `A028165.P9848545770980890725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028165 (n : ℕ) : ℤ :=
  A028165.P9848545770980890725.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028166.P1614785683038331922

`16*a(n-1)-63*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=27`
-/

namespace A028166.P1614785683038331922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  16 * a (n - 1) - 63 * a (n - 2) + (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ)

end

end A028166.P1614785683038331922

noncomputable section

/-- A028166: Expansion of 1/((1-5x)(1-6x)(1-7x)(1-9x)).

Offset 0, canonical program `A028166.P1614785683038331922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028166 (n : ℕ) : ℤ :=
  A028166.P1614785683038331922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028167.P264763677203577302

`17*a(n-1)-70*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=28`
-/

namespace A028167.P264763677203577302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  17 * a (n - 1) - 70 * a (n - 2) + (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ)

end

end A028167.P264763677203577302

noncomputable section

/-- A028167: Expansion of 1/((1-5x)(1-6x)(1-7x)(1-10x)).

Offset 0, canonical program `A028167.P264763677203577302`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028167 (n : ℕ) : ℤ :=
  A028167.P264763677203577302.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028167.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028168.P109701627506607601

`18*a(n-1)-77*a(n-2)+6^(n+1)-5^(n+1)` with `a(0)=1, a(1)=29`
-/

namespace A028168.P109701627506607601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  18 * a (n - 1) - 77 * a (n - 2) + (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ)

end

end A028168.P109701627506607601

noncomputable section

/-- A028168: Expansion of 1/((1-5x)(1-6x)(1-7x)(1-11x)).

Offset 0, canonical program `A028168.P109701627506607601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028168 (n : ℕ) : ℤ :=
  A028168.P109701627506607601.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028169.P10920943489971184433

`6^(n+1)-5^(n+1)+19*a(n-1)-84*a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A028169.P10920943489971184433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 19 * a (n - 1) - 84 * a (n - 2)

end

end A028169.P10920943489971184433

noncomputable section

/-- A028169: Expansion of 1/((1-5*x)*(1-6*x)*(1-7*x)*(1-12*x)).

Offset 0, canonical program `A028169.P10920943489971184433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028169 (n : ℕ) : ℤ :=
  A028169.P10920943489971184433.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028170.P15875648695307297809

`(9^(n+3)-2*8^(n+3)+2*6^(n+3)-5^(n+3))/12`
-/

namespace A028170.P15875648695307297809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (2 * 8 ^ (n + 3) : ℤ) + (2 * 6 ^ (n + 3) : ℤ) - (5 ^ (n + 3) : ℤ) : ℚ) / 12

end

end A028170.P15875648695307297809

noncomputable section

/-- A028170: Expansion of 1/((1-5x)(1-6x)(1-8x)(1-9x)).

Offset 0, canonical program `A028170.P15875648695307297809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028170.P15875648695307297809.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028171.P15945381769155415072

`6^(n+1)-5^(n+1)+18*a(n-1)-80*a(n-2)` with `a(0)=1, a(1)=29`
-/

namespace A028171.P15945381769155415072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 18 * a (n - 1) - 80 * a (n - 2)

end

end A028171.P15945381769155415072

noncomputable section

/-- A028171: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)*(1-10*x)).

Offset 0, canonical program `A028171.P15945381769155415072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028171 (n : ℕ) : ℤ :=
  A028171.P15945381769155415072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028172.P2533487496963848231

`6^(n+1)-5^(n+1)+19*a(n-1)-88*a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A028172.P2533487496963848231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 19 * a (n - 1) - 88 * a (n - 2)

end

end A028172.P2533487496963848231

noncomputable section

/-- A028172: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)*(1-11*x)).

Offset 0, canonical program `A028172.P2533487496963848231`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028172 (n : ℕ) : ℤ :=
  A028172.P2533487496963848231.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028173.P6940832907693067162

`6^(n+1)-5^(n+1)+20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=31`
-/

namespace A028173.P6940832907693067162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 20 * a (n - 1) - 96 * a (n - 2)

end

end A028173.P6940832907693067162

noncomputable section

/-- A028173: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)*(1-12*x)).

Offset 0, canonical program `A028173.P6940832907693067162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028173 (n : ℕ) : ℤ :=
  A028173.P6940832907693067162.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028174.P9320658813268607088

`6^(n+1)-5^(n+1)+19*a(n-1)-90*a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A028174.P9320658813268607088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 19 * a (n - 1) - 90 * a (n - 2)

end

end A028174.P9320658813268607088

noncomputable section

/-- A028174: Expansion of 1/((1-5*x)*(1-6*x)*(1-9*x)*(1-10*x)).

Offset 0, canonical program `A028174.P9320658813268607088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028174 (n : ℕ) : ℤ :=
  A028174.P9320658813268607088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028175.P16064367084335486380

`(2*11^(n+3)-5*9^(n+3)+8*6^(n+3)-5^(n+4))/120`
-/

namespace A028175.P16064367084335486380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 11 ^ (n + 3) : ℤ) - (5 * 9 ^ (n + 3) : ℤ) + (8 * 6 ^ (n + 3) : ℤ) - (5 ^ (n + 4) : ℤ) : ℚ) / 120

end

end A028175.P16064367084335486380

noncomputable section

/-- A028175: Expansion of 1/((1-5x)(1-6x)(1-9x)(1-11x)).

Offset 0, canonical program `A028175.P16064367084335486380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028175 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028175.P16064367084335486380.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028176.P17481457850777747027

`6^(n+1)-5^(n+1)+21*a(n-1)-108*a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A028176.P17481457850777747027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 21 * a (n - 1) - 108 * a (n - 2)

end

end A028176.P17481457850777747027

noncomputable section

/-- A028176: Expansion of 1/((1-5*x)*(1-6*x)*(1-9*x)*(1-12*x)).

Offset 0, canonical program `A028176.P17481457850777747027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028176 (n : ℕ) : ℤ :=
  A028176.P17481457850777747027.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028176.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028177.P1998973076957300471

`6^(n+1)-5^(n+1)+21*a(n-1)-110*a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A028177.P1998973076957300471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 21 * a (n - 1) - 110 * a (n - 2)

end

end A028177.P1998973076957300471

noncomputable section

/-- A028177: Expansion of 1/((1-5*x)*(1-6*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A028177.P1998973076957300471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028177 (n : ℕ) : ℤ :=
  A028177.P1998973076957300471.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028179.P10764679583639073578

`6^(n+1)-5^(n+1)+23*a(n-1)-132*a(n-2)` with `a(0)=1, a(1)=34`
-/

namespace A028179.P10764679583639073578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n a =>
  (6 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) + 23 * a (n - 1) - 132 * a (n - 2)

end

end A028179.P10764679583639073578

noncomputable section

/-- A028179: Expansion of 1/((1-5*x)*(1-6*x)*(1-11*x)*(1-12*x)).

Offset 0, canonical program `A028179.P10764679583639073578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028179 (n : ℕ) : ℤ :=
  A028179.P10764679583639073578.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028180.P3818867424606021701

`(7^(n+1)-5^(n+1))/2+17*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=29`
-/

namespace A028180.P3818867424606021701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 29] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 17 * a (n - 1) - 72 * a (n - 2)

end

end A028180.P3818867424606021701

noncomputable section

/-- A028180: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-9*x)).

Offset 0, canonical program `A028180.P3818867424606021701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028180 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028180.P3818867424606021701.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028180.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028181.P10521670038160062120

`(7^(n+1)-5^(n+1))/2+18*a(n-1)-80*a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A028181.P10521670038160062120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 30] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 18 * a (n - 1) - 80 * a (n - 2)

end

end A028181.P10521670038160062120

noncomputable section

/-- A028181: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-10*x)).

Offset 0, canonical program `A028181.P10521670038160062120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028181 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028181.P10521670038160062120.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028182.P5736683234270697353

`(7^(n+1)-5^(n+1))/2+19*a(n-1)-88*a(n-2)` with `a(0)=1, a(1)=31`
-/

namespace A028182.P5736683234270697353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 31] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 19 * a (n - 1) - 88 * a (n - 2)

end

end A028182.P5736683234270697353

noncomputable section

/-- A028182: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-11*x)).

Offset 0, canonical program `A028182.P5736683234270697353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028182 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028182.P5736683234270697353.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028183.P13087217175381346763

`(7^(n+1)-5^(n+1))/2+20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A028183.P13087217175381346763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 32] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 20 * a (n - 1) - 96 * a (n - 2)

end

end A028183.P13087217175381346763

noncomputable section

/-- A028183: Expansion of 1/((1-5*x)*(1-7*x)*(1-8*x)*(1-12*x)).

Offset 0, canonical program `A028183.P13087217175381346763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028183 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028183.P13087217175381346763.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028185.P13775091130431779179

`(7^(n+1)-5^(n+1))/2+20*a(n-1)-99*a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A028185.P13775091130431779179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 32] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 20 * a (n - 1) - 99 * a (n - 2)

end

end A028185.P13775091130431779179

noncomputable section

/-- A028185: Expansion of 1/((1-5*x)*(1-7*x)*(1-9*x)*(1-11*x)).

Offset 0, canonical program `A028185.P13775091130431779179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028185.P13775091130431779179.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028186.P417130861848857928

`(7^(n+1)-5^(n+1))/2+21*a(n-1)-108*a(n-2)` with `a(0)=1, a(1)=33`
-/

namespace A028186.P417130861848857928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 33] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 21 * a (n - 1) - 108 * a (n - 2)

end

end A028186.P417130861848857928

noncomputable section

/-- A028186: Expansion of 1/((1-5*x)*(1-7*x)*(1-9*x)*(1-12*x)).

Offset 0, canonical program `A028186.P417130861848857928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028186.P417130861848857928.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028187.P362190293092192236

`(7^(n+1)-5^(n+1))/2+21*a(n-1)-110*a(n-2)` with `a(0)=1, a(1)=33`
-/

namespace A028187.P362190293092192236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 33] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 21 * a (n - 1) - 110 * a (n - 2)

end

end A028187.P362190293092192236

noncomputable section

/-- A028187: Expansion of 1/((1-5*x)*(1-7*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A028187.P362190293092192236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028187 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028187.P362190293092192236.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028188.P9058867641866898953

`(7^(n+1)-5^(n+1))/2+22*a(n-1)-120*a(n-2)` with `a(0)=1, a(1)=34`
-/

namespace A028188.P9058867641866898953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 34] fun n a =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2 + 22 * a (n - 1) - 120 * a (n - 2)

end

end A028188.P9058867641866898953

noncomputable section

/-- A028188: Expansion of 1/((1-5*x)*(1-7*x)*(1-10*x)*(1-12*x)).

Offset 0, canonical program `A028188.P9058867641866898953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028188 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028188.P9058867641866898953.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028190.P7603972782725480464

`19*a(n-1)-90*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=32`
-/

namespace A028190.P7603972782725480464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 32] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + ((8 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A028190.P7603972782725480464

noncomputable section

/-- A028190: Expansion of 1/((1-5x)(1-8x)(1-9x)(1-10x)).

Offset 0, canonical program `A028190.P7603972782725480464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028190.P7603972782725480464.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028191.P18263927731897952463

`20*a(n-1)-99*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=33`
-/

namespace A028191.P18263927731897952463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 33] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + ((8 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A028191.P18263927731897952463

noncomputable section

/-- A028191: Expansion of 1/((1-5x)(1-8x)(1-9x)(1-11x)).

Offset 0, canonical program `A028191.P18263927731897952463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028191.P18263927731897952463.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028192.P17776363312188535164

`21*a(n-1)-108*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=34`
-/

namespace A028192.P17776363312188535164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 34] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + ((8 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A028192.P17776363312188535164

noncomputable section

/-- A028192: Expansion of 1/((1-5x)(1-8x)(1-9x)(1-12x)).

Offset 0, canonical program `A028192.P17776363312188535164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028192.P17776363312188535164.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028193.P16880149396847578633

`(8^(n+3)+11^(n+3)-18*10^(n+2)-5^(n+2))/18`
-/

namespace A028193.P16880149396847578633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 3) + 11 ^ (n + 3) : ℤ) - (18 * 10 ^ (n + 2) : ℤ) - (5 ^ (n + 2) : ℤ) : ℚ) / 18

end

end A028193.P16880149396847578633

noncomputable section

/-- A028193: Expansion of 1/((1-5x)(1-8x)(1-10x)(1-11x)).

Offset 0, canonical program `A028193.P16880149396847578633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028193 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028193.P16880149396847578633.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028194.P9784221247184380727

`22*a(n-1)-120*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=35`
-/

namespace A028194.P9784221247184380727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 35] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + ((8 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A028194.P9784221247184380727

noncomputable section

/-- A028194: Expansion of 1/((1-5x)(1-8x)(1-10x)(1-12x)).

Offset 0, canonical program `A028194.P9784221247184380727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028194 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028194.P9784221247184380727.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028195.P3857516111405679298

`23*a(n-1)-132*a(n-2)+(8^(n+1)-5^(n+1))/3` with `a(0)=1, a(1)=36`
-/

namespace A028195.P3857516111405679298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 36] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + ((8 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A028195.P3857516111405679298

noncomputable section

/-- A028195: Expansion of 1/((1-5x)(1-8x)(1-11x)(1-12x)).

Offset 0, canonical program `A028195.P3857516111405679298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028195.P3857516111405679298.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028196.P6334453879115977283

`21*a(n-1)-110*a(n-2)+(9^(n+1)-5^(n+1))/4` with `a(0)=1, a(1)=35`
-/

namespace A028196.P6334453879115977283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 35] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + ((9 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A028196.P6334453879115977283

noncomputable section

/-- A028196: Expansion of 1/((1-5x)(1-9x)(1-10x)(1-11x)).

Offset 0, canonical program `A028196.P6334453879115977283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028196.P6334453879115977283.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028197.P2875863422496933748

`22*a(n-1)-120*a(n-2)+(9^(n+1)-5^(n+1))/4` with `a(0)=1, a(1)=36`
-/

namespace A028197.P2875863422496933748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 36] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + ((9 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A028197.P2875863422496933748

noncomputable section

/-- A028197: Expansion of 1/((1-5x)(1-9x)(1-10x)(1-12x)).

Offset 0, canonical program `A028197.P2875863422496933748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028197 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028197.P2875863422496933748.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028198.P15813476277862254169

`23*a(n-1)-132*a(n-2)+(9^(n+1)-5^(n+1))/4` with `a(0)=1, a(1)=37`
-/

namespace A028198.P15813476277862254169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 37] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + ((9 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A028198.P15813476277862254169

noncomputable section

/-- A028198: Expansion of 1/((1-5x)(1-9x)(1-11x)(1-12x)).

Offset 0, canonical program `A028198.P15813476277862254169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028198.P15813476277862254169.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028200.P10250229952896004576

`17*a(n-1)-72*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=30`
-/

namespace A028200.P10250229952896004576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028200.P10250229952896004576

noncomputable section

/-- A028200: Expansion of 1/((1-6x)*(1-7x)*(1-8x)*(1-9x)).

Offset 0, canonical program `A028200.P10250229952896004576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028200 (n : ℕ) : ℤ :=
  A028200.P10250229952896004576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028201.P6715037780524328564

`18*a(n-1)-80*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=31`
-/

namespace A028201.P6715037780524328564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028201.P6715037780524328564

noncomputable section

/-- A028201: Expansion of 1/((1-6x)(1-7x)(1-8x)(1-10x)).

Offset 0, canonical program `A028201.P6715037780524328564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028201 (n : ℕ) : ℤ :=
  A028201.P6715037780524328564.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028202.P1853257622058926545

`19*a(n-1)-88*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=32`
-/

namespace A028202.P1853257622058926545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028202.P1853257622058926545

noncomputable section

/-- A028202: Expansion of 1/((1-6x)(1-7x)(1-8x)(1-11x)).

Offset 0, canonical program `A028202.P1853257622058926545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028202 (n : ℕ) : ℤ :=
  A028202.P1853257622058926545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028203.P15638977273021326386

`20*a(n-1)-96*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=33`
-/

namespace A028203.P15638977273021326386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 33] fun n a =>
  20 * a (n - 1) - 96 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028203.P15638977273021326386

noncomputable section

/-- A028203: Expansion of 1/((1-6x)(1-7x)(1-8x)(1-12x)).

Offset 0, canonical program `A028203.P15638977273021326386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028203 (n : ℕ) : ℤ :=
  A028203.P15638977273021326386.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028204.P9962387879513996024

`19*a(n-1)-90*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=32`
-/

namespace A028204.P9962387879513996024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028204.P9962387879513996024

noncomputable section

/-- A028204: Expansion of 1/((1-6*x)*(1-7*x)*(1-9*x)*(1-10*x)).

Offset 0, canonical program `A028204.P9962387879513996024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028204 (n : ℕ) : ℤ :=
  A028204.P9962387879513996024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028205.P2371027374753112585

`20*a(n-1)-99*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=33`
-/

namespace A028205.P2371027374753112585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 33] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028205.P2371027374753112585

noncomputable section

/-- A028205: Expansion of 1/((1-6x)(1-7x)(1-9x)(1-11x)).

Offset 0, canonical program `A028205.P2371027374753112585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028205 (n : ℕ) : ℤ :=
  A028205.P2371027374753112585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028206.P13499655734683264982

`21*a(n-1)-108*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=34`
-/

namespace A028206.P13499655734683264982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028206.P13499655734683264982

noncomputable section

/-- A028206: Expansion of 1/((1-6x)(1-7x)(1-9x)(1-12x)).

Offset 0, canonical program `A028206.P13499655734683264982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028206 (n : ℕ) : ℤ :=
  A028206.P13499655734683264982.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028206.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028207.P5497746970747732277

`21*a(n-1)-110*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=34`
-/

namespace A028207.P5497746970747732277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028207.P5497746970747732277

noncomputable section

/-- A028207: Expansion of 1/((1-6x)(1-7x)(1-10x)(1-11x)).

Offset 0, canonical program `A028207.P5497746970747732277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028207 (n : ℕ) : ℤ :=
  A028207.P5497746970747732277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028207.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028208.P10745936121477121858

`22*a(n-1)-120*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=35`
-/

namespace A028208.P10745936121477121858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 35] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028208.P10745936121477121858

noncomputable section

/-- A028208: Expansion of 1/((1-6x)(1-7x)(1-10x)(1-12x)).

Offset 0, canonical program `A028208.P10745936121477121858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028208 (n : ℕ) : ℤ :=
  A028208.P10745936121477121858.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028209.P10017964568648344345

`23*a(n-1)-132*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=36`
-/

namespace A028209.P10017964568648344345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 36] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (7 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ)

end

end A028209.P10017964568648344345

noncomputable section

/-- A028209: Expansion of 1/((1-6x)(1-7x)(1-11x)(1-12x)).

Offset 0, canonical program `A028209.P10017964568648344345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028209 (n : ℕ) : ℤ :=
  A028209.P10017964568648344345.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028210.P1955904657294203338

`19*a(n-1)-90*a(n-2)+4*8^n-3*6^n` with `a(0)=1, a(1)=33`
-/

namespace A028210.P1955904657294203338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 33] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (4 * 8 ^ n : ℤ) - (3 * 6 ^ n : ℤ)

end

end A028210.P1955904657294203338

noncomputable section

/-- A028210: Expansion of 1/((1-6x)(1-8x)(1-9x)(1-10x)).

Offset 0, canonical program `A028210.P1955904657294203338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028210 (n : ℕ) : ℤ :=
  A028210.P1955904657294203338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028212.P546716606322109463

`64*8^n-81*9^n+24*12^n-6*6^n`
-/

namespace A028212.P546716606322109463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * 8 ^ n : ℤ) - (81 * 9 ^ n : ℤ) + (24 * 12 ^ n : ℤ) - (6 * 6 ^ n : ℤ)

end

end A028212.P546716606322109463

noncomputable section

/-- A028212: Expansion of 1/((1-6x)(1-8x)(1-9x)(1-12x)).

Offset 0, canonical program `A028212.P546716606322109463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028212 (n : ℕ) : ℤ :=
  A028212.P546716606322109463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028216.P3173743611604398153

`21*a(n-1)-110*a(n-2)+3*9^n-2*6^n` with `a(0)=1, a(1)=36`
-/

namespace A028216.P3173743611604398153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 36] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (3 * 9 ^ n : ℤ) - (2 * 6 ^ n : ℤ)

end

end A028216.P3173743611604398153

noncomputable section

/-- A028216: Expansion of 1/((1-6x)(1-9x)(1-10x)(1-11x)).

Offset 0, canonical program `A028216.P3173743611604398153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028216 (n : ℕ) : ℤ :=
  A028216.P3173743611604398153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028217.P6143185255645896624

`(2*12^(n+3)-9*10^(n+3)+8*9^(n+3)-6^(n+3))/72`
-/

namespace A028217.P6143185255645896624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 12 ^ (n + 3) : ℤ) - (9 * 10 ^ (n + 3) : ℤ) + (8 * 9 ^ (n + 3) : ℤ) - (6 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A028217.P6143185255645896624

noncomputable section

/-- A028217: Expansion of 1/((1-6x)(1-9x)(1-10x)(1-12x)).

Offset 0, canonical program `A028217.P6143185255645896624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028217.P6143185255645896624.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028218.P12727951506277829979

`(5*12^(n+3)-9*11^(n+3)+5*9^(n+3)-6^(n+3))/90`
-/

namespace A028218.P12727951506277829979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 12 ^ (n + 3) : ℤ) - (9 * 11 ^ (n + 3) : ℤ) + (5 * 9 ^ (n + 3) : ℤ) - (6 ^ (n + 3) : ℤ) : ℚ) / 90

end

end A028218.P12727951506277829979

noncomputable section

/-- A028218: Expansion of 1/((1-6x)(1-9x)(1-11x)(1-12x)).

Offset 0, canonical program `A028218.P12727951506277829979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028218 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028218.P12727951506277829979.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028220.P241414457246031243

`(11^(n+3)-6*9^(n+3)+8^(n+4)-3*7^(n+3))/24`
-/

namespace A028220.P241414457246031243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (6 * 9 ^ (n + 3) : ℤ) + (8 ^ (n + 4) : ℤ) - (3 * 7 ^ (n + 3) : ℤ) : ℚ) / 24

end

end A028220.P241414457246031243

noncomputable section

/-- A028220: Expansion of 1/((1-7x)(1-8x)(1-9x)(1-11x)).

Offset 0, canonical program `A028220.P241414457246031243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028220 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028220.P241414457246031243.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028221.P4663181287065023604

`(12^(n+3)-10*9^(n+3)+15*8^(n+3)-6*7^(n+3))/60`
-/

namespace A028221.P4663181287065023604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (10 * 9 ^ (n + 3) : ℤ) + (15 * 8 ^ (n + 3) : ℤ) - (6 * 7 ^ (n + 3) : ℤ) : ℚ) / 60

end

end A028221.P4663181287065023604

noncomputable section

/-- A028221: Expansion of 1/((1-7x)(1-8x)(1-9x)(1-12x)).

Offset 0, canonical program `A028221.P4663181287065023604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028221 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028221.P4663181287065023604.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028222.P13847331302592736575

`(11^(n+3)-2*10^(n+3)+2*8^(n+3)-7^(n+3))/12`
-/

namespace A028222.P13847331302592736575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (2 * 10 ^ (n + 3) : ℤ) + (2 * 8 ^ (n + 3) : ℤ) - (7 ^ (n + 3) : ℤ) : ℚ) / 12

end

end A028222.P13847331302592736575

noncomputable section

/-- A028222: Expansion of 1/((1-7x)(1-8x)(1-10x)(1-11x)).

Offset 0, canonical program `A028222.P13847331302592736575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028222 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028222.P13847331302592736575.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028223.P796540975097859468

`(3*12^(n+3)-10^(n+4)+15*8^(n+3)-8*7^(n+3))/120`
-/

namespace A028223.P796540975097859468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 12 ^ (n + 3) : ℤ) - (10 ^ (n + 4) : ℤ) + (15 * 8 ^ (n + 3) : ℤ) - (8 * 7 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A028223.P796540975097859468

noncomputable section

/-- A028223: Expansion of 1/((1-7x)(1-8x)(1-10x)(1-12x)).

Offset 0, canonical program `A028223.P796540975097859468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028223.P796540975097859468.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028225.P1798751449775405290

`(3*11^(n+3)-8*10^(n+3)+6*9^(n+3)-7^(n+3))/24`
-/

namespace A028225.P1798751449775405290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 3) : ℤ) - (8 * 10 ^ (n + 3) : ℤ) + (6 * 9 ^ (n + 3) : ℤ) - (7 ^ (n + 3) : ℤ) : ℚ) / 24

end

end A028225.P1798751449775405290

noncomputable section

/-- A028225: Expansion of 1/((1-7x)(1-9x)(1-10x)(1-11x)).

Offset 0, canonical program `A028225.P1798751449775405290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028225.P1798751449775405290.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028226.P4739716944814696299

`(12^(n+3)-5*10^(n+3)+5*9^(n+3)-7^(n+3))/30`
-/

namespace A028226.P4739716944814696299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (5 * 10 ^ (n + 3) : ℤ) + (5 * 9 ^ (n + 3) : ℤ) - (7 ^ (n + 3) : ℤ) : ℚ) / 30

end

end A028226.P4739716944814696299

noncomputable section

/-- A028226: Expansion of 1/((1-7x)(1-9x)(1-10x)(1-12x)).

Offset 0, canonical program `A028226.P4739716944814696299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028226.P4739716944814696299.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028228.P16527530796402707161

`23*a(n-1)-132*a(n-2)+(10^(n+1)-7^(n+1))/3` with `a(0)=1, a(1)=40`
-/

namespace A028228.P16527530796402707161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 40] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + ((10 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A028228.P16527530796402707161

noncomputable section

/-- A028228: Expansion of 1/((1-7x)(1-10x)(1-11x)(1-12x)).

Offset 0, canonical program `A028228.P16527530796402707161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028228.P16527530796402707161.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028230.P9524290425764873719

`14*a(n-1)-a(n-2)` with `a(0)=1, a(1)=15`
-/

namespace A028230.P9524290425764873719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  14 * a (n - 1) - a (n - 2)

end

end A028230.P9524290425764873719

noncomputable section

/-- A028230: Bisection of A001353. Indices of square numbers which are also octagonal.

Offset 1, canonical program `A028230.P9524290425764873719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028230 (n : ℕ) : ℤ :=
  A028230.P9524290425764873719.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028231.P16425202620939525785

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=22, a(2)=313`
-/

namespace A028231.P16425202620939525785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22, 313] fun n a =>
  15 * a (n - 1) - 15 * a (n - 2) + a (n - 3)

end

end A028231.P16425202620939525785

noncomputable section

/-- A028231: From hexagons in a circle problem.

Offset 0, canonical program `A028231.P16425202620939525785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028231 (n : ℕ) : ℤ :=
  A028231.P16425202620939525785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028242.P334475472552892041

`n-a(n-1)` with `a(0)=1`
-/

namespace A028242.P334475472552892041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - a (n - 1)

end

end A028242.P334475472552892041

noncomputable section

/-- A028242: Follow n+1 by n. Also (essentially) Molien series of 2-dimensional quaternion group Q_8.

Offset 0, canonical program `A028242.P334475472552892041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028242 (n : ℕ) : ℤ :=
  A028242.P334475472552892041.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028291.P2838173419752259056

`round((n+1)*(n^3+23*n²+173*n+451)/720)`
-/

namespace A028291.P2838173419752259056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n ^ 3 + 23 * n ^ 2 + 173 * n + 451 : ℚ) / 720))

end

end A028291.P2838173419752259056

noncomputable section

/-- A028291: Expansion of 1/((1-x)^2(1-x^2)(1-x^3)(1-x^5)) in powers of x.

Offset 0, canonical program `A028291.P2838173419752259056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028291 (n : ℕ) : ℤ :=
  A028291.P2838173419752259056.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028300.P12207537077427160718

`a(n-1)²+n` with `a(0)=1`
-/

namespace A028300.P12207537077427160718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + n

end

end A028300.P12207537077427160718

noncomputable section

/-- A028300: a(1) = 1; thereafter a(n+1) = a(n)^2 + n.

Offset 1, canonical program `A028300.P12207537077427160718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028300 (n : ℕ) : ℤ :=
  (A028300.P12207537077427160718.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028347.P15904181073632825404

`n*(n+4)`
-/

namespace A028347.P15904181073632825404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 4)

end

end A028347.P15904181073632825404

noncomputable section

/-- A028347: a(n) = n^2 - 4.

Offset 2, canonical program `A028347.P15904181073632825404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028347 (n : ℕ) : ℤ :=
  (A028347.P15904181073632825404.a (n - 2) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028356.P8822174427576505822

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A028356.P8822174427576505822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A028356.P8822174427576505822

noncomputable section

/-- A028356: Simple periodic sequence underlying clock sequence A028354.

Offset 0, canonical program `A028356.P8822174427576505822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028356 (n : ℕ) : ℤ :=
  A028356.P8822174427576505822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028358.P1667053554284301899

`(9+72*n+30*n²+32*cos((n+1)*π/3)-(-1)^n)/24`
-/

namespace A028358.P1667053554284301899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + 72 * n + 30 * n ^ 2 : ℝ) + 32 * Real.cos ((n + 1 : ℝ) * (Real.pi / 3)) - ((-1) ^ n : ℝ)) / 24

end

end A028358.P1667053554284301899

noncomputable section

/-- A028358: Partial sums of A028357.

Offset 0, canonical program `A028358.P1667053554284301899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028358 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028358.P1667053554284301899.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028369.P7949698135834787215

`2^(n-1)*2^2^n`
-/

namespace A028369.P7949698135834787215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ 2 ^ n : ℚ)

end

end A028369.P7949698135834787215

noncomputable section

/-- A028369: a(n) = 2^(2^(n-1) + n - 2).

Offset 1, canonical program `A028369.P7949698135834787215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028369 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028369.P7949698135834787215.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028375.P14206303758100324755

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=9, a(2)=49, a(3)=81, a(4)=121, a(5)=169, a(6)=289, a(7)=361, a(8)=441`
-/

namespace A028375.P14206303758100324755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 49, 81, 121, 169, 289, 361, 441] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8) + a (n - 9)

end

end A028375.P14206303758100324755

noncomputable section

/-- A028375: Squares of (odd numbers not divisible by 5).

Offset 1, canonical program `A028375.P14206303758100324755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028375 (n : ℕ) : ℤ :=
  A028375.P14206303758100324755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028402.P13914117859844792663

`6*a(n-1)-8*a(n-2)` with `a(0)=6, a(1)=20`
-/

namespace A028402.P13914117859844792663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 20] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A028402.P13914117859844792663

noncomputable section

/-- A028402: Number of types of Boolean functions of n variables under a certain group.

Offset 2, canonical program `A028402.P13914117859844792663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028402 (n : ℕ) : ℤ :=
  A028402.P13914117859844792663.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028403.P12072581597189381239

`2^(n+1)*(2^n+1)`
-/

namespace A028403.P12072581597189381239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * (2 ^ n + 1)

end

end A028403.P12072581597189381239

noncomputable section

/-- A028403: Number of types of Boolean functions of n variables under a certain group.

Offset 1, canonical program `A028403.P12072581597189381239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028403 (n : ℕ) : ℤ :=
  (A028403.P12072581597189381239.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028493.P14412996590430151676

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=16, a(1)=12, a(2)=11, a(3)=17`
-/

namespace A028493.P14412996590430151676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 12, 11, 17] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 10 * a (n - 3) - 3 * a (n - 4)

end

end A028493.P14412996590430151676

noncomputable section

/-- A028493: a(0) = 16, a(n+1) = 3a(n) - (6-n)^2.

Offset 0, canonical program `A028493.P14412996590430151676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028493 (n : ℕ) : ℤ :=
  A028493.P14412996590430151676.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028494.P14934978941366402405

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=18, a(3)=25`
-/

namespace A028494.P14934978941366402405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 18, 25] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A028494.P14934978941366402405

noncomputable section

/-- A028494: a(n) = -(1/2)*(n+2)*(n^2 - 6*n - 1).

Offset 0, canonical program `A028494.P14934978941366402405`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028494 (n : ℕ) : ℤ :=
  A028494.P14934978941366402405.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028495.P17317205473415381950

`5*a(n-2)-6*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=10`
-/

namespace A028495.P17317205473415381950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 6, 10] fun n a =>
  5 * a (n - 2) - 6 * a (n - 4) + a (n - 6)

end

end A028495.P17317205473415381950

noncomputable section

/-- A028495: Expansion of g.f. (1-x^2)/(1-x-2*x^2+x^3).

Offset 0, canonical program `A028495.P17317205473415381950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028495 (n : ℕ) : ℤ :=
  A028495.P17317205473415381950.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028552.P1512694048664449388

`(n+3)*n`
-/

namespace A028552.P1512694048664449388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * n

end

end A028552.P1512694048664449388

noncomputable section

/-- A028552: a(n) = n*(n+3).

Offset 0, canonical program `A028552.P1512694048664449388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028552 (n : ℕ) : ℤ :=
  (A028552.P1512694048664449388.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028566.P3379672224422489673

`(n+8)*n`
-/

namespace A028566.P3379672224422489673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) * n

end

end A028566.P3379672224422489673

noncomputable section

/-- A028566: a(n) = n*(n+8).

Offset 0, canonical program `A028566.P3379672224422489673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028566 (n : ℕ) : ℤ :=
  (A028566.P3379672224422489673.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028724.P11795025935540611268

`1/2*floor(n/2)*floor((n-1)/2)*floor((n-2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028724.P11795025935540611268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (⌊(n : ℚ) / 2⌋ : ℚ) * (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℚ) * (⌊((n : ℤ) - 2 : ℚ) / 2⌋ : ℚ)

end

end A028724.P11795025935540611268

noncomputable section

/-- A028724: a(n) = (1/2)*floor(n/2)*floor((n-1)/2)*floor((n-2)/2).

Offset 0, canonical program `A028724.P11795025935540611268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028724 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028724.P11795025935540611268.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028831.P2081911990552926782

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11`
-/

namespace A028831.P2081911990552926782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 11] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4)

end

end A028831.P2081911990552926782

noncomputable section

/-- A028831: Expansion of g.f. (1+2*x+3*x^2)/(1-x-x^2-x^3-x^4).

Offset 0, canonical program `A028831.P2081911990552926782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028831 (n : ℕ) : ℤ :=
  (A028831.P2081911990552926782.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028836.P6494476532856433041

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=10`
-/

namespace A028836.P6494476532856433041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A028836.P6494476532856433041

noncomputable section

/-- A028836: Iterated sum of digits of n is a power of 2.

Offset 1, canonical program `A028836.P6494476532856433041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028836 (n : ℕ) : ℤ :=
  A028836.P6494476532856433041.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028837.P3532176170224365492

`a(n-3)+9` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A028837.P3532176170224365492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  a (n - 3) + 9

end

end A028837.P3532176170224365492

noncomputable section

/-- A028837: Iterated sum of digits of n is a square.

Offset 1, canonical program `A028837.P3532176170224365492`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028837 (n : ℕ) : ℤ :=
  (A028837.P3532176170224365492.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028841.P17713255964003770243

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8, a(5)=10`
-/

namespace A028841.P17713255964003770243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 8, 10] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A028841.P17713255964003770243

noncomputable section

/-- A028841: Iterated sum of digits of n is a Fibonacci number.

Offset 1, canonical program `A028841.P17713255964003770243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028841 (n : ℕ) : ℤ :=
  A028841.P17713255964003770243.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028859.P2844454633362135006

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A028859.P2844454633362135006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2)

end

end A028859.P2844454633362135006

noncomputable section

/-- A028859: a(n+2) = 2*a(n+1) + 2*a(n); a(0) = 1, a(1) = 3.

Offset 0, canonical program `A028859.P2844454633362135006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028859 (n : ℕ) : ℤ :=
  (A028859.P2844454633362135006.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028860.P5485938680263245250

`2*a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=1`
-/

namespace A028860.P5485938680263245250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2)

end

end A028860.P5485938680263245250

noncomputable section

/-- A028860: a(n+2) = 2*a(n+1) + 2*a(n); a(0) = -1, a(1) = 1.

Offset 0, canonical program `A028860.P5485938680263245250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028860 (n : ℕ) : ℤ :=
  A028860.P5485938680263245250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028872.P3627102065561519303

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=13`
-/

namespace A028872.P3627102065561519303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 13] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A028872.P3627102065561519303

noncomputable section

/-- A028872: a(n) = n^2 - 3.

Offset 2, canonical program `A028872.P3627102065561519303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028872 (n : ℕ) : ℤ :=
  A028872.P3627102065561519303.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028895.P13551597639118349483

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=15`
-/

namespace A028895.P13551597639118349483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 15] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A028895.P13551597639118349483

noncomputable section

/-- A028895: 5 times triangular numbers: a(n) = 5*n*(n+1)/2.

Offset 0, canonical program `A028895.P13551597639118349483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028895 (n : ℕ) : ℤ :=
  A028895.P13551597639118349483.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028991.P13392589519348944452

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=9, a(2)=75, a(3)=111, a(4)=261`
-/

namespace A028991.P13392589519348944452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 75, 111, 261] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A028991.P13392589519348944452

noncomputable section

/-- A028991: Odd 9-gonal (or enneagonal) numbers.

Offset 0, canonical program `A028991.P13392589519348944452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028991 (n : ℕ) : ℤ :=
  A028991.P13392589519348944452.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028992.P6741351636171204067

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=24, a(2)=46, a(3)=154, a(4)=204`
-/

namespace A028992.P6741351636171204067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24, 46, 154, 204] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A028992.P6741351636171204067

noncomputable section

/-- A028992: Even 9-gonal (or enneagonal) numbers.

Offset 0, canonical program `A028992.P6741351636171204067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028992 (n : ℕ) : ℤ :=
  A028992.P6741351636171204067.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028993.P16249693597712452027

`(2*n+1)*(8*n+1)`
-/

namespace A028993.P16249693597712452027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (8 * n + 1)

end

end A028993.P16249693597712452027

noncomputable section

/-- A028993: Odd 10-gonal (or decagonal) numbers.

Offset 0, canonical program `A028993.P16249693597712452027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028993 (n : ℕ) : ℤ :=
  (A028993.P16249693597712452027.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028994.P2614720213617424781

`16*n²-6*n`
-/

namespace A028994.P2614720213617424781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A028994.P2614720213617424781

noncomputable section

/-- A028994: Even 10-gonal (or decagonal) numbers.

Offset 0, canonical program `A028994.P2614720213617424781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028994 (n : ℕ) : ℤ :=
  A028994.P2614720213617424781.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029002.P12151412825664143134

`1+floor((2*n^3+42*n²+(255+9*(-1)^n)*n)/576)`
-/

namespace A029002.P12151412825664143134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊((2 * n ^ 3 + 42 * n ^ 2 : ℤ) + (255 + 9 * (-1) ^ n) * (n : ℤ) : ℚ) / 576⌋

end

end A029002.P12151412825664143134

noncomputable section

/-- A029002: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^8)).

Offset 0, canonical program `A029002.P12151412825664143134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029002 (n : ℕ) : ℤ :=
  A029002.P12151412825664143134.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029004.P1012158499936873267

`floor((2*n^3+48*n²+327*n+927+9*(n+1)*(-1)^n)/720)`
-/

namespace A029004.P1012158499936873267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n ^ 3 + 48 * n ^ 2 + 327 * n : ℤ) + (927 + 9 * ((n + 1 : ℤ) * (-1) ^ n)) : ℚ) / 720⌋

end

end A029004.P1012158499936873267

noncomputable section

/-- A029004: Expansion of 1/((1-x)(1-x^2)(1-x^3)(1-x^10)).

Offset 0, canonical program `A029004.P1012158499936873267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029004 (n : ℕ) : ℤ :=
  A029004.P1012158499936873267.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029032.P5921861359942327218

`1+floor((2*n^3+39*n²+228*n)/720)`
-/

namespace A029032.P5921861359942327218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(2 * n ^ 3 + 39 * n ^ 2 + 228 * n : ℚ) / 720⌋

end

end A029032.P5921861359942327218

noncomputable section

/-- A029032: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^5)).

Offset 0, canonical program `A029032.P5921861359942327218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029032 (n : ℕ) : ℤ :=
  A029032.P5921861359942327218.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029547.P13783711769758723897

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=34`
-/

namespace A029547.P13783711769758723897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n a =>
  34 * a (n - 1) - a (n - 2)

end

end A029547.P13783711769758723897

noncomputable section

/-- A029547: Expansion of g.f. 1/(1 - 34*x + x^2).

Offset 0, canonical program `A029547.P13783711769758723897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029547 (n : ℕ) : ℤ :=
  A029547.P13783711769758723897.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029548.P9105531807229221009

`32*a(n-1)-a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A029548.P9105531807229221009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  32 * a (n - 1) - a (n - 2)

end

end A029548.P9105531807229221009

noncomputable section

/-- A029548: Expansion of 1/(1 - 32*x + x^2).

Offset 0, canonical program `A029548.P9105531807229221009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029548 (n : ℕ) : ℤ :=
  A029548.P9105531807229221009.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029578.P13296947064408646033

`floor(n/2)*C(2, n%2)`
-/

namespace A029578.P13296947064408646033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * (Nat.choose 2 (n % 2) : ℤ)

end

end A029578.P13296947064408646033

noncomputable section

/-- A029578: The natural numbers interleaved with the even numbers.

Offset 0, canonical program `A029578.P13296947064408646033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029578 (n : ℕ) : ℤ :=
  A029578.P13296947064408646033.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029579.P18035164306793945485

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A029579.P18035164306793945485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A029579.P18035164306793945485

noncomputable section

/-- A029579: a(2*n) = n+1, a(2*n-1) = 2*n-1.

Offset 0, canonical program `A029579.P18035164306793945485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029579 (n : ℕ) : ℤ :=
  A029579.P18035164306793945485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029697.P11224692558306356816

`40*a(n-1)-144*a(n-2)` with `a(0)=6, a(1)=120`
-/

namespace A029697.P11224692558306356816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 120] fun n a =>
  40 * a (n - 1) - 144 * a (n - 2)

end

end A029697.P11224692558306356816

noncomputable section

/-- A029697: Number of words of length 2n in the 6 transpositions of S[ 4 ] equivalent to the identity.

Offset 1, canonical program `A029697.P11224692558306356816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029697 (n : ℕ) : ℤ :=
  A029697.P11224692558306356816.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029699.P1867875014966050622

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=27, a(3)=120, a(4)=340`
-/

namespace A029699.P1867875014966050622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 27, 120, 340] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A029699.P1867875014966050622

noncomputable section

/-- A029699: Number of words of length 4 in the n(n-1)/2 transpositions of S[ n ] equivalent to the identity.

Offset 1, canonical program `A029699.P1867875014966050622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029699 (n : ℕ) : ℤ :=
  A029699.P1867875014966050622.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029739.P13820620008039963941

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A029739.P13820620008039963941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A029739.P13820620008039963941

noncomputable section

/-- A029739: Numbers that are congruent to {1, 3, 4} mod 6.

Offset 1, canonical program `A029739.P13820620008039963941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029739 (n : ℕ) : ℤ :=
  A029739.P13820620008039963941.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029744.P1115822501332250061

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A029744.P1115822501332250061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 2)

end

end A029744.P1115822501332250061

noncomputable section

/-- A029744: Numbers of the form 2^k or 3*2^k.

Offset 1, canonical program `A029744.P1115822501332250061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029744 (n : ℕ) : ℤ :=
  (A029744.P1115822501332250061.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029747.P10564958797820143106

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A029747.P10564958797820143106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  2 * a (n - 3)

end

end A029747.P10564958797820143106

noncomputable section

/-- A029747: Numbers of the form 2^k times 1, 3 or 5.

Offset 1, canonical program `A029747.P10564958797820143106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029747 (n : ℕ) : ℤ :=
  (A029747.P10564958797820143106.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029748.P11017937729132809984

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=7`
-/

namespace A029748.P11017937729132809984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6, 7] fun n a =>
  2 * a (n - 3)

end

end A029748.P11017937729132809984

noncomputable section

/-- A029748: Numbers of the form 2^k times 1, 3 or 7.

Offset 0, canonical program `A029748.P11017937729132809984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029748 (n : ℕ) : ℤ :=
  (A029748.P11017937729132809984.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029749.P3177627627170957820

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A029749.P3177627627170957820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5, 7] fun n a =>
  2 * a (n - 3)

end

end A029749.P3177627627170957820

noncomputable section

/-- A029749: Numbers of the form 2^k times 1, 5 or 7.

Offset 0, canonical program `A029749.P3177627627170957820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029749 (n : ℕ) : ℤ :=
  (A029749.P3177627627170957820.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029750.P3814528908333376430

`2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A029750.P3814528908333376430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7] fun n a =>
  2 * a (n - 4)

end

end A029750.P3814528908333376430

noncomputable section

/-- A029750: List of numbers of the form 2^k times 1, 3, 5 or 7.

Offset 1, canonical program `A029750.P3814528908333376430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029750 (n : ℕ) : ℤ :=
  (A029750.P3814528908333376430.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029758.P8138977406896934418

`a(n-1)*(a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A029758.P8138977406896934418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (a (n - 1) + 2 * a (n - 2))

end

end A029758.P8138977406896934418

noncomputable section

/-- A029758: Number of AVL trees of height n.

Offset 0, canonical program `A029758.P8138977406896934418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029758 (n : ℕ) : ℤ :=
  (A029758.P8138977406896934418.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029858.P4049020238019730915

`3*a(n-1)+3` with `a(0)=0`
-/

namespace A029858.P4049020238019730915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + 3

end

end A029858.P4049020238019730915

noncomputable section

/-- A029858: a(n) = (3^n - 3)/2.

Offset 1, canonical program `A029858.P4049020238019730915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029858 (n : ℕ) : ℤ :=
  (A029858.P4049020238019730915.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029906.P15630247913455669482

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=0, a(5)=2, a(6)=2, a(7)=4`
-/

namespace A029906.P15630247913455669482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 0, 2, 2, 4] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A029906.P15630247913455669482

noncomputable section

/-- A029906: Zack's sequence (the pattern is evident).

Offset 0, canonical program `A029906.P15630247913455669482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029906 (n : ℕ) : ℤ :=
  A029906.P15630247913455669482.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029925.P17451106736802147785

`floor((18*n+325)/10)`
-/

namespace A029925.P17451106736802147785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 * n + 325 : ℚ) / 10⌋

end

end A029925.P17451106736802147785

noncomputable section

/-- A029925: Convert n from degrees Celsius to nearest integer Fahrenheit.

Offset 0, canonical program `A029925.P17451106736802147785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029925 (n : ℕ) : ℤ :=
  A029925.P17451106736802147785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029926.P4139006071374937498

`round(5*(n-32)/9)`
-/

namespace A029926.P4139006071374937498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * (((n : ℤ) - 32 : ℚ) / 9))

end

end A029926.P4139006071374937498

noncomputable section

/-- A029926: Convert n from degrees Fahrenheit to nearest integer Celsius.

Offset 0, canonical program `A029926.P4139006071374937498`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029926 (n : ℕ) : ℤ :=
  A029926.P4139006071374937498.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030065.P8050957658613910513

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=4, a(6)=3, a(7)=5`
-/

namespace A030065.P8050957658613910513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 4, 3, 5] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A030065.P8050957658613910513

noncomputable section

/-- A030065: a(4n)=n, a(4n+2)=a(4n)+a(4n+4), a(2n+1)=a(2n)+a(2n+2).

Offset 0, canonical program `A030065.P8050957658613910513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030065 (n : ℕ) : ℤ :=
  A030065.P8050957658613910513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030117.P3980921182218091819

`n*((n-1)*(13*n-8)/6-floor(n/2))`
-/

namespace A030117.P3980921182218091819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((13 * n : ℤ) - 8 : ℚ) / 6) - (⌊(n : ℚ) / 2⌋ : ℚ))

end

end A030117.P3980921182218091819

noncomputable section

/-- A030117: Number of triangles a queen can make (starting anywhere) on an n X n board.

Offset 0, canonical program `A030117.P3980921182218091819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030117.P3980921182218091819.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030123.P822239246666980812

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=10, a(4)=14`
-/

namespace A030123.P822239246666980812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 10, 14] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A030123.P822239246666980812

noncomputable section

/-- A030123: Most likely total for a roll of n 6-sided dice, choosing the smallest if there is a choice.

Offset 0, canonical program `A030123.P822239246666980812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030123 (n : ℕ) : ℤ :=
  A030123.P822239246666980812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030179.P12931471110697372176

`floor(n²/4)²`
-/

namespace A030179.P12931471110697372176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 4⌋ ^ 2

end

end A030179.P12931471110697372176

noncomputable section

/-- A030179: Quarter-squares squared: A002620^2.

Offset 0, canonical program `A030179.P12931471110697372176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030179 (n : ℕ) : ℤ :=
  A030179.P12931471110697372176.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030180.P8430814144619639411

`(n^7-n)/42`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030180.P8430814144619639411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 42

end

end A030180.P8430814144619639411

noncomputable section

/-- A030180: a(n) = (n^7 - n)/42.

Offset 0, canonical program `A030180.P8430814144619639411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030180 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030180.P8430814144619639411.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030180.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030191.P204622573558910074

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A030191.P204622573558910074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A030191.P204622573558910074

noncomputable section

/-- A030191: Scaled Chebyshev U-polynomial evaluated at sqrt(5)/2.

Offset 0, canonical program `A030191.P204622573558910074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030191 (n : ℕ) : ℤ :=
  A030191.P204622573558910074.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030221.P14145465776034217075

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A030221.P14145465776034217075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 * a (n - 1) - a (n - 2)

end

end A030221.P14145465776034217075

noncomputable section

/-- A030221: Chebyshev even-indexed U-polynomials evaluated at sqrt(7)/2.

Offset 0, canonical program `A030221.P14145465776034217075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030221 (n : ℕ) : ℤ :=
  A030221.P14145465776034217075.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030236.P9399209184618791052

`3*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=18`
-/

namespace A030236.P9399209184618791052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 18] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 3)

end

end A030236.P9399209184618791052

noncomputable section

/-- A030236: Cycle-path coverings of a family of digraphs.

Offset 0, canonical program `A030236.P9399209184618791052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030236 (n : ℕ) : ℤ :=
  A030236.P9399209184618791052.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030240.P5659930559004348841

`7*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A030240.P5659930559004348841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  7 * a (n - 1) - 7 * a (n - 2)

end

end A030240.P5659930559004348841

noncomputable section

/-- A030240: Scaled Chebyshev U-polynomials evaluated at sqrt(7)/2.

Offset 0, canonical program `A030240.P5659930559004348841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030240 (n : ℕ) : ℤ :=
  A030240.P5659930559004348841.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030267.P5738118166235282641

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=46`
-/

namespace A030267.P5738118166235282641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14, 46] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A030267.P5738118166235282641

noncomputable section

/-- A030267: Compose the natural numbers with themselves, A(x) = B(B(x)) where B(x) = x/(1-x)^2 is the generating function for natural numbers.

Offset 1, canonical program `A030267.P5738118166235282641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030267 (n : ℕ) : ℤ :=
  A030267.P5738118166235282641.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030434.P14513390670445953821

`1/3*(2*n-7)*(2*n²-11*n+18)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030434.P14513390670445953821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (((2 * n : ℤ) - 7) * ((2 * n ^ 2 : ℤ) - (11 * n : ℤ) + 18) : ℚ)

end

end A030434.P14513390670445953821

noncomputable section

/-- A030434: Values of Newton-Gregory forward interpolating polynomial (1/3)*(2*n-7)*(2*n^2-11*n+18).

Offset 0, canonical program `A030434.P14513390670445953821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030434.P14513390670445953821.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030436.P12264755496810791120

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A030436.P12264755496810791120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  4 * a (n - 2) - 2 * a (n - 4)

end

end A030436.P12264755496810791120

noncomputable section

/-- A030436: Expansion of g.f. (1 + x - 2*x^2 - x^3)/(1 - 4*x^2 + 2*x^4).

Offset 0, canonical program `A030436.P12264755496810791120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030436 (n : ℕ) : ℤ :=
  A030436.P12264755496810791120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030439.P6091865569706183357

`4*a(n-2)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A030439.P6091865569706183357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  4 * a (n - 2) - 3 * a (n - 4)

end

end A030439.P6091865569706183357

noncomputable section

/-- A030439: a(n+1) = smallest number not containing any digits of a(n), working in base 3.

Offset 0, canonical program `A030439.P6091865569706183357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030439 (n : ℕ) : ℤ :=
  A030439.P6091865569706183357.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030440.P7028222270296302430

`(n-1)*(2*n-1)*(2*n+3)/3`
-/

namespace A030440.P7028222270296302430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * (((2 * n : ℤ) - 1 : ℚ) * ((2 * n + 3 : ℚ) / 3))

end

end A030440.P7028222270296302430

noncomputable section

/-- A030440: Values of Newton-Gregory forward interpolating polynomial (1/3)*(n-1)*(2*n+3)*(2*n-1).

Offset 0, canonical program `A030440.P7028222270296302430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030440.P7028222270296302430.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030441.P17828383332589417735

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-4, a(1)=-1, a(2)=2, a(3)=13`
-/

namespace A030441.P17828383332589417735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-4, -1, 2, 13] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A030441.P17828383332589417735

noncomputable section

/-- A030441: Values of Newton-Gregory forward interpolating polynomial (1/3)*(2*n - 3)*(2*n^2 - 3*n + 4).

Offset 0, canonical program `A030441.P17828383332589417735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030441 (n : ℕ) : ℤ :=
  A030441.P17828383332589417735.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030442.P12951591978989293136

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=163, a(1)=57, a(2)=16, a(3)=4, a(4)=1`
-/

namespace A030442.P12951591978989293136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [163, 57, 16, 4, 1] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A030442.P12951591978989293136

noncomputable section

/-- A030442: Values of Newton-Gregory forward interpolating polynomial (1/6)*(4*n^4 - 60*n^3 + 347*n^2 - 927*n + 978).

Offset 0, canonical program `A030442.P12951591978989293136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030442 (n : ℕ) : ℤ :=
  A030442.P12951591978989293136.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030450.P8313234223128072855

`(n*a(n-1))²` with `a(0)=1`
-/

namespace A030450.P8313234223128072855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * a (n - 1)) ^ 2

end

end A030450.P8313234223128072855

noncomputable section

/-- A030450: Related to number of elements in the free band (idempotent semigroup) on n generators.

Offset 0, canonical program `A030450.P8313234223128072855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030450 (n : ℕ) : ℤ :=
  (A030450.P8313234223128072855.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030451.P7052687886994460928

`n+1-a(n-1)` with `a(0)=0`
-/

namespace A030451.P7052687886994460928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) - a (n - 1)

end

end A030451.P7052687886994460928

noncomputable section

/-- A030451: a(2*n) = n, a(2*n+1) = n+2.

Offset 0, canonical program `A030451.P7052687886994460928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030451 (n : ℕ) : ℤ :=
  A030451.P7052687886994460928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030452.P8396025091167087183

`15*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=29`
-/

namespace A030452.P8396025091167087183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 13, 29] fun n a =>
  15 * a (n - 2) - a (n - 4)

end

end A030452.P8396025091167087183

noncomputable section

/-- A030452: Markov numbers satisfying region 5 (x=5) of the equation x^2 + y^2 + z^2 = 3xyz.

Offset 1, canonical program `A030452.P8396025091167087183`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030452 (n : ℕ) : ℤ :=
  A030452.P8396025091167087183.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030503.P3855671499214516169

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=13, a(4)=19`
-/

namespace A030503.P3855671499214516169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 8, 13, 19] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A030503.P3855671499214516169

noncomputable section

/-- A030503: Graham-Sloane-type lower bound on the size of a ternary (n,3,3) constant-weight code.

Offset 3, canonical program `A030503.P3855671499214516169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030503 (n : ℕ) : ℤ :=
  A030503.P3855671499214516169.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030517.P2505461465325391589

`4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=52`
-/

namespace A030517.P2505461465325391589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 13, 52] fun n a =>
  4 * a (n - 1) + 10 * a (n - 2) - 20 * a (n - 3) - 25 * a (n - 4)

end

end A030517.P2505461465325391589

noncomputable section

/-- A030517: Number of walks of length n between two vertices on an icosahedron at distance 1.

Offset 1, canonical program `A030517.P2505461465325391589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030517 (n : ℕ) : ℤ :=
  A030517.P2505461465325391589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030518.P8611436451144926389

`4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=52`
-/

namespace A030518.P8611436451144926389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 52] fun n a =>
  4 * a (n - 1) + 10 * a (n - 2) - 20 * a (n - 3) - 25 * a (n - 4)

end

end A030518.P8611436451144926389

noncomputable section

/-- A030518: Number of walks of length n between two vertices on an icosahedron at distance 2.

Offset 1, canonical program `A030518.P8611436451144926389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030518 (n : ℕ) : ℤ :=
  A030518.P8611436451144926389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030533.P16924261281162106547

`(n+1)*(2*n²+4*n+15+9*(-1)^n)/24`
-/

namespace A030533.P16924261281162106547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((2 * n ^ 2 + 4 * n : ℤ) + (15 + 9 * (-1) ^ n) : ℚ) / 24)

end

end A030533.P16924261281162106547

noncomputable section

/-- A030533: Expansion of Molien series for 4-D extraspecial group 2^{1+2*2}.

Offset 0, canonical program `A030533.P16924261281162106547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030533 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030533.P16924261281162106547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030538.P10332797378772005469

`(2^n+2)*(2^n+4)*(4^n+9*2^n+38)/720`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030538.P10332797378772005469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℚ) * ((2 ^ n + 4 : ℚ) * ((4 ^ n + 9 * 2 ^ n + 38 : ℚ) / 720))

end

end A030538.P10332797378772005469

noncomputable section

/-- A030538: a(n) = (2^n+2)*(2^n+4)*(4^n+9*2^n+38)/720.

Offset 0, canonical program `A030538.P10332797378772005469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030538.P10332797378772005469.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030653.P1269016415865213829

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=23, a(2)=60, a(3)=121`
-/

namespace A030653.P1269016415865213829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 23, 60, 121] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A030653.P1269016415865213829

noncomputable section

/-- A030653: n^3*a(n) is the number of circles in complex projective plane tangent to three smooth curves of degree n in general position.

Offset 1, canonical program `A030653.P1269016415865213829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030653 (n : ℕ) : ℤ :=
  A030653.P1269016415865213829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030653.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030815.P2156401424604703095

`floor(exp(14/23)*n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030815.P2156401424604703095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((14 : ℚ) / 23 : ℝ) * (Nat.factorial n : ℝ)⌋

end

end A030815.P2156401424604703095

noncomputable section

/-- A030815: a(n) = floor(exp(14/23) * n!).

Offset 0, canonical program `A030815.P2156401424604703095`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(14/23)*n!)` (program `A030815.P2156401424604703095`, by `A030815.P2156401424604703095.correct`). Lean does not check the parsing of the name. -/
def A030815 (n : ℕ) : ℤ :=
  A030815.P2156401424604703095.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(14/23)*n!)` (program `A030815.P2156401424604703095`, by `A030815.P2156401424604703095.correct`). Lean does not check the parsing of the name. -/
def A030815.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A030870.P14134339447475793038

`floor(exp(8/19)*n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030870.P14134339447475793038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((8 : ℚ) / 19 : ℝ) * (Nat.factorial n : ℝ)⌋

end

end A030870.P14134339447475793038

noncomputable section

/-- A030870: a(n) = floor(exp(8/19)*n!).

Offset 0, canonical program `A030870.P14134339447475793038`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(8/19)*n!)` (program `A030870.P14134339447475793038`, by `A030870.P14134339447475793038.correct`). Lean does not check the parsing of the name. -/
def A030870 (n : ℕ) : ℤ :=
  A030870.P14134339447475793038.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(8/19)*n!)` (program `A030870.P14134339447475793038`, by `A030870.P14134339447475793038.correct`). Lean does not check the parsing of the name. -/
def A030870.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A031138.P14402222758888035602

`10*a(n-1)-a(n-2)+4` with `a(0)=1, a(1)=13`
-/

namespace A031138.P14402222758888035602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n a =>
  10 * a (n - 1) - a (n - 2) + 4

end

end A031138.P14402222758888035602

noncomputable section

/-- A031138: Numbers k such that 1^5 + 2^5 + ... + k^5 is a square.

Offset 1, canonical program `A031138.P14402222758888035602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A031138 (n : ℕ) : ℤ :=
  A031138.P14402222758888035602.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A031138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032085.P11728261101407275475

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A032085.P11728261101407275475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A032085.P11728261101407275475

noncomputable section

/-- A032085: Number of reversible strings with n beads of 2 colors. If more than 1 bead, not palindromic.

Offset 1, canonical program `A032085.P11728261101407275475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032085 (n : ℕ) : ℤ :=
  A032085.P11728261101407275475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032086.P9104185682000459793

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=3, a(1)=3, a(2)=9, a(3)=36`
-/

namespace A032086.P9104185682000459793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 9, 36] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3)

end

end A032086.P9104185682000459793

noncomputable section

/-- A032086: Number of reversible strings with n beads of 3 colors. If more than 1 bead, not palindromic.

Offset 1, canonical program `A032086.P9104185682000459793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032086 (n : ℕ) : ℤ :=
  A032086.P9104185682000459793.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032087.P12927161139422861981

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=4, a(1)=6, a(2)=24, a(3)=120`
-/

namespace A032087.P12927161139422861981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 24, 120] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) - 16 * a (n - 3)

end

end A032087.P12927161139422861981

noncomputable section

/-- A032087: Number of reversible strings with n beads of 4 colors. If more than 1 bead, not palindromic.

Offset 1, canonical program `A032087.P12927161139422861981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032087 (n : ℕ) : ℤ :=
  A032087.P12927161139422861981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032088.P239513853229791925

`5*a(n-1)+5*a(n-2)-25*a(n-3)` with `a(0)=5, a(1)=10, a(2)=50, a(3)=300`
-/

namespace A032088.P239513853229791925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 10, 50, 300] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2) - 25 * a (n - 3)

end

end A032088.P239513853229791925

noncomputable section

/-- A032088: Number of reversible strings with n beads of 5 colors. If more than 1 bead, not palindromic.

Offset 1, canonical program `A032088.P239513853229791925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032088 (n : ℕ) : ℤ :=
  A032088.P239513853229791925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032120.P14967370757640857961

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A032120.P14967370757640857961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3)

end

end A032120.P14967370757640857961

noncomputable section

/-- A032120: Number of reversible strings with n beads of 3 colors.

Offset 0, canonical program `A032120.P14967370757640857961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032120 (n : ℕ) : ℤ :=
  A032120.P14967370757640857961.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032121.P390107000383717118

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A032121.P390107000383717118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) - 16 * a (n - 3)

end

end A032121.P390107000383717118

noncomputable section

/-- A032121: Number of reversible strings with n beads of 4 colors.

Offset 0, canonical program `A032121.P390107000383717118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032121 (n : ℕ) : ℤ :=
  A032121.P390107000383717118.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032122.P3452693506967452720

`5*a(n-1)+5*a(n-2)-25*a(n-3)` with `a(0)=1, a(1)=5, a(2)=15`
-/

namespace A032122.P3452693506967452720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 15] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2) - 25 * a (n - 3)

end

end A032122.P3452693506967452720

noncomputable section

/-- A032122: Number of reversible strings with n beads of 5 colors.

Offset 0, canonical program `A032122.P3452693506967452720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032122 (n : ℕ) : ℤ :=
  A032122.P3452693506967452720.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032124.P13365627608986702633

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=2, a(1)=5, a(2)=12`
-/

namespace A032124.P13365627608986702633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3)

end

end A032124.P13365627608986702633

noncomputable section

/-- A032124: "BIK" (reversible, indistinct, unlabeled) transform of 2,2,2,2...

Offset 1, canonical program `A032124.P13365627608986702633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032124 (n : ℕ) : ℤ :=
  A032124.P13365627608986702633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032125.P17237799082748427411

`6*a(n-1)-8*a(n-2)` with `a(0)=3, a(1)=9`
-/

namespace A032125.P17237799082748427411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A032125.P17237799082748427411

noncomputable section

/-- A032125: "BIK" (reversible, indistinct, unlabeled) transform of 3,3,3,3...

Offset 1, canonical program `A032125.P17237799082748427411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032125 (n : ℕ) : ℤ :=
  A032125.P17237799082748427411.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032438.P7724915198550177205

`floor(n/2)*ceil(3*n/2)`
-/

namespace A032438.P7724915198550177205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * ⌈3 * ((n : ℚ) / 2)⌉

end

end A032438.P7724915198550177205

noncomputable section

/-- A032438: a(n) = n^2 - floor((n+1)/2)^2.

Offset 0, canonical program `A032438.P7724915198550177205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032438 (n : ℕ) : ℤ :=
  A032438.P7724915198550177205.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032515.P13698984104583103540

`a(n-1)+floor(n^(2/5))` with `a(0)=0`
-/

namespace A032515.P13698984104583103540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℝ) ^ ((2 : ℚ) / 5 : ℝ)⌋

end

end A032515.P13698984104583103540

noncomputable section

/-- A032515: Sum of the integer part of 5/2-th roots of integers less than or equal to n.

Offset 0, canonical program `A032515.P13698984104583103540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032515 (n : ℕ) : ℤ :=
  A032515.P13698984104583103540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032615.P7004375319683963035

`floor(n/π)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032615.P7004375319683963035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.pi⌋

end

end A032615.P7004375319683963035

noncomputable section

/-- A032615: a(n) = floor(n/Pi).

Offset 0, canonical program `A032615.P7004375319683963035`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/π)` (program `A032615.P7004375319683963035`, by `A032615.P7004375319683963035.correct`). Lean does not check the parsing of the name. -/
def A032615 (n : ℕ) : ℤ :=
  A032615.P7004375319683963035.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/π)` (program `A032615.P7004375319683963035`, by `A032615.P7004375319683963035.correct`). Lean does not check the parsing of the name. -/
def A032615.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032633.P11643489080820217111

`floor(n^3/π)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032633.P11643489080820217111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℝ) / Real.pi⌋

end

end A032633.P11643489080820217111

noncomputable section

/-- A032633: a(n) = floor(n^3 / Pi).

Offset 0, canonical program `A032633.P11643489080820217111`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/π)` (program `A032633.P11643489080820217111`, by `A032633.P11643489080820217111.correct`). Lean does not check the parsing of the name. -/
def A032633 (n : ℕ) : ℤ :=
  A032633.P11643489080820217111.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/π)` (program `A032633.P11643489080820217111`, by `A032633.P11643489080820217111.correct`). Lean does not check the parsing of the name. -/
def A032633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032634.P6588867285997603959

`floor(n/e)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032634.P6588867285997603959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.exp 1⌋

end

end A032634.P6588867285997603959

noncomputable section

/-- A032634: a(n) = floor(n/e).

Offset 0, canonical program `A032634.P6588867285997603959`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/e)` (program `A032634.P6588867285997603959`, by `A032634.P6588867285997603959.correct`). Lean does not check the parsing of the name. -/
def A032634 (n : ℕ) : ℤ :=
  A032634.P6588867285997603959.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/e)` (program `A032634.P6588867285997603959`, by `A032634.P6588867285997603959.correct`). Lean does not check the parsing of the name. -/
def A032634.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032635.P11053475391949000795

`floor(n²/e)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032635.P11053475391949000795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / Real.exp 1⌋

end

end A032635.P11053475391949000795

noncomputable section

/-- A032635: a(n) = floor(n^2 / e).

Offset 0, canonical program `A032635.P11053475391949000795`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/e)` (program `A032635.P11053475391949000795`, by `A032635.P11053475391949000795.correct`). Lean does not check the parsing of the name. -/
def A032635 (n : ℕ) : ℤ :=
  A032635.P11053475391949000795.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/e)` (program `A032635.P11053475391949000795`, by `A032635.P11053475391949000795.correct`). Lean does not check the parsing of the name. -/
def A032635.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032636.P16683030798261668711

`floor(n^3/e)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032636.P16683030798261668711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℝ) / Real.exp 1⌋

end

end A032636.P16683030798261668711

noncomputable section

/-- A032636: a(n) = floor(n^3 / e).

Offset 0, canonical program `A032636.P16683030798261668711`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/e)` (program `A032636.P16683030798261668711`, by `A032636.P16683030798261668711.correct`). Lean does not check the parsing of the name. -/
def A032636 (n : ℕ) : ℤ :=
  A032636.P16683030798261668711.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/e)` (program `A032636.P16683030798261668711`, by `A032636.P16683030798261668711.correct`). Lean does not check the parsing of the name. -/
def A032636.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032638.P8249765223035741867

`floor(exp(n)/π)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032638.P8249765223035741867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ) / Real.pi⌋

end

end A032638.P8249765223035741867

noncomputable section

/-- A032638: a(n) = floor( exp(n) / Pi ).

Offset 0, canonical program `A032638.P8249765223035741867`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(n)/π)` (program `A032638.P8249765223035741867`, by `A032638.P8249765223035741867.correct`). Lean does not check the parsing of the name. -/
def A032638 (n : ℕ) : ℤ :=
  A032638.P8249765223035741867.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(n)/π)` (program `A032638.P8249765223035741867`, by `A032638.P8249765223035741867.correct`). Lean does not check the parsing of the name. -/
def A032638.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A032766.P1414966867204712309

`floor(3*n/2)`
-/

namespace A032766.P1414966867204712309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

end

end A032766.P1414966867204712309

noncomputable section

/-- A032766: Numbers that are congruent to 0 or 1 (mod 3).

Offset 0, canonical program `A032766.P1414966867204712309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032766 (n : ℕ) : ℤ :=
  A032766.P1414966867204712309.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032769.P17564608565559347843

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5`
-/

namespace A032769.P17564608565559347843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 5] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A032769.P17564608565559347843

noncomputable section

/-- A032769: Numbers that are congruent to {0, 1, 2, 4} mod 5.

Offset 1, canonical program `A032769.P17564608565559347843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032769 (n : ℕ) : ℤ :=
  A032769.P17564608565559347843.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032775.P12893841435385809527

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A032775.P12893841435385809527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A032775.P12893841435385809527

noncomputable section

/-- A032775: Numbers that are congruent to {0, 1, 2, 3, 5, 6} mod 7.

Offset 1, canonical program `A032775.P12893841435385809527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032775 (n : ℕ) : ℤ :=
  A032775.P12893841435385809527.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032793.P4527093573716052088

`a(n-3)+5` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A032793.P4527093573716052088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + 5

end

end A032793.P4527093573716052088

noncomputable section

/-- A032793: Numbers that are congruent to {1, 2, 4} mod 5.

Offset 1, canonical program `A032793.P4527093573716052088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032793 (n : ℕ) : ℤ :=
  (A032793.P4527093573716052088.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032797.P7915281827361216337

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7, a(6)=8, a(7)=9, a(8)=10, a(9)=12`
-/

namespace A032797.P7915281827361216337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 7, 8, 9, 10, 12] fun n a =>
  a (n - 1) + a (n - 9) - a (n - 10)

end

end A032797.P7915281827361216337

noncomputable section

/-- A032797: Numbers n such that n(n+1)(n+2)...(n+10) /(n+(n+1)+(n+2)+...+(n+10)) is a multiple of n.

Offset 1, canonical program `A032797.P7915281827361216337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032797 (n : ℕ) : ℤ :=
  A032797.P7915281827361216337.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032908.P15819255478356776617

`3*a(n-1)-a(n-2)-1` with `a(0)=2, a(1)=2`
-/

namespace A032908.P15819255478356776617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) - 1

end

end A032908.P15819255478356776617

noncomputable section

/-- A032908: One of four 3rd-order recurring sequences for which the first derived sequence and the Galois transformed sequence coincide.

Offset 0, canonical program `A032908.P15819255478356776617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032908 (n : ℕ) : ℤ :=
  A032908.P15819255478356776617.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033030.P7396128720409906404

`3*(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A033030.P7396128720409906404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * (((n : ℤ) - 1) * (a (n - 1) + a (n - 2)))

end

end A033030.P7396128720409906404

noncomputable section

/-- A033030: Derangement numbers d(n,3) where d(n,k) = k(n-1)(d(n-1,k) + d(n-2,k)), with d(0,k) = 1 and d(1,k) = 0.

Offset 0, canonical program `A033030.P7396128720409906404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033030 (n : ℕ) : ℤ :=
  A033030.P7396128720409906404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033030.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033082.P9767311256148004922

`4*a(n-3)+a(n-6)-4*a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=8, a(5)=13, a(6)=29, a(7)=34, a(8)=55`
-/

namespace A033082.P9767311256148004922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 7, 8, 13, 29, 34, 55] fun n a =>
  4 * a (n - 3) + a (n - 6) - 4 * a (n - 9)

end

end A033082.P9767311256148004922

noncomputable section

/-- A033082: Numbers in which all pairs of consecutive base-4 digits differ by 2.

Offset 1, canonical program `A033082.P9767311256148004922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033082 (n : ℕ) : ℤ :=
  A033082.P9767311256148004922.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033113.P18069470244266137004

`a(n-2)+3^n` with `a(0)=1, a(1)=3`
-/

namespace A033113.P18069470244266137004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 3 ^ n

end

end A033113.P18069470244266137004

noncomputable section

/-- A033113: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

Offset 1, canonical program `A033113.P18069470244266137004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033113 (n : ℕ) : ℤ :=
  (A033113.P18069470244266137004.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033114.P15710734722098624949

`a(n-2)+4^n` with `a(0)=1, a(1)=4`
-/

namespace A033114.P15710734722098624949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 4 ^ n

end

end A033114.P15710734722098624949

noncomputable section

/-- A033114: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

Offset 1, canonical program `A033114.P15710734722098624949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033114 (n : ℕ) : ℤ :=
  (A033114.P15710734722098624949.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033115.P17339711678601970117

`a(n-2)+5^n` with `a(0)=1, a(1)=5`
-/

namespace A033115.P17339711678601970117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 5 ^ n

end

end A033115.P17339711678601970117

noncomputable section

/-- A033115: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

Offset 1, canonical program `A033115.P17339711678601970117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033115 (n : ℕ) : ℤ :=
  (A033115.P17339711678601970117.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033116.P388235926407882780

`a(n-2)+6^n` with `a(0)=1, a(1)=6`
-/

namespace A033116.P388235926407882780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + 6 ^ n

end

end A033116.P388235926407882780

noncomputable section

/-- A033116: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

Offset 1, canonical program `A033116.P388235926407882780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033116 (n : ℕ) : ℤ :=
  (A033116.P388235926407882780.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033117.P16766258034415345403

`a(n-2)+7^n` with `a(0)=1, a(1)=7`
-/

namespace A033117.P16766258034415345403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + 7 ^ n

end

end A033117.P16766258034415345403

noncomputable section

/-- A033117: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

Offset 1, canonical program `A033117.P16766258034415345403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033117 (n : ℕ) : ℤ :=
  (A033117.P16766258034415345403.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033118.P2444544430549421995

`a(n-2)+8^n` with `a(0)=1, a(1)=8`
-/

namespace A033118.P2444544430549421995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) + 8 ^ n

end

end A033118.P2444544430549421995

noncomputable section

/-- A033118: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

Offset 1, canonical program `A033118.P2444544430549421995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033118 (n : ℕ) : ℤ :=
  (A033118.P2444544430549421995.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033119.P14661160997872873604

`a(n-2)+9^n` with `a(0)=1, a(1)=9`
-/

namespace A033119.P14661160997872873604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + 9 ^ n

end

end A033119.P14661160997872873604

noncomputable section

/-- A033119: Base-9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0.

Offset 1, canonical program `A033119.P14661160997872873604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033119 (n : ℕ) : ℤ :=
  (A033119.P14661160997872873604.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033121.P6390373050507361312

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=31`
-/

namespace A033121.P6390373050507361312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 31] fun n a =>
  3 * a (n - 1) + a (n - 3) - 3 * a (n - 4)

end

end A033121.P6390373050507361312

noncomputable section

/-- A033121: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033121.P6390373050507361312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033121 (n : ℕ) : ℤ :=
  A033121.P6390373050507361312.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033122.P9281212660425605738

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=69`
-/

namespace A033122.P9281212660425605738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 17, 69] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A033122.P9281212660425605738

noncomputable section

/-- A033122: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033122.P9281212660425605738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033122 (n : ℕ) : ℤ :=
  A033122.P9281212660425605738.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033123.P15502710429489708868

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=131`
-/

namespace A033123.P15502710429489708868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 26, 131] fun n a =>
  5 * a (n - 1) + a (n - 3) - 5 * a (n - 4)

end

end A033123.P15502710429489708868

noncomputable section

/-- A033123: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033123.P15502710429489708868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033123 (n : ℕ) : ℤ :=
  A033123.P15502710429489708868.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033124.P8204619158679424095

`6*a(n-1)+a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=6, a(2)=37, a(3)=223`
-/

namespace A033124.P8204619158679424095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 37, 223] fun n a =>
  6 * a (n - 1) + a (n - 3) - 6 * a (n - 4)

end

end A033124.P8204619158679424095

noncomputable section

/-- A033124: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033124.P8204619158679424095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033124 (n : ℕ) : ℤ :=
  A033124.P8204619158679424095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033125.P10868483201198972100

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=50, a(3)=351`
-/

namespace A033125.P10868483201198972100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 50, 351] fun n a =>
  7 * a (n - 1) + a (n - 3) - 7 * a (n - 4)

end

end A033125.P10868483201198972100

noncomputable section

/-- A033125: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033125.P10868483201198972100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033125 (n : ℕ) : ℤ :=
  A033125.P10868483201198972100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033126.P10984355173944688031

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=8, a(2)=65, a(3)=521`
-/

namespace A033126.P10984355173944688031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 65, 521] fun n a =>
  8 * a (n - 1) + a (n - 3) - 8 * a (n - 4)

end

end A033126.P10984355173944688031

noncomputable section

/-- A033126: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033126.P10984355173944688031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033126 (n : ℕ) : ℤ :=
  A033126.P10984355173944688031.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033127.P18205550115353323205

`9*a(n-1)+a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=9, a(2)=82, a(3)=739`
-/

namespace A033127.P18205550115353323205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 82, 739] fun n a =>
  9 * a (n - 1) + a (n - 3) - 9 * a (n - 4)

end

end A033127.P18205550115353323205

noncomputable section

/-- A033127: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033127.P18205550115353323205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033127 (n : ℕ) : ℤ :=
  A033127.P18205550115353323205.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033129.P4377689973963121018

`floor(2^(n+1)*3/7)`
-/

namespace A033129.P4377689973963121018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) * ((3 : ℚ) / 7)⌋

end

end A033129.P4377689973963121018

noncomputable section

/-- A033129: Base-2 digits are, in order, the first n terms of the periodic sequence with initial period [1,1,0].

Offset 0, canonical program `A033129.P4377689973963121018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033129 (n : ℕ) : ℤ :=
  A033129.P4377689973963121018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033130.P13860399126557355425

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=37`
-/

namespace A033130.P13860399126557355425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 12, 37] fun n a =>
  3 * a (n - 1) + a (n - 3) - 3 * a (n - 4)

end

end A033130.P13860399126557355425

noncomputable section

/-- A033130: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033130.P13860399126557355425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033130 (n : ℕ) : ℤ :=
  A033130.P13860399126557355425.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033131.P7867554378789420458

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=81`
-/

namespace A033131.P7867554378789420458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 20, 81] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A033131.P7867554378789420458

noncomputable section

/-- A033131: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033131.P7867554378789420458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033131 (n : ℕ) : ℤ :=
  A033131.P7867554378789420458.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033132.P11507490931217143944

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=6, a(2)=30, a(3)=151`
-/

namespace A033132.P11507490931217143944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 30, 151] fun n a =>
  5 * a (n - 1) + a (n - 3) - 5 * a (n - 4)

end

end A033132.P11507490931217143944

noncomputable section

/-- A033132: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033132.P11507490931217143944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033132 (n : ℕ) : ℤ :=
  A033132.P11507490931217143944.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033133.P10345834201440290909

`6*a(n-1)+a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=7, a(2)=42, a(3)=253`
-/

namespace A033133.P10345834201440290909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 42, 253] fun n a =>
  6 * a (n - 1) + a (n - 3) - 6 * a (n - 4)

end

end A033133.P10345834201440290909

noncomputable section

/-- A033133: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033133.P10345834201440290909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033133 (n : ℕ) : ℤ :=
  A033133.P10345834201440290909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033134.P10049616052748735050

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=8, a(2)=56, a(3)=393`
-/

namespace A033134.P10049616052748735050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 56, 393] fun n a =>
  7 * a (n - 1) + a (n - 3) - 7 * a (n - 4)

end

end A033134.P10049616052748735050

noncomputable section

/-- A033134: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033134.P10049616052748735050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033134 (n : ℕ) : ℤ :=
  A033134.P10049616052748735050.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033135.P11766262309282443201

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=9, a(2)=72, a(3)=577`
-/

namespace A033135.P11766262309282443201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 72, 577] fun n a =>
  8 * a (n - 1) + a (n - 3) - 8 * a (n - 4)

end

end A033135.P11766262309282443201

noncomputable section

/-- A033135: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033135.P11766262309282443201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033135 (n : ℕ) : ℤ :=
  A033135.P11766262309282443201.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033138.P3469135941424049828

`a(n-3)+2^n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A033138.P3469135941424049828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + 2 ^ n

end

end A033138.P3469135941424049828

noncomputable section

/-- A033138: a(n) = floor(2^(n+2)/7).

Offset 1, canonical program `A033138.P3469135941424049828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033138 (n : ℕ) : ℤ :=
  (A033138.P3469135941424049828.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033140.P17669525988068157691

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=65`
-/

namespace A033140.P17669525988068157691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16, 65] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A033140.P17669525988068157691

noncomputable section

/-- A033140: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

Offset 1, canonical program `A033140.P17669525988068157691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033140 (n : ℕ) : ℤ :=
  A033140.P17669525988068157691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033140.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033141.P11305019978706514664

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=126`
-/

namespace A033141.P11305019978706514664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 126] fun n a =>
  5 * a (n - 1) + a (n - 3) - 5 * a (n - 4)

end

end A033141.P11305019978706514664

noncomputable section

/-- A033141: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

Offset 1, canonical program `A033141.P11305019978706514664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033141 (n : ℕ) : ℤ :=
  A033141.P11305019978706514664.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033141.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033142.P13211676816256555068

`6*a(n-1)+a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=217`
-/

namespace A033142.P13211676816256555068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 36, 217] fun n a =>
  6 * a (n - 1) + a (n - 3) - 6 * a (n - 4)

end

end A033142.P13211676816256555068

noncomputable section

/-- A033142: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

Offset 1, canonical program `A033142.P13211676816256555068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033142 (n : ℕ) : ℤ :=
  A033142.P13211676816256555068.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033143.P17446137891870727698

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=49, a(3)=344`
-/

namespace A033143.P17446137891870727698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 49, 344] fun n a =>
  7 * a (n - 1) + a (n - 3) - 7 * a (n - 4)

end

end A033143.P17446137891870727698

noncomputable section

/-- A033143: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

Offset 1, canonical program `A033143.P17446137891870727698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033143 (n : ℕ) : ℤ :=
  A033143.P17446137891870727698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033144.P12708854879116162222

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=8, a(2)=64, a(3)=513`
-/

namespace A033144.P12708854879116162222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 64, 513] fun n a =>
  8 * a (n - 1) + a (n - 3) - 8 * a (n - 4)

end

end A033144.P12708854879116162222

noncomputable section

/-- A033144: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

Offset 1, canonical program `A033144.P12708854879116162222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033144 (n : ℕ) : ℤ :=
  A033144.P12708854879116162222.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033145.P18225206486127704413

`9*a(n-1)+a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=9, a(2)=81, a(3)=730`
-/

namespace A033145.P18225206486127704413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 81, 730] fun n a =>
  9 * a (n - 1) + a (n - 3) - 9 * a (n - 4)

end

end A033145.P18225206486127704413

noncomputable section

/-- A033145: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

Offset 1, canonical program `A033145.P18225206486127704413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033145 (n : ℕ) : ℤ :=
  A033145.P18225206486127704413.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033175.P4430678259805425953

`10*a(n-1)+21` with `a(0)=1`
-/

namespace A033175.P4430678259805425953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 21

end

end A033175.P4430678259805425953

noncomputable section

/-- A033175: n 3's followed by 1.

Offset 0, canonical program `A033175.P4430678259805425953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033175 (n : ℕ) : ℤ :=
  (A033175.P4430678259805425953.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033182.P17471725555445640497

`floor(n/5)-floor((n-1)/6)`
-/

namespace A033182.P17471725555445640497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋ - ⌊((n : ℤ) - 1 : ℚ) / 6⌋

end

end A033182.P17471725555445640497

noncomputable section

/-- A033182: Number of pairs (p,q) such that 5*p + 6*q = n.

Offset 0, canonical program `A033182.P17471725555445640497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033182 (n : ℕ) : ℤ :=
  A033182.P17471725555445640497.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033190.P6183087157308840805

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9, a(4)=28`
-/

namespace A033190.P6183087157308840805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 9, 28] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 20 * a (n - 3) - 5 * a (n - 4)

end

end A033190.P6183087157308840805

noncomputable section

/-- A033190: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(Fibonacci(k)+1,2).

Offset 0, canonical program `A033190.P6183087157308840805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033190 (n : ℕ) : ℤ :=
  A033190.P6183087157308840805.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033191.P3387221971966697321

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14`
-/

namespace A033191.P3387221971966697321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5, 14] fun n a =>
  8 * a (n - 1) - 21 * a (n - 2) + 20 * a (n - 3) - 5 * a (n - 4)

end

end A033191.P3387221971966697321

noncomputable section

/-- A033191: Binomial transform of [ 1, 0, 1, 1, 3, 6, 15, 36, 91, 231, 595, ... ], which is essentially binomial(Fibonacci(k) + 1, 2).

Offset 0, canonical program `A033191.P3387221971966697321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033191 (n : ℕ) : ℤ :=
  A033191.P3387221971966697321.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033303.P6898782780112277835

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A033303.P6898782780112277835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A033303.P6898782780112277835

noncomputable section

/-- A033303: Expansion of (1 + x)/(1 - 2*x - x^2 + x^3).

Offset 0, canonical program `A033303.P6898782780112277835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033303 (n : ℕ) : ℤ :=
  A033303.P6898782780112277835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033305.P874355326494320662

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A033305.P874355326494320662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 4] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) - a (n - 5)

end

end A033305.P874355326494320662

noncomputable section

/-- A033305: Number of permutations (p1,...,pn) such that 1 <= |pk - k| <= 2 for all k.

Offset 0, canonical program `A033305.P874355326494320662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033305 (n : ℕ) : ℤ :=
  A033305.P874355326494320662.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033305.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033312.P12652974073192440444

`n!-1`
-/

namespace A033312.P12652974073192440444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

end

end A033312.P12652974073192440444

noncomputable section

/-- A033312: a(n) = n! - 1.

Offset 0, canonical program `A033312.P12652974073192440444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033312 (n : ℕ) : ℤ :=
  A033312.P12652974073192440444.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033436.P8743930386069734192

`floor(3*n²/8)`
-/

namespace A033436.P8743930386069734192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 : ℚ) / 8⌋

end

end A033436.P8743930386069734192

noncomputable section

/-- A033436: a(n) = ceiling( (3*n^2 - 4)/8 ).

Offset 0, canonical program `A033436.P8743930386069734192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033436 (n : ℕ) : ℤ :=
  A033436.P8743930386069734192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033437.P12589064537367004141

`floor(2*n²/5)`
-/

namespace A033437.P12589064537367004141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n ^ 2 : ℚ) / 5⌋

end

end A033437.P12589064537367004141

noncomputable section

/-- A033437: Number of edges in 5-partite Turán graph of order n.

Offset 0, canonical program `A033437.P12589064537367004141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033437 (n : ℕ) : ℤ :=
  A033437.P12589064537367004141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033438.P5943560703643571516

`floor(5*n²/12)`
-/

namespace A033438.P5943560703643571516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n ^ 2 : ℚ) / 12⌋

end

end A033438.P5943560703643571516

noncomputable section

/-- A033438: Number of edges in 6-partite Turán graph of order n.

Offset 0, canonical program `A033438.P5943560703643571516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033438 (n : ℕ) : ℤ :=
  A033438.P5943560703643571516.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033439.P7131018055808666326

`floor(3*n²/7)`
-/

namespace A033439.P7131018055808666326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 : ℚ) / 7⌋

end

end A033439.P7131018055808666326

noncomputable section

/-- A033439: Number of edges in 7-partite Turán graph of order n.

Offset 0, canonical program `A033439.P7131018055808666326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033439 (n : ℕ) : ℤ :=
  A033439.P7131018055808666326.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033445.P10276223466319853339

`1-2*n+n^3`
-/

namespace A033445.P10276223466319853339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ) + (n ^ 3 : ℤ)

end

end A033445.P10276223466319853339

noncomputable section

/-- A033445: a(n) = (n - 1)*(n^2 + n - 1).

Offset 0, canonical program `A033445.P10276223466319853339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033445 (n : ℕ) : ℤ :=
  A033445.P10276223466319853339.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033453.P7575375721372795349

`4*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=18`
-/

namespace A033453.P7575375721372795349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 18] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A033453.P7575375721372795349

noncomputable section

/-- A033453: "INVERT" transform of squares A000290.

Offset 0, canonical program `A033453.P7575375721372795349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033453 (n : ℕ) : ℤ :=
  A033453.P7575375721372795349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033463.P1361250914318151423

`2^(n-4)*(n^4+6*n^3+19*n²+22*n+16)`
-/

namespace A033463.P1361250914318151423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (n ^ 4 + 6 * n ^ 3 + 19 * n ^ 2 + 22 * n + 16 : ℚ)

end

end A033463.P1361250914318151423

noncomputable section

/-- A033463: EXPCONV of squares A000290 with themselves.

Offset 0, canonical program `A033463.P1361250914318151423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033463.P1361250914318151423.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033478.P5669988240406963583

`a(n-3)` with `a(0)=3, a(1)=10, a(2)=5, a(3)=16, a(4)=8, a(5)=4, a(6)=2, a(7)=1`
-/

namespace A033478.P5669988240406963583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10, 5, 16, 8, 4, 2, 1] fun n a =>
  a (n - 3)

end

end A033478.P5669988240406963583

noncomputable section

/-- A033478: 3x+1 sequence beginning at 3.

Offset 0, canonical program `A033478.P5669988240406963583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033478 (n : ℕ) : ℤ :=
  (A033478.P5669988240406963583.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033481.P803915225457547627

`a(n-3)` with `a(0)=21, a(1)=64, a(2)=32, a(3)=16, a(4)=8, a(5)=4, a(6)=2, a(7)=1`
-/

namespace A033481.P803915225457547627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 64, 32, 16, 8, 4, 2, 1] fun n a =>
  a (n - 3)

end

end A033481.P803915225457547627

noncomputable section

/-- A033481: 3x+1 sequence beginning at 21.

Offset 0, canonical program `A033481.P803915225457547627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033481 (n : ℕ) : ℤ :=
  (A033481.P803915225457547627.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033486.P8350480419729936038

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=12, a(2)=60, a(3)=180, a(4)=420`
-/

namespace A033486.P8350480419729936038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 60, 180, 420] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A033486.P8350480419729936038

noncomputable section

/-- A033486: a(n) = n*(n + 1)*(n + 2)*(n + 3)/2.

Offset 0, canonical program `A033486.P8350480419729936038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033486 (n : ℕ) : ℤ :=
  A033486.P8350480419729936038.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033487.P10121530377608577329

`n*(n+1)*(n+2)*(n+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033487.P10121530377608577329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) / 4)))

end

end A033487.P10121530377608577329

noncomputable section

/-- A033487: a(n) = n*(n+1)*(n+2)*(n+3)/4.

Offset 0, canonical program `A033487.P10121530377608577329`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033487.P10121530377608577329.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033488.P6964508228551824834

`n*(n+1)*(n+2)*(n+3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033488.P6964508228551824834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) / 6)))

end

end A033488.P6964508228551824834

noncomputable section

/-- A033488: a(n) = n*(n+1)*(n+2)*(n+3)/6.

Offset 0, canonical program `A033488.P6964508228551824834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033488.P6964508228551824834.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033505.P11408357037139427229

`3*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A033505.P11408357037139427229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  3 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A033505.P11408357037139427229

noncomputable section

/-- A033505: Expansion of 1/(1 - 3*x - x^2 + x^3).

Offset 0, canonical program `A033505.P11408357037139427229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033505 (n : ℕ) : ℤ :=
  A033505.P11408357037139427229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033515.P9797754617869766935

`6*a(n-1)+9*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=32, a(3)=228`
-/

namespace A033515.P9797754617869766935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 32, 228] fun n a =>
  6 * a (n - 1) + 9 * a (n - 2) - a (n - 4)

end

end A033515.P9797754617869766935

noncomputable section

/-- A033515: Number of matchings in graph C_{3} X P_{n}.

Offset 0, canonical program `A033515.P9797754617869766935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033515 (n : ℕ) : ℤ :=
  A033515.P9797754617869766935.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033537.P16625932372044629386

`(2*n+5)*n`
-/

namespace A033537.P16625932372044629386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 5) * n

end

end A033537.P16625932372044629386

noncomputable section

/-- A033537: a(n) = n*(2*n+5).

Offset 0, canonical program `A033537.P16625932372044629386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033537 (n : ℕ) : ℤ :=
  (A033537.P16625932372044629386.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033544.P8536488129249730105

`1/10*n*(n+1)*(4*n^3+36*n²+79*n+16)`
-/

namespace A033544.P8536488129249730105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 10 * (n * ((n + 1) * (4 * n ^ 3 + 36 * n ^ 2 + 79 * n + 16)) : ℚ)

end

end A033544.P8536488129249730105

noncomputable section

/-- A033544: Wiener number of n-hexagonal triangle.

Offset 0, canonical program `A033544.P8536488129249730105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033544 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033544.P8536488129249730105.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033547.P17955662495528661415

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=14`
-/

namespace A033547.P17955662495528661415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 14] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A033547.P17955662495528661415

noncomputable section

/-- A033547: Otto Haxel's guess for magic numbers of nuclear shells.

Offset 0, canonical program `A033547.P17955662495528661415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033547 (n : ℕ) : ℤ :=
  A033547.P17955662495528661415.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033568.P12495941552144353086

`6*n²-5*n+1`
-/

namespace A033568.P12495941552144353086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - (5 * n : ℤ) + 1

end

end A033568.P12495941552144353086

noncomputable section

/-- A033568: Second pentagonal numbers with odd index: a(n) = (2*n-1)*(3*n-1).

Offset 0, canonical program `A033568.P12495941552144353086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033568 (n : ℕ) : ℤ :=
  A033568.P12495941552144353086.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033579.P8019627315445305091

`6*n²-2*n`
-/

namespace A033579.P8019627315445305091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - (2 * n : ℤ)

end

end A033579.P8019627315445305091

noncomputable section

/-- A033579: Four times pentagonal numbers: a(n) = 2*n*(3*n-1).

Offset 0, canonical program `A033579.P8019627315445305091`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033579 (n : ℕ) : ℤ :=
  A033579.P8019627315445305091.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033622.P8468115569823409156

`a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=41, a(4)=109`
-/

namespace A033622.P8468115569823409156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 19, 41, 109] fun n a =>
  a (n - 1) + 6 * a (n - 2) - 6 * a (n - 3) - 8 * a (n - 4) + 8 * a (n - 5)

end

end A033622.P8468115569823409156

noncomputable section

/-- A033622: Good sequence of increments for Shell sort (best on big values).

Offset 0, canonical program `A033622.P8468115569823409156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033622 (n : ℕ) : ℤ :=
  A033622.P8468115569823409156.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033627.P10512786693713400032

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A033627.P10512786693713400032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A033627.P10512786693713400032

noncomputable section

/-- A033627: 0-additive sequence: not the sum of any previous pair.

Offset 1, canonical program `A033627.P10512786693713400032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033627 (n : ℕ) : ℤ :=
  A033627.P10512786693713400032.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033638.P12205945644349206478

`1+floor(n²/4)`
-/

namespace A033638.P12205945644349206478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n ^ 2 : ℚ) / 4⌋

end

end A033638.P12205945644349206478

noncomputable section

/-- A033638: Quarter-squares plus 1 (that is, a(n) = A002620(n) + 1).

Offset 0, canonical program `A033638.P12205945644349206478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033638 (n : ℕ) : ℤ :=
  A033638.P12205945644349206478.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033813.P18085245078646247327

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=4, a(1)=15, a(2)=37, a(3)=77`
-/

namespace A033813.P18085245078646247327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 15, 37, 77] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A033813.P18085245078646247327

noncomputable section

/-- A033813: Convolution of natural numbers n >= 1 with Lucas numbers L(k) (A000032) for k >= 3.

Offset 1, canonical program `A033813.P18085245078646247327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033813 (n : ℕ) : ℤ :=
  A033813.P18085245078646247327.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033815.P5339208744931645815

`2*n*(2*n-1)*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A033815.P5339208744931645815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((n : ℤ) * (((2 * n : ℤ) - 1) * a (n - 1))) + (n : ℤ) * (((n : ℤ) - 1) * a (n - 2))

end

end A033815.P5339208744931645815

noncomputable section

/-- A033815: Number of standard permutations of [ a_1..a_n b_1..b_n ] (b_i is not immediately followed by a_i, for all i).

Offset 0, canonical program `A033815.P5339208744931645815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033815 (n : ℕ) : ℤ :=
  A033815.P5339208744931645815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033887.P16222940499921991162

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A033887.P16222940499921991162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) + a (n - 2)

end

end A033887.P16222940499921991162

noncomputable section

/-- A033887: a(n) = Fibonacci(3*n + 1).

Offset 0, canonical program `A033887.P16222940499921991162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033887 (n : ℕ) : ℤ :=
  (A033887.P16222940499921991162.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033888.P16330144970251278705

`7*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A033888.P16330144970251278705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  7 * a (n - 1) - a (n - 2)

end

end A033888.P16330144970251278705

noncomputable section

/-- A033888: a(n) = Fibonacci(4*n).

Offset 0, canonical program `A033888.P16330144970251278705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033888 (n : ℕ) : ℤ :=
  A033888.P16330144970251278705.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033889.P13788262088628196839

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A033889.P13788262088628196839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  7 * a (n - 1) - a (n - 2)

end

end A033889.P13788262088628196839

noncomputable section

/-- A033889: a(n) = Fibonacci(4*n + 1).

Offset 0, canonical program `A033889.P13788262088628196839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033889 (n : ℕ) : ℤ :=
  A033889.P13788262088628196839.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033890.P5358019263246942131

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A033890.P5358019263246942131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 * a (n - 1) - a (n - 2)

end

end A033890.P5358019263246942131

noncomputable section

/-- A033890: a(n) = Fibonacci(4*n + 2).

Offset 0, canonical program `A033890.P5358019263246942131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033890 (n : ℕ) : ℤ :=
  A033890.P5358019263246942131.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033891.P1436371791952091862

`7*a(n-1)-a(n-2)` with `a(0)=2, a(1)=13`
-/

namespace A033891.P1436371791952091862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 13] fun n a =>
  7 * a (n - 1) - a (n - 2)

end

end A033891.P1436371791952091862

noncomputable section

/-- A033891: a(n) = Fibonacci(4*n+3).

Offset 0, canonical program `A033891.P1436371791952091862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033891 (n : ℕ) : ℤ :=
  A033891.P1436371791952091862.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033940.P16478597412817440698

`a(n-6)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=6, a(4)=4, a(5)=5`
-/

namespace A033940.P16478597412817440698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 6, 4, 5] fun n a =>
  a (n - 6)

end

end A033940.P16478597412817440698

noncomputable section

/-- A033940: a(n) = 10^n mod 7.

Offset 0, canonical program `A033940.P16478597412817440698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033940 (n : ℕ) : ℤ :=
  (A033940.P16478597412817440698.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033951.P3925852296356009015

`4*n²+3*n+1`
-/

namespace A033951.P3925852296356009015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 2 + 3 * n + 1

end

end A033951.P3925852296356009015

noncomputable section

/-- A033951: Write 1,2,... in a clockwise spiral; sequence gives numbers on positive x axis.

Offset 0, canonical program `A033951.P3925852296356009015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033951 (n : ℕ) : ℤ :=
  (A033951.P3925852296356009015.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033991.P5575866184435354666

`4*n²-n`
-/

namespace A033991.P5575866184435354666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 2 : ℤ) - (n : ℤ)

end

end A033991.P5575866184435354666

noncomputable section

/-- A033991: a(n) = n*(4*n-1).

Offset 0, canonical program `A033991.P5575866184435354666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033991 (n : ℕ) : ℤ :=
  A033991.P5575866184435354666.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034009.P333279701015619122

`2^(n+4)*(n-3)+(n+7)*(n*(n+11)+42)/6`
-/

namespace A034009.P333279701015619122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 4) : ℤ) * ((n : ℤ) - 3) : ℚ) + (n + 7 : ℚ) * ((n * (n + 11) + 42 : ℚ) / 6)

end

end A034009.P333279701015619122

noncomputable section

/-- A034009: Convolution of A000295(n+2) (n>=0) with itself.

Offset 0, canonical program `A034009.P333279701015619122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034009.P333279701015619122.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034108.P8067775828640607782

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=5, a(1)=18, a(2)=28, a(3)=39, a(4)=52, a(5)=68, a(6)=85, a(7)=105`
-/

namespace A034108.P8067775828640607782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 18, 28, 39, 52, 68, 85, 105] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A034108.P8067775828640607782

noncomputable section

/-- A034108: Fractional part of square root of a(n) starts with 2: first term of runs.

Offset 1, canonical program `A034108.P8067775828640607782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034108 (n : ℕ) : ℤ :=
  A034108.P8067775828640607782.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034111.P14429998604279909038

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=21, a(1)=31, a(2)=43`
-/

namespace A034111.P14429998604279909038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 31, 43] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A034111.P14429998604279909038

noncomputable section

/-- A034111: Fractional part of square root of a(n) starts with 5: first term of runs.

Offset 1, canonical program `A034111.P14429998604279909038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034111 (n : ℕ) : ℤ :=
  A034111.P14429998604279909038.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034115.P836788397746215720

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=35, a(1)=48, a(2)=63, a(3)=80, a(4)=99, a(5)=119, a(6)=142`
-/

namespace A034115.P836788397746215720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [35, 48, 63, 80, 99, 119, 142] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A034115.P836788397746215720

noncomputable section

/-- A034115: Fractional part of square root of a(n) starts with 9: first term of runs.

Offset 1, canonical program `A034115.P836788397746215720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034115 (n : ℕ) : ℤ :=
  A034115.P836788397746215720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034182.P10462263895861616260

`2*a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=5`
-/

namespace A034182.P10462263895861616260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + a (n - 2) + 4

end

end A034182.P10462263895861616260

noncomputable section

/-- A034182: Number of not-necessarily-symmetric n X 2 crossword puzzle grids.

Offset 1, canonical program `A034182.P10462263895861616260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034182 (n : ℕ) : ℤ :=
  (A034182.P10462263895861616260.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034198.P495696853797558583

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=16, a(6)=23`
-/

namespace A034198.P495696853797558583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 10, 16, 23] fun n a =>
  2 * a (n - 1) - a (n - 3) - a (n - 4) + 2 * a (n - 6) - a (n - 7)

end

end A034198.P495696853797558583

noncomputable section

/-- A034198: Number of binary codes (not necessarily linear) of length n with 3 words.

Offset 1, canonical program `A034198.P495696853797558583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034198 (n : ℕ) : ℤ :=
  A034198.P495696853797558583.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034263.P6125889168153481410

`(1+n)*(2+n)*(3+n)*(4+n)*(4*n+5)/120`
-/

namespace A034263.P6125889168153481410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) * ((2 + n : ℚ) * ((3 + n : ℚ) * ((4 + n : ℚ) * ((4 * n + 5 : ℚ) / 120))))

end

end A034263.P6125889168153481410

noncomputable section

/-- A034263: a(n) = binomial(n+4,4)*(4*n+5)/5.

Offset 0, canonical program `A034263.P6125889168153481410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034263 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034263.P6125889168153481410.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034264.P3944593298545630423

`n*(5*n+1)*(n+4)*(n+3)*(n+2)*(n+1)/720`
-/

namespace A034264.P3944593298545630423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((5 * n + 1 : ℚ) * ((n + 4 : ℚ) * ((n + 3 : ℚ) * ((n + 2 : ℚ) * ((n + 1 : ℚ) / 720)))))

end

end A034264.P3944593298545630423

noncomputable section

/-- A034264: a(n) = f(n,4) where f is given in A034261.

Offset 0, canonical program `A034264.P3944593298545630423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034264.P3944593298545630423.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034430.P7564438678359042526

`(3*n-1)*a(n-1)-(2*n-1)*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A034430.P7564438678359042526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((3 * n : ℤ) - 1) * a (n - 1) - ((2 * n : ℤ) - 1) * (((n : ℤ) - 1) * a (n - 2))

end

end A034430.P7564438678359042526

noncomputable section

/-- A034430: Convolution of A001147 (double factorial numbers) with itself.

Offset 0, canonical program `A034430.P7564438678359042526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034430 (n : ℕ) : ℤ :=
  A034430.P7564438678359042526.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034478.P14299507060647208907

`5*a(n-1)-2` with `a(0)=1`
-/

namespace A034478.P14299507060647208907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - 2

end

end A034478.P14299507060647208907

noncomputable section

/-- A034478: a(n) = (5^n + 1)/2.

Offset 0, canonical program `A034478.P14299507060647208907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034478 (n : ℕ) : ℤ :=
  A034478.P14299507060647208907.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034488.P3302094356914207733

`(2^n+1)*(3^n+1)`
-/

namespace A034488.P3302094356914207733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1) * (3 ^ n + 1)

end

end A034488.P3302094356914207733

noncomputable section

/-- A034488: Sum of n-th powers of divisors of 6.

Offset 0, canonical program `A034488.P3302094356914207733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034488 (n : ℕ) : ℤ :=
  (A034488.P3302094356914207733.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034494.P6152540667453221608

`7*a(n-1)-3` with `a(0)=1`
-/

namespace A034494.P6152540667453221608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - 3

end

end A034494.P6152540667453221608

noncomputable section

/-- A034494: a(n) = (7^n+1)/2.

Offset 0, canonical program `A034494.P6152540667453221608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034494 (n : ℕ) : ℤ :=
  A034494.P6152540667453221608.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034496.P2641262732449208046

`1+2^n+4^n+8^n`
-/

namespace A034496.P2641262732449208046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 4 ^ n + 8 ^ n

end

end A034496.P2641262732449208046

noncomputable section

/-- A034496: Sum of n-th powers of divisors of 8.

Offset 0, canonical program `A034496.P2641262732449208046`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034496 (n : ℕ) : ℤ :=
  (A034496.P2641262732449208046.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034513.P15215699128484912420

`1+3^n+9^n`
-/

namespace A034513.P15215699128484912420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 ^ n + 9 ^ n

end

end A034513.P15215699128484912420

noncomputable section

/-- A034513: a(n) = 1^n + 3^n + 9^n.

Offset 0, canonical program `A034513.P15215699128484912420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034513 (n : ℕ) : ℤ :=
  (A034513.P15215699128484912420.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034585.P5034366313642579959

`16*a(n-8)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=4, a(5)=8, a(6)=16, a(7)=16`
-/

namespace A034585.P5034366313642579959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 4, 8, 16, 16] fun n a =>
  16 * a (n - 8)

end

end A034585.P5034366313642579959

noncomputable section

/-- A034585: Dimension of an irreducible Z_2 graded H-module for Clifford algebra Cl_n.

Offset 1, canonical program `A034585.P5034366313642579959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034585 (n : ℕ) : ℤ :=
  (A034585.P5034366313642579959.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034659.P9693213874906792404

`11*a(n-1)-5` with `a(0)=1`
-/

namespace A034659.P9693213874906792404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - 5

end

end A034659.P9693213874906792404

noncomputable section

/-- A034659: a(n) = (11^n + 1)/2.

Offset 0, canonical program `A034659.P9693213874906792404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034659 (n : ℕ) : ℤ :=
  A034659.P9693213874906792404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034661.P13987024234175101085

`(2^n+1)*(3^n+9^n+1)`
-/

namespace A034661.P13987024234175101085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1) * (3 ^ n + 9 ^ n + 1)

end

end A034661.P13987024234175101085

noncomputable section

/-- A034661: Sum of n-th powers of divisors of 18.

Offset 0, canonical program `A034661.P13987024234175101085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034661 (n : ℕ) : ℤ :=
  (A034661.P13987024234175101085.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034662.P11982608881714086736

`(1+2^n+4^n)*(1+5^n)`
-/

namespace A034662.P11982608881714086736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 2 ^ n + 4 ^ n) * (1 + 5 ^ n)

end

end A034662.P11982608881714086736

noncomputable section

/-- A034662: Sum of n-th powers of divisors of 20.

Offset 0, canonical program `A034662.P11982608881714086736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034662 (n : ℕ) : ℤ :=
  (A034662.P11982608881714086736.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034663.P6191100540916868987

`(1+3^n)*(1+7^n)`
-/

namespace A034663.P6191100540916868987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 3 ^ n) * (1 + 7 ^ n)

end

end A034663.P6191100540916868987

noncomputable section

/-- A034663: Sum of n-th powers of divisors of 21.

Offset 0, canonical program `A034663.P6191100540916868987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034663 (n : ℕ) : ℤ :=
  (A034663.P6191100540916868987.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034665.P16990147303693654245

`1+2^n+4^n+8^n+16^n+32^n`
-/

namespace A034665.P16990147303693654245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 4 ^ n + 8 ^ n + 16 ^ n + 32 ^ n

end

end A034665.P16990147303693654245

noncomputable section

/-- A034665: Sum of n-th powers of divisors of 32.

Offset 0, canonical program `A034665.P16990147303693654245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034665 (n : ℕ) : ℤ :=
  (A034665.P16990147303693654245.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034666.P15454771573831163023

`(1+2^n+4^n)*(1+3^n+9^n)`
-/

namespace A034666.P15454771573831163023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 2 ^ n + 4 ^ n) * (1 + 3 ^ n + 9 ^ n)

end

end A034666.P15454771573831163023

noncomputable section

/-- A034666: Sum of n-th powers of divisors of 36.

Offset 0, canonical program `A034666.P15454771573831163023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034666 (n : ℕ) : ℤ :=
  (A034666.P15454771573831163023.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034667.P13846003350252915052

`1+2^n+4^n+5^n+8^n+10^n+20^n+40^n`
-/

namespace A034667.P13846003350252915052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 4 ^ n + 5 ^ n + 8 ^ n + 10 ^ n + 20 ^ n + 40 ^ n

end

end A034667.P13846003350252915052

noncomputable section

/-- A034667: Sum of n-th powers of divisors of 40.

Offset 0, canonical program `A034667.P13846003350252915052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034667 (n : ℕ) : ℤ :=
  (A034667.P13846003350252915052.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034721.P12183180036091575082

`(10*n^3-9*n²+2*n)/3+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034721.P12183180036091575082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (2 * n : ℤ) : ℚ) / 3 + 1

end

end A034721.P12183180036091575082

noncomputable section

/-- A034721: a(n) = (10*n^3 - 9*n^2 + 2*n)/3 + 1.

Offset 0, canonical program `A034721.P12183180036091575082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034721 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034721.P12183180036091575082.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034803.P16801151789893753185

`3*a(n-3)+a(n-6)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=2, a(8)=2`
-/

namespace A034803.P16801151789893753185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1, 1, 2, 2] fun n a =>
  3 * a (n - 3) + a (n - 6) + a (n - 9)

end

end A034803.P16801151789893753185

noncomputable section

/-- A034803: Consider the sequence of 4-tuples {0,a,b,c} (c>=a+b; a,b,c>0) which have the smallest integer 'c' required to reach {k,k,k,k} in n steps under map {r,s,t,u}->{|r-s|,|s-t|,|t-u|,|u-r|}. This sequence gives the second term 'a' of these quadruples.

Offset 1, canonical program `A034803.P16801151789893753185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034803 (n : ℕ) : ℤ :=
  (A034803.P16801151789893753185.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034804.P13461283824702270868

`3*a(n-3)+a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2, a(4)=1, a(5)=2, a(6)=4, a(7)=5, a(8)=6`
-/

namespace A034804.P13461283824702270868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 2, 1, 2, 4, 5, 6] fun n a =>
  3 * a (n - 3) + a (n - 6) + a (n - 9)

end

end A034804.P13461283824702270868

noncomputable section

/-- A034804: Consider the sequence of 4-tuples {0,a,b,c} (c>=a+b; a,b,c>0) which have the smallest integer 'c' required to reach {k,k,k,k} in n steps under map {r,s,t,u}->{|r-s|,|s-t|,|t-u|,|u-r|}. This sequence gives the third term 'b' of these quadruples.

Offset 1, canonical program `A034804.P13461283824702270868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034804 (n : ℕ) : ℤ :=
  (A034804.P13461283824702270868.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034828.P560572460537490832

`n*floor(n²/4)/2`
-/

namespace A034828.P560572460537490832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ⌊(n ^ 2 : ℚ) / 4⌋ : ℚ) / 2

end

end A034828.P560572460537490832

noncomputable section

/-- A034828: a(n) = floor(n^2/4)*(n/2).

Offset 0, canonical program `A034828.P560572460537490832`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034828 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034828.P560572460537490832.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034841.P14830808767501384027

`n²!/n!^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034841.P14830808767501384027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n ^ 2) : ℚ) / (Nat.factorial n ^ n : ℚ)

end

end A034841.P14830808767501384027

noncomputable section

/-- A034841: a(n) = (n^2)! / (n!)^n.

Offset 0, canonical program `A034841.P14830808767501384027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034841 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034841.P14830808767501384027.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034856.P2565088395744470160

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A034856.P2565088395744470160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A034856.P2565088395744470160

noncomputable section

/-- A034856: a(n) = binomial(n+1, 2) + n - 1 = n*(n+3)/2 - 1.

Offset 1, canonical program `A034856.P2565088395744470160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034856 (n : ℕ) : ℤ :=
  A034856.P2565088395744470160.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034857.P5782153790294962238

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=6, a(2)=18, a(3)=36`
-/

namespace A034857.P5782153790294962238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 6, 18, 36] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A034857.P5782153790294962238

noncomputable section

/-- A034857: a(n) = C(n+2,3) + 2*C(n,2) + 2*(n-2).

Offset 1, canonical program `A034857.P5782153790294962238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034857 (n : ℕ) : ℤ :=
  A034857.P5782153790294962238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034887.P3014094780525461233

`floor(n*log(2)/log(10))+1`
-/

namespace A034887.P3014094780525461233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (2 : ℝ) / Real.log (10 : ℝ)⌋ + 1

end

end A034887.P3014094780525461233

noncomputable section

/-- A034887: Number of digits in 2^n.

Offset 0, canonical program `A034887.P3014094780525461233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034887 (n : ℕ) : ℤ :=
  A034887.P3014094780525461233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034888.P15382381024105369470

`floor(n*log(3)/log(10))+1`
-/

namespace A034888.P15382381024105369470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (3 : ℝ) / Real.log (10 : ℝ)⌋ + 1

end

end A034888.P15382381024105369470

noncomputable section

/-- A034888: Number of digits in 3^n.

Offset 0, canonical program `A034888.P15382381024105369470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034888 (n : ℕ) : ℤ :=
  A034888.P15382381024105369470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034910.P5322959368832304807

`(9*n+4)*a(n-1)-4*n*(2*n-1)*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A034910.P5322959368832304807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  (9 * n + 4 : ℤ) * a (n - 1) - 4 * ((n : ℤ) * (((2 * n : ℤ) - 1) * a (n - 2)))

end

end A034910.P5322959368832304807

noncomputable section

/-- A034910: One quarter of octo-factorial numbers.

Offset 1, canonical program `A034910.P5322959368832304807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034910 (n : ℕ) : ℤ :=
  A034910.P5322959368832304807.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034940.P17825735528050624306

`(2*n+1)^n*(2*n)!/(2^n*n!)`
-/

namespace A034940.P17825735528050624306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ n * Nat.factorial (2 * n) : ℚ) / (2 ^ n * Nat.factorial n : ℚ)

end

end A034940.P17825735528050624306

noncomputable section

/-- A034940: Number of rooted labeled triangular cacti with 2n+1 nodes (n triangles).

Offset 0, canonical program `A034940.P17825735528050624306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034940.P17825735528050624306.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034943.P7979161656748620110

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A034943.P7979161656748620110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A034943.P7979161656748620110

noncomputable section

/-- A034943: Binomial transform of Padovan sequence A000931.

Offset 0, canonical program `A034943.P7979161656748620110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034943 (n : ℕ) : ℤ :=
  A034943.P7979161656748620110.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034967.P16157503375017703933

`9*n*10^n/2`
-/

namespace A034967.P16157503375017703933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (n * 10 ^ n) : ℚ) / 2

end

end A034967.P16157503375017703933

noncomputable section

/-- A034967: Sum of digits of numbers between 0 and (10^n)-1.

Offset 0, canonical program `A034967.P16157503375017703933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034967.P16157503375017703933.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034999.P17711535715265857596

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A034999.P17711535715265857596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  6 * a (n - 1) - 7 * a (n - 2)

end

end A034999.P17711535715265857596

noncomputable section

/-- A034999: Number of ways to cut a 2 X n rectangle into rectangles with integer sides.

Offset 0, canonical program `A034999.P17711535715265857596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034999 (n : ℕ) : ℤ :=
  A034999.P17711535715265857596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035005.P12524543425735432829

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=56, a(3)=152`
-/

namespace A035005.P12524543425735432829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 56, 152] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A035005.P12524543425735432829

noncomputable section

/-- A035005: Number of possible queen moves on an n X n chessboard.

Offset 1, canonical program `A035005.P12524543425735432829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035005 (n : ℕ) : ℤ :=
  A035005.P12524543425735432829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035006.P15763753534881694907

`2*(n²+2*n+1)*n`
-/

namespace A035006.P15763753534881694907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + 2 * n + 1) * n

end

end A035006.P15763753534881694907

noncomputable section

/-- A035006: Number of possible rook moves on an n X n chessboard.

Offset 1, canonical program `A035006.P15763753534881694907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035006 (n : ℕ) : ℤ :=
  (A035006.P15763753534881694907.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035008.P11422251975131150250

`8*n*(n+1)`
-/

namespace A035008.P11422251975131150250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n * (n + 1))

end

end A035008.P11422251975131150250

noncomputable section

/-- A035008: Total number of possible knight moves on an (n+2) X (n+2) chessboard, if the knight is placed anywhere.

Offset 0, canonical program `A035008.P11422251975131150250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035008 (n : ℕ) : ℤ :=
  (A035008.P11422251975131150250.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035071.P7959397829130865033

`ceil(sqrt(4*10^n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035071.P7959397829130865033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 * 10 ^ n : ℝ)⌉

end

end A035071.P7959397829130865033

noncomputable section

/-- A035071: a(n) = ceiling(sqrt(4*10^n)).

Offset 0, canonical program `A035071.P7959397829130865033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(4*10^n))` (program `A035071.P7959397829130865033`, by `A035071.P7959397829130865033.correct`). Lean does not check the parsing of the name. -/
def A035071 (n : ℕ) : ℤ :=
  A035071.P7959397829130865033.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(4*10^n))` (program `A035071.P7959397829130865033`, by `A035071.P7959397829130865033.correct`). Lean does not check the parsing of the name. -/
def A035071.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A035104.P13366377584109428424

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13`
-/

namespace A035104.P13366377584109428424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 13] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A035104.P13366377584109428424

noncomputable section

/-- A035104: First differences give (essentially) A028242.

Offset 0, canonical program `A035104.P13366377584109428424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035104 (n : ℕ) : ℤ :=
  A035104.P13366377584109428424.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035106.P11758613023903401990

`a(n-1)+a(n-2)-a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A035106.P11758613023903401990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + 1

end

end A035106.P11758613023903401990

noncomputable section

/-- A035106: 1, together with numbers of the form k*(k+1) or k*(k+2), k > 0.

Offset 1, canonical program `A035106.P11758613023903401990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035106 (n : ℕ) : ℤ :=
  A035106.P11758613023903401990.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035107.P5756801037573207619

`(4*n^3+54*n²+212*n+153-9*(-1)^n)/48`
-/

namespace A035107.P5756801037573207619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 + 54 * n ^ 2 + 212 * n : ℤ) + (153 - 9 * (-1) ^ n) : ℚ) / 48

end

end A035107.P5756801037573207619

noncomputable section

/-- A035107: First differences give (essentially) A028242.

Offset 0, canonical program `A035107.P5756801037573207619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035107 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A035107.P5756801037573207619.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035286.P1855005940931235741

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=32, a(3)=156, a(4)=456`
-/

namespace A035286.P1855005940931235741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 32, 156, 456] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A035286.P1855005940931235741

noncomputable section

/-- A035286: Number of ways to place a non-attacking white and black king on n X n chessboard.

Offset 1, canonical program `A035286.P1855005940931235741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035286 (n : ℕ) : ℤ :=
  A035286.P1855005940931235741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035287.P16843695516421463004

`(n²+n)²`
-/

namespace A035287.P16843695516421463004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ 2

end

end A035287.P16843695516421463004

noncomputable section

/-- A035287: Number of ways to place a non-attacking white and black rook on n X n chessboard.

Offset 1, canonical program `A035287.P16843695516421463004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035287 (n : ℕ) : ℤ :=
  (A035287.P16843695516421463004.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035287.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035288.P6990566060333130540

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=8, a(2)=52, a(3)=184, a(4)=480`
-/

namespace A035288.P6990566060333130540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 52, 184, 480] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A035288.P6990566060333130540

noncomputable section

/-- A035288: Number of ways to place a non-attacking white and black bishop on n X n chessboard.

Offset 1, canonical program `A035288.P6990566060333130540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035288 (n : ℕ) : ℤ :=
  A035288.P6990566060333130540.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035337.P15658283184296275475

`3*floor((n+1)*ϕ)+2*n`
-/

namespace A035337.P15658283184296275475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n + 1 : ℝ) * Real.goldenRatio⌋ + (2 * n : ℤ)

end

end A035337.P15658283184296275475

noncomputable section

/-- A035337: Third column of Wythoff array.

Offset 0, canonical program `A035337.P15658283184296275475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035337 (n : ℕ) : ℤ :=
  A035337.P15658283184296275475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035338.P2157780946682709003

`5*floor((n+1)*ϕ)+3*n`
-/

namespace A035338.P2157780946682709003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(n + 1 : ℝ) * Real.goldenRatio⌋ + (3 * n : ℤ)

end

end A035338.P2157780946682709003

noncomputable section

/-- A035338: 4th column of Wythoff array.

Offset 0, canonical program `A035338.P2157780946682709003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035338 (n : ℕ) : ℤ :=
  A035338.P2157780946682709003.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035471.P11443095032712327449

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=48, a(3)=152, a(4)=352`
-/

namespace A035471.P11443095032712327449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 48, 152, 352] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A035471.P11443095032712327449

noncomputable section

/-- A035471: Coordination sequence for lattice D*_4 (with edges defined by l_1 norm = 1).

Offset 0, canonical program `A035471.P11443095032712327449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035471 (n : ℕ) : ℤ :=
  A035471.P11443095032712327449.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035508.P4733261152406156524

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A035508.P4733261152406156524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 3)

end

end A035508.P4733261152406156524

noncomputable section

/-- A035508: a(n) = Fibonacci(2*n+2) - 1.

Offset 0, canonical program `A035508.P4733261152406156524`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035508 (n : ℕ) : ℤ :=
  A035508.P4733261152406156524.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035597.P2877365526569650475

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=12, a(3)=38`
-/

namespace A035597.P2877365526569650475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 12, 38] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A035597.P2877365526569650475

noncomputable section

/-- A035597: Number of points of L1 norm 3 in cubic lattice Z^n.

Offset 0, canonical program `A035597.P2877365526569650475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035597 (n : ℕ) : ℤ :=
  A035597.P2877365526569650475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035600.P16790839402554441971

`(4*n^6+40*n^4+46*n²)/45`
-/

namespace A035600.P16790839402554441971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 6 + 40 * n ^ 4 + 46 * n ^ 2 : ℚ) / 45

end

end A035600.P16790839402554441971

noncomputable section

/-- A035600: Number of points of L1 norm 6 in cubic lattice Z^n.

Offset 0, canonical program `A035600.P16790839402554441971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035600 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A035600.P16790839402554441971.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035601.P1303867217452346543

`(8*n^7+140*n^5+392*n^3+90*n)/315`
-/

namespace A035601.P1303867217452346543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 7 + 140 * n ^ 5 + 392 * n ^ 3 + 90 * n : ℚ) / 315

end

end A035601.P1303867217452346543

noncomputable section

/-- A035601: Number of points of L1 norm 7 in cubic lattice Z^n.

Offset 0, canonical program `A035601.P1303867217452346543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035601 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A035601.P1303867217452346543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035602.P15886527680312708843

`2*n²*(n^6+28*n^4+154*n²+132)/315`
-/

namespace A035602.P15886527680312708843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℚ) * ((n ^ 6 + 28 * n ^ 4 + 154 * n ^ 2 + 132 : ℚ) / 315)

end

end A035602.P15886527680312708843

noncomputable section

/-- A035602: Number of points of L1 norm 8 in cubic lattice Z^n.

Offset 0, canonical program `A035602.P15886527680312708843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035602 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A035602.P15886527680312708843.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035608.P17262474454235609735

`floor((n+1/4)²)`
-/

namespace A035608.P17262474454235609735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) + (1 : ℚ) / 4) ^ 2⌋

end

end A035608.P17262474454235609735

noncomputable section

/-- A035608: Expansion of g.f. x*(1 + 3*x)/((1 + x)*(1 - x)^3).

Offset 0, canonical program `A035608.P17262474454235609735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035608 (n : ℕ) : ℤ :=
  A035608.P17262474454235609735.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035936.P428761183194597142

`floor((n+1)^(3/2))-floor(n^(3/2))`
-/

namespace A035936.P428761183194597142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ - ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A035936.P428761183194597142

noncomputable section

/-- A035936: Number of squares in (n^3, (n+1)^3 ].

Offset 0, canonical program `A035936.P428761183194597142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035936 (n : ℕ) : ℤ :=
  A035936.P428761183194597142.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036117.P2628498476153642686

`a(n-1)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=5, a(5)=10`
-/

namespace A036117.P2628498476153642686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 5, 10] fun n a =>
  a (n - 1) - a (n - 5) + a (n - 6)

end

end A036117.P2628498476153642686

noncomputable section

/-- A036117: a(n) = 2^n mod 11.

Offset 0, canonical program `A036117.P2628498476153642686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036117 (n : ℕ) : ℤ :=
  A036117.P2628498476153642686.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036118.P12126511094456112330

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=3, a(5)=6, a(6)=12`
-/

namespace A036118.P12126511094456112330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 3, 6, 12] fun n a =>
  a (n - 1) - a (n - 6) + a (n - 7)

end

end A036118.P12126511094456112330

noncomputable section

/-- A036118: a(n) = 2^n mod 13.

Offset 0, canonical program `A036118.P12126511094456112330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036118 (n : ℕ) : ℤ :=
  A036118.P12126511094456112330.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036119.P1353517311341971522

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=10, a(4)=13, a(5)=5, a(6)=15, a(7)=11, a(8)=16`
-/

namespace A036119.P1353517311341971522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 10, 13, 5, 15, 11, 16] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A036119.P1353517311341971522

noncomputable section

/-- A036119: a(n) = 3^n mod 17.

Offset 0, canonical program `A036119.P1353517311341971522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036119 (n : ℕ) : ℤ :=
  A036119.P1353517311341971522.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036120.P9142741214439934238

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=13, a(6)=7, a(7)=14, a(8)=9, a(9)=18`
-/

namespace A036120.P9142741214439934238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 13, 7, 14, 9, 18] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A036120.P9142741214439934238

noncomputable section

/-- A036120: a(n) = 2^n mod 19.

Offset 0, canonical program `A036120.P9142741214439934238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036120 (n : ℕ) : ℤ :=
  A036120.P9142741214439934238.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036216.P7951103676935185243

`12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` with `a(0)=1, a(1)=12, a(2)=90, a(3)=540`
-/

namespace A036216.P7951103676935185243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 90, 540] fun n a =>
  12 * a (n - 1) - 54 * a (n - 2) + 108 * a (n - 3) - 81 * a (n - 4)

end

end A036216.P7951103676935185243

noncomputable section

/-- A036216: Expansion of 1/(1 - 3*x)^4; 4-fold convolution of A000244 (powers of 3).

Offset 0, canonical program `A036216.P7951103676935185243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036216 (n : ℕ) : ℤ :=
  A036216.P7951103676935185243.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036218.P11853179693375606283

`n%24`
-/

namespace A036218.P11853179693375606283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 24

end

end A036218.P11853179693375606283

noncomputable section

/-- A036218: Hours recorded by a 24-hour clock.

Offset 0, canonical program `A036218.P11853179693375606283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036218 (n : ℕ) : ℤ :=
  (A036218.P11853179693375606283.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036239.P10220398326125679203

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=2, a(2)=15, a(3)=80`
-/

namespace A036239.P10220398326125679203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 15, 80] fun n a =>
  10 * a (n - 1) - 35 * a (n - 2) + 50 * a (n - 3) - 24 * a (n - 4)

end

end A036239.P10220398326125679203

noncomputable section

/-- A036239: Number of 2-element intersecting families of an n-element set; number of 2-way interactions when 2 subsets of power set on {1..n} are chosen at random.

Offset 1, canonical program `A036239.P10220398326125679203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036239 (n : ℕ) : ℤ :=
  A036239.P10220398326125679203.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036243.P13089295294322053837

`2*n*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A036243.P13089295294322053837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (n * a (n - 1)) + a (n - 2)

end

end A036243.P13089295294322053837

noncomputable section

/-- A036243: Denominator of fraction equal to the continued fraction [ 0, 2, 4, ...2n ].

Offset 0, canonical program `A036243.P13089295294322053837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036243 (n : ℕ) : ℤ :=
  (A036243.P13089295294322053837.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036258.P3684989130183971127

`15*a(n-1)-45*a(n-2)-75*a(n-3)+250*a(n-4)` with `a(0)=1, a(1)=9, a(2)=90, a(3)=945`
-/

namespace A036258.P3684989130183971127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 90, 945] fun n a =>
  15 * a (n - 1) - 45 * a (n - 2) - 75 * a (n - 3) + 250 * a (n - 4)

end

end A036258.P3684989130183971127

noncomputable section

/-- A036258: Number of inequivalent strings of n digits, when 2 strings are equivalent if turning 1 upside down gives the other.

Offset 0, canonical program `A036258.P3684989130183971127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036258 (n : ℕ) : ℤ :=
  A036258.P3684989130183971127.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036287.P14305098655686935919

`2^(3*2^n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036287.P14305098655686935919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (3 * 2 ^ n) : ℤ) - 1

end

end A036287.P14305098655686935919

noncomputable section

/-- A036287: a(n) = ((2^(3*(2^n))) - 1).

Offset 0, canonical program `A036287.P14305098655686935919`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(3*2^n)-1` (program `A036287.P14305098655686935919`, by `A036287.P14305098655686935919.correct`). Lean does not check the parsing of the name. -/
def A036287 (n : ℕ) : ℤ :=
  A036287.P14305098655686935919.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(3*2^n)-1` (program `A036287.P14305098655686935919`, by `A036287.P14305098655686935919.correct`). Lean does not check the parsing of the name. -/
def A036287.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036290.P14426312610098043207

`3^n*n`
-/

namespace A036290.P14426312610098043207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * n

end

end A036290.P14426312610098043207

noncomputable section

/-- A036290: a(n) = n*3^n.

Offset 0, canonical program `A036290.P14426312610098043207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036290 (n : ℕ) : ℤ :=
  (A036290.P14426312610098043207.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036410.P15365243418369597704

`ceil((n+1)²/12)`
-/

namespace A036410.P15365243418369597704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 12⌉

end

end A036410.P15365243418369597704

noncomputable section

/-- A036410: G.f.: (1+x^6)/((1-x)*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A036410.P15365243418369597704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036410 (n : ℕ) : ℤ :=
  A036410.P15365243418369597704.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036495.P10875062870581240758

`round(n^(11/2))`
-/

namespace A036495.P10875062870581240758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((11 : ℚ) / 2 : ℝ))

end

end A036495.P10875062870581240758

noncomputable section

/-- A036495: Nearest integer to n^(11/2).

Offset 0, canonical program `A036495.P10875062870581240758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036495 (n : ℕ) : ℤ :=
  A036495.P10875062870581240758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036498.P10792739925690994335

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=5, a(2)=7, a(3)=22, a(4)=26`
-/

namespace A036498.P10792739925690994335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 7, 22, 26] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A036498.P10792739925690994335

noncomputable section

/-- A036498: Numbers of the form m*(6*m-1) and m*(6*m+1), where m is an integer.

Offset 1, canonical program `A036498.P10792739925690994335`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036498 (n : ℕ) : ℤ :=
  A036498.P10792739925690994335.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036499.P1326911873480367785

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=15, a(4)=35`
-/

namespace A036499.P1326911873480367785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 12, 15, 35] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A036499.P1326911873480367785

noncomputable section

/-- A036499: Numbers of the form k*(k+1)/6 for k = 2 or 3 modulo 6.

Offset 1, canonical program `A036499.P1326911873480367785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036499 (n : ℕ) : ℤ :=
  A036499.P1326911873480367785.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036542.P16399704563412289264

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=34`
-/

namespace A036542.P16399704563412289264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11, 34] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 12 * a (n - 3) - 4 * a (n - 4)

end

end A036542.P16399704563412289264

noncomputable section

/-- A036542: a(n) = T(n,n), array T given by A047858.

Offset 0, canonical program `A036542.P16399704563412289264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036542 (n : ℕ) : ℤ :=
  A036542.P16399704563412289264.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036543.P5163786072325499439

`4*3^n-3`
-/

namespace A036543.P5163786072325499439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 3 ^ n : ℤ) - 3

end

end A036543.P5163786072325499439

noncomputable section

/-- A036543: a(n) = T(3,n), array T given by A048471.

Offset 0, canonical program `A036543.P5163786072325499439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036543 (n : ℕ) : ℤ :=
  A036543.P5163786072325499439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036544.P9728092277201156022

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A036544.P9728092277201156022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 8] fun n a =>
  12 * a (n - 1) - 21 * a (n - 2) + 10 * a (n - 3)

end

end A036544.P9728092277201156022

noncomputable section

/-- A036544: a(n) = (2*(1 + n + (((10^n-1)/9) - n)/9)).

Offset 0, canonical program `A036544.P9728092277201156022`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036544 (n : ℕ) : ℤ :=
  A036544.P9728092277201156022.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036545.P10477077024341625309

`8*3^n-7`
-/

namespace A036545.P10477077024341625309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 3 ^ n : ℤ) - 7

end

end A036545.P10477077024341625309

noncomputable section

/-- A036545: a(n) = T(4,n), array T given by A048471.

Offset 0, canonical program `A036545.P10477077024341625309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036545 (n : ℕ) : ℤ :=
  A036545.P10477077024341625309.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036546.P11218812028669592346

`16*3^n-15`
-/

namespace A036546.P11218812028669592346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * 3 ^ n : ℤ) - 15

end

end A036546.P11218812028669592346

noncomputable section

/-- A036546: a(n) = T(5,n), array T given by A048471.

Offset 0, canonical program `A036546.P11218812028669592346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036546 (n : ℕ) : ℤ :=
  A036546.P11218812028669592346.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036547.P8961781053565525089

`32*3^n-31`
-/

namespace A036547.P8961781053565525089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * 3 ^ n : ℤ) - 31

end

end A036547.P8961781053565525089

noncomputable section

/-- A036547: a(n) = T(6,n), array T given by A048471.

Offset 0, canonical program `A036547.P8961781053565525089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036547 (n : ℕ) : ℤ :=
  A036547.P8961781053565525089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036548.P2748310777499833017

`64*3^n-63`
-/

namespace A036548.P2748310777499833017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * 3 ^ n : ℤ) - 63

end

end A036548.P2748310777499833017

noncomputable section

/-- A036548: a(n) = T(7,n), array T given by A048471.

Offset 0, canonical program `A036548.P2748310777499833017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036548 (n : ℕ) : ℤ :=
  A036548.P2748310777499833017.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036549.P2639299217749662331

`128*3^n-127`
-/

namespace A036549.P2639299217749662331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (128 * 3 ^ n : ℤ) - 127

end

end A036549.P2639299217749662331

noncomputable section

/-- A036549: a(n) = T(8,n), array T given by A048471.

Offset 0, canonical program `A036549.P2639299217749662331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036549 (n : ℕ) : ℤ :=
  A036549.P2639299217749662331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036550.P10235174199096628714

`1/2*(3^(n+1)-2^(n+2)+2*n+3)`
-/

namespace A036550.P10235174199096628714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((3 ^ (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ) + (2 * n : ℤ) + 3 : ℚ)

end

end A036550.P10235174199096628714

noncomputable section

/-- A036550: a(n) = T(0,n) + T(1,n-1) + ... + T(n,0), array T given by A048471.

Offset 0, canonical program `A036550.P10235174199096628714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036550.P10235174199096628714.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036551.P16636008447867567606

`2^(n-1)*(3^n-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036551.P16636008447867567606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ n : ℤ) - 1 : ℚ) + 1

end

end A036551.P16636008447867567606

noncomputable section

/-- A036551: a(n) = 2^(n-1)*(3^n-1) + 1.

Offset 0, canonical program `A036551.P16636008447867567606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036551.P16636008447867567606.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036563.P14379664973589772586

`2*a(n-1)+3` with `a(0)=-2`
-/

namespace A036563.P14379664973589772586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  2 * a (n - 1) + 3

end

end A036563.P14379664973589772586

noncomputable section

/-- A036563: a(n) = 2^n - 3.

Offset 0, canonical program `A036563.P14379664973589772586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036563 (n : ℕ) : ℤ :=
  A036563.P14379664973589772586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036571.P7046767105541076495

`a(n-1)+2^(2*n-floor(1/2*(1+sqrt(8*n-7)))-1)` with `a(0)=0`
-/

namespace A036571.P7046767105541076495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((2 * n : ℤ) - ⌊((1 : ℚ) / 2 : ℝ) * (1 + Real.sqrt ((8 * n : ℤ) - 7 : ℝ))⌋ - 1 : ℤ)

end

end A036571.P7046767105541076495

noncomputable section

/-- A036571: Binary packing of Connell sequence (shifted once right).

Offset 0, canonical program `A036571.P7046767105541076495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036571.P7046767105541076495.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036571.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036572.P184159588589478786

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=6, a(2)=10, a(3)=14`
-/

namespace A036572.P184159588589478786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 10, 14] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A036572.P184159588589478786

noncomputable section

/-- A036572: Number of tetrahedra in largest triangulation of polygonal prism with regular polygonal base.

Offset 3, canonical program `A036572.P184159588589478786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036572 (n : ℕ) : ℤ :=
  A036572.P184159588589478786.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036573.P12277375506103141661

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=8, a(2)=12, a(3)=17`
-/

namespace A036573.P12277375506103141661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 12, 17] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A036573.P12277375506103141661

noncomputable section

/-- A036573: Size of maximal triangulation of an n-antiprism with regular polygonal base.

Offset 3, canonical program `A036573.P12277375506103141661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036573 (n : ℕ) : ℤ :=
  A036573.P12277375506103141661.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036659.P3229729130200170182

`2+(3*n*n+10*n+11)*n/2`
-/

namespace A036659.P3229729130200170182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 + (3 * (n * n) + 10 * n + 11 : ℚ) * ((n : ℚ) / 2)

end

end A036659.P3229729130200170182

noncomputable section

/-- A036659: Product of n with sum of next n consecutive integers.

Offset 1, canonical program `A036659.P3229729130200170182`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036659.P3229729130200170182.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036781.P10484205357746088963

`a(n-1)+1+n!` with `a(0)=1`
-/

namespace A036781.P10484205357746088963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 + Nat.factorial n)

end

end A036781.P10484205357746088963

noncomputable section

/-- A036781: a(n) = n + Sum_{k=0..n} k!.

Offset 0, canonical program `A036781.P10484205357746088963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036781 (n : ℕ) : ℤ :=
  (A036781.P10484205357746088963.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036799.P14395558741831071739

`2^(n+1)*(n-1)+2`
-/

namespace A036799.P14395558741831071739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ((n : ℤ) - 1) + 2

end

end A036799.P14395558741831071739

noncomputable section

/-- A036799: a(n) = 2 + 2^(n+1)*(n-1).

Offset 0, canonical program `A036799.P14395558741831071739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036799 (n : ℕ) : ℤ :=
  A036799.P14395558741831071739.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036800.P2855802462570540370

`2^(n+1)*(3-2*n+n²)-6`
-/

namespace A036800.P2855802462570540370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (3 - (2 * n : ℤ) + (n ^ 2 : ℤ)) - 6

end

end A036800.P2855802462570540370

noncomputable section

/-- A036800: a(n) = -6 + 2^(n+1)*(3 - 2*n + n^2).

Offset 0, canonical program `A036800.P2855802462570540370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036800 (n : ℕ) : ℤ :=
  A036800.P2855802462570540370.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036826.P77442619776099478

`2^n*(3-2*n+n²)-3`
-/

namespace A036826.P77442619776099478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (3 - (2 * n : ℤ) + (n ^ 2 : ℤ)) - 3

end

end A036826.P77442619776099478

noncomputable section

/-- A036826: a(n) = A036800(n)/2.

Offset 0, canonical program `A036826.P77442619776099478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036826 (n : ℕ) : ℤ :=
  A036826.P77442619776099478.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036827.P8929185031177718480

`2^(n+1)*(n^3-3*n²+9*n-13)+26`
-/

namespace A036827.P8929185031177718480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (9 * n : ℤ) - 13) + 26

end

end A036827.P8929185031177718480

noncomputable section

/-- A036827: a(n) = 26 + 2^(n+1)*(-13 +9*n -3*n^2 +n^3).

Offset 0, canonical program `A036827.P8929185031177718480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036827 (n : ℕ) : ℤ :=
  A036827.P8929185031177718480.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036828.P9464040272662735202

`2^n*(n^3-3*n²+9*n-13)+13`
-/

namespace A036828.P9464040272662735202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (9 * n : ℤ) - 13) + 13

end

end A036828.P9464040272662735202

noncomputable section

/-- A036828: A036827/2.

Offset 0, canonical program `A036828.P9464040272662735202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036828 (n : ℕ) : ℤ :=
  A036828.P9464040272662735202.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036987.P1789601236562705309

`ceil(log2(n+2))-ceil(log2(n+1))`
-/

namespace A036987.P1789601236562705309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉ - ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A036987.P1789601236562705309

noncomputable section

/-- A036987: Fredholm-Rueppel sequence.

Offset 0, canonical program `A036987.P1789601236562705309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036987 (n : ℕ) : ℤ :=
  A036987.P1789601236562705309.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037078.P3480676586563159969

`3*a(n-2)+a(n-3)-3*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7`
-/

namespace A037078.P3480676586563159969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 7] fun n a =>
  3 * a (n - 2) + a (n - 3) - 3 * a (n - 5)

end

end A037078.P3480676586563159969

noncomputable section

/-- A037078: In ternary expansion of n, reading from right to left, digits occur in order ...,0,1,2,0,1,2,...

Offset 0, canonical program `A037078.P3480676586563159969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037078 (n : ℕ) : ℤ :=
  A037078.P3480676586563159969.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037085.P10307067740225399944

`floor(n*π²)`
-/

namespace A037085.P10307067740225399944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

end

end A037085.P10307067740225399944

noncomputable section

/-- A037085: Beatty sequence for Pi^2.

Offset 0, canonical program `A037085.P10307067740225399944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037085 (n : ℕ) : ℤ :=
  A037085.P10307067740225399944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037086.P12022782348025281506

`floor(n*sqrt(π))`
-/

namespace A037086.P12022782348025281506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt Real.pi⌋

end

end A037086.P12022782348025281506

noncomputable section

/-- A037086: Beatty sequence for sqrt(Pi).

Offset 0, canonical program `A037086.P12022782348025281506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037086 (n : ℕ) : ℤ :=
  A037086.P12022782348025281506.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037087.P3414121346300097063

`floor(n*e^(1/e))`
-/

namespace A037087.P3414121346300097063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.exp 1 ^ (1 / Real.exp 1)⌋

end

end A037087.P3414121346300097063

noncomputable section

/-- A037087: Beatty sequence for e^(1/e).

Offset 0, canonical program `A037087.P3414121346300097063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037087 (n : ℕ) : ℤ :=
  A037087.P3414121346300097063.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037124.P10531659379818548989

`10*a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`
-/

namespace A037124.P10531659379818548989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7, 8, 9] fun n a =>
  10 * a (n - 9)

end

end A037124.P10531659379818548989

noncomputable section

/-- A037124: Numbers that contain only one nonzero digit.

Offset 1, canonical program `A037124.P10531659379818548989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037124 (n : ℕ) : ℤ :=
  (A037124.P10531659379818548989.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037156.P2936529416865772698

`110*a(n-1)-1000*a(n-2)` with `a(0)=1, a(1)=55`
-/

namespace A037156.P2936529416865772698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 55] fun n a =>
  110 * a (n - 1) - 1000 * a (n - 2)

end

end A037156.P2936529416865772698

noncomputable section

/-- A037156: a(n) = 10^n*(10^n+1)/2.

Offset 0, canonical program `A037156.P2936529416865772698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037156 (n : ℕ) : ℤ :=
  A037156.P2936529416865772698.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037182.P6753773557534546412

`110*a(n-1)-1000*a(n-2)` with `a(0)=0, a(1)=45`
-/

namespace A037182.P6753773557534546412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 45] fun n a =>
  110 * a (n - 1) - 1000 * a (n - 2)

end

end A037182.P6753773557534546412

noncomputable section

/-- A037182: a(n) = 10^n*(10^n-1)/2.

Offset 0, canonical program `A037182.P6753773557534546412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037182 (n : ℕ) : ℤ :=
  A037182.P6753773557534546412.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037235.P13056897289140002525

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13`
-/

namespace A037235.P13056897289140002525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 13] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A037235.P13056897289140002525

noncomputable section

/-- A037235: a(n) = n*(2*n^2 - 3*n + 4)/3.

Offset 0, canonical program `A037235.P13056897289140002525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037235 (n : ℕ) : ℤ :=
  A037235.P13056897289140002525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037236.P1227965196782982956

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=12, a(2)=32, a(3)=68`
-/

namespace A037236.P1227965196782982956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 32, 68] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A037236.P1227965196782982956

noncomputable section

/-- A037236: Expansion of (3+2*x^2)/(1-x)^4.

Offset 0, canonical program `A037236.P1227965196782982956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037236 (n : ℕ) : ℤ :=
  A037236.P1227965196782982956.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037237.P7909188683932824269

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=12, a(2)=31, a(3)=64`
-/

namespace A037237.P7909188683932824269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 31, 64] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A037237.P7909188683932824269

noncomputable section

/-- A037237: Expansion of (3 + x^2) / (1 - x)^4.

Offset 0, canonical program `A037237.P7909188683932824269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037237 (n : ℕ) : ℤ :=
  A037237.P7909188683932824269.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037255.P10452294254245880788

`(n^4-2*n^3+7*n²+2*n)/8`
-/

namespace A037255.P10452294254245880788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (2 * n ^ 3 : ℤ) + (7 * n ^ 2 : ℤ) + (2 * n : ℤ) : ℚ) / 8

end

end A037255.P10452294254245880788

noncomputable section

/-- A037255: For n weights, number of combinations when limited to two weights per pan.

Offset 0, canonical program `A037255.P10452294254245880788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037255 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037255.P10452294254245880788.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037270.P2151832567254615611

`a(n-1)+n^3+(n-1)^3` with `a(0)=0`
-/

namespace A037270.P2151832567254615611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 3 : ℤ) + ((n : ℤ) - 1) ^ 3

end

end A037270.P2151832567254615611

noncomputable section

/-- A037270: a(n) = n^2*(n^2 + 1)/2.

Offset 0, canonical program `A037270.P2151832567254615611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037270 (n : ℕ) : ℤ :=
  A037270.P2151832567254615611.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037480.P5278072409334160727

`2*a(n-1)+3*a(n-2)+3` with `a(0)=1, a(1)=5`
-/

namespace A037480.P5278072409334160727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 3

end

end A037480.P5278072409334160727

noncomputable section

/-- A037480: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

Offset 1, canonical program `A037480.P5278072409334160727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037480 (n : ℕ) : ℤ :=
  (A037480.P5278072409334160727.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037481.P10494666032556963771

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A037481.P10494666032556963771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  4 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A037481.P10494666032556963771

noncomputable section

/-- A037481: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

Offset 0, canonical program `A037481.P10494666032556963771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037481 (n : ℕ) : ℤ :=
  A037481.P10494666032556963771.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037482.P2219289928729598603

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=7, a(2)=36`
-/

namespace A037482.P2219289928729598603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 36] fun n a =>
  5 * a (n - 1) + a (n - 2) - 5 * a (n - 3)

end

end A037482.P2219289928729598603

noncomputable section

/-- A037482: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

Offset 1, canonical program `A037482.P2219289928729598603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037482 (n : ℕ) : ℤ :=
  A037482.P2219289928729598603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037483.P10990877128170278243

`5*a(n-1)+6*a(n-2)+3` with `a(0)=1, a(1)=8`
-/

namespace A037483.P10990877128170278243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  5 * a (n - 1) + 6 * a (n - 2) + 3

end

end A037483.P10990877128170278243

noncomputable section

/-- A037483: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

Offset 1, canonical program `A037483.P10990877128170278243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037483 (n : ℕ) : ℤ :=
  (A037483.P10990877128170278243.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037484.P8053303010544516777

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=9, a(2)=64`
-/

namespace A037484.P8053303010544516777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 64] fun n a =>
  7 * a (n - 1) + a (n - 2) - 7 * a (n - 3)

end

end A037484.P8053303010544516777

noncomputable section

/-- A037484: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

Offset 1, canonical program `A037484.P8053303010544516777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037484 (n : ℕ) : ℤ :=
  A037484.P8053303010544516777.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037485.P11695239398446449233

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=10, a(2)=81`
-/

namespace A037485.P11695239398446449233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 81] fun n a =>
  8 * a (n - 1) + a (n - 2) - 8 * a (n - 3)

end

end A037485.P11695239398446449233

noncomputable section

/-- A037485: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

Offset 1, canonical program `A037485.P11695239398446449233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037485 (n : ℕ) : ℤ :=
  A037485.P11695239398446449233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037487.P11004034175781705646

`10*a(n-1)+a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=12, a(2)=121`
-/

namespace A037487.P11004034175781705646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 121] fun n a =>
  10 * a (n - 1) + a (n - 2) - 10 * a (n - 3)

end

end A037487.P11004034175781705646

noncomputable section

/-- A037487: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2.

Offset 1, canonical program `A037487.P11004034175781705646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037487 (n : ℕ) : ℤ :=
  A037487.P11004034175781705646.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037488.P15133340106791633188

`3*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=7, a(2)=23`
-/

namespace A037488.P15133340106791633188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 23] fun n a =>
  3 * a (n - 1) + a (n - 2) - 3 * a (n - 3)

end

end A037488.P15133340106791633188

noncomputable section

/-- A037488: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037488.P15133340106791633188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037488 (n : ℕ) : ℤ :=
  A037488.P15133340106791633188.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037489.P11356628586925819228

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=9, a(2)=38`
-/

namespace A037489.P11356628586925819228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 38] fun n a =>
  4 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A037489.P11356628586925819228

noncomputable section

/-- A037489: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037489.P11356628586925819228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037489 (n : ℕ) : ℤ :=
  A037489.P11356628586925819228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037490.P7366785758651936149

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=2, a(1)=11, a(2)=57`
-/

namespace A037490.P7366785758651936149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11, 57] fun n a =>
  5 * a (n - 1) + a (n - 2) - 5 * a (n - 3)

end

end A037490.P7366785758651936149

noncomputable section

/-- A037490: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037490.P7366785758651936149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037490 (n : ℕ) : ℤ :=
  A037490.P7366785758651936149.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037491.P9979592323610380005

`6*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=2, a(1)=13, a(2)=80`
-/

namespace A037491.P9979592323610380005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 13, 80] fun n a =>
  6 * a (n - 1) + a (n - 2) - 6 * a (n - 3)

end

end A037491.P9979592323610380005

noncomputable section

/-- A037491: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037491.P9979592323610380005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037491 (n : ℕ) : ℤ :=
  A037491.P9979592323610380005.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037492.P12534664945778785394

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=2, a(1)=15, a(2)=107`
-/

namespace A037492.P12534664945778785394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 15, 107] fun n a =>
  7 * a (n - 1) + a (n - 2) - 7 * a (n - 3)

end

end A037492.P12534664945778785394

noncomputable section

/-- A037492: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037492.P12534664945778785394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037492 (n : ℕ) : ℤ :=
  A037492.P12534664945778785394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037492.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037493.P11884723274599503264

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=2, a(1)=17, a(2)=138`
-/

namespace A037493.P11884723274599503264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 17, 138] fun n a =>
  8 * a (n - 1) + a (n - 2) - 8 * a (n - 3)

end

end A037493.P11884723274599503264

noncomputable section

/-- A037493: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037493.P11884723274599503264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037493 (n : ℕ) : ℤ :=
  A037493.P11884723274599503264.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037494.P8789448745735977114

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=2, a(1)=19, a(2)=173`
-/

namespace A037494.P8789448745735977114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 19, 173] fun n a =>
  9 * a (n - 1) + a (n - 2) - 9 * a (n - 3)

end

end A037494.P8789448745735977114

noncomputable section

/-- A037494: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037494.P8789448745735977114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037494 (n : ℕ) : ℤ :=
  A037494.P8789448745735977114.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037496.P16844071048061808176

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=34`
-/

namespace A037496.P16844071048061808176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11, 34] fun n a =>
  3 * a (n - 1) + a (n - 3) - 3 * a (n - 4)

end

end A037496.P16844071048061808176

noncomputable section

/-- A037496: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037496.P16844071048061808176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037496 (n : ℕ) : ℤ :=
  A037496.P16844071048061808176.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037497.P3893065333787281505

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=18, a(3)=73`
-/

namespace A037497.P3893065333787281505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 18, 73] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037497.P3893065333787281505

noncomputable section

/-- A037497: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037497.P3893065333787281505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037497 (n : ℕ) : ℤ :=
  A037497.P3893065333787281505.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037513.P9659595459556117332

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=33, a(3)=134`
-/

namespace A037513.P9659595459556117332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 33, 134] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037513.P9659595459556117332

noncomputable section

/-- A037513: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037513.P9659595459556117332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037513 (n : ℕ) : ℤ :=
  A037513.P9659595459556117332.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037514.P4385062019052334206

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=2, a(1)=10, a(2)=51, a(3)=257`
-/

namespace A037514.P4385062019052334206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10, 51, 257] fun n a =>
  5 * a (n - 1) + a (n - 3) - 5 * a (n - 4)

end

end A037514.P4385062019052334206

noncomputable section

/-- A037514: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037514.P4385062019052334206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037514 (n : ℕ) : ℤ :=
  A037514.P4385062019052334206.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037521.P13191905454161917104

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=9, a(2)=36, a(3)=146`
-/

namespace A037521.P13191905454161917104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 36, 146] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037521.P13191905454161917104

noncomputable section

/-- A037521: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 2, 1, 0.

Offset 1, canonical program `A037521.P13191905454161917104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037521 (n : ℕ) : ℤ :=
  A037521.P13191905454161917104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037522.P18033743411906270205

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=2, a(1)=11, a(2)=55, a(3)=277`
-/

namespace A037522.P18033743411906270205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11, 55, 277] fun n a =>
  5 * a (n - 1) + a (n - 3) - 5 * a (n - 4)

end

end A037522.P18033743411906270205

noncomputable section

/-- A037522: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

Offset 1, canonical program `A037522.P18033743411906270205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037522 (n : ℕ) : ℤ :=
  A037522.P18033743411906270205.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027484.P13662491501742288329

`∑[5*C(∑[2*(n+1)]+1, 2)]`
-/

namespace A027484.P13662491501742288329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027484.P13662491501742288329

noncomputable section

/-- A027484: a(n) = n*(n^4-1)/2.

Offset 2, canonical program `A027484.P13662491501742288329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027484 (n : ℕ) : ℤ :=
  (A027484.P13662491501742288329.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027540.P9675587295394981159

`∑[∑[2^n]]*(n+3)`
-/

namespace A027540.P9675587295394981159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 3)

end

end A027540.P9675587295394981159

noncomputable section

/-- A027540: Second diagonal of A027537.

Offset 2, canonical program `A027540.P9675587295394981159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A027540 (n : ℕ) : ℤ :=
  (A027540.P9675587295394981159.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A027540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027625.P12188279484027697014

`gcd(∑[n+2]-2, ∑[∑[n]+n])`
-/

namespace A027625.P12188279484027697014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A027625.P12188279484027697014

noncomputable section

/-- A027625: Numerator of n*(n+5)/((n+2)*(n+3)).

Offset 0, canonical program `A027625.P12188279484027697014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027625 (n : ℕ) : ℤ :=
  (A027625.P12188279484027697014.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027662.P8067522077947683078

`round(sqrt((n+1)*root(10, 1/6)))`
-/

namespace A027662.P8067522077947683078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℝ) * (10 : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ))))

end

end A027662.P8067522077947683078

noncomputable section

/-- A027662: a(n)/1000 gives sqrt(n) to 3 places after the decimal point.

Offset 1, canonical program `A027662.P8067522077947683078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027662 (n : ℕ) : ℤ :=
  A027662.P8067522077947683078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027663.P15955060651168956011

`round((10*root(n+1, 10))^5)`
-/

namespace A027663.P15955060651168956011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 * (n + 1 : ℝ) ^ (1 / (10 : ℝ))) ^ 5)

end

end A027663.P15955060651168956011

noncomputable section

/-- A027663: a(n)/100000 gives sqrt(n) to 5 places after the decimal point.

Offset 1, canonical program `A027663.P15955060651168956011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027663 (n : ℕ) : ℤ :=
  A027663.P15955060651168956011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027764.P14325653007751828854

`(n+4)*C(n+4, 4)`
-/

namespace A027764.P14325653007751828854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) * Nat.choose (n + 4) 4

end

end A027764.P14325653007751828854

noncomputable section

/-- A027764: a(n) = (n+1)*binomial(n+1,4).

Offset 3, canonical program `A027764.P14325653007751828854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027764 (n : ℕ) : ℤ :=
  (A027764.P14325653007751828854.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027765.P15969066504210946878

`(n+5)*C(n+5, 5)`
-/

namespace A027765.P15969066504210946878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * Nat.choose (n + 5) 5

end

end A027765.P15969066504210946878

noncomputable section

/-- A027765: a(n) = (n+1)*binomial(n+1,5).

Offset 4, canonical program `A027765.P15969066504210946878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027765 (n : ℕ) : ℤ :=
  (A027765.P15969066504210946878.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027766.P17375202258658109674

`(n+6)*C(n+6, 6)`
-/

namespace A027766.P17375202258658109674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) * Nat.choose (n + 6) 6

end

end A027766.P17375202258658109674

noncomputable section

/-- A027766: a(n) = (n+1)*binomial(n+1,6).

Offset 5, canonical program `A027766.P17375202258658109674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027766 (n : ℕ) : ℤ :=
  (A027766.P17375202258658109674.a (n - 5) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027767.P16883382579102568469

`(n+7)*C(n+7, 7)`
-/

namespace A027767.P16883382579102568469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 7) * Nat.choose (n + 7) 7

end

end A027767.P16883382579102568469

noncomputable section

/-- A027767: a(n) = (n+1)*binomial(n+1,7).

Offset 6, canonical program `A027767.P16883382579102568469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027767 (n : ℕ) : ℤ :=
  (A027767.P16883382579102568469.a (n - 6) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027768.P1314416546218591904

`(n+8)*C(n+8, 8)`
-/

namespace A027768.P1314416546218591904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) * Nat.choose (n + 8) 8

end

end A027768.P1314416546218591904

noncomputable section

/-- A027768: a(n) = (n+1)*binomial(n+1,8).

Offset 7, canonical program `A027768.P1314416546218591904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027768 (n : ℕ) : ℤ :=
  (A027768.P1314416546218591904.a (n - 7) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027769.P5672970826222791668

`C(n+9, 9)*(n+9)`
-/

namespace A027769.P5672970826222791668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 9) 9 * (n + 9)

end

end A027769.P5672970826222791668

noncomputable section

/-- A027769: a(n) = (n+1)*binomial(n+1, 9).

Offset 8, canonical program `A027769.P5672970826222791668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027769 (n : ℕ) : ℤ :=
  (A027769.P5672970826222791668.a (n - 8) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027770.P6099860991356172846

`C(n+10, 10)*(n+10)`
-/

namespace A027770.P6099860991356172846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 10) 10 * (n + 10)

end

end A027770.P6099860991356172846

noncomputable section

/-- A027770: a(n) = (n + 1)*binomial(n + 1, 10).

Offset 9, canonical program `A027770.P6099860991356172846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027770 (n : ℕ) : ℤ :=
  (A027770.P6099860991356172846.a (n - 9) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027771.P16537692532787605954

`C(n+11, 11)*(n+11)`
-/

namespace A027771.P16537692532787605954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 11) 11 * (n + 11)

end

end A027771.P16537692532787605954

noncomputable section

/-- A027771: a(n) = (n+1)*binomial(n+1,11).

Offset 10, canonical program `A027771.P16537692532787605954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027771 (n : ℕ) : ℤ :=
  (A027771.P16537692532787605954.a (n - 10) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027772.P16626333252240484647

`(n+12)*C(n+12, 12)`
-/

namespace A027772.P16626333252240484647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 12) * Nat.choose (n + 12) 12

end

end A027772.P16626333252240484647

noncomputable section

/-- A027772: a(n) = (n+1)*binomial(n+1,12).

Offset 11, canonical program `A027772.P16626333252240484647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027772 (n : ℕ) : ℤ :=
  (A027772.P16626333252240484647.a (n - 11) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027778.P18079246842334278259

`C(n+5, 4)*∑[n+2]`
-/

namespace A027778.P18079246842334278259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027778.P18079246842334278259

noncomputable section

/-- A027778: a(n) = 5*(n+1)*binomial(n+2, 5)/2.

Offset 3, canonical program `A027778.P18079246842334278259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027778 (n : ℕ) : ℤ :=
  (A027778.P18079246842334278259.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027779.P15793238144047296622

`3*(n+5)*C(n+6, 6)`
-/

namespace A027779.P15793238144047296622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 5) * Nat.choose (n + 6) 6)

end

end A027779.P15793238144047296622

noncomputable section

/-- A027779: a(n) = 3*(n+1)*binomial(n+2,6).

Offset 4, canonical program `A027779.P15793238144047296622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027779 (n : ℕ) : ℤ :=
  (A027779.P15793238144047296622.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027780.P16706625671519067056

`C(n+7, 6)*∑[n+3]`
-/

namespace A027780.P16706625671519067056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027780.P16706625671519067056

noncomputable section

/-- A027780: a(n) = 7*(n+1)*binomial(n+2,7)/2.

Offset 5, canonical program `A027780.P16706625671519067056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027780 (n : ℕ) : ℤ :=
  (A027780.P16706625671519067056.a (n - 5) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027781.P14249041851870678386

`4*(n+7)*C(n+8, 8)`
-/

namespace A027781.P14249041851870678386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 7) * Nat.choose (n + 8) 8)

end

end A027781.P14249041851870678386

noncomputable section

/-- A027781: a(n) = 4*(n+1)*binomial(n+2,8).

Offset 6, canonical program `A027781.P14249041851870678386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027781 (n : ℕ) : ℤ :=
  (A027781.P14249041851870678386.a (n - 6) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027792.P14701166020937090442

`C(n+7, 6)*((n+3)²-4)`
-/

namespace A027792.P14701166020937090442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 6 : ℤ) * (((n + 3) ^ 2 : ℤ) - 4)

end

end A027792.P14701166020937090442

noncomputable section

/-- A027792: a(n) = 7*(n+1)*binomial(n+3,7).

Offset 4, canonical program `A027792.P14701166020937090442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027792 (n : ℕ) : ℤ :=
  A027792.P14701166020937090442.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027802.P15933870523332950980

`5*(n+3)*C(n+6, 6)`
-/

namespace A027802.P15933870523332950980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * ((n + 3) * Nat.choose (n + 6) 6)

end

end A027802.P15933870523332950980

noncomputable section

/-- A027802: a(n) = 5*(n+1)*binomial(n+4,6).

Offset 2, canonical program `A027802.P15933870523332950980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027802 (n : ℕ) : ℤ :=
  (A027802.P15933870523332950980.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027810.P9915959440047895634

`(n+1)*C(n+5, 5)`
-/

namespace A027810.P9915959440047895634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 5) 5

end

end A027810.P9915959440047895634

noncomputable section

/-- A027810: a(n) = (n+1)*binomial(n+5, 5).

Offset 0, canonical program `A027810.P9915959440047895634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027810 (n : ℕ) : ℤ :=
  (A027810.P9915959440047895634.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027811.P1361997327819684381

`C(n+6, 5)*∑[n+1]`
-/

namespace A027811.P1361997327819684381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027811.P1361997327819684381

noncomputable section

/-- A027811: a(n) = 3*(n+1)*binomial(n+5,6).

Offset 1, canonical program `A027811.P1361997327819684381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027811 (n : ℕ) : ℤ :=
  (A027811.P1361997327819684381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027812.P18259324915077861452

`7*(n+3)*C(n+7, 7)`
-/

namespace A027812.P18259324915077861452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 3) * Nat.choose (n + 7) 7

end

end A027812.P18259324915077861452

noncomputable section

/-- A027812: a(n) = 7*(n+1)*binomial(n+5,7).

Offset 2, canonical program `A027812.P18259324915077861452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027812 (n : ℕ) : ℤ :=
  (A027812.P18259324915077861452.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027818.P2026887167249722118

`(n+1)*C(n+6, 6)`
-/

namespace A027818.P2026887167249722118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 6) 6

end

end A027818.P2026887167249722118

noncomputable section

/-- A027818: a(n) = (n+1)*binomial(n+6,6).

Offset 0, canonical program `A027818.P2026887167249722118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027818 (n : ℕ) : ℤ :=
  (A027818.P2026887167249722118.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027820.P3109109739829092546

`∑[∑[n+1]]*C(n+8, 6)`
-/

namespace A027820.P3109109739829092546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.choose (n + 8) 6

end

end A027820.P3109109739829092546

noncomputable section

/-- A027820: a(n) = 28*(n+1)*binomial(n+6,8)/3.

Offset 2, canonical program `A027820.P3109109739829092546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027820 (n : ℕ) : ℤ :=
  (A027820.P3109109739829092546.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027874.P17750017900131187967

`∑[a(∑[char[3*n]]-1)+3]` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A027874.P17750017900131187967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 5] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027874.P17750017900131187967

noncomputable section

/-- A027874: Minimal degree path length of a tree with n leaves.

Offset 1, canonical program `A027874.P17750017900131187967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027874 (n : ℕ) : ℤ :=
  (A027874.P17750017900131187967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027916.P1427093150827268320

`∑[∑[2-n%3]]`
-/

namespace A027916.P1427093150827268320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P1427093150827268320

noncomputable section

/-- A027916: Least k such that 1+2+...+k >= E{1,2,...,n}, where E = 2nd elementary symmetric function.

Offset 2, canonical program `A027916.P1427093150827268320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027916 (n : ℕ) : ℤ :=
  A027916.P1427093150827268320.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027917.P8849645933797540329

`round(sqrt(2*C(n+4, 2)*C(n+4, 4)))`
-/

namespace A027917.P8849645933797540329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (Nat.choose (n + 4) 2 * Nat.choose (n + 4) 4) : ℝ))

end

end A027917.P8849645933797540329

noncomputable section

/-- A027917: a(n) = least k such that 1+2+...+k >= E{1,2,...,n}, where E is the 3rd elementary symmetric function.

Offset 3, canonical program `A027917.P8849645933797540329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A027917 (n : ℕ) : ℤ :=
  A027917.P8849645933797540329.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A027917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027922.P7994694909720208906

`round(sqrt(∑[2*(n+1)²]))`
-/

namespace A027922.P7994694909720208906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A027922.P7994694909720208906

noncomputable section

/-- A027922: Least k such that 1+2+...+k >= 1^2 + 2^2 + ... + n^2.

Offset 1, canonical program `A027922.P7994694909720208906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027922 (n : ℕ) : ℤ :=
  A027922.P7994694909720208906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027924.P3238448438817036563

`round(sqrt(2)*∑[n+1])`
-/

namespace A027924.P3238448438817036563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A027924.P3238448438817036563

noncomputable section

/-- A027924: a(n) = least k such that 1+2+...+k >= 1^3 + 2^3 + ... + n^3.

Offset 1, canonical program `A027924.P3238448438817036563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027924 (n : ℕ) : ℤ :=
  A027924.P3238448438817036563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027927.P730739472371445900

`∑[∑[C(n, 2)]+n]+1`
-/

namespace A027927.P730739472371445900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027927.P730739472371445900

noncomputable section

/-- A027927: Number of plane regions after drawing (in general position) a convex n-gon and all its diagonals.

Offset 2, canonical program `A027927.P730739472371445900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027927 (n : ℕ) : ℤ :=
  (A027927.P730739472371445900.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027928.P8837924481202588496

`∑[∑[∑[C(n, 2)]+n]+1]`
-/

namespace A027928.P8837924481202588496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027928.P8837924481202588496

noncomputable section

/-- A027928: a(n) = T(n, 2*n-5), T given by A027926.

Offset 3, canonical program `A027928.P8837924481202588496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027928 (n : ℕ) : ℤ :=
  (A027928.P8837924481202588496.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027953.P5836391319973280967

`record[-(a(n-3)+1-2*a(n-2))]` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A027953.P5836391319973280967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f1 =>
  -(f1 (n - 3) + (1 - 2 * f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P5836391319973280967

noncomputable section

/-- A027953: a(0)=1, a(n) = Fibonacci(2n+4) - (2n+3).

Offset 0, canonical program `A027953.P5836391319973280967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A027953 (n : ℕ) : ℤ :=
  A027953.P5836391319973280967.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A027953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027963.P650075073565367189

`∑[∑[∑[a(n-1)+a(n-2)]]]` with `a(0)=1, a(1)=3`
-/

namespace A027963.P650075073565367189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  f3 (n - 1) + f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P650075073565367189

noncomputable section

/-- A027963: T(n,n+3), T given by A027960.

Offset 3, canonical program `A027963.P650075073565367189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A027963 (n : ℕ) : ℤ :=
  (A027963.P650075073565367189.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A027963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027964.P4648428431722420487

`∑[∑[∑[∑[a(n-1)+a(n-2)]]]]` with `a(0)=1, a(1)=3`
-/

namespace A027964.P4648428431722420487
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f4 =>
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

end A027964.P4648428431722420487

noncomputable section

/-- A027964: T(n,n+4), T given by A027960.

Offset 4, canonical program `A027964.P4648428431722420487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A027964 (n : ℕ) : ℤ :=
  (A027964.P4648428431722420487.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A027964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027966.P7748682212342890529

`C(n+4, 4)-n²`
-/

namespace A027966.P7748682212342890529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) - (n ^ 2 : ℤ)

end

end A027966.P7748682212342890529

noncomputable section

/-- A027966: T(n, 2*n-4), T given by A027960.

Offset 2, canonical program `A027966.P7748682212342890529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027966 (n : ℕ) : ℤ :=
  A027966.P7748682212342890529.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027967.P104101127440164331

`∑[C(n+4, 4)-n²]+2`
-/

namespace A027967.P104101127440164331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A027967.P104101127440164331

noncomputable section

/-- A027967: T(n, 2*n-5), T given by A027960.

Offset 3, canonical program `A027967.P104101127440164331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027967 (n : ℕ) : ℤ :=
  A027967.P104101127440164331.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027973.P17157778531911406182

`2^n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A027973.P17157778531911406182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 ^ n + (a (n - 1) + a (n - 2))

end

end A027973.P17157778531911406182

noncomputable section

/-- A027973: a(n) = T(n,n) + T(n,n+1) + ... + T(n,2n), T given by A027960.

Offset 0, canonical program `A027973.P17157778531911406182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A027973 (n : ℕ) : ℤ :=
  (A027973.P17157778531911406182.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A027973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028243.P12621010507976503225

`3^n-∑[2^n]`
-/

namespace A028243.P12621010507976503225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A028243.P12621010507976503225

noncomputable section

/-- A028243: a(n) = 3^(n-1) - 2^n + 1 (essentially Stirling numbers of second kind).

Offset 1, canonical program `A028243.P12621010507976503225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A028243 (n : ℕ) : ℤ :=
  A028243.P12621010507976503225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A028243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028245.P2523175120099806420

`5^n-4^(n+1)+6*3^n-2^(n+2)+1`
-/

namespace A028245.P2523175120099806420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - (4 ^ (n + 1) : ℤ) + (6 * 3 ^ n : ℤ) - (2 ^ (n + 2) : ℤ) + 1

end

end A028245.P2523175120099806420

noncomputable section

/-- A028245: a(n) = 5^(n-1) - 4*4^(n-1) + 6*3^(n-1) - 4*2^(n-1) + 1 (essentially Stirling numbers of second kind).

Offset 1, canonical program `A028245.P2523175120099806420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A028245 (n : ℕ) : ℤ :=
  A028245.P2523175120099806420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A028245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028253.P8855946488650615254

`a(2%n)+n` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A028253.P8855946488650615254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 0] fun n a =>
  a (2 % n) + n

end

end A028253.P8855946488650615254

noncomputable section

/-- A028253: n mod Fibonacci(n).

Offset 1, canonical program `A028253.P8855946488650615254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028253 (n : ℕ) : ℤ :=
  (A028253.P8855946488650615254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028293.P2901531336027676159

`val(n%7+1, 2)+1`
-/

namespace A028293.P2901531336027676159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n % 7 + 1) 2 + 1

end

end A028293.P2901531336027676159

noncomputable section

/-- A028293: Period 7.

Offset 0, canonical program `A028293.P2901531336027676159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028293 (n : ℕ) : ℤ :=
  (A028293.P2901531336027676159.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028309.P13348378921944015984

`∑[a(n-2)+1]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A028309.P13348378921944015984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028309.P13348378921944015984

noncomputable section

/-- A028309: Molien series for ring of symmetrized weight enumerators of self-dual codes (with respect to Euclidean inner product) of length n over GF(4).

Offset 0, canonical program `A028309.P13348378921944015984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028309 (n : ℕ) : ℤ :=
  (A028309.P13348378921944015984.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028346.P15624539718510548098

`∑[∑[∑[∑[∑[n+1]%(n+2)]]]]`
-/

namespace A028346.P15624539718510548098
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) % (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028346.P15624539718510548098

noncomputable section

/-- A028346: Expansion of 1/((1-x)^4*(1-x^2)^2).

Offset 0, canonical program `A028346.P15624539718510548098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028346 (n : ℕ) : ℤ :=
  (A028346.P15624539718510548098.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028352.P7725361967464943559

`∑[2*Δ[(2*n+a(n-1)-1)%(2*n)]]` with `a(0)=-1`
-/

namespace A028352.P7725361967464943559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  Int.tmod ((2 * n : ℤ) + (f2 (n - 1) - 1)) (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028352.P7725361967464943559

noncomputable section

/-- A028352: A Golomb-like recurrence that decreases infinitely often.

Offset 1, canonical program `A028352.P7725361967464943559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028352 (n : ℕ) : ℤ :=
  A028352.P7725361967464943559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028357.P13766361952085088478

`∑[(gcd(6, n)+1)%6]`
-/

namespace A028357.P13766361952085088478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 n + 1) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P13766361952085088478

noncomputable section

/-- A028357: Partial sums of A028356.

Offset 0, canonical program `A028357.P13766361952085088478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028357 (n : ℕ) : ℤ :=
  (A028357.P13766361952085088478.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028814.P3698331104977267745

`∑[∑[record[∑[(-2)^n]]]]`
-/

namespace A028814.P3698331104977267745
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028814.P3698331104977267745

noncomputable section

/-- A028814: Expansion of (1-2*x)/((1-x)^3*(1-4*x)).

Offset 0, canonical program `A028814.P3698331104977267745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A028814 (n : ℕ) : ℤ :=
  A028814.P3698331104977267745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A028814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028835.P10047270723414419312

`a(n-4)+9` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A028835.P10047270723414419312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 4) + 9

end

end A028835.P10047270723414419312

noncomputable section

/-- A028835: Numbers whose iterated sum of digits is a prime.

Offset 1, canonical program `A028835.P10047270723414419312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028835 (n : ℕ) : ℤ :=
  (A028835.P10047270723414419312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028863.P15688465033488288216

`floor(cos(Δ[a(n-2)-a(n-1)]))` with `a(0)=1, a(1)=1`
-/

namespace A028863.P15688465033488288216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A028863.P15688465033488288216

noncomputable section

/-- A028863: [ cos(Fibonacci(n)) ].

Offset 0, canonical program `A028863.P15688465033488288216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A028863 (n : ℕ) : ℤ :=
  A028863.P15688465033488288216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A028863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028881.P11268468400886381584

`(n+3)²-7`
-/

namespace A028881.P11268468400886381584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - 7

end

end A028881.P11268468400886381584

noncomputable section

/-- A028881: a(n) = n^2 - 7.

Offset 3, canonical program `A028881.P11268468400886381584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028881 (n : ℕ) : ℤ :=
  A028881.P11268468400886381584.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028982.P8924659345006964944

`∪[2*(n+1)², (n+1)²]`
-/

namespace A028982.P8924659345006964944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A028982.P8924659345006964944

noncomputable section

/-- A028982: Squares and twice squares.

Offset 1, canonical program `A028982.P8924659345006964944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028982 (n : ℕ) : ℤ :=
  (A028982.P8924659345006964944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029000.P12795243510521895474

`∑[C(ceil(xor(1, n)/6)+1, 2)]`
-/

namespace A029000.P12795243510521895474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(Nat.xor 1 n : ℚ) / 6⌉ + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029000.P12795243510521895474

noncomputable section

/-- A029000: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^6)).

Offset 0, canonical program `A029000.P12795243510521895474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029000 (n : ℕ) : ℤ :=
  (A029000.P12795243510521895474.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029038.P10356634279202362763

`∑[C(floor(floor(n/3)+1-n/4)+1, 2)]`
-/

namespace A029038.P10356634279202362763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(⌊(n : ℚ) / 3⌋ : ℚ) + (1 - (n : ℚ) / 4)⌋ + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029038.P10356634279202362763

noncomputable section

/-- A029038: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^12)).

Offset 0, canonical program `A029038.P10356634279202362763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029038 (n : ℕ) : ℤ :=
  (A029038.P10356634279202362763.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029745.P17968957235829768865

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=5`
-/

namespace A029745.P17968957235829768865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 5] fun n a =>
  2 * a (n - 2)

end

end A029745.P17968957235829768865

noncomputable section

/-- A029745: Expansion of (1 + 2x + 6x^2 + x^3)/(1 - 2x^2).

Offset 1, canonical program `A029745.P17968957235829768865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A029745 (n : ℕ) : ℤ :=
  (A029745.P17968957235829768865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A029745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029746.P3582207995524018342

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A029746.P3582207995524018342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  2 * a (n - 2)

end

end A029746.P3582207995524018342

noncomputable section

/-- A029746: Numbers of the form 2^k or 7*2^k.

Offset 0, canonical program `A029746.P3582207995524018342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A029746 (n : ℕ) : ℤ :=
  (A029746.P3582207995524018342.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A029746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029837.P13040009772312583402

`floor(log2(record[xor(1, n)]))`
-/

namespace A029837.P13040009772312583402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A029837.P13040009772312583402

noncomputable section

/-- A029837: Binary order of n: log_2(n) rounded up to next integer.

Offset 1, canonical program `A029837.P13040009772312583402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029837 (n : ℕ) : ℤ :=
  (A029837.P13040009772312583402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029898.P17011348564142529168

`dr(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A029898.P17011348564142529168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.digitalRoot (2 * a (n - 1) : ℤ)

end

end A029898.P17011348564142529168

noncomputable section

/-- A029898: Pitoun's sequence: a(n+1) is digital root of a(0) + ... + a(n).

Offset 0, canonical program `A029898.P17011348564142529168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029898 (n : ℕ) : ℤ :=
  (A029898.P17011348564142529168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029919.P18125062275996792107

`round((9*14*n+n)/50)`
-/

namespace A029919.P18125062275996792107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((9 * (14 * n) + n : ℚ) / 50)

end

end A029919.P18125062275996792107

noncomputable section

/-- A029919: Convert n from inches (") to centimeters (cm).

Offset 0, canonical program `A029919.P18125062275996792107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029919 (n : ℕ) : ℤ :=
  A029919.P18125062275996792107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029920.P12059621992727629411

`round(sqrt(31*n/10*n/10/2))`
-/

namespace A029920.P12059621992727629411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (31 * ((n : ℚ) / 10) * ((n : ℚ) / 10) / 2 : ℝ))

end

end A029920.P12059621992727629411

noncomputable section

/-- A029920: Convert n from centimeters (cm) to inches (").

Offset 0, canonical program `A029920.P12059621992727629411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029920 (n : ℕ) : ℤ :=
  A029920.P12059621992727629411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030132.P9012282044205346454

`dr(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A030132.P9012282044205346454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.digitalRoot (a (n - 1) + a (n - 2) : ℤ)

end

end A030132.P9012282044205346454

noncomputable section

/-- A030132: Digital root of Fibonacci(n).

Offset 0, canonical program `A030132.P9012282044205346454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030132 (n : ℕ) : ℤ :=
  (A030132.P9012282044205346454.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030133.P6387364624159024520

`dr(a(n-1)+a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A030133.P6387364624159024520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  SequenceMachineLib.digitalRoot (a (n - 1) + a (n - 2) : ℤ)

end

end A030133.P6387364624159024520

noncomputable section

/-- A030133: a(n+1) is the sum of digits of (a(n) + a(n-1)).

Offset 0, canonical program `A030133.P6387364624159024520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030133 (n : ℕ) : ℤ :=
  (A030133.P6387364624159024520.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030139.P7803319099297458089

`dr(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A030139.P7803319099297458089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.digitalRoot (a (n - 1) + a (n - 2) : ℤ)

end

end A030139.P7803319099297458089

noncomputable section

/-- A030139: a(n+1) = sum of digits of (a(n) + a(n-1)).

Offset 0, canonical program `A030139.P7803319099297458089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030139 (n : ℕ) : ℤ :=
  (A030139.P7803319099297458089.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030192.P4920431678628459289

`6*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A030192.P4920431678628459289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A030192.P4920431678628459289

noncomputable section

/-- A030192: Scaled Chebyshev U-polynomial evaluated at sqrt(6)/2.

Offset 0, canonical program `A030192.P4920431678628459289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A030192 (n : ℕ) : ℤ :=
  A030192.P4920431678628459289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A030192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030511.P8757552661484711178

`∑[∑[∑[n+2]%3]]`
-/

namespace A030511.P8757552661484711178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P8757552661484711178

noncomputable section

/-- A030511: Graham-Sloane-type lower bound on the size of a ternary (n,3,3) constant-weight code.

Offset 3, canonical program `A030511.P8757552661484711178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030511 (n : ℕ) : ℤ :=
  (A030511.P8757552661484711178.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030530.P9694189016873719582

`∑[char[∑[ceil(abs(log2(acot(n))))]]]`
-/

namespace A030530.P9694189016873719582
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (SequenceMachineLib.acot (n : ℝ))|⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030530.P9694189016873719582

noncomputable section

/-- A030530: n appears A070939(n) times.

Offset 0, canonical program `A030530.P9694189016873719582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030530 (n : ℕ) : ℤ :=
  (A030530.P9694189016873719582.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030978.P5953882664419819838

`∑[a(n-2)+2]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=3, a(5)=5`
-/

namespace A030978.P5953882664419819838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1, 3, 5] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030978.P5953882664419819838

noncomputable section

/-- A030978: Maximal number of non-attacking knights on an n X n board.

Offset 0, canonical program `A030978.P5953882664419819838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030978 (n : ℕ) : ℤ :=
  (A030978.P5953882664419819838.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031346.P8914373458751936499

`(a(∏{digits}[n, #]%n)+1)%(1-∑{digits}[n, #]+n)` with `a(0)=0`
-/

namespace A031346.P8914373458751936499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod % n) + 1) (1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ))

end

end A031346.P8914373458751936499

noncomputable section

/-- A031346: Multiplicative persistence: number of iterations of "multiply digits" needed to reach a number < 10.

Offset 0, canonical program `A031346.P8914373458751936499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031346 (n : ℕ) : ℤ :=
  A031346.P8914373458751936499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031358.P2464397492571462740

`∏{p}[2*n+2*n+1, and(2, -#)]`
-/

namespace A031358.P2464397492571462740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land 2 (-(p : ℤ))

end

end A031358.P2464397492571462740

noncomputable section

/-- A031358: Number of coincidence site lattices of index 4n+1 in lattice Z^2.

Offset 0, canonical program `A031358.P2464397492571462740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031358 (n : ℕ) : ℤ :=
  A031358.P2464397492571462740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031435.P643666515973810944

`floor(log(n+2)/Δ[log(n+1)])`
-/

namespace A031435.P643666515973810944
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 2 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A031435.P643666515973810944

noncomputable section

/-- A031435: Reversal point for powers of consecutive natural numbers.

Offset 1, canonical program `A031435.P643666515973810944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031435 (n : ℕ) : ℤ :=
  A031435.P643666515973810944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031449.P14252400872149792696

`eq[2, a(floor(n/2))-(-1)^n]` with `a(0)=0`
-/

namespace A031449.P14252400872149792696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031449.P14252400872149792696

noncomputable section

/-- A031449: Numbers whose base-2 representation has two fewer 0's than 1's.

Offset 1, canonical program `A031449.P14252400872149792696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5427 terms. -/
def A031449 (n : ℕ) : ℤ :=
  (A031449.P14252400872149792696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5427 terms. -/
def A031449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031878.P9414616395338876056

`ceil(n*or(1, n)/2)`
-/

namespace A031878.P9414616395338876056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((Nat.lor 1 n : ℚ) / 2)⌉

end

end A031878.P9414616395338876056

noncomputable section

/-- A031878: Maximal number of edges in Hamiltonian path in complete graph on n nodes.

Offset 1, canonical program `A031878.P9414616395338876056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031878 (n : ℕ) : ℤ :=
  A031878.P9414616395338876056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031940.P959257535107549989

`(floor(n/2)+2)*(n-1)+3`
-/

namespace A031940.P959257535107549989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 2) * ((n : ℤ) - 1) + 3

end

end A031940.P959257535107549989

noncomputable section

/-- A031940: Length of longest legal domino snake using full set of dominoes up to [n:n].

Offset 1, canonical program `A031940.P959257535107549989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031940 (n : ℕ) : ℤ :=
  A031940.P959257535107549989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032096.P16091602738477842812

`4*a(n-1)-12*a(n-3)+9*a(n-4)` with `a(0)=2, a(1)=3, a(2)=8, a(3)=23`
-/

namespace A032096.P16091602738477842812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 8, 23] fun n a =>
  4 * a (n - 1) - 12 * a (n - 3) + 9 * a (n - 4)

end

end A032096.P16091602738477842812

noncomputable section

/-- A032096: "BHK" (reversible, identity, unlabeled) transform of 2,2,2,2,...

Offset 1, canonical program `A032096.P16091602738477842812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A032096 (n : ℕ) : ℤ :=
  A032096.P16091602738477842812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A032096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032098.P7091713504265939081

`3*(C(2^n, 2)+1)`
-/

namespace A032098.P7091713504265939081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.choose (2 ^ n) 2 + 1)

end

end A032098.P7091713504265939081

noncomputable section

/-- A032098: "BHK" (reversible, identity, unlabeled) transform of 3,3,3,3,...

Offset 1, canonical program `A032098.P7091713504265939081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A032098 (n : ℕ) : ℤ :=
  (A032098.P7091713504265939081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A032098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032169.P12813008746095503041

`floor(C(n+11, 10)/11)`
-/

namespace A032169.P12813008746095503041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 11) 10 : ℚ) / 11⌋

end

end A032169.P12813008746095503041

noncomputable section

/-- A032169: Number of aperiodic necklaces of n beads of 2 colors, 11 of them black.

Offset 12, canonical program `A032169.P12813008746095503041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032169 (n : ℕ) : ℤ :=
  A032169.P12813008746095503041.a (n - 12)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032192.P6371995408676674917

`ceil(C(n+6, 6)/7)`
-/

namespace A032192.P6371995408676674917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 6) 6 : ℚ) / 7⌉

end

end A032192.P6371995408676674917

noncomputable section

/-- A032192: Number of necklaces with 7 black beads and n-7 white beads.

Offset 7, canonical program `A032192.P6371995408676674917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032192 (n : ℕ) : ℤ :=
  A032192.P6371995408676674917.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032196.P9067358960742114912

`ceil(C(n+10, 10)/11)`
-/

namespace A032196.P9067358960742114912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 10) 10 : ℚ) / 11⌉

end

end A032196.P9067358960742114912

noncomputable section

/-- A032196: Number of necklaces with 11 black beads and n-11 white beads.

Offset 11, canonical program `A032196.P9067358960742114912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032196 (n : ℕ) : ℤ :=
  A032196.P9067358960742114912.a (n - 11)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032279.P16514170401848741144

`(ceil(C(n+4, 4)/5)+C(floor(n/2)+2, 2))/2`
-/

namespace A032279.P16514170401848741144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.choose (n + 4) 4 : ℚ) / 5⌉ + (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2 : ℤ) : ℚ) / 2

end

end A032279.P16514170401848741144

noncomputable section

/-- A032279: Number of bracelets (turnover necklaces) of n beads of 2 colors, 5 of them black.

Offset 5, canonical program `A032279.P16514170401848741144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032279.P16514170401848741144.a (n - 5))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032282.P16459769969451444963

`(ceil(C(n+10, 10)/11)+C(floor(n/2)+5, 5))/2`
-/

namespace A032282.P16459769969451444963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.choose (n + 10) 10 : ℚ) / 11⌉ + (Nat.choose (⌊(n : ℚ) / 2⌋ + 5).toNat 5 : ℤ) : ℚ) / 2

end

end A032282.P16459769969451444963

noncomputable section

/-- A032282: Number of bracelets (turnover necklaces) of n beads of 2 colors, 11 of them black.

Offset 11, canonical program `A032282.P16459769969451444963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032282 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032282.P16459769969451444963.a (n - 11))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032509.P10778961472404351731

`round(cot(acos(0)/(n+1)))`
-/

namespace A032509.P10778961472404351731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arccos (0 : ℝ) / (n + 1 : ℝ)))

end

end A032509.P10778961472404351731

noncomputable section

/-- A032509: a(n) = round(tan(Pi*(1-1/n)/2)).

Offset 1, canonical program `A032509.P10778961472404351731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032509 (n : ℕ) : ℤ :=
  A032509.P10778961472404351731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032514.P18057704737893897198

`∑[floor(n^(2/3))]`
-/

namespace A032514.P18057704737893897198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032514.P18057704737893897198

noncomputable section

/-- A032514: Sum of the integer part of 3/2-th roots of integers less than n.

Offset 0, canonical program `A032514.P18057704737893897198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032514 (n : ℕ) : ℤ :=
  A032514.P18057704737893897198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032516.P10903951501298850359

`∑[floor(n^(2/7))]`
-/

namespace A032516.P10903951501298850359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((2 : ℚ) / 7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032516.P10903951501298850359

noncomputable section

/-- A032516: Sum of the integer part of 7/2-th roots of integers less than n.

Offset 0, canonical program `A032516.P10903951501298850359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032516 (n : ℕ) : ℤ :=
  A032516.P10903951501298850359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032517.P11251607377750199762

`∑[floor(n^(2/9))]`
-/

namespace A032517.P11251607377750199762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((2 : ℚ) / 9 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032517.P11251607377750199762

noncomputable section

/-- A032517: Sum of the integer part of 9/2-th roots of integers less than n.

Offset 0, canonical program `A032517.P11251607377750199762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032517 (n : ℕ) : ℤ :=
  A032517.P11251607377750199762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032518.P8243614676622417249

`∑[floor(n^(3/10))]`
-/

namespace A032518.P8243614676622417249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032518.P8243614676622417249

noncomputable section

/-- A032518: Sum of the integer part of 10/3-th roots of integers less than n.

Offset 0, canonical program `A032518.P8243614676622417249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032518 (n : ℕ) : ℤ :=
  A032518.P8243614676622417249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032519.P17723243620539874858

`∑[floor(n^(3/11))]`
-/

namespace A032519.P17723243620539874858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 11 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032519.P17723243620539874858

noncomputable section

/-- A032519: Sum of the integer part of 11/3-th roots of integers less than n.

Offset 0, canonical program `A032519.P17723243620539874858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032519 (n : ℕ) : ℤ :=
  A032519.P17723243620539874858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032520.P14022336075436010774

`∑[floor(n^(3/13))]`
-/

namespace A032520.P14022336075436010774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 13 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032520.P14022336075436010774

noncomputable section

/-- A032520: Sum of the integer part of 13/3-th roots of integers less than n.

Offset 0, canonical program `A032520.P14022336075436010774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032520 (n : ℕ) : ℤ :=
  A032520.P14022336075436010774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032521.P1901903512260675770

`∑[floor(n^(3/14))]`
-/

namespace A032521.P1901903512260675770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032521.P1901903512260675770

noncomputable section

/-- A032521: Sum of the integer part of 14/3-th roots of integers less than n.

Offset 0, canonical program `A032521.P1901903512260675770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032521 (n : ℕ) : ℤ :=
  A032521.P1901903512260675770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032637.P1458422399656872803

`floor(π^n/e)`
-/

namespace A032637.P1458422399656872803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ n / Real.exp 1⌋

end

end A032637.P1458422399656872803

noncomputable section

/-- A032637: a(n) = floor(Pi^n / e).

Offset 0, canonical program `A032637.P1458422399656872803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A032637 (n : ℕ) : ℤ :=
  A032637.P1458422399656872803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A032637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032741.P3022166995030670566

`∏{e}[n, #+1]-1`
-/

namespace A032741.P3022166995030670566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A032741.P3022166995030670566

noncomputable section

/-- A032741: a(0) = 0; for n > 0, a(n) = number of proper divisors of n (divisors of n which are less than n).

Offset 0, canonical program `A032741.P3022166995030670566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032741 (n : ℕ) : ℤ :=
  A032741.P3022166995030670566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032765.P11160371011652700691

`floor(n*(n+2)/3)`
-/

namespace A032765.P11160371011652700691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 2) : ℚ) / 3⌋

end

end A032765.P11160371011652700691

noncomputable section

/-- A032765: a(n) = floor(n*(n+1)*(n+2) / (n + n+1 + n+2)) = floor(n*(n+2)/3).

Offset 0, canonical program `A032765.P11160371011652700691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032765 (n : ℕ) : ℤ :=
  A032765.P11160371011652700691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032767.P310899617842903713

`floor(∑[∑[∑[12*n]]]/(2*n+3))`
-/

namespace A032767.P310899617842903713
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * n + 3 : ℚ)⌋

end

end A032767.P310899617842903713

noncomputable section

/-- A032767: a(n) = floor ( n(n+1)(n+2)(n+3) / (n+(n+1)+(n+2)+(n+3)) ).

Offset 0, canonical program `A032767.P310899617842903713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032767 (n : ℕ) : ℤ :=
  A032767.P310899617842903713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032796.P11730158852228480656

`lt[n, n*(2*n)%7]`
-/

namespace A032796.P11730158852228480656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032796.P11730158852228480656

noncomputable section

/-- A032796: Numbers that are congruent to {1, 2, 3, 5, 6} mod 7.

Offset 1, canonical program `A032796.P11730158852228480656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032796 (n : ℕ) : ℤ :=
  (A032796.P11730158852228480656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032798.P16559405504910470521

`comp[round(13*n/2)]`
-/

namespace A032798.P16559405504910470521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (13 * ((n : ℚ) / 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032798.P16559405504910470521

noncomputable section

/-- A032798: Numbers such that n(n+1)(n+2)...(n+12) / (n+(n+1)+(n+2)+...+(n+12)) is a multiple of n.

Offset 1, canonical program `A032798.P16559405504910470521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032798 (n : ℕ) : ℤ :=
  (A032798.P16559405504910470521.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032812.P741658071294242113

`record[n%2+12*a(floor(n/2))+2]` with `a(0)=2, a(1)=0`
-/

namespace A032812.P741658071294242113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  n % 2 + 12 * f1 ⌊(n : ℚ) / 2⌋.toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032812.P741658071294242113

noncomputable section

/-- A032812: Numbers whose set of base-12 digits is {2,3}.

Offset 1, canonical program `A032812.P741658071294242113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032812 (n : ℕ) : ℤ :=
  (A032812.P741658071294242113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032924.P10145164877107657817

`record[3*a(floor(n/2))+n-2*floor(n/2)+1]` with `a(0)=1, a(1)=0`
-/

namespace A032924.P10145164877107657817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032924.P10145164877107657817

noncomputable section

/-- A032924: Numbers whose ternary expansion contains no 0.

Offset 1, canonical program `A032924.P10145164877107657817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032924 (n : ℕ) : ℤ :=
  A032924.P10145164877107657817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032964.P5917314505731750893

`lt[n, a(n-2)+1]+1` with `a(0)=7, a(1)=99`
-/

namespace A032964.P5917314505731750893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 99] fun n f2 =>
  f2 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032964.P5917314505731750893

noncomputable section

/-- A032964: Numbers whose base-14 representation Sum_{i=0..m} d(i)*14^(m-i) has even d(i) for all odd i.

Offset 1, canonical program `A032964.P5917314505731750893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A032964 (n : ℕ) : ℤ :=
  (A032964.P5917314505731750893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A032964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033048.P3932103640337682886

`n%2+12*a(floor(n/2))` with `a(0)=0`
-/

namespace A033048.P3932103640337682886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 2 + 12 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A033048.P3932103640337682886

noncomputable section

/-- A033048: Sums of distinct powers of 12.

Offset 0, canonical program `A033048.P3932103640337682886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033048 (n : ℕ) : ℤ :=
  (A033048.P3932103640337682886.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033065.P7680621435541464055

`lt[n, a(n-2)+1]+1` with `a(0)=1, a(1)=7, a(2)=99`
-/

namespace A033065.P7680621435541464055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 99] fun n f2 =>
  f2 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033065.P7680621435541464055

noncomputable section

/-- A033065: Numbers whose base-14 representation Sum_{i=0..m} d(i)*14^i has odd d(m-i) for all odd i.

Offset 1, canonical program `A033065.P7680621435541464055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A033065 (n : ℕ) : ℤ :=
  (A033065.P7680621435541464055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A033065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033120.P3990594069589624190

`floor(10*2^n/7)`
-/

namespace A033120.P3990594069589624190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * ((2 ^ n : ℚ) / 7)⌋

end

end A033120.P3990594069589624190

noncomputable section

/-- A033120: Base-2 digits of a(n) are, in order, the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033120.P3990594069589624190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A033120 (n : ℕ) : ℤ :=
  A033120.P3990594069589624190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A033120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033128.P18394681124820193611

`or(10*a(n-1), ((n²+n)%3)!)` with `a(0)=1`
-/

namespace A033128.P18394681124820193611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (Nat.factorial ((n ^ 2 + n) % 3))

end

end A033128.P18394681124820193611

noncomputable section

/-- A033128: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,1.

Offset 1, canonical program `A033128.P18394681124820193611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A033128 (n : ℕ) : ℤ :=
  (A033128.P18394681124820193611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A033128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033136.P11987914760751331962

`∑[9*a(n-1)-(n%3-1)]` with `a(0)=1`
-/

namespace A033136.P11987914760751331962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033136.P11987914760751331962

noncomputable section

/-- A033136: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033136.P11987914760751331962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A033136 (n : ℕ) : ℤ :=
  A033136.P11987914760751331962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A033136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033137.P16940516568245516960

`or(10*a(n-1), dr(3*n))` with `a(0)=1`
-/

namespace A033137.P16940516568245516960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (SequenceMachineLib.digitalRoot (3 * n : ℤ))

end

end A033137.P16940516568245516960

noncomputable section

/-- A033137: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,1,0.

Offset 1, canonical program `A033137.P16940516568245516960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A033137 (n : ℕ) : ℤ :=
  (A033137.P16940516568245516960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A033137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033139.P13945537502014727319

`round(9*∑[3^n/13])`
-/

namespace A033139.P13945537502014727319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (9 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A033139.P13945537502014727319

noncomputable section

/-- A033139: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0.

Offset 1, canonical program `A033139.P13945537502014727319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A033139 (n : ℕ) : ℤ :=
  A033139.P13945537502014727319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A033139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033156.P14404507783238959475

`∑[∑[∏{p}[n, val(#, 2)]]]+n`
-/

namespace A033156.P14404507783238959475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A033156.P14404507783238959475

noncomputable section

/-- A033156: a(1) = 1; for n >= 2, a(n) = a(n-1) + floor(a(n-1)/(n-1)) + 2.

Offset 1, canonical program `A033156.P14404507783238959475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033156 (n : ℕ) : ℤ :=
  (A033156.P14404507783238959475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033159.P8601337771363928605

`a(n-2)+a(xor(n, n-2)/2)` with `a(0)=2, a(1)=3`
-/

namespace A033159.P8601337771363928605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat

end

end A033159.P8601337771363928605

noncomputable section

/-- A033159: Begins with (2, 3); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033159.P8601337771363928605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033159 (n : ℕ) : ℤ :=
  (A033159.P8601337771363928605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033164.P14513936038222872281

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A033164.P14513936038222872281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033164.P14513936038222872281

noncomputable section

/-- A033164: Begins with (4, 5); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033164.P14513936038222872281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033164 (n : ℕ) : ℤ :=
  A033164.P14513936038222872281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033199.P10240645453124002133

`p?[a(n-2)+24]` with `a(0)=7, a(1)=25`
-/

namespace A033199.P10240645453124002133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 25] fun n f1 =>
  f1 (n - 2) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033199.P10240645453124002133

noncomputable section

/-- A033199: Primes of form x^2+6*y^2.

Offset 1, canonical program `A033199.P10240645453124002133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033199 (n : ℕ) : ℤ :=
  (A033199.P10240645453124002133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033201.P17519900448362923426

`p?[or(5, 5*n)-60]`
-/

namespace A033201.P17519900448362923426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 (5 * n) : ℤ) - 60

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033201.P17519900448362923426

noncomputable section

/-- A033201: Primes of the form x^2 + 10*y^2.

Offset 1, canonical program `A033201.P17519900448362923426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033201 (n : ℕ) : ℤ :=
  A033201.P17519900448362923426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033203.P9190961186185627516

`p?[a(n-3)+8]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A033203.P9190961186185627516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033203.P9190961186185627516

noncomputable section

/-- A033203: Primes p congruent to {1, 2, 3} (mod 8); or primes p of form x^2 + 2*y^2; or primes p such that x^2 = -2 has a solution mod p.

Offset 1, canonical program `A033203.P9190961186185627516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033203 (n : ℕ) : ℤ :=
  (A033203.P9190961186185627516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033205.P5950798907388333844

`p?[10*n-a(n-2)]` with `a(0)=5, a(1)=9`
-/

namespace A033205.P5950798907388333844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n f1 =>
  (10 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033205.P5950798907388333844

noncomputable section

/-- A033205: Primes of form x^2 + 5*y^2.

Offset 1, canonical program `A033205.P5950798907388333844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033205 (n : ℕ) : ℤ :=
  A033205.P5950798907388333844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033207.P10182917039636896758

`p?[a(n-1)+a(n-1)%7]` with `a(0)=1, a(1)=7, a(2)=4`
-/

namespace A033207.P10182917039636896758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 4] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033207.P10182917039636896758

noncomputable section

/-- A033207: Primes of the form x^2 + 7*y^2.

Offset 1, canonical program `A033207.P10182917039636896758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033207 (n : ℕ) : ℤ :=
  (A033207.P10182917039636896758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033212.P16958498900936851691

`p?[a(n-2)+15]` with `a(0)=1, a(1)=4`
-/

namespace A033212.P16958498900936851691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033212.P16958498900936851691

noncomputable section

/-- A033212: Primes congruent to 1 or 19 (mod 30).

Offset 1, canonical program `A033212.P16958498900936851691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033212 (n : ℕ) : ℤ :=
  (A033212.P16958498900936851691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033220.P3937927307044317153

`p?[and(5, n+1)+15*n]`
-/

namespace A033220.P3937927307044317153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (n + 1) + 15 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033220.P3937927307044317153

noncomputable section

/-- A033220: Primes of form x^2+30*y^2.

Offset 1, canonical program `A033220.P3937927307044317153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9735 terms. -/
def A033220 (n : ℕ) : ℤ :=
  (A033220.P3937927307044317153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9735 terms. -/
def A033220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033270.P17547381595511500328

`∑[∑{p}[n+1, (#%n)%#]]`
-/

namespace A033270.P17547381595511500328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p % n % p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P17547381595511500328

noncomputable section

/-- A033270: Number of odd primes <= n.

Offset 1, canonical program `A033270.P17547381595511500328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033270 (n : ℕ) : ℤ :=
  (A033270.P17547381595511500328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033271.P12654991856704208328

`∑[∏{p}[n+1, (#%(n+1))%2]]`
-/

namespace A033271.P12654991856704208328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P12654991856704208328

noncomputable section

/-- A033271: Number of odd nonprimes <= n.

Offset 1, canonical program `A033271.P12654991856704208328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033271 (n : ℕ) : ℤ :=
  (A033271.P12654991856704208328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033275.P7566039285234230669

`∑[∑[n*(n+3)]+n]`
-/

namespace A033275.P7566039285234230669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033275.P7566039285234230669

noncomputable section

/-- A033275: Number of diagonal dissections of an n-gon into 3 regions.

Offset 4, canonical program `A033275.P7566039285234230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033275 (n : ℕ) : ℤ :=
  (A033275.P7566039285234230669.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033320.P1055090192380632486

`floor(sqrt(2)*(3/2)^n)`
-/

namespace A033320.P1055090192380632486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (((3 : ℚ) / 2) ^ n : ℝ)⌋

end

end A033320.P1055090192380632486

noncomputable section

/-- A033320: a(n) = floor( sqrt(2) * (3/2)^n ).

Offset 0, canonical program `A033320.P1055090192380632486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A033320 (n : ℕ) : ℤ :=
  A033320.P1055090192380632486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A033320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033321.P1087529411604748261

`((13*n-5)*a(n-1)-(16*n-23)*a(n-2)+5*(n-2)*a(n-3))/(2*(n+1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A033321.P1087529411604748261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (((13 * n : ℤ) - 5 : ℚ) * a (n - 1) - ((16 * n : ℤ) - 23 : ℚ) * a (n - 2) + 5 * (((n : ℤ) - 2 : ℚ) * a (n - 3))) / (2 * (n + 1) : ℚ)

end

end A033321.P1087529411604748261

noncomputable section

/-- A033321: Binomial transform of Fine's sequence A000957: 1, 0, 1, 2, 6, 18, 57, 186, ...

Offset 0, canonical program `A033321.P1087529411604748261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A033321 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033321.P1087529411604748261.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A033321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033322.P9987783478449780080

`round(acot(n))`
-/

namespace A033322.P9987783478449780080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ))

end

end A033322.P9987783478449780080

noncomputable section

/-- A033322: a(n) = floor(2/n).

Offset 1, canonical program `A033322.P9987783478449780080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033322 (n : ℕ) : ℤ :=
  A033322.P9987783478449780080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033324.P5056545293050928627

`floor(π*acot(n))`
-/

namespace A033324.P5056545293050928627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * SequenceMachineLib.acot (n : ℝ)⌋

end

end A033324.P5056545293050928627

noncomputable section

/-- A033324: a(n) = floor(4/n).

Offset 1, canonical program `A033324.P5056545293050928627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033324 (n : ℕ) : ℤ :=
  A033324.P5056545293050928627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033325.P18128479342072502818

`floor(5/(n+1))`
-/

namespace A033325.P18128479342072502818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / (n + 1 : ℚ)⌋

end

end A033325.P18128479342072502818

noncomputable section

/-- A033325: a(n) = floor(5/n).

Offset 1, canonical program `A033325.P18128479342072502818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033325 (n : ℕ) : ℤ :=
  A033325.P18128479342072502818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033326.P12039581122906463815

`floor(6/(n+1))`
-/

namespace A033326.P12039581122906463815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / (n + 1 : ℚ)⌋

end

end A033326.P12039581122906463815

noncomputable section

/-- A033326: a(n) = floor(6/n).

Offset 1, canonical program `A033326.P12039581122906463815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033326 (n : ℕ) : ℤ :=
  A033326.P12039581122906463815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033327.P13031224724409790988

`floor(7/(n+1))`
-/

namespace A033327.P13031224724409790988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 / (n + 1 : ℚ)⌋

end

end A033327.P13031224724409790988

noncomputable section

/-- A033327: a(n) = floor(7/n).

Offset 1, canonical program `A033327.P13031224724409790988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033327 (n : ℕ) : ℤ :=
  A033327.P13031224724409790988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033328.P7635256929763377452

`floor(8/(n+1))`
-/

namespace A033328.P7635256929763377452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 / (n + 1 : ℚ)⌋

end

end A033328.P7635256929763377452

noncomputable section

/-- A033328: a(n) = floor(8/n).

Offset 1, canonical program `A033328.P7635256929763377452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033328 (n : ℕ) : ℤ :=
  A033328.P7635256929763377452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033329.P431955637705700723

`floor(9/(n+1))`
-/

namespace A033329.P431955637705700723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 / (n + 1 : ℚ)⌋

end

end A033329.P431955637705700723

noncomputable section

/-- A033329: a(n) = floor(9/n).

Offset 1, canonical program `A033329.P431955637705700723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033329 (n : ℕ) : ℤ :=
  A033329.P431955637705700723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033330.P2745976928680392281

`floor(10/(n+1))`
-/

namespace A033330.P2745976928680392281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 / (n + 1 : ℚ)⌋

end

end A033330.P2745976928680392281

noncomputable section

/-- A033330: a(n) = floor(10/n).

Offset 1, canonical program `A033330.P2745976928680392281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033330 (n : ℕ) : ℤ :=
  A033330.P2745976928680392281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033331.P12230596475661664193

`floor(11/(n+1))`
-/

namespace A033331.P12230596475661664193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 / (n + 1 : ℚ)⌋

end

end A033331.P12230596475661664193

noncomputable section

/-- A033331: a(n) = floor(11/n).

Offset 1, canonical program `A033331.P12230596475661664193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033331 (n : ℕ) : ℤ :=
  A033331.P12230596475661664193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033332.P17128619209852991979

`floor(12/(n+1))`
-/

namespace A033332.P17128619209852991979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊12 / (n + 1 : ℚ)⌋

end

end A033332.P17128619209852991979

noncomputable section

/-- A033332: a(n) = floor(12/n).

Offset 1, canonical program `A033332.P17128619209852991979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033332 (n : ℕ) : ℤ :=
  A033332.P17128619209852991979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033333.P17985627490657280797

`floor(13/(n+1))`
-/

namespace A033333.P17985627490657280797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊13 / (n + 1 : ℚ)⌋

end

end A033333.P17985627490657280797

noncomputable section

/-- A033333: a(n) = floor(13/n).

Offset 1, canonical program `A033333.P17985627490657280797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033333 (n : ℕ) : ℤ :=
  A033333.P17985627490657280797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033334.P3397871742272411599

`floor(14/(n+1))`
-/

namespace A033334.P3397871742272411599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊14 / (n + 1 : ℚ)⌋

end

end A033334.P3397871742272411599

noncomputable section

/-- A033334: a(n) = floor(14/n).

Offset 1, canonical program `A033334.P3397871742272411599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033334 (n : ℕ) : ℤ :=
  A033334.P3397871742272411599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033335.P14701804051787364150

`floor(15/(n+1))`
-/

namespace A033335.P14701804051787364150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊15 / (n + 1 : ℚ)⌋

end

end A033335.P14701804051787364150

noncomputable section

/-- A033335: a(n) = floor(15/n).

Offset 1, canonical program `A033335.P14701804051787364150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033335 (n : ℕ) : ℤ :=
  A033335.P14701804051787364150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033336.P5571390823724310695

`floor(16/(n+1))`
-/

namespace A033336.P5571390823724310695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊16 / (n + 1 : ℚ)⌋

end

end A033336.P5571390823724310695

noncomputable section

/-- A033336: a(n) = floor(16/n).

Offset 1, canonical program `A033336.P5571390823724310695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033336 (n : ℕ) : ℤ :=
  A033336.P5571390823724310695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033337.P9682801073484511926

`floor(17/(n+1))`
-/

namespace A033337.P9682801073484511926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊17 / (n + 1 : ℚ)⌋

end

end A033337.P9682801073484511926

noncomputable section

/-- A033337: a(n) = floor(17/n).

Offset 1, canonical program `A033337.P9682801073484511926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033337 (n : ℕ) : ℤ :=
  A033337.P9682801073484511926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033338.P11416961530016841808

`floor(18/(n+1))`
-/

namespace A033338.P11416961530016841808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊18 / (n + 1 : ℚ)⌋

end

end A033338.P11416961530016841808

noncomputable section

/-- A033338: a(n) = floor(18/n).

Offset 1, canonical program `A033338.P11416961530016841808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033338 (n : ℕ) : ℤ :=
  A033338.P11416961530016841808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033339.P7824478824335321857

`floor(19/(n+1))`
-/

namespace A033339.P7824478824335321857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 / (n + 1 : ℚ)⌋

end

end A033339.P7824478824335321857

noncomputable section

/-- A033339: a(n) = floor(19/n).

Offset 1, canonical program `A033339.P7824478824335321857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033339 (n : ℕ) : ℤ :=
  A033339.P7824478824335321857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033340.P9775122431312371644

`floor(20/(n+1))`
-/

namespace A033340.P9775122431312371644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊20 / (n + 1 : ℚ)⌋

end

end A033340.P9775122431312371644

noncomputable section

/-- A033340: a(n) = floor(20/n).

Offset 1, canonical program `A033340.P9775122431312371644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033340 (n : ℕ) : ℤ :=
  A033340.P9775122431312371644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033341.P10888171327742807561

`floor(21/(n+1))`
-/

namespace A033341.P10888171327742807561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊21 / (n + 1 : ℚ)⌋

end

end A033341.P10888171327742807561

noncomputable section

/-- A033341: a(n) = floor(21/n).

Offset 1, canonical program `A033341.P10888171327742807561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033341 (n : ℕ) : ℤ :=
  A033341.P10888171327742807561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033342.P12862972073241124468

`floor(22/(n+1))`
-/

namespace A033342.P12862972073241124468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊22 / (n + 1 : ℚ)⌋

end

end A033342.P12862972073241124468

noncomputable section

/-- A033342: a(n) = floor(22/n).

Offset 1, canonical program `A033342.P12862972073241124468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033342 (n : ℕ) : ℤ :=
  A033342.P12862972073241124468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033343.P18029008388524836615

`floor(23/(n+1))`
-/

namespace A033343.P18029008388524836615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊23 / (n + 1 : ℚ)⌋

end

end A033343.P18029008388524836615

noncomputable section

/-- A033343: a(n) = floor(23/n).

Offset 1, canonical program `A033343.P18029008388524836615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033343 (n : ℕ) : ℤ :=
  A033343.P18029008388524836615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033344.P16147635678017581784

`floor(24/(n+1))`
-/

namespace A033344.P16147635678017581784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊24 / (n + 1 : ℚ)⌋

end

end A033344.P16147635678017581784

noncomputable section

/-- A033344: a(n) = floor(24/n).

Offset 1, canonical program `A033344.P16147635678017581784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033344 (n : ℕ) : ℤ :=
  A033344.P16147635678017581784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033345.P10938923960645104945

`floor(25/(n+1))`
-/

namespace A033345.P10938923960645104945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊25 / (n + 1 : ℚ)⌋

end

end A033345.P10938923960645104945

noncomputable section

/-- A033345: a(n) = floor(25/n).

Offset 1, canonical program `A033345.P10938923960645104945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033345 (n : ℕ) : ℤ :=
  A033345.P10938923960645104945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033346.P8801767461489431630

`floor(26/(n+1))`
-/

namespace A033346.P8801767461489431630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊26 / (n + 1 : ℚ)⌋

end

end A033346.P8801767461489431630

noncomputable section

/-- A033346: a(n) = floor(26/n).

Offset 1, canonical program `A033346.P8801767461489431630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033346 (n : ℕ) : ℤ :=
  A033346.P8801767461489431630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033347.P895070991898291280

`floor(27/(n+1))`
-/

namespace A033347.P895070991898291280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊27 / (n + 1 : ℚ)⌋

end

end A033347.P895070991898291280

noncomputable section

/-- A033347: a(n) = floor(27/n).

Offset 1, canonical program `A033347.P895070991898291280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033347 (n : ℕ) : ℤ :=
  A033347.P895070991898291280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033348.P8402618124055055723

`floor(28/(n+1))`
-/

namespace A033348.P8402618124055055723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊28 / (n + 1 : ℚ)⌋

end

end A033348.P8402618124055055723

noncomputable section

/-- A033348: a(n) = floor(28/n).

Offset 1, canonical program `A033348.P8402618124055055723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033348 (n : ℕ) : ℤ :=
  A033348.P8402618124055055723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033349.P11866605943968664551

`floor(29/(n+1))`
-/

namespace A033349.P11866605943968664551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊29 / (n + 1 : ℚ)⌋

end

end A033349.P11866605943968664551

noncomputable section

/-- A033349: a(n) = floor(29/n).

Offset 1, canonical program `A033349.P11866605943968664551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033349 (n : ℕ) : ℤ :=
  A033349.P11866605943968664551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033350.P18260018799401890556

`floor(30/(n+1))`
-/

namespace A033350.P18260018799401890556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊30 / (n + 1 : ℚ)⌋

end

end A033350.P18260018799401890556

noncomputable section

/-- A033350: a(n) = floor(30/n).

Offset 1, canonical program `A033350.P18260018799401890556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033350 (n : ℕ) : ℤ :=
  A033350.P18260018799401890556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033351.P7902839004448299666

`floor(31/(n+1))`
-/

namespace A033351.P7902839004448299666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊31 / (n + 1 : ℚ)⌋

end

end A033351.P7902839004448299666

noncomputable section

/-- A033351: a(n) = floor(31/n).

Offset 1, canonical program `A033351.P7902839004448299666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033351 (n : ℕ) : ℤ :=
  A033351.P7902839004448299666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033352.P3631358451175469448

`floor(32/(n+1))`
-/

namespace A033352.P3631358451175469448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊32 / (n + 1 : ℚ)⌋

end

end A033352.P3631358451175469448

noncomputable section

/-- A033352: a(n) = floor(32/n).

Offset 1, canonical program `A033352.P3631358451175469448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033352 (n : ℕ) : ℤ :=
  A033352.P3631358451175469448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033353.P4354147013404905932

`floor(33/(n+1))`
-/

namespace A033353.P4354147013404905932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊33 / (n + 1 : ℚ)⌋

end

end A033353.P4354147013404905932

noncomputable section

/-- A033353: a(n) = floor(33/n).

Offset 1, canonical program `A033353.P4354147013404905932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033353 (n : ℕ) : ℤ :=
  A033353.P4354147013404905932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033354.P16614780606610598303

`floor(34/(n+1))`
-/

namespace A033354.P16614780606610598303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊34 / (n + 1 : ℚ)⌋

end

end A033354.P16614780606610598303

noncomputable section

/-- A033354: a(n) = floor(34/n).

Offset 1, canonical program `A033354.P16614780606610598303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033354 (n : ℕ) : ℤ :=
  A033354.P16614780606610598303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033355.P7197380467971503113

`floor(35/(n+1))`
-/

namespace A033355.P7197380467971503113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊35 / (n + 1 : ℚ)⌋

end

end A033355.P7197380467971503113

noncomputable section

/-- A033355: a(n) = floor(35/n).

Offset 1, canonical program `A033355.P7197380467971503113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033355 (n : ℕ) : ℤ :=
  A033355.P7197380467971503113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033356.P10995569879771057827

`floor(36/(n+1))`
-/

namespace A033356.P10995569879771057827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊36 / (n + 1 : ℚ)⌋

end

end A033356.P10995569879771057827

noncomputable section

/-- A033356: a(n) = floor(36/n).

Offset 1, canonical program `A033356.P10995569879771057827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033356 (n : ℕ) : ℤ :=
  A033356.P10995569879771057827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033357.P11280391449592940450

`floor(37/(n+1))`
-/

namespace A033357.P11280391449592940450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊37 / (n + 1 : ℚ)⌋

end

end A033357.P11280391449592940450

noncomputable section

/-- A033357: a(n) = floor(37/n).

Offset 1, canonical program `A033357.P11280391449592940450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033357 (n : ℕ) : ℤ :=
  A033357.P11280391449592940450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033358.P7788357779130836001

`floor(38/(n+1))`
-/

namespace A033358.P7788357779130836001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊38 / (n + 1 : ℚ)⌋

end

end A033358.P7788357779130836001

noncomputable section

/-- A033358: a(n) = floor(38/n).

Offset 1, canonical program `A033358.P7788357779130836001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033358 (n : ℕ) : ℤ :=
  A033358.P7788357779130836001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033359.P14984952663833124963

`floor(39/(n+1))`
-/

namespace A033359.P14984952663833124963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊39 / (n + 1 : ℚ)⌋

end

end A033359.P14984952663833124963

noncomputable section

/-- A033359: a(n) = floor(39/n).

Offset 1, canonical program `A033359.P14984952663833124963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033359 (n : ℕ) : ℤ :=
  A033359.P14984952663833124963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033360.P17945925405977670057

`floor(40/(n+1))`
-/

namespace A033360.P17945925405977670057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊40 / (n + 1 : ℚ)⌋

end

end A033360.P17945925405977670057

noncomputable section

/-- A033360: a(n) = floor(40/n).

Offset 1, canonical program `A033360.P17945925405977670057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033360 (n : ℕ) : ℤ :=
  A033360.P17945925405977670057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033361.P9353841550052705730

`floor(41/(n+1))`
-/

namespace A033361.P9353841550052705730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊41 / (n + 1 : ℚ)⌋

end

end A033361.P9353841550052705730

noncomputable section

/-- A033361: a(n) = floor(41/n).

Offset 1, canonical program `A033361.P9353841550052705730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033361 (n : ℕ) : ℤ :=
  A033361.P9353841550052705730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033362.P9123457569386260397

`floor(42/(n+1))`
-/

namespace A033362.P9123457569386260397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊42 / (n + 1 : ℚ)⌋

end

end A033362.P9123457569386260397

noncomputable section

/-- A033362: a(n) = floor(42/n).

Offset 1, canonical program `A033362.P9123457569386260397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033362 (n : ℕ) : ℤ :=
  A033362.P9123457569386260397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033363.P16460696938423946881

`floor(43/(n+1))`
-/

namespace A033363.P16460696938423946881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊43 / (n + 1 : ℚ)⌋

end

end A033363.P16460696938423946881

noncomputable section

/-- A033363: a(n) = floor(43/n).

Offset 1, canonical program `A033363.P16460696938423946881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033363 (n : ℕ) : ℤ :=
  A033363.P16460696938423946881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033364.P2156816341113294780

`floor(44/(n+1))`
-/

namespace A033364.P2156816341113294780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊44 / (n + 1 : ℚ)⌋

end

end A033364.P2156816341113294780

noncomputable section

/-- A033364: a(n) = floor(44/n).

Offset 1, canonical program `A033364.P2156816341113294780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033364 (n : ℕ) : ℤ :=
  A033364.P2156816341113294780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033365.P7763863847026568150

`floor(45/(n+1))`
-/

namespace A033365.P7763863847026568150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊45 / (n + 1 : ℚ)⌋

end

end A033365.P7763863847026568150

noncomputable section

/-- A033365: a(n) = floor(45/n).

Offset 1, canonical program `A033365.P7763863847026568150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033365 (n : ℕ) : ℤ :=
  A033365.P7763863847026568150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033366.P16372693595778826324

`floor(46/(n+1))`
-/

namespace A033366.P16372693595778826324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊46 / (n + 1 : ℚ)⌋

end

end A033366.P16372693595778826324

noncomputable section

/-- A033366: a(n) = floor(46/n).

Offset 1, canonical program `A033366.P16372693595778826324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033366 (n : ℕ) : ℤ :=
  A033366.P16372693595778826324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033367.P6905699588638510118

`floor(47/(n+1))`
-/

namespace A033367.P6905699588638510118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊47 / (n + 1 : ℚ)⌋

end

end A033367.P6905699588638510118

noncomputable section

/-- A033367: a(n) = floor(47/n).

Offset 1, canonical program `A033367.P6905699588638510118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033367 (n : ℕ) : ℤ :=
  A033367.P6905699588638510118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033368.P1496544220488322821

`floor(48/(n+1))`
-/

namespace A033368.P1496544220488322821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊48 / (n + 1 : ℚ)⌋

end

end A033368.P1496544220488322821

noncomputable section

/-- A033368: a(n) = floor(48/n).

Offset 1, canonical program `A033368.P1496544220488322821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033368 (n : ℕ) : ℤ :=
  A033368.P1496544220488322821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033369.P13664539472662378131

`floor(49/(n+1))`
-/

namespace A033369.P13664539472662378131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊49 / (n + 1 : ℚ)⌋

end

end A033369.P13664539472662378131

noncomputable section

/-- A033369: a(n) = floor(49/n).

Offset 1, canonical program `A033369.P13664539472662378131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033369 (n : ℕ) : ℤ :=
  A033369.P13664539472662378131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033370.P15543381943246283799

`floor(50/(n+1))`
-/

namespace A033370.P15543381943246283799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊50 / (n + 1 : ℚ)⌋

end

end A033370.P15543381943246283799

noncomputable section

/-- A033370: a(n) = floor(50/n).

Offset 1, canonical program `A033370.P15543381943246283799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033370 (n : ℕ) : ℤ :=
  A033370.P15543381943246283799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033371.P11612853289697698190

`floor(51/(n+1))`
-/

namespace A033371.P11612853289697698190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊51 / (n + 1 : ℚ)⌋

end

end A033371.P11612853289697698190

noncomputable section

/-- A033371: a(n) = floor(51/n).

Offset 1, canonical program `A033371.P11612853289697698190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033371 (n : ℕ) : ℤ :=
  A033371.P11612853289697698190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033372.P251646567336660288

`floor(52/(n+1))`
-/

namespace A033372.P251646567336660288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊52 / (n + 1 : ℚ)⌋

end

end A033372.P251646567336660288

noncomputable section

/-- A033372: a(n) = floor(52/n).

Offset 1, canonical program `A033372.P251646567336660288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033372 (n : ℕ) : ℤ :=
  A033372.P251646567336660288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033373.P1059882403494983621

`floor(53/(n+1))`
-/

namespace A033373.P1059882403494983621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊53 / (n + 1 : ℚ)⌋

end

end A033373.P1059882403494983621

noncomputable section

/-- A033373: a(n) = floor(53/n).

Offset 1, canonical program `A033373.P1059882403494983621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033373 (n : ℕ) : ℤ :=
  A033373.P1059882403494983621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033374.P12194184412181413842

`floor(54/(n+1))`
-/

namespace A033374.P12194184412181413842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊54 / (n + 1 : ℚ)⌋

end

end A033374.P12194184412181413842

noncomputable section

/-- A033374: a(n) = floor(54/n).

Offset 1, canonical program `A033374.P12194184412181413842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033374 (n : ℕ) : ℤ :=
  A033374.P12194184412181413842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033375.P9648276165694226891

`floor(55/(n+1))`
-/

namespace A033375.P9648276165694226891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊55 / (n + 1 : ℚ)⌋

end

end A033375.P9648276165694226891

noncomputable section

/-- A033375: a(n) = floor(55/n).

Offset 1, canonical program `A033375.P9648276165694226891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033375 (n : ℕ) : ℤ :=
  A033375.P9648276165694226891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033376.P1019791730381744021

`floor(56/(n+1))`
-/

namespace A033376.P1019791730381744021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊56 / (n + 1 : ℚ)⌋

end

end A033376.P1019791730381744021

noncomputable section

/-- A033376: a(n) = floor(56/n).

Offset 1, canonical program `A033376.P1019791730381744021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033376 (n : ℕ) : ℤ :=
  A033376.P1019791730381744021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033377.P4201601955909183813

`floor(57/(n+1))`
-/

namespace A033377.P4201601955909183813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊57 / (n + 1 : ℚ)⌋

end

end A033377.P4201601955909183813

noncomputable section

/-- A033377: a(n) = floor(57/n).

Offset 1, canonical program `A033377.P4201601955909183813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033377 (n : ℕ) : ℤ :=
  A033377.P4201601955909183813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033378.P18275529362684401583

`floor(58/(n+1))`
-/

namespace A033378.P18275529362684401583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊58 / (n + 1 : ℚ)⌋

end

end A033378.P18275529362684401583

noncomputable section

/-- A033378: a(n) = floor(58/n).

Offset 1, canonical program `A033378.P18275529362684401583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033378 (n : ℕ) : ℤ :=
  A033378.P18275529362684401583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033379.P2524661576409911797

`floor(59/(n+1))`
-/

namespace A033379.P2524661576409911797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊59 / (n + 1 : ℚ)⌋

end

end A033379.P2524661576409911797

noncomputable section

/-- A033379: a(n) = floor(59/n).

Offset 1, canonical program `A033379.P2524661576409911797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033379 (n : ℕ) : ℤ :=
  A033379.P2524661576409911797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033380.P16740819864826537935

`floor(60/(n+1))`
-/

namespace A033380.P16740819864826537935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊60 / (n + 1 : ℚ)⌋

end

end A033380.P16740819864826537935

noncomputable section

/-- A033380: a(n) = floor(60/n).

Offset 1, canonical program `A033380.P16740819864826537935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033380 (n : ℕ) : ℤ :=
  A033380.P16740819864826537935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033381.P12049254811289537547

`floor(61/(n+1))`
-/

namespace A033381.P12049254811289537547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊61 / (n + 1 : ℚ)⌋

end

end A033381.P12049254811289537547

noncomputable section

/-- A033381: a(n) = floor(61/n).

Offset 1, canonical program `A033381.P12049254811289537547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033381 (n : ℕ) : ℤ :=
  A033381.P12049254811289537547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033382.P14060076835672174493

`floor(62/(n+1))`
-/

namespace A033382.P14060076835672174493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊62 / (n + 1 : ℚ)⌋

end

end A033382.P14060076835672174493

noncomputable section

/-- A033382: a(n) = floor(62/n).

Offset 1, canonical program `A033382.P14060076835672174493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033382 (n : ℕ) : ℤ :=
  A033382.P14060076835672174493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033383.P9476934186603377317

`floor(63/(n+1))`
-/

namespace A033383.P9476934186603377317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊63 / (n + 1 : ℚ)⌋

end

end A033383.P9476934186603377317

noncomputable section

/-- A033383: a(n) = floor(63/n).

Offset 1, canonical program `A033383.P9476934186603377317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033383 (n : ℕ) : ℤ :=
  A033383.P9476934186603377317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033384.P4933226705847640246

`floor(64/(n+1))`
-/

namespace A033384.P4933226705847640246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊64 / (n + 1 : ℚ)⌋

end

end A033384.P4933226705847640246

noncomputable section

/-- A033384: a(n) = floor(64/n).

Offset 1, canonical program `A033384.P4933226705847640246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033384 (n : ℕ) : ℤ :=
  A033384.P4933226705847640246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033385.P4405755337041566742

`floor(65/(n+1))`
-/

namespace A033385.P4405755337041566742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊65 / (n + 1 : ℚ)⌋

end

end A033385.P4405755337041566742

noncomputable section

/-- A033385: a(n) = floor(65/n).

Offset 1, canonical program `A033385.P4405755337041566742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033385 (n : ℕ) : ℤ :=
  A033385.P4405755337041566742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033386.P4250292014064774385

`floor(66/(n+1))`
-/

namespace A033386.P4250292014064774385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊66 / (n + 1 : ℚ)⌋

end

end A033386.P4250292014064774385

noncomputable section

/-- A033386: a(n) = floor(66/n).

Offset 1, canonical program `A033386.P4250292014064774385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033386 (n : ℕ) : ℤ :=
  A033386.P4250292014064774385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033387.P10137596507146853879

`floor(67/(n+1))`
-/

namespace A033387.P10137596507146853879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊67 / (n + 1 : ℚ)⌋

end

end A033387.P10137596507146853879

noncomputable section

/-- A033387: a(n) = floor(67/n).

Offset 1, canonical program `A033387.P10137596507146853879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033387 (n : ℕ) : ℤ :=
  A033387.P10137596507146853879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033388.P10761764277560898756

`floor(68/(n+1))`
-/

namespace A033388.P10761764277560898756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊68 / (n + 1 : ℚ)⌋

end

end A033388.P10761764277560898756

noncomputable section

/-- A033388: a(n) = floor(68/n).

Offset 1, canonical program `A033388.P10761764277560898756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033388 (n : ℕ) : ℤ :=
  A033388.P10761764277560898756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033389.P7963017522923257159

`floor(69/(n+1))`
-/

namespace A033389.P7963017522923257159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊69 / (n + 1 : ℚ)⌋

end

end A033389.P7963017522923257159

noncomputable section

/-- A033389: a(n) = floor(69/n).

Offset 1, canonical program `A033389.P7963017522923257159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033389 (n : ℕ) : ℤ :=
  A033389.P7963017522923257159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033390.P1980181315400635490

`floor(70/(n+1))`
-/

namespace A033390.P1980181315400635490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊70 / (n + 1 : ℚ)⌋

end

end A033390.P1980181315400635490

noncomputable section

/-- A033390: a(n) = floor(70/n).

Offset 1, canonical program `A033390.P1980181315400635490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033390 (n : ℕ) : ℤ :=
  A033390.P1980181315400635490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033391.P153661629736608754

`floor(71/(n+1))`
-/

namespace A033391.P153661629736608754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊71 / (n + 1 : ℚ)⌋

end

end A033391.P153661629736608754

noncomputable section

/-- A033391: a(n) = floor(71/n).

Offset 1, canonical program `A033391.P153661629736608754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033391 (n : ℕ) : ℤ :=
  A033391.P153661629736608754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033392.P3514673563966828149

`floor(72/(n+1))`
-/

namespace A033392.P3514673563966828149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊72 / (n + 1 : ℚ)⌋

end

end A033392.P3514673563966828149

noncomputable section

/-- A033392: a(n) = floor(72/n).

Offset 1, canonical program `A033392.P3514673563966828149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033392 (n : ℕ) : ℤ :=
  A033392.P3514673563966828149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033393.P14839312737289854872

`floor(73/(n+1))`
-/

namespace A033393.P14839312737289854872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊73 / (n + 1 : ℚ)⌋

end

end A033393.P14839312737289854872

noncomputable section

/-- A033393: a(n) = floor(73/n).

Offset 1, canonical program `A033393.P14839312737289854872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033393 (n : ℕ) : ℤ :=
  A033393.P14839312737289854872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033394.P16179504133041701258

`floor(74/(n+1))`
-/

namespace A033394.P16179504133041701258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊74 / (n + 1 : ℚ)⌋

end

end A033394.P16179504133041701258

noncomputable section

/-- A033394: a(n) = floor(74/n).

Offset 1, canonical program `A033394.P16179504133041701258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033394 (n : ℕ) : ℤ :=
  A033394.P16179504133041701258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033395.P17648903578232394347

`floor(75/(n+1))`
-/

namespace A033395.P17648903578232394347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊75 / (n + 1 : ℚ)⌋

end

end A033395.P17648903578232394347

noncomputable section

/-- A033395: a(n) = floor(75/n).

Offset 1, canonical program `A033395.P17648903578232394347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033395 (n : ℕ) : ℤ :=
  A033395.P17648903578232394347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033396.P16883441841738454133

`floor(76/(n+1))`
-/

namespace A033396.P16883441841738454133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊76 / (n + 1 : ℚ)⌋

end

end A033396.P16883441841738454133

noncomputable section

/-- A033396: a(n) = floor(76/n).

Offset 1, canonical program `A033396.P16883441841738454133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033396 (n : ℕ) : ℤ :=
  A033396.P16883441841738454133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033397.P2268795748100289697

`floor(77/(n+1))`
-/

namespace A033397.P2268795748100289697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊77 / (n + 1 : ℚ)⌋

end

end A033397.P2268795748100289697

noncomputable section

/-- A033397: a(n) = floor(77/n).

Offset 1, canonical program `A033397.P2268795748100289697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033397 (n : ℕ) : ℤ :=
  A033397.P2268795748100289697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033398.P16145874250707212007

`floor(78/(n+1))`
-/

namespace A033398.P16145874250707212007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊78 / (n + 1 : ℚ)⌋

end

end A033398.P16145874250707212007

noncomputable section

/-- A033398: a(n) = floor(78/n).

Offset 1, canonical program `A033398.P16145874250707212007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033398 (n : ℕ) : ℤ :=
  A033398.P16145874250707212007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033399.P3479882194671767225

`floor(79/(n+1))`
-/

namespace A033399.P3479882194671767225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊79 / (n + 1 : ℚ)⌋

end

end A033399.P3479882194671767225

noncomputable section

/-- A033399: a(n) = floor(79/n).

Offset 1, canonical program `A033399.P3479882194671767225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033399 (n : ℕ) : ℤ :=
  A033399.P3479882194671767225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033400.P1374756453438959724

`floor(80/(n+1))`
-/

namespace A033400.P1374756453438959724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊80 / (n + 1 : ℚ)⌋

end

end A033400.P1374756453438959724

noncomputable section

/-- A033400: a(n) = floor(80/n).

Offset 1, canonical program `A033400.P1374756453438959724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033400 (n : ℕ) : ℤ :=
  A033400.P1374756453438959724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033401.P12785736277287193217

`floor(81/(n+1))`
-/

namespace A033401.P12785736277287193217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊81 / (n + 1 : ℚ)⌋

end

end A033401.P12785736277287193217

noncomputable section

/-- A033401: a(n) = floor(81/n).

Offset 1, canonical program `A033401.P12785736277287193217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033401 (n : ℕ) : ℤ :=
  A033401.P12785736277287193217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033402.P12072399048491452576

`floor(82/(n+1))`
-/

namespace A033402.P12072399048491452576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊82 / (n + 1 : ℚ)⌋

end

end A033402.P12072399048491452576

noncomputable section

/-- A033402: a(n) = floor(82/n).

Offset 1, canonical program `A033402.P12072399048491452576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033402 (n : ℕ) : ℤ :=
  A033402.P12072399048491452576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033403.P8474353633910649880

`floor(83/(n+1))`
-/

namespace A033403.P8474353633910649880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊83 / (n + 1 : ℚ)⌋

end

end A033403.P8474353633910649880

noncomputable section

/-- A033403: a(n) = floor(83/n).

Offset 1, canonical program `A033403.P8474353633910649880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033403 (n : ℕ) : ℤ :=
  A033403.P8474353633910649880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033404.P11315608977751410637

`floor(84/(n+1))`
-/

namespace A033404.P11315608977751410637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊84 / (n + 1 : ℚ)⌋

end

end A033404.P11315608977751410637

noncomputable section

/-- A033404: a(n) = floor(84/n).

Offset 1, canonical program `A033404.P11315608977751410637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033404 (n : ℕ) : ℤ :=
  A033404.P11315608977751410637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033405.P7286800455569152319

`floor(85/(n+1))`
-/

namespace A033405.P7286800455569152319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊85 / (n + 1 : ℚ)⌋

end

end A033405.P7286800455569152319

noncomputable section

/-- A033405: a(n) = floor(85/n).

Offset 1, canonical program `A033405.P7286800455569152319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033405 (n : ℕ) : ℤ :=
  A033405.P7286800455569152319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033406.P2991139025342697146

`floor(86/(n+1))`
-/

namespace A033406.P2991139025342697146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊86 / (n + 1 : ℚ)⌋

end

end A033406.P2991139025342697146

noncomputable section

/-- A033406: a(n) = floor(86/n).

Offset 1, canonical program `A033406.P2991139025342697146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033406 (n : ℕ) : ℤ :=
  A033406.P2991139025342697146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033407.P9346855552353291192

`floor(87/(n+1))`
-/

namespace A033407.P9346855552353291192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊87 / (n + 1 : ℚ)⌋

end

end A033407.P9346855552353291192

noncomputable section

/-- A033407: a(n) = floor(87/n).

Offset 1, canonical program `A033407.P9346855552353291192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033407 (n : ℕ) : ℤ :=
  A033407.P9346855552353291192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033408.P5169971108226613416

`floor(88/(n+1))`
-/

namespace A033408.P5169971108226613416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊88 / (n + 1 : ℚ)⌋

end

end A033408.P5169971108226613416

noncomputable section

/-- A033408: a(n) = floor(88/n).

Offset 1, canonical program `A033408.P5169971108226613416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033408 (n : ℕ) : ℤ :=
  A033408.P5169971108226613416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033409.P13085784333668503575

`floor(89/(n+1))`
-/

namespace A033409.P13085784333668503575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊89 / (n + 1 : ℚ)⌋

end

end A033409.P13085784333668503575

noncomputable section

/-- A033409: a(n) = floor(89/n).

Offset 1, canonical program `A033409.P13085784333668503575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033409 (n : ℕ) : ℤ :=
  A033409.P13085784333668503575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033410.P12869823087076602420

`floor(90/(n+1))`
-/

namespace A033410.P12869823087076602420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊90 / (n + 1 : ℚ)⌋

end

end A033410.P12869823087076602420

noncomputable section

/-- A033410: a(n) = floor(90/n).

Offset 1, canonical program `A033410.P12869823087076602420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033410 (n : ℕ) : ℤ :=
  A033410.P12869823087076602420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033411.P15781716300828723086

`floor(91/(n+1))`
-/

namespace A033411.P15781716300828723086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊91 / (n + 1 : ℚ)⌋

end

end A033411.P15781716300828723086

noncomputable section

/-- A033411: a(n) = floor(91/n).

Offset 1, canonical program `A033411.P15781716300828723086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033411 (n : ℕ) : ℤ :=
  A033411.P15781716300828723086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033412.P8274681524289622672

`floor(92/(n+1))`
-/

namespace A033412.P8274681524289622672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊92 / (n + 1 : ℚ)⌋

end

end A033412.P8274681524289622672

noncomputable section

/-- A033412: a(n) = floor(92/n).

Offset 1, canonical program `A033412.P8274681524289622672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033412 (n : ℕ) : ℤ :=
  A033412.P8274681524289622672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033413.P14917426118285071357

`floor(93/(n+1))`
-/

namespace A033413.P14917426118285071357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊93 / (n + 1 : ℚ)⌋

end

end A033413.P14917426118285071357

noncomputable section

/-- A033413: a(n) = floor(93/n).

Offset 1, canonical program `A033413.P14917426118285071357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033413 (n : ℕ) : ℤ :=
  A033413.P14917426118285071357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033414.P7893045457314910663

`floor(94/(n+1))`
-/

namespace A033414.P7893045457314910663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊94 / (n + 1 : ℚ)⌋

end

end A033414.P7893045457314910663

noncomputable section

/-- A033414: a(n) = floor(94/n).

Offset 1, canonical program `A033414.P7893045457314910663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033414 (n : ℕ) : ℤ :=
  A033414.P7893045457314910663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033415.P15969612658415409331

`floor(95/(n+1))`
-/

namespace A033415.P15969612658415409331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊95 / (n + 1 : ℚ)⌋

end

end A033415.P15969612658415409331

noncomputable section

/-- A033415: a(n) = floor(95/n).

Offset 1, canonical program `A033415.P15969612658415409331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033415 (n : ℕ) : ℤ :=
  A033415.P15969612658415409331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033416.P16813400956638980933

`floor(96/(n+1))`
-/

namespace A033416.P16813400956638980933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊96 / (n + 1 : ℚ)⌋

end

end A033416.P16813400956638980933

noncomputable section

/-- A033416: a(n) = floor(96/n).

Offset 1, canonical program `A033416.P16813400956638980933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033416 (n : ℕ) : ℤ :=
  A033416.P16813400956638980933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033417.P4257166697694358217

`floor(97/(n+1))`
-/

namespace A033417.P4257166697694358217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊97 / (n + 1 : ℚ)⌋

end

end A033417.P4257166697694358217

noncomputable section

/-- A033417: a(n) = floor(97/n).

Offset 1, canonical program `A033417.P4257166697694358217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033417 (n : ℕ) : ℤ :=
  A033417.P4257166697694358217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033418.P7473609855666910781

`floor(98/(n+1))`
-/

namespace A033418.P7473609855666910781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊98 / (n + 1 : ℚ)⌋

end

end A033418.P7473609855666910781

noncomputable section

/-- A033418: a(n) = floor(98/n).

Offset 1, canonical program `A033418.P7473609855666910781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033418 (n : ℕ) : ℤ :=
  A033418.P7473609855666910781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033419.P8954691230903850015

`floor(99/(n+1))`
-/

namespace A033419.P8954691230903850015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊99 / (n + 1 : ℚ)⌋

end

end A033419.P8954691230903850015

noncomputable section

/-- A033419: a(n) = floor(99/n).

Offset 1, canonical program `A033419.P8954691230903850015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033419 (n : ℕ) : ℤ :=
  A033419.P8954691230903850015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033420.P12921464162048996599

`floor(10*10/(n+1))`
-/

namespace A033420.P12921464162048996599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (10 / (n + 1 : ℚ))⌋

end

end A033420.P12921464162048996599

noncomputable section

/-- A033420: a(n) = floor(100/n).

Offset 1, canonical program `A033420.P12921464162048996599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033420 (n : ℕ) : ℤ :=
  A033420.P12921464162048996599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033421.P9884256580243270089

`floor(1000/(n+1))`
-/

namespace A033421.P9884256580243270089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1000 / (n + 1 : ℚ)⌋

end

end A033421.P9884256580243270089

noncomputable section

/-- A033421: a(n) = floor(1000/n).

Offset 1, canonical program `A033421.P9884256580243270089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033421 (n : ℕ) : ℤ :=
  A033421.P9884256580243270089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033422.P2227709605450584536

`floor(root(10, 1/4)/(n+1))`
-/

namespace A033422.P2227709605450584536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ)) / (n + 1 : ℝ)⌋

end

end A033422.P2227709605450584536

noncomputable section

/-- A033422: a(n) = floor(10000/n).

Offset 1, canonical program `A033422.P2227709605450584536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033422 (n : ℕ) : ℤ :=
  A033422.P2227709605450584536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033423.P16005701686632830815

`floor(root(10, 1/9)/(n+1))`
-/

namespace A033423.P16005701686632830815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ (1 / ((1 : ℚ) / 9 : ℝ)) / (n + 1 : ℝ)⌋

end

end A033423.P16005701686632830815

noncomputable section

/-- A033423: a(n) = floor(10^9/n).

Offset 1, canonical program `A033423.P16005701686632830815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033423 (n : ℕ) : ℤ :=
  A033423.P16005701686632830815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033424.P5499363210445852872

`floor(root(10, 1/8)/(n+1))`
-/

namespace A033424.P5499363210445852872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ (1 / ((1 : ℚ) / 8 : ℝ)) / (n + 1 : ℝ)⌋

end

end A033424.P5499363210445852872

noncomputable section

/-- A033424: a(n) = floor(10^8/n).

Offset 1, canonical program `A033424.P5499363210445852872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033424 (n : ℕ) : ℤ :=
  A033424.P5499363210445852872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033425.P1851077437487757364

`floor(root(10, 1/7)/(n+1))`
-/

namespace A033425.P1851077437487757364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ (1 / ((1 : ℚ) / 7 : ℝ)) / (n + 1 : ℝ)⌋

end

end A033425.P1851077437487757364

noncomputable section

/-- A033425: a(n) = floor(10^7/n).

Offset 1, canonical program `A033425.P1851077437487757364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033425 (n : ℕ) : ℤ :=
  A033425.P1851077437487757364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033426.P16968836947933501912

`floor(root(10, 1/6)/(n+1))`
-/

namespace A033426.P16968836947933501912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ)) / (n + 1 : ℝ)⌋

end

end A033426.P16968836947933501912

noncomputable section

/-- A033426: a(n) = floor(10^6/n).

Offset 1, canonical program `A033426.P16968836947933501912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033426 (n : ℕ) : ℤ :=
  A033426.P16968836947933501912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033440.P767056204837865368

`∑[floor(7*n/8)]`
-/

namespace A033440.P767056204837865368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 8)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033440.P767056204837865368

noncomputable section

/-- A033440: Number of edges in 8-partite Turán graph of order n.

Offset 0, canonical program `A033440.P767056204837865368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033440 (n : ℕ) : ℤ :=
  A033440.P767056204837865368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033441.P7002426787994454619

`∑[floor(8*n/9)]`
-/

namespace A033441.P7002426787994454619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n : ℚ) / 9)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033441.P7002426787994454619

noncomputable section

/-- A033441: Number of edges in 9-partite Turán graph of order n.

Offset 0, canonical program `A033441.P7002426787994454619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033441 (n : ℕ) : ℤ :=
  A033441.P7002426787994454619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033442.P1665598957934506230

`∑[floor(9*n/10)]`
-/

namespace A033442.P1665598957934506230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((n : ℚ) / 10)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033442.P1665598957934506230

noncomputable section

/-- A033442: Number of edges in 10-partite Turán graph of order n.

Offset 0, canonical program `A033442.P1665598957934506230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033442 (n : ℕ) : ℤ :=
  A033442.P1665598957934506230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033443.P2962011147976457901

`∑[floor(10*n/11)]`
-/

namespace A033443.P2962011147976457901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * ((n : ℚ) / 11)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033443.P2962011147976457901

noncomputable section

/-- A033443: Number of edges in 11-partite Turán graph of order n.

Offset 0, canonical program `A033443.P2962011147976457901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033443 (n : ℕ) : ℤ :=
  A033443.P2962011147976457901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033444.P13416078589530799631

`∑[floor(11*n/12)]`
-/

namespace A033444.P13416078589530799631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 * ((n : ℚ) / 12)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033444.P13416078589530799631

noncomputable section

/-- A033444: Number of edges in 12-partite Turán graph of order n.

Offset 0, canonical program `A033444.P13416078589530799631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033444 (n : ℕ) : ℤ :=
  A033444.P13416078589530799631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033455.P16533884470613736095

`∑[∑[∑[∑[4*n]+1]]]`
-/

namespace A033455.P16533884470613736095
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033455.P16533884470613736095

noncomputable section

/-- A033455: Convolution of nonzero squares A000290 with themselves.

Offset 1, canonical program `A033455.P16533884470613736095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033455 (n : ℕ) : ℤ :=
  (A033455.P16533884470613736095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033485.P7428668165629442739

`a(floor((n-1)/2))+a(n-1)` with `a(0)=1`
-/

namespace A033485.P7428668165629442739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1)

end

end A033485.P7428668165629442739

noncomputable section

/-- A033485: a(n) = a(n-1) + a(floor(n/2)), a(1) = 1.

Offset 1, canonical program `A033485.P7428668165629442739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033485 (n : ℕ) : ℤ :=
  (A033485.P7428668165629442739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033489.P3833060840150487728

`a(floor((n-1)/2))+2*a(n-1)` with `a(0)=1`
-/

namespace A033489.P3833060840150487728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 2 * a (n - 1)

end

end A033489.P3833060840150487728

noncomputable section

/-- A033489: a(1) = 1, a(n) = 2*a(n-1) + a([n/2]).

Offset 1, canonical program `A033489.P3833060840150487728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A033489 (n : ℕ) : ℤ :=
  (A033489.P3833060840150487728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A033489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033490.P5741188407014204125

`a(floor((n-1)/2))+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A033490.P5741188407014204125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 2 * a (n - 1)

end

end A033490.P5741188407014204125

noncomputable section

/-- A033490: a(n) = 2*a(n-1) + a(floor(n/2)), with a(1) = 1, a(2) = 2.

Offset 1, canonical program `A033490.P5741188407014204125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A033490 (n : ℕ) : ℤ :=
  (A033490.P5741188407014204125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A033490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033497.P6813935852033117476

`a(floor((n-1)/2))+2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A033497.P6813935852033117476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 2 * a (n - 1)

end

end A033497.P6813935852033117476

noncomputable section

/-- A033497: a(n) = 2*a(n-1) + a(floor(n/2)), with a(1) = 1, a(2) = 2, a(3) = 4.

Offset 1, canonical program `A033497.P6813935852033117476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A033497 (n : ℕ) : ℤ :=
  (A033497.P6813935852033117476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A033497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033551.P7987084353005576438

`round((n+1)²*atan(1))`
-/

namespace A033551.P7987084353005576438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) * Real.arctan (1 : ℝ))

end

end A033551.P7987084353005576438

noncomputable section

/-- A033551: Closest integer to (Pi/4)*n^2.

Offset 1, canonical program `A033551.P7987084353005576438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033551 (n : ℕ) : ℤ :=
  A033551.P7987084353005576438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033560.P2887487889709653491

`p?[p?[2*n+1]-24]`
-/

namespace A033560.P2887487889709653491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P2887487889709653491

noncomputable section

/-- A033560: Primes p such that 4!+p is also prime.

Offset 1, canonical program `A033560.P2887487889709653491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2578 terms. -/
def A033560 (n : ℕ) : ℤ :=
  A033560.P2887487889709653491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2578 terms. -/
def A033560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033691.P5317964984543265291

`4*round((n+3)²/8)`
-/

namespace A033691.P5317964984543265291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 8)

end

end A033691.P5317964984543265291

noncomputable section

/-- A033691: Minimal number of vertices in 1-1 deficient regular graph where minimal degree is 1 and maximal degree is n.

Offset 2, canonical program `A033691.P5317964984543265291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033691 (n : ℕ) : ℤ :=
  A033691.P5317964984543265291.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033814.P15924449485678844206

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=7, a(1)=11`
-/

namespace A033814.P15924449485678844206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 11] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P15924449485678844206

noncomputable section

/-- A033814: Convolution of positive integers n with Lucas numbers L(k)(A000032) for k >= 4.

Offset 1, canonical program `A033814.P15924449485678844206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A033814 (n : ℕ) : ℤ :=
  (A033814.P15924449485678844206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A033814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033817.P11473347610784516059

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=7, a(1)=-4`
-/

namespace A033817.P11473347610784516059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, -4] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033817.P11473347610784516059

noncomputable section

/-- A033817: Convolution of natural numbers n >= 1 with Lucas numbers L(k) for k >= -4.

Offset 1, canonical program `A033817.P11473347610784516059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A033817 (n : ℕ) : ℤ :=
  A033817.P11473347610784516059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A033817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033818.P738251255217305833

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=3, a(1)=-1`
-/

namespace A033818.P738251255217305833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033818.P738251255217305833

noncomputable section

/-- A033818: Convolution of natural numbers n >= 1 with Lucas numbers L(k) for k >= -2.

Offset 1, canonical program `A033818.P738251255217305833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A033818 (n : ℕ) : ℤ :=
  A033818.P738251255217305833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A033818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033880.P18212552127170526022

`∑{d}[n+1, #]-2*(n+1)`
-/

namespace A033880.P18212552127170526022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)

end

end A033880.P18212552127170526022

noncomputable section

/-- A033880: Abundance of n, or (sum of divisors of n) - 2n.

Offset 1, canonical program `A033880.P18212552127170526022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033880 (n : ℕ) : ℤ :=
  A033880.P18212552127170526022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033885.P1100004503983371982

`3*(n+1)-∑{d}[n+1, #]`
-/

namespace A033885.P1100004503983371982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A033885.P1100004503983371982

noncomputable section

/-- A033885: a(n) = 3*n - sum of divisors of n.

Offset 1, canonical program `A033885.P1100004503983371982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033885 (n : ℕ) : ℤ :=
  A033885.P1100004503983371982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033937.P8495164939810917271

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=2, a(1)=3`
-/

namespace A033937.P8495164939810917271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033937.P8495164939810917271

noncomputable section

/-- A033937: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), k >= 3.

Offset 0, canonical program `A033937.P8495164939810917271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A033937 (n : ℕ) : ℤ :=
  (A033937.P8495164939810917271.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A033937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033960.P12639559723270511951

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=3, a(1)=5`
-/

namespace A033960.P12639559723270511951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033960.P12639559723270511951

noncomputable section

/-- A033960: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), k >= 4.

Offset 0, canonical program `A033960.P12639559723270511951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A033960 (n : ℕ) : ℤ :=
  (A033960.P12639559723270511951.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A033960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033994.P10489001588678592499

`∑[∑[5*n+2]]`
-/

namespace A033994.P10489001588678592499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033994.P10489001588678592499

noncomputable section

/-- A033994: a(n) = n*(n+1)*(5*n+1)/6.

Offset 1, canonical program `A033994.P10489001588678592499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033994 (n : ℕ) : ℤ :=
  (A033994.P10489001588678592499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034007.P2121894641248559257

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4, a(4)=9`
-/

namespace A034007.P2121894641248559257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 4, 9] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A034007.P2121894641248559257

noncomputable section

/-- A034007: First differences of A045891.

Offset 0, canonical program `A034007.P2121894641248559257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A034007 (n : ℕ) : ℤ :=
  A034007.P2121894641248559257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A034007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034008.P7593150546580332811

`abs(ceil((-2)^(n-2)))`
-/

namespace A034008.P7593150546580332811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|

end

end A034008.P7593150546580332811

noncomputable section

/-- A034008: a(n) = floor(2^|n-1|/2). Or: 1, 0, followed by powers of 2.

Offset 0, canonical program `A034008.P7593150546580332811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A034008 (n : ℕ) : ℤ :=
  A034008.P7593150546580332811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A034008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034106.P14528470251754507863

`1+(n+5)²`
-/

namespace A034106.P14528470251754507863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + 5) ^ 2

end

end A034106.P14528470251754507863

noncomputable section

/-- A034106: Fractional part of square root of n starts with 0: first term of runs (squares excluded).

Offset 1, canonical program `A034106.P14528470251754507863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9044 terms. -/
def A034106 (n : ℕ) : ℤ :=
  (A034106.P14528470251754507863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9044 terms. -/
def A034106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034107.P10897991379751370644

`ceil((31/10+n)²)`
-/

namespace A034107.P10897991379751370644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((31 : ℚ) / 10 + (n : ℚ)) ^ 2⌉

end

end A034107.P10897991379751370644

noncomputable section

/-- A034107: Fractional part of square root of a(n) starts with 1: first term of runs.

Offset 1, canonical program `A034107.P10897991379751370644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9015 terms. -/
def A034107 (n : ℕ) : ℤ :=
  A034107.P10897991379751370644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9015 terms. -/
def A034107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034109.P8926590697814807842

`ceil((33/10+n)²)`
-/

namespace A034109.P8926590697814807842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((33 : ℚ) / 10 + (n : ℚ)) ^ 2⌉

end

end A034109.P8926590697814807842

noncomputable section

/-- A034109: Fractional part of square root of a(n) starts with 3: first term of runs.

Offset 1, canonical program `A034109.P8926590697814807842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8691 terms. -/
def A034109 (n : ℕ) : ℤ :=
  A034109.P8926590697814807842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8691 terms. -/
def A034109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034110.P3181133878637248306

`ceil((7/5+n)²)`
-/

namespace A034110.P3181133878637248306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((7 : ℚ) / 5 + (n : ℚ)) ^ 2⌉

end

end A034110.P3181133878637248306

noncomputable section

/-- A034110: Fractional part of square root of a(n) starts with 4: first term of runs.

Offset 1, canonical program `A034110.P3181133878637248306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8677 terms. -/
def A034110 (n : ℕ) : ℤ :=
  A034110.P3181133878637248306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8677 terms. -/
def A034110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034112.P10496871866684969466

`ceil((13/5+n)²)`
-/

namespace A034112.P10496871866684969466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((13 : ℚ) / 5 + (n : ℚ)) ^ 2⌉

end

end A034112.P10496871866684969466

noncomputable section

/-- A034112: Fractional part of square root of a(n) starts with 6: first term of runs.

Offset 1, canonical program `A034112.P10496871866684969466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8477 terms. -/
def A034112 (n : ℕ) : ℤ :=
  A034112.P10496871866684969466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8477 terms. -/
def A034112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034114.P16735787600543166370

`ceil((14/5+n)²)`
-/

namespace A034114.P16735787600543166370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((14 : ℚ) / 5 + (n : ℚ)) ^ 2⌉

end

end A034114.P16735787600543166370

noncomputable section

/-- A034114: Fractional part of square root of a(n) starts with 8: first term of runs.

Offset 1, canonical program `A034114.P16735787600543166370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8897 terms. -/
def A034114 (n : ℕ) : ℤ :=
  A034114.P16735787600543166370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8897 terms. -/
def A034114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034126.P12920228913900925992

`(n+2)^3+1`
-/

namespace A034126.P12920228913900925992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 3 + 1

end

end A034126.P12920228913900925992

noncomputable section

/-- A034126: Decimal part of cube root of a(n) starts with 0: first term of runs (cubes excluded).

Offset 1, canonical program `A034126.P12920228913900925992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A034126 (n : ℕ) : ℤ :=
  (A034126.P12920228913900925992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A034126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034127.P17746853730717763161

`ceil((21/10+n)^3)`
-/

namespace A034127.P17746853730717763161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((21 : ℚ) / 10 + (n : ℚ)) ^ 3⌉

end

end A034127.P17746853730717763161

noncomputable section

/-- A034127: Decimal part of cube root of a(n) starts with 1: first term of runs.

Offset 1, canonical program `A034127.P17746853730717763161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A034127 (n : ℕ) : ℤ :=
  A034127.P17746853730717763161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A034127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034128.P4607021986100968026

`ceil((6/5+n)^3)`
-/

namespace A034128.P4607021986100968026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((6 : ℚ) / 5 + (n : ℚ)) ^ 3⌉

end

end A034128.P4607021986100968026

noncomputable section

/-- A034128: Decimal part of cube root of a(n) starts with 2: first term of runs.

Offset 1, canonical program `A034128.P4607021986100968026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A034128 (n : ℕ) : ℤ :=
  A034128.P4607021986100968026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A034128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034129.P2846270783544421952

`ceil((23/10+n)^3)`
-/

namespace A034129.P2846270783544421952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((23 : ℚ) / 10 + (n : ℚ)) ^ 3⌉

end

end A034129.P2846270783544421952

noncomputable section

/-- A034129: Decimal part of cube root of a(n) starts with 3: first term of runs.

Offset 1, canonical program `A034129.P2846270783544421952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A034129 (n : ℕ) : ℤ :=
  A034129.P2846270783544421952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A034129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034130.P12060966931585883767

`ceil((7/5+n)^3)`
-/

namespace A034130.P12060966931585883767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((7 : ℚ) / 5 + (n : ℚ)) ^ 3⌉

end

end A034130.P12060966931585883767

noncomputable section

/-- A034130: Decimal part of cube root of a(n) starts with 4: first term of runs.

Offset 1, canonical program `A034130.P12060966931585883767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A034130 (n : ℕ) : ℤ :=
  A034130.P12060966931585883767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A034130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034131.P819874710586960797

`ceil((3/2+n)^3)`
-/

namespace A034131.P819874710586960797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) / 2 + (n : ℚ)) ^ 3⌉

end

end A034131.P819874710586960797

noncomputable section

/-- A034131: a(n) = ceiling((n + 1/2)^3).

Offset 1, canonical program `A034131.P819874710586960797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034131 (n : ℕ) : ℤ :=
  A034131.P819874710586960797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034132.P10568988092711729101

`ceil((13/5+n)^3)`
-/

namespace A034132.P10568988092711729101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((13 : ℚ) / 5 + (n : ℚ)) ^ 3⌉

end

end A034132.P10568988092711729101

noncomputable section

/-- A034132: Decimal part of cube root of a(n) starts with 6: first term of runs.

Offset 1, canonical program `A034132.P10568988092711729101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A034132 (n : ℕ) : ℤ :=
  A034132.P10568988092711729101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A034132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034133.P6288750528497888348

`ceil((17/10+n)^3)`
-/

namespace A034133.P6288750528497888348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((17 : ℚ) / 10 + (n : ℚ)) ^ 3⌉

end

end A034133.P6288750528497888348

noncomputable section

/-- A034133: a(n) = ceiling((n + 7/10)^3).

Offset 1, canonical program `A034133.P6288750528497888348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034133 (n : ℕ) : ℤ :=
  A034133.P6288750528497888348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034134.P1948593362073543312

`ceil((9/5+n)^3)`
-/

namespace A034134.P1948593362073543312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((9 : ℚ) / 5 + (n : ℚ)) ^ 3⌉

end

end A034134.P1948593362073543312

noncomputable section

/-- A034134: Decimal part of cube root of a(n) starts with 8: first term of runs.

Offset 1, canonical program `A034134.P1948593362073543312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A034134 (n : ℕ) : ℤ :=
  A034134.P1948593362073543312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A034134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034135.P18125582725739308436

`ceil((19/10+n)^3)`
-/

namespace A034135.P18125582725739308436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((19 : ℚ) / 10 + (n : ℚ)) ^ 3⌉

end

end A034135.P18125582725739308436

noncomputable section

/-- A034135: Decimal part of cube root of n starts with 9: first term of runs.

Offset 1, canonical program `A034135.P18125582725739308436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A034135 (n : ℕ) : ℤ :=
  A034135.P18125582725739308436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A034135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034171.P15156061293600012407

`(9-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A034171.P15156061293600012407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A034171.P15156061293600012407

noncomputable section

/-- A034171: Related to triple factorial numbers A007559(n+1).

Offset 0, canonical program `A034171.P15156061293600012407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A034171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034171.P15156061293600012407.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A034171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034265.P13972950744391404901

`∑[(n+1)*C(n+5, 5)]`
-/

namespace A034265.P13972950744391404901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 5) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034265.P13972950744391404901

noncomputable section

/-- A034265: a(n) = binomial(n+6,6)*(6*n+7)/7.

Offset 0, canonical program `A034265.P13972950744391404901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034265 (n : ℕ) : ℤ :=
  (A034265.P13972950744391404901.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034266.P11136065735789325836

`∑[n*∑[∑[∑[∑[∑[n]]]]]]`
-/

namespace A034266.P11136065735789325836
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034266.P11136065735789325836

noncomputable section

/-- A034266: Partial sums of A027818.

Offset 0, canonical program `A034266.P11136065735789325836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034266 (n : ℕ) : ℤ :=
  (A034266.P11136065735789325836.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034326.P16023124415976353290

`1+n%12`
-/

namespace A034326.P16023124415976353290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n % 12

end

end A034326.P16023124415976353290

noncomputable section

/-- A034326: Hours struck by a clock.

Offset 1, canonical program `A034326.P16023124415976353290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034326 (n : ℕ) : ℤ :=
  (A034326.P16023124415976353290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034517.P4555784559519111850

`∑{d}[-a(n-1), #^n]` with `a(0)=10`
-/

namespace A034517.P4555784559519111850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034517.P4555784559519111850

noncomputable section

/-- A034517: Sum of n-th powers of divisors of 10.

Offset 0, canonical program `A034517.P4555784559519111850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A034517 (n : ℕ) : ℤ :=
  (A034517.P4555784559519111850.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A034517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034677.P7109418402625381145

`∏{p}[n+1, #^3^val(n+1, #)+1]`
-/

namespace A034677.P7109418402625381145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 3) ^ SequenceMachineLib.valuation (n + 1) p + 1)

end

end A034677.P7109418402625381145

noncomputable section

/-- A034677: Sum of cubes of unitary divisors of n.

Offset 1, canonical program `A034677.P7109418402625381145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034677 (n : ℕ) : ℤ :=
  (A034677.P7109418402625381145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034695.P16631369386541678886

`∏{e}[n+1, C(#+5, 5)]`
-/

namespace A034695.P16631369386541678886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 5) 5

end

end A034695.P16631369386541678886

noncomputable section

/-- A034695: Tau_6 (the 6th Piltz divisor function), the number of ordered 6-factorizations of n; Dirichlet convolution of number-of-divisors function (A000005) with A007426.

Offset 1, canonical program `A034695.P16631369386541678886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034695 (n : ℕ) : ℤ :=
  (A034695.P16631369386541678886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034709.P7982939178943539614

`eq[n+1, lcm(n+1, (n+1)%10)]+1`
-/

namespace A034709.P7982939178943539614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) % 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A034709.P7982939178943539614

noncomputable section

/-- A034709: Numbers divisible by their last digit.

Offset 1, canonical program `A034709.P7982939178943539614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034709 (n : ℕ) : ℤ :=
  (A034709.P7982939178943539614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034714.P14698703645292900834

`∑{d}[n+1, lcm(#, (n+1)²)]`
-/

namespace A034714.P14698703645292900834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm d ((n + 1) ^ 2)

end

end A034714.P14698703645292900834

noncomputable section

/-- A034714: Dirichlet convolution of squares with themselves.

Offset 1, canonical program `A034714.P14698703645292900834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034714 (n : ℕ) : ℤ :=
  (A034714.P14698703645292900834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034720.P1894430720791270916

`∑[∑[20*n-6]+7]`
-/

namespace A034720.P1894430720791270916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034720.P1894430720791270916

noncomputable section

/-- A034720: Number of different words that can be formed from an n X n grid of letters, reading horizontally, vertically or diagonally.

Offset 1, canonical program `A034720.P1894430720791270916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034720 (n : ℕ) : ℤ :=
  A034720.P1894430720791270916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034730.P89336423345869223

`∑{d}[n+1, 3^(#-1)]`
-/

namespace A034730.P89336423345869223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A034730.P89336423345869223

noncomputable section

/-- A034730: Dirichlet convolution of b_n=1 with c_n=3^(n-1).

Offset 1, canonical program `A034730.P89336423345869223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034730 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034730.P89336423345869223.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034934.P8564178328694877679

`floor(2/3*p?[3*n-1])`
-/

namespace A034934.P8564178328694877679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A034934.P8564178328694877679

noncomputable section

/-- A034934: Numbers k such that (3*k + 1)/2 is prime.

Offset 1, canonical program `A034934.P8564178328694877679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034934 (n : ℕ) : ℤ :=
  A034934.P8564178328694877679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035038.P15549340193849281415

`C(n-1, 5)+2*a(n-1)` with `a(0)=0`
-/

namespace A035038.P15549340193849281415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ((n : ℤ) - 1).toNat 5 + 2 * a (n - 1)

end

end A035038.P15549340193849281415

noncomputable section

/-- A035038: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,5).

Offset 0, canonical program `A035038.P15549340193849281415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035038 (n : ℕ) : ℤ :=
  (A035038.P15549340193849281415.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A035038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035070.P4545057050947977545

`ceil(sqrt(3)*sqrt(10)^(n+1))`
-/

namespace A035070.P4545057050947977545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 : ℝ) * Real.sqrt (10 : ℝ) ^ (n + 1)⌉

end

end A035070.P4545057050947977545

noncomputable section

/-- A035070: a(n) is root of square starting with digit 3: first term of runs.

Offset 1, canonical program `A035070.P4545057050947977545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A035070 (n : ℕ) : ℤ :=
  A035070.P4545057050947977545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A035070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035073.P10633950341508345122

`ceil(6*sqrt(10^(n+1)/6))`
-/

namespace A035073.P10633950341508345122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 * Real.sqrt ((10 ^ (n + 1) : ℚ) / 6 : ℝ)⌉

end

end A035073.P10633950341508345122

noncomputable section

/-- A035073: a(n) is root of square starting with digit 6: first term of runs.

Offset 1, canonical program `A035073.P10633950341508345122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A035073 (n : ℕ) : ℤ :=
  A035073.P10633950341508345122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A035073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035076.P18012669359341082762

`ceil(30*10^(n/2))`
-/

namespace A035076.P18012669359341082762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈30 * (10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉

end

end A035076.P18012669359341082762

noncomputable section

/-- A035076: a(n) is root of square starting with digit 9: first term of runs.

Offset 2, canonical program `A035076.P18012669359341082762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A035076 (n : ℕ) : ℤ :=
  A035076.P18012669359341082762.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A035076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035195.P607827720367906070

`∑{d}[n+1, #^6]%13`
-/

namespace A035195.P607827720367906070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 6) % 13

end

end A035195.P607827720367906070

noncomputable section

/-- A035195: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 13.

Offset 1, canonical program `A035195.P607827720367906070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035195 (n : ℕ) : ℤ :=
  (A035195.P607827720367906070.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035207.P10727660904330880989

`∑{d}[n+1, (#^4)%5]`
-/

namespace A035207.P10727660904330880989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 4 % 5

end

end A035207.P10727660904330880989

noncomputable section

/-- A035207: Coefficients in expansion of Dirichlet series Product_p (1 - (Kronecker(m,p) + 1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 25.

Offset 1, canonical program `A035207.P10727660904330880989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035207 (n : ℕ) : ℤ :=
  (A035207.P10727660904330880989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035256.P18313884839867375401

`lt[0, ∑{d}[n+1, #^6]%13]+1`
-/

namespace A035256.P18313884839867375401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d ^ 6) % 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A035256.P18313884839867375401

noncomputable section

/-- A035256: Positive integers of the form x^2+3xy-y^2.

Offset 1, canonical program `A035256.P18313884839867375401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A035256 (n : ℕ) : ℤ :=
  (A035256.P18313884839867375401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A035256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035289.P391230924104628955

`(n+1)^4-(1-3*n)²`
-/

namespace A035289.P391230924104628955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - (1 - (3 * n : ℤ)) ^ 2

end

end A035289.P391230924104628955

noncomputable section

/-- A035289: Number of ways to place a non-attacking white and black knight on n X n chessboard.

Offset 1, canonical program `A035289.P391230924104628955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035289 (n : ℕ) : ℤ :=
  A035289.P391230924104628955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035291.P8813728614149585483

`8*∑[n*C(n, 2)]`
-/

namespace A035291.P8813728614149585483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035291.P8813728614149585483

noncomputable section

/-- A035291: Number of ways to place a non-attacking white and black queen on n X n chessboard.

Offset 1, canonical program `A035291.P8813728614149585483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035291 (n : ℕ) : ℤ :=
  (A035291.P8813728614149585483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035327.P18221771906456089932

`(a(n-1)-1+n)%n` with `a(0)=1`
-/

namespace A035327.P18221771906456089932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) - 1 + (n : ℤ)) (n : ℤ)

end

end A035327.P18221771906456089932

noncomputable section

/-- A035327: Write n in binary, interchange 0's and 1's, convert back to decimal.

Offset 0, canonical program `A035327.P18221771906456089932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035327 (n : ℕ) : ℤ :=
  A035327.P18221771906456089932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035339.P690890145645417241

`4*(2*floor(ϕ*(n+1))+n)+n`
-/

namespace A035339.P690890145645417241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) + (n : ℤ)

end

end A035339.P690890145645417241

noncomputable section

/-- A035339: 5th column of Wythoff array.

Offset 0, canonical program `A035339.P690890145645417241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035339 (n : ℕ) : ℤ :=
  A035339.P690890145645417241.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035492.P4305810262129971172

`(2*a(n-1))%Δ[n²]` with `a(0)=1`
-/

namespace A035492.P4305810262129971172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * a (n - 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A035492.P4305810262129971172

noncomputable section

/-- A035492: Position of card 1 after n-th shuffle in Guy's shuffling problem (A035485).

Offset 0, canonical program `A035492.P4305810262129971172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035492 (n : ℕ) : ℤ :=
  A035492.P4305810262129971172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035877.P158235201964085113

`n*(and(2, a(n-1))²+2)` with `a(0)=1`
-/

namespace A035877.P158235201964085113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (Nat.land 2 (a (n - 1)) ^ 2 + 2)

end

end A035877.P158235201964085113

noncomputable section

/-- A035877: Number of points of l_1 norm n in the "diamond" lattice D^+_2, i. e. the rectangular lattice generated by vectors (1, 1) and (-1/2, 1/2).

Offset 0, canonical program `A035877.P158235201964085113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035877 (n : ℕ) : ℤ :=
  (A035877.P158235201964085113.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035927.P5963660235913258710

`C(n+9, 9)-1`
-/

namespace A035927.P5963660235913258710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) - 1

end

end A035927.P5963660235913258710

noncomputable section

/-- A035927: One less than number of n-multisets chosen from a 10-set.

Offset 0, canonical program `A035927.P5963660235913258710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035927 (n : ℕ) : ℤ :=
  A035927.P5963660235913258710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036071.P17029302792826011541

`5^n*C(n+4, 4)`
-/

namespace A036071.P17029302792826011541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * Nat.choose (n + 4) 4

end

end A036071.P17029302792826011541

noncomputable section

/-- A036071: Expansion of 1/(1-5*x)^5.

Offset 0, canonical program `A036071.P17029302792826011541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A036071 (n : ℕ) : ℤ :=
  (A036071.P17029302792826011541.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A036071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036083.P3039603564430814823

`5^(n-1)*C(n+5, 4)`
-/

namespace A036083.P3039603564430814823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 5) 4 : ℚ)

end

end A036083.P3039603564430814823

noncomputable section

/-- A036083: Expansion of (-1+1/(1-5*x)^5)/(25*x); related to A036071.

Offset 0, canonical program `A036083.P3039603564430814823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A036083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036083.P3039603564430814823.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A036083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036084.P3308043741755964215

`6^n*C(n+5, 5)`
-/

namespace A036084.P3308043741755964215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 5) 5

end

end A036084.P3308043741755964215

noncomputable section

/-- A036084: Expansion of 1/(1-6*x)^6.

Offset 0, canonical program `A036084.P3308043741755964215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A036084 (n : ℕ) : ℤ :=
  (A036084.P3308043741755964215.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A036084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036121.P3665828333546767609

`(5*a(n-1))%23` with `a(0)=1`
-/

namespace A036121.P3665828333546767609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) % 23

end

end A036121.P3665828333546767609

noncomputable section

/-- A036121: 5^n mod 23.

Offset 0, canonical program `A036121.P3665828333546767609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036121 (n : ℕ) : ℤ :=
  (A036121.P3665828333546767609.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036123.P4876234955971820171

`(3*a(n-1))%31` with `a(0)=1`
-/

namespace A036123.P4876234955971820171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 31

end

end A036123.P4876234955971820171

noncomputable section

/-- A036123: a(n) = 3^n mod 31.

Offset 0, canonical program `A036123.P4876234955971820171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036123 (n : ℕ) : ℤ :=
  (A036123.P4876234955971820171.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036124.P11320737138088081315

`(2*a(n-1))%37` with `a(0)=1`
-/

namespace A036124.P11320737138088081315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 37

end

end A036124.P11320737138088081315

noncomputable section

/-- A036124: a(n) = 2^n mod 37.

Offset 0, canonical program `A036124.P11320737138088081315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036124 (n : ℕ) : ℤ :=
  (A036124.P11320737138088081315.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036125.P15090397676086787765

`(6*a(n-1))%41` with `a(0)=1`
-/

namespace A036125.P15090397676086787765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) % 41

end

end A036125.P15090397676086787765

noncomputable section

/-- A036125: a(n) = 6^n mod 41.

Offset 0, canonical program `A036125.P15090397676086787765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036125 (n : ℕ) : ℤ :=
  (A036125.P15090397676086787765.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036126.P15487474494530532571

`(3*a(n-1))%43` with `a(0)=1`
-/

namespace A036126.P15487474494530532571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 43

end

end A036126.P15487474494530532571

noncomputable section

/-- A036126: a(n) = 3^n mod 43.

Offset 0, canonical program `A036126.P15487474494530532571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036126 (n : ℕ) : ℤ :=
  (A036126.P15487474494530532571.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036127.P14687054879537443389

`(5*a(n-1))%47` with `a(0)=1`
-/

namespace A036127.P14687054879537443389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) % 47

end

end A036127.P14687054879537443389

noncomputable section

/-- A036127: a(n) = 5^n mod 47.

Offset 0, canonical program `A036127.P14687054879537443389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036127 (n : ℕ) : ℤ :=
  (A036127.P14687054879537443389.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036128.P1738307648306409330

`(2*a(n-1))%53` with `a(0)=1`
-/

namespace A036128.P1738307648306409330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 53

end

end A036128.P1738307648306409330

noncomputable section

/-- A036128: a(n) = 2^n mod 53.

Offset 0, canonical program `A036128.P1738307648306409330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036128 (n : ℕ) : ℤ :=
  (A036128.P1738307648306409330.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036129.P18014451821212564442

`(2*a(n-1))%59` with `a(0)=1`
-/

namespace A036129.P18014451821212564442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 59

end

end A036129.P18014451821212564442

noncomputable section

/-- A036129: a(n) = 2^n mod 59.

Offset 0, canonical program `A036129.P18014451821212564442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036129 (n : ℕ) : ℤ :=
  (A036129.P18014451821212564442.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036130.P12452583498296051354

`(2*a(n-1))%61` with `a(0)=1`
-/

namespace A036130.P12452583498296051354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 61

end

end A036130.P12452583498296051354

noncomputable section

/-- A036130: a(n) = 2^n mod 61.

Offset 0, canonical program `A036130.P12452583498296051354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036130 (n : ℕ) : ℤ :=
  (A036130.P12452583498296051354.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036131.P17622766726569543646

`(2*a(n-1))%67` with `a(0)=1`
-/

namespace A036131.P17622766726569543646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 67

end

end A036131.P17622766726569543646

noncomputable section

/-- A036131: a(n) = 2^n mod 67.

Offset 0, canonical program `A036131.P17622766726569543646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036131 (n : ℕ) : ℤ :=
  (A036131.P17622766726569543646.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036132.P323121095900928580

`(a(n-1)+6*a(n-1))%71` with `a(0)=1`
-/

namespace A036132.P323121095900928580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 6 * a (n - 1)) % 71

end

end A036132.P323121095900928580

noncomputable section

/-- A036132: a(n) = 7^n mod 71.

Offset 0, canonical program `A036132.P323121095900928580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036132 (n : ℕ) : ℤ :=
  (A036132.P323121095900928580.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036133.P7173657356476162474

`(5*a(n-1))%73` with `a(0)=1`
-/

namespace A036133.P7173657356476162474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) % 73

end

end A036133.P7173657356476162474

noncomputable section

/-- A036133: a(n) = 5^n mod 73.

Offset 0, canonical program `A036133.P7173657356476162474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036133 (n : ℕ) : ℤ :=
  (A036133.P7173657356476162474.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036134.P2381753777645845354

`(3*a(n-1))%79` with `a(0)=1`
-/

namespace A036134.P2381753777645845354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 79

end

end A036134.P2381753777645845354

noncomputable section

/-- A036134: a(n) = 3^n mod 79.

Offset 0, canonical program `A036134.P2381753777645845354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036134 (n : ℕ) : ℤ :=
  (A036134.P2381753777645845354.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036135.P6589999945360916256

`(2*a(n-1))%83` with `a(0)=1`
-/

namespace A036135.P6589999945360916256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 83

end

end A036135.P6589999945360916256

noncomputable section

/-- A036135: a(n) = 2^n mod 83.

Offset 0, canonical program `A036135.P6589999945360916256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036135 (n : ℕ) : ℤ :=
  (A036135.P6589999945360916256.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036136.P1806144567344527114

`(3*a(n-1))%89` with `a(0)=1`
-/

namespace A036136.P1806144567344527114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 89

end

end A036136.P1806144567344527114

noncomputable section

/-- A036136: a(n) = 3^n mod 89.

Offset 0, canonical program `A036136.P1806144567344527114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036136 (n : ℕ) : ℤ :=
  (A036136.P1806144567344527114.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036137.P9131181342303073359

`(5*a(n-1))%97` with `a(0)=1, a(1)=5`
-/

namespace A036137.P9131181342303073359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * a (n - 1) % 97

end

end A036137.P9131181342303073359

noncomputable section

/-- A036137: a(n) = 5^n mod 97.

Offset 0, canonical program `A036137.P9131181342303073359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036137 (n : ℕ) : ℤ :=
  (A036137.P9131181342303073359.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036139.P12226429817620247209

`(5*a(n-1))%103` with `a(0)=1`
-/

namespace A036139.P12226429817620247209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) % 103

end

end A036139.P12226429817620247209

noncomputable section

/-- A036139: a(n) = 5^n mod 103.

Offset 0, canonical program `A036139.P12226429817620247209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036139 (n : ℕ) : ℤ :=
  (A036139.P12226429817620247209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036140.P17553244430417077579

`(2*a(n-1))%(16/2+99)` with `a(0)=1, a(1)=2`
-/

namespace A036140.P17553244430417077579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (2 * a (n - 1)) (SequenceMachineLib.roundAway ((16 : ℚ) / 2 + 99))

end

end A036140.P17553244430417077579

noncomputable section

/-- A036140: a(n) = 2^n mod 107.

Offset 0, canonical program `A036140.P17553244430417077579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036140 (n : ℕ) : ℤ :=
  A036140.P17553244430417077579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036158.P5109145305531256395

`(3*a(n-1))%((42/3)²+3)` with `a(0)=1`
-/

namespace A036158.P5109145305531256395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (3 * a (n - 1)) (SequenceMachineLib.roundAway (((42 : ℚ) / 3) ^ 2 + 3))

end

end A036158.P5109145305531256395

noncomputable section

/-- A036158: 3^n mod 199.

Offset 0, canonical program `A036158.P5109145305531256395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036158 (n : ℕ) : ℤ :=
  A036158.P5109145305531256395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036219.P17574311599125660587

`3^n*C(n+5, 5)`
-/

namespace A036219.P17574311599125660587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 5) 5

end

end A036219.P17574311599125660587

noncomputable section

/-- A036219: Expansion of 1/(1-3*x)^6; 6-fold convolution of A000244 (powers of 3).

Offset 0, canonical program `A036219.P17574311599125660587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A036219 (n : ℕ) : ℤ :=
  (A036219.P17574311599125660587.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A036219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036220.P3183934055485690499

`3^n*C(n+6, 6)`
-/

namespace A036220.P3183934055485690499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 6) 6

end

end A036220.P3183934055485690499

noncomputable section

/-- A036220: Expansion of 1/(1-3*x)^7; 7-fold convolution of A000244 (powers of 3).

Offset 0, canonical program `A036220.P3183934055485690499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A036220 (n : ℕ) : ℤ :=
  (A036220.P3183934055485690499.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A036220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036221.P5459320312661242391

`3^n*C(n+7, 7)`
-/

namespace A036221.P5459320312661242391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 7) 7

end

end A036221.P5459320312661242391

noncomputable section

/-- A036221: Expansion of 1/(1-3*x)^8; 8-fold convolution of A000244 (powers of 3).

Offset 0, canonical program `A036221.P5459320312661242391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A036221 (n : ℕ) : ℤ :=
  (A036221.P5459320312661242391.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A036221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036222.P6654025889481524799

`3^n*C(n+8, 8)`
-/

namespace A036222.P6654025889481524799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 8) 8

end

end A036222.P6654025889481524799

noncomputable section

/-- A036222: Expansion of 1/(1-3*x)^9; 9-fold convolution of A000244 (powers of 3).

Offset 0, canonical program `A036222.P6654025889481524799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A036222 (n : ℕ) : ℤ :=
  (A036222.P6654025889481524799.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A036222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036223.P17372873583021482764

`3^n*C(n+9, 9)`
-/

namespace A036223.P17372873583021482764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 9) 9

end

end A036223.P17372873583021482764

noncomputable section

/-- A036223: Expansion of 1/(1-3*x)^10; 10-fold convolution of A000244 (powers of 3).

Offset 0, canonical program `A036223.P17372873583021482764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A036223 (n : ℕ) : ℤ :=
  (A036223.P17372873583021482764.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A036223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036224.P7356945529173873238

`6^(n-1)*C(n+6, 5)`
-/

namespace A036224.P7356945529173873238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 6) 5 : ℚ)

end

end A036224.P7356945529173873238

noncomputable section

/-- A036224: Expansion of (-1+1/(1-6*x)^6)/(36*x); related to A036084.

Offset 0, canonical program `A036224.P7356945529173873238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A036224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036224.P7356945529173873238.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A036224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036226.P3450782524642580202

`7^n*C(n+6, 6)`
-/

namespace A036226.P3450782524642580202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Nat.choose (n + 6) 6

end

end A036226.P3450782524642580202

noncomputable section

/-- A036226: Expansion of 1/(1-7*x)^7.

Offset 0, canonical program `A036226.P3450782524642580202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A036226 (n : ℕ) : ℤ :=
  (A036226.P3450782524642580202.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A036226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036288.P5869837535348566754

`∑{p}[n+1, #*val(n+1, #)]+1`
-/

namespace A036288.P5869837535348566754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1

end

end A036288.P5869837535348566754

noncomputable section

/-- A036288: a(n) = 1 + integer log of n: if the prime factorization of n is n = Product (p_j^k_j) then a(n) = 1 + Sum (p_j * k_j) (cf. A001414).

Offset 1, canonical program `A036288.P5869837535348566754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036288 (n : ℕ) : ℤ :=
  (A036288.P5869837535348566754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036430.P13083793619958095588

`a(∑{e}[n+1, #]-1)+1` with `a(0)=0`
-/

namespace A036430.P13083793619958095588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p - 1) + 1

end

end A036430.P13083793619958095588

noncomputable section

/-- A036430: Number of iterations needed to reach 1 under the map n -> Omega(n).

Offset 1, canonical program `A036430.P13083793619958095588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036430 (n : ℕ) : ℤ :=
  (A036430.P13083793619958095588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036450.P14000973050640997372

`∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1]`
-/

namespace A036450.P14000973050640997372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A036450.P14000973050640997372

noncomputable section

/-- A036450: a(n) = d(d(d(n))), the 3rd iterate of the number-of-divisors function with an initial value of n.

Offset 1, canonical program `A036450.P14000973050640997372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036450 (n : ℕ) : ℤ :=
  (A036450.P14000973050640997372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036452.P15818655919391954811

`∏{e}[∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1], #+1]`
-/

namespace A036452.P15818655919391954811
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A036452.P15818655919391954811

noncomputable section

/-- A036452: a(n) = d(d(d(d(n)))), the 4th iterate of number-of-divisors function with initial value of n.

Offset 1, canonical program `A036452.P15818655919391954811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036452 (n : ℕ) : ℤ :=
  (A036452.P15818655919391954811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036464.P1944052838228668969

`∑[4*n*C(n, 2)]`
-/

namespace A036464.P1944052838228668969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P1944052838228668969

noncomputable section

/-- A036464: Number of ways to place two nonattacking queens on an n X n board.

Offset 1, canonical program `A036464.P1944052838228668969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036464 (n : ℕ) : ℤ :=
  (A036464.P1944052838228668969.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036488.P2595074225465789100

`round(sqrt(n^5))`
-/

namespace A036488.P2595074225465789100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 5 : ℝ))

end

end A036488.P2595074225465789100

noncomputable section

/-- A036488: Nearest integer to n^(5/2).

Offset 0, canonical program `A036488.P2595074225465789100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036488 (n : ℕ) : ℤ :=
  A036488.P2595074225465789100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036496.P11965980265745924204

`ceil(record[sqrt(lcm(2, 3*n))])`
-/

namespace A036496.P11965980265745924204
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 2 (3 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A036496.P11965980265745924204

noncomputable section

/-- A036496: Number of lines that intersect the first n points on a spiral on a triangular lattice. The spiral starts at (0,0), goes to (1,0) and (1/2, sqrt(3)/2) and continues counterclockwise.

Offset 0, canonical program `A036496.P11965980265745924204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036496 (n : ℕ) : ℤ :=
  A036496.P11965980265745924204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036564.P1316844146856537439

`a(n-1)+a(n-1)+45` with `a(0)=1, a(1)=19`
-/

namespace A036564.P1316844146856537439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n a =>
  a (n - 1) + (a (n - 1) + 45)

end

end A036564.P1316844146856537439

noncomputable section

/-- A036564: a(n) = 2^n - 45 with n>5, a(5)=1.

Offset 5, canonical program `A036564.P1316844146856537439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A036564 (n : ℕ) : ℤ :=
  (A036564.P1316844146856537439.a (n - 5) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A036564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036580.P6020384830940862058

`Δ[abs(1-a(and(n, n-1)))]+1` with `a(0)=1`
-/

namespace A036580.P6020384830940862058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A036580.P6020384830940862058

noncomputable section

/-- A036580: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036580.P6020384830940862058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036580 (n : ℕ) : ℤ :=
  A036580.P6020384830940862058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036666.P12003028341335652820

`∑[lcm(2, n)+n]`
-/

namespace A036666.P12003028341335652820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036666.P12003028341335652820

noncomputable section

/-- A036666: Numbers k such that 5*k + 1 is a square.

Offset 1, canonical program `A036666.P12003028341335652820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036666 (n : ℕ) : ℤ :=
  (A036666.P12003028341335652820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036796.P3277589454516055024

`a(and(n, 1-n)/2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A036796.P3277589454516055024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (1 - (n : ℤ)) : ℚ) / 2)).toNat + a (n - 2)

end

end A036796.P3277589454516055024

noncomputable section

/-- A036796: Integers that can be decomposed into sums of different Fibonacci numbers of odd argument.

Offset 0, canonical program `A036796.P3277589454516055024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A036796 (n : ℕ) : ℤ :=
  (A036796.P3277589454516055024.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A036796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036830.P1941864552075417278

`record[ceil(n*a(n-1)/(n-4))]` with `a(0)=3, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A036830.P1941864552075417278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 0, 0, 0, 1] fun n f1 =>
  ⌈((n : ℤ) * f1 (n - 1) : ℚ) / ((n : ℤ) - 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036830.P1941864552075417278

noncomputable section

/-- A036830: Schoenheim bound L_1(n,n-4,n-5).

Offset 6, canonical program `A036830.P1941864552075417278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036830 (n : ℕ) : ℤ :=
  A036830.P1941864552075417278.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036837.P1513785018416746919

`∑[floor(C(n+6, 5)/(n+2))]+1`
-/

namespace A036837.P1513785018416746919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 6) 5 : ℚ) / (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036837.P1513785018416746919

noncomputable section

/-- A036837: Schoenheim bound L_1(n,n-5,n-6).

Offset 7, canonical program `A036837.P1513785018416746919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036837 (n : ℕ) : ℤ :=
  A036837.P1513785018416746919.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036999.P18067301399788480176

`a(n-1)+a(n-2)-3` with `a(0)=6, a(1)=9`
-/

namespace A036999.P18067301399788480176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  a (n - 1) + (a (n - 2) - 3)

end

end A036999.P18067301399788480176

noncomputable section

/-- A036999: Restricted permutations.

Offset 0, canonical program `A036999.P18067301399788480176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A036999 (n : ℕ) : ℤ :=
  A036999.P18067301399788480176.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A036999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037029.P13713327370861726249

`p?[9*37*n+1]`
-/

namespace A037029.P13713327370861726249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (37 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A037029.P13713327370861726249

noncomputable section

/-- A037029: Primes of the form 666*n + 1.

Offset 1, canonical program `A037029.P13713327370861726249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A037029 (n : ℕ) : ℤ :=
  (A037029.P13713327370861726249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A037029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037031.P17145770370026652645

`C(n, ∑[∑{p}[n, C(#, n)]])`
-/

namespace A037031.P17145770370026652645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037031.P17145770370026652645

noncomputable section

/-- A037031: Number of combinations of n objects taken pi(n) at a time.

Offset 0, canonical program `A037031.P17145770370026652645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A037031 (n : ℕ) : ℤ :=
  (A037031.P17145770370026652645.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A037031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037079.P15258508037725472484

`(a(n-2)+1)%3+3*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A037079.P15258508037725472484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (a (n - 2) + 1) % 3 + 3 * a (n - 2)

end

end A037079.P15258508037725472484

noncomputable section

/-- A037079: In ternary expansion of n, reading from left to right, digits occur in order ...,0,1,2,0,1,2,...

Offset 0, canonical program `A037079.P15258508037725472484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A037079 (n : ℕ) : ℤ :=
  (A037079.P15258508037725472484.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A037079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037123.P656767004676487668

`∑[∑{digits}[n, #]]`
-/

namespace A037123.P656767004676487668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P656767004676487668

noncomputable section

/-- A037123: a(n) = a(n-1) + sum of digits of n.

Offset 0, canonical program `A037123.P656767004676487668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037123 (n : ℕ) : ℤ :=
  (A037123.P656767004676487668.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037140.P13715314314639236823

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=5, a(1)=8`
-/

namespace A037140.P13715314314639236823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P13715314314639236823

noncomputable section

/-- A037140: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= 5.

Offset 0, canonical program `A037140.P13715314314639236823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A037140 (n : ℕ) : ℤ :=
  (A037140.P13715314314639236823.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A037140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037141.P11268728842912675615

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=5, a(1)=-3`
-/

namespace A037141.P11268728842912675615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, -3] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037141.P11268728842912675615

noncomputable section

/-- A037141: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= -5, with F(-n)=(-1)^(n+1)*F(n);.

Offset 0, canonical program `A037141.P11268728842912675615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A037141 (n : ℕ) : ℤ :=
  A037141.P11268728842912675615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A037141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037157.P7091466118614736606

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=8, a(1)=13`
-/

namespace A037157.P7091466118614736606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 13] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P7091466118614736606

noncomputable section

/-- A037157: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= 6.

Offset 0, canonical program `A037157.P7091466118614736606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A037157 (n : ℕ) : ℤ :=
  (A037157.P7091466118614736606.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A037157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037158.P15677220345464833760

`∑[a(n-1)+a(n-2)-8]` with `a(0)=13, a(1)=5`
-/

namespace A037158.P15677220345464833760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037158.P15677220345464833760

noncomputable section

/-- A037158: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= -7, with F(-n)=(-1)^(n+1)*F(n).

Offset 0, canonical program `A037158.P15677220345464833760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A037158 (n : ℕ) : ℤ :=
  A037158.P15677220345464833760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A037158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037223.P1304760960877444944

`∏[gcd(n, (n%2)^n)]`
-/

namespace A037223.P1304760960877444944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((n % 2) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037223.P1304760960877444944

noncomputable section

/-- A037223: Number of solutions to non-attacking rooks problem on n X n board that are invariant under 180-degree rotation.

Offset 0, canonical program `A037223.P1304760960877444944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A037223 (n : ℕ) : ℤ :=
  (A037223.P1304760960877444944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A037223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037239.P10926822284118947567

`4*(xor(n, n+1)+1)`
-/

namespace A037239.P10926822284118947567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.xor n (n + 1) + 1)

end

end A037239.P10926822284118947567

noncomputable section

/-- A037239: Numerator of Pi^(2n)/(Gamma(2n)*(1-2^(-2n))*Zeta(2n)); = 8*(highest power of 2 dividing n).

Offset 1, canonical program `A037239.P10926822284118947567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037239 (n : ℕ) : ℤ :=
  (A037239.P10926822284118947567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037446.P18370416512073906743

`floor(((n+1)/e)^((n+1)/e))`
-/

namespace A037446.P18370416512073906743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℝ) / Real.exp 1) ^ ((n + 1 : ℝ) / Real.exp 1)⌋

end

end A037446.P18370416512073906743

noncomputable section

/-- A037446: Floor of (n/e)^(n/e).

Offset 1, canonical program `A037446.P18370416512073906743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A037446 (n : ℕ) : ℤ :=
  A037446.P18370416512073906743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A037446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037448.P492079538144767690

`floor(cot(n+1))`
-/

namespace A037448.P492079538144767690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (n + 1 : ℝ)⌋

end

end A037448.P492079538144767690

noncomputable section

/-- A037448: a(n) = floor(cot(n)).

Offset 1, canonical program `A037448.P492079538144767690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037448 (n : ℕ) : ℤ :=
  A037448.P492079538144767690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037453.P2958615793513436964

`∑[2*(5^val(n+1, 3)+1)/4]`
-/

namespace A037453.P2958615793513436964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((5 ^ SequenceMachineLib.valuation (n + 1) 3 + 1 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037453.P2958615793513436964

noncomputable section

/-- A037453: Positive numbers whose base-5 representation contains no 3 or 4.

Offset 1, canonical program `A037453.P2958615793513436964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037453 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037453.P2958615793513436964.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037458.P5549512924809445841

`∑[and(1, floor(sqrt(4*n+1)))]`
-/

namespace A037458.P5549512924809445841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037458.P5549512924809445841

noncomputable section

/-- A037458: a(1)=1; for n > 1, a(n) = n - a(n-floor(sqrt(n))).

Offset 1, canonical program `A037458.P5549512924809445841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037458 (n : ℕ) : ℤ :=
  (A037458.P5549512924809445841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037486.P9806790542204304586

`∑[xor(3, 9*a(n-1))]` with `a(0)=1`
-/

namespace A037486.P9806790542204304586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 3 (9 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P9806790542204304586

noncomputable section

/-- A037486: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

Offset 1, canonical program `A037486.P9806790542204304586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037486 (n : ℕ) : ℤ :=
  (A037486.P9806790542204304586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037495.P11555927895491587427

`gcd(2, n)+10*a(n-1)` with `a(0)=2`
-/

namespace A037495.P11555927895491587427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 10 * a (n - 1)

end

end A037495.P11555927895491587427

noncomputable section

/-- A037495: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1.

Offset 1, canonical program `A037495.P11555927895491587427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037495 (n : ℕ) : ℤ :=
  (A037495.P11555927895491587427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037498.P5266891646091660087

`5*a(n-1)+2-(n+1)%3` with `a(0)=1`
-/

namespace A037498.P5266891646091660087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A037498.P5266891646091660087

noncomputable section

/-- A037498: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037498.P5266891646091660087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A037498 (n : ℕ) : ℤ :=
  A037498.P5266891646091660087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A037498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037499.P16430178348752193434

`or(6*a(n-1), (2*n+1)%3)` with `a(0)=1`
-/

namespace A037499.P16430178348752193434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (6 * a (n - 1)) ((2 * n + 1) % 3)

end

end A037499.P16430178348752193434

noncomputable section

/-- A037499: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037499.P16430178348752193434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037499 (n : ℕ) : ℤ :=
  (A037499.P16430178348752193434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037501.P4270999270885130315

`xor(3, (n+1)%3+8*a(n-1)+1)` with `a(0)=1`
-/

namespace A037501.P4270999270885130315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 ((n + 1) % 3 + 8 * a (n - 1) + 1)

end

end A037501.P4270999270885130315

noncomputable section

/-- A037501: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037501.P4270999270885130315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037501 (n : ℕ) : ℤ :=
  (A037501.P4270999270885130315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037502.P13340545949260833276

`9*a(n-1)+2-(n+1)%3` with `a(0)=1`
-/

namespace A037502.P13340545949260833276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A037502.P13340545949260833276

noncomputable section

/-- A037502: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037502.P13340545949260833276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037502 (n : ℕ) : ℤ :=
  A037502.P13340545949260833276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037503.P14688988087910201338

`a(n-1)+9*a(n-1)+2-(n+1)%3` with `a(0)=1`
-/

namespace A037503.P14688988087910201338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (9 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ)))

end

end A037503.P14688988087910201338

noncomputable section

/-- A037503: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037503.P14688988087910201338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037503 (n : ℕ) : ℤ :=
  A037503.P14688988087910201338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037504.P10398134783490366740

`(n+1)%3+3*a(n-1)` with `a(0)=1`
-/

namespace A037504.P10398134783490366740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 3 * a (n - 1)

end

end A037504.P10398134783490366740

noncomputable section

/-- A037504: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037504.P10398134783490366740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A037504 (n : ℕ) : ℤ :=
  (A037504.P10398134783490366740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A037504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037505.P13327337666176401816

`∑[round(8*4^n/7)]`
-/

namespace A037505.P13327337666176401816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((4 ^ n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037505.P13327337666176401816

noncomputable section

/-- A037505: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037505.P13327337666176401816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037505 (n : ℕ) : ℤ :=
  A037505.P13327337666176401816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037506.P3778759450179859677

`(n+1)%3+5*a(n-1)` with `a(0)=1`
-/

namespace A037506.P3778759450179859677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 5 * a (n - 1)

end

end A037506.P3778759450179859677

noncomputable section

/-- A037506: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037506.P3778759450179859677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037506 (n : ℕ) : ℤ :=
  (A037506.P3778759450179859677.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037507.P11662525606830945473

`(n+1)%3+6*a(n-1)` with `a(0)=1`
-/

namespace A037507.P11662525606830945473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 6 * a (n - 1)

end

end A037507.P11662525606830945473

noncomputable section

/-- A037507: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037507.P11662525606830945473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037507 (n : ℕ) : ℤ :=
  (A037507.P11662525606830945473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037508.P12364456326571946635

`(n+1)%3+7*a(n-1)` with `a(0)=1`
-/

namespace A037508.P12364456326571946635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 7 * a (n - 1)

end

end A037508.P12364456326571946635

noncomputable section

/-- A037508: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037508.P12364456326571946635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037508 (n : ℕ) : ℤ :=
  (A037508.P12364456326571946635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037509.P17816959801132635751

`(n+1)%3+8*a(n-1)` with `a(0)=1`
-/

namespace A037509.P17816959801132635751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 8 * a (n - 1)

end

end A037509.P17816959801132635751

noncomputable section

/-- A037509: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037509.P17816959801132635751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037509 (n : ℕ) : ℤ :=
  (A037509.P17816959801132635751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037510.P3160313224642735029

`(n+1)%3+9*a(n-1)` with `a(0)=1`
-/

namespace A037510.P3160313224642735029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 9 * a (n - 1)

end

end A037510.P3160313224642735029

noncomputable section

/-- A037510: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037510.P3160313224642735029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037510 (n : ℕ) : ℤ :=
  (A037510.P3160313224642735029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037511.P8443132113759512638

`(n+1)%3+10*a(n-1)` with `a(0)=1`
-/

namespace A037511.P8443132113759512638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 3 + 10 * a (n - 1)

end

end A037511.P8443132113759512638

noncomputable section

/-- A037511: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,0.

Offset 1, canonical program `A037511.P8443132113759512638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037511 (n : ℕ) : ℤ :=
  (A037511.P8443132113759512638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037512.P15680083062298208686

`floor(19*3^(n+1)/26)`
-/

namespace A037512.P15680083062298208686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 * ((3 ^ (n + 1) : ℚ) / 26)⌋

end

end A037512.P15680083062298208686

noncomputable section

/-- A037512: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037512.P15680083062298208686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037512 (n : ℕ) : ℤ :=
  A037512.P15680083062298208686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037515.P1919842026399017719

`(n-1)%3+6*a(n-1)` with `a(0)=2`
-/

namespace A037515.P1919842026399017719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 6 * a (n - 1)

end

end A037515.P1919842026399017719

noncomputable section

/-- A037515: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037515.P1919842026399017719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037515 (n : ℕ) : ℤ :=
  A037515.P1919842026399017719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037516.P16034280603477341540

`(n-1)%3+7*a(n-1)` with `a(0)=2`
-/

namespace A037516.P16034280603477341540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 7 * a (n - 1)

end

end A037516.P16034280603477341540

noncomputable section

/-- A037516: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037516.P16034280603477341540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037516 (n : ℕ) : ℤ :=
  A037516.P16034280603477341540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037517.P3021790649591847637

`(n-1)%3+8*a(n-1)` with `a(0)=2`
-/

namespace A037517.P3021790649591847637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 8 * a (n - 1)

end

end A037517.P3021790649591847637

noncomputable section

/-- A037517: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037517.P3021790649591847637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037517 (n : ℕ) : ℤ :=
  A037517.P3021790649591847637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037518.P965897409930183489

`3*3*a(n-1)-(1-n)%3` with `a(0)=2`
-/

namespace A037518.P965897409930183489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * (3 * a (n - 1)) - Int.tmod (1 - (n : ℤ)) 3

end

end A037518.P965897409930183489

noncomputable section

/-- A037518: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037518.P965897409930183489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037518 (n : ℕ) : ℤ :=
  A037518.P965897409930183489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037519.P7631919634859234595

`(n-1)%3+10*a(n-1)` with `a(0)=2`
-/

namespace A037519.P7631919634859234595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((n : ℤ) - 1) 3 + 10 * a (n - 1)

end

end A037519.P7631919634859234595

noncomputable section

/-- A037519: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,0,1.

Offset 1, canonical program `A037519.P7631919634859234595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037519 (n : ℕ) : ℤ :=
  A037519.P7631919634859234595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037520.P11955340793447897582

`3*a(n-1)+2-n%3` with `a(0)=2`
-/

namespace A037520.P11955340793447897582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037520.P11955340793447897582

noncomputable section

/-- A037520: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

Offset 1, canonical program `A037520.P11955340793447897582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037520 (n : ℕ) : ℤ :=
  A037520.P11955340793447897582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037523.P8970377303279365799

`(2*n+5)%3+6*a(n-1)` with `a(0)=2`
-/

namespace A037523.P8970377303279365799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n + 5) % 3 + 6 * a (n - 1)

end

end A037523.P8970377303279365799

noncomputable section

/-- A037523: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

Offset 1, canonical program `A037523.P8970377303279365799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037523 (n : ℕ) : ℤ :=
  (A037523.P8970377303279365799.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027819.P11486740362378636437

`C(n+2, 2)*C(n+7, 6)`
-/

namespace A027819.P11486740362378636437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 * Nat.choose (n + 7) 6

end

end A027819.P11486740362378636437

noncomputable section

/-- A027819: a(n) = 7*(n+1)*binomial(n+6,7)/2.

Offset 1, canonical program `A027819.P11486740362378636437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027819 (n : ℕ) : ℤ :=
  (A027819.P11486740362378636437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029930.P3707852897458008637

`2*a(n-gcd(floor(n/2), a(n-1)))` with `a(0)=1`
-/

namespace A029930.P3707852897458008637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - Int.gcd ⌊(n : ℚ) / 2⌋ (a (n - 1) : ℤ))

end

end A029930.P3707852897458008637

noncomputable section

/-- A029930: If 2n = Sum 2^e_i, a(n) = Product 2^e_i.

Offset 0, canonical program `A029930.P3707852897458008637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029930 (n : ℕ) : ℤ :=
  (A029930.P3707852897458008637.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030300.P12835541461277663850

`1-floor(log2(n+1))%2`
-/

namespace A030300.P12835541461277663850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.log 2 (n + 1) % 2 : ℕ) : ℤ)

end

end A030300.P12835541461277663850

noncomputable section

/-- A030300: Runs have lengths 2^n, n >= 0.

Offset 1, canonical program `A030300.P12835541461277663850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030300 (n : ℕ) : ℤ :=
  A030300.P12835541461277663850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032441.P12702803524669002420

`4*a(n-1)-2*a(n-2)-6*a(n-3)+4*a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=7, a(5)=16`
-/

namespace A032441.P12702803524669002420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4, 7, 16] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 6 * a (n - 3) + 4 * a (n - 4) + 2 * a (n - 5) - a (n - 6)

end

end A032441.P12702803524669002420

noncomputable section

/-- A032441: a(n) = Sum_{i=0..2} binomial(Fibonacci(n),i).

Offset 0, canonical program `A032441.P12702803524669002420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A032441 (n : ℕ) : ℤ :=
  A032441.P12702803524669002420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A032441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033931.P331060113383213317

`lcm(2, n+3)*∑[n+1]`
-/

namespace A033931.P331060113383213317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033931.P331060113383213317

noncomputable section

/-- A033931: a(n) = lcm(n,n+1,n+2).

Offset 1, canonical program `A033931.P331060113383213317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033931 (n : ℕ) : ℤ :=
  (A033931.P331060113383213317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033931.provenance : SequenceMachineLib.Provenance := .conjectured

