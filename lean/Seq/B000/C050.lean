import SequenceMachineLib
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A398083.P12615553176713925664

`(2^n)%73`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398083.P12615553176713925664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 73

end

end A398083.P12615553176713925664

noncomputable section

/-- A398083: a(n) = 2^n mod 73.

Offset 0, canonical program `A398083.P12615553176713925664`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%73` (program `A398083.P12615553176713925664`, by `A398083.P12615553176713925664.correct`). Lean does not check the parsing of the name. -/
def A398083 (n : ℕ) : ℤ :=
  (A398083.P12615553176713925664.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%73` (program `A398083.P12615553176713925664`, by `A398083.P12615553176713925664.correct`). Lean does not check the parsing of the name. -/
def A398083.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398084.P3058219852828067056

`(3^n)%73`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398084.P3058219852828067056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n % 73

end

end A398084.P3058219852828067056

noncomputable section

/-- A398084: a(n) = 3^n mod 73.

Offset 0, canonical program `A398084.P3058219852828067056`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%73` (program `A398084.P3058219852828067056`, by `A398084.P3058219852828067056.correct`). Lean does not check the parsing of the name. -/
def A398084 (n : ℕ) : ℤ :=
  (A398084.P3058219852828067056.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%73` (program `A398084.P3058219852828067056`, by `A398084.P3058219852828067056.correct`). Lean does not check the parsing of the name. -/
def A398084.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398137.P11904510586614224668

`ogf(1/(1-6x+7x^2+6x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398137.P11904510586614224668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 7, 6, 1] n

end

end A398137.P11904510586614224668

noncomputable section

/-- A398137: Expansion of generating function x / (1 - 3*x - x^2)^2.

Offset 1, canonical program `A398137.P11904510586614224668`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+7x^2+6x^3+x^4))` (program `A398137.P11904510586614224668`, by `A398137.P11904510586614224668.correct`). Lean does not check the parsing of the name. -/
def A398137 (n : ℕ) : ℤ :=
  A398137.P11904510586614224668.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+7x^2+6x^3+x^4))` (program `A398137.P11904510586614224668`, by `A398137.P11904510586614224668.correct`). Lean does not check the parsing of the name. -/
def A398137.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398146.P14218719280205801311

`ogf(1/(1-10x+23x^2+10x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398146.P14218719280205801311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 23, 10, 1] n

end

end A398146.P14218719280205801311

noncomputable section

/-- A398146: Expansion of generating function x / (1 - 5*x - x^2)^2.

Offset 1, canonical program `A398146.P14218719280205801311`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+23x^2+10x^3+x^4))` (program `A398146.P14218719280205801311`, by `A398146.P14218719280205801311.correct`). Lean does not check the parsing of the name. -/
def A398146 (n : ℕ) : ℤ :=
  A398146.P14218719280205801311.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+23x^2+10x^3+x^4))` (program `A398146.P14218719280205801311`, by `A398146.P14218719280205801311.correct`). Lean does not check the parsing of the name. -/
def A398146.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398147.P855889425603038055

`ogf(1/(1-10x+27x^2-10x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398147.P855889425603038055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 27, -10, 1] n

end

end A398147.P855889425603038055

noncomputable section

/-- A398147: Expansion of generating function x/(1-5*x+x^2)^2.

Offset 1, canonical program `A398147.P855889425603038055`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+27x^2-10x^3+x^4))` (program `A398147.P855889425603038055`, by `A398147.P855889425603038055.correct`). Lean does not check the parsing of the name. -/
def A398147 (n : ℕ) : ℤ :=
  A398147.P855889425603038055.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+27x^2-10x^3+x^4))` (program `A398147.P855889425603038055`, by `A398147.P855889425603038055.correct`). Lean does not check the parsing of the name. -/
def A398147.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398364.P12204821827431358305

`∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398364.P12204821827431358305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 7⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * k) k * Nat.choose ((n : ℤ) - (5 * k : ℤ)).toNat (2 * k)

end

end A398364.P12204821827431358305

noncomputable section

/-- A398364: a(n) = Sum_{k=0..floor(n/7)} binomial(2*k,k) * binomial(n-5*k,2*k).

Offset 0, canonical program `A398364.P12204821827431358305`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` (program `A398364.P12204821827431358305`, by `A398364.P12204821827431358305.correct`). Lean does not check the parsing of the name. -/
def A398364 (n : ℕ) : ℤ :=
  (A398364.P12204821827431358305.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` (program `A398364.P12204821827431358305`, by `A398364.P12204821827431358305.correct`). Lean does not check the parsing of the name. -/
def A398364.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398365.P10988356879286163353

`∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398365.P10988356879286163353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * k) k * Nat.choose ((n : ℤ) - (6 * k : ℤ)).toNat (2 * k)

end

end A398365.P10988356879286163353

noncomputable section

/-- A398365: a(n) = Sum_{k=0..floor(n/8)} binomial(2*k,k) * binomial(n-6*k,2*k).

Offset 0, canonical program `A398365.P10988356879286163353`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` (program `A398365.P10988356879286163353`, by `A398365.P10988356879286163353.correct`). Lean does not check the parsing of the name. -/
def A398365 (n : ℕ) : ℤ :=
  (A398365.P10988356879286163353.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` (program `A398365.P10988356879286163353`, by `A398365.P10988356879286163353.correct`). Lean does not check the parsing of the name. -/
def A398365.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398696.P11525538983804807962

`floor(3*11^n/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398696.P11525538983804807962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * 11 ^ n : ℚ) / 4⌋

end

end A398696.P11525538983804807962

noncomputable section

/-- A398696: a(n) = floor(3*11^n/4).

Offset 0, canonical program `A398696.P11525538983804807962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*11^n/4)` (program `A398696.P11525538983804807962`, by `A398696.P11525538983804807962.correct`). Lean does not check the parsing of the name. -/
def A398696 (n : ℕ) : ℤ :=
  A398696.P11525538983804807962.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*11^n/4)` (program `A398696.P11525538983804807962`, by `A398696.P11525538983804807962.correct`). Lean does not check the parsing of the name. -/
def A398696.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398697.P16552437538001656140

`floor(11^n/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398697.P16552437538001656140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 ^ n : ℚ) / 4⌋

end

end A398697.P16552437538001656140

noncomputable section

/-- A398697: a(n) = floor(11^n/4).

Offset 0, canonical program `A398697.P16552437538001656140`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/4)` (program `A398697.P16552437538001656140`, by `A398697.P16552437538001656140.correct`). Lean does not check the parsing of the name. -/
def A398697 (n : ℕ) : ℤ :=
  A398697.P16552437538001656140.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/4)` (program `A398697.P16552437538001656140`, by `A398697.P16552437538001656140.correct`). Lean does not check the parsing of the name. -/
def A398697.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398914.P5120649322330680519

`n*(n+2)*C(2*n+1, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398914.P5120649322330680519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) * Nat.choose (2 * n + 1) n

end

end A398914.P5120649322330680519

noncomputable section

/-- A398914: a(n) = n * (n + 2) * binomial(2*n + 1, n + 1).

Offset 0, canonical program `A398914.P5120649322330680519`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*C(2*n+1, n)` (program `A398914.P5120649322330680519`, by `A398914.P5120649322330680519.correct`). Lean does not check the parsing of the name. -/
def A398914 (n : ℕ) : ℤ :=
  (A398914.P5120649322330680519.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*C(2*n+1, n)` (program `A398914.P5120649322330680519`, by `A398914.P5120649322330680519.correct`). Lean does not check the parsing of the name. -/
def A398914.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399176.P9600605657478409595

`a(n-a(n-2))+a(n-a(n-3))` with `a(0)=4, a(1)=2, a(2)=5, a(3)=3, a(4)=1, a(5)=4, a(6)=7, a(7)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399176.P9600605657478409595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 5, 3, 1, 4, 7, 5] fun n a =>
  a (n - a (n - 2)) + a (n - a (n - 3))

end

end A399176.P9600605657478409595

noncomputable section

/-- A399176: A well-defined quasi-periodic solution to the recurrence (a(n) = a(n-a(n-2)) + a(n-a(n-3))).

Offset 1, canonical program `A399176.P9600605657478409595`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A399176.P9600605657478409595`, by `A399176.P9600605657478409595.correct`). Lean does not check the parsing of the name. -/
def A399176 (n : ℕ) : ℤ :=
  (A399176.P9600605657478409595.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A399176.P9600605657478409595`, by `A399176.P9600605657478409595.correct`). Lean does not check the parsing of the name. -/
def A399176.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399228.P7510221602356486404

`∑{#}[n, (-1)^#*(n-#)!*(n+#)!]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399228.P7510221602356486404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℤ) * (Nat.factorial (n + k) : ℤ)

end

end A399228.P7510221602356486404

noncomputable section

/-- A399228: a(n) = Sum_{k=0..n} (-1)^k*(n - k)!*(n + k)!.

Offset 0, canonical program `A399228.P7510221602356486404`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` (program `A399228.P7510221602356486404`, by `A399228.P7510221602356486404.correct`). Lean does not check the parsing of the name. -/
def A399228 (n : ℕ) : ℤ :=
  A399228.P7510221602356486404.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` (program `A399228.P7510221602356486404`, by `A399228.P7510221602356486404.correct`). Lean does not check the parsing of the name. -/
def A399228.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399384.P7302958641022206687

`(2*n+1)*n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399384.P7302958641022206687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.factorial n ^ 2

end

end A399384.P7302958641022206687

noncomputable section

/-- A399384: a(n) = (2*n + 1)*(n!)^2.

Offset 0, canonical program `A399384.P7302958641022206687`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*n!²` (program `A399384.P7302958641022206687`, by `A399384.P7302958641022206687.correct`). Lean does not check the parsing of the name. -/
def A399384 (n : ℕ) : ℤ :=
  (A399384.P7302958641022206687.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*n!²` (program `A399384.P7302958641022206687`, by `A399384.P7302958641022206687.correct`). Lean does not check the parsing of the name. -/
def A399384.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399405.P16569053505981937419

`6*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399405.P16569053505981937419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1) + 10 * a (n - 2)

end

end A399405.P16569053505981937419

noncomputable section

/-- A399405: a(n) = 6*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=3.

Offset 0, canonical program `A399405.P16569053505981937419`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+10*a(n-2)` (program `A399405.P16569053505981937419`, by `A399405.P16569053505981937419.correct`). Lean does not check the parsing of the name. -/
def A399405 (n : ℕ) : ℤ :=
  (A399405.P16569053505981937419.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+10*a(n-2)` (program `A399405.P16569053505981937419`, by `A399405.P16569053505981937419.correct`). Lean does not check the parsing of the name. -/
def A399405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399477.P4764234066345403469

`9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399477.P4764234066345403469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (n + 4) 8 + 49 * Nat.choose (n + 4) 7 + 75 * Nat.choose (n + 4) 6 + 35 * Nat.choose (n + 4) 5 + 3 * Nat.choose (n + 4) 4

end

end A399477.P4764234066345403469

noncomputable section

/-- A399477: a(n) = 9*binomial(n,8) + 49*binomial(n,7) + 75*binomial(n,6) + 35*binomial(n,5) + 3*binomial(n,4).

Offset 4, canonical program `A399477.P4764234066345403469`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)` (program `A399477.P4764234066345403469`, by `A399477.P4764234066345403469.correct`). Lean does not check the parsing of the name. -/
def A399477 (n : ℕ) : ℤ :=
  (A399477.P4764234066345403469.a (n - 4) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)` (program `A399477.P4764234066345403469`, by `A399477.P4764234066345403469.correct`). Lean does not check the parsing of the name. -/
def A399477.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399773.P204488252996263267

`a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399773.P204488252996263267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1) - 1).toNat + a ((n : ℤ) - a (n - 1)).toNat + (-1) ^ (n + 1)

end

end A399773.P204488252996263267

noncomputable section

/-- A399773: a(1) = a(2) = 1; for n > 2, a(n) = a(a(n-1)) + a(n-a(n-1)) + (-1)^n.

Offset 1, canonical program `A399773.P204488252996263267`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` (program `A399773.P204488252996263267`, by `A399773.P204488252996263267.correct`). Lean does not check the parsing of the name. -/
def A399773 (n : ℕ) : ℤ :=
  A399773.P204488252996263267.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` (program `A399773.P204488252996263267`, by `A399773.P204488252996263267.correct`). Lean does not check the parsing of the name. -/
def A399773.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399776.P13636545612024227465

`8*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399776.P13636545612024227465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 * a (n - 1) + 10 * a (n - 2)

end

end A399776.P13636545612024227465

noncomputable section

/-- A399776: a(n) = 8*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=4.

Offset 0, canonical program `A399776.P13636545612024227465`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+10*a(n-2)` (program `A399776.P13636545612024227465`, by `A399776.P13636545612024227465.correct`). Lean does not check the parsing of the name. -/
def A399776 (n : ℕ) : ℤ :=
  (A399776.P13636545612024227465.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+10*a(n-2)` (program `A399776.P13636545612024227465`, by `A399776.P13636545612024227465.correct`). Lean does not check the parsing of the name. -/
def A399776.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400512.P8796722601478653191

`ogf((x-x^2)/(1-9x+15x^2+20x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400512.P8796722601478653191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -9, 15, 20] n

end

end A400512.P8796722601478653191

noncomputable section

/-- A400512: Expansion of g.f. x*(1-x)/((1-4*x)*(1-5*x-5*x^2)).

Offset 0, canonical program `A400512.P8796722601478653191`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-9x+15x^2+20x^3))` (program `A400512.P8796722601478653191`, by `A400512.P8796722601478653191.correct`). Lean does not check the parsing of the name. -/
def A400512 (n : ℕ) : ℤ :=
  A400512.P8796722601478653191.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-9x+15x^2+20x^3))` (program `A400512.P8796722601478653191`, by `A400512.P8796722601478653191.correct`). Lean does not check the parsing of the name. -/
def A400512.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400515.P13484862725235951499

`27*a(n-1)-204*a(n-2)+448*a(n-3)` with `a(0)=0, a(1)=0, a(2)=9`
-/

namespace A400515.P13484862725235951499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 9] fun n a =>
  27 * a (n - 1) - 204 * a (n - 2) + 448 * a (n - 3)

end

end A400515.P13484862725235951499

noncomputable section

/-- A400515: a(n) = (16^n + 3*4^n - 4*7^n)/12.

Offset 0, canonical program `A400515.P13484862725235951499`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^n+3*4^n-4*7^n)/12` (program `A400515.P7561032127694278361`, by `A400515.P7561032127694278361.correct`). Lean does not check the parsing of the name. -/
def A400515 (n : ℕ) : ℤ :=
  A400515.P13484862725235951499.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^n+3*4^n-4*7^n)/12` (program `A400515.P7561032127694278361`, by `A400515.P7561032127694278361.correct`). Lean does not check the parsing of the name. -/
def A400515.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400652.P6583452065758256833

`a(n-1)*a(floor(n/2))+n` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400652.P6583452065758256833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * a ⌊(n : ℚ) / 2⌋.toNat + n

end

end A400652.P6583452065758256833

noncomputable section

/-- A400652: a(0) = 1; a(n) = a(n-1)*a(floor(n/2)) + n for n >= 1.

Offset 0, canonical program `A400652.P6583452065758256833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(floor(n/2))+n` (program `A400652.P6583452065758256833`, by `A400652.P6583452065758256833.correct`). Lean does not check the parsing of the name. -/
def A400652 (n : ℕ) : ℤ :=
  (A400652.P6583452065758256833.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(floor(n/2))+n` (program `A400652.P6583452065758256833`, by `A400652.P6583452065758256833.correct`). Lean does not check the parsing of the name. -/
def A400652.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400671.P12732179933824227219

`row(n)+C(col(n), 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400671.P12732179933824227219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + Nat.choose (SequenceMachineLib.triCol n) 2

end

end A400671.P12732179933824227219

noncomputable section

/-- A400671: Triangle read by rows: T(n, k) = n + binomial(k, 2).

Offset 0, canonical program `A400671.P12732179933824227219`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+C(col(n), 2)` (program `A400671.P12732179933824227219`, by `A400671.P12732179933824227219.correct`). Lean does not check the parsing of the name. -/
def A400671 (n : ℕ) : ℤ :=
  (A400671.P12732179933824227219.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+C(col(n), 2)` (program `A400671.P12732179933824227219`, by `A400671.P12732179933824227219.correct`). Lean does not check the parsing of the name. -/
def A400671.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400779.P9186177373831134570

`∑{d}[n+1, gcd(n+1, #+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400779.P9186177373831134570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd (n + 1) (d + 1)

end

end A400779.P9186177373831134570

noncomputable section

/-- A400779: a(n) = Sum_{d|n} gcd(n,d+1).

Offset 1, canonical program `A400779.P9186177373831134570`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(n+1, #+1)]` (program `A400779.P9186177373831134570`, by `A400779.P9186177373831134570.correct`). Lean does not check the parsing of the name. -/
def A400779 (n : ℕ) : ℤ :=
  (A400779.P9186177373831134570.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(n+1, #+1)]` (program `A400779.P9186177373831134570`, by `A400779.P9186177373831134570.correct`). Lean does not check the parsing of the name. -/
def A400779.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400851.P10122007858320249699

`4*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400851.P10122007858320249699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) + 10 * a (n - 2)

end

end A400851.P10122007858320249699

noncomputable section

/-- A400851: a(n) = 4*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=2.

Offset 0, canonical program `A400851.P10122007858320249699`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+10*a(n-2)` (program `A400851.P10122007858320249699`, by `A400851.P10122007858320249699.correct`). Lean does not check the parsing of the name. -/
def A400851 (n : ℕ) : ℤ :=
  (A400851.P10122007858320249699.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+10*a(n-2)` (program `A400851.P10122007858320249699`, by `A400851.P10122007858320249699.correct`). Lean does not check the parsing of the name. -/
def A400851.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A401342.P18093636600124100267

`ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401342.P18093636600124100267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1, -1] [1, -3, 1, 2] n

end

end A401342.P18093636600124100267

noncomputable section

/-- A401342: Expansion of g.f. x*(1 - 2*x + x^2 - x^3)/((1 - x - x^2)*(1 - 2*x)).

Offset 0, canonical program `A401342.P18093636600124100267`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` (program `A401342.P18093636600124100267`, by `A401342.P18093636600124100267.correct`). Lean does not check the parsing of the name. -/
def A401342 (n : ℕ) : ℤ :=
  A401342.P18093636600124100267.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` (program `A401342.P18093636600124100267`, by `A401342.P18093636600124100267.correct`). Lean does not check the parsing of the name. -/
def A401342.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398050.P13579806818623534660

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=13, a(5)=20, a(6)=28`
-/

namespace A398050.P13579806818623534660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7, 13, 20, 28] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398050.P13579806818623534660

noncomputable section

/-- A398050: Lower (1,1/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398050.P13579806818623534660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398050 (n : ℕ) : ℤ :=
  A398050.P13579806818623534660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398051.P3331619900421333348

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=20, a(6)=29`
-/

namespace A398051.P3331619900421333348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 8, 14, 20, 29] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398051.P3331619900421333348

noncomputable section

/-- A398051: Upper (1,1/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398051.P3331619900421333348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398051 (n : ℕ) : ℤ :=
  A398051.P3331619900421333348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398052.P13299476155714020316

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=16, a(5)=25, a(6)=35`
-/

namespace A398052.P13299476155714020316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9, 16, 25, 35] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398052.P13299476155714020316

noncomputable section

/-- A398052: Lower (1,2/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398052.P13299476155714020316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398052 (n : ℕ) : ℤ :=
  A398052.P13299476155714020316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398053.P15641591372993690275

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=10, a(4)=17, a(5)=25, a(6)=36`
-/

namespace A398053.P15641591372993690275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 10, 17, 25, 36] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398053.P15641591372993690275

noncomputable section

/-- A398053: Upper (1,2/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398053.P15641591372993690275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398053 (n : ℕ) : ℤ :=
  A398053.P15641591372993690275.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398054.P7192411579253713733

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=19, a(5)=30, a(6)=42`
-/

namespace A398054.P7192411579253713733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11, 19, 30, 42] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398054.P7192411579253713733

noncomputable section

/-- A398054: Lower (1,3/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398054.P7192411579253713733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398054 (n : ℕ) : ℤ :=
  A398054.P7192411579253713733.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398055.P7592882292166257935

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=20, a(5)=30, a(6)=43`
-/

namespace A398055.P7592882292166257935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 12, 20, 30, 43] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398055.P7592882292166257935

noncomputable section

/-- A398055: Upper (1,3/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398055.P7592882292166257935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398055 (n : ℕ) : ℤ :=
  A398055.P7592882292166257935.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398056.P10782441881184105247

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=22, a(5)=35, a(6)=49`
-/

namespace A398056.P10782441881184105247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 13, 22, 35, 49] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398056.P10782441881184105247

noncomputable section

/-- A398056: Lower (1,4/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398056.P10782441881184105247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398056 (n : ℕ) : ℤ :=
  A398056.P10782441881184105247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398057.P7266038583036540664

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=23, a(5)=35, a(6)=50`
-/

namespace A398057.P7266038583036540664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 14, 23, 35, 50] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398057.P7266038583036540664

noncomputable section

/-- A398057: Upper (1,4/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398057.P7266038583036540664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398057 (n : ℕ) : ℤ :=
  A398057.P7266038583036540664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398058.P73160130068751543

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=18, a(4)=31`
-/

namespace A398058.P73160130068751543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 18, 31] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398058.P73160130068751543

noncomputable section

/-- A398058: Lower (1,4/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398058.P73160130068751543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398058 (n : ℕ) : ℤ :=
  A398058.P73160130068751543.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398059.P16397645256083524581

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=18, a(4)=32`
-/

namespace A398059.P16397645256083524581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 9, 18, 32] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398059.P16397645256083524581

noncomputable section

/-- A398059: Upper (1,4/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398059.P16397645256083524581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398059 (n : ℕ) : ℤ :=
  A398059.P16397645256083524581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398060.P18309468618007377721

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=18, a(5)=28, a(6)=40`
-/

namespace A398060.P18309468618007377721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 10, 18, 28, 40] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398060.P18309468618007377721

noncomputable section

/-- A398060: Lower (1/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398060.P18309468618007377721`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398060 (n : ℕ) : ℤ :=
  A398060.P18309468618007377721.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398061.P3303424021516592682

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=11, a(4)=18, a(5)=28, a(6)=41`
-/

namespace A398061.P3303424021516592682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 11, 18, 28, 41] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398061.P3303424021516592682

noncomputable section

/-- A398061: Upper (1/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398061.P3303424021516592682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398061 (n : ℕ) : ℤ :=
  A398061.P3303424021516592682.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398104.P9560857359750963102

`ogf((1+2x+3x^2+3x^3-21x^5-6x^6-18x^8-5x^9-2x^10-3x^11-2x^13)/(1-3x^2-3x^3-12x^4-7x^5+20x^6-2x^8+15x^9+4x^10+3x^11+4x^12+2x^13+2x^14))`
-/

namespace A398104.P9560857359750963102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 3, 0, -21, -6, 0, -18, -5, -2, -3, 0, -2] [1, 0, -3, -3, -12, -7, 20, 0, -2, 15, 4, 3, 4, 2, 2] n

end

end A398104.P9560857359750963102

noncomputable section

/-- A398104: Number of minimal dominating sets in the 3 X n king graph.

Offset 0, canonical program `A398104.P9560857359750963102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398104 (n : ℕ) : ℤ :=
  A398104.P9560857359750963102.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398136.P16405717770834090747

`row(n)!*row(n)^(row(n)-col(n))/(row(n)-col(n))!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398136.P16405717770834090747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) * (SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A398136.P16405717770834090747

noncomputable section

/-- A398136: Triangle read by rows: T(n, k) = n! * n^(n - k) / (n - k)!.

Offset 0, canonical program `A398136.P16405717770834090747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398136.P16405717770834090747.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398152.P17962725921577737400

`n+1+ceil(n*(n+1)/4)+floor(n/2)`
-/

namespace A398152.P17962725921577737400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌈(n * (n + 1) : ℚ) / 4⌉ + ⌊(n : ℚ) / 2⌋

end

end A398152.P17962725921577737400

noncomputable section

/-- A398152: a(n) is the least positive integer k for which there exists a composition of k of depth n, where at each iteration the consecutive absolute differences must be nonzero and pairwise distinct and may then be permuted arbitrarily.

Offset 0, canonical program `A398152.P17962725921577737400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398152 (n : ℕ) : ℤ :=
  A398152.P17962725921577737400.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398157.P17234946050504197489

`ogf((5+3x+x^2+7x^3+3x^4)/(1-2x^3+x^6))`
-/

namespace A398157.P17234946050504197489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 1, 7, 3] [1, 0, 0, -2, 0, 0, 1] n

end

end A398157.P17234946050504197489

noncomputable section

/-- A398157: a(n) = n/3 if n == 0 (mod 3), 4n+1 if n == 1 (mod 3), 2n-1 if n == 2 (mod 3).

Offset 1, canonical program `A398157.P17234946050504197489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398157 (n : ℕ) : ℤ :=
  A398157.P17234946050504197489.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398190.P18190335037349440086

`n!*∑{#}[n, (2*n)^#/#!]`
-/

namespace A398190.P18190335037349440086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), ((2 * n) ^ k : ℚ) / (Nat.factorial k : ℚ))

end

end A398190.P18190335037349440086

noncomputable section

/-- A398190: a(n) = exp(2 * n) * Gamma(1 + n, 2 * n). Central terms of A398187.

Offset 0, canonical program `A398190.P18190335037349440086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398190.P18190335037349440086.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398191.P10111208085503777003

`n!*∑{#}[n, (n+4)^#/#!]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398191.P10111208085503777003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), ((n + 4) ^ k : ℚ) / (Nat.factorial k : ℚ))

end

end A398191.P10111208085503777003

noncomputable section

/-- A398191: a(n) = n! * Sum_{j=0..n} (n + 4)^j / j!. Column 4 of A398187.

Offset 0, canonical program `A398191.P10111208085503777003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398191.P10111208085503777003.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398196.P18069537770610953232

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=20, a(5)=31, a(6)=44`
-/

namespace A398196.P18069537770610953232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11, 20, 31, 44] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398196.P18069537770610953232

noncomputable section

/-- A398196: Lower (2/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398196.P18069537770610953232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398196 (n : ℕ) : ℤ :=
  A398196.P18069537770610953232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398197.P8402238629596888663

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=20, a(5)=31, a(6)=45`
-/

namespace A398197.P8402238629596888663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 12, 20, 31, 45] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398197.P8402238629596888663

noncomputable section

/-- A398197: Upper (2/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398197.P8402238629596888663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398197 (n : ℕ) : ℤ :=
  A398197.P8402238629596888663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398198.P10368690461500215663

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=22, a(5)=34, a(6)=48`
-/

namespace A398198.P10368690461500215663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 12, 22, 34, 48] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398198.P10368690461500215663

noncomputable section

/-- A398198: Lower (3/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398198.P10368690461500215663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398198 (n : ℕ) : ℤ :=
  A398198.P10368690461500215663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398199.P5789237725707641896

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=13, a(4)=22, a(5)=34, a(6)=49`
-/

namespace A398199.P5789237725707641896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 13, 22, 34, 49] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398199.P5789237725707641896

noncomputable section

/-- A398199: Upper (3/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398199.P5789237725707641896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398199 (n : ℕ) : ℤ :=
  A398199.P5789237725707641896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398200.P3776530324586389120

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=24, a(5)=37, a(6)=52`
-/

namespace A398200.P3776530324586389120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 13, 24, 37, 52] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398200.P3776530324586389120

noncomputable section

/-- A398200: Lower (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398200.P3776530324586389120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398200 (n : ℕ) : ℤ :=
  A398200.P3776530324586389120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398201.P17485533436528189980

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=24, a(5)=37, a(6)=53`
-/

namespace A398201.P17485533436528189980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 14, 24, 37, 53] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398201.P17485533436528189980

noncomputable section

/-- A398201: Upper (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398201.P17485533436528189980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398201 (n : ℕ) : ℤ :=
  A398201.P17485533436528189980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398202.P5570466732706551257

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=17, a(4)=29`
-/

namespace A398202.P5570466732706551257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 17, 29] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398202.P5570466732706551257

noncomputable section

/-- A398202: Lower (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398202.P5570466732706551257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398202 (n : ℕ) : ℤ :=
  A398202.P5570466732706551257.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398203.P13519331803441787108

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=17, a(4)=30`
-/

namespace A398203.P13519331803441787108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8, 17, 30] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398203.P13519331803441787108

noncomputable section

/-- A398203: Upper (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398203.P13519331803441787108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398203 (n : ℕ) : ℤ :=
  A398203.P13519331803441787108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398204.P14484470933449480928

`ogf((3x^2+x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398204.P14484470933449480928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 1, 1] [1, -2, 1, -1, 2, -1] n

end

end A398204.P14484470933449480928

noncomputable section

/-- A398204: Lower (-1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398204.P14484470933449480928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398204 (n : ℕ) : ℤ :=
  A398204.P14484470933449480928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398205.P11638134174617533476

`ogf((x+x^2+2x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398205.P11638134174617533476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 1] [1, -2, 1, -1, 2, -1] n

end

end A398205.P11638134174617533476

noncomputable section

/-- A398205: Upper (-1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398205.P11638134174617533476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398205 (n : ℕ) : ℤ :=
  A398205.P11638134174617533476.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398246.P17760257700956056221

`7*a(n-1)+3*a(n-2)-9*a(n-3)+10*a(n-4)` with `a(0)=1, a(1)=8, a(2)=57, a(3)=416`
-/

namespace A398246.P17760257700956056221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 57, 416] fun n a =>
  7 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3) + 10 * a (n - 4)

end

end A398246.P17760257700956056221

noncomputable section

/-- A398246: Number of feedback vertex sets in the grid graph P_n X P_3.

Offset 0, canonical program `A398246.P17760257700956056221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398246 (n : ℕ) : ℤ :=
  A398246.P17760257700956056221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398247.P13795878478120909758

`ogf((1+3x-11x^2-x^3+14x^4-10x^5+2x^6-24x^7)/(1-13x-19x^2+90x^3-2x^4-94x^5+72x^6+8x^7+192x^8))`
-/

namespace A398247.P13795878478120909758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -11, -1, 14, -10, 2, -24] [1, -13, -19, 90, -2, -94, 72, 8, 192] n

end

end A398247.P13795878478120909758

noncomputable section

/-- A398247: Number of feedback vertex sets in the grid graph P_n X P_4.

Offset 0, canonical program `A398247.P13795878478120909758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398247 (n : ℕ) : ℤ :=
  A398247.P13795878478120909758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398262.P15848316115240564117

`16*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=4, a(2)=24`
-/

namespace A398262.P15848316115240564117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 24] fun n a =>
  16 * a (n - 1) - 24 * a (n - 2)

end

end A398262.P15848316115240564117

noncomputable section

/-- A398262: Number of indecomposable closed walks of length 2n along the edges of the 4-cube (hypercube Q_4, the tesseract) based at a vertex.

Offset 0, canonical program `A398262.P15848316115240564117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398262 (n : ℕ) : ℤ :=
  A398262.P15848316115240564117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398276.P3464083411562283250

`ogf((1-3x+22x^2+10x^3-42x^4-6x^5+15x^6-5x^7)/(1-6x-7x^2-40x^3-20x^4+24x^5+5x^6-10x^7+5x^8))`
-/

namespace A398276.P3464083411562283250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 22, 10, -42, -6, 15, -5] [1, -6, -7, -40, -20, 24, 5, -10, 5] n

end

end A398276.P3464083411562283250

noncomputable section

/-- A398276: Number of total dominating sets in the 3 X n king graph.

Offset 0, canonical program `A398276.P3464083411562283250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398276 (n : ℕ) : ℤ :=
  A398276.P3464083411562283250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398278.P6652421888883078610

`ogf((6-9x-3x^2+26x^3-42x^4+14x^5)/(1-7x+15x^2-6x^3-31x^4+73x^5-75x^6+36x^7-6x^8))`
-/

namespace A398278.P6652421888883078610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -9, -3, 26, -42, 14] [1, -7, 15, -6, -31, 73, -75, 36, -6] n

end

end A398278.P6652421888883078610

noncomputable section

/-- A398278: Number of (non-null) induced trees in the grid graph P_3 X P_n.

Offset 1, canonical program `A398278.P6652421888883078610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398278 (n : ℕ) : ℤ :=
  A398278.P6652421888883078610.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398290.P3703426421171951846

`∑{#}[n, (3*#)!/#!^3*C(2*#, n-#)]`
-/

namespace A398290.P3703426421171951846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (3 * k) : ℚ) / (Nat.factorial k ^ 3 : ℚ) * (Nat.choose (2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398290.P3703426421171951846

noncomputable section

/-- A398290: Diagonal of rational function 1/(1 - (1 + x*y*z)*(x + y) - z).

Offset 0, canonical program `A398290.P3703426421171951846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398290.P3703426421171951846.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398291.P17716215388616559997

`∑{#}[n, (3*#)!/#!^3*C(4*#, n-#)]`
-/

namespace A398291.P17716215388616559997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (3 * k) : ℚ) / (Nat.factorial k ^ 3 : ℚ) * (Nat.choose (4 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398291.P17716215388616559997

noncomputable section

/-- A398291: Diagonal of rational function 1/(1 - (1 + x*y*z)*(x*(1 + x*y*z) + y + z)).

Offset 0, canonical program `A398291.P17716215388616559997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398291.P17716215388616559997.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398292.P15633669753371944107

`∑{#}[n, (4*#)!/#!^4*C(#, n-#)]`
-/

namespace A398292.P15633669753371944107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398292.P15633669753371944107

noncomputable section

/-- A398292: Diagonal of rational function 1/(1 - (x + y + z + w + x^2*y*z*w)).

Offset 0, canonical program `A398292.P15633669753371944107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398292 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398292.P15633669753371944107.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398293.P16923908221111569380

`∑{#}[n, (4*#)!/#!^4*C(2*#, n-#)]`
-/

namespace A398293.P16923908221111569380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398293.P16923908221111569380

noncomputable section

/-- A398293: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y) - z - w).

Offset 0, canonical program `A398293.P16923908221111569380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398293.P16923908221111569380.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398294.P4558506374742796449

`∑{#}[n, (4*#)!/#!^4*C(3*#, n-#)]`
-/

namespace A398294.P4558506374742796449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (3 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398294.P4558506374742796449

noncomputable section

/-- A398294: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y + z) - w).

Offset 0, canonical program `A398294.P4558506374742796449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398294.P4558506374742796449.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398295.P2541942171557627485

`∑{#}[n, (4*#)!/#!^4*C(4*#, n-#)]`
-/

namespace A398295.P2541942171557627485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (4 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398295.P2541942171557627485

noncomputable section

/-- A398295: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y + z + w)).

Offset 0, canonical program `A398295.P2541942171557627485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398295.P2541942171557627485.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398296.P12921204731299856871

`∑{#}[n, (4*#)!/#!^4*C(5*#, n-#)]`
-/

namespace A398296.P12921204731299856871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (5 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398296.P12921204731299856871

noncomputable section

/-- A398296: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x*(1 + x*y*z*w) + y + z + w)).

Offset 0, canonical program `A398296.P12921204731299856871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398296.P12921204731299856871.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398300.P2858714858380498305

`2*ceil(sqrt(28*(n+1)-12))`
-/

namespace A398300.P2858714858380498305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt ((28 * (n + 1) : ℤ) - 12 : ℝ)⌉

end

end A398300.P2858714858380498305

noncomputable section

/-- A398300: a(n) is the minimum possible sum of the numbers on all non-mine cells when n mines are placed on an infinite Minesweeper board (each non-mine cell's number is the count of mines among its up to 8 neighbors).

Offset 1, canonical program `A398300.P2858714858380498305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398300 (n : ℕ) : ℤ :=
  A398300.P2858714858380498305.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398309.P7943178715840063505

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0`
-/

namespace A398309.P7943178715840063505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 0] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2)

end

end A398309.P7943178715840063505

noncomputable section

/-- A398309: Number of indecomposable closed walks of length n on the Petersen graph based at a vertex.

Offset 0, canonical program `A398309.P7943178715840063505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398309 (n : ℕ) : ℤ :=
  (A398309.P7943178715840063505.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398310.P8489695089946524381

`4*a(n-1)+5*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=10, a(4)=40`
-/

namespace A398310.P8489695089946524381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5, 10, 40] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2) - 10 * a (n - 3)

end

end A398310.P8489695089946524381

noncomputable section

/-- A398310: Number of indecomposable closed walks of length n on the regular icosahedron based at a vertex.

Offset 0, canonical program `A398310.P8489695089946524381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398310 (n : ℕ) : ℤ :=
  A398310.P8489695089946524381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398374.P7463169060514221778

`a(n-1)*(2*n-2^ceil(log2(n)))` with `a(0)=1`
-/

namespace A398374.P7463169060514221778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((2 * n : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n : ℝ)⌉ : ℤ))

end

end A398374.P7463169060514221778

noncomputable section

/-- A398374: Number of permutations that give the maximum number of comparisons for sorting n elements by binary insertions.

Offset 0, canonical program `A398374.P7463169060514221778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398374.P7463169060514221778.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398446.P5433720991172560056

`((n+3)*C(2*(n+3)-6, n)+4^n)/2`
-/

namespace A398446.P5433720991172560056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.choose ((2 * (n + 3) : ℤ) - 6).toNat n + 4 ^ n : ℚ) / 2

end

end A398446.P5433720991172560056

noncomputable section

/-- A398446: Number of permutations of [n] avoiding the pattern 1324 with the maximum element n in position n-2.

Offset 3, canonical program `A398446.P5433720991172560056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398446 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398446.P5433720991172560056.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398477.P18378234332377890742

`row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)`
-/

namespace A398477.P18378234332377890742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n + 1) * Nat.factorial (SequenceMachineLib.triRow n) : ℚ)

end

end A398477.P18378234332377890742

noncomputable section

/-- A398477: Triangle read by rows: T(n, k + 1) = T(n, k) * (n + k) / (n * (k + 1)) for k <= n, starting at T(n, 0) = n^n, (row recurrence).

Offset 0, canonical program `A398477.P18378234332377890742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398477 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398477.P18378234332377890742.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398478.P169749878298613149

`∑{#}[n, C(n+#, #)*n^(n-#)/(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398478.P169749878298613149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + k) k : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) / (k + 1 : ℚ)

end

end A398478.P169749878298613149

noncomputable section

/-- A398478: a(n) = Sum_{j=0..n} binomial(n + j, j) * n^(n - j) / (j + 1). Row sums of A398477.

Offset 0, canonical program `A398478.P169749878298613149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398478.P169749878298613149.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398479.P8587661814025841451

`(2*n)^n*C(3*n, n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398479.P8587661814025841451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ n * Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)

end

end A398479.P8587661814025841451

noncomputable section

/-- A398479: a(n) = (2*n)^n * binomial(3*n, n) / (n + 1). Central terms of A398477.

Offset 0, canonical program `A398479.P8587661814025841451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398479.P8587661814025841451.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398482.P3169545546200262174

`row(n)^col(n)*(1+row(n))^(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398482.P3169545546200262174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ SequenceMachineLib.triCol n : ℚ) * (1 + SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A398482.P3169545546200262174

noncomputable section

/-- A398482: Triangle read by rows: T(n, k) = n^k * (1 + n)^(n - k).

Offset 0, canonical program `A398482.P3169545546200262174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398482.P3169545546200262174.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398483.P2015006628648364909

`row(n)^col(n)*(row(n)-1)^(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398483.P2015006628648364909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ SequenceMachineLib.triCol n : ℚ) * ((SequenceMachineLib.triRow n : ℤ) - 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A398483.P2015006628648364909

noncomputable section

/-- A398483: Triangle read by rows: T(n, k) = n^k * (n - 1)^(n - k).

Offset 0, canonical program `A398483.P2015006628648364909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398483 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398483.P2015006628648364909.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398517.P13771540962809668512

`ogf((1-2x+4x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A398517.P13771540962809668512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, 1] [1, -4, 6, -4, 1] n

end

end A398517.P13771540962809668512

noncomputable section

/-- A398517: a(n) = (4*n^3-3*n^2+5*n+6)/6.

Offset 0, canonical program `A398517.P13771540962809668512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398517 (n : ℕ) : ℤ :=
  A398517.P13771540962809668512.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398535.P13248774024366701317

`(n+1)²*(n+2)²*((n+1)*(2*(n+1)*(9*(n+1)+13)+5)-1)/6`
-/

namespace A398535.P13248774024366701317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 * (n + 2) ^ 2 : ℤ) * (((n + 1) * (2 * (n + 1) * (9 * (n + 1) + 13) + 5) : ℤ) - 1) : ℚ) / 6

end

end A398535.P13248774024366701317

noncomputable section

/-- A398535: a(n) is the trace of the product of two Hankel n X n matrices M_n and N_n whose M[i,j] generic elements are respectively (i+j)^2 and (i+j)^3.

Offset 1, canonical program `A398535.P13248774024366701317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398535.P13248774024366701317.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398537.P15466782401860754690

`∑{#}[floor(n/2), C(n-#, #)*(n²+1)^(n-2*#)*n^(2*#)]`
-/

namespace A398537.P15466782401860754690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ) * (n ^ 2 + 1 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (n ^ (2 * k) : ℚ)

end

end A398537.P15466782401860754690

noncomputable section

/-- A398537: a(n) is the permanent of the symmetric tridiagonal Toeplitz n X n matrix M_n where M_n(j,k) = n^2+1 for j = k, M_n(j,k) = n for abs(j-k) = 1, M_n(j,k) = 0 otherwise.

Offset 0, canonical program `A398537.P15466782401860754690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398537.P15466782401860754690.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398538.P17523405333718738598

`ogf((1-x)/(1-2x-6x^3-9x^4))`
-/

namespace A398538.P17523405333718738598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 0, -6, -9] n

end

end A398538.P17523405333718738598

noncomputable section

/-- A398538: Number of n-tuples (a_1, ..., a_n) in (Z/3Z)^n such that M(a_1)*M(a_2)*...*M(a_n) = -I, where M(a) = [a, -1; 1, 0].

Offset 2, canonical program `A398538.P17523405333718738598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398538 (n : ℕ) : ℤ :=
  A398538.P17523405333718738598.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398565.P17286952794565849304

`3^(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398565.P17286952794565849304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ)

end

end A398565.P17286952794565849304

noncomputable section

/-- A398565: a(n) = 3^(2^n - 1).

Offset 0, canonical program `A398565.P17286952794565849304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398565 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398565.P17286952794565849304.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398567.P6072055630550410281

`ogf((16+18x-80x^2-54x^3+44x^4+8x^5)/(1-4x-16x^2+6x^3+16x^4-4x^5-x^6))`
-/

namespace A398567.P6072055630550410281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 18, -80, -54, 44, 8] [1, -4, -16, 6, 16, -4, -1] n

end

end A398567.P6072055630550410281

noncomputable section

/-- A398567: Number of perfect matchings in a 2n X 3 grid graph on the Klein bottle.

Offset 1, canonical program `A398567.P6072055630550410281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398567 (n : ℕ) : ℤ :=
  A398567.P6072055630550410281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398651.P14364319991967368664

`ogf((x+x^2)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398651.P14364319991967368664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398651.P14364319991967368664

noncomputable section

/-- A398651: Lower (1, 1/2)-midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398651.P14364319991967368664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398651 (n : ℕ) : ℤ :=
  A398651.P14364319991967368664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398652.P13655693242827887489

`ogf((2x-2x^2+3x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398652.P13655693242827887489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, 3, -1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398652.P13655693242827887489

noncomputable section

/-- A398652: Upper (1, 1/2)-midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398652.P13655693242827887489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398652 (n : ℕ) : ℤ :=
  A398652.P13655693242827887489.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398660.P9653228228003721502

`ogf((3x+5x^3+x^4+3x^5)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`
-/

namespace A398660.P9653228228003721502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, 5, 1, 3] [1, -3, 3, -1, 0, -1, 3, -3, 1] n

end

end A398660.P9653228228003721502

noncomputable section

/-- A398660: Upper (1, 6/5) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398660.P9653228228003721502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398660 (n : ℕ) : ℤ :=
  A398660.P9653228228003721502.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398661.P16912725788563947793

`ogf((x+2x^2+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398661.P16912725788563947793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398661.P16912725788563947793

noncomputable section

/-- A398661: Lower (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398661.P16912725788563947793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398661 (n : ℕ) : ℤ :=
  A398661.P16912725788563947793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398662.P13931983562056736578

`ogf((2x-x^2+3x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398662.P13931983562056736578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 3] [1, -4, 7, -8, 7, -4, 1] n

end

end A398662.P13931983562056736578

noncomputable section

/-- A398662: Upper (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398662.P13931983562056736578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398662 (n : ℕ) : ℤ :=
  A398662.P13931983562056736578.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398663.P17264390302320175591

`ogf((2x+x^2+x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398663.P17264390302320175591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398663.P17264390302320175591

noncomputable section

/-- A398663: Lower (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398663.P17264390302320175591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398663 (n : ℕ) : ℤ :=
  A398663.P17264390302320175591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398664.P2738383818631677079

`ogf((3x-2x^2+4x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398664.P2738383818631677079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2, 4, -1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398664.P2738383818631677079

noncomputable section

/-- A398664: Upper (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398664.P2738383818631677079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398664 (n : ℕ) : ℤ :=
  A398664.P2738383818631677079.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398665.P7646033834998085422

`ogf((2x+3x^2+x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398665.P7646033834998085422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 1, 2] [1, -4, 7, -8, 7, -4, 1] n

end

end A398665.P7646033834998085422

noncomputable section

/-- A398665: Lower (1/2, 2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398665.P7646033834998085422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398665 (n : ℕ) : ℤ :=
  A398665.P7646033834998085422.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398666.P15891971154703768520

`ogf((3x+4x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398666.P15891971154703768520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, 4, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398666.P15891971154703768520

noncomputable section

/-- A398666: Upper (1/2, 2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398666.P15891971154703768520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398666 (n : ℕ) : ℤ :=
  A398666.P15891971154703768520.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398672.P12986523527898557867

`ogf((1+x-29x^2+3x^3)/(1-15x+15x^2-x^3))`
-/

namespace A398672.P12986523527898557867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -29, 3] [1, -15, 15, -1] n

end

end A398672.P12986523527898557867

noncomputable section

/-- A398672: Number of domino tilings (perfect matchings) of the 4 X 2n grid graph embedded on the Klein bottle.

Offset 0, canonical program `A398672.P12986523527898557867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398672 (n : ℕ) : ℤ :=
  A398672.P12986523527898557867.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398678.P17468635417467204317

`ogf((1+3x-7x^2+7x^4-3x^5-x^6)/(1-15x^2+32x^4-15x^6+x^8))`
-/

namespace A398678.P17468635417467204317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -7, 0, 7, -3, -1] [1, 0, -15, 0, 32, 0, -15, 0, 1] n

end

end A398678.P17468635417467204317

noncomputable section

/-- A398678: Number of spanning trees of the 3 X n grid graph that are invariant under reflection in the vertical axis.

Offset 1, canonical program `A398678.P17468635417467204317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398678 (n : ℕ) : ℤ :=
  A398678.P17468635417467204317.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398679.P3681087345552598065

`ogf((1+3x-3x^2-10x^3-3x^4+3x^5+x^6)/(1-15x^2+32x^4-15x^6+x^8))`
-/

namespace A398679.P3681087345552598065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3, -10, -3, 3, 1] [1, 0, -15, 0, 32, 0, -15, 0, 1] n

end

end A398679.P3681087345552598065

noncomputable section

/-- A398679: Number of spanning trees of the 3 X n grid graph that are invariant under rotation by 180 degrees.

Offset 1, canonical program `A398679.P3681087345552598065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398679 (n : ℕ) : ℤ :=
  A398679.P3681087345552598065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398727.P4140299455966748439

`ogf((3x+4x^2+2x^3+3x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398727.P4140299455966748439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, 2, 3] [1, -4, 7, -8, 7, -4, 1] n

end

end A398727.P4140299455966748439

noncomputable section

/-- A398727: Lower (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398727.P4140299455966748439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398727 (n : ℕ) : ℤ :=
  A398727.P4140299455966748439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398728.P18424042664954230036

`ogf((4x+x^2+5x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398728.P18424042664954230036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 5, 2] [1, -4, 7, -8, 7, -4, 1] n

end

end A398728.P18424042664954230036

noncomputable section

/-- A398728: Upper (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398728.P18424042664954230036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398728 (n : ℕ) : ℤ :=
  A398728.P18424042664954230036.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398730.P14531345402756718380

`ogf((x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398730.P14531345402756718380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398730.P14531345402756718380

noncomputable section

/-- A398730: Upper (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398730.P14531345402756718380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398730 (n : ℕ) : ℤ :=
  A398730.P14531345402756718380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398790.P7603610696032174352

`ogf((1+x+x^2)/(1-x-2x^2-2x^3-x^4))`
-/

namespace A398790.P7603610696032174352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -2, -2, -1] n

end

end A398790.P7603610696032174352

noncomputable section

/-- A398790: Number of ways to tile a 1 X n strip using tiles of length 1 or 2, each tile colored red or blue, such that no two red tiles are adjacent.

Offset 0, canonical program `A398790.P7603610696032174352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398790 (n : ℕ) : ℤ :=
  A398790.P7603610696032174352.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398807.P1294699922700618276

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+7, n-#)]`
-/

namespace A398807.P1294699922700618276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (k + 2) 2 * Nat.choose (5 * n + 7) ((n : ℤ) - (k : ℤ)).toNat

end

end A398807.P1294699922700618276

noncomputable section

/-- A398807: Expansion of (Sum_{k>=0} binomial(5*k+1,k) * x^k)^4.

Offset 0, canonical program `A398807.P1294699922700618276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398807 (n : ℕ) : ℤ :=
  (A398807.P1294699922700618276.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398811.P934446363900781508

`ogf((1-4x-2x^2-x^3)/(1-5x-5x^2))`
-/

namespace A398811.P934446363900781508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -2, -1] [1, -5, -5] n

end

end A398811.P934446363900781508

noncomputable section

/-- A398811: a(n) is the number of tilings of a 10 X 5n rectangle into Y-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398811.P934446363900781508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398811 (n : ℕ) : ℤ :=
  A398811.P934446363900781508.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398827.P8300964796558680602

`ogf(1/(1-3x-4x^2-4x^3))`
-/

namespace A398827.P8300964796558680602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -4, -4] n

end

end A398827.P8300964796558680602

noncomputable section

/-- A398827: a(n) is the number of tilings of a 9 X 10n rectangle into L-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398827.P8300964796558680602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398827 (n : ℕ) : ℤ :=
  A398827.P8300964796558680602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398833.P3872639580255898512

`ogf(1/(1-x^2-x^5-x^10))`
-/

namespace A398833.P3872639580255898512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, 0, 0, -1, 0, 0, 0, 0, -1] n

end

end A398833.P3872639580255898512

noncomputable section

/-- A398833: a(n) is the number of tilings of a 10 X n rectangle into L-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398833.P3872639580255898512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398833 (n : ℕ) : ℤ :=
  A398833.P3872639580255898512.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398836.P16886983851941829356

`floor(n*(9*n+1)/6)`
-/

namespace A398836.P16886983851941829356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (9 * n + 1) : ℚ) / 6⌋

end

end A398836.P16886983851941829356

noncomputable section

/-- A398836: Lower (1, 2/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398836.P16886983851941829356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398836 (n : ℕ) : ℤ :=
  A398836.P16886983851941829356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398837.P12955740837584096552

`ceil(n*(9*n+1)/6)`
-/

namespace A398837.P12955740837584096552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (9 * n + 1) : ℚ) / 6⌉

end

end A398837.P12955740837584096552

noncomputable section

/-- A398837: Upper (1, 2/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398837.P12955740837584096552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398837 (n : ℕ) : ℤ :=
  A398837.P12955740837584096552.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398838.P10276710094283728770

`ogf((2x+5x^2+6x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398838.P10276710094283728770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5, 6, 2] [1, -2, 1, -1, 2, -1] n

end

end A398838.P10276710094283728770

noncomputable section

/-- A398838: Lower (1, 4/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398838.P10276710094283728770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398838 (n : ℕ) : ℤ :=
  A398838.P10276710094283728770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398839.P16974092594332849696

`ceil(n*(15*n-1)/6)`
-/

namespace A398839.P16974092594332849696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((15 * n : ℤ) - 1) : ℚ) / 6⌉

end

end A398839.P16974092594332849696

noncomputable section

/-- A398839: Upper (1, 4/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398839.P16974092594332849696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398839 (n : ℕ) : ℤ :=
  A398839.P16974092594332849696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398840.P593991936963180517

`floor(n*(11*n-1)/4)`
-/

namespace A398840.P593991936963180517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 4⌋

end

end A398840.P593991936963180517

noncomputable section

/-- A398840: Lower (1, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398840.P593991936963180517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398840 (n : ℕ) : ℤ :=
  A398840.P593991936963180517.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398841.P13552911479898040379

`ogf((3x+2x^2+3x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398841.P13552911479898040379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 3, 3] [1, -3, 4, -4, 3, -1] n

end

end A398841.P13552911479898040379

noncomputable section

/-- A398841: Upper (1, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398841.P13552911479898040379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398841 (n : ℕ) : ℤ :=
  A398841.P13552911479898040379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398842.P947199534998649314

`floor(n*(5*n-7)/4)`
-/

namespace A398842.P947199534998649314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((5 * n : ℤ) - 7) : ℚ) / 4⌋

end

end A398842.P947199534998649314

noncomputable section

/-- A398842: Lower (-2, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398842.P947199534998649314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398842 (n : ℕ) : ℤ :=
  A398842.P947199534998649314.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398843.P9440608218935463149

`ogf((2x^2+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398843.P9440608218935463149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 0, 3] [1, -3, 4, -4, 3, -1] n

end

end A398843.P9440608218935463149

noncomputable section

/-- A398843: Upper (-2, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398843.P9440608218935463149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398843 (n : ℕ) : ℤ :=
  A398843.P9440608218935463149.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398845.P2931905076541296090

`ceil(n*(9*n+1)/12)`
-/

namespace A398845.P2931905076541296090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (9 * n + 1) : ℚ) / 12⌉

end

end A398845.P2931905076541296090

noncomputable section

/-- A398845: Upper (1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398845.P2931905076541296090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398845 (n : ℕ) : ℤ :=
  A398845.P2931905076541296090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398846.P1935067902238574170

`floor(n*(11*n-1)/12)`
-/

namespace A398846.P1935067902238574170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 12⌋

end

end A398846.P1935067902238574170

noncomputable section

/-- A398846: Lower (1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398846.P1935067902238574170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398846 (n : ℕ) : ℤ :=
  A398846.P1935067902238574170.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398846.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398847.P13207648458492473620

`ceil(n*(11*n-1)/12)`
-/

namespace A398847.P13207648458492473620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 12⌉

end

end A398847.P13207648458492473620

noncomputable section

/-- A398847: Upper (1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398847.P13207648458492473620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398847 (n : ℕ) : ℤ :=
  A398847.P13207648458492473620.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398848.P7723143824585085884

`floor(n*(7*n-5)/12)`
-/

namespace A398848.P7723143824585085884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12⌋

end

end A398848.P7723143824585085884

noncomputable section

/-- A398848: Lower (-1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398848.P7723143824585085884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398848 (n : ℕ) : ℤ :=
  A398848.P7723143824585085884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398848.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398849.P14506068353715613907

`ceil(n*(7*n-5)/12)`
-/

namespace A398849.P14506068353715613907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12⌉

end

end A398849.P14506068353715613907

noncomputable section

/-- A398849: Upper (-1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398849.P14506068353715613907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398849 (n : ℕ) : ℤ :=
  A398849.P14506068353715613907.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398852.P6501527431990106096

`ogf((x+3x^2+x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398852.P6501527431990106096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 1, 2] [1, -3, 4, -4, 3, -1] n

end

end A398852.P6501527431990106096

noncomputable section

/-- A398852: Lower (1/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398852.P6501527431990106096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398852 (n : ℕ) : ℤ :=
  A398852.P6501527431990106096.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398853.P9826183201726399414

`ogf((2x+x^2+2x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398853.P9826183201726399414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 2] [1, -3, 4, -4, 3, -1] n

end

end A398853.P9826183201726399414

noncomputable section

/-- A398853: Upper (1/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398853.P9826183201726399414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398853 (n : ℕ) : ℤ :=
  A398853.P9826183201726399414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398854.P11164294614401889234

`ogf((x+4x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398854.P11164294614401889234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 3, 2] [1, -2, 1, -1, 2, -1] n

end

end A398854.P11164294614401889234

noncomputable section

/-- A398854: Lower (1/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398854.P11164294614401889234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398854 (n : ℕ) : ℤ :=
  A398854.P11164294614401889234.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398855.P4235946344407734571

`ogf((2x+2x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398855.P4235946344407734571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 4, 2] [1, -2, 1, -1, 2, -1] n

end

end A398855.P4235946344407734571

noncomputable section

/-- A398855: Upper (1/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398855.P4235946344407734571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398855 (n : ℕ) : ℤ :=
  A398855.P4235946344407734571.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398856.P13260625199673236660

`ogf((x+5x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398856.P13260625199673236660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 3, 2] [1, -2, 1, -1, 2, -1] n

end

end A398856.P13260625199673236660

noncomputable section

/-- A398856: Lower (2/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398856.P13260625199673236660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398856 (n : ℕ) : ℤ :=
  A398856.P13260625199673236660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398857.P16620617964778608233

`ogf((2x+3x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398857.P16620617964778608233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 4, 2] [1, -2, 1, -1, 2, -1] n

end

end A398857.P16620617964778608233

noncomputable section

/-- A398857: Upper (2/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398857.P16620617964778608233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398857 (n : ℕ) : ℤ :=
  A398857.P16620617964778608233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398858.P16912354617135748286

`ogf((2x+5x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398858.P16912354617135748286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5, 4, 2] [1, -2, 1, -1, 2, -1] n

end

end A398858.P16912354617135748286

noncomputable section

/-- A398858: Lower (4/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398858.P16912354617135748286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398858 (n : ℕ) : ℤ :=
  A398858.P16912354617135748286.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398859.P10386935408754022732

`ogf((3x+3x^2+5x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398859.P10386935408754022732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, 5, 2] [1, -2, 1, -1, 2, -1] n

end

end A398859.P10386935408754022732

noncomputable section

/-- A398859: Upper (4/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398859.P10386935408754022732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398859 (n : ℕ) : ℤ :=
  A398859.P10386935408754022732.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398860.P9237099235835428353

`floor(n*(9*n+1)/4)`
-/

namespace A398860.P9237099235835428353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (9 * n + 1) : ℚ) / 4⌋

end

end A398860.P9237099235835428353

noncomputable section

/-- A398860: Lower (3/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398860.P9237099235835428353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398860 (n : ℕ) : ℤ :=
  A398860.P9237099235835428353.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398861.P9512027551121797084

`ceil(n*(9*n+1)/4)`
-/

namespace A398861.P9512027551121797084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (9 * n + 1) : ℚ) / 4⌉

end

end A398861.P9512027551121797084

noncomputable section

/-- A398861: Upper (3/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398861.P9512027551121797084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398861 (n : ℕ) : ℤ :=
  A398861.P9512027551121797084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398862.P2537381618111854366

`ogf((38x-4x^2+14x^3)/(1-2x+2x^3-x^4))`
-/

namespace A398862.P2537381618111854366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 38, -4, 14] [1, -2, 0, 2, -1] n

end

end A398862.P2537381618111854366

noncomputable section

/-- A398862: Number of points with even coordinate sum in the cube [-n,n]^3 having an odd number of lattice neighbors inside the cube.

Offset 1, canonical program `A398862.P2537381618111854366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398862 (n : ℕ) : ℤ :=
  A398862.P2537381618111854366.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398865.P16826196749550718768

`ogf((1-3x-x^2-x^3)/(1-6x+6x^2-9x^3+8x^4+3x^5+x^6))`
-/

namespace A398865.P16826196749550718768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1, -1] [1, -6, 6, -9, 8, 3, 1] n

end

end A398865.P16826196749550718768

noncomputable section

/-- A398865: a(n) is the number of tilings of a 9 X 10n rectangle into P-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398865.P16826196749550718768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398865 (n : ℕ) : ℤ :=
  A398865.P16826196749550718768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398870.P5829513920652044191

`ogf((1-4x+6x^2-4x^3+x^4)/(1-7x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A398870.P5829513920652044191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -7, 10, -10, 5, -1] n

end

end A398870.P5829513920652044191

noncomputable section

/-- A398870: a(n) is the number of tilings of a 6 X 5n rectangle into I-pentominoes.

Offset 0, canonical program `A398870.P5829513920652044191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398870 (n : ℕ) : ℤ :=
  A398870.P5829513920652044191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398879.P15397691951741920242

`ogf((1-4x+6x^2-4x^3+x^4)/(1-10x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A398879.P15397691951741920242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -10, 10, -10, 5, -1] n

end

end A398879.P15397691951741920242

noncomputable section

/-- A398879: a(n) is the number of tilings of a 9 X 5n rectangle into I-pentominoes.

Offset 0, canonical program `A398879.P15397691951741920242`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398879 (n : ℕ) : ℤ :=
  A398879.P15397691951741920242.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398884.P3834788570171898934

`(row(n)-col(n))*col(n)^(row(n)-col(n))+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398884.P3834788570171898934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + 1

end

end A398884.P3834788570171898934

noncomputable section

/-- A398884: Array read by ascending antidiagonals: A(n,k) = n*k^n + 1, with k >= 0.

Offset 0, canonical program `A398884.P3834788570171898934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398884.P3834788570171898934.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398885.P2800503761175022589

`∑{#}[n, 1+#^(n-#)*(n-#)]`
-/

namespace A398885.P2800503761175022589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 + (k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * ((n : ℤ) - (k : ℤ) : ℚ))

end

end A398885.P2800503761175022589

noncomputable section

/-- A398885: Antidiagonal sums of the array A398884.

Offset 0, canonical program `A398885.P2800503761175022589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398885.P2800503761175022589.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398929.P15101211080941894914

`ogf((2+2x+3x^2+x^3)/(1-x^2-x^3+x^5))`
-/

namespace A398929.P15101211080941894914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 3, 1] [1, 0, -1, -1, 0, 1] n

end

end A398929.P15101211080941894914

noncomputable section

/-- A398929: Number of sets R(k) that contain n, where R(k) is the set of k consecutive integers centered at k (excluding k if k is even, including k if k is odd).

Offset 1, canonical program `A398929.P15101211080941894914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398929 (n : ℕ) : ℤ :=
  A398929.P15101211080941894914.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398985.P578659765086379523

`(n+1)*C((n+1)*(n+2), n+1)/(2*((n+1)²+n+1-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398985.P578659765086379523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose ((n + 1) * (n + 2)) (n + 1) : ℚ) / (2 * (((n + 1) ^ 2 + (n + 1) : ℤ) - 1) : ℚ)

end

end A398985.P578659765086379523

noncomputable section

/-- A398985: a(n) = n*binomial(n*(n+1), n)/(2*(n^2 + n - 1)).

Offset 1, canonical program `A398985.P578659765086379523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398985.P578659765086379523.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399018.P4841991023451713736

`ogf((6+42x+54x^2+78x^3+12x^4)/(1-3x^2+3x^4-x^6))`
-/

namespace A399018.P4841991023451713736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 42, 54, 78, 12] [1, 0, -3, 0, 3, 0, -1] n

end

end A399018.P4841991023451713736

noncomputable section

/-- A399018: Number of solid unit triangles in the hexagonal cross-section of the first iteration of the generalized Menger sponge with subdivision 2n+1, cut through the center perpendicular to a space diagonal.

Offset 0, canonical program `A399018.P4841991023451713736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399018 (n : ℕ) : ℤ :=
  A399018.P4841991023451713736.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399019.P10843594979958510368

`ogf((12x+78x^2+54x^3+42x^4+6x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A399019.P10843594979958510368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 78, 54, 42, 6] [1, 0, -3, 0, 3, 0, -1] n

end

end A399019.P10843594979958510368

noncomputable section

/-- A399019: Number of empty unit triangles in the hexagonal cross-section of the first iteration of the generalized Menger sponge with subdivision 2n+1, cut through the center perpendicular to a space diagonal.

Offset 0, canonical program `A399019.P10843594979958510368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399019 (n : ℕ) : ℤ :=
  A399019.P10843594979958510368.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399040.P4362929268690130338

`ogf((3-7x)/(1-8x+16x^2))`
-/

namespace A399040.P4362929268690130338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7] [1, -8, 16] n

end

end A399040.P4362929268690130338

noncomputable section

/-- A399040: Total number of connected components in all induced subgraphs of the n-ladder graph.

Offset 1, canonical program `A399040.P4362929268690130338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399040 (n : ℕ) : ℤ :=
  A399040.P4362929268690130338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399041.P15010380011353425428

`ogf((8-48x+41x^2)/(1-17x+80x^2-64x^3))`
-/

namespace A399041.P15010380011353425428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -48, 41] [1, -17, 80, -64] n

end

end A399041.P15010380011353425428

noncomputable section

/-- A399041: Total number of connected components in all induced subgraphs of the 3 X n grid graph.

Offset 1, canonical program `A399041.P15010380011353425428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399041 (n : ℕ) : ℤ :=
  A399041.P15010380011353425428.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399045.P5360054208156754306

`4^n+3^n-2*2^n`
-/

namespace A399045.P5360054208156754306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 3 ^ n : ℤ) - (2 * 2 ^ n : ℤ)

end

end A399045.P5360054208156754306

noncomputable section

/-- A399045: Total number of connected components in all induced subgraphs of the n X 2 rook graph.

Offset 0, canonical program `A399045.P5360054208156754306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399045 (n : ℕ) : ℤ :=
  A399045.P5360054208156754306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399046.P10866800930197794789

`8^n+3*5^n-4*4^n`
-/

namespace A399046.P10866800930197794789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n + 3 * 5 ^ n : ℤ) - (4 * 4 ^ n : ℤ)

end

end A399046.P10866800930197794789

noncomputable section

/-- A399046: Total number of connected components in all induced subgraphs of the n X 3 rook graph.

Offset 0, canonical program `A399046.P10866800930197794789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399046 (n : ℕ) : ℤ :=
  A399046.P10866800930197794789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399110.P15232046065306847275

`∑{#}[n, (-1)^(n-#)*#^#*(2*n)!/((n-#)!*#!*n!)]`
-/

namespace A399110.P15232046065306847275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (k ^ k : ℚ) * (Nat.factorial (2 * n) : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat * Nat.factorial k * Nat.factorial n : ℚ)

end

end A399110.P15232046065306847275

noncomputable section

/-- A399110: Number of endofunctions on [2n] with exactly n isolated fixed points.

Offset 0, canonical program `A399110.P15232046065306847275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399110.P15232046065306847275.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399164.P4069160883750986696

`ogf((1-3x-3x^2+2x^3)/(1-4x-2x^2+4x^3-x^4))`
-/

namespace A399164.P4069160883750986696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -3, 2] [1, -4, -2, 4, -1] n

end

end A399164.P4069160883750986696

noncomputable section

/-- A399164: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 132, 321}.

Offset 0, canonical program `A399164.P4069160883750986696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399164 (n : ℕ) : ℤ :=
  A399164.P4069160883750986696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399172.P1208699379547714089

`2^round(2^n/3)`
-/

namespace A399172.P1208699379547714089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) : ℤ)

end

end A399172.P1208699379547714089

noncomputable section

/-- A399172: a(n) = 2^((2^n-(-1)^n)/3).

Offset 0, canonical program `A399172.P1208699379547714089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399172.P1208699379547714089.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399180.P3731468127804606697

`ogf((x+2x^2+x^3+2x^4+x^5)/(1-x^7))`
-/

namespace A399180.P3731468127804606697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 2, 1] [1, 0, 0, 0, 0, 0, 0, -1] n

end

end A399180.P3731468127804606697

noncomputable section

/-- A399180: Period 7: repeat 0,1,2,1,2,1,0.

Offset 0, canonical program `A399180.P3731468127804606697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399180 (n : ℕ) : ℤ :=
  A399180.P3731468127804606697.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399180.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399185.P9420212230745504611

`a(n-4)+4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2, a(6)=0`
-/

namespace A399185.P9420212230745504611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 2, 0] fun n a =>
  a (n - 4) + 4 * a (n - 5) + a (n - 6)

end

end A399185.P9420212230745504611

noncomputable section

/-- A399185: a(n) is the number of tilings of a 5 X 2n rectangle into Z-tetrominoes and U-pentominoes.

Offset 0, canonical program `A399185.P9420212230745504611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399185 (n : ℕ) : ℤ :=
  (A399185.P9420212230745504611.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399233.P5330481548219971955

`ogf((12-24x+16x^2-4x^3+2x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))`
-/

namespace A399233.P5330481548219971955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -24, 16, -4, 2] [1, -4, 6, -6, 5, -2, 1] n

end

end A399233.P5330481548219971955

noncomputable section

/-- A399233: Number of minimal connected dominating sets in the n-antiprism graph.

Offset 3, canonical program `A399233.P5330481548219971955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399233 (n : ℕ) : ℤ :=
  A399233.P5330481548219971955.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399258.P9139943054962240312

`floor((row(n)-col(n)+1)*π^(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399258.P9139943054962240312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℝ) * Real.pi ^ (SequenceMachineLib.triCol n + 1)⌋

end

end A399258.P9139943054962240312

noncomputable section

/-- A399258: Rectangular array (r(n, k)), read by descending antidiagonals: r(n, k) = floor(k*Pi^n).

Offset 1, canonical program `A399258.P9139943054962240312`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*π^(col(n)+1))` (program `A399258.P9139943054962240312`, by `A399258.P9139943054962240312.correct`). Lean does not check the parsing of the name. -/
def A399258 (n : ℕ) : ℤ :=
  A399258.P9139943054962240312.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*π^(col(n)+1))` (program `A399258.P9139943054962240312`, by `A399258.P9139943054962240312.correct`). Lean does not check the parsing of the name. -/
def A399258.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399324.P15725540353166825345

`1/(n+2)*∑{#}[n, C(2*#, #)*C(n+2, #+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399324.P15725540353166825345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * k) k * Nat.choose (n + 2) (k + 1) : ℕ) : ℚ)

end

end A399324.P15725540353166825345

noncomputable section

/-- A399324: a(n) = (1/(n + 2)) * Sum_{k=0..n} binomial(2*k, k) * binomial(n+2, k+1). Row sums of A106534.

Offset 0, canonical program `A399324.P15725540353166825345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399324 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399324.P15725540353166825345.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399341.P5948604663381644649

`(n^6+9*n^5+30*n^4+45*n^3+29*n²+6*n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399341.P5948604663381644649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 + 9 * n ^ 5 + 30 * n ^ 4 + 45 * n ^ 3 + 29 * n ^ 2 + 6 * n : ℚ) / 8

end

end A399341.P5948604663381644649

noncomputable section

/-- A399341: a(n) = (n^6 + 9*n^5 + 30*n^4 + 45*n^3 + 29*n^2 + 6*n) / 8. (Row 3 of array A399342.)

Offset 0, canonical program `A399341.P5948604663381644649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399341.P5948604663381644649.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399352.P14429200933316941259

`ogf((1+3x+x^4-x^5)/(1-5x^2-x^4+x^6))`
-/

namespace A399352.P14429200933316941259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, 0, 1, -1] [1, 0, -5, 0, -1, 0, 1] n

end

end A399352.P14429200933316941259

noncomputable section

/-- A399352: Number of independent vertex sets in the n X 2 projective plane graph.

Offset 0, canonical program `A399352.P14429200933316941259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399352 (n : ℕ) : ℤ :=
  A399352.P14429200933316941259.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399353.P8469045247543343980

`ogf((2+3x-9x^2+6x^3-9x^4+2x^5+9x^6-4x^7+3x^8-x^9)/(1-12x^2+3x^4+25x^6+2x^8-x^10))`
-/

namespace A399353.P8469045247543343980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -9, 6, -9, 2, 9, -4, 3, -1] [1, 0, -12, 0, 3, 0, 25, 0, 2, 0, -1] n

end

end A399353.P8469045247543343980

noncomputable section

/-- A399353: Number of independent vertex sets in the n X 3 projective plane graph.

Offset 0, canonical program `A399353.P8469045247543343980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399353 (n : ℕ) : ℤ :=
  A399353.P8469045247543343980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399354.P5833896430700675044

`ogf((3-12x^2-12x^3-x^4)/(1-x-8x^2-6x^3+x^4+x^5))`
-/

namespace A399354.P5833896430700675044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -12, -12, -1] [1, -1, -8, -6, 1, 1] n

end

end A399354.P5833896430700675044

noncomputable section

/-- A399354: Number of independent vertex sets in the 3 X n Moebius strip graph.

Offset 0, canonical program `A399354.P5833896430700675044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399354 (n : ℕ) : ℤ :=
  A399354.P5833896430700675044.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399355.P8661528366666240690

`ogf((2+5x-20x^2-49x^3-10x^4+23x^5-4x^6-3x^7)/(1-x-20x^2-27x^3+14x^4+25x^5-4x^6-5x^7+x^8))`
-/

namespace A399355.P8661528366666240690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, -20, -49, -10, 23, -4, -3] [1, -1, -20, -27, 14, 25, -4, -5, 1] n

end

end A399355.P8661528366666240690

noncomputable section

/-- A399355: Number of independent vertex sets in the 4 X n Moebius strip graph.

Offset 0, canonical program `A399355.P8661528366666240690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399355 (n : ℕ) : ℤ :=
  A399355.P8661528366666240690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399357.P4855077862202174180

`ogf((1+4x-12x^2+8x^3-x^4)/(1-3x-12x^2+4x^3+3x^4-x^5))`
-/

namespace A399357.P4855077862202174180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -12, 8, -1] [1, -3, -12, 4, 3, -1] n

end

end A399357.P4855077862202174180

noncomputable section

/-- A399357: Number of independent vertex sets in the 4 X n Klein bottle graph.

Offset 0, canonical program `A399357.P4855077862202174180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399357 (n : ℕ) : ℤ :=
  A399357.P4855077862202174180.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399443.P12779427697152541881

`n*(n²+3*n+1)*(n+3)!/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399443.P12779427697152541881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2 + 3 * n + 1) * Nat.factorial (n + 3) : ℚ) / 8

end

end A399443.P12779427697152541881

noncomputable section

/-- A399443: a(n) = n * (n^2 + 3*n + 1) * (n + 3)! / 8. (Row 3 of array A399444.)

Offset 0, canonical program `A399443.P12779427697152541881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399443.P12779427697152541881.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399478.P10424283525659201034

`(n+1)*a(n-1)+(n+2)*(n-1)!` with `a(0)=-1`
-/

namespace A399478.P10424283525659201034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) + ((n + 2) * Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A399478.P10424283525659201034

noncomputable section

/-- A399478: a(n) = n! * (H_{n-1} - 1/n), where H_n is the n-th harmonic number.

Offset 1, canonical program `A399478.P10424283525659201034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399478 (n : ℕ) : ℤ :=
  A399478.P10424283525659201034.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399519.P15133205204752964634

`n+1-round(exp(round(log(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399519.P15133205204752964634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.exp (SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ)) : ℝ))

end

end A399519.P15133205204752964634

noncomputable section

/-- A399519: a(n) = n - round(exp(round(log(n)))), where round(x) is the nearest integer to x.

Offset 1, canonical program `A399519.P15133205204752964634`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-round(exp(round(log(n+1))))` (program `A399519.P15133205204752964634`, by `A399519.P15133205204752964634.correct`). Lean does not check the parsing of the name. -/
def A399519 (n : ℕ) : ℤ :=
  A399519.P15133205204752964634.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-round(exp(round(log(n+1))))` (program `A399519.P15133205204752964634`, by `A399519.P15133205204752964634.correct`). Lean does not check the parsing of the name. -/
def A399519.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399532.P4141707571895212141

`2^(n-1)*a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399532.P4141707571895212141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + a (n - 3)

end

end A399532.P4141707571895212141

noncomputable section

/-- A399532: G.f. A(x) satisfies: A(x) = (1 - x^2 + x * A(2*x)) / (1 - x^3).

Offset 0, canonical program `A399532.P4141707571895212141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399532.P4141707571895212141.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399533.P15495638550834500928

`a(n-1)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399533.P15495638550834500928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * a (n - 3)

end

end A399533.P15495638550834500928

noncomputable section

/-- A399533: G.f. A(x) satisfies: A(x) = (1 + x^3 * A(2*x)) / (1 - x).

Offset 0, canonical program `A399533.P15495638550834500928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399533 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399533.P15495638550834500928.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399534.P8032153606335244007

`2^(n-2)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399534.P8032153606335244007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * a (n - 2) + a (n - 3)

end

end A399534.P8032153606335244007

noncomputable section

/-- A399534: G.f. A(x) satisfies: A(x) = (1 + x + x^2 * A(2*x)) / (1 - x^3).

Offset 0, canonical program `A399534.P8032153606335244007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399534 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399534.P8032153606335244007.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399536.P7741014011758907903

`a(n-2)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399536.P7741014011758907903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * a (n - 3)

end

end A399536.P7741014011758907903

noncomputable section

/-- A399536: G.f. A(x) satisfies: A(x) = (1 + x + x^3 * A(2*x)) / (1 - x^2).

Offset 0, canonical program `A399536.P7741014011758907903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399536.P7741014011758907903.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399538.P8373243976437889193

`2^(n-1)*a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A399538.P8373243976437889193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + a (n - 3)

end

end A399538.P8373243976437889193

noncomputable section

/-- A399538: G.f. A(x) satisfies: A(x) = x * (1 + A(2*x)) / (1 - x^3).

Offset 0, canonical program `A399538.P8373243976437889193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399538.P8373243976437889193.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399542.P9741589405166616267

`(row(n)-col(n))*col(n)*((row(n)-col(n))²-col(n)²)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399542.P9741589405166616267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 - (SequenceMachineLib.triCol n ^ 2 : ℤ)) : ℚ) / 6

end

end A399542.P9741589405166616267

noncomputable section

/-- A399542: Array read by ascending antidiagonals: A(n,k) = n*k*(n^2 - k^2)/6, with n, k >= 0.

Offset 0, canonical program `A399542.P9741589405166616267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399542 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399542.P9741589405166616267.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399560.P3438043881530279004

`2^(n-1)*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399560.P3438043881530279004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + a (n - 2) + a (n - 3)

end

end A399560.P3438043881530279004

noncomputable section

/-- A399560: G.f. A(x) satisfies: A(x) = (1 - 2*x^2 + x*A(2*x)) / (1 - x^2 - x^3).

Offset 0, canonical program `A399560.P3438043881530279004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399560 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399560.P3438043881530279004.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399561.P13876457118130922269

`a(n-1)+2^(n-2)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399561.P13876457118130922269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * a (n - 2) + a (n - 3)

end

end A399561.P13876457118130922269

noncomputable section

/-- A399561: G.f. A(x) satisfies: A(x) = (1 - x^2 + x^2 * A(2*x)) / (1 - x - x^3).

Offset 0, canonical program `A399561.P13876457118130922269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399561.P13876457118130922269.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399562.P7116375726050139193

`a(n-1)+a(n-2)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399562.P7116375726050139193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * a (n - 3)

end

end A399562.P7116375726050139193

noncomputable section

/-- A399562: G.f. A(x) satisfies: A(x) = (1 - x^2 + x^3 * A(2*x)) / (1 - x - x^2).

Offset 0, canonical program `A399562.P7116375726050139193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399562.P7116375726050139193.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399564.P8159499002176019174

`ogf((10-4x)/(1-5x+x^2))`
-/

namespace A399564.P8159499002176019174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -4] [1, -5, 1] n

end

end A399564.P8159499002176019174

noncomputable section

/-- A399564: Number of perfect matchings of the 3 X 2n grid graph embedded on the Klein bottle.

Offset 1, canonical program `A399564.P8159499002176019174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399564 (n : ℕ) : ℤ :=
  A399564.P8159499002176019174.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399615.P14147135890609384364

`2^(2^(n+1)-2*(n+1)-1)+2^(2^n-(n+1)-1)`
-/

namespace A399615.P14147135890609384364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ (n + 1) : ℤ) - (2 * (n + 1) : ℤ) - 1 : ℤ) + (2 : ℚ) ^ ((2 ^ n : ℤ) - (n + 1 : ℤ) - 1 : ℤ)

end

end A399615.P14147135890609384364

noncomputable section

/-- A399615: Number of non-isomorphic perfect hierarchical matching (PHM) trees on 2^n vertices.

Offset 1, canonical program `A399615.P14147135890609384364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399615.P14147135890609384364.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399619.P17223841901192138433

`(2^(n+1)-1)^(n+1)-(2^(n+1)-2)^(n+1)`
-/

namespace A399619.P17223841901192138433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1) - ((2 ^ (n + 1) : ℤ) - 2) ^ (n + 1)

end

end A399619.P17223841901192138433

noncomputable section

/-- A399619: Number of ordered n-edge multihypergraphs on n labeled vertices with no isolated vertex and with at least one vertex contained in every edge.

Offset 1, canonical program `A399619.P17223841901192138433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399619 (n : ℕ) : ℤ :=
  A399619.P17223841901192138433.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399641.P6054218575875225660

`∑{#}[n, 2^#*C(#+2, 2)*C(3*n+4, n-#)]`
-/

namespace A399641.P6054218575875225660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (k + 2) 2 * Nat.choose (3 * n + 4) ((n : ℤ) - (k : ℤ)).toNat

end

end A399641.P6054218575875225660

noncomputable section

/-- A399641: Expansion of g^5/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A399641.P6054218575875225660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399641 (n : ℕ) : ℤ :=
  (A399641.P6054218575875225660.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399642.P1896916165972826017

`∑{#}[n, 3^#*C(#+2, 2)*C(4*n+5, n-#)]`
-/

namespace A399642.P1896916165972826017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (k + 2) 2 * Nat.choose (4 * n + 5) ((n : ℤ) - (k : ℤ)).toNat

end

end A399642.P1896916165972826017

noncomputable section

/-- A399642: Expansion of g^6/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

Offset 0, canonical program `A399642.P1896916165972826017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399642 (n : ℕ) : ℤ :=
  (A399642.P1896916165972826017.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399643.P4450374185087043687

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+6, n-#)]`
-/

namespace A399643.P4450374185087043687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (k + 2) 2 * Nat.choose (5 * n + 6) ((n : ℤ) - (k : ℤ)).toNat

end

end A399643.P4450374185087043687

noncomputable section

/-- A399643: Expansion of g^7/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

Offset 0, canonical program `A399643.P4450374185087043687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399643 (n : ℕ) : ℤ :=
  (A399643.P4450374185087043687.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399644.P5474004107521447092

`∑{#}[n, 5^#*C(#+2, 2)*C(6*n+7, n-#)]`
-/

namespace A399644.P5474004107521447092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 5 ^ k * Nat.choose (k + 2) 2 * Nat.choose (6 * n + 7) ((n : ℤ) - (k : ℤ)).toNat

end

end A399644.P5474004107521447092

noncomputable section

/-- A399644: Expansion of g^8/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

Offset 0, canonical program `A399644.P5474004107521447092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399644 (n : ℕ) : ℤ :=
  (A399644.P5474004107521447092.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399645.P10912571114058594174

`∑{#}[n, 6^#*C(#+2, 2)*C(7*n+8, n-#)]`
-/

namespace A399645.P10912571114058594174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 6 ^ k * Nat.choose (k + 2) 2 * Nat.choose (7 * n + 8) ((n : ℤ) - (k : ℤ)).toNat

end

end A399645.P10912571114058594174

noncomputable section

/-- A399645: Expansion of g^9/(7-6*g)^4, where g = 1+x*g^7 is the g.f. of A002296.

Offset 0, canonical program `A399645.P10912571114058594174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399645 (n : ℕ) : ℤ :=
  (A399645.P10912571114058594174.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399934.P14325894849498318737

`ogf((6+2x+x^2-3x^3)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A399934.P14325894849498318737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, 1, -3] [1, -2, 1, -1, 2, -1] n

end

end A399934.P14325894849498318737

noncomputable section

/-- A399934: Six times the maximum area of the convex hull of a polyhex with n cells, where each hexagonal cell has area 1.

Offset 1, canonical program `A399934.P14325894849498318737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399934 (n : ℕ) : ℤ :=
  A399934.P14325894849498318737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399998.P756939935722183912

`a(n-1-a(a(n-1))²)+1` with `a(0)=0`
-/

namespace A399998.P756939935722183912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - 1 - (a (a (n - 1)) ^ 2 : ℤ)).toNat + 1

end

end A399998.P756939935722183912

noncomputable section

/-- A399998: a(n+1) = a(n-a(a(n))^2) + 1, a(0) = 0.

Offset 0, canonical program `A399998.P756939935722183912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399998 (n : ℕ) : ℤ :=
  (A399998.P756939935722183912.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400126.P6385519365283133117

`ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9)/(1-x-9x^9+9x^10-10x^18+10x^19))`
-/

namespace A400126.P6385519365283133117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 1, 1, 1, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -9, 9, 0, 0, 0, 0, 0, 0, 0, -10, 10] n

end

end A400126.P6385519365283133117

noncomputable section

/-- A400126: Nonnegative integers such that every adjacent pair of digits sums to exactly 9.

Offset 1, canonical program `A400126.P6385519365283133117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400126 (n : ℕ) : ℤ :=
  A400126.P6385519365283133117.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400150.P11417170207411611835

`abs(2*a(n-1)-a(n-2)-2)` with `a(0)=0, a(1)=1`
-/

namespace A400150.P11417170207411611835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |2 * a (n - 1) - a (n - 2) - 2|

end

end A400150.P11417170207411611835

noncomputable section

/-- A400150: a(n) = |2*a(n-1) - a(n-2) - 2|, with a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A400150.P11417170207411611835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400150 (n : ℕ) : ℤ :=
  A400150.P11417170207411611835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400197.P16747218055785228810

`ogf((x-x^2+x^3+2x^4-x^5)/(1-3x+3x^2-x^3))`
-/

namespace A400197.P16747218055785228810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1, 2, -1] [1, -3, 3, -1] n

end

end A400197.P16747218055785228810

noncomputable section

/-- A400197: The union of the squares (A000290) and the integer 2.

Offset 0, canonical program `A400197.P16747218055785228810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400197 (n : ℕ) : ℤ :=
  A400197.P16747218055785228810.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400221.P8547259443277624216

`(n+1)^3*(5*n+1)`
-/

namespace A400221.P8547259443277624216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 * (5 * n + 1)

end

end A400221.P8547259443277624216

noncomputable section

/-- A400221: Number of divisors of 3360^n.

Offset 0, canonical program `A400221.P8547259443277624216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400221 (n : ℕ) : ℤ :=
  (A400221.P8547259443277624216.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400232.P17183186116095233365

`6*(n+1)²+2-n^3`
-/

namespace A400232.P17183186116095233365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) ^ 2 + 2 : ℤ) - (n ^ 3 : ℤ)

end

end A400232.P17183186116095233365

noncomputable section

/-- A400232: a(n) is the number of boundary lattice points minus the number of interior lattice points of the cube [0,n] X [0,n] X [0,n].

Offset 1, canonical program `A400232.P17183186116095233365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400232 (n : ℕ) : ℤ :=
  A400232.P17183186116095233365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400233.P10225734584980570909

`(n+2)^4-2*n^4`
-/

namespace A400233.P10225734584980570909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - (2 * n ^ 4 : ℤ)

end

end A400233.P10225734584980570909

noncomputable section

/-- A400233: a(n) is the number of boundary lattice points minus the number of interior lattice points of the 4-dimensional cube [0,n]^4.

Offset 1, canonical program `A400233.P10225734584980570909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400233 (n : ℕ) : ℤ :=
  A400233.P10225734584980570909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400235.P11496997856780978715

`4*(n+1)²+2-n²*(n-1)/2`
-/

namespace A400235.P11496997856780978715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) ^ 2 + 2 : ℚ) - ((n ^ 2 : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A400235.P11496997856780978715

noncomputable section

/-- A400235: a(n) is the number of boundary lattice points minus the number of interior lattice points of the prism with vertices (0,0,0), (n,0,0), (0,n,0), (0,0,n), (n,0,n) and (0,n,n).

Offset 1, canonical program `A400235.P11496997856780978715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400235.P11496997856780978715.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400445.P7356954288380415145

`(n-1)/(n+1)*(2*a(n-1)+15*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A400445.P7356954288380415145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ) * (2 * a (n - 1) + 15 * a (n - 2))

end

end A400445.P7356954288380415145

noncomputable section

/-- A400445: a(n) = (n-1)*(2*a(n-1) + 15*a(n-2))/(n+1) with a(0)=1, a(1)=0.

Offset 0, canonical program `A400445.P7356954288380415145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400445.P7356954288380415145.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400507.P8321498115917005294

`(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400507.P8321498115917005294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 3) ^ SequenceMachineLib.triCol n

end

end A400507.P8321498115917005294

noncomputable section

/-- A400507: Square array A(n,k) = k*(k+2)^(n-1), n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A400507.P8321498115917005294`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)` (program `A400507.P8321498115917005294`, by `A400507.P8321498115917005294.correct`). Lean does not check the parsing of the name. -/
def A400507 (n : ℕ) : ℤ :=
  A400507.P8321498115917005294.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)` (program `A400507.P8321498115917005294`, by `A400507.P8321498115917005294.correct`). Lean does not check the parsing of the name. -/
def A400507.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400537.P12261565336202433379

`ogf((1+28x+102x^2+60x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A400537.P12261565336202433379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 102, 60, 1] [1, -5, 10, -10, 5, -1] n

end

end A400537.P12261565336202433379

noncomputable section

/-- A400537: Number of lattice points of the 24-cell whose vertices are the permutations of (+-n, +-n, 0, 0).

Offset 0, canonical program `A400537.P12261565336202433379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400537 (n : ℕ) : ℤ :=
  A400537.P12261565336202433379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400538.P9723494666094230779

`ogf((1+95x+231x^2+41x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400538.P9723494666094230779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 95, 231, 41] [1, -4, 6, -4, 1] n

end

end A400538.P9723494666094230779

noncomputable section

/-- A400538: Number of lattice points of the truncated tetrahedron whose vertices are the permutations of (+-n, +-n, +-3n) with an even number of minus signs.

Offset 0, canonical program `A400538.P9723494666094230779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400538 (n : ℕ) : ℤ :=
  A400538.P9723494666094230779.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400539.P8976220556064503326

`ogf((1+127x+367x^2+81x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400539.P8976220556064503326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 127, 367, 81] [1, -4, 6, -4, 1] n

end

end A400539.P8976220556064503326

noncomputable section

/-- A400539: Number of lattice points of the tetrakis hexahedron whose vertices are (+-3n,0,0), (0,+-3n,0), (0,0,+-3n) and (+-2n,+-2n,+-2n).

Offset 0, canonical program `A400539.P8976220556064503326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400539 (n : ℕ) : ℤ :=
  A400539.P8976220556064503326.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400561.P7401441228568277259

`2*(C(n+2, 2)+C(n+2, 4))`
-/

namespace A400561.P7401441228568277259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (n + 2) 2 + Nat.choose (n + 2) 4)

end

end A400561.P7401441228568277259

noncomputable section

/-- A400561: a(n) is the maximum numbers of regions (both closed or open) outside a strictly convex n-polygon, delimited by the n edges and the n*(n-3)/2 diagonals of the polygon itself, where all these elements (edges and diagonals) are extended to infinity as straight lines.

Offset 2, canonical program `A400561.P7401441228568277259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400561 (n : ℕ) : ℤ :=
  (A400561.P7401441228568277259.a (n - 2) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400576.P7057297574492566454

`1/(n+1)*∑{#}[n, C(n+1+#-1, #)*C((n+1)², n+1-#-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400576.P7057297574492566454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose ((n + 1 + k : ℤ) - 1).toNat k * Nat.choose ((n + 1) ^ 2) ((n + 1 : ℤ) - (k : ℤ) - 1).toNat : ℕ) : ℚ)

end

end A400576.P7057297574492566454

noncomputable section

/-- A400576: a(n) = (1/n) * Sum_{k=0..n-1} binomial(n+k-1,k) * binomial(n^2,n-k-1).

Offset 1, canonical program `A400576.P7057297574492566454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400576 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400576.P7057297574492566454.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400618.P12185814811426389803

`4*n*(n*(4*n+6)+5)/3+1`
-/

namespace A400618.P12185814811426389803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n * (n * (4 * n + 6) + 5) : ℚ) / 3 + 1

end

end A400618.P12185814811426389803

noncomputable section

/-- A400618: Sum of the distinct entries in the central row and central column of the (2*n + 1) X (2*n + 1) square spiral.

Offset 0, canonical program `A400618.P12185814811426389803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400618 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400618.P12185814811426389803.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400630.P15238254531042592611

`floor((n+5)²/2)-10`
-/

namespace A400630.P15238254531042592611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 5) ^ 2 : ℚ) / 2⌋ - 10

end

end A400630.P15238254531042592611

noncomputable section

/-- A400630: Number of semi-meanders with n crossings and winding number n-4, for n >= 4.

Offset 4, canonical program `A400630.P15238254531042592611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400630 (n : ℕ) : ℤ :=
  A400630.P15238254531042592611.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400664.P17659407087172067860

`(n+1)*(∑{#}[n+1, C(n+1, #)²*2^#]-1)/2`
-/

namespace A400664.P17659407087172067860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) k ^ 2 * 2 ^ k : ℕ) : ℤ) - 1) : ℚ) / 2

end

end A400664.P17659407087172067860

noncomputable section

/-- A400664: Expansion of g.f. ((3 - z)/(z^2 - 6*z + 1)^(3/2) - 1/(z - 1)^2) / 2.

Offset 0, canonical program `A400664.P17659407087172067860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400664.P17659407087172067860.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400699.P5324175900768312914

`ogf((3+x+2x^2-3x^3+5x^4-2x^5)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A400699.P5324175900768312914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 2, -3, 5, -2] [1, -2, 1, -1, 2, -1] n

end

end A400699.P5324175900768312914

noncomputable section

/-- A400699: Start with a set of three adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

Offset 0, canonical program `A400699.P5324175900768312914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400699 (n : ℕ) : ℤ :=
  A400699.P5324175900768312914.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400700.P1160826016266712974

`ogf((4+2x+2x^2-4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A400700.P1160826016266712974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 2, -4, 2] [1, -2, 1, -1, 2, -1] n

end

end A400700.P1160826016266712974

noncomputable section

/-- A400700: Start with a set of four adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

Offset 0, canonical program `A400700.P1160826016266712974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400700 (n : ℕ) : ℤ :=
  A400700.P1160826016266712974.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400701.P3330372214790239244

`ogf((5+3x+2x^2-5x^3+x^4-2x^5+2x^6)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A400701.P3330372214790239244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 2, -5, 1, -2, 2] [1, -2, 1, -1, 2, -1] n

end

end A400701.P3330372214790239244

noncomputable section

/-- A400701: Start with a set of five adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

Offset 0, canonical program `A400701.P3330372214790239244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400701 (n : ℕ) : ℤ :=
  A400701.P3330372214790239244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400753.P10274350832908785409

`ogf((1-6x+9x^2)/(1-10x+27x^2-27x^3))`
-/

namespace A400753.P10274350832908785409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 9] [1, -10, 27, -27] n

end

end A400753.P10274350832908785409

noncomputable section

/-- A400753: Row sums of the Riordan array (1/(1-3*x), x/(1-3*x)^3).

Offset 0, canonical program `A400753.P10274350832908785409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400753 (n : ℕ) : ℤ :=
  A400753.P10274350832908785409.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400754.P4279432807320805709

`ogf((1-3x)/(1-10x+27x^2-27x^3))`
-/

namespace A400754.P4279432807320805709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -10, 27, -27] n

end

end A400754.P4279432807320805709

noncomputable section

/-- A400754: Row sums of the Riordan array (1/(1-3*x)^2, x/(1-3*x)^3).

Offset 0, canonical program `A400754.P4279432807320805709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400754 (n : ℕ) : ℤ :=
  A400754.P4279432807320805709.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400796.P792017740949119045

`ogf((x-2x^2+2x^3+2x^4-2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A400796.P792017740949119045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2, 2, -2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A400796.P792017740949119045

noncomputable section

/-- A400796: a(n) = (n^2 + 4*Legendre(n,5))/5.

Offset 0, canonical program `A400796.P792017740949119045`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400796 (n : ℕ) : ℤ :=
  A400796.P792017740949119045.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400810.P4336047378170428460

`ogf((1+4x+x^2)/(1-3x-15x^2-x^3))`
-/

namespace A400810.P4336047378170428460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, -15, -1] n

end

end A400810.P4336047378170428460

noncomputable section

/-- A400810: Size of Type C megastars of star triples in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A400810.P4336047378170428460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400810 (n : ℕ) : ℤ :=
  A400810.P4336047378170428460.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400811.P8729234673321828537

`ogf((2+4x)/(1-3x-15x^2-x^3))`
-/

namespace A400811.P8729234673321828537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4] [1, -3, -15, -1] n

end

end A400811.P8729234673321828537

noncomputable section

/-- A400811: Size of Type A palindromes of star triples in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A400811.P8729234673321828537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400811 (n : ℕ) : ℤ :=
  A400811.P8729234673321828537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400941.P3048978257207949309

`2*C(2*n, n)-n²-1`
-/

namespace A400941.P3048978257207949309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) n : ℤ) - (n ^ 2 : ℤ) - 1

end

end A400941.P3048978257207949309

noncomputable section

/-- A400941: The number of order-preserving or reversing partial permutations of an n-element set.

Offset 0, canonical program `A400941.P3048978257207949309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400941 (n : ℕ) : ℤ :=
  A400941.P3048978257207949309.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400967.P16530172883198578615

`ogf((4-7x+4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400967.P16530172883198578615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, 4, -3] [1, -4, 6, -4, 1] n

end

end A400967.P16530172883198578615

noncomputable section

/-- A400967: a(n) is the number of boundary lattice points minus the number of interior lattice points of the regular tetrahedron with vertices (0,0,0), (n,n,0), (n,0,n) and (0,n,n).

Offset 1, canonical program `A400967.P16530172883198578615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400967 (n : ℕ) : ℤ :=
  A400967.P16530172883198578615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400968.P10195912970142873605

`ogf((5-9x-x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400968.P10195912970142873605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -9, -1, -3] [1, -4, 6, -4, 1] n

end

end A400968.P10195912970142873605

noncomputable section

/-- A400968: a(n) is the number of boundary lattice points minus the number of interior lattice points of the octahedron |x| + |y| + |z| <= n.

Offset 1, canonical program `A400968.P10195912970142873605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400968 (n : ℕ) : ℤ :=
  A400968.P10195912970142873605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400996.P805758818463875474

`ogf((1-5x+5x^2)/(1-6x+8x^2-2x^3))`
-/

namespace A400996.P805758818463875474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 5] [1, -6, 8, -2] n

end

end A400996.P805758818463875474

noncomputable section

/-- A400996: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 231, 321}.

Offset 0, canonical program `A400996.P805758818463875474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400996 (n : ℕ) : ℤ :=
  A400996.P805758818463875474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401015.P7410585718763402089

`1+((n^3+2*n)/3-1)%9`
-/

namespace A401015.P7410585718763402089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (SequenceMachineLib.roundAway ((n ^ 3 + 2 * n : ℚ) / 3 - 1)) 9

end

end A401015.P7410585718763402089

noncomputable section

/-- A401015: Digital roots of A006527(n), the number of unit tetrahedra in a regular tetrahedron subdivided into a tetrahedral-octahedral lattice.

Offset 0, canonical program `A401015.P7410585718763402089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401015 (n : ℕ) : ℤ :=
  A401015.P7410585718763402089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401016.P10902171059879580111

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4`
-/

namespace A401016.P10902171059879580111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4] fun n a =>
  a (n - 4)

end

end A401016.P10902171059879580111

noncomputable section

/-- A401016: Period 4: repeat [1, 3, 2, 4].

Offset 0, canonical program `A401016.P10902171059879580111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401016 (n : ℕ) : ℤ :=
  (A401016.P10902171059879580111.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401073.P2485690032411973571

`(3^n-2^(n+1)+1)*(2*4^n-3*3^n+1)/2`
-/

namespace A401073.P2485690032411973571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 1) * ((2 * 4 ^ n : ℤ) - (3 * 3 ^ n : ℤ) + 1) : ℚ) / 2

end

end A401073.P2485690032411973571

noncomputable section

/-- A401073: Number of n X n (0,1)-matrices of rank 2 over the real numbers.

Offset 0, canonical program `A401073.P2485690032411973571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401073 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401073.P2485690032411973571.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401128.P13691097860066135088

`(n+1)!*C((n+2)²-2, n)`
-/

namespace A401128.P13691097860066135088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (((n + 2) ^ 2 : ℤ) - 2).toNat n

end

end A401128.P13691097860066135088

noncomputable section

/-- A401128: Number of ways to give each of n cars an ordered pair of (not necessarily distinct) spots in [n] so that all cars park, where each car in turn takes its first choice if free, else its second choice if free, else the first free spot after its second choice.

Offset 1, canonical program `A401128.P13691097860066135088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401128 (n : ℕ) : ℤ :=
  (A401128.P13691097860066135088.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401139.P12278537050696209364

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=4, a(4)=3, a(5)=2`
-/

namespace A401139.P12278537050696209364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 5, 4, 3, 2] fun n a =>
  a (n - 6)

end

end A401139.P12278537050696209364

noncomputable section

/-- A401139: Period 6: repeat [1, 6, 5, 4, 3, 2].

Offset 0, canonical program `A401139.P12278537050696209364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401139 (n : ℕ) : ℤ :=
  (A401139.P12278537050696209364.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401186.P18360977751011296750

`∑{#}[n, C(n, #)*(2^#-1)^(n-#)*2^C(n-#, 2)]`
-/

namespace A401186.P18360977751011296750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * ((2 ^ k : ℤ) - 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (2 ^ Nat.choose ((n : ℤ) - (k : ℤ)).toNat 2 : ℚ)

end

end A401186.P18360977751011296750

noncomputable section

/-- A401186: Total number of maximal independent vertex sets in all labeled graphs on n vertices.

Offset 0, canonical program `A401186.P18360977751011296750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401186.P18360977751011296750.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401213.P15491154047137647949

`∑{#}[n-1, C(n+1, #+2)*(#+2)!*2^(C(n+1, 2)-(#+2))]`
-/

namespace A401213.P15491154047137647949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (n + 1) (k + 2) * Nat.factorial (k + 2) : ℚ) * (2 : ℚ) ^ ((Nat.choose (n + 1) 2 : ℤ) - (k + 2 : ℤ) : ℤ)

end

end A401213.P15491154047137647949

noncomputable section

/-- A401213: Total number of undirected paths in all labeled graphs on n vertices, singleton paths excluded.

Offset 1, canonical program `A401213.P15491154047137647949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401213 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401213.P15491154047137647949.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398047.P7031273343828796923

`ceil(∑[n/4]+n²)`
-/

namespace A398047.P7031273343828796923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌉

end

end A398047.P7031273343828796923

noncomputable section

/-- A398047: Upper (1/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398047.P7031273343828796923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398047 (n : ℕ) : ℤ :=
  A398047.P7031273343828796923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398048.P2747850737111379664

`floor(3/4*∑[n])+n²`
-/

namespace A398048.P2747850737111379664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + (n ^ 2 : ℤ)

end

end A398048.P2747850737111379664

noncomputable section

/-- A398048: Lower (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398048.P2747850737111379664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398048 (n : ℕ) : ℤ :=
  A398048.P2747850737111379664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398049.P5737372841266844217

`n²-floor(∑[n/4-n])`
-/

namespace A398049.P5737372841266844217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398049.P5737372841266844217

noncomputable section

/-- A398049: Upper (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398049.P5737372841266844217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398049 (n : ℕ) : ℤ :=
  A398049.P5737372841266844217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398654.P4516380628963884274

`floor(2*(∑[∑[n+1]]-n)/3)`
-/

namespace A398654.P4516380628963884274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) : ℚ) / 3⌋

end

end A398654.P4516380628963884274

noncomputable section

/-- A398654: Upper (1, 1/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398654.P4516380628963884274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398654 (n : ℕ) : ℤ :=
  A398654.P4516380628963884274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398657.P14142516386804073530

`floor((3/2+n)*∑[n])`
-/

namespace A398657.P14142516386804073530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A398657.P14142516386804073530

noncomputable section

/-- A398657: Lower (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398657.P14142516386804073530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398657 (n : ℕ) : ℤ :=
  A398657.P14142516386804073530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398658.P7109608082969465480

`∑[∑[∑[6-a(n-2)]]]` with `a(0)=0, a(1)=3, a(2)=2`
-/

namespace A398658.P7109608082969465480
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2] fun n f3 =>
  6 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398658.P7109608082969465480

noncomputable section

/-- A398658: Upper (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398658.P7109608082969465480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398658 (n : ℕ) : ℤ :=
  A398658.P7109608082969465480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398659.P14837806975831065424

`floor(∑[n*(n/5+n+1)])`
-/

namespace A398659.P14837806975831065424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) / 5 + (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398659.P14837806975831065424

noncomputable section

/-- A398659: Lower (1, 6/5) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398659.P14837806975831065424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398659 (n : ℕ) : ℤ :=
  A398659.P14837806975831065424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398671.P16553492494587973019

`∑[∏{p}[n+1, and(2, #)/2]]`
-/

namespace A398671.P16553492494587973019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.land 2 p : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P16553492494587973019

noncomputable section

/-- A398671: a(n) is the number of positive integers <= n with no prime factors of form 4*k+1.

Offset 1, canonical program `A398671.P16553492494587973019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398671.P16553492494587973019.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398729.P3114746797043780686

`floor(∑[n²/2-n])`
-/

namespace A398729.P3114746797043780686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398729.P3114746797043780686

noncomputable section

/-- A398729: Lower (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398729.P3114746797043780686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398729 (n : ℕ) : ℤ :=
  A398729.P3114746797043780686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398850.P9752319019850853025

`floor(n*(n-5/3)/4)`
-/

namespace A398850.P9752319019850853025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n : ℚ) - (5 : ℚ) / 3) / 4⌋

end

end A398850.P9752319019850853025

noncomputable section

/-- A398850: Lower (-1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398850.P9752319019850853025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398850 (n : ℕ) : ℤ :=
  A398850.P9752319019850853025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398933.P3581238121888898672

`∑[∑[xor(2, a(n-3))]]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A398933.P3581238121888898672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n f2 =>
  Nat.xor 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P3581238121888898672

noncomputable section

/-- A398933: Partial sums of A398929.

Offset 1, canonical program `A398933.P3581238121888898672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398933 (n : ℕ) : ℤ :=
  (A398933.P3581238121888898672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399025.P5372413828234583892

`∑[∑[ceil((n/2)²)]]`
-/

namespace A399025.P5372413828234583892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399025.P5372413828234583892

noncomputable section

/-- A399025: a(n) is the number of inequivalent ways of choosing 4 points on an n X n grid that form a square up to rotations.

Offset 1, canonical program `A399025.P5372413828234583892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399025 (n : ℕ) : ℤ :=
  A399025.P5372413828234583892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399581.P14488087694834106052

`floor((n+1)/(7*log(2)*(ceil((n+1)*log2(7))-(n+1)*log2(7))))`
-/

namespace A399581.P14488087694834106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (7 * Real.log (2 : ℝ) * ((⌈(n + 1 : ℝ) * Real.logb 2 (7 : ℝ)⌉ : ℝ) - (n + 1 : ℝ) * Real.logb 2 (7 : ℝ)))⌋

end

end A399581.P14488087694834106052

noncomputable section

/-- A399581: Upper bound for the smallest term of a cycle of the 7x+1 map with n odd terms: a(n) = floor(n/(7*log(2)*(ceiling(n*log_2(7)) - n*log_2(7)))).

Offset 1, canonical program `A399581.P14488087694834106052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399581 (n : ℕ) : ℤ :=
  A399581.P14488087694834106052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401030.P17939284489485883793

`1-T(n-1,k)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A401030.P17939284489485883793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triUp a n * SequenceMachineLib.triUpLeft a n

end

end A401030.P17939284489485883793

noncomputable section

/-- A401030: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = NAND(T(n-1,k-1), T(n-1,k)) for 0 < k < n, where NAND is the Boolean logic gate.

Offset 0, canonical program `A401030.P17939284489485883793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401030 (n : ℕ) : ℤ :=
  A401030.P17939284489485883793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401100.P2223803039464972030

`a(n-1)+floor(a(n-1)+(a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A401100.P2223803039464972030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋

end

end A401100.P2223803039464972030

noncomputable section

/-- A401100: a(0) = 1, thereafter a(n+1) = ceiling(5*a(n)/2).

Offset 0, canonical program `A401100.P2223803039464972030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A401100 (n : ℕ) : ℤ :=
  A401100.P2223803039464972030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A401100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401422.P13323872969237740988

`∏{e}[n+1, val(#, 2)+2]`
-/

namespace A401422.P13323872969237740988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2 + 2)

end

end A401422.P13323872969237740988

noncomputable section

/-- A401422: The number of terms in A138302 that divide the smallest coreful infinitary divisor of n.

Offset 1, canonical program `A401422.P13323872969237740988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401422 (n : ℕ) : ℤ :=
  (A401422.P13323872969237740988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401423.P8069109336457977879

`∏{e}[n+1, and(#, -#)]`
-/

namespace A401423.P8069109336457977879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land (Nat.factorization (f1 n) p : ℤ) (-(Nat.factorization (f1 n) p : ℤ))

end

end A401423.P8069109336457977879

noncomputable section

/-- A401423: The number of coreful divisors of the smallest coreful infinitary divisor of n.

Offset 1, canonical program `A401423.P8069109336457977879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401423 (n : ℕ) : ℤ :=
  A401423.P8069109336457977879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401423.provenance : SequenceMachineLib.Provenance := .conjectured

