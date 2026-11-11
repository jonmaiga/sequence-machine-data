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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A002088.P11293466613211840242

`a(n-1)+A000010(n)` with `a(0)=0`
-/

namespace A002088.P11293466613211840242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000010 n

end

end A002088.P11293466613211840242

noncomputable section

/-- A002088: Sum of totient function: a(n) = Sum_{k=1..n} phi(k), cf. A000010.

Offset 0, canonical program `A002088.P11293466613211840242`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002088.anchor (n : ℕ) : A002088 n = ∑ k ∈ Finset.Icc 1 n, (Nat.totient k : ℤ)` in `Proof.A002.A002088`. -/
def A002088 (n : ℕ) : ℤ :=
  A002088.P11293466613211840242.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002088.anchor (n : ℕ) : A002088 n = ∑ k ∈ Finset.Icc 1 n, (Nat.totient k : ℤ)` in `Proof.A002.A002088`. -/
def A002088.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002618.P8397693677428532773

`(n+1)*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002618.P8397693677428532773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1)

end

end A002618.P8397693677428532773

noncomputable section

/-- A002618: a(n) = n*phi(n).

Offset 1, canonical program `A002618.P8397693677428532773`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)` (program `A002618.P8397693677428532773`, by `A002618.P8397693677428532773.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002618 (n : ℕ) : ℤ :=
  A002618.P8397693677428532773.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)` (program `A002618.P8397693677428532773`, by `A002618.P8397693677428532773.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A002618.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A005598.P8086514726448822915

`1+∑{#}[n-1, (n-(#+1)+1)*A000010(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005598.P8086514726448822915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (k + 1 : ℤ) + 1) * A000010 (k + 1)

end

end A005598.P8086514726448822915

noncomputable section

/-- A005598: a(n) = 1 + Sum_{i=1..n} (n-i+1)*phi(i).

Offset 0, canonical program `A005598.P8086514726448822915`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+∑{#}[n-1, (n-(#+1)+1)*A000010(#+1)]` (program `A005598.P8086514726448822915`, by `A005598.P8086514726448822915.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005598 (n : ℕ) : ℤ :=
  A005598.P8086514726448822915.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+∑{#}[n-1, (n-(#+1)+1)*A000010(#+1)]` (program `A005598.P8086514726448822915`, by `A005598.P8086514726448822915.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A005598.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007431.P16508403139497409065

`∑{d}[n, A000010(#)*A008683(n/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007431.P16508403139497409065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A008683 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat

end

end A007431.P16508403139497409065

noncomputable section

/-- A007431: a(n) = Sum_{d|n} phi(d)*mu(n/d).

Offset 0, canonical program `A007431.P16508403139497409065`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(#)*A008683(n/#)]` (program `A007431.P16508403139497409065`, by `A007431.P16508403139497409065.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007431 (n : ℕ) : ℤ :=
  A007431.P16508403139497409065.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(#)*A008683(n/#)]` (program `A007431.P16508403139497409065`, by `A007431.P16508403139497409065.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007431.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A007517.P15231311022357601297

`A000010(n+1)*(A000203(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007517.P15231311022357601297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (A000203 (n + 1) - (n + 1 : ℤ))

end

end A007517.P15231311022357601297

noncomputable section

/-- A007517: a(n) = phi(n) * (sigma(n) - n).

Offset 1, canonical program `A007517.P15231311022357601297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-(n+1))` (program `A007517.P15231311022357601297`, by `A007517.P15231311022357601297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007517 (n : ℕ) : ℤ :=
  A007517.P15231311022357601297.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-(n+1))` (program `A007517.P15231311022357601297`, by `A007517.P15231311022357601297.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A007517.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A008331.P11072503797974793280

`A000010(A000040(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008331.P11072503797974793280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1) + 1).toNat

end

end A008331.P11072503797974793280

noncomputable section

/-- A008331: a(n) = phi(prime(n)+1).

Offset 1, canonical program `A008331.P11072503797974793280`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000040(n+1)+1)` (program `A008331.P11072503797974793280`, by `A008331.P11072503797974793280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008331 (n : ℕ) : ℤ :=
  A008331.P11072503797974793280.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000040(n+1)+1)` (program `A008331.P11072503797974793280`, by `A008331.P11072503797974793280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A008331.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A009195.P8643188117801140969

`gcd(n+1, A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A009195.P8643188117801140969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1))

end

end A009195.P8643188117801140969

noncomputable section

/-- A009195: a(n) = gcd(n, phi(n)).

Offset 1, canonical program `A009195.P8643188117801140969`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A000010(n+1))` (program `A009195.P8643188117801140969`, by `A009195.P8643188117801140969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009195 (n : ℕ) : ℤ :=
  (A009195.P8643188117801140969.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A000010(n+1))` (program `A009195.P8643188117801140969`, by `A009195.P8643188117801140969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009195.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A009223.P16138447125390320102

`gcd(A000203(n+1), A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A009223.P16138447125390320102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A000010 (n + 1))

end

end A009223.P16138447125390320102

noncomputable section

/-- A009223: a(n) = gcd(sigma(n), phi(n)).

Offset 1, canonical program `A009223.P16138447125390320102`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A000010(n+1))` (program `A009223.P16138447125390320102`, by `A009223.P16138447125390320102.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009223 (n : ℕ) : ℤ :=
  (A009223.P16138447125390320102.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A000010(n+1))` (program `A009223.P16138447125390320102`, by `A009223.P16138447125390320102.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009223.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A009262.P15876951147902980395

`lcm(n+1, A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A009262.P15876951147902980395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000010 (n + 1))

end

end A009262.P15876951147902980395

noncomputable section

/-- A009262: a(n) = lcm(n, phi(n)).

Offset 1, canonical program `A009262.P15876951147902980395`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, A000010(n+1))` (program `A009262.P15876951147902980395`, by `A009262.P15876951147902980395.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009262 (n : ℕ) : ℤ :=
  (A009262.P15876951147902980395.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, A000010(n+1))` (program `A009262.P15876951147902980395`, by `A009262.P15876951147902980395.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009262.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A009286.P14437481793621511918

`lcm(A000203(n+1), A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A009286.P14437481793621511918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A000010 (n + 1))

end

end A009286.P14437481793621511918

noncomputable section

/-- A009286: a(n) = lcm(sigma(n), phi(n)).

Offset 1, canonical program `A009286.P14437481793621511918`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A000203(n+1), A000010(n+1))` (program `A009286.P14437481793621511918`, by `A009286.P14437481793621511918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009286 (n : ℕ) : ℤ :=
  (A009286.P14437481793621511918.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A000203(n+1), A000010(n+1))` (program `A009286.P14437481793621511918`, by `A009286.P14437481793621511918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A009286.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A010554.P11993721654035451912

`A000010(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010554.P11993721654035451912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

end

end A010554.P11993721654035451912

noncomputable section

/-- A010554: a(n) = phi(phi(n)), where phi is the Euler totient function.

Offset 1, canonical program `A010554.P11993721654035451912`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000010(n+1))` (program `A010554.P11993721654035451912`, by `A010554.P11993721654035451912.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A010554 (n : ℕ) : ℤ :=
  A010554.P11993721654035451912.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000010(n+1))` (program `A010554.P11993721654035451912`, by `A010554.P11993721654035451912.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A010554.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A015613.P4604134795489187237

`∑{#}[n, A000010(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A015613.P4604134795489187237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000010 (k + 1) * (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A015613.P4604134795489187237

noncomputable section

/-- A015613: a(n) = Sum_{i=1..n} phi(i) * (ceiling(n/i) - floor(n/i)).

Offset 1, canonical program `A015613.P4604134795489187237`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` (program `A015613.P4604134795489187237`, by `A015613.P4604134795489187237.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A015613 (n : ℕ) : ℤ :=
  A015613.P4604134795489187237.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` (program `A015613.P4604134795489187237`, by `A015613.P4604134795489187237.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A015613.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A026430.P14890685957938381463

`floor((A000069(n+1)+n)/2)`
-/

namespace A026430.P14890685957938381463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000069 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A026430.P14890685957938381463

noncomputable section

/-- A026430: a(n) is the sum of first n terms of A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026430.P14890685957938381463`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A026430.anchor (n : ℕ) : A026430 n = ((∑ i ∈ Finset.range n, (1 + (Nat.digits 2 i).sum % 2) : ℕ) : ℤ)` in `Proof.A026.A026430`. -/
def A026430 (n : ℕ) : ℤ :=
  A026430.P14890685957938381463.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A026430.anchor (n : ℕ) : A026430 n = ((∑ i ∈ Finset.range n, (1 + (Nat.digits 2 i).sum % 2) : ℕ) : ℤ)` in `Proof.A026.A026430`. -/
def A026430.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A029939.P6455013968657218712

`∑{d}[n+1, A000010(#)²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A029939.P6455013968657218712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ 2

end

end A029939.P6455013968657218712

noncomputable section

/-- A029939: a(n) = Sum_{d|n} phi(d)^2.

Offset 1, canonical program `A029939.P6455013968657218712`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010(#)²]` (program `A029939.P6455013968657218712`, by `A029939.P6455013968657218712.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A029939 (n : ℕ) : ℤ :=
  A029939.P6455013968657218712.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000010(#)²]` (program `A029939.P6455013968657218712`, by `A029939.P6455013968657218712.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A029939.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A036553.P13963425937550179717

`A000010(A000040(n+1))-A000040(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036553.P13963425937550179717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat - A000040 (A000010 (n + 1)).toNat

end

end A036553.P13963425937550179717

noncomputable section

/-- A036553: a(n) = phi(prime(n)) - prime(phi(n)).

Offset 1, canonical program `A036553.P13963425937550179717`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000040(n+1))-A000040(A000010(n+1))` (program `A036553.P13963425937550179717`, by `A036553.P13963425937550179717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A036553 (n : ℕ) : ℤ :=
  A036553.P13963425937550179717.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000040(n+1))-A000040(A000010(n+1))` (program `A036553.P13963425937550179717`, by `A036553.P13963425937550179717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A036553.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037225.P9328900896830613636

`A000010(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037225.P9328900896830613636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

end

end A037225.P9328900896830613636

noncomputable section

/-- A037225: a(n) = phi(2n+1).

Offset 0, canonical program `A037225.P9328900896830613636`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(2*n+1)` (program `A037225.P9328900896830613636`, by `A037225.P9328900896830613636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A037225 (n : ℕ) : ℤ :=
  A037225.P9328900896830613636.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(2*n+1)` (program `A037225.P9328900896830613636`, by `A037225.P9328900896830613636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A037225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037228.P4220557198165153324

`A000010(n+1)-A000720(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037228.P4220557198165153324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000720 (n + 1)

end

end A037228.P4220557198165153324

noncomputable section

/-- A037228: a(n) = phi(n) - pi(n).

Offset 1, canonical program `A037228.P4220557198165153324`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)-A000720(n+1)` (program `A037228.P4220557198165153324`, by `A037228.P4220557198165153324.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A037228 (n : ℕ) : ℤ :=
  A037228.P4220557198165153324.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)-A000720(n+1)` (program `A037228.P4220557198165153324`, by `A037228.P4220557198165153324.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A037228.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A039649.P16717312505280968063

`A000010(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A039649.P16717312505280968063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

end

end A039649.P16717312505280968063

noncomputable section

/-- A039649: a(n) = phi(n)+1.

Offset 1, canonical program `A039649.P16717312505280968063`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)+1` (program `A039649.P16717312505280968063`, by `A039649.P16717312505280968063.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A039649 (n : ℕ) : ℤ :=
  A039649.P16717312505280968063.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)+1` (program `A039649.P16717312505280968063`, by `A039649.P16717312505280968063.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A039649.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046151.P159560385155613916

`(n+1)*A000010(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046151.P159560385155613916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) - 1

end

end A046151.P159560385155613916

noncomputable section

/-- A046151: a(n) = n*phi(n) - 1.

Offset 1, canonical program `A046151.P159560385155613916`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)-1` (program `A046151.P159560385155613916`, by `A046151.P159560385155613916.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A046151 (n : ℕ) : ℤ :=
  A046151.P159560385155613916.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)-1` (program `A046151.P159560385155613916`, by `A046151.P159560385155613916.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A046151.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046152.P7809861723130686075

`(n+1)*A000010(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046152.P7809861723130686075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) + 1

end

end A046152.P7809861723130686075

noncomputable section

/-- A046152: a(n) = n*phi(n) + 1.

Offset 1, canonical program `A046152.P7809861723130686075`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)+1` (program `A046152.P7809861723130686075`, by `A046152.P7809861723130686075.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A046152 (n : ℕ) : ℤ :=
  A046152.P7809861723130686075.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000010(n+1)+1` (program `A046152.P7809861723130686075`, by `A046152.P7809861723130686075.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A046152.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048848.P6937858258724486244

`A000040(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048848.P6937858258724486244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (n + 1)).toNat

end

end A048848.P6937858258724486244

noncomputable section

/-- A048848: a(n) = prime(phi(n)).

Offset 1, canonical program `A048848.P6937858258724486244`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000010(n+1))` (program `A048848.P6937858258724486244`, by `A048848.P6937858258724486244.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048848 (n : ℕ) : ℤ :=
  A048848.P6937858258724486244.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000010(n+1))` (program `A048848.P6937858258724486244`, by `A048848.P6937858258724486244.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048848.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048849.P7161606125274033491

`A000040(A000010(n+1))+A000010(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048849.P7161606125274033491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (n + 1)).toNat + A000010 (A000040 (n + 1)).toNat

end

end A048849.P7161606125274033491

noncomputable section

/-- A048849: a(n) = prime(phi(n)) + phi(prime(n)).

Offset 1, canonical program `A048849.P7161606125274033491`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000010(n+1))+A000010(A000040(n+1))` (program `A048849.P7161606125274033491`, by `A048849.P7161606125274033491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048849 (n : ℕ) : ℤ :=
  A048849.P7161606125274033491.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000010(n+1))+A000010(A000040(n+1))` (program `A048849.P7161606125274033491`, by `A048849.P7161606125274033491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048849.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A049559.P6342530742529976710

`gcd(n, A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049559.P6342530742529976710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000010 (n + 1))

end

end A049559.P6342530742529976710

noncomputable section

/-- A049559: a(n) = gcd(n - 1, phi(n)).

Offset 1, canonical program `A049559.P6342530742529976710`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, A000010(n+1))` (program `A049559.P6342530742529976710`, by `A049559.P6342530742529976710.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A049559 (n : ℕ) : ℤ :=
  (A049559.P6342530742529976710.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, A000010(n+1))` (program `A049559.P6342530742529976710`, by `A049559.P6342530742529976710.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A049559.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051612.P4135239823752248514

`A000203(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051612.P4135239823752248514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1)

end

end A051612.P4135239823752248514

noncomputable section

/-- A051612: a(n) = sigma(n) - phi(n).

Offset 1, canonical program `A051612.P4135239823752248514`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A000010(n+1)` (program `A051612.P4135239823752248514`, by `A051612.P4135239823752248514.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051612 (n : ℕ) : ℤ :=
  A051612.P4135239823752248514.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A000010(n+1)` (program `A051612.P4135239823752248514`, by `A051612.P4135239823752248514.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051612.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051709.P8066883811744733228

`A000203(n+1)+A000010(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051709.P8066883811744733228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) - (2 * (n + 1) : ℤ)

end

end A051709.P8066883811744733228

noncomputable section

/-- A051709: a(n) = sigma(n) + phi(n) - 2n.

Offset 1, canonical program `A051709.P8066883811744733228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000010(n+1)-2*(n+1)` (program `A051709.P8066883811744733228`, by `A051709.P8066883811744733228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051709 (n : ℕ) : ℤ :=
  A051709.P8066883811744733228.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000010(n+1)-2*(n+1)` (program `A051709.P8066883811744733228`, by `A051709.P8066883811744733228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051709.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A051953.P11179276897610979764

`n+1-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051953.P11179276897610979764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1)

end

end A051953.P11179276897610979764

noncomputable section

/-- A051953: Cototient(n) := n - phi(n).

Offset 1, canonical program `A051953.P11179276897610979764`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A000010(n+1)` (program `A051953.P11179276897610979764`, by `A051953.P11179276897610979764.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051953 (n : ℕ) : ℤ :=
  A051953.P11179276897610979764.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A000010(n+1)` (program `A051953.P11179276897610979764`, by `A051953.P11179276897610979764.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051953.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052106.P2973224665383898621

`lcm(n+1, n+1-A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052106.P2973224665383898621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) - A000010 (n + 1))

end

end A052106.P2973224665383898621

noncomputable section

/-- A052106: a(n) = lcm(n, n - phi(n)).

Offset 1, canonical program `A052106.P2973224665383898621`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, n+1-A000010(n+1))` (program `A052106.P2973224665383898621`, by `A052106.P2973224665383898621.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052106 (n : ℕ) : ℤ :=
  (A052106.P2973224665383898621.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, n+1-A000010(n+1))` (program `A052106.P2973224665383898621`, by `A052106.P2973224665383898621.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052106.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053139.P14434493847918876096

`A000010(n+1)-A008683(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053139.P14434493847918876096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A008683 (n + 1)

end

end A053139.P14434493847918876096

noncomputable section

/-- A053139: a(n) = phi(n) - mu(n).

Offset 1, canonical program `A053139.P14434493847918876096`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)-A008683(n+1)` (program `A053139.P14434493847918876096`, by `A053139.P14434493847918876096.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053139 (n : ℕ) : ℤ :=
  A053139.P14434493847918876096.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)-A008683(n+1)` (program `A053139.P14434493847918876096`, by `A053139.P14434493847918876096.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053139.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053158.P11533641159092355549

`2*(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053158.P11533641159092355549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000010 (n + 1)

end

end A053158.P11533641159092355549

noncomputable section

/-- A053158: Sum of n and its cototient function value (A051953): a(n) = 2*n - phi(n), where phi is Euler phi.

Offset 1, canonical program `A053158.P11533641159092355549`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A000010(n+1)` (program `A053158.P11533641159092355549`, by `A053158.P11533641159092355549.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053158 (n : ℕ) : ℤ :=
  A053158.P11533641159092355549.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A000010(n+1)` (program `A053158.P11533641159092355549`, by `A053158.P11533641159092355549.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053158.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053191.P11924660880443654901

`(n+1)²*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053191.P11924660880443654901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000010 (n + 1)

end

end A053191.P11924660880443654901

noncomputable section

/-- A053191: a(n) = n^2 * phi(n).

Offset 1, canonical program `A053191.P11924660880443654901`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*A000010(n+1)` (program `A053191.P11924660880443654901`, by `A053191.P11924660880443654901.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053191 (n : ℕ) : ℤ :=
  A053191.P11924660880443654901.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*A000010(n+1)` (program `A053191.P11924660880443654901`, by `A053191.P11924660880443654901.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053191.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A053575.P11050081037348707319

`A000265(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053575.P11050081037348707319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (n + 1)).toNat

end

end A053575.P11050081037348707319

noncomputable section

/-- A053575: Odd part of phi(n): a(n) = A000265(A000010(n)).

Offset 1, canonical program `A053575.P11050081037348707319`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000265(A000010(n+1))` (program `A053575.P11050081037348707319`, by `A053575.P11050081037348707319.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053575 (n : ℕ) : ℤ :=
  A053575.P11050081037348707319.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000265(A000010(n+1))` (program `A053575.P11050081037348707319`, by `A053575.P11050081037348707319.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A053575.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A054526.P1585525138995098187

`A000010(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054526.P1585525138995098187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.triCol n + 1)

end

end A054526.P1585525138995098187

noncomputable section

/-- A054526: Triangle T(n,k): T(n,k) = phi(k) (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054526.P1585525138995098187`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(col(n)+1)` (program `A054526.P1585525138995098187`, by `A054526.P1585525138995098187.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A054526 (n : ℕ) : ℤ :=
  A054526.P1585525138995098187.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(col(n)+1)` (program `A054526.P1585525138995098187`, by `A054526.P1585525138995098187.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A054526.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A054586.P12239608632219156591

`∑{d}[2*n+1, A000010(#)*A008683(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054586.P12239608632219156591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A008683 d

end

end A054586.P12239608632219156591

noncomputable section

/-- A054586: a(n) = Sum_{d|2n+1} phi(d)*mu(d).

Offset 0, canonical program `A054586.P12239608632219156591`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[2*n+1, A000010(#)*A008683(#)]` (program `A054586.P12239608632219156591`, by `A054586.P12239608632219156591.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A054586 (n : ℕ) : ℤ :=
  A054586.P12239608632219156591.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[2*n+1, A000010(#)*A008683(#)]` (program `A054586.P12239608632219156591`, by `A054586.P12239608632219156591.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A054586.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A057000.P1784928744238617975

`A000010(n+2)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057000.P1784928744238617975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) - A000010 (n + 1)

end

end A057000.P1784928744238617975

noncomputable section

/-- A057000: a(n) = phi(n+1) - phi(n).

Offset 1, canonical program `A057000.P1784928744238617975`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+2)-A000010(n+1)` (program `A057000.P1784928744238617975`, by `A057000.P1784928744238617975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A057000 (n : ℕ) : ℤ :=
  A057000.P1784928744238617975.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+2)-A000010(n+1)` (program `A057000.P1784928744238617975`, by `A057000.P1784928744238617975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A057000.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A058656.P8642895628409042149

`gcd(n+2, A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058656.P8642895628409042149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000010 (n + 1))

end

end A058656.P8642895628409042149

noncomputable section

/-- A058656: a(n) = gcd(n+1, phi(n)).

Offset 1, canonical program `A058656.P8642895628409042149`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+2, A000010(n+1))` (program `A058656.P8642895628409042149`, by `A058656.P8642895628409042149.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A058656 (n : ℕ) : ℤ :=
  (A058656.P8642895628409042149.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+2, A000010(n+1))` (program `A058656.P8642895628409042149`, by `A058656.P8642895628409042149.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A058656.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A058663.P16188810588954216675

`gcd(n, n+1-A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058663.P16188810588954216675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((n + 1 : ℤ) - A000010 (n + 1))

end

end A058663.P16188810588954216675

noncomputable section

/-- A058663: a(n) = gcd(n-1, n-phi(n)).

Offset 1, canonical program `A058663.P16188810588954216675`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, n+1-A000010(n+1))` (program `A058663.P16188810588954216675`, by `A058663.P16188810588954216675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A058663 (n : ℕ) : ℤ :=
  (A058663.P16188810588954216675.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, n+1-A000010(n+1))` (program `A058663.P16188810588954216675`, by `A058663.P16188810588954216675.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A058663.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A058665.P3409862282001963184

`gcd(n+2, n+1-A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058665.P3409862282001963184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) ((n + 1 : ℤ) - A000010 (n + 1))

end

end A058665.P3409862282001963184

noncomputable section

/-- A058665: a(n) = gcd(n+1, n-phi(n)).

Offset 1, canonical program `A058665.P3409862282001963184`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+2, n+1-A000010(n+1))` (program `A058665.P3409862282001963184`, by `A058665.P3409862282001963184.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A058665 (n : ℕ) : ℤ :=
  (A058665.P3409862282001963184.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+2, n+1-A000010(n+1))` (program `A058665.P3409862282001963184`, by `A058665.P3409862282001963184.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A058665.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A001226.P11889909066572321013

`(2^A000010(2*(n+1)-1)-1)/(2*(n+1)-1)`
-/

namespace A001226.P11889909066572321013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000010 (2 * (n + 1) - 1) : ℤ) - 1) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A001226.P11889909066572321013

noncomputable section

/-- A001226: Lerch's function q_2(n) = (2^{phi(t)} - 1)/t where t = 2*n - 1.

Offset 1, canonical program `A001226.P11889909066572321013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001226.P11889909066572321013.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001285.P11616636227895161122

`1+A010060(n)`
-/

namespace A001285.P11616636227895161122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010060 n

end

end A001285.P11616636227895161122

noncomputable section

/-- A001285: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and 2's.

Offset 0, canonical program `A001285.P11616636227895161122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001285 (n : ℕ) : ℤ :=
  A001285.P11616636227895161122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001557.P6866617434651115240

`A001556(n)+A011557(n)`
-/

namespace A001557.P6866617434651115240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001556 n + A011557 n

end

end A001557.P6866617434651115240

noncomputable section

/-- A001557: a(n) = 1^n + 2^n + ... + 10^n.

Offset 0, canonical program `A001557.P6866617434651115240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001557 (n : ℕ) : ℤ :=
  A001557.P6866617434651115240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001616.P4295974346821333917

`∑{d}[n+1, A000010(gcd(#, (n+1)/#))]`
-/

namespace A001616.P4295974346821333917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

end

end A001616.P4295974346821333917

noncomputable section

/-- A001616: Number of parabolic vertices of Gamma_0(n).

Offset 1, canonical program `A001616.P4295974346821333917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001616 (n : ℕ) : ℤ :=
  A001616.P4295974346821333917.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001714.P5361614214990878834

`A001713(n)+(n+6)*a(n-1)` with `a(0)=1`
-/

namespace A001714.P5361614214990878834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001713 n + (n + 6 : ℤ) * a (n - 1)

end

end A001714.P5361614214990878834

noncomputable section

/-- A001714: Generalized Stirling numbers, [n+7,7]_3.

Offset 0, canonical program `A001714.P5361614214990878834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001714 (n : ℕ) : ℤ :=
  A001714.P5361614214990878834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001969.P9139304774861292784

`2*(n+1)-2+A010060(n)`
-/

namespace A001969.P9139304774861292784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 2 + A010060 n

end

end A001969.P9139304774861292784

noncomputable section

/-- A001969: Evil numbers: nonnegative integers with an even number of 1's in their binary expansion.

Offset 1, canonical program `A001969.P9139304774861292784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001969 (n : ℕ) : ℤ :=
  A001969.P9139304774861292784.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002619.P331244611325112500

`1/(n+1)²*∑{d}[n+1, A000010(#)²*((n+1)/#)!*#^((n+1)/#)]`
-/

namespace A002619.P331244611325112500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / ((n + 1) ^ 2 : ℚ) : ℝ) * (∑ d ∈ Nat.divisors (f1 n), (A000010 d ^ 2 * (Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℝ) * (d : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ))

end

end A002619.P331244611325112500

noncomputable section

/-- A002619: Number of 2-colored patterns on an n X n board.

Offset 1, canonical program `A002619.P331244611325112500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002619.P331244611325112500.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007014.P11143855519005822718

`A000040(A000849(n+1))`
-/

namespace A007014.P11143855519005822718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000849 (n + 1)).toNat

end

end A007014.P11143855519005822718

noncomputable section

/-- A007014: Largest prime <= Product prime(k).

Offset 1, canonical program `A007014.P11143855519005822718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007014 (n : ℕ) : ℤ :=
  A007014.P11143855519005822718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007223.P1354754588119133388

`1/(n+2)*∑{d}[gcd(n+4, n+2), A000010(#)*C(2*(n+2)/#, (n+4)/#)]`
-/

namespace A007223.P1354754588119133388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 4) (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.choose (SequenceMachineLib.roundAway ((2 * (n + 2) : ℚ) / (d : ℚ))).toNat (SequenceMachineLib.roundAway ((n + 4 : ℚ) / (d : ℚ))).toNat : ℤ) : ℤ) : ℚ)

end

end A007223.P1354754588119133388

noncomputable section

/-- A007223: Number of distinct perforation patterns for deriving (v,b) = (n+2,n) punctured convolutional codes from (2,1).

Offset 2, canonical program `A007223.P1354754588119133388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007223.P1354754588119133388.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007224.P15878549209530248771

`1/(n+4)*∑{d}[gcd(n+7, n+4), A000010(#)*C(2*(n+4)/#, (n+7)/#)]`
-/

namespace A007224.P15878549209530248771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 7) (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 4 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.choose (SequenceMachineLib.roundAway ((2 * (n + 4) : ℚ) / (d : ℚ))).toNat (SequenceMachineLib.roundAway ((n + 7 : ℚ) / (d : ℚ))).toNat : ℤ) : ℤ) : ℚ)

end

end A007224.P15878549209530248771

noncomputable section

/-- A007224: Number of distinct perforation patterns for deriving (v,b) = (n+3,n) punctured convolutional codes from (2,1).

Offset 4, canonical program `A007224.P15878549209530248771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007224.P15878549209530248771.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007225.P2065735150519837679

`1/(n+5)*∑{d}[gcd(n+9, n+5), A000010(#)*C(2*(n+5)/#, (n+9)/#)]`
-/

namespace A007225.P2065735150519837679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 9) (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 5 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.choose (SequenceMachineLib.roundAway ((2 * (n + 5) : ℚ) / (d : ℚ))).toNat (SequenceMachineLib.roundAway ((n + 9 : ℚ) / (d : ℚ))).toNat : ℤ) : ℤ) : ℚ)

end

end A007225.P2065735150519837679

noncomputable section

/-- A007225: Number of distinct perforation patterns for deriving (v,b) = (n+4,n) punctured convolutional codes from (2,1).

Offset 5, canonical program `A007225.P2065735150519837679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007225.P2065735150519837679.a (n - 5))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007227.P121859068071764139

`1/(n+2)*∑{d}[gcd(n+4, n+2), A000010(#)*C(3*(n+2)/#, (n+4)/#)]`
-/

namespace A007227.P121859068071764139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 4) (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.choose (SequenceMachineLib.roundAway ((3 * (n + 2) : ℚ) / (d : ℚ))).toNat (SequenceMachineLib.roundAway ((n + 4 : ℚ) / (d : ℚ))).toNat : ℤ) : ℤ) : ℚ)

end

end A007227.P121859068071764139

noncomputable section

/-- A007227: Number of distinct perforation patterns for deriving (v,b) = (n+2,n) punctured convolutional codes from (3,1).

Offset 2, canonical program `A007227.P121859068071764139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007227.P121859068071764139.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007229.P9619016851352759758

`1/(n+2)*∑{d}[gcd(n+4, n+2), A000010(#)*C(4*(n+2)/#, (n+4)/#)]`
-/

namespace A007229.P9619016851352759758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 4) (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A000010 d * (Nat.choose (SequenceMachineLib.roundAway ((4 * (n + 2) : ℚ) / (d : ℚ))).toNat (SequenceMachineLib.roundAway ((n + 4 : ℚ) / (d : ℚ))).toNat : ℤ) : ℤ) : ℚ)

end

end A007229.P9619016851352759758

noncomputable section

/-- A007229: Number of distinct perforation patterns for deriving (v,b) = (n+2,n) punctured convolutional codes from (4,1).

Offset 2, canonical program `A007229.P9619016851352759758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007229 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007229.P9619016851352759758.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007434.P3432859153295839493

`A000010(n+1)*A001615(n+1)`
-/

namespace A007434.P3432859153295839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001615 (n + 1)

end

end A007434.P3432859153295839493

noncomputable section

/-- A007434: Jordan function J_2(n) (a generalization of phi(n)).

Offset 1, canonical program `A007434.P3432859153295839493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007434 (n : ℕ) : ℤ :=
  A007434.P3432859153295839493.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008330.P4237937900296338691

`A000010(A006093(n+1))`
-/

namespace A008330.P4237937900296338691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006093 (n + 1)).toNat

end

end A008330.P4237937900296338691

noncomputable section

/-- A008330: phi(p-1), as p runs through the primes.

Offset 1, canonical program `A008330.P4237937900296338691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008330 (n : ℕ) : ℤ :=
  A008330.P4237937900296338691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008639.P2642685750029549705

`a(n-10)+A008638(n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7, a(6)=11, a(7)=15, a(8)=22, a(9)=30`
-/

namespace A008639.P2642685750029549705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 7, 11, 15, 22, 30] fun n a =>
  a (n - 10) + A008638 n

end

end A008639.P2642685750029549705

noncomputable section

/-- A008639: Number of partitions of n into at most 10 parts.

Offset 0, canonical program `A008639.P2642685750029549705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008639 (n : ℕ) : ℤ :=
  A008639.P2642685750029549705.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008639.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008889.P2877282476747895501

`A008888(n+1)`
-/

namespace A008889.P2877282476747895501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008888 (n + 1)

end

end A008889.P2877282476747895501

noncomputable section

/-- A008889: Aliquot sequence starting at 150.

Offset 0, canonical program `A008889.P2877282476747895501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008889 (n : ℕ) : ℤ :=
  A008889.P2877282476747895501.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010059.P6338678923093357896

`1-A010060(n)`
-/

namespace A010059.P6338678923093357896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

end

end A010059.P6338678923093357896

noncomputable section

/-- A010059: Another version of the Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

Offset 0, canonical program `A010059.P6338678923093357896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010059 (n : ℕ) : ℤ :=
  A010059.P6338678923093357896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011260.P14696478141534859449

`A000010(2^(n+1)-1)/(n+1)`
-/

namespace A011260.P14696478141534859449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 ^ (n + 1) - 1) : ℚ) / (n + 1 : ℚ)

end

end A011260.P14696478141534859449

noncomputable section

/-- A011260: Number of primitive polynomials of degree n over GF(2).

Offset 1, canonical program `A011260.P14696478141534859449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011260 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011260.P14696478141534859449.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014719.P3871794258725070210

`A014410(n+2)²`
-/

namespace A014719.P3871794258725070210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) ^ 2

end

end A014719.P3871794258725070210

noncomputable section

/-- A014719: Squares of elements in Pascal triangle (by row) that are not 1.

Offset 2, canonical program `A014719.P3871794258725070210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014719 (n : ℕ) : ℤ :=
  A014719.P3871794258725070210.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018806.P11565272913801985938

`∑{#}[n, A000010(#+1)*floor((n+1)/(#+1))²]`
-/

namespace A018806.P11565272913801985938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000010 (k + 1) * ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ ^ 2

end

end A018806.P11565272913801985938

noncomputable section

/-- A018806: Sum of gcd(x, y) for 1 <= x, y <= n.

Offset 1, canonical program `A018806.P11565272913801985938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018806 (n : ℕ) : ℤ :=
  A018806.P11565272913801985938.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019302.P5124311230850115359

`∑{#}[n, A010060(#)*A007318(C(n+1, 2)+#)]`
-/

namespace A019302.P5124311230850115359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010060 k * A007318 (Nat.choose (n + 1) 2 + k)

end

end A019302.P5124311230850115359

noncomputable section

/-- A019302: Binomial transform of Thue-Morse sequence A010060.

Offset 0, canonical program `A019302.P5124311230850115359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019302 (n : ℕ) : ℤ :=
  A019302.P5124311230850115359.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019564.P17251219287643129102

`A008416(2*n)`
-/

namespace A019564.P17251219287643129102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 (2 * n)

end

end A019564.P17251219287643129102

noncomputable section

/-- A019564: Coordination sequence for C_8 lattice.

Offset 0, canonical program `A019564.P17251219287643129102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019564 (n : ℕ) : ℤ :=
  A019564.P17251219287643129102.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023567.P9706314416629232422

`∑{#}[n, A023531(n+1-#)*A000040(#+1)]`
-/

namespace A023567.P9706314416629232422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A023531 (n + 1 - k) * A000040 (k + 1)

end

end A023567.P9706314416629232422

noncomputable section

/-- A023567: Convolution of A023531 and primes.

Offset 1, canonical program `A023567.P9706314416629232422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023567 (n : ℕ) : ℤ :=
  A023567.P9706314416629232422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023820.P10715927609906608587

`A023819(n+1)-A001222(2*(n+1)+1)+A001222(n+1)`
-/

namespace A023820.P10715927609906608587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 (n + 1) - A001222 (2 * (n + 1) + 1) + A001222 (n + 1)

end

end A023820.P10715927609906608587

noncomputable section

/-- A023820: Sum of exponents in prime-power factorization of C(3n,n-1).

Offset 1, canonical program `A023820.P10715927609906608587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023820 (n : ℕ) : ℤ :=
  A023820.P10715927609906608587.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023823.P9003728533759637221

`A023819(n+1)+A001222(2*(n+1))-A001222(n+2)`
-/

namespace A023823.P9003728533759637221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 (n + 1) + A001222 (2 * (n + 1)) - A001222 (n + 2)

end

end A023823.P9003728533759637221

noncomputable section

/-- A023823: Sum of exponents in prime-power factorization of C(3n,n+1).

Offset 1, canonical program `A023823.P9003728533759637221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023823 (n : ℕ) : ℤ :=
  A023823.P9003728533759637221.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023827.P2733761786903889434

`A023826(n+1)-A001222(3*(n+1)+1)+A001222(n+1)`
-/

namespace A023827.P2733761786903889434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023826 (n + 1) - A001222 (3 * (n + 1) + 1) + A001222 (n + 1)

end

end A023827.P2733761786903889434

noncomputable section

/-- A023827: Sum of exponents in prime-power factorization of C(4n,n-1).

Offset 1, canonical program `A023827.P2733761786903889434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023827 (n : ℕ) : ℤ :=
  A023827.P2733761786903889434.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023831.P4827670749398913338

`A023826(n+1)+A001222(3*(n+1))-A001222(n+2)`
-/

namespace A023831.P4827670749398913338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023826 (n + 1) + A001222 (3 * (n + 1)) - A001222 (n + 2)

end

end A023831.P4827670749398913338

noncomputable section

/-- A023831: Sum of exponents in prime-power factorization of C(4n,n+1).

Offset 1, canonical program `A023831.P4827670749398913338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023831 (n : ℕ) : ℤ :=
  A023831.P4827670749398913338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023835.P8849903208192410256

`A023834(n+1)-A001222(2*(n+1)+1)+A001222(2*(n+1))`
-/

namespace A023835.P8849903208192410256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 (n + 1) - A001222 (2 * (n + 1) + 1) + A001222 (2 * (n + 1))

end

end A023835.P8849903208192410256

noncomputable section

/-- A023835: Sum of exponents in prime-power factorization of C(4n,2n-1).

Offset 1, canonical program `A023835.P8849903208192410256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023835 (n : ℕ) : ℤ :=
  A023835.P8849903208192410256.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023986.P6172043282524275894

`A023834(n)-A023816(n)`
-/

namespace A023986.P6172043282524275894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n - A023816 n

end

end A023986.P6172043282524275894

noncomputable section

/-- A023986: Sum of exponents of primes in C(4n,2n) - sum of exponents of primes in C(2n,n).

Offset 0, canonical program `A023986.P6172043282524275894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023986 (n : ℕ) : ℤ :=
  A023986.P6172043282524275894.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023990.P3946053488396366451

`A023980(n)-A023978(n)`
-/

namespace A023990.P3946053488396366451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n - A023978 n

end

end A023990.P3946053488396366451

noncomputable section

/-- A023990: Sum of exponents of primes in multinomial coefficient M(4n; 2n,n,n) - sum of exponents of primes in M(3n; n,n,n).

Offset 0, canonical program `A023990.P3946053488396366451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023990 (n : ℕ) : ℤ :=
  A023990.P3946053488396366451.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024316.P11974650394564179216

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A023531(n+1-#)]`
-/

namespace A024316.P11974650394564179216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A023531 (n + 1 - k)

end

end A024316.P11974650394564179216

noncomputable section

/-- A024316: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = A023531.

Offset 1, canonical program `A024316.P11974650394564179216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024316 (n : ℕ) : ℤ :=
  A024316.P11974650394564179216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024317.P9350549336155220433

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A023532(n+1-#)]`
-/

namespace A024317.P9350549336155220433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A023532 (n + 1 - k)

end

end A024317.P9350549336155220433

noncomputable section

/-- A024317: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A023532.

Offset 1, canonical program `A024317.P9350549336155220433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024317 (n : ℕ) : ℤ :=
  A024317.P9350549336155220433.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024318.P10408766868558514836

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A000045(n+1-#)]`
-/

namespace A024318.P10408766868558514836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A000045 (n + 1 - k)

end

end A024318.P10408766868558514836

noncomputable section

/-- A024318: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (Fibonacci numbers).

Offset 1, canonical program `A024318.P10408766868558514836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024318 (n : ℕ) : ℤ :=
  A024318.P10408766868558514836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024319.P902360758319373263

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A000032(n+1-#)]`
-/

namespace A024319.P902360758319373263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A000032 (n + 1 - k)

end

end A024319.P902360758319373263

noncomputable section

/-- A024319: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (Lucas numbers).

Offset 1, canonical program `A024319.P902360758319373263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024319 (n : ℕ) : ℤ :=
  A024319.P902360758319373263.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024320.P5035013505362671424

`∑{#}[floor((n+2)/2)-2, A023531(#+2)*A000040(n+1-(#+2))]`
-/

namespace A024320.P5035013505362671424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 2) * A000040 (n + 1 - (k + 2))

end

end A024320.P5035013505362671424

noncomputable section

/-- A024320: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (1, p(1), p(2), ... ).

Offset 1, canonical program `A024320.P5035013505362671424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024320 (n : ℕ) : ℤ :=
  A024320.P5035013505362671424.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024323.P17364243268778902699

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*(2*(n+1)-2*(#+1)+1)]`
-/

namespace A024323.P17364243268778902699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * ((2 * (n + 1) : ℤ) - (2 * (k + 1) : ℤ) + 1)

end

end A024323.P17364243268778902699

noncomputable section

/-- A024323: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (odd natural numbers).

Offset 1, canonical program `A024323.P17364243268778902699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024323 (n : ℕ) : ℤ :=
  A024323.P17364243268778902699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024324.P10143551185496434168

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A000201(n+1-#)]`
-/

namespace A024324.P10143551185496434168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A000201 (n + 1 - k)

end

end A024324.P10143551185496434168

noncomputable section

/-- A024324: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A000201 (lower Wythoff sequence).

Offset 1, canonical program `A024324.P10143551185496434168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024324 (n : ℕ) : ℤ :=
  A024324.P10143551185496434168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024325.P14757351788027497587

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A001950(n+1-#)]`
-/

namespace A024325.P14757351788027497587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A001950 (n + 1 - k)

end

end A024325.P14757351788027497587

noncomputable section

/-- A024325: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A001950 (upper Wythoff sequence).

Offset 1, canonical program `A024325.P14757351788027497587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024325 (n : ℕ) : ℤ :=
  A024325.P14757351788027497587.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024328.P10932480650588163289

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A000040(n+1-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024328.P10932480650588163289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A000040 (n + 1 - k)

end

end A024328.P10932480650588163289

noncomputable section

/-- A024328: a(n) = Sum_{j=1..floor((n+1)/2)} A023531(j)*prime(n-j+1).

Offset 1, canonical program `A024328.P10932480650588163289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024328 (n : ℕ) : ℤ :=
  A024328.P10932480650588163289.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024676.P3514382292140376795

`A001222(A024675(n+1))`
-/

namespace A024676.P3514382292140376795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024675 (n + 1)).toNat

end

end A024676.P3514382292140376795

noncomputable section

/-- A024676: a(n) is the number of prime divisors (counted by multiplicity) of A024675(n).

Offset 1, canonical program `A024676.P3514382292140376795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024676 (n : ℕ) : ℤ :=
  A024676.P3514382292140376795.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026029.P1005494940722334040

`A026012(n)+A000588(n)`
-/

namespace A026029.P1005494940722334040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + A000588 n

end

end A026029.P1005494940722334040

noncomputable section

/-- A026029: Number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 3. Also T(2n,n), where T is defined in A026022.

Offset 0, canonical program `A026029.P1005494940722334040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026029 (n : ℕ) : ℤ :=
  A026029.P1005494940722334040.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026119.P17985016612892589916

`∑{d}[2*n+1, A000010(#)*2^((2*n+1)/#)]/(4*n+2)`
-/

namespace A026119.P17985016612892589916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℝ) * (2 : ℝ) ^ ((2 * n + 1 : ℚ) / (d : ℚ) : ℝ)) / (4 * n + 2 : ℝ)

end

end A026119.P17985016612892589916

noncomputable section

/-- A026119: Bisection of A000016 (also of A000013).

Offset 0, canonical program `A026119.P17985016612892589916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026119.P17985016612892589916.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027385.P17711023550772300041

`A000010(3^(n+1)-1)/(n+1)`
-/

namespace A027385.P17711023550772300041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (3 ^ (n + 1) - 1) : ℚ) / (n + 1 : ℚ)

end

end A027385.P17711023550772300041

noncomputable section

/-- A027385: Number of primitive polynomials of degree n over GF(3).

Offset 1, canonical program `A027385.P17711023550772300041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027385.P17711023550772300041.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029935.P1636467149315566281

`∑{d}[n+1, A000010(#)*A000010((n+1)/#)]`
-/

namespace A029935.P1636467149315566281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P1636467149315566281

noncomputable section

/-- A029935: a(n) = Sum_{d divides n} phi(d)*phi(n/d).

Offset 1, canonical program `A029935.P1636467149315566281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029935 (n : ℕ) : ℤ :=
  A029935.P1636467149315566281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029935.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034381.P14312782436089900410

`A000142(n+1)/A000010(n+1)`
-/

namespace A034381.P14312782436089900410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A034381.P14312782436089900410

noncomputable section

/-- A034381: Number of labeled cyclic groups with n elements.

Offset 1, canonical program `A034381.P14312782436089900410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034381 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034381.P14312782436089900410.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036264.P7593126480384688485

`A036263(n+2)-A036263(n+1)`
-/

namespace A036264.P7593126480384688485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2) - A036263 (n + 1)

end

end A036264.P7593126480384688485

noncomputable section

/-- A036264: Third differences of primes.

Offset 1, canonical program `A036264.P7593126480384688485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036264 (n : ℕ) : ℤ :=
  A036264.P7593126480384688485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037834.P503404166685068881

`A005811(n+1)-1`
-/

namespace A037834.P503404166685068881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) - 1

end

end A037834.P503404166685068881

noncomputable section

/-- A037834: a(n) = Sum_{i=1..m} |d(i) - d(i-1)|, where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A037834.P503404166685068881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037834 (n : ℕ) : ℤ :=
  A037834.P503404166685068881.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037861.P603769739827553154

`A023416(n)-A000120(n)`
-/

namespace A037861.P603769739827553154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A000120 n

end

end A037861.P603769739827553154

noncomputable section

/-- A037861: (Number of 0's) - (number of 1's) in the base-2 representation of n.

Offset 0, canonical program `A037861.P603769739827553154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037861 (n : ℕ) : ℤ :=
  A037861.P603769739827553154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038576.P5654296326106724929

`A000010(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A038576.P5654296326106724929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (n + 1) * a (n - 1) + a (n - 2)

end

end A038576.P5654296326106724929

noncomputable section

/-- A038576: CONTINUANT transform of {phi(n)}, 1, 1, 2, 2, 4, 2, .. (A002088).

Offset 1, canonical program `A038576.P5654296326106724929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038576 (n : ℕ) : ℤ :=
  A038576.P5654296326106724929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038813.P1626043926961271755

`A038812(10*(n+1))`
-/

namespace A038813.P1626043926961271755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (10 * (n + 1))

end

end A038813.P1626043926961271755

noncomputable section

/-- A038813: Number of primes less than 10000n.

Offset 1, canonical program `A038813.P1626043926961271755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038813 (n : ℕ) : ℤ :=
  A038813.P1626043926961271755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047994.P3003493197761739884

`A000010(n+1)*A000203(A003557(n+1))/A003557(n+1)`
-/

namespace A047994.P3003493197761739884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A000203 (A003557 (n + 1)).toNat : ℚ) / (A003557 (n + 1) : ℚ)

end

end A047994.P3003493197761739884

noncomputable section

/-- A047994: Unitary totient (or unitary phi) function uphi(n).

Offset 1, canonical program `A047994.P3003493197761739884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047994.P3003493197761739884.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048855.P1835815635312777100

`A000010(n!)`
-/

namespace A048855.P1835815635312777100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial n)

end

end A048855.P1835815635312777100

noncomputable section

/-- A048855: Number of integers up to n! relatively prime to n!.

Offset 0, canonical program `A048855.P1835815635312777100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048855 (n : ℕ) : ℤ :=
  A048855.P1835815635312777100.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048862.P7793812674722745711

`A000849(n)-n`
-/

namespace A048862.P7793812674722745711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 n - (n : ℤ)

end

end A048862.P7793812674722745711

noncomputable section

/-- A048862: Number of primes in the reduced residue system of n-th primorial number (=A002110(n)).

Offset 0, canonical program `A048862.P7793812674722745711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048862 (n : ℕ) : ℤ :=
  A048862.P7793812674722745711.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048863.P16974686868926745534

`A005867(n)-A000849(n)+n`
-/

namespace A048863.P16974686868926745534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n - A000849 n + (n : ℤ)

end

end A048863.P16974686868926745534

noncomputable section

/-- A048863: Number of nonprimes (1 and composites) in the reduced residue system of n-th primorial number (A002110).

Offset 0, canonical program `A048863.P16974686868926745534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048863 (n : ℕ) : ℤ :=
  A048863.P16974686868926745534.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048866.P13275795640121407663

`A000010(n+1)-2*A000720(n+1)+2*A001221(n+1)`
-/

namespace A048866.P13275795640121407663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 2 * A000720 (n + 1) + 2 * A001221 (n + 1)

end

end A048866.P13275795640121407663

noncomputable section

/-- A048866: Difference between number of nonprimes and primes in reduced residue system of n.

Offset 1, canonical program `A048866.P13275795640121407663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048866 (n : ℕ) : ℤ :=
  A048866.P13275795640121407663.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048896.P6461019053085857547

`2^A048881(n)`
-/

namespace A048896.P6461019053085857547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048881 n : ℤ)

end

end A048896.P6461019053085857547

noncomputable section

/-- A048896: a(n) = 2^(A000120(n+1) - 1), n >= 0.

Offset 0, canonical program `A048896.P6461019053085857547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048896.P6461019053085857547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049108.P3374025278854896554

`a(A000010(n+1)-1)+1` with `a(0)=1`
-/

namespace A049108.P3374025278854896554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000010 (n + 1) - 1).toNat + 1

end

end A049108.P3374025278854896554

noncomputable section

/-- A049108: a(n) is the number of iterations of Euler phi function needed to reach 1 starting at n (n is counted).

Offset 1, canonical program `A049108.P3374025278854896554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049108 (n : ℕ) : ℤ :=
  (A049108.P3374025278854896554.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049200.P13161636575132395791

`A000010(A005117(n+1))`
-/

namespace A049200.P13161636575132395791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005117 (n + 1)).toNat

end

end A049200.P13161636575132395791

noncomputable section

/-- A049200: Euler totient function phi applied to the n-th squarefree number.

Offset 1, canonical program `A049200.P13161636575132395791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049200 (n : ℕ) : ℤ :=
  A049200.P13161636575132395791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049203.P5712237589666905805

`A000040(A049090(n+1))`
-/

namespace A049203.P5712237589666905805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049090 (n + 1)).toNat

end

end A049203.P5712237589666905805

noncomputable section

/-- A049203: Primes for which A049076(p) >= 5.

Offset 1, canonical program `A049203.P5712237589666905805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049203 (n : ℕ) : ℤ :=
  A049203.P5712237589666905805.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049606.P14072092178265714622

`n!/2^A011371(n)`
-/

namespace A049606.P14072092178265714622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 : ℚ) ^ (A011371 n : ℤ)

end

end A049606.P14072092178265714622

noncomputable section

/-- A049606: Largest odd divisor of n!.

Offset 0, canonical program `A049606.P14072092178265714622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049606 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049606.P14072092178265714622.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053143.P2973590149006615306

`A019554(n+1)²`
-/

namespace A053143.P2973590149006615306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2

end

end A053143.P2973590149006615306

noncomputable section

/-- A053143: Smallest square divisible by n.

Offset 1, canonical program `A053143.P2973590149006615306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053143 (n : ℕ) : ℤ :=
  A053143.P2973590149006615306.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053166.P13162475752144618048

`A019554(n+1)/A008835(A019554(n+1)²)^(1/4)`
-/

namespace A053166.P13162475752144618048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℝ) / (A008835 (A019554 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A053166.P13162475752144618048

noncomputable section

/-- A053166: Smallest positive integer for which n divides a(n)^4.

Offset 1, canonical program `A053166.P13162475752144618048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053166 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053166.P13162475752144618048.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053285.P1899688093860978033

`A000010(2^n+1)`
-/

namespace A053285.P1899688093860978033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n + 1)

end

end A053285.P1899688093860978033

noncomputable section

/-- A053285: Totient of 2^n+1.

Offset 0, canonical program `A053285.P1899688093860978033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053285 (n : ℕ) : ℤ :=
  A053285.P1899688093860978033.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053478.P478435806884334050

`n+1+a(A000010(n+1)-1)` with `a(0)=1`
-/

namespace A053478.P478435806884334050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A000010 (n + 1) - 1).toNat

end

end A053478.P478435806884334050

noncomputable section

/-- A053478: Sum of iterates when phi, A000010, is iterated until fixed point 1.

Offset 1, canonical program `A053478.P478435806884334050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053478 (n : ℕ) : ℤ :=
  (A053478.P478435806884334050.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054611.P8729778112367523733

`∑{d}[n, A000010(#)*4^(n/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054611.P8729778112367523733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℝ) * (4 : ℝ) ^ ((n : ℚ) / (d : ℚ) : ℝ)

end

end A054611.P8729778112367523733

noncomputable section

/-- A054611: a(n) = Sum_{d|n} phi(d)*4^(n/d).

Offset 0, canonical program `A054611.P8729778112367523733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054611.P8729778112367523733.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055034.P3174201009977773822

`ceil(A000010(2*(n+1))/2)`
-/

namespace A055034.P3174201009977773822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (2 * (n + 1)) : ℚ) / 2⌉

end

end A055034.P3174201009977773822

noncomputable section

/-- A055034: a(1) = 1, a(n) = phi(2*n)/2 for n > 1.

Offset 1, canonical program `A055034.P3174201009977773822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055034 (n : ℕ) : ℤ :=
  A055034.P3174201009977773822.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055230.P2629812307315848114

`gcd(A055071(n+1), A055204(n+1))`
-/

namespace A055230.P2629812307315848114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055071 (n + 1)) (A055204 (n + 1))

end

end A055230.P2629812307315848114

noncomputable section

/-- A055230: Greatest common divisor of largest square dividing n! and squarefree part of n!.

Offset 1, canonical program `A055230.P2629812307315848114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055230 (n : ℕ) : ℤ :=
  (A055230.P2629812307315848114.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055460.P2633110437439138135

`A001221(A055204(n+1))`
-/

namespace A055460.P2633110437439138135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055204 (n + 1)).toNat

end

end A055460.P2633110437439138135

noncomputable section

/-- A055460: Number of primes with odd exponents in the prime power factorization of n!.

Offset 1, canonical program `A055460.P2633110437439138135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055460 (n : ℕ) : ℤ :=
  A055460.P2633110437439138135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055734.P10166142649885258030

`A001221(A000010(n+1))`
-/

namespace A055734.P10166142649885258030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

end

end A055734.P10166142649885258030

noncomputable section

/-- A055734: Number of distinct primes dividing phi(n).

Offset 1, canonical program `A055734.P10166142649885258030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055734 (n : ℕ) : ℤ :=
  A055734.P10166142649885258030.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055736.P12144362201627634542

`A001221(n+1)-A001221(A000010(n+1))`
-/

namespace A055736.P12144362201627634542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A000010 (n + 1)).toNat

end

end A055736.P12144362201627634542

noncomputable section

/-- A055736: Difference between number of prime factors of n and of phi(n).

Offset 1, canonical program `A055736.P12144362201627634542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055736 (n : ℕ) : ℤ :=
  A055736.P12144362201627634542.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056043.P13365125051087703237

`A055772(n+1)/A081123(n+1)`
-/

namespace A056043.P13365125051087703237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ)

end

end A056043.P13365125051087703237

noncomputable section

/-- A056043: Let k be largest number such that k^2 divides n!; a(n) = k/floor(n/2)!.

Offset 1, canonical program `A056043.P13365125051087703237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056043.P13365125051087703237.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056060.P13324673825026971929

`A055231(A001405(n+1))`
-/

namespace A056060.P13324673825026971929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A001405 (n + 1)).toNat

end

end A056060.P13324673825026971929

noncomputable section

/-- A056060: The powerfree part of the central binomial coefficients.

Offset 1, canonical program `A056060.P13324673825026971929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056060 (n : ℕ) : ℤ :=
  A056060.P13324673825026971929.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056100.P857994016145056278

`(A000010(n+1)*A000203(n+1)+1)%(n+1)`
-/

namespace A056100.P857994016145056278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) * A000203 (n + 1) + 1) (n + 1 : ℤ)

end

end A056100.P857994016145056278

noncomputable section

/-- A056100: a(n) = sigma(n)*phi(n) + 1 (mod n).

Offset 1, canonical program `A056100.P857994016145056278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056100 (n : ℕ) : ℤ :=
  A056100.P857994016145056278.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056169.P17430176249366647977

`A001221(A055231(n+1))`
-/

namespace A056169.P17430176249366647977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055231 (n + 1)).toNat

end

end A056169.P17430176249366647977

noncomputable section

/-- A056169: Number of unitary prime divisors of n.

Offset 1, canonical program `A056169.P17430176249366647977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056169 (n : ℕ) : ℤ :=
  A056169.P17430176249366647977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056191.P12587118165966918180

`A055229(n+1)^3`
-/

namespace A056191.P12587118165966918180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) ^ 3

end

end A056191.P12587118165966918180

noncomputable section

/-- A056191: Characteristic cube divisor of n: cube of g = gcd(K,F), where K is the largest square root divisor of n (A000188) and F = n/(K*K) = A007913(n) is its squarefree part; g^2 divides K^2 = A008833(n) = g^2*L^2 and g divides F = gf.

Offset 1, canonical program `A056191.P12587118165966918180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056191 (n : ℕ) : ℤ :=
  A056191.P12587118165966918180.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056192.P7016180020851153746

`(n+1)/A055229(n+1)^3`
-/

namespace A056192.P7016180020851153746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055229 (n + 1) ^ 3 : ℚ)

end

end A056192.P7016180020851153746

noncomputable section

/-- A056192: a(n) = n divided by its characteristic cube divisor A056191.

Offset 1, canonical program `A056192.P7016180020851153746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056192.P7016180020851153746.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056553.P3228939209481617257

`A053167(n+1)/A008835(n+1)`
-/

namespace A056553.P3228939209481617257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053167 (n + 1) : ℚ) / (A008835 (n + 1) : ℚ)

end

end A056553.P3228939209481617257

noncomputable section

/-- A056553: Smallest 4th-power divisible by n divided by largest 4th-power which divides n.

Offset 1, canonical program `A056553.P3228939209481617257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056553 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056553.P3228939209481617257.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056567.P16017620500270924614

`76*a(n-1)+a(n-2)+(-1)^n*A056565(n)` with `a(0)=1, a(1)=55`
-/

namespace A056567.P16017620500270924614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 55] fun n a =>
  76 * a (n - 1) + a (n - 2) + (-1) ^ n * A056565 n

end

end A056567.P16017620500270924614

noncomputable section

/-- A056567: Fibonomial coefficients.

Offset 0, canonical program `A056567.P16017620500270924614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056567 (n : ℕ) : ℤ :=
  A056567.P16017620500270924614.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056568.P4071559317002319837

`123*a(n-1)-a(n-2)+(-1)^n*A056566(n)` with `a(0)=1, a(1)=89`
-/

namespace A056568.P4071559317002319837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 89] fun n a =>
  123 * a (n - 1) - a (n - 2) + (-1) ^ n * A056566 n

end

end A056568.P4071559317002319837

noncomputable section

/-- A056568: Fibonomial coefficients.

Offset 0, canonical program `A056568.P4071559317002319837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056568 (n : ℕ) : ℤ :=
  A056568.P4071559317002319837.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056623.P4042659177706060418

`A008833(n+1)/A055229(n+1)²`
-/

namespace A056623.P4042659177706060418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (A055229 (n + 1) ^ 2 : ℚ)

end

end A056623.P4042659177706060418

noncomputable section

/-- A056623: If n=LLgggf (see A056192) and a(n) = LL, then its complementary divisor n/LL = gggf and gcd(L^2, n/LL) = 1.

Offset 1, canonical program `A056623.P4042659177706060418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056623.P4042659177706060418.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056742.P5200666861678689438

`A000010(2^(n+2)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056742.P5200666861678689438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 ^ (n + 2) - 1) : ℚ) / 2

end

end A056742.P5200666861678689438

noncomputable section

/-- A056742: a(n) = phi(2^n - 1)/2.

Offset 2, canonical program `A056742.P5200666861678689438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056742.P5200666861678689438.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056820.P12441751021229562647

`A000010(n*2^n+1)`
-/

namespace A056820.P12441751021229562647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n * 2 ^ n + 1)

end

end A056820.P12441751021229562647

noncomputable section

/-- A056820: Euler totient function of Cullen numbers (A002064), n*2^n +1.

Offset 0, canonical program `A056820.P12441751021229562647`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056820 (n : ℕ) : ℤ :=
  A056820.P12441751021229562647.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056821.P16707184168052195583

`A000010((n+1)*2^(n+1)-1)`
-/

namespace A056821.P16707184168052195583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) * 2 ^ (n + 1) - 1)

end

end A056821.P16707184168052195583

noncomputable section

/-- A056821: Totient of the Woodall numbers (A003261), n*2^n -1.

Offset 1, canonical program `A056821.P16707184168052195583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056821 (n : ℕ) : ℤ :=
  A056821.P16707184168052195583.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057001.P14440288707371223238

`(A000010(n+4)-A000010(n+3))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057001.P14440288707371223238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 4) - A000010 (n + 3) : ℚ) / 2

end

end A057001.P14440288707371223238

noncomputable section

/-- A057001: (phi(n+1)-phi(n))/2.

Offset 3, canonical program `A057001.P14440288707371223238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057001.P14440288707371223238.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057528.P16000590645068387962

`a(n-1)*A057527(n)` with `a(0)=1`
-/

namespace A057528.P16000590645068387962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A057527 n

end

end A057528.P16000590645068387962

noncomputable section

/-- A057528: 5th level factorials: product of first n 4th level factorials.

Offset 0, canonical program `A057528.P16000590645068387962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057528 (n : ℕ) : ℤ :=
  A057528.P16000590645068387962.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057850.P11135145847204226969

`A049090(A049090(n+1))`
-/

namespace A057850.P11135145847204226969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A049090 (n + 1)).toNat

end

end A057850.P11135145847204226969

noncomputable section

/-- A057850: Primes p whose order of primeness A078442(p) is at least 8.

Offset 1, canonical program `A057850.P11135145847204226969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057850 (n : ℕ) : ℤ :=
  A057850.P11135145847204226969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057858.P5036399590073208024

`A002110(n)-A057857(n)`
-/

namespace A057858.P5036399590073208024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A057857 n

end

end A057858.P5036399590073208024

noncomputable section

/-- A057858: Number of residue classes modulo n-th primorial number which contain only composite numbers.

Offset 0, canonical program `A057858.P5036399590073208024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057858 (n : ℕ) : ℤ :=
  A057858.P5036399590073208024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057859.P5441024818850006693

`A000010(n+1)+A001221(n+1)`
-/

namespace A057859.P5441024818850006693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A001221 (n + 1)

end

end A057859.P5441024818850006693

noncomputable section

/-- A057859: Number of residue classes modulo n which contain a prime.

Offset 1, canonical program `A057859.P5441024818850006693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057859 (n : ℕ) : ℤ :=
  A057859.P5441024818850006693.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057936.P3593453616802084817

`A054992(3*(n+1))`
-/

namespace A057936.P3593453616802084817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (3 * (n + 1))

end

end A057936.P3593453616802084817

noncomputable section

/-- A057936: Number of prime factors of 8^n + 1 (counted with multiplicity).

Offset 1, canonical program `A057936.P3593453616802084817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057936 (n : ℕ) : ℤ :=
  A057936.P3593453616802084817.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057940.P11439325196055229877

`A054992(2*(n+1))`
-/

namespace A057940.P11439325196055229877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (2 * (n + 1))

end

end A057940.P11439325196055229877

noncomputable section

/-- A057940: Number of prime factors of 4^n + 1 (counted with multiplicity).

Offset 1, canonical program `A057940.P11439325196055229877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057940 (n : ℕ) : ℤ :=
  A057940.P11439325196055229877.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058515.P11879675803312438215

`gcd(A000010(n+1), A000010(n+2))`
-/

namespace A058515.P11879675803312438215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A000010 (n + 2))

end

end A058515.P11879675803312438215

noncomputable section

/-- A058515: GCD of totients of consecutive integers.

Offset 1, canonical program `A058515.P11879675803312438215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058515 (n : ℕ) : ℤ :=
  (A058515.P11879675803312438215.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059016.P3331646903593192012

`A023416(A000045(n))`
-/

namespace A059016.P3331646903593192012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000045 n).toNat

end

end A059016.P3331646903593192012

noncomputable section

/-- A059016: Number of 0's in binary expansion of Fibonacci(n).

Offset 0, canonical program `A059016.P3331646903593192012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059016 (n : ℕ) : ℤ :=
  A059016.P3331646903593192012.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060800.P2009094709202359605

`A036690(n+1)+1`
-/

namespace A060800.P2009094709202359605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + 1

end

end A060800.P2009094709202359605

noncomputable section

/-- A060800: a(n) = p^2 + p + 1 where p runs through the primes.

Offset 1, canonical program `A060800.P2009094709202359605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060800 (n : ℕ) : ℤ :=
  A060800.P2009094709202359605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060818.P15252789731358603356

`2^A011371(n)`
-/

namespace A060818.P15252789731358603356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A011371 n : ℤ)

end

end A060818.P15252789731358603356

noncomputable section

/-- A060818: a(n) = 2^(n - HammingWeight(n)) = 2^(n - BitCount(n)) = 2^(n - A000120(n)).

Offset 0, canonical program `A060818.P15252789731358603356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060818.P15252789731358603356.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061320.P9216718962236497877

`A061318(n)+A061319(n)²`
-/

namespace A061320.P9216718962236497877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061318 n + A061319 n ^ 2

end

end A061320.P9216718962236497877

noncomputable section

/-- A061320: Column 4 of A061314.

Offset 0, canonical program `A061320.P9216718962236497877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061320 (n : ℕ) : ℤ :=
  A061320.P9216718962236497877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002050.P4570644493252082511

`∑{#}[n-1, C(n, #+1)*A000670(#+1)]`
-/

namespace A002050.P4570644493252082511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (k + 1) : ℤ) * A000670 (k + 1)

end

end A002050.P4570644493252082511

noncomputable section

/-- A002050: Number of simplices in barycentric subdivision of n-simplex.

Offset 0, canonical program `A002050.P4570644493252082511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002050 (n : ℕ) : ℤ :=
  A002050.P4570644493252082511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002889.P5912892682402209234

`2*a(n-1)-a(n-3)+A002941(n+1)+A002941(n)` with `a(0)=1, a(1)=10, a(2)=56`
-/

namespace A002889.P5912892682402209234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 56] fun n a =>
  2 * a (n - 1) - a (n - 3) + A002941 (n + 1) + A002941 n

end

end A002889.P5912892682402209234

noncomputable section

/-- A002889: Arrays of dumbbells.

Offset 1, canonical program `A002889.P5912892682402209234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002889 (n : ℕ) : ℤ :=
  A002889.P5912892682402209234.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003415.P13310047267010681054

`∑{d}[n, #*A349394(n/#)]`
-/

namespace A003415.P13310047267010681054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349394 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat

end

end A003415.P13310047267010681054

noncomputable section

/-- A003415: a(n) = n' = arithmetic derivative of n: a(0) = a(1) = 0, a(prime) = 1, a(m*n) = m*a(n) + n*a(m).

Offset 0, canonical program `A003415.P13310047267010681054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003415 (n : ℕ) : ℤ :=
  A003415.P13310047267010681054.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005451.P9761260460024926723

`∑{d}[n+1, A380441(#)*A008683((n+1)/#)]`
-/

namespace A005451.P9761260460024926723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A380441 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A005451.P9761260460024926723

noncomputable section

/-- A005451: a(n) = 1 if n is a prime number, otherwise a(n) = n.

Offset 1, canonical program `A005451.P9761260460024926723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005451 (n : ℕ) : ℤ :=
  A005451.P9761260460024926723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006541.P2342259313587018791

`A000670((n+1)*n/2)`
-/

namespace A006541.P2342259313587018791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (SequenceMachineLib.roundAway (((n + 1) * n : ℚ) / 2)).toNat

end

end A006541.P2342259313587018791

noncomputable section

/-- A006541: Number of dissimilarity relations on an n-set.

Offset 1, canonical program `A006541.P2342259313587018791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006541 (n : ℕ) : ℤ :=
  A006541.P2342259313587018791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008473.P18266644889332251777

`∑{d}[n+1, A055231(#)]`
-/

namespace A008473.P18266644889332251777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055231 d

end

end A008473.P18266644889332251777

noncomputable section

/-- A008473: If n = Product (p_j^k_j) then a(n) = Product (p_j + k_j).

Offset 1, canonical program `A008473.P18266644889332251777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008473 (n : ℕ) : ℤ :=
  A008473.P18266644889332251777.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008507.P5510179153814837351

`A067076(n+1)-n`
-/

namespace A008507.P5510179153814837351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - (n : ℤ)

end

end A008507.P5510179153814837351

noncomputable section

/-- A008507: Number of odd composite numbers less than n-th odd prime.

Offset 1, canonical program `A008507.P5510179153814837351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008507 (n : ℕ) : ℤ :=
  A008507.P5510179153814837351.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010555.P8824829674371752059

`(-1)^(1-A353629(n+1))`
-/

namespace A010555.P8824829674371752059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (1 - A353629 (n + 1) : ℤ)

end

end A010555.P8824829674371752059

noncomputable section

/-- A010555: a(n) = 1 if n is the product of an even number of distinct primes, otherwise a(n) = -1.

Offset 1, canonical program `A010555.P8824829674371752059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010555.P8824829674371752059.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011264.P11087742381931658999

`A356191(n+1)/A007913(n+1)`
-/

namespace A011264.P11087742381931658999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A011264.P11087742381931658999

noncomputable section

/-- A011264: In the prime factorization of n, increment even powers and decrement odd powers (multiplicative).

Offset 1, canonical program `A011264.P11087742381931658999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011264.P11087742381931658999.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011785.P6762515857050156421

`A046970(n+1)*A063453(n+1)*A000578(n+1)*A003557(n+1)^5`
-/

namespace A011785.P6762515857050156421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) * A063453 (n + 1) * A000578 (n + 1) * A003557 (n + 1) ^ 5

end

end A011785.P6762515857050156421

noncomputable section

/-- A011785: Number of 3 X 3 matrices whose determinant is 1 mod n.

Offset 1, canonical program `A011785.P6762515857050156421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011785 (n : ℕ) : ℤ :=
  A011785.P6762515857050156421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014302.P15333125040278370706

`A000040(n+3)*A005097(n+1)`
-/

namespace A014302.P15333125040278370706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A005097 (n + 1)

end

end A014302.P15333125040278370706

noncomputable section

/-- A014302: a(n) = prime(n)*(prime(n-1)-1)/2.

Offset 3, canonical program `A014302.P15333125040278370706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014302 (n : ℕ) : ℤ :=
  A014302.P15333125040278370706.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014303.P12243143900441004356

`A000040(n+1)*A005097(n+1)`
-/

namespace A014303.P12243143900441004356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A005097 (n + 1)

end

end A014303.P12243143900441004356

noncomputable section

/-- A014303: a(n) = prime(n)*(prime(n+1)-1)/2.

Offset 1, canonical program `A014303.P12243143900441004356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014303 (n : ℕ) : ℤ :=
  A014303.P12243143900441004356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014701.P12214863752987612616

`A056792(n+1)-1`
-/

namespace A014701.P12214863752987612616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (n + 1) - 1

end

end A014701.P12214863752987612616

noncomputable section

/-- A014701: Number of multiplications to compute n-th power by the Chandah-sutra method.

Offset 1, canonical program `A014701.P12214863752987612616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014701 (n : ℕ) : ℤ :=
  A014701.P12214863752987612616.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019472.P6177355047655397197

`A000670(n)-n!`
-/

namespace A019472.P6177355047655397197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - (Nat.factorial n : ℤ)

end

end A019472.P6177355047655397197

noncomputable section

/-- A019472: Weak preference orderings of n alternatives, i.e., orderings that have indifference between at least two alternatives.

Offset 0, canonical program `A019472.P6177355047655397197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019472 (n : ℕ) : ℤ :=
  A019472.P6177355047655397197.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019536.P11097363198339880753

`1/(n+1)*∑{#}[n, A000670(gcd(n+1, #))]`
-/

namespace A019536.P11097363198339880753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), A000670 (Nat.gcd (n + 1) k) : ℤ) : ℚ)

end

end A019536.P11097363198339880753

noncomputable section

/-- A019536: Number of length n necklaces with integer entries that cover an initial interval of positive integers.

Offset 1, canonical program `A019536.P11097363198339880753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019536.P11097363198339880753.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020942.P5836413996573018086

`A136496(n+1)-1`
-/

namespace A020942.P5836413996573018086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (n + 1) - 1

end

end A020942.P5836413996573018086

noncomputable section

/-- A020942: First column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A020942.P5836413996573018086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020942 (n : ℕ) : ℤ :=
  A020942.P5836413996573018086.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022094.P5430606946720260700

`A007504(A000040(n+1))`
-/

namespace A022094.P5430606946720260700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000040 (n + 1)).toNat

end

end A022094.P5430606946720260700

noncomputable section

/-- A022094: Sum of first prime(n) primes.

Offset 1, canonical program `A022094.P5430606946720260700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022094 (n : ℕ) : ℤ :=
  A022094.P5430606946720260700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023817.P4585500228112988024

`A023816(n+1)-A076191(n+1)`
-/

namespace A023817.P4585500228112988024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1) - A076191 (n + 1)

end

end A023817.P4585500228112988024

noncomputable section

/-- A023817: Sum of exponents in prime-power factorization of C(2n,n-1).

Offset 1, canonical program `A023817.P4585500228112988024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023817 (n : ℕ) : ℤ :=
  A023817.P4585500228112988024.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023817.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023991.P11280942998713057946

`A023978(n+1)-A076191(n+1)`
-/

namespace A023991.P11280942998713057946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (n + 1) - A076191 (n + 1)

end

end A023991.P11280942998713057946

noncomputable section

/-- A023991: Sum of exponents of primes in multinomial coefficient M(3n; n+1,n,n-1).

Offset 1, canonical program `A023991.P11280942998713057946`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023991 (n : ℕ) : ℤ :=
  A023991.P11280942998713057946.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024447.P10375712064982123198

`(A007504(n+1)²-A024450(n+1))/2`
-/

namespace A024447.P10375712064982123198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) ^ 2 - A024450 (n + 1) : ℚ) / 2

end

end A024447.P10375712064982123198

noncomputable section

/-- A024447: Sum of the products of the primes taken 2 at a time from the first n primes.

Offset 1, canonical program `A024447.P10375712064982123198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024447.P10375712064982123198.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025480.P15873863116418380882

`((n+1)/A006519(n+1)-1)/2`
-/

namespace A025480.P15873863116418380882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ) - 1) / 2

end

end A025480.P15873863116418380882

noncomputable section

/-- A025480: a(2n) = n, a(2n+1) = a(n).

Offset 0, canonical program `A025480.P15873863116418380882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025480.P15873863116418380882.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025529.P506781626872594642

`A001008(n+1)*A110566(n+1)`
-/

namespace A025529.P506781626872594642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A110566 (n + 1)

end

end A025529.P506781626872594642

noncomputable section

/-- A025529: a(n) = (1/1 + 1/2 + ... + 1/n)*lcm{1,2,...,n}.

Offset 1, canonical program `A025529.P506781626872594642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025529 (n : ℕ) : ℤ :=
  A025529.P506781626872594642.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026233.P9940021653241192436

`A049084(n+1)+A239968(n+1)`
-/

namespace A026233.P9940021653241192436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + A239968 (n + 1)

end

end A026233.P9940021653241192436

noncomputable section

/-- A026233: a(n) = j if n is the j-th prime, else a(n) = k if n is the k-th nonprime.

Offset 1, canonical program `A026233.P9940021653241192436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026233 (n : ℕ) : ℤ :=
  A026233.P9940021653241192436.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032109.P1396432789263805078

`(A000670(n)+1)/2`
-/

namespace A032109.P1396432789263805078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n + 1 : ℚ) / 2

end

end A032109.P1396432789263805078

noncomputable section

/-- A032109: "BIJ" (reversible, indistinct, labeled) transform of 1,1,1,1,...

Offset 0, canonical program `A032109.P1396432789263805078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032109 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032109.P1396432789263805078.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032924.P18310276245285467851

`A107680(n+1)+A107681(n+1)`
-/

namespace A032924.P18310276245285467851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107680 (n + 1) + A107681 (n + 1)

end

end A032924.P18310276245285467851

noncomputable section

/-- A032924: Numbers whose ternary expansion contains no 0.

Offset 1, canonical program `A032924.P18310276245285467851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032924 (n : ℕ) : ℤ :=
  A032924.P18310276245285467851.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034958.P4957141392143406726

`A007504(A007504(n+1))-A007504(A007504(n))`
-/

namespace A034958.P4957141392143406726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 (n + 1)).toNat - A007504 (A007504 n).toNat

end

end A034958.P4957141392143406726

noncomputable section

/-- A034958: Divide primes into groups with prime(n) elements and add together.

Offset 1, canonical program `A034958.P4957141392143406726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034958 (n : ℕ) : ℤ :=
  A034958.P4957141392143406726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035026.P6817091043811235421

`A010051(n+1)+2*A061357(n+1)`
-/

namespace A035026.P6817091043811235421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 2 * A061357 (n + 1)

end

end A035026.P6817091043811235421

noncomputable section

/-- A035026: Number of times that i and 2n-i are both prime, for i = 1, ..., 2n-1.

Offset 1, canonical program `A035026.P6817091043811235421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035026 (n : ℕ) : ℤ :=
  A035026.P6817091043811235421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036295.P14687617779542184873

`A000295(n+1)/A006519(n+2)`
-/

namespace A036295.P14687617779542184873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000295 (n + 1) : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036295.P14687617779542184873

noncomputable section

/-- A036295: Numerator of Sum_{i=1..n} i/2^i.

Offset 0, canonical program `A036295.P14687617779542184873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036295.P14687617779542184873.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038110.P461440204907353454

`A005867(n)/A058250(n)`
-/

namespace A038110.P461440204907353454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 n : ℚ) / (A058250 n : ℚ)

end

end A038110.P461440204907353454

noncomputable section

/-- A038110: Numerator of frequency of integers with smallest divisor prime(n).

Offset 1, canonical program `A038110.P461440204907353454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038110.P461440204907353454.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038111.P13609288034708732001

`A000040(n+1)*A060753(n+1)`
-/

namespace A038111.P13609288034708732001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A060753 (n + 1)

end

end A038111.P13609288034708732001

noncomputable section

/-- A038111: Denominator of density of integers with smallest prime factor prime(n).

Offset 1, canonical program `A038111.P13609288034708732001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038111 (n : ℕ) : ℤ :=
  A038111.P13609288034708732001.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038192.P7022833363305945768

`12*A089893(n)+3`
-/

namespace A038192.P7022833363305945768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A089893 n + 3

end

end A038192.P7022833363305945768

noncomputable section

/-- A038192: Bisection of A001317.

Offset 0, canonical program `A038192.P7022833363305945768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038192 (n : ℕ) : ℤ :=
  A038192.P7022833363305945768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039982.P14190462007985872855

`A091090(n+1)%2`
-/

namespace A039982.P14190462007985872855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091090 (n + 1)) 2

end

end A039982.P14190462007985872855

noncomputable section

/-- A039982: Let phi denote the morphism 0 -> 11, 1 -> 10. This sequence is the limit S(oo) where S(0) = 1; S(n+1) = 1.phi(S(n)).

Offset 0, canonical program `A039982.P14190462007985872855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039982 (n : ℕ) : ℤ :=
  A039982.P14190462007985872855.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048967.P3595347913858362397

`A000120(A219843(n))`
-/

namespace A048967.P3595347913858362397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A219843 n).toNat

end

end A048967.P3595347913858362397

noncomputable section

/-- A048967: Number of even entries in row n of Pascal's triangle (A007318).

Offset 0, canonical program `A048967.P3595347913858362397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048967 (n : ℕ) : ℤ :=
  A048967.P3595347913858362397.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050464.P7511366373007771745

`A002131(n+1)-A050460(n+1)`
-/

namespace A050464.P7511366373007771745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - A050460 (n + 1)

end

end A050464.P7511366373007771745

noncomputable section

/-- A050464: a(n) = Sum_{d|n, n/d=3 mod 4} d.

Offset 1, canonical program `A050464.P7511366373007771745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050464 (n : ℕ) : ℤ :=
  A050464.P7511366373007771745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051000.P10741678327637826520

`∑{#}[n, A000203(2*(n+1)-2*#-1)*A000203(2*#+1)/A006519(n+1)^3]`
-/

namespace A051000.P10741678327637826520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000203 ((2 * (n + 1) : ℤ) - (2 * k : ℤ) - 1).toNat * A000203 (2 * k + 1) : ℚ) / (A006519 (n + 1) ^ 3 : ℚ)

end

end A051000.P10741678327637826520

noncomputable section

/-- A051000: Sum of cubes of odd divisors of n.

Offset 1, canonical program `A051000.P10741678327637826520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051000 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051000.P10741678327637826520.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052841.P2760152069748622988

`(A000670(n)+(-1)^n)/2`
-/

namespace A052841.P2760152069748622988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n + (-1) ^ n : ℚ) / 2

end

end A052841.P2760152069748622988

noncomputable section

/-- A052841: Expansion of e.g.f.: 1/(exp(x)*(2-exp(x))).

Offset 0, canonical program `A052841.P2760152069748622988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052841 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052841.P2760152069748622988.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052875.P13790807169799948261

`A000670(n)-1`
-/

namespace A052875.P13790807169799948261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - 1

end

end A052875.P13790807169799948261

noncomputable section

/-- A052875: E.g.f.: (exp(x)-1)^2/(2-exp(x)).

Offset 0, canonical program `A052875.P13790807169799948261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052875 (n : ℕ) : ℤ :=
  A052875.P13790807169799948261.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053106.P11488454185844579728

`A034830(n+2)/10`
-/

namespace A053106.P11488454185844579728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034830 (n + 2) : ℚ) / 10

end

end A053106.P11488454185844579728

noncomputable section

/-- A053106: a(n) = ((7*n+10)(!^7))/10(1^7), related to A034830 (((7*n+3)(!^7))/3 sept-, or 7-factorials).

Offset 0, canonical program `A053106.P11488454185844579728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053106.P11488454185844579728.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053115.P17177388115893748889

`A034908(n+2)/10`
-/

namespace A053115.P17177388115893748889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034908 (n + 2) : ℚ) / 10

end

end A053115.P17177388115893748889

noncomputable section

/-- A053115: a(n) = ((8*n+10)(!^8))/20, related to A034908 ((8*n+2)(!^8) octo- or 8-factorials).

Offset 0, canonical program `A053115.P17177388115893748889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053115.P17177388115893748889.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053683.P15420794164900351699

`A000040(n+1)²-A000879(n+1)`
-/

namespace A053683.P15420794164900351699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A000879 (n + 1)

end

end A053683.P15420794164900351699

noncomputable section

/-- A053683: Number of nonprimes <= prime(n)^2.

Offset 1, canonical program `A053683.P15420794164900351699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053683 (n : ℕ) : ℤ :=
  A053683.P15420794164900351699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054270.P1038476005510522765

`A000040(A000879(n+1))`
-/

namespace A054270.P1038476005510522765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000879 (n + 1)).toNat

end

end A054270.P1038476005510522765

noncomputable section

/-- A054270: Largest prime below prime(n)^2 (A001248).

Offset 1, canonical program `A054270.P1038476005510522765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054270 (n : ℕ) : ℤ :=
  A054270.P1038476005510522765.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054972.P9428946340247362724

`A007504(n+1)*A002110(n+1)`
-/

namespace A054972.P9428946340247362724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A002110 (n + 1)

end

end A054972.P9428946340247362724

noncomputable section

/-- A054972: Product of (sum of first n primes) and (product of first n primes).

Offset 1, canonical program `A054972.P9428946340247362724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054972 (n : ℕ) : ℤ :=
  A054972.P9428946340247362724.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055203.P13021467892477476973

`1/2^n*∑{#}[n, (-1)^(n-#)*C(n, #)*A000670(n+#)]`
-/

namespace A055203.P13021467892477476973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 ^ n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000670 (n + k) : ℚ))

end

end A055203.P13021467892477476973

noncomputable section

/-- A055203: Number of different relations between n intervals on a line.

Offset 0, canonical program `A055203.P13021467892477476973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055203.P13021467892477476973.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056609.P7907893811472579024

`A034386(n+1)/A056606(n+1)`
-/

namespace A056609.P7907893811472579024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A056606 (n + 1) : ℚ)

end

end A056609.P7907893811472579024

noncomputable section

/-- A056609: a(n) = rad(n!)/rad(A001142(n)) where rad(n) is the squarefree kernel of n, A007947(n).

Offset 1, canonical program `A056609.P7907893811472579024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056609.P7907893811472579024.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057661.P8562176095648835282

`(1+A057660(n+1))/2`
-/

namespace A057661.P8562176095648835282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A057660 (n + 1) : ℚ) / 2

end

end A057661.P8562176095648835282

noncomputable section

/-- A057661: a(n) = Sum_{k=1..n} lcm(n,k)/n.

Offset 1, canonical program `A057661.P8562176095648835282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057661.P8562176095648835282.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058344.P14948446550207623849

`A002129(n+1)+(-1)^(n+1)*(n+1)`
-/

namespace A058344.P14948446550207623849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) + (-1) ^ (n + 1) * (n + 1 : ℤ)

end

end A058344.P14948446550207623849

noncomputable section

/-- A058344: Difference between the sum of the odd aliquot divisors of n and the sum of the even aliquot divisors of n.

Offset 1, canonical program `A058344.P14948446550207623849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058344 (n : ℕ) : ℤ :=
  A058344.P14948446550207623849.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058384.P14718833059081358407

`A006519(A006093(n+1))`
-/

namespace A058384.P14718833059081358407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006093 (n + 1)).toNat

end

end A058384.P14718833059081358407

noncomputable section

/-- A058384: Largest power of 2 which is a divisor of p(n)-1, where p(n) = n-th prime.

Offset 1, canonical program `A058384.P14718833059081358407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058384 (n : ℕ) : ℤ :=
  A058384.P14718833059081358407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059159.P5461267207590208954

`4*A006519(n+1)`
-/

namespace A059159.P5461267207590208954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006519 (n + 1)

end

end A059159.P5461267207590208954

noncomputable section

/-- A059159: A hierarchical sequence (W'2{2}*c) - see A059126.

Offset 1, canonical program `A059159.P5461267207590208954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059159 (n : ℕ) : ℤ :=
  A059159.P5461267207590208954.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059161.P11618394600926942160

`12*A006519(n+1)`
-/

namespace A059161.P11618394600926942160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A006519 (n + 1)

end

end A059161.P11618394600926942160

noncomputable section

/-- A059161: A hierarchical sequence (W'2{3}*c - see A059126).

Offset 0, canonical program `A059161.P11618394600926942160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059161 (n : ℕ) : ℤ :=
  A059161.P11618394600926942160.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059164.P8258123959311374398

`16*A006519(n+1)`
-/

namespace A059164.P8258123959311374398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A006519 (n + 1)

end

end A059164.P8258123959311374398

noncomputable section

/-- A059164: A hierarchical sequence (W'3{2,2}*cc - see A059126).

Offset 0, canonical program `A059164.P8258123959311374398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059164 (n : ℕ) : ℤ :=
  A059164.P8258123959311374398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059268.P15217573790077737885

`A018900(n+1)-A140513(n)`
-/

namespace A059268.P15217573790077737885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A140513 n

end

end A059268.P15217573790077737885

noncomputable section

/-- A059268: Concatenate subsequences [2^0, 2^1, ..., 2^n] for n = 0, 1, 2, ...

Offset 0, canonical program `A059268.P15217573790077737885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268 (n : ℕ) : ℤ :=
  A059268.P15217573790077737885.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059516.P17745542743799278906

`1/2^n*∑{#}[n, C(n, #)*A000670(n+#)]`
-/

namespace A059516.P17745542743799278906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 ^ n : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000670 (n + k) : ℤ) : ℚ)

end

end A059516.P17745542743799278906

noncomputable section

/-- A059516: Number of different relations between n intervals (possibly of zero length) on a line.

Offset 0, canonical program `A059516.P17745542743799278906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059516 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059516.P17745542743799278906.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059516.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059991.P15103997828559681085

`2^(n+1-A006519(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059991.P15103997828559681085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A006519 (n + 1) : ℤ)

end

end A059991.P15103997828559681085

noncomputable section

/-- A059991: a(n) = 2^(n-2^ord_2(n)) (or 2^(n-A006519(n))).

Offset 1, canonical program `A059991.P15103997828559681085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059991.P15103997828559681085.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060025.P9020648666092478282

`A026811(n+5)-A026812(n+5)`
-/

namespace A060025.P9020648666092478282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 5) - A026812 (n + 5)

end

end A060025.P9020648666092478282

noncomputable section

/-- A060025: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 6.

Offset 0, canonical program `A060025.P9020648666092478282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060025 (n : ℕ) : ℤ :=
  A060025.P9020648666092478282.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060367.P9155873147261738328

`floor(A057660(n+1)/(n+1))`
-/

namespace A060367.P9155873147261738328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057660 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P9155873147261738328

noncomputable section

/-- A060367: Average order of an element in a cyclic group of order n rounded down.

Offset 1, canonical program `A060367.P9155873147261738328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060367 (n : ℕ) : ℤ :=
  A060367.P9155873147261738328.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060620.P18002916357615302440

`floor(A007504(n+1)/(n+1))`
-/

namespace A060620.P18002916357615302440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P18002916357615302440

noncomputable section

/-- A060620: Average of the first n primes rounded down.

Offset 1, canonical program `A060620.P18002916357615302440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060620 (n : ℕ) : ℤ :=
  A060620.P18002916357615302440.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060865.P5933490346264711898

`A006519(A000045(n+1))`
-/

namespace A060865.P5933490346264711898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000045 (n + 1)).toNat

end

end A060865.P5933490346264711898

noncomputable section

/-- A060865: a(n) is the exact power of 2 that divides the n-th Fibonacci number (A000045).

Offset 1, canonical program `A060865.P5933490346264711898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060865 (n : ℕ) : ℤ :=
  A060865.P5933490346264711898.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060939.P1241768612471461444

`A007504(n+1)+n+1`
-/

namespace A060939.P1241768612471461444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (n + 1 : ℤ)

end

end A060939.P1241768612471461444

noncomputable section

/-- A060939: a(n) = (Sum of the first n primes) + n.

Offset 1, canonical program `A060939.P1241768612471461444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060939 (n : ℕ) : ℤ :=
  A060939.P1241768612471461444.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061002.P3672038578860956447

`A120285(n+3)/A001248(n+3)`
-/

namespace A061002.P3672038578860956447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120285 (n + 3) : ℚ) / (A001248 (n + 3) : ℚ)

end

end A061002.P3672038578860956447

noncomputable section

/-- A061002: As p runs through the primes >= 5, sequence gives { numerator of Sum_{k=1..p-1} 1/k } / p^2.

Offset 3, canonical program `A061002.P3672038578860956447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061002.P3672038578860956447.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061066.P10749500264969965576

`A000217(A005097(n+1))`
-/

namespace A061066.P10749500264969965576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A005097 (n + 1)).toNat

end

end A061066.P10749500264969965576

noncomputable section

/-- A061066: a(n) = (prime(n)^2 - 1)/8.

Offset 2, canonical program `A061066.P10749500264969965576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061066 (n : ℕ) : ℤ :=
  A061066.P10749500264969965576.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061066.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000005.P16091521709108585461

`A032741(n+1)+1`
-/

namespace A000005.P16091521709108585461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

end

end A000005.P16091521709108585461

noncomputable section

/-- A000005: d(n) (also called tau(n) or sigma_0(n)), the number of divisors of n.

Offset 1, canonical program `A000005.P16091521709108585461`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000005.anchor (n : ℕ) (hn : 1 ≤ n) : A000005 n = (ArithmeticFunction.sigma 0 n : ℤ)` in `Proof.A000.A000005`. -/
def A000005 (n : ℕ) : ℤ :=
  A000005.P16091521709108585461.a (n - 1)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000005.anchor (n : ℕ) (hn : 1 ≤ n) : A000005 n = (ArithmeticFunction.sigma 0 n : ℤ)` in `Proof.A000.A000005`. -/
def A000005.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000989.P3200241698253008454

`A007949(n+1)+A067397(n)`
-/

namespace A000989.P3200241698253008454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A067397 n

end

end A000989.P3200241698253008454

noncomputable section

/-- A000989: 3-adic valuation of binomial(2*n, n): largest k such that 3^k divides binomial(2*n, n).

Offset 0, canonical program `A000989.P3200241698253008454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000989 (n : ℕ) : ℤ :=
  A000989.P3200241698253008454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001511.P17146462531039486101

`log2(A006519(n+1))+1`
-/

namespace A001511.P17146462531039486101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006519 (n + 1) : ℝ) + 1

end

end A001511.P17146462531039486101

noncomputable section

/-- A001511: The ruler function: exponent of the highest power of 2 dividing 2n. Equivalently, the 2-adic valuation of 2n.

Offset 1, canonical program `A001511.P17146462531039486101`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001511.anchor (n : ℕ) (hn : 1 ≤ n) : A001511 n = (padicValNat 2 n + 1 : ℕ)` in `Proof.A001.A001511`. -/
def A001511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001511.P17146462531039486101.a (n - 1))

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001511.anchor (n : ℕ) (hn : 1 ≤ n) : A001511 n = (padicValNat 2 n + 1 : ℕ)` in `Proof.A001.A001511`. -/
def A001511.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A002654.P11574922253888480122

`A001826(n+1)-A001842(n+1)`
-/

namespace A002654.P11574922253888480122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - A001842 (n + 1)

end

end A002654.P11574922253888480122

noncomputable section

/-- A002654: Number of ways of writing n as a sum of at most two nonzero squares, where order matters; also (number of divisors of n of form 4m+1) - (number of divisors of form 4m+3).

Offset 1, canonical program `A002654.P11574922253888480122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002654 (n : ℕ) : ℤ :=
  A002654.P11574922253888480122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003071.P4419298609567822883

`a(n-1)+A006519(n)+A000120(n)-1` with `a(0)=0`
-/

namespace A003071.P4419298609567822883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A006519 n + A000120 n - 1

end

end A003071.P4419298609567822883

noncomputable section

/-- A003071: Sorting numbers: maximal number of comparisons for sorting n elements by list merging.

Offset 1, canonical program `A003071.P4419298609567822883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003071 (n : ℕ) : ℤ :=
  A003071.P4419298609567822883.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011787.P10772697605245278222

`A065128(n+1)/2`
-/

namespace A011787.P10772697605245278222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065128 (n + 1) : ℚ) / 2

end

end A011787.P10772697605245278222

noncomputable section

/-- A011787: Number of n X n matrices over Z_4 whose determinant is 1.

Offset 1, canonical program `A011787.P10772697605245278222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011787 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011787.P10772697605245278222.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019550.P18383690293496929747

`(n+1)*(10^(1+A004216(2*(n+1)))+2)`
-/

namespace A019550.P18383690293496929747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (2 * (n + 1)) : ℤ) + 2)

end

end A019550.P18383690293496929747

noncomputable section

/-- A019550: a(n) is the concatenation of n and 2n.

Offset 1, canonical program `A019550.P18383690293496929747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019550.P18383690293496929747.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020338.P4106658568687796505

`(n+1)*10^(A004216(n+1)+1)+n+1`
-/

namespace A020338.P4106658568687796505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A004216 (n + 1) + 1 : ℤ) + (n + 1 : ℚ)

end

end A020338.P4106658568687796505

noncomputable section

/-- A020338: Doublets: base-10 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020338.P4106658568687796505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020338.P4106658568687796505.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037862.P1436881661592222965

`A081604(n+1)-2*A081603(n+1)`
-/

namespace A037862.P1436881661592222965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (n + 1) - 2 * A081603 (n + 1)

end

end A037862.P1436881661592222965

noncomputable section

/-- A037862: a(n)=(number of digits <=1)-(number of digits >1) in base 3 representation of n.

Offset 1, canonical program `A037862.P1436881661592222965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037862 (n : ℕ) : ℤ :=
  A037862.P1436881661592222965.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045532.P6946035463198391959

`(n+1)*10^(A004216(A000040(n+1))+1)+A000040(n+1)`
-/

namespace A045532.P6946035463198391959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A004216 (A000040 (n + 1)).toNat + 1 : ℤ) + (A000040 (n + 1) : ℚ)

end

end A045532.P6946035463198391959

noncomputable section

/-- A045532: Concatenate n with n-th prime.

Offset 1, canonical program `A045532.P6946035463198391959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045532.P6946035463198391959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000086.P3359847833353072450

`A065959(n+1)%9`
-/

namespace A000086.P3359847833353072450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065959 (n + 1)) 9

end

end A000086.P3359847833353072450

noncomputable section

/-- A000086: Number of solutions to x^2 - x + 1 == 0 (mod n).

Offset 1, canonical program `A000086.P3359847833353072450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000086 (n : ℕ) : ℤ :=
  A000086.P3359847833353072450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000190.P11876554912645301274

`A000188(n+1)*A000188(A019554(n+1))`
-/

namespace A000190.P11876554912645301274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A000188 (A019554 (n + 1)).toNat

end

end A000190.P11876554912645301274

noncomputable section

/-- A000190: Number of solutions to x^4 == 0 (mod n).

Offset 1, canonical program `A000190.P11876554912645301274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190 (n : ℕ) : ℤ :=
  A000190.P11876554912645301274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001465.P11263082568877116543

`A000085(n)-A000704(n)`
-/

namespace A001465.P11263082568877116543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A000704 n

end

end A001465.P11263082568877116543

noncomputable section

/-- A001465: Number of degree-n odd permutations of order 2.

Offset 0, canonical program `A001465.P11263082568877116543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001465 (n : ℕ) : ℤ :=
  A001465.P11263082568877116543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001926.P4947141589014223367

`∑[∑[A002941(1+n)]]`
-/

namespace A001926.P4947141589014223367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002941 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001926.P4947141589014223367

noncomputable section

/-- A001926: G.f.: (1+x)^2/[(1-x)^4(1-x-x^2)^3].

Offset 0, canonical program `A001926.P4947141589014223367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A001926 (n : ℕ) : ℤ :=
  A001926.P4947141589014223367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A001926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002053.P987258939464935522

`fp[A072203(n+1)]+1`
-/

namespace A002053.P987258939464935522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A002053.P987258939464935522

noncomputable section

/-- A002053: a(n) = least value of m for which Liouville's function A002819(m) = -n.

Offset 0, canonical program `A002053.P987258939464935522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A002053 (n : ℕ) : ℤ :=
  (A002053.P987258939464935522.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A002053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003277.P8695969646720590871

`eq[1, gcd(n+1, A000010(n+1))]+1`
-/

namespace A003277.P8695969646720590871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A003277.P8695969646720590871

noncomputable section

/-- A003277: Cyclic numbers: k such that k and phi(k) are relatively prime; also k such that there is just one group of order k, i.e., A000001(k) = 1.

Offset 1, canonical program `A003277.P8695969646720590871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003277 (n : ℕ) : ℤ :=
  (A003277.P8695969646720590871.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004117.P2862625931059711381

`A004987(n)/A125824(n)`
-/

namespace A004117.P2862625931059711381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004987 n : ℚ) / (A125824 n : ℚ)

end

end A004117.P2862625931059711381

noncomputable section

/-- A004117: Numerators of expansion of (1-x)^(-1/3).

Offset 0, canonical program `A004117.P2862625931059711381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A004117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004117.P2862625931059711381.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A004117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004221.P6867410002021583751

`A004218(n+1)+A004219(n+1)-A004216(n+1)`
-/

namespace A004221.P6867410002021583751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + (A004219 (n + 1) - A004216 (n + 1))

end

end A004221.P6867410002021583751

noncomputable section

/-- A004221: a(n) = ceiling(10*log_10(n)).

Offset 1, canonical program `A004221.P6867410002021583751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004221 (n : ℕ) : ℤ :=
  A004221.P6867410002021583751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004741.P8751127324978194226

`A053615(n)+A004739(n+1)`
-/

namespace A004741.P8751127324978194226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + A004739 (n + 1)

end

end A004741.P8751127324978194226

noncomputable section

/-- A004741: Concatenation of sequences (1,3,..,2n-1,2n,2n-2,..,2) for n >= 1.

Offset 1, canonical program `A004741.P8751127324978194226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004741 (n : ℕ) : ℤ :=
  A004741.P8751127324978194226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004991.P16565924391553142663

`A004987(n)*A016777(n)`
-/

namespace A004991.P16565924391553142663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004987 n * A016777 n

end

end A004991.P16565924391553142663

noncomputable section

/-- A004991: a(n) = (3^n/n!) * Product_{k=0..n-1} (3*k + 4).

Offset 0, canonical program `A004991.P16565924391553142663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004991 (n : ℕ) : ℤ :=
  A004991.P16565924391553142663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005730.P9332930387800122468

`A245477(n)*A334085(n+1)`
-/

namespace A005730.P9332930387800122468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n * A334085 (n + 1)

end

end A005730.P9332930387800122468

noncomputable section

/-- A005730: Related to n-th powers of polynomials: factors complementary to A005731.

Offset 1, canonical program `A005730.P9332930387800122468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005730 (n : ℕ) : ℤ :=
  A005730.P9332930387800122468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006133.P5470453952817236000

`A003231(A006132(n+1))`
-/

namespace A006133.P5470453952817236000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (A006132 (n + 1)).toNat

end

end A006133.P5470453952817236000

noncomputable section

/-- A006133: Related to representations as sums of Fibonacci numbers.

Offset 1, canonical program `A006133.P5470453952817236000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006133 (n : ℕ) : ℤ :=
  A006133.P5470453952817236000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006321.P11907659347702420123

`Δ[A006320(n)-A006318(n+1)]`
-/

namespace A006321.P11907659347702420123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006320 n - A006318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006321.P11907659347702420123

noncomputable section

/-- A006321: Royal paths in a lattice.

Offset 0, canonical program `A006321.P11907659347702420123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A006321 (n : ℕ) : ℤ :=
  A006321.P11907659347702420123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A006321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006859.P302366829295062184

`A006333(n+1)/2`
-/

namespace A006859.P302366829295062184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006333 (n + 1) : ℚ) / 2

end

end A006859.P302366829295062184

noncomputable section

/-- A006859: From paths in the plane.

Offset 0, canonical program `A006859.P302366829295062184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006859.P302366829295062184.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007064.P15353569760162023814

`ceil(A001966(n)/2)`
-/

namespace A007064.P15353569760162023814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001966 n : ℚ) / 2⌉

end

end A007064.P15353569760162023814

noncomputable section

/-- A007064: Numbers not of form "nearest integer to n*tau", tau = (1+sqrt(5))/2.

Offset 1, canonical program `A007064.P15353569760162023814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007064 (n : ℕ) : ℤ :=
  A007064.P15353569760162023814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007406.P9044966727249400815

`∑[(1/(n+1))²]*A007407(n+1)`
-/

namespace A007406.P9044966727249400815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A007407 (n + 1) : ℚ)

end

end A007406.P9044966727249400815

noncomputable section

/-- A007406: Wolstenholme numbers: numerator of Sum_{k=1..n} 1/k^2.

Offset 1, canonical program `A007406.P9044966727249400815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A007406 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007406.P9044966727249400815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A007406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007617.P2828525512853381224

`∑[abs(Δ[comp[A000010(n+1)]])]`
-/

namespace A007617.P2828525512853381224
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P2828525512853381224

noncomputable section

/-- A007617: Values not in range of Euler phi function.

Offset 1, canonical program `A007617.P2828525512853381224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007617 (n : ℕ) : ℤ :=
  A007617.P2828525512853381224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007920.P3719263903022372137

`A007918(n)-n`
-/

namespace A007920.P3719263903022372137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - (n : ℤ)

end

end A007920.P3719263903022372137

noncomputable section

/-- A007920: Smallest number k such that n + k is prime.

Offset 0, canonical program `A007920.P3719263903022372137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007920 (n : ℕ) : ℤ :=
  A007920.P3719263903022372137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008334.P15363982407280049096

`∑{e}[A077063(1+n), #]`
-/

namespace A008334.P15363982407280049096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A008334.P15363982407280049096

noncomputable section

/-- A008334: Number of distinct primes dividing p-1, where p = n-th prime.

Offset 1, canonical program `A008334.P15363982407280049096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008334 (n : ℕ) : ℤ :=
  (A008334.P15363982407280049096.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008417.P12539990022854185462

`∑[A008416(n)]`
-/

namespace A008417.P12539990022854185462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008417.P12539990022854185462

noncomputable section

/-- A008417: Crystal ball sequence for 8-dimensional cubic lattice.

Offset 0, canonical program `A008417.P12539990022854185462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008417 (n : ℕ) : ℤ :=
  A008417.P12539990022854185462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008419.P5285812897450645151

`∑[A008418(n)]`
-/

namespace A008419.P5285812897450645151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008419.P5285812897450645151

noncomputable section

/-- A008419: Crystal ball sequence for 9-dimensional cubic lattice.

Offset 0, canonical program `A008419.P5285812897450645151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008419 (n : ℕ) : ℤ :=
  A008419.P5285812897450645151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008420.P15915323523869300231

`A008416(n)+2*A035603(n)`
-/

namespace A008420.P15915323523869300231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n + 2 * A035603 n

end

end A008420.P15915323523869300231

noncomputable section

/-- A008420: Coordination sequence for 10-dimensional cubic lattice.

Offset 0, canonical program `A008420.P15915323523869300231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008420 (n : ℕ) : ℤ :=
  A008420.P15915323523869300231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008493.P15021164243418089667

`A000582(n+9)+A008503(n)-A008492(n)`
-/

namespace A008493.P15021164243418089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (A008503 n - A008492 n)

end

end A008493.P15021164243418089667

noncomputable section

/-- A008493: Expansion of (1-x^11) / (1-x)^11.

Offset 0, canonical program `A008493.P15021164243418089667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493 (n : ℕ) : ℤ :=
  A008493.P15021164243418089667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008955.P3963352532862981248

`A269944(A099375(n)+1+n)`
-/

namespace A008955.P3963352532862981248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008955.P3963352532862981248

noncomputable section

/-- A008955: Triangle of central factorial numbers |t(2n,2n-2k)| read by rows.

Offset 0, canonical program `A008955.P3963352532862981248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A008955 (n : ℕ) : ℤ :=
  A008955.P3963352532862981248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A008955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008965.P16924218572130557635

`A000031(n+1)-1`
-/

namespace A008965.P16924218572130557635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - 1

end

end A008965.P16924218572130557635

noncomputable section

/-- A008965: Number of necklaces of sets of beads containing a total of n beads.

Offset 1, canonical program `A008965.P16924218572130557635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008965 (n : ℕ) : ℤ :=
  A008965.P16924218572130557635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008969.P18435323758028635306

`A112492(A099375(n)+1+n)`
-/

namespace A008969.P18435323758028635306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008969.P18435323758028635306

noncomputable section

/-- A008969: Triangle read by rows of differences of reciprocals of unity.

Offset 1, canonical program `A008969.P18435323758028635306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A008969 (n : ℕ) : ℤ :=
  A008969.P18435323758028635306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A008969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010063.P7006521606686204256

`A230641(a(n-1))` with `a(0)=1`
-/

namespace A010063.P7006521606686204256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230641 (a (n - 1)).toNat

end

end A010063.P7006521606686204256

noncomputable section

/-- A010063: a(n+1) = a(n) + sum of digits in base 3 representation of a(n), with a(0) = 1.

Offset 0, canonical program `A010063.P7006521606686204256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A010063 (n : ℕ) : ℤ :=
  A010063.P7006521606686204256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A010063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010065.P1949019084322697027

`A230631(a(n-1))` with `a(0)=1`
-/

namespace A010065.P1949019084322697027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230631 (a (n - 1)).toNat

end

end A010065.P1949019084322697027

noncomputable section

/-- A010065: a(n+1) = a(n) + sum of digits in base 4 representation of a(n), with a(0) = 1.

Offset 0, canonical program `A010065.P1949019084322697027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A010065 (n : ℕ) : ℤ :=
  A010065.P1949019084322697027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A010065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010066.P7325660255468530179

`A230865(a(n-1))` with `a(0)=1`
-/

namespace A010066.P7325660255468530179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230865 (a (n - 1)).toNat

end

end A010066.P7325660255468530179

noncomputable section

/-- A010066: a(n+1) = a(n) + sum of digits in base 5 representation of a(n).

Offset 0, canonical program `A010066.P7325660255468530179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A010066 (n : ℕ) : ℤ :=
  A010066.P7325660255468530179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A010066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010094.P10692849707894767376

`A008281(A099375(n)+1+n)`
-/

namespace A010094.P10692849707894767376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A099375 n + 1 + (n : ℤ)).toNat

end

end A010094.P10692849707894767376

noncomputable section

/-- A010094: Triangle of Euler-Bernoulli or Entringer numbers.

Offset 1, canonical program `A010094.P10692849707894767376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3081 terms. -/
def A010094 (n : ℕ) : ℤ :=
  A010094.P10692849707894767376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3081 terms. -/
def A010094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010369.P18079969665524213003

`A045651(n)%A008416(A257143(n))`
-/

namespace A010369.P18079969665524213003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045651 n) (A008416 (A257143 n).toNat)

end

end A010369.P18079969665524213003

noncomputable section

/-- A010369: Number of points of L1 norm 2n in root system version of E_8 lattice.

Offset 0, canonical program `A010369.P18079969665524213003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2794 terms. -/
def A010369 (n : ℕ) : ℤ :=
  A010369.P18079969665524213003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2794 terms. -/
def A010369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010849.P8260382940907642524

`Δ[Δ[A010683(n)/4]]`
-/

namespace A010849.P8260382940907642524
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010683 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010849.P8260382940907642524

noncomputable section

/-- A010849: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x. Sequence gives S(n-3,n).

Offset 0, canonical program `A010849.P8260382940907642524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A010849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010849.P8260382940907642524.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A010849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014148.P13536862953187256274

`∑[A007504(1+n)]`
-/

namespace A014148.P13536862953187256274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P13536862953187256274

noncomputable section

/-- A014148: a(n) = Sum_{m=1..n} Sum_{k=1..m} prime(k).

Offset 1, canonical program `A014148.P13536862953187256274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014148 (n : ℕ) : ℤ :=
  A014148.P13536862953187256274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014175.P16273743748470831240

`∑[A014173(n)]`
-/

namespace A014175.P16273743748470831240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014175.P16273743748470831240

noncomputable section

/-- A014175: Apply partial sum operator 4 times to Stern's sequence.

Offset 0, canonical program `A014175.P16273743748470831240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A014175 (n : ℕ) : ℤ :=
  A014175.P16273743748470831240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A014175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014342.P5534725002753522700

`A209403(1+n)-A343531(n+1)`
-/

namespace A014342.P5534725002753522700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (1 + n) - A343531 (n + 1)

end

end A014342.P5534725002753522700

noncomputable section

/-- A014342: Convolution of primes with themselves.

Offset 1, canonical program `A014342.P5534725002753522700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014342 (n : ℕ) : ℤ :=
  A014342.P5534725002753522700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014735.P2878794583540412204

`A014461(n+1)²`
-/

namespace A014735.P2878794583540412204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014461 (n + 1) ^ 2

end

end A014735.P2878794583540412204

noncomputable section

/-- A014735: Squares of odd numbers in triangle of Eulerian numbers that are not 1.

Offset 1, canonical program `A014735.P2878794583540412204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014735 (n : ℕ) : ℤ :=
  A014735.P2878794583540412204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015638.P8481897486134737571

`A015634(2+n)-A000292(n+2)`
-/

namespace A015638.P8481897486134737571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015634 (2 + n) - A000292 (n + 2)

end

end A015638.P8481897486134737571

noncomputable section

/-- A015638: Number of ordered quadruples of integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015638.P8481897486134737571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A015638 (n : ℕ) : ℤ :=
  A015638.P8481897486134737571.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A015638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015761.P5986724967069183809

`record[gcd(n+1, A001158(n+1)%A000010(n+1))]`
-/

namespace A015761.P5986724967069183809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A001158 (n + 1)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015761.P5986724967069183809

noncomputable section

/-- A015761: Numbers k such that phi(k) | sigma_3(k).

Offset 1, canonical program `A015761.P5986724967069183809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A015761 (n : ℕ) : ℤ :=
  (A015761.P5986724967069183809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A015761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015763.P16867863019437908684

`lt[A001160(n+1)%A000010(n+1), 1]+1`
-/

namespace A015763.P16867863019437908684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015763.P16867863019437908684

noncomputable section

/-- A015763: Numbers k such that phi(k) divides sigma_5(k).

Offset 1, canonical program `A015763.P16867863019437908684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A015763 (n : ℕ) : ℤ :=
  (A015763.P16867863019437908684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A015763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015814.P2308272231266712354

`record[gcd(n+1, A000203(n+1)%A000010(n+2))]`
-/

namespace A015814.P2308272231266712354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000203 (n + 1)) (A000010 (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015814.P2308272231266712354

noncomputable section

/-- A015814: Numbers k such that phi(k + 1) divides sigma(k).

Offset 1, canonical program `A015814.P2308272231266712354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A015814 (n : ℕ) : ℤ :=
  (A015814.P2308272231266712354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A015814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015819.P11809690103252451028

`lt[A000203(n+1)%A000010(n+4), 1]+1`
-/

namespace A015819.P11809690103252451028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 4))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015819.P11809690103252451028

noncomputable section

/-- A015819: Numbers k such that phi(k + 3) | sigma(k).

Offset 1, canonical program `A015819.P11809690103252451028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1073 terms. -/
def A015819 (n : ℕ) : ℤ :=
  (A015819.P11809690103252451028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1073 terms. -/
def A015819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015820.P11788765630809446508

`lt[A000203(n+1)%A000010(n+5), 1]+1`
-/

namespace A015820.P11788765630809446508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015820.P11788765630809446508

noncomputable section

/-- A015820: Numbers k such that phi(k + 4) | sigma(k).

Offset 1, canonical program `A015820.P11788765630809446508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A015820 (n : ℕ) : ℤ :=
  (A015820.P11788765630809446508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A015820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015823.P14101664896886442128

`lt[A000203(n+1)%A000010(n+8), 1]+1`
-/

namespace A015823.P14101664896886442128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 8))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015823.P14101664896886442128

noncomputable section

/-- A015823: Numbers k such that phi(k + 7) | sigma(k).

Offset 1, canonical program `A015823.P14101664896886442128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A015823 (n : ℕ) : ℤ :=
  (A015823.P14101664896886442128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A015823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015834.P6187228522220576603

`record[gcd(n+1, A000203(n+2)%A000010(n+1))]`
-/

namespace A015834.P6187228522220576603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000203 (n + 2)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015834.P6187228522220576603

noncomputable section

/-- A015834: Numbers k such that phi(k) | sigma(k + 1).

Offset 1, canonical program `A015834.P6187228522220576603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A015834 (n : ℕ) : ℤ :=
  (A015834.P6187228522220576603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A015834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015837.P10061482123831038346

`lt[A000203(n+3)%A000010(n+1), 1]+1`
-/

namespace A015837.P10061482123831038346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 3)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015837.P10061482123831038346

noncomputable section

/-- A015837: Numbers k such that phi(k) | sigma(k + 2).

Offset 1, canonical program `A015837.P10061482123831038346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A015837 (n : ℕ) : ℤ :=
  (A015837.P10061482123831038346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A015837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015843.P15126880474820996004

`lt[A000203(n+6)%A000010(n+1), 1]+1`
-/

namespace A015843.P15126880474820996004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 6)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015843.P15126880474820996004

noncomputable section

/-- A015843: Numbers k such that phi(k) | sigma(k + 5).

Offset 1, canonical program `A015843.P15126880474820996004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A015843 (n : ℕ) : ℤ :=
  (A015843.P15126880474820996004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A015843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015853.P2283416451843243793

`lt[A000203(n+10)%A000010(n+1), 1]+1`
-/

namespace A015853.P2283416451843243793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 10)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015853.P2283416451843243793

noncomputable section

/-- A015853: Numbers k such that phi(k) | sigma(k + 9).

Offset 1, canonical program `A015853.P2283416451843243793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A015853 (n : ℕ) : ℤ :=
  (A015853.P2283416451843243793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A015853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016008.P15707281332845573364

`ceil(A016001((n+1)²)/2)`
-/

namespace A016008.P15707281332845573364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016001 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A016008.P15707281332845573364

noncomputable section

/-- A016008: a(n) = (tau(n^12)+11)/12.

Offset 1, canonical program `A016008.P15707281332845573364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A016008 (n : ℕ) : ℤ :=
  A016008.P15707281332845573364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A016008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017666.P16572893466817104564

`A388283(n+1)-A390582(n+1)`
-/

namespace A017666.P16572893466817104564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (n + 1) - A390582 (n + 1)

end

end A017666.P16572893466817104564

noncomputable section

/-- A017666: Denominator of sum of reciprocals of divisors of n.

Offset 1, canonical program `A017666.P16572893466817104564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017666 (n : ℕ) : ℤ :=
  A017666.P16572893466817104564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017679.P5256545410646879571

`lcm(A013956(n+1), A053167(n+1))/A053167(n+1)`
-/

namespace A017679.P5256545410646879571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013956 (n + 1)) (A053167 (n + 1)) : ℚ) / (A053167 (n + 1) : ℚ)

end

end A017679.P5256545410646879571

noncomputable section

/-- A017679: Numerator of sum of -8th powers of divisors of n.

Offset 1, canonical program `A017679.P5256545410646879571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017679.P5256545410646879571.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019300.P12876685790779178674

`A010060(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A019300.P12876685790779178674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 n + 2 * a (n - 1)

end

end A019300.P12876685790779178674

noncomputable section

/-- A019300: First n elements of Thue-Morse sequence A010060 read as a binary number.

Offset 0, canonical program `A019300.P12876685790779178674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A019300 (n : ℕ) : ℤ :=
  A019300.P12876685790779178674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A019300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020938.P7358569268824993959

`A000720(Δ[8*A007504(n)])`
-/

namespace A020938.P7358569268824993959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020938.P7358569268824993959

noncomputable section

/-- A020938: Greatest k such that (k-th prime) < (8 times n-th prime).

Offset 1, canonical program `A020938.P7358569268824993959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A020938 (n : ℕ) : ℤ :=
  A020938.P7358569268824993959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A020938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020939.P15965853669222690897

`A000720(Δ[9*A007504(n)])`
-/

namespace A020939.P15965853669222690897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020939.P15965853669222690897

noncomputable section

/-- A020939: Greatest k such that (k-th prime) < (9 times n-th prime).

Offset 1, canonical program `A020939.P15965853669222690897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1345 terms. -/
def A020939 (n : ℕ) : ℤ :=
  A020939.P15965853669222690897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1345 terms. -/
def A020939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020940.P5276591918932101259

`A038801(Δ[A007504(n)])`
-/

namespace A020940.P5276591918932101259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (f1 (n + 1) - f1 n).toNat

end

end A020940.P5276591918932101259

noncomputable section

/-- A020940: Greatest k such that (k-th prime) < (10 times n-th prime).

Offset 1, canonical program `A020940.P5276591918932101259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A020940 (n : ℕ) : ℤ :=
  A020940.P5276591918932101259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A020940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022155.P5220891945683012309

`eq[1, A010060(and(n, 2*n))]`
-/

namespace A022155.P5220891945683012309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022155.P5220891945683012309

noncomputable section

/-- A022155: Values of n at which Golay-Rudin-Shapiro sequence A020985 is negative.

Offset 1, canonical program `A022155.P5220891945683012309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022155 (n : ℕ) : ℤ :=
  (A022155.P5220891945683012309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022423.P15658089662166041455

`A020793(n)+A022420(n)+2`
-/

namespace A022423.P15658089662166041455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020793 n + (A022420 n + 2)

end

end A022423.P15658089662166041455

noncomputable section

/-- A022423: Kim-sums: "Kimberling sums" K_n + K_12.

Offset 0, canonical program `A022423.P15658089662166041455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423 (n : ℕ) : ℤ :=
  A022423.P15658089662166041455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022797.P3696269492153289254

`A000040(n+1)+A018252(n+1)`
-/

namespace A022797.P3696269492153289254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A018252 (n + 1)

end

end A022797.P3696269492153289254

noncomputable section

/-- A022797: a(n) = n-th prime + n-th nonprime.

Offset 1, canonical program `A022797.P3696269492153289254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022797 (n : ℕ) : ℤ :=
  A022797.P3696269492153289254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022800.P2504383713306654643

`A020695(n)+A020695(n)-A014242(n+1)`
-/

namespace A022800.P2504383713306654643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A020695 n - A014242 (n + 1))

end

end A022800.P2504383713306654643

noncomputable section

/-- A022800: a(n) = F(n+2) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or is a non-Fibonacci number.

Offset 1, canonical program `A022800.P2504383713306654643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022800 (n : ℕ) : ℤ :=
  A022800.P2504383713306654643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022809.P14696953660419613344

`A020701(n)+A020701(n)-A014251(n+1)`
-/

namespace A022809.P14696953660419613344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (A020701 n - A014251 (n + 1))

end

end A022809.P14696953660419613344

noncomputable section

/-- A022809: a(n) = F(n+3) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or 2 or is not a Fibonacci number.

Offset 1, canonical program `A022809.P14696953660419613344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022809 (n : ℕ) : ℤ :=
  A022809.P14696953660419613344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022809.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023202.P11096894219968463901

`p?[A015915(n+1)]`
-/

namespace A023202.P11096894219968463901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023202.P11096894219968463901

noncomputable section

/-- A023202: Primes p such that p + 8 is also prime.

Offset 1, canonical program `A023202.P11096894219968463901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A023202 (n : ℕ) : ℤ :=
  A023202.P11096894219968463901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A023202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023207.P14272775065074491551

`p?[A067076(n+1)-3]`
-/

namespace A023207.P14272775065074491551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P14272775065074491551

noncomputable section

/-- A023207: Numbers m such that m and 2*m + 9 both prime.

Offset 1, canonical program `A023207.P14272775065074491551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A023207 (n : ℕ) : ℤ :=
  A023207.P14272775065074491551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A023207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023215.P13763397625159322075

`p?[2*A005124(n+1)-1]`
-/

namespace A023215.P13763397625159322075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005124 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P13763397625159322075

noncomputable section

/-- A023215: Primes p such that 4*p + 7 is also prime.

Offset 1, canonical program `A023215.P13763397625159322075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A023215 (n : ℕ) : ℤ :=
  A023215.P13763397625159322075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A023215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023229.P10386872787772600893

`p?[A005124(n+1)]`
-/

namespace A023229.P10386872787772600893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023229.P10386872787772600893

noncomputable section

/-- A023229: Primes p such that 8*p + 3 is also prime.

Offset 1, canonical program `A023229.P10386872787772600893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A023229 (n : ℕ) : ℤ :=
  A023229.P10386872787772600893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A023229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023244.P3210221976177104251

`p?[A319702(A023206(n+1))-5]`
-/

namespace A023244.P3210221976177104251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A023206 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023244.P3210221976177104251

noncomputable section

/-- A023244: Primes that remain prime through 2 iterations of the function f(x) = 2x + 7.

Offset 1, canonical program `A023244.P3210221976177104251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A023244 (n : ℕ) : ℤ :=
  A023244.P3210221976177104251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A023244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023497.P14393320893270749846

`A023496(n)+Δ[A001911(n)]`
-/

namespace A023497.P14393320893270749846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + (f1 (n + 1) - f1 n)

end

end A023497.P14393320893270749846

noncomputable section

/-- A023497: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th number that is 1 or is not a Lucas number).

Offset 0, canonical program `A023497.P14393320893270749846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023497 (n : ℕ) : ℤ :=
  A023497.P14393320893270749846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023502.P3083904464572208669

`A023501(n)+A000045(n)`
-/

namespace A023502.P3083904464572208669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023501 n + A000045 n

end

end A023502.P3083904464572208669

noncomputable section

/-- A023502: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2 ) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

Offset 0, canonical program `A023502.P3083904464572208669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023502 (n : ℕ) : ℤ :=
  A023502.P3083904464572208669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023547.P12137966802095583641

`∑[n+2]-A023546(n+1)`
-/

namespace A023547.P12137966802095583641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023546 (n + 1)

end

end A023547.P12137966802095583641

noncomputable section

/-- A023547: Convolution of natural numbers >= 2 and A023532.

Offset 1, canonical program `A023547.P12137966802095583641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023547 (n : ℕ) : ℤ :=
  A023547.P12137966802095583641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023565.P4153275434603925833

`∑{#}[n, A023533(#+1)*A023531(n+1-#)]`
-/

namespace A023565.P4153275434603925833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A023533 (k + 1) * A023531 (n + 1 - k)

end

end A023565.P4153275434603925833

noncomputable section

/-- A023565: Convolution of A023531 and A023533.

Offset 1, canonical program `A023565.P4153275434603925833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023565 (n : ℕ) : ℤ :=
  A023565.P4153275434603925833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023601.P4165196643065523488

`(n+1)²-A023562(n+1)`
-/

namespace A023601.P4165196643065523488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A023562 (n + 1)

end

end A023601.P4165196643065523488

noncomputable section

/-- A023601: Convolution of A023532 and odd numbers.

Offset 1, canonical program `A023601.P4165196643065523488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023601 (n : ℕ) : ℤ :=
  A023601.P4165196643065523488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023650.P4083943245598121873

`∑[∑[∑[A161811(n+1)]]+n]`
-/

namespace A023650.P4083943245598121873
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023650.P4083943245598121873

noncomputable section

/-- A023650: Convolution of composite numbers and odd numbers.

Offset 1, canonical program `A023650.P4083943245598121873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650 (n : ℕ) : ℤ :=
  A023650.P4083943245598121873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023654.P10718352806288763410

`A023612(1+n)-A001950(n+2)`
-/

namespace A023654.P10718352806288763410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023612 (1 + n) - A001950 (n + 2)

end

end A023654.P10718352806288763410

noncomputable section

/-- A023654: Convolution of (F(2), F(3), F(4), ...) and A001950.

Offset 1, canonical program `A023654.P10718352806288763410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023654 (n : ℕ) : ℤ :=
  A023654.P10718352806288763410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023659.P4285444528127486277

`A023658(1+n)+∑[(n+1)²]`
-/

namespace A023659.P4285444528127486277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023658 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023659.P4285444528127486277

noncomputable section

/-- A023659: Convolution of odd numbers and A001950.

Offset 1, canonical program `A023659.P4285444528127486277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023659 (n : ℕ) : ℤ :=
  A023659.P4285444528127486277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023661.P16263396231945156990

`(1+n)²-A023660(n+1)`
-/

namespace A023661.P16263396231945156990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ 2 : ℤ) - A023660 (n + 1)

end

end A023661.P16263396231945156990

noncomputable section

/-- A023661: Convolution of odd numbers and A014306.

Offset 1, canonical program `A023661.P16263396231945156990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023661 (n : ℕ) : ℤ :=
  A023661.P16263396231945156990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023666.P7944422711987887972

`∑[∑[A001468(n)]]-A023665(n+1)`
-/

namespace A023666.P7944422711987887972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023665 (n + 1)

end

end A023666.P7944422711987887972

noncomputable section

/-- A023666: Convolution of A000201 and A014306.

Offset 1, canonical program `A023666.P7944422711987887972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023666 (n : ℕ) : ℤ :=
  A023666.P7944422711987887972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023674.P16593079824810619227

`A007504(1+n)-A023672(n+1)`
-/

namespace A023674.P16593079824810619227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (1 + n) - A023672 (n + 1)

end

end A023674.P16593079824810619227

noncomputable section

/-- A023674: Convolution of A014306 (starting 0,0,1,1,0,1,1,1,1,...) and primes.

Offset 1, canonical program `A023674.P16593079824810619227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023674 (n : ℕ) : ℤ :=
  A023674.P16593079824810619227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023805.P16094860154420374150

`comp[∑[12*A078650(2^n)]]`
-/

namespace A023805.P16094860154420374150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A078650 (2 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023805.P16094860154420374150

noncomputable section

/-- A023805: Xenodromes: all digits in base 11 are different.

Offset 1, canonical program `A023805.P16094860154420374150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A023805 (n : ℕ) : ℤ :=
  (A023805.P16094860154420374150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A023805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023837.P5350256569569073344

`A023982(n)-A023826(n)`
-/

namespace A023837.P5350256569569073344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - A023826 n

end

end A023837.P5350256569569073344

noncomputable section

/-- A023837: Sum of exponents in prime-power factorization of C(5n,n).

Offset 0, canonical program `A023837.P5350256569569073344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023837 (n : ℕ) : ℤ :=
  A023837.P5350256569569073344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023848.P4594524187087143151

`A023847(n+1)-A001222(3*(n+1)+1)+A001222(2*(n+1))`
-/

namespace A023848.P4594524187087143151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 (n + 1) - A001222 (3 * (n + 1) + 1) + A001222 (2 * (n + 1))

end

end A023848.P4594524187087143151

noncomputable section

/-- A023848: Sum of exponents in prime-power factorization of binomial(5n, 2n-1).

Offset 1, canonical program `A023848.P4594524187087143151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023848 (n : ℕ) : ℤ :=
  A023848.P4594524187087143151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023850.P6926133530708258885

`A023847(n+1)+A001222(3*(n+1))-A001222(2*(n+1)+1)`
-/

namespace A023850.P6926133530708258885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 (n + 1) + A001222 (3 * (n + 1)) - A001222 (2 * (n + 1) + 1)

end

end A023850.P6926133530708258885

noncomputable section

/-- A023850: Sum of exponents in prime-power factorization of binomial(5n, 2n+1).

Offset 1, canonical program `A023850.P6926133530708258885`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023850 (n : ℕ) : ℤ :=
  A023850.P6926133530708258885.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023864.P1322139053120086111

`A023860(n+3)-A129361(n+2)`
-/

namespace A023864.P1322139053120086111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 3) - A129361 (n + 2)

end

end A023864.P1322139053120086111

noncomputable section

/-- A023864: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t = (F(2), F(3), F(4), ...), F(n) = Fibonacci(n).

Offset 1, canonical program `A023864.P1322139053120086111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023864 (n : ℕ) : ℤ :=
  A023864.P1322139053120086111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023869.P11339199241396171521

`A008805(n)-A023868(n+1)`
-/

namespace A023869.P11339199241396171521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A023868 (n + 1)

end

end A023869.P11339199241396171521

noncomputable section

/-- A023869: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t is A014306.

Offset 1, canonical program `A023869.P11339199241396171521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023869 (n : ℕ) : ℤ :=
  A023869.P11339199241396171521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023987.P15737227295791123908

`A023847(n)-A023819(n)`
-/

namespace A023987.P15737227295791123908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n - A023819 n

end

end A023987.P15737227295791123908

noncomputable section

/-- A023987: Sum of exponents of primes in C(5n,3n) - sum of exponents of primes in C(3n,2n).

Offset 0, canonical program `A023987.P15737227295791123908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023987 (n : ℕ) : ℤ :=
  A023987.P15737227295791123908.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024326.P382820402442882644

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A023533(n+1-#)]`
-/

namespace A024326.P382820402442882644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A023533 (n + 1 - k)

end

end A024326.P382820402442882644

noncomputable section

/-- A024326: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A023533.

Offset 1, canonical program `A024326.P382820402442882644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024326 (n : ℕ) : ℤ :=
  A024326.P382820402442882644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024327.P5223277942184589904

`∑{#}[floor((n+2)/2)-1, A023531(#+1)*A014306(n+1-#)]`
-/

namespace A024327.P5223277942184589904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 1) * A014306 (n + 1 - k)

end

end A024327.P5223277942184589904

noncomputable section

/-- A024327: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor( (n+1)/2 ), s = A023531, t = A014306.

Offset 1, canonical program `A024327.P5223277942184589904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024327 (n : ℕ) : ℤ :=
  A024327.P5223277942184589904.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024570.P11252965445608620412

`∑[A024569(1+n)]`
-/

namespace A024570.P11252965445608620412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024570.P11252965445608620412

noncomputable section

/-- A024570: a(n) = Sum_{k=1..n} [ 1/{k*r} ] where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

Offset 1, canonical program `A024570.P11252965445608620412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024570 (n : ℕ) : ℤ :=
  A024570.P11252965445608620412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024690.P14853804426437774710

`A024687(1+n)+A023868(n+1)`
-/

namespace A024690.P14853804426437774710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024687 (1 + n) + A023868 (n + 1)

end

end A024690.P14853804426437774710

noncomputable section

/-- A024690: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A001950 (upper Wythoff sequence), t = A023533.

Offset 1, canonical program `A024690.P14853804426437774710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024690 (n : ℕ) : ℤ :=
  A024690.P14853804426437774710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024706.P297945440486149003

`eq[3, gcd(3, A024702(n+3))]+3`
-/

namespace A024706.P297945440486149003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A024702 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A024706.P297945440486149003

noncomputable section

/-- A024706: Positions of multiples of 3 in A024702.

Offset 1, canonical program `A024706.P297945440486149003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A024706 (n : ℕ) : ℤ :=
  (A024706.P297945440486149003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A024706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024708.P5871249470200672772

`∑{p}[A024702(n+3), A001222(#)]`
-/

namespace A024708.P5871249470200672772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A024708.P5871249470200672772

noncomputable section

/-- A024708: Number of distinct prime divisors of n-th term of A024702.

Offset 3, canonical program `A024708.P5871249470200672772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A024708 (n : ℕ) : ℤ :=
  A024708.P5871249470200672772.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. -/
def A024708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024711.P17362472151615926000

`A024702(3+n)%2`
-/

namespace A024711.P17362472151615926000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024702 (3 + n)) 2

end

end A024711.P17362472151615926000

noncomputable section

/-- A024711: a(n) = residue mod 2 of n-th term of A024702.

Offset 3, canonical program `A024711.P17362472151615926000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024711 (n : ℕ) : ℤ :=
  A024711.P17362472151615926000.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024712.P13920250056796469756

`(A024700(n+1)/2)%3`
-/

namespace A024712.P13920250056796469756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A024700 (n + 1) : ℚ) / 2)) 3

end

end A024712.P13920250056796469756

noncomputable section

/-- A024712: a(n) = residue mod 3 of n-th term of A024702.

Offset 3, canonical program `A024712.P13920250056796469756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024712 (n : ℕ) : ℤ :=
  A024712.P13920250056796469756.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024713.P1693480862469099154

`(A024700(n+1)/8)%5`
-/

namespace A024713.P1693480862469099154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A024700 (n + 1) : ℚ) / 8)) 5

end

end A024713.P1693480862469099154

noncomputable section

/-- A024713: a(n) = residue mod 5 of n-th term of A024702.

Offset 3, canonical program `A024713.P1693480862469099154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024713 (n : ℕ) : ℤ :=
  A024713.P1693480862469099154.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024714.P16941747472580991447

`A024700(1+n)%7`
-/

namespace A024714.P16941747472580991447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024700 (1 + n)) 7

end

end A024714.P16941747472580991447

noncomputable section

/-- A024714: a(n) = residue mod 7 of n-th term of A024702.

Offset 3, canonical program `A024714.P16941747472580991447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024714 (n : ℕ) : ℤ :=
  A024714.P16941747472580991447.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024715.P948663604118300273

`A024702(n+3)%11`
-/

namespace A024715.P948663604118300273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024702 (n + 3)) 11

end

end A024715.P948663604118300273

noncomputable section

/-- A024715: a(n) = residue mod 11 of n-th term of A024702.

Offset 3, canonical program `A024715.P948663604118300273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024715 (n : ℕ) : ℤ :=
  A024715.P948663604118300273.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024891.P767184714006432236

`∑{#}[floor((n+2)/2)-2, A023531(#+2)*A000040(n+1-#)]`
-/

namespace A024891.P767184714006432236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A023531 (k + 2) * A000040 (n + 1 - k)

end

end A024891.P767184714006432236

noncomputable section

/-- A024891: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = (primes).

Offset 2, canonical program `A024891.P767184714006432236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A024891 (n : ℕ) : ℤ :=
  A024891.P767184714006432236.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A024891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025087.P1724409119476889177

`∑[A079977(n)]-A025086(n+2)`
-/

namespace A025087.P1724409119476889177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025086 (n + 2)

end

end A025087.P1724409119476889177

noncomputable section

/-- A025087: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = A014306.

Offset 1, canonical program `A025087.P1724409119476889177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A025087 (n : ℕ) : ℤ :=
  A025087.P1724409119476889177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A025087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025092.P5540335712594963880

`2*(A023610(n+2)-A024458(n+4))-A025082(n+1)`
-/

namespace A025092.P5540335712594963880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023610 (n + 2) - A024458 (n + 4)) - A025082 (n + 1)

end

end A025092.P5540335712594963880

noncomputable section

/-- A025092: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (F(2), F(3), F(4), ...).

Offset 1, canonical program `A025092.P5540335712594963880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A025092 (n : ℕ) : ℤ :=
  A025092.P5540335712594963880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A025092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025125.P8210852573185323114

`floor(A023670(2+n)/2)`
-/

namespace A025125.P8210852573185323114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023670 (2 + n) : ℚ) / 2⌋

end

end A025125.P8210852573185323114

noncomputable section

/-- A025125: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n-k+1), where k = floor(n/2), s = A023533.

Offset 1, canonical program `A025125.P8210852573185323114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025125 (n : ℕ) : ℤ :=
  A025125.P8210852573185323114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025710.P12530225791585977841

`∑[A011262(A011262(floor(n/γ-n)+1))]`
-/

namespace A025710.P12530225791585977841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A011262 (⌊(n : ℝ) / Real.eulerMascheroniConstant - (n : ℝ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025710.P12530225791585977841

noncomputable section

/-- A025710: Index of 5^n within the sequence of the numbers of the form 5^i*9^j.

Offset 0, canonical program `A025710.P12530225791585977841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A025710 (n : ℕ) : ℤ :=
  A025710.P12530225791585977841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A025710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025713.P13982271668785102792

`A022331(n)+∑[n]`
-/

namespace A025713.P13982271668785102792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022331 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025713.P13982271668785102792

noncomputable section

/-- A025713: Index of 6^n within the sequence of the numbers of the form 3^i*6^j.

Offset 0, canonical program `A025713.P13982271668785102792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025713 (n : ℕ) : ℤ :=
  A025713.P13982271668785102792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026018.P10843162579093165201

`A026014(n+3)-A026017(n+3)`
-/

namespace A026018.P10843162579093165201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 3) - A026017 (n + 3)

end

end A026018.P10843162579093165201

noncomputable section

/-- A026018: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2*n-1) = 7. Also a(n) = T(2*n-1,n-3), where T is the array defined in A026009.

Offset 3, canonical program `A026018.P10843162579093165201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026018 (n : ℕ) : ℤ :=
  A026018.P10843162579093165201.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026027.P8038761387081336440

`A026014(n+2)-A000588(n+2)`
-/

namespace A026027.P8038761387081336440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 2) - A000588 (n + 2)

end

end A026027.P8038761387081336440

noncomputable section

/-- A026027: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2*n-1) = 6. Also a(n) = T(2*n-1,n-2), where T is defined in A026022.

Offset 2, canonical program `A026027.P8038761387081336440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026027 (n : ℕ) : ℤ :=
  A026027.P8038761387081336440.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026069.P16315851450767676946

`Δ[A025180(2+n)]`
-/

namespace A026069.P16315851450767676946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026069.P16315851450767676946

noncomputable section

/-- A026069: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A024996.

Offset 3, canonical program `A026069.P16315851450767676946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026069 (n : ℕ) : ℤ :=
  A026069.P16315851450767676946.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A026069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026079.P1305157581400513243

`A024998(1+n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A026079.P1305157581400513243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A024998 (1 + n) + a (n - 1)

end

end A026079.P1305157581400513243

noncomputable section

/-- A026079: a(n) = Sum_{k = 1..n} T(k,k-1), where T is the array defined in A024996.

Offset 1, canonical program `A026079.P1305157581400513243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026079 (n : ℕ) : ℤ :=
  A026079.P1305157581400513243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026083.P6765434613057378848

`2*A024998(3+n)`
-/

namespace A026083.P6765434613057378848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024998 (3 + n)

end

end A026083.P6765434613057378848

noncomputable section

/-- A026083: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0 = s(n), |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4. Also a(n) = T(n,n), where T is the array defined in A026082.

Offset 4, canonical program `A026083.P6765434613057378848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026083 (n : ℕ) : ℤ :=
  A026083.P6765434613057378848.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026084.P13887136497194714556

`Δ[A024998(3+n)]`
-/

namespace A026084.P13887136497194714556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026084.P13887136497194714556

noncomputable section

/-- A026084: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 1. Also a(n) = T(n,n-1), where T is the array defined in A026082.

Offset 4, canonical program `A026084.P13887136497194714556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026084 (n : ℕ) : ℤ :=
  A026084.P13887136497194714556.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026095.P2665066973868391948

`A024998(n+1)-A115634(A001223(n+1))`
-/

namespace A026095.P2665066973868391948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1) - A115634 (A001223 (n + 1)).toNat

end

end A026095.P2665066973868391948

noncomputable section

/-- A026095: a(n) = Sum{T(k,k-1)}, k = 1,2,...,n, where T is the array defined in A026082.

Offset 1, canonical program `A026095.P2665066973868391948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026095 (n : ℕ) : ℤ :=
  A026095.P2665066973868391948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026134.P2296897511124696960

`A026122(n+2)-A002026(n+1)`
-/

namespace A026134.P2296897511124696960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) - A002026 (n + 1)

end

end A026134.P2296897511124696960

noncomputable section

/-- A026134: a(n) = Sum_{k=1..n} T(k, k-1), where T is the array in A026120.

Offset 1, canonical program `A026134.P2296897511124696960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026134 (n : ℕ) : ℤ :=
  A026134.P2296897511124696960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026271.P8479868262339602608

`A019445(n+1)+∑[n-1]`
-/

namespace A026271.P8479868262339602608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019445 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026271.P8479868262339602608

noncomputable section

/-- A026271: a(n) = sum of the numbers between the two n's in A026242.

Offset 1, canonical program `A026271.P8479868262339602608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026271 (n : ℕ) : ℤ :=
  A026271.P8479868262339602608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026291.P9779214797032179134

`A026111(n+2)-A026117(2*n+1)`
-/

namespace A026291.P9779214797032179134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026111 (n + 2) - A026117 (2 * n + 1)

end

end A026291.P9779214797032179134

noncomputable section

/-- A026291: a(n) = T(2n-1,n), where T is the array in A026268.

Offset 2, canonical program `A026291.P9779214797032179134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A026291 (n : ℕ) : ℤ :=
  A026291.P9779214797032179134.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A026291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026344.P595824426359111630

`ceil(3*A026343(1+n)/2)`
-/

namespace A026344.P595824426359111630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * A026343 (1 + n) : ℚ) / 2⌉

end

end A026344.P595824426359111630

noncomputable section

/-- A026344: a(n) = greatest k such that s(k) = n, where s = A026342.

Offset 1, canonical program `A026344.P595824426359111630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026344 (n : ℕ) : ℤ :=
  A026344.P595824426359111630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026424.P10641458942088723207

`record[-A061019(2+n)]`
-/

namespace A026424.P10641458942088723207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A061019 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026424.P10641458942088723207

noncomputable section

/-- A026424: Number of prime divisors (counted with multiplicity) is odd; Liouville function lambda(n) (A008836) is negative.

Offset 1, canonical program `A026424.P10641458942088723207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026424 (n : ℕ) : ℤ :=
  A026424.P10641458942088723207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026491.P12269982715676672745

`A001468(A022290(n))+2*n`
-/

namespace A026491.P12269982715676672745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A022290 n).toNat + (2 * n : ℤ)

end

end A026491.P12269982715676672745

noncomputable section

/-- A026491: a(n) = least k > a(n-1) such that A001285(k-1) = A001285(n-1) for n >= 1.

Offset 0, canonical program `A026491.P12269982715676672745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026491 (n : ℕ) : ℤ :=
  A026491.P12269982715676672745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026518.P15189385487292695923

`runs[A026517(n)]`
-/

namespace A026518.P15189385487292695923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A026518.P15189385487292695923

noncomputable section

/-- A026518: a(n) = length of n-th run of identical symbols in A026517.

Offset 1, canonical program `A026518.P15189385487292695923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026518 (n : ℕ) : ℤ :=
  (A026518.P15189385487292695923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026612.P3569950179662922297

`2-A026609(1+n)`
-/

namespace A026612.P3569950179662922297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026609 (1 + n)

end

end A026612.P3569950179662922297

noncomputable section

/-- A026612: a(n) = number of 1's between n-th 3 and (n+1)st 3 in A026600.

Offset 1, canonical program `A026612.P3569950179662922297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026612 (n : ℕ) : ℤ :=
  A026612.P3569950179662922297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026677.P541306508744937430

`A000034(n)*A054441(A008619(n))`
-/

namespace A026677.P541306508744937430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A054441 (A008619 n).toNat

end

end A026677.P541306508744937430

noncomputable section

/-- A026677: T(n,0) + T(n,1) + ... + T(n,n), T given by A026670.

Offset 0, canonical program `A026677.P541306508744937430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026677 (n : ℕ) : ℤ :=
  A026677.P541306508744937430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026844.P16406587500471255430

`A026674(n+3)-Δ[A000344(n+3)]`
-/

namespace A026844.P16406587500471255430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 3) - (f1 (n + 1) - f1 n)

end

end A026844.P16406587500471255430

noncomputable section

/-- A026844: a(n) = T(2n,n+4), T given by A026725.

Offset 4, canonical program `A026844.P16406587500471255430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026844 (n : ℕ) : ℤ :=
  A026844.P16406587500471255430.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026855.P12013813959007215242

`A026850(n+2)-A026854(n+1)`
-/

namespace A026855.P12013813959007215242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026850 (n + 2) - A026854 (n + 1)

end

end A026855.P12013813959007215242

noncomputable section

/-- A026855: a(n) = T(2n+1,n+2), T given by A026736.

Offset 1, canonical program `A026855.P12013813959007215242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026855 (n : ℕ) : ℤ :=
  A026855.P12013813959007215242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026934.P15336347177748778035

`A026002(1+n)-a(n-1)` with `a(0)=1`
-/

namespace A026934.P15336347177748778035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026002 (1 + n) - a (n - 1)

end

end A026934.P15336347177748778035

noncomputable section

/-- A026934: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A008288.

Offset 1, canonical program `A026934.P15336347177748778035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A026934 (n : ℕ) : ℤ :=
  A026934.P15336347177748778035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A026934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027219.P5192656358713780349

`∑{#}[n, (#+1)*A026736(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027219.P5192656358713780349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026736 (Nat.choose (n + 1) 2 + k)

end

end A027219.P5192656358713780349

noncomputable section

/-- A027219: a(n) = Sum_{k=0..n} (k+1) * A026736(n,k).

Offset 0, canonical program `A027219.P5192656358713780349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027219 (n : ℕ) : ℤ :=
  A027219.P5192656358713780349.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027220.P2512006496526143006

`∑{#}[n, (#+1)*A026736(C(n+1, 2)+n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027220.P2512006496526143006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026736 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A027220.P2512006496526143006

noncomputable section

/-- A027220: a(n) = Sum_{k=0..n} (k+1) * A026736(n,n-k).

Offset 0, canonical program `A027220.P2512006496526143006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027220 (n : ℕ) : ℤ :=
  A027220.P2512006496526143006.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026736, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027258.P7847213636858550571

`A024998(2*(1+n))`
-/

namespace A027258.P7847213636858550571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (2 * (1 + n))

end

end A027258.P7847213636858550571

noncomputable section

/-- A027258: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A025177.

Offset 1, canonical program `A027258.P7847213636858550571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027258 (n : ℕ) : ℤ :=
  A027258.P7847213636858550571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027284.P17094632858826431175

`A026587(2*(2+n))`
-/

namespace A027284.P17094632858826431175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026587 (2 * (2 + n))

end

end A027284.P17094632858826431175

noncomputable section

/-- A027284: a(n) = Sum_{k=0..2*n-2} T(n,k) * T(n,k+2), with T given by A026584.

Offset 2, canonical program `A027284.P17094632858826431175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A027284 (n : ℕ) : ℤ :=
  A027284.P17094632858826431175.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A027284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027612.P6155522806255221843

`A081530(n+1)/gcd(A003418(n), A081530(n+1))`
-/

namespace A027612.P6155522806255221843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081530 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A081530 (n + 1)) : ℚ)

end

end A027612.P6155522806255221843

noncomputable section

/-- A027612: Numerator of 1/n + 2/(n-1) + 3/(n-2) + ... + (n-1)/2 + n.

Offset 1, canonical program `A027612.P6155522806255221843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A027612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027612.P6155522806255221843.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A027612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027615.P4354181638066238725

`A000120(A005351(n))`
-/

namespace A027615.P4354181638066238725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005351 n).toNat

end

end A027615.P4354181638066238725

noncomputable section

/-- A027615: Number of 1's when n is written in base -2.

Offset 0, canonical program `A027615.P4354181638066238725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027615 (n : ℕ) : ℤ :=
  A027615.P4354181638066238725.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027704.P16876728358986456234

`comp[A200246(n+1)+n-1]+1`
-/

namespace A027704.P16876728358986456234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1) + (n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A027704.P16876728358986456234

noncomputable section

/-- A027704: Numbers k such that the k-th prime has an even number of 1's in its binary expansion and the (k+1)st prime has an odd number of 1's.

Offset 1, canonical program `A027704.P16876728358986456234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A027704 (n : ℕ) : ℤ :=
  (A027704.P16876728358986456234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A027704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027706.P17073672284439722029

`lt[A200246(n+1), A200246(A200246(n+1)+n)]`
-/

namespace A027706.P17073672284439722029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (A200246 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027706.P17073672284439722029

noncomputable section

/-- A027706: n-th prime has odd number of 1's in binary expansion and (n+1)st prime has even number of 1's.

Offset 1, canonical program `A027706.P17073672284439722029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A027706 (n : ℕ) : ℤ :=
  (A027706.P17073672284439722029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A027706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027972.P3797829496454005148

`A027971(n+4)+a(n-1)` with `a(0)=1`
-/

namespace A027972.P3797829496454005148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027971 (n + 4) + a (n - 1)

end

end A027972.P3797829496454005148

noncomputable section

/-- A027972: T(n, 2n-10), T given by A027960.

Offset 5, canonical program `A027972.P3797829496454005148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027972 (n : ℕ) : ℤ :=
  A027972.P3797829496454005148.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029225.P16486130044195142611

`A029116(n)-a(n-1)` with `a(0)=1`
-/

namespace A029225.P16486130044195142611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029116 n - a (n - 1)

end

end A029225.P16486130044195142611

noncomputable section

/-- A029225: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029225.P16486130044195142611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225 (n : ℕ) : ℤ :=
  A029225.P16486130044195142611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029238.P16766028808299643663

`A029129(n)-a(n-1)` with `a(0)=1`
-/

namespace A029238.P16766028808299643663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029129 n - a (n - 1)

end

end A029238.P16766028808299643663

noncomputable section

/-- A029238: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029238.P16766028808299643663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029238 (n : ℕ) : ℤ :=
  A029238.P16766028808299643663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029242.P11992213160082313165

`A029133(n)-a(n-1)` with `a(0)=1`
-/

namespace A029242.P11992213160082313165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029133 n - a (n - 1)

end

end A029242.P11992213160082313165

noncomputable section

/-- A029242: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029242.P11992213160082313165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029242 (n : ℕ) : ℤ :=
  A029242.P11992213160082313165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029315.P17147396963157737905

`A029280(n)+A029305(n)-A029277(n)`
-/

namespace A029315.P17147396963157737905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029280 n + (A029305 n - A029277 n)

end

end A029315.P17147396963157737905

noncomputable section

/-- A029315: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029315.P17147396963157737905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029315 (n : ℕ) : ℤ :=
  A029315.P17147396963157737905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029365.P2100240297090772745

`A029232(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029365.P2100240297090772745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029232 n - a (n - 2)

end

end A029365.P2100240297090772745

noncomputable section

/-- A029365: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029365.P2100240297090772745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029365 (n : ℕ) : ℤ :=
  A029365.P2100240297090772745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029370.P7798369650479054994

`A029237(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029370.P7798369650479054994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029237 n - a (n - 2)

end

end A029370.P7798369650479054994

noncomputable section

/-- A029370: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029370.P7798369650479054994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029370 (n : ℕ) : ℤ :=
  A029370.P7798369650479054994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029425.P9386777479452355456

`A029318(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029425.P9386777479452355456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029318 n - a (n - 3)

end

end A029425.P9386777479452355456

noncomputable section

/-- A029425: Expansion of g.f. 1/((1-x^6)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029425.P9386777479452355456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029425 (n : ℕ) : ℤ :=
  A029425.P9386777479452355456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029429.P6125197273790252985

`A029323(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029429.P6125197273790252985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029323 n - a (n - 3)

end

end A029429.P6125197273790252985

noncomputable section

/-- A029429: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029429.P6125197273790252985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029429 (n : ℕ) : ℤ :=
  A029429.P6125197273790252985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029430.P1090642862795637503

`A029114(n)+A029389(n)-A029102(n)`
-/

namespace A029430.P1090642862795637503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029389 n - A029102 n)

end

end A029430.P1090642862795637503

noncomputable section

/-- A029430: Expansion of 1/((1-x^6)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029430.P1090642862795637503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430 (n : ℕ) : ℤ :=
  A029430.P1090642862795637503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029440.P14008336459079568971

`A029114(n)+A029398(n)-A029102(n)`
-/

namespace A029440.P14008336459079568971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029398 n - A029102 n)

end

end A029440.P14008336459079568971

noncomputable section

/-- A029440: Expansion of 1/((1-x^7)(1-x^9)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029440.P14008336459079568971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029440 (n : ℕ) : ℤ :=
  A029440.P14008336459079568971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029655.P14912270738703485013

`A325191(n)+A007318(n)`
-/

namespace A029655.P14912270738703485013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A007318 n

end

end A029655.P14912270738703485013

noncomputable section

/-- A029655: Numbers in the (2,1)-Pascal triangle A029653 that are different from 2.

Offset 0, canonical program `A029655.P14912270738703485013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029655 (n : ℕ) : ℤ :=
  A029655.P14912270738703485013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029659.P14042741699956388996

`A029607(n+1)-2*A014428(n+1)`
-/

namespace A029659.P14042741699956388996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029607 (n + 1) - 2 * A014428 (n + 1)

end

end A029659.P14042741699956388996

noncomputable section

/-- A029659: Even numbers in the (2,1)-Pascal triangle A029653 that are different from 2.

Offset 0, canonical program `A029659.P14042741699956388996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029659 (n : ℕ) : ℤ :=
  A029659.P14042741699956388996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029836.P12329412274010861792

`round(log(Δ[A007504(n)]))`
-/

namespace A029836.P12329412274010861792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (n + 1) - f1 n : ℝ))

end

end A029836.P12329412274010861792

noncomputable section

/-- A029836: log( n-th prime) rounded to nearest integer.

Offset 0, canonical program `A029836.P12329412274010861792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029836 (n : ℕ) : ℤ :=
  A029836.P12329412274010861792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029880.P9359121280903114262

`A334921(n)/(2-A280560(n)²)`
-/

namespace A029880.P9359121280903114262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334921 n : ℚ) / (2 - A280560 n ^ 2 : ℚ)

end

end A029880.P9359121280903114262

noncomputable section

/-- A029880: Inverse binomial transform of Thue-Morse sequence A001285.

Offset 0, canonical program `A029880.P9359121280903114262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A029880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A029880.P9359121280903114262.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A029880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029940.P10418760141710918991

`∏{d}[1+n, A000010(#)]`
-/

namespace A029940.P10418760141710918991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000010 d

end

end A029940.P10418760141710918991

noncomputable section

/-- A029940: a(n) = Product_{d|n} phi(d).

Offset 1, canonical program `A029940.P10418760141710918991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A029940 (n : ℕ) : ℤ :=
  A029940.P10418760141710918991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A029940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030130.P14159575509811306268

`xor(A010054(n), A081118(n+1))`
-/

namespace A030130.P14159575509811306268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 n) (A081118 (n + 1))

end

end A030130.P14159575509811306268

noncomputable section

/-- A030130: Binary expansion contains a single 0.

Offset 1, canonical program `A030130.P14159575509811306268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030130 (n : ℕ) : ℤ :=
  A030130.P14159575509811306268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030231.P6726175487153187534

`record[(n+1)%A318833(n+1)]`
-/

namespace A030231.P6726175487153187534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A318833 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030231.P6726175487153187534

noncomputable section

/-- A030231: Numbers with an even number of distinct prime factors.

Offset 1, canonical program `A030231.P6726175487153187534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030231 (n : ℕ) : ℤ :=
  A030231.P6726175487153187534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030237.P12249412304419150663

`gcd(A009766(A007401(n+1)), A010816(n))`
-/

namespace A030237.P12249412304419150663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009766 (A007401 (n + 1)).toNat) (A010816 n)

end

end A030237.P12249412304419150663

noncomputable section

/-- A030237: Catalan's triangle with right border removed (n > 0, 0 <= k < n).

Offset 1, canonical program `A030237.P12249412304419150663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A030237 (n : ℕ) : ℤ :=
  (A030237.P12249412304419150663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A030237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030628.P8221575935304841675

`eq[A113923(n)², A032741(n)]`
-/

namespace A030628.P8221575935304841675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030628.P8221575935304841675

noncomputable section

/-- A030628: 1 together with numbers of the form p*q^4 and p^9, where p and q are distinct primes.

Offset 1, canonical program `A030628.P8221575935304841675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A030628 (n : ℕ) : ℤ :=
  (A030628.P8221575935304841675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A030628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030638.P15405668562279692418

`eq[5, A007318(A032741(n))]`
-/

namespace A030638.P15405668562279692418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030638.P15405668562279692418

noncomputable section

/-- A030638: Numbers with 20 divisors.

Offset 1, canonical program `A030638.P15405668562279692418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A030638 (n : ℕ) : ℤ :=
  (A030638.P15405668562279692418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A030638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031453.P14508670588110786033

`eq[A081603(n)+1, A077267(A028310(n))]`
-/

namespace A031453.P14508670588110786033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031453.P14508670588110786033

noncomputable section

/-- A031453: Numbers whose base-3 representation has one more 0 than 2's.

Offset 1, canonical program `A031453.P14508670588110786033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1594 terms. -/
def A031453 (n : ℕ) : ℤ :=
  (A031453.P14508670588110786033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1594 terms. -/
def A031453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032189.P10074528383651059138

`A000358(n+1)-(1+(-1)^(n+1))/2`
-/

namespace A032189.P10074528383651059138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000358 (n + 1) : ℚ) - (1 + (-1) ^ (n + 1) : ℚ) / 2

end

end A032189.P10074528383651059138

noncomputable section

/-- A032189: Number of ways to partition n elements into pie slices each with an odd number of elements.

Offset 1, canonical program `A032189.P10074528383651059138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032189.P10074528383651059138.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032190.P15511744543848954843

`A000358(n+1)-1`
-/

namespace A032190.P15511744543848954843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) - 1

end

end A032190.P15511744543848954843

noncomputable section

/-- A032190: Number of cyclic compositions of n into parts >= 2.

Offset 1, canonical program `A032190.P15511744543848954843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032190 (n : ℕ) : ℤ :=
  A032190.P15511744543848954843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032198.P9785697460154991402

`∑{d}[1+n, A032170(#)]`
-/

namespace A032198.P9785697460154991402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032170 d

end

end A032198.P9785697460154991402

noncomputable section

/-- A032198: "CIK" (necklace, indistinct, unlabeled) transform of 1,2,3,4,...

Offset 1, canonical program `A032198.P9785697460154991402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A032198 (n : ℕ) : ℤ :=
  A032198.P9785697460154991402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A032198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032607.P17286791914416164224

`(n+1)*(10^(1+A004216(n+3))+1)+2`
-/

namespace A032607.P17286791914416164224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (n + 3) : ℤ) + 1) + 2

end

end A032607.P17286791914416164224

noncomputable section

/-- A032607: Concatenation of n and n + 2 or {n,n+2}.

Offset 1, canonical program `A032607.P17286791914416164224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A032607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032607.P17286791914416164224.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A032607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032608.P16231339068134095402

`(n+1)*(10^(1+A004216(n+4))+1)+3`
-/

namespace A032608.P16231339068134095402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (n + 4) : ℤ) + 1) + 3

end

end A032608.P16231339068134095402

noncomputable section

/-- A032608: Concatenation of n and n + 3.

Offset 1, canonical program `A032608.P16231339068134095402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A032608 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032608.P16231339068134095402.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A032608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032609.P13806505801294787442

`(n+1)*(10^(1+A004216(n+5))+1)+4`
-/

namespace A032609.P13806505801294787442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((10 : ℚ) ^ (1 + A004216 (n + 5) : ℤ) + 1) + 4

end

end A032609.P13806505801294787442

noncomputable section

/-- A032609: Concatenation of n and n + 4 or {n,n+4}.

Offset 1, canonical program `A032609.P13806505801294787442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A032609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032609.P13806505801294787442.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A032609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032610.P3322223776290872425

`A084855(∑[6+n]+10)`
-/

namespace A032610.P3322223776290872425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A032610.P3322223776290872425

noncomputable section

/-- A032610: Concatenation of n and n + 5 or {n,n+5}.

Offset 1, canonical program `A032610.P3322223776290872425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A032610 (n : ℕ) : ℤ :=
  A032610.P3322223776290872425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A032610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032611.P14395661447578244973

`A084855(A055999(n+4))`
-/

namespace A032611.P14395661447578244973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A055999 (n + 4)).toNat

end

end A032611.P14395661447578244973

noncomputable section

/-- A032611: Concatenation of n and n + 6 or {n,n+6}.

Offset 1, canonical program `A032611.P14395661447578244973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A032611 (n : ℕ) : ℤ :=
  A032611.P14395661447578244973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A032611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032612.P13857497766647167594

`A084855(A155212(4+n)+1)`
-/

namespace A032612.P13857497766647167594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A155212 (4 + n) + 1).toNat

end

end A032612.P13857497766647167594

noncomputable section

/-- A032612: Concatenation of n and n+7.

Offset 1, canonical program `A032612.P13857497766647167594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A032612 (n : ℕ) : ℤ :=
  A032612.P13857497766647167594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A032612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032613.P4379369226880167036

`A084855(A000217(n+9)-8)`
-/

namespace A032613.P4379369226880167036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000217 (n + 9) - 8).toNat

end

end A032613.P4379369226880167036

noncomputable section

/-- A032613: Concatenation of n and n + 8 or {n,n+8}.

Offset 1, canonical program `A032613.P4379369226880167036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A032613 (n : ℕ) : ℤ :=
  A032613.P4379369226880167036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A032613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032614.P5120848621844794646

`A084855(A155212(n+6)-1)`
-/

namespace A032614.P5120848621844794646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A155212 (n + 6) - 1).toNat

end

end A032614.P5120848621844794646

noncomputable section

/-- A032614: Concatenation of n and n + 9 or {n,n+9}.

Offset 1, canonical program `A032614.P5120848621844794646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A032614 (n : ℕ) : ℤ :=
  A032614.P5120848621844794646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A032614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032952.P16862449839660433879

`A026013(1+n)-A099376(n)`
-/

namespace A032952.P16862449839660433879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (1 + n) - A099376 n

end

end A032952.P16862449839660433879

noncomputable section

/-- A032952: Expansion of (1+x*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A032952.P16862449839660433879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A032952 (n : ℕ) : ℤ :=
  A032952.P16862449839660433879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A032952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033161.P7450569827711651060

`A140081(n)+A033160(n+1)`
-/

namespace A033161.P7450569827711651060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n + A033160 (n + 1)

end

end A033161.P7450569827711651060

noncomputable section

/-- A033161: Begins with (2, 5); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033161.P7450569827711651060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033161 (n : ℕ) : ℤ :=
  A033161.P7450569827711651060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033163.P1411033074476814001

`1+A033160(1+n)`
-/

namespace A033163.P1411033074476814001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A033160 (1 + n)

end

end A033163.P1411033074476814001

noncomputable section

/-- A033163: Begins with (3, 5) and avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033163.P1411033074476814001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033163 (n : ℕ) : ℤ :=
  A033163.P1411033074476814001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033882.P18084102587079416063

`A033880(A023196(n+1))`
-/

namespace A033882.P18084102587079416063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A023196 (n + 1)).toNat

end

end A033882.P18084102587079416063

noncomputable section

/-- A033882: Abundancy of the abundant or perfect numbers: m = sigma(k)-2k for n such that m >= 0.

Offset 1, canonical program `A033882.P18084102587079416063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033882 (n : ℕ) : ℤ :=
  A033882.P18084102587079416063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034044.P6265599758687673652

`filter[A047449(n+1), A353627(#)]`
-/

namespace A034044.P6265599758687673652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A034044.P6265599758687673652

noncomputable section

/-- A034044: Numbers that are primitively but not imprimitively represented by x^2+y^2+z^2.

Offset 1, canonical program `A034044.P6265599758687673652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A034044 (n : ℕ) : ℤ :=
  A034044.P6265599758687673652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A034044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034102.P5014734774195026149

`A034097(n+1)-floor(sqrt(A034097(n+1)))`
-/

namespace A034102.P5014734774195026149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034097 (n + 1) - Int.sqrt (A034097 (n + 1))

end

end A034102.P5014734774195026149

noncomputable section

/-- A034102: Fractional part of square root of a(n) starts with digit 6.

Offset 1, canonical program `A034102.P5014734774195026149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034102 (n : ℕ) : ℤ :=
  A034102.P5014734774195026149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034682.P3549804314413141181

`A034678((n+1)²)`
-/

namespace A034682.P3549804314413141181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034678 ((n + 1) ^ 2)

end

end A034682.P3549804314413141181

noncomputable section

/-- A034682: Sum of eighth powers of unitary divisors.

Offset 1, canonical program `A034682.P3549804314413141181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A034682 (n : ℕ) : ℤ :=
  A034682.P3549804314413141181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A034682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034734.P15721239827703422834

`∑{d}[n+1, A000740(#)*A007435((n+1)/#)]`
-/

namespace A034734.P15721239827703422834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P15721239827703422834

noncomputable section

/-- A034734: Dirichlet convolution of b_n=2^(n-1) with Fibonacci numbers.

Offset 1, canonical program `A034734.P15721239827703422834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034734 (n : ℕ) : ℤ :=
  A034734.P15721239827703422834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034745.P1976367546847420112

`∑{d}[n+1, A007435(#)*A034741((n+1)/#)]`
-/

namespace A034745.P1976367546847420112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034745.P1976367546847420112

noncomputable section

/-- A034745: Dirichlet convolution of Fibonacci numbers with 3^(n-1).

Offset 1, canonical program `A034745.P1976367546847420112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034745 (n : ℕ) : ℤ :=
  A034745.P1976367546847420112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034747.P1402406264465569334

`∑{d}[n+1, #*A007435((n+1)/#)]`
-/

namespace A034747.P1402406264465569334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034747.P1402406264465569334

noncomputable section

/-- A034747: Dirichlet convolution of Fibonacci numbers with sigma(n).

Offset 1, canonical program `A034747.P1402406264465569334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034747 (n : ℕ) : ℤ :=
  A034747.P1402406264465569334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034772.P8708401749861364831

`∑{d}[1+n, A007435(#)]`
-/

namespace A034772.P8708401749861364831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d

end

end A034772.P8708401749861364831

noncomputable section

/-- A034772: Dirichlet convolution of d(n) (number of divisors) with Fibonacci numbers.

Offset 1, canonical program `A034772.P8708401749861364831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034772 (n : ℕ) : ℤ :=
  A034772.P8708401749861364831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034842.P3328031310771291093

`eq[A032741(n)+1, A010879(n)]`
-/

namespace A034842.P3328031310771291093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034842.P3328031310771291093

noncomputable section

/-- A034842: Number of divisors = last digit.

Offset 1, canonical program `A034842.P3328031310771291093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A034842 (n : ℕ) : ℤ :=
  (A034842.P3328031310771291093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A034842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034843.P18163365726242759296

`eq[A032741(n)+1, A000030(n)]`
-/

namespace A034843.P18163365726242759296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P18163365726242759296

noncomputable section

/-- A034843: Number of divisors = first digit.

Offset 1, canonical program `A034843.P18163365726242759296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A034843 (n : ℕ) : ℤ :=
  (A034843.P18163365726242759296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A034843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034849.P15691742915255427826

`1+2*A034784(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034849.P15691742915255427826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A034784 (n + 1)

end

end A034849.P15691742915255427826

noncomputable section

/-- A034849: a(n) = 1 + 2*A034784(n).

Offset 1, canonical program `A034849.P15691742915255427826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034849 (n : ℕ) : ℤ :=
  A034849.P15691742915255427826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034877.P11761815301413299691

`A034852(lt[0, A034852(n)])`
-/

namespace A034877.P11761815301413299691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034877.P11761815301413299691

noncomputable section

/-- A034877: Rows of (Pascal's triangle - Losanitsch's triangle) (n >= 0, k >= 0).

Offset 0, canonical program `A034877.P11761815301413299691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034877 (n : ℕ) : ℤ :=
  A034877.P11761815301413299691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034962.P16335635607556510049

`p?[A007504(n+3)-A007504(n)]`
-/

namespace A034962.P16335635607556510049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034962.P16335635607556510049

noncomputable section

/-- A034962: Primes that are the sum of three consecutive primes.

Offset 1, canonical program `A034962.P16335635607556510049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6149 terms. -/
def A034962 (n : ℕ) : ℤ :=
  A034962.P16335635607556510049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6149 terms. -/
def A034962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034965.P10618063056112596285

`p?[A034964(n+1)]`
-/

namespace A034965.P10618063056112596285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034965.P10618063056112596285

noncomputable section

/-- A034965: Primes that are sum of five consecutive primes.

Offset 1, canonical program `A034965.P10618063056112596285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2030 terms. -/
def A034965 (n : ℕ) : ℤ :=
  A034965.P10618063056112596285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2030 terms. -/
def A034965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035103.P1324719609663575418

`A035100(n+1)-A014499(n+1)`
-/

namespace A035103.P1324719609663575418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - A014499 (n + 1)

end

end A035103.P1324719609663575418

noncomputable section

/-- A035103: Number of 0's in binary representation of n-th prime.

Offset 1, canonical program `A035103.P1324719609663575418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035103 (n : ℕ) : ℤ :=
  A035103.P1324719609663575418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035240.P6335358893965922617

`lt[0, A035167(1+n)]+1`
-/

namespace A035240.P6335358893965922617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035167 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035240.P6335358893965922617

noncomputable section

/-- A035240: Indices of nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -23 (A035167).

Offset 1, canonical program `A035240.P6335358893965922617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3018 terms. -/
def A035240 (n : ℕ) : ℤ :=
  (A035240.P6335358893965922617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3018 terms. -/
def A035240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035605.P8746881321390343686

`∑[2*A035604(n)]-A035604(n)`
-/

namespace A035605.P8746881321390343686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035604 n

end

end A035605.P8746881321390343686

noncomputable section

/-- A035605: Number of points of L1 norm 11 in cubic lattice Z^n.

Offset 0, canonical program `A035605.P8746881321390343686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035605 (n : ℕ) : ℤ :=
  A035605.P8746881321390343686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035711.P4687459498033362342

`∑{#}[n, A008416(#)*A008416(n-#)]`
-/

namespace A035711.P4687459498033362342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008416 k * A008416 (n - k)

end

end A035711.P4687459498033362342

noncomputable section

/-- A035711: Coordination sequence for 16-dimensional cubic lattice.

Offset 0, canonical program `A035711.P4687459498033362342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035711 (n : ℕ) : ℤ :=
  A035711.P4687459498033362342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035713.P2668895282290159351

`∑{#}[n, A008418(#)*A008418(n-#)]`
-/

namespace A035713.P2668895282290159351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008418 k * A008418 (n - k)

end

end A035713.P2668895282290159351

noncomputable section

/-- A035713: Coordination sequence for 18-dimensional cubic lattice.

Offset 0, canonical program `A035713.P2668895282290159351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035713 (n : ℕ) : ℤ :=
  A035713.P2668895282290159351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035717.P10519821207590744476

`∑[2*A035716(n)]-A035716(n)`
-/

namespace A035717.P10519821207590744476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035716 n

end

end A035717.P10519821207590744476

noncomputable section

/-- A035717: Coordination sequence for 22-dimensional cubic lattice.

Offset 0, canonical program `A035717.P10519821207590744476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035717 (n : ℕ) : ℤ :=
  A035717.P10519821207590744476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035737.P16204561939838224739

`∑{#}[n, A035716(#)*A035716(n-#)]`
-/

namespace A035737.P16204561939838224739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035716 k * A035716 (n - k)

end

end A035737.P16204561939838224739

noncomputable section

/-- A035737: Coordination sequence for 42-dimensional cubic lattice.

Offset 0, canonical program `A035737.P16204561939838224739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035737 (n : ℕ) : ℤ :=
  A035737.P16204561939838224739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A035737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035742.P9899720716141531989

`∑[2*A035741(n)]-A035741(n)`
-/

namespace A035742.P9899720716141531989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035741 n

end

end A035742.P9899720716141531989

noncomputable section

/-- A035742: Coordination sequence for 47-dimensional cubic lattice.

Offset 0, canonical program `A035742.P9899720716141531989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1323 terms. -/
def A035742 (n : ℕ) : ℤ :=
  A035742.P9899720716141531989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1323 terms. -/
def A035742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035746.P11342363624555630469

`A008418(2*n)`
-/

namespace A035746.P11342363624555630469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 (2 * n)

end

end A035746.P11342363624555630469

noncomputable section

/-- A035746: Coordination sequence for C_9 lattice.

Offset 0, canonical program `A035746.P11342363624555630469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035746 (n : ℕ) : ℤ :=
  A035746.P11342363624555630469.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035758.P918832399889674702

`A035716(2*n)`
-/

namespace A035758.P918832399889674702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035716 (2 * n)

end

end A035758.P918832399889674702

noncomputable section

/-- A035758: Coordination sequence for C_21 lattice.

Offset 0, canonical program `A035758.P918832399889674702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035758 (n : ℕ) : ℤ :=
  A035758.P918832399889674702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035764.P1934732260014623711

`A035722(2*n)`
-/

namespace A035764.P1934732260014623711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035722 (2 * n)

end

end A035764.P1934732260014623711

noncomputable section

/-- A035764: Coordination sequence for C_27 lattice.

Offset 0, canonical program `A035764.P1934732260014623711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035764 (n : ℕ) : ℤ :=
  A035764.P1934732260014623711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035767.P14336921547845258511

`A035725(2*n)`
-/

namespace A035767.P14336921547845258511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035725 (2 * n)

end

end A035767.P14336921547845258511

noncomputable section

/-- A035767: Coordination sequence for C_30 lattice.

Offset 0, canonical program `A035767.P14336921547845258511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035767 (n : ℕ) : ℤ :=
  A035767.P14336921547845258511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035771.P4108631056450841646

`A035729(2*n)`
-/

namespace A035771.P4108631056450841646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035729 (2 * n)

end

end A035771.P4108631056450841646

noncomputable section

/-- A035771: Coordination sequence for C_34 lattice.

Offset 0, canonical program `A035771.P4108631056450841646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A035771 (n : ℕ) : ℤ :=
  A035771.P4108631056450841646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A035771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035772.P15203243405529877436

`A035730(2*n)`
-/

namespace A035772.P15203243405529877436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035730 (2 * n)

end

end A035772.P15203243405529877436

noncomputable section

/-- A035772: Coordination sequence for C_35 lattice.

Offset 0, canonical program `A035772.P15203243405529877436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2896 terms. -/
def A035772 (n : ℕ) : ℤ :=
  A035772.P15203243405529877436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2896 terms. -/
def A035772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035778.P17076281089256357332

`A035736(2*n)`
-/

namespace A035778.P17076281089256357332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035736 (2 * n)

end

end A035778.P17076281089256357332

noncomputable section

/-- A035778: Coordination sequence for C_41 lattice.

Offset 0, canonical program `A035778.P17076281089256357332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A035778 (n : ℕ) : ℤ :=
  A035778.P17076281089256357332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A035778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035783.P2267626401879246371

`A035741(2*n)`
-/

namespace A035783.P2267626401879246371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035741 (2 * n)

end

end A035783.P2267626401879246371

noncomputable section

/-- A035783: Coordination sequence for C_46 lattice.

Offset 0, canonical program `A035783.P2267626401879246371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A035783 (n : ℕ) : ℤ :=
  A035783.P2267626401879246371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. -/
def A035783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035787.P16882338948040079299

`A035745(2*n)`
-/

namespace A035787.P16882338948040079299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035745 (2 * n)

end

end A035787.P16882338948040079299

noncomputable section

/-- A035787: Coordination sequence for C_50 lattice.

Offset 0, canonical program `A035787.P16882338948040079299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A035787 (n : ℕ) : ℤ :=
  A035787.P16882338948040079299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A035787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036266.P11996931963591564090

`Δ[Δ[Δ[A036263(1+n)]]]`
-/

namespace A036266.P11996931963591564090
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036266.P11996931963591564090

noncomputable section

/-- A036266: 5th differences of primes.

Offset 1, canonical program `A036266.P11996931963591564090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036266 (n : ℕ) : ℤ :=
  A036266.P11996931963591564090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036267.P6870843697752930822

`Δ[Δ[Δ[Δ[A036263(n+1)]]]]`
-/

namespace A036267.P6870843697752930822
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036267.P6870843697752930822

noncomputable section

/-- A036267: 6th differences of primes.

Offset 1, canonical program `A036267.P6870843697752930822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036267 (n : ℕ) : ℤ :=
  A036267.P6870843697752930822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036272.P13640507030568503975

`abs(Δ[abs(A036263(n+1))])`
-/

namespace A036272.P13640507030568503975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036263 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P13640507030568503975

noncomputable section

/-- A036272: Absolute values of differences of absolute values of second differences of primes.

Offset 0, canonical program `A036272.P13640507030568503975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036272 (n : ℕ) : ℤ :=
  A036272.P13640507030568503975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036586.P6008186881590982081

`A036584(n)-1`
-/

namespace A036586.P6008186881590982081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n - 1

end

end A036586.P6008186881590982081

noncomputable section

/-- A036586: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036586.P6008186881590982081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036586 (n : ℕ) : ℤ :=
  A036586.P6008186881590982081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036714.P1736506275056486720

`floor(A036710(n)/2)`
-/

namespace A036714.P1736506275056486720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036710 n : ℚ) / 2⌋

end

end A036714.P1736506275056486720

noncomputable section

/-- A036714: a(n)=number of Gaussian integers z=a+bi satisfying n-1/2<|z|<=n+1/2, a>=0, 0<=b<a.

Offset 0, canonical program `A036714.P1736506275056486720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9119 terms. -/
def A036714 (n : ℕ) : ℤ :=
  A036714.P1736506275056486720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9119 terms. -/
def A036714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036844.P11639934556679199632

`eq[1, A082343(1+n)]+1`
-/

namespace A036844.P11639934556679199632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036844.P11639934556679199632

noncomputable section

/-- A036844: Numbers k such that k / sopfr(k) is an integer, where sopfr = sum-of-prime-factors, A001414.

Offset 1, canonical program `A036844.P11639934556679199632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5721 terms. -/
def A036844 (n : ℕ) : ℤ :=
  (A036844.P11639934556679199632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5721 terms. -/
def A036844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037201.P6658727426378706638

`A001223(eq[1, A079054(n+2)²]+1)`
-/

namespace A037201.P6658727426378706638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037201.P6658727426378706638

noncomputable section

/-- A037201: Differences between consecutive primes (A001223) but with repeats omitted.

Offset 1, canonical program `A037201.P6658727426378706638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201 (n : ℕ) : ℤ :=
  A037201.P6658727426378706638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037216.P8004952056274919037

`∑{#}[n, A037214(#)*A037214(n-#)]`
-/

namespace A037216.P8004952056274919037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A037214 k * A037214 (n - k)

end

end A037216.P8004952056274919037

noncomputable section

/-- A037216: Expansion of ( Sum_{k>=0} k*q^(k^2) )^4.

Offset 0, canonical program `A037216.P8004952056274919037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A037216 (n : ℕ) : ℤ :=
  A037216.P8004952056274919037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A037216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037879.P7162535617736776379

`A023416(floor((n+1)/2^A023416(n+1)))`
-/

namespace A037879.P7162535617736776379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 ⌊(n + 1 : ℚ) / (2 : ℚ) ^ (A023416 (n + 1) : ℤ)⌋.toNat

end

end A037879.P7162535617736776379

noncomputable section

/-- A037879: a(n) = (1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*2^i} is the base-2 representation of n and {e(i)} are digits {d(i)} in nondecreasing order.

Offset 1, canonical program `A037879.P7162535617736776379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037879 (n : ℕ) : ℤ :=
  A037879.P7162535617736776379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037957.P523599438952609535

`A001405(n)-A026021(n)`
-/

namespace A037957.P523599438952609535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A026021 n

end

end A037957.P523599438952609535

noncomputable section

/-- A037957: a(n) = binomial(n, floor((n-6)/2)).

Offset 0, canonical program `A037957.P523599438952609535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957 (n : ℕ) : ℤ :=
  A037957.P523599438952609535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038236.P5554220315760387373

`A036561(n)*A038208(n)`
-/

namespace A038236.P5554220315760387373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038208 n

end

end A038236.P5554220315760387373

noncomputable section

/-- A038236: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*6^j.

Offset 0, canonical program `A038236.P5554220315760387373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A038236 (n : ℕ) : ℤ :=
  A038236.P5554220315760387373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A038236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038239.P16420463137512601868

`A013620(n)*A036561(n)`
-/

namespace A038239.P16420463137512601868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A036561 n

end

end A038239.P16420463137512601868

noncomputable section

/-- A038239: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*9^j.

Offset 0, canonical program `A038239.P16420463137512601868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4244 terms. -/
def A038239 (n : ℕ) : ℤ :=
  A038239.P16420463137512601868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4244 terms. -/
def A038239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038242.P689435181887055728

`A036561(n)*A038210(n)`
-/

namespace A038242.P689435181887055728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038210 n

end

end A038242.P689435181887055728

noncomputable section

/-- A038242: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*12^j.

Offset 0, canonical program `A038242.P689435181887055728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3630 terms. -/
def A038242 (n : ℕ) : ℤ :=
  A038242.P689435181887055728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3630 terms. -/
def A038242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038257.P13466949147217766730

`A027465(n)*A036561(n)`
-/

namespace A038257.P13466949147217766730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A036561 n

end

end A038257.P13466949147217766730

noncomputable section

/-- A038257: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*3^j.

Offset 0, canonical program `A038257.P13466949147217766730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. -/
def A038257 (n : ℕ) : ℤ :=
  A038257.P13466949147217766730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. -/
def A038257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038263.P7438079468923778165

`A036561(n)*A038221(n)`
-/

namespace A038263.P7438079468923778165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038221 n

end

end A038263.P7438079468923778165

noncomputable section

/-- A038263: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*9^j.

Offset 0, canonical program `A038263.P7438079468923778165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A038263 (n : ℕ) : ℤ :=
  A038263.P7438079468923778165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. -/
def A038263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038265.P17989473238907539147

`A038229(n)*A130321(n)`
-/

namespace A038265.P17989473238907539147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038229 n * A130321 n

end

end A038265.P17989473238907539147

noncomputable section

/-- A038265: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*11^j.

Offset 0, canonical program `A038265.P17989473238907539147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3530 terms. -/
def A038265 (n : ℕ) : ℤ :=
  A038265.P17989473238907539147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3530 terms. -/
def A038265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038266.P12892791961704358879

`A036561(n)*A038222(n)`
-/

namespace A038266.P12892791961704358879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038222 n

end

end A038266.P12892791961704358879

noncomputable section

/-- A038266: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*12^j.

Offset 0, canonical program `A038266.P12892791961704358879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A038266 (n : ℕ) : ℤ :=
  A038266.P12892791961704358879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A038266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038281.P5950782525459084005

`A036561(n)*A038231(n)`
-/

namespace A038281.P5950782525459084005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038231 n

end

end A038281.P5950782525459084005

noncomputable section

/-- A038281: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*3^j.

Offset 0, canonical program `A038281.P5950782525459084005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4869 terms. -/
def A038281 (n : ℕ) : ℤ :=
  A038281.P5950782525459084005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4869 terms. -/
def A038281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038290.P9369119644896590896

`A036561(n)*A038234(n)`
-/

namespace A038290.P9369119644896590896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038234 n

end

end A038290.P9369119644896590896

noncomputable section

/-- A038290: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*12^j.

Offset 0, canonical program `A038290.P9369119644896590896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A038290 (n : ℕ) : ℤ :=
  A038290.P9369119644896590896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A038290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038295.P4887945260608104514

`A027465(n)*A120027(n)`
-/

namespace A038295.P4887945260608104514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A120027 n

end

end A038295.P4887945260608104514

noncomputable section

/-- A038295: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*5^j.

Offset 0, canonical program `A038295.P4887945260608104514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A038295 (n : ℕ) : ℤ :=
  A038295.P4887945260608104514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A038295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038301.P13802189218561258901

`A038229(n)*A140303(n)`
-/

namespace A038301.P13802189218561258901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038229 n * A140303 n

end

end A038301.P13802189218561258901

noncomputable section

/-- A038301: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*11^j.

Offset 0, canonical program `A038301.P13802189218561258901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3118 terms. -/
def A038301 (n : ℕ) : ℤ :=
  A038301.P13802189218561258901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3118 terms. -/
def A038301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038308.P13048394951449472334

`A036561(n)*A038244(n)`
-/

namespace A038308.P13048394951449472334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038244 n

end

end A038308.P13048394951449472334

noncomputable section

/-- A038308: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*6^j.

Offset 0, canonical program `A038308.P13048394951449472334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3599 terms. -/
def A038308 (n : ℕ) : ℤ :=
  A038308.P13048394951449472334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3599 terms. -/
def A038308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038388.P12225938423161256159

`sqrt((n+1)*A038387(n+1))`
-/

namespace A038388.P12225938423161256159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A038387 (n + 1) : ℝ)

end

end A038388.P12225938423161256159

noncomputable section

/-- A038388: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives G values.

Offset 1, canonical program `A038388.P12225938423161256159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038388.P12225938423161256159.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038389.P11614269274135449549

`ceil((A038387(n+1)+n)/2)`
-/

namespace A038389.P11614269274135449549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038387 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A038389.P11614269274135449549

noncomputable section

/-- A038389: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives A values.

Offset 1, canonical program `A038389.P11614269274135449549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038389 (n : ℕ) : ℤ :=
  A038389.P11614269274135449549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038610.P10588143395137606958

`A002944(n+1)/A133910(n+1)`
-/

namespace A038610.P10588143395137606958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A133910 (n + 1) : ℚ)

end

end A038610.P10588143395137606958

noncomputable section

/-- A038610: Least common multiple of integers less than and prime to n.

Offset 1, canonical program `A038610.P10588143395137606958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038610 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038610.P10588143395137606958.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038735.P3675330770344052257

`∑[∑[A038734(n+5)]]`
-/

namespace A038735.P3675330770344052257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038735.P3675330770344052257

noncomputable section

/-- A038735: T(n,n-6), array T as in A038730.

Offset 6, canonical program `A038735.P3675330770344052257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038735 (n : ℕ) : ℤ :=
  A038735.P3675330770344052257.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A038735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038742.P14985125190710247558

`∑[A038734(5+n)]`
-/

namespace A038742.P14985125190710247558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038734 (5 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038742.P14985125190710247558

noncomputable section

/-- A038742: T(n,n-5), array T as in A038738.

Offset 5, canonical program `A038742.P14985125190710247558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038742 (n : ℕ) : ℤ :=
  A038742.P14985125190710247558.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A038742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038823.P17116008269528267976

`Δ[A038812(A028310(n))%A017286(n)]`
-/

namespace A038823.P17116008269528267976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038812 (A028310 n).toNat) (A017286 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038823.P17116008269528267976

noncomputable section

/-- A038823: Number of primes between n*1000 and (n+1)*1000.

Offset 0, canonical program `A038823.P17116008269528267976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038823 (n : ℕ) : ℤ :=
  A038823.P17116008269528267976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038918.P6317659458986366672

`p?[eq[and(2, n), A035151(n+1)]+1]`
-/

namespace A038918.P6317659458986366672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038918.P6317659458986366672

noncomputable section

/-- A038918: Primes p such that 39 is not a square mod p.

Offset 1, canonical program `A038918.P6317659458986366672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A038918 (n : ℕ) : ℤ :=
  (A038918.P6317659458986366672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A038918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038992.P1266037939169449986

`∑{d}[1+n, #*A038991(#)]`
-/

namespace A038992.P1266037939169449986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038991 d

end

end A038992.P1266037939169449986

noncomputable section

/-- A038992: Number of sublattices of index n in generic 5-dimensional lattice.

Offset 1, canonical program `A038992.P1266037939169449986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038992 (n : ℕ) : ℤ :=
  A038992.P1266037939169449986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039636.P4739746235192283118

`A070939(ceil(n/A039634(n+1)))`
-/

namespace A039636.P4739746235192283118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌈(n : ℚ) / (A039634 (n + 1) : ℚ)⌉.toNat

end

end A039636.P4739746235192283118

noncomputable section

/-- A039636: Number of steps to fixed point of "n -> n/2 or (n-1)/2 until result is prime".

Offset 1, canonical program `A039636.P4739746235192283118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039636 (n : ℕ) : ℤ :=
  A039636.P4739746235192283118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039638.P11187219247693054999

`A039634(A006093(1+n))`
-/

namespace A039638.P11187219247693054999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A006093 (1 + n)).toNat

end

end A039638.P11187219247693054999

noncomputable section

/-- A039638: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039638.P11187219247693054999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039638 (n : ℕ) : ℤ :=
  A039638.P11187219247693054999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039639.P407717812387908810

`A039634(A008864(n+1))`
-/

namespace A039639.P407717812387908810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A008864 (n + 1)).toNat

end

end A039639.P407717812387908810

noncomputable section

/-- A039639: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039639.P407717812387908810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039639 (n : ℕ) : ℤ :=
  A039639.P407717812387908810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039644.P8037032892573694151

`A039637(A006093(1+n))`
-/

namespace A039644.P8037032892573694151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A006093 (1 + n)).toNat

end

end A039644.P8037032892573694151

noncomputable section

/-- A039644: Number of steps to fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039644.P8037032892573694151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039644 (n : ℕ) : ℤ :=
  A039644.P8037032892573694151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039645.P11813040183617158880

`A039637(A008864(n+1))`
-/

namespace A039645.P11813040183617158880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A008864 (n + 1)).toNat

end

end A039645.P11813040183617158880

noncomputable section

/-- A039645: Number of steps to fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039645.P11813040183617158880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039645 (n : ℕ) : ℤ :=
  A039645.P11813040183617158880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039733.P4584526167455338539

`fp[A020900(n+1)-1]+1`
-/

namespace A039733.P4584526167455338539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A039733.P4584526167455338539

noncomputable section

/-- A039733: a(n)=k such that prime(k) is the prime q<prime(n) for which (prime(n) mod q) is maximal.

Offset 2, canonical program `A039733.P4584526167455338539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039733 (n : ℕ) : ℤ :=
  (A039733.P4584526167455338539.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039743.P5829878164581489431

`eq[gcd(n, A000010(n+1)), A001221(n+1)]+1`
-/

namespace A039743.P5829878164581489431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000010 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039743.P5829878164581489431

noncomputable section

/-- A039743: Number k such that gcd(phi(k), k-1) = number of distinct prime factors of k.

Offset 1, canonical program `A039743.P5829878164581489431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7107 terms. -/
def A039743 (n : ℕ) : ℤ :=
  (A039743.P5829878164581489431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7107 terms. -/
def A039743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039770.P5490955356181166614

`record[(n+1)/A007913(A000010(n+1))]`
-/

namespace A039770.P5490955356181166614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039770.P5490955356181166614

noncomputable section

/-- A039770: Numbers k such that phi(k) is a perfect square.

Offset 1, canonical program `A039770.P5490955356181166614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A039770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039770.P5490955356181166614.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. -/
def A039770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039771.P6000712686625976623

`eq[1, A010057(A000010(n+1))]+1`
-/

namespace A039771.P6000712686625976623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039771.P6000712686625976623

noncomputable section

/-- A039771: Numbers k such that phi(k) is a perfect cube.

Offset 1, canonical program `A039771.P6000712686625976623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A039771 (n : ℕ) : ℤ :=
  (A039771.P6000712686625976623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A039771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039915.P6352647015500762740

`xor(1, Δ[A007504(n)])`
-/

namespace A039915.P6352647015500762740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A039915.P6352647015500762740

noncomputable section

/-- A039915: Smallest k such that k(p-1)-1 is positive and divisible by p where p = n-th prime.

Offset 1, canonical program `A039915.P6352647015500762740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039915 (n : ℕ) : ℤ :=
  A039915.P6352647015500762740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039973.P9709266713566998332

`A025581(2-Δ[Δ[A316829(n)]])`
-/

namespace A039973.P9709266713566998332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A039973.P9709266713566998332

noncomputable section

/-- A039973: An example of a d-perfect sequence: a(2*n) = 0, a(2*n-1) = A039965(n).

Offset 1, canonical program `A039973.P9709266713566998332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039973 (n : ℕ) : ℤ :=
  A039973.P9709266713566998332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043569.P15388862397033280106

`1+A081118(n+1)`
-/

namespace A043569.P15388862397033280106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A081118 (n + 1)

end

end A043569.P15388862397033280106

noncomputable section

/-- A043569: Numbers whose base-2 representation has exactly 2 runs.

Offset 1, canonical program `A043569.P15388862397033280106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043569 (n : ℕ) : ℤ :=
  A043569.P15388862397033280106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043734.P2081533944662856459

`record[A005408(n)*A010892(A005811(n))]`
-/

namespace A043734.P2081533944662856459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A010892 (A005811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043734.P2081533944662856459

noncomputable section

/-- A043734: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 6.

Offset 1, canonical program `A043734.P2081533944662856459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4149 terms. -/
def A043734 (n : ℕ) : ℤ :=
  A043734.P2081533944662856459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4149 terms. -/
def A043734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043735.P6936913590569914898

`2*eq[1, A128834(A005811(n))]`
-/

namespace A043735.P6936913590569914898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A005811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043735.P6936913590569914898

noncomputable section

/-- A043735: Numbers whose number of runs in the base-2 representation is congruent to 2 mod 6.

Offset 1, canonical program `A043735.P6936913590569914898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3900 terms. -/
def A043735 (n : ℕ) : ℤ :=
  (A043735.P6936913590569914898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3900 terms. -/
def A043735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044057.P8945552730682165796

`A017221(eq[A062756(n), A065363(n)])`
-/

namespace A044057.P8945552730682165796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044057.P8945552730682165796

noncomputable section

/-- A044057: Numbers n such that string 1,2 occurs in the base 3 representation of n but not of n-1.

Offset 1, canonical program `A044057.P8945552730682165796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A044057 (n : ℕ) : ℤ :=
  A044057.P8945552730682165796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A044057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044971.P13740791806707555514

`∩[A023692(n+1), A043321(n+1)]`
-/

namespace A044971.P13740791806707555514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044971.P13740791806707555514

noncomputable section

/-- A044971: Numbers whose base-3 representation contains exactly one 0 and one 1.

Offset 1, canonical program `A044971.P13740791806707555514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044971 (n : ℕ) : ℤ :=
  (A044971.P13740791806707555514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044972.P2534562059640087062

`∩[A023693(n+1), A043321(n+1)]`
-/

namespace A044972.P2534562059640087062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044972.P2534562059640087062

noncomputable section

/-- A044972: Numbers whose base-3 representation contains exactly one 0 and two 1's.

Offset 1, canonical program `A044972.P2534562059640087062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 702 terms. -/
def A044972 (n : ℕ) : ℤ :=
  (A044972.P2534562059640087062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 702 terms. -/
def A044972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044973.P4922914150493767431

`∩[A023694(n+1), A043321(n+1)]`
-/

namespace A044973.P4922914150493767431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044973.P4922914150493767431

noncomputable section

/-- A044973: Numbers whose base-3 representation contains exactly one 0 and three 1's.

Offset 1, canonical program `A044973.P4922914150493767431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1134 terms. -/
def A044973 (n : ℕ) : ℤ :=
  (A044973.P4922914150493767431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1134 terms. -/
def A044973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044976.P14451359059032507611

`∩[A023692(n+1), A043322(n+1)]`
-/

namespace A044976.P14451359059032507611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044976.P14451359059032507611

noncomputable section

/-- A044976: Numbers whose base-3 representation contains exactly two 0's and one 1.

Offset 1, canonical program `A044976.P14451359059032507611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A044976 (n : ℕ) : ℤ :=
  (A044976.P14451359059032507611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A044976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044978.P17659103742301629516

`∩[A023694(n+1), A043322(n+1)]`
-/

namespace A044978.P17659103742301629516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044978.P17659103742301629516

noncomputable section

/-- A044978: Numbers whose base-3 representation contains exactly two 0's and three 1's.

Offset 1, canonical program `A044978.P17659103742301629516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A044978 (n : ℕ) : ℤ :=
  (A044978.P17659103742301629516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A044978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044981.P18195031240722580958

`∩[A023692(n+1), A043323(n+1)]`
-/

namespace A044981.P18195031240722580958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044981.P18195031240722580958

noncomputable section

/-- A044981: Numbers whose base-3 representation contains exactly three 0's and one 1.

Offset 1, canonical program `A044981.P18195031240722580958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A044981 (n : ℕ) : ℤ :=
  (A044981.P18195031240722580958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A044981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044982.P1663044987886424646

`∩[A023693(n+1), A043323(n+1)]`
-/

namespace A044982.P1663044987886424646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044982.P1663044987886424646

noncomputable section

/-- A044982: Numbers whose base-3 representation contains exactly three 0's and two 1's.

Offset 1, canonical program `A044982.P1663044987886424646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A044982 (n : ℕ) : ℤ :=
  (A044982.P1663044987886424646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A044982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044986.P11188818628558561952

`∩[A023692(n+1), A043324(n+1)]`
-/

namespace A044986.P11188818628558561952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044986.P11188818628558561952

noncomputable section

/-- A044986: Numbers whose base-3 representation contains exactly four 0's and one 1.

Offset 1, canonical program `A044986.P11188818628558561952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A044986 (n : ℕ) : ℤ :=
  (A044986.P11188818628558561952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A044986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044987.P8628495577670064236

`∩[A023693(n+1), A043324(n+1)]`
-/

namespace A044987.P8628495577670064236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044987.P8628495577670064236

noncomputable section

/-- A044987: Numbers whose base-3 representation contains exactly four 0's and two 1's.

Offset 1, canonical program `A044987.P8628495577670064236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. -/
def A044987 (n : ℕ) : ℤ :=
  (A044987.P8628495577670064236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. -/
def A044987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044988.P12725054443842438556

`∩[A023694(n+1), A043324(n+1)]`
-/

namespace A044988.P12725054443842438556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044988.P12725054443842438556

noncomputable section

/-- A044988: Numbers whose base-3 representation contains exactly four 0's and three 1's.

Offset 1, canonical program `A044988.P12725054443842438556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. -/
def A044988 (n : ℕ) : ℤ :=
  (A044988.P12725054443842438556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. -/
def A044988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044995.P10989468949285261213

`∩[A023699(n+1), A043321(n+1)]`
-/

namespace A044995.P10989468949285261213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044995.P10989468949285261213

noncomputable section

/-- A044995: Numbers whose base-3 representation contains exactly one 0 and one 2.

Offset 1, canonical program `A044995.P10989468949285261213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A044995 (n : ℕ) : ℤ :=
  (A044995.P10989468949285261213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A044995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044996.P6775798620776590104

`∩[A031457(n+1), A043321(n+1)]`
-/

namespace A044996.P6775798620776590104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044996.P6775798620776590104

noncomputable section

/-- A044996: Numbers whose base-3 representation contains exactly one 0 and two 2's.

Offset 1, canonical program `A044996.P6775798620776590104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A044996 (n : ℕ) : ℤ :=
  (A044996.P6775798620776590104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A044996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044997.P14877715571537468302

`∩[A031458(n+1), A043321(n+1)]`
-/

namespace A044997.P14877715571537468302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044997.P14877715571537468302

noncomputable section

/-- A044997: Numbers whose base-3 representation contains exactly one 0 and three 2's.

Offset 1, canonical program `A044997.P14877715571537468302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A044997 (n : ℕ) : ℤ :=
  (A044997.P14877715571537468302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A044997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044998.P17317914427546594640

`∩[A031459(n+1), A043321(n+1)]`
-/

namespace A044998.P17317914427546594640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044998.P17317914427546594640

noncomputable section

/-- A044998: Numbers whose base-3 representation contains exactly one 0 and four 2's.

Offset 1, canonical program `A044998.P17317914427546594640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A044998 (n : ℕ) : ℤ :=
  (A044998.P17317914427546594640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2537 terms. -/
def A044998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044999.P10657281427789033699

`A044975(1+n)/2`
-/

namespace A044999.P10657281427789033699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044975 (1 + n) : ℚ) / 2

end

end A044999.P10657281427789033699

noncomputable section

/-- A044999: Numbers whose base-3 representation contains exactly two 0's and no 2's.

Offset 1, canonical program `A044999.P10657281427789033699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A044999 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A044999.P10657281427789033699.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A044999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045001.P4548679255925172547

`∩[A023700(n+1), A031452(n+1)]`
-/

namespace A045001.P4548679255925172547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045001.P4548679255925172547

noncomputable section

/-- A045001: Numbers whose base-3 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045001.P4548679255925172547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A045001 (n : ℕ) : ℤ :=
  (A045001.P4548679255925172547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. -/
def A045001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045002.P17857784299893427605

`∩[A031457(n+1), A043322(n+1)]`
-/

namespace A045002.P17857784299893427605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045002.P17857784299893427605

noncomputable section

/-- A045002: Numbers whose base-3 representation contains exactly two 0's and three 2's.

Offset 1, canonical program `A045002.P17857784299893427605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045002 (n : ℕ) : ℤ :=
  (A045002.P17857784299893427605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. -/
def A045002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045003.P5732014318311237842

`∩[A023702(n+1), A031458(n+1)]`
-/

namespace A045003.P5732014318311237842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045003.P5732014318311237842

noncomputable section

/-- A045003: Numbers whose base-3 representation contains exactly two 0's and four 2's.

Offset 1, canonical program `A045003.P5732014318311237842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2936 terms. -/
def A045003 (n : ℕ) : ℤ :=
  (A045003.P5732014318311237842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2936 terms. -/
def A045003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045004.P4399567208546035731

`A044980(1+n)/2`
-/

namespace A045004.P4399567208546035731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044980 (1 + n) : ℚ) / 2

end

end A045004.P4399567208546035731

noncomputable section

/-- A045004: Numbers whose base-3 representation contains exactly three 0's and no 2's.

Offset 1, canonical program `A045004.P4399567208546035731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A045004 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045004.P4399567208546035731.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A045004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045005.P15994022594868692415

`∩[A023699(n+1), A031454(n+1)]`
-/

namespace A045005.P15994022594868692415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045005.P15994022594868692415

noncomputable section

/-- A045005: Numbers whose base-3 representation contains exactly three 0's and one 2.

Offset 1, canonical program `A045005.P15994022594868692415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1733 terms. -/
def A045005 (n : ℕ) : ℤ :=
  (A045005.P15994022594868692415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1733 terms. -/
def A045005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045007.P18296789142797255809

`∩[A031452(n+1), A043323(n+1)]`
-/

namespace A045007.P18296789142797255809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045007.P18296789142797255809

noncomputable section

/-- A045007: Numbers whose base-3 representation contains exactly three 0's and three 2's.

Offset 1, canonical program `A045007.P18296789142797255809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A045007 (n : ℕ) : ℤ :=
  (A045007.P18296789142797255809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A045007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045010.P1561473996532251622

`∩[A023699(n+1), A031455(n+1)]`
-/

namespace A045010.P1561473996532251622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045010.P1561473996532251622

noncomputable section

/-- A045010: Numbers whose base-3 representation contains exactly four 0's and one 2.

Offset 1, canonical program `A045010.P1561473996532251622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A045010 (n : ℕ) : ℤ :=
  (A045010.P1561473996532251622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A045010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045011.P13718901377502952445

`∩[A031454(1+n), A043324(n+1)]`
-/

namespace A045011.P13718901377502952445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045011.P13718901377502952445

noncomputable section

/-- A045011: Numbers whose base-3 representation contains exactly four 0's and two 2's.

Offset 1, canonical program `A045011.P13718901377502952445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A045011 (n : ℕ) : ℤ :=
  (A045011.P13718901377502952445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A045011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045012.P13915242892822916730

`∩[A023701(n+1), A043324(n+1)]`
-/

namespace A045012.P13915242892822916730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045012.P13915242892822916730

noncomputable section

/-- A045012: Numbers whose base-3 representation contains exactly four 0's and three 2's.

Offset 1, canonical program `A045012.P13915242892822916730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A045012 (n : ℕ) : ℤ :=
  (A045012.P13915242892822916730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. -/
def A045012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045057.P15004167053876060946

`A023713(A043324(1+n)+1)`
-/

namespace A045057.P15004167053876060946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A043324 (1 + n) + 1).toNat

end

end A045057.P15004167053876060946

noncomputable section

/-- A045057: Numbers whose base-4 representation contains exactly four 0's and no 2's.

Offset 1, canonical program `A045057.P15004167053876060946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A045057 (n : ℕ) : ℤ :=
  A045057.P15004167053876060946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A045057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045071.P6797980674944799802

`A023717(A043322(n+1))`
-/

namespace A045071.P6797980674944799802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A043322 (n + 1)).toNat

end

end A045071.P6797980674944799802

noncomputable section

/-- A045071: Numbers whose base-4 representation contains exactly two 0's and no 3's.

Offset 1, canonical program `A045071.P6797980674944799802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A045071 (n : ℕ) : ℤ :=
  A045071.P6797980674944799802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A045071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045412.P17699345519846233104

`∑[2*A079559(n)+1]`
-/

namespace A045412.P17699345519846233104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045412.P17699345519846233104

noncomputable section

/-- A045412: a(1)=3; for n > 1, a(n) = a(n-1) + 1 if n is already in the sequence, a(n) = a(n-1) + 3 otherwise.

Offset 1, canonical program `A045412.P17699345519846233104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045412 (n : ℕ) : ℤ :=
  A045412.P17699345519846233104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045547.P2896272397358188517

`eq[2, A008904(n)]`
-/

namespace A045547.P2896272397358188517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045547.P2896272397358188517

noncomputable section

/-- A045547: Numbers whose factorial has '2' as its final nonzero digit.

Offset 1, canonical program `A045547.P2896272397358188517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A045547 (n : ℕ) : ℤ :=
  (A045547.P2896272397358188517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A045547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045550.P10362698429326084456

`lt[6, A008904(n)]`
-/

namespace A045550.P10362698429326084456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045550.P10362698429326084456

noncomputable section

/-- A045550: Numbers whose factorial has '8' as its final nonzero digit.

Offset 1, canonical program `A045550.P10362698429326084456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A045550 (n : ℕ) : ℤ :=
  (A045550.P10362698429326084456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A045550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045722.P9382885105584645516

`A006013(n)*A008619(A103517(n))`
-/

namespace A045722.P9382885105584645516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A008619 (A103517 n).toNat

end

end A045722.P9382885105584645516

noncomputable section

/-- A045722: Number of border edges in all noncrossing rooted trees on n nodes.

Offset 1, canonical program `A045722.P9382885105584645516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045722 (n : ℕ) : ℤ :=
  A045722.P9382885105584645516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A045722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045771.P17866989986534953282

`∑{d}[n+1, A035109(#)*A193356((n+1)/#)]`
-/

namespace A045771.P17866989986534953282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035109 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045771.P17866989986534953282

noncomputable section

/-- A045771: Number of similar sublattices of index n^2 in root lattice D_4.

Offset 1, canonical program `A045771.P17866989986534953282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045771 (n : ℕ) : ℤ :=
  A045771.P17866989986534953282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045932.P17507093528048832173

`A006073(eq[1, Δ[A006073(n+1)]]+1)`
-/

namespace A045932.P17507093528048832173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045932.P17507093528048832173

noncomputable section

/-- A045932: Numbers n such that n through n+3 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045932.P17507093528048832173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3037 terms. -/
def A045932 (n : ℕ) : ℤ :=
  A045932.P17507093528048832173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3037 terms. -/
def A045932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045979.P6130204729807151919

`eq[1, A086668(n+1)]+1`
-/

namespace A045979.P6130204729807151919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045979.P6130204729807151919

noncomputable section

/-- A045979: Numbers m such that the Bernoulli number B_{2m} has denominator 6.

Offset 1, canonical program `A045979.P6130204729807151919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A045979 (n : ℕ) : ℤ :=
  (A045979.P6130204729807151919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A045979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046079.P15449202977402527081

`∑{d}[1+n, A024361(#)]`
-/

namespace A046079.P15449202977402527081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024361 d

end

end A046079.P15449202977402527081

noncomputable section

/-- A046079: Number of Pythagorean triangles with leg n.

Offset 1, canonical program `A046079.P15449202977402527081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046079 (n : ℕ) : ℤ :=
  A046079.P15449202977402527081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046303.P9565588535061664667

`A000040(n+1)*A046302(n+2)`
-/

namespace A046303.P9565588535061664667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046302 (n + 2)

end

end A046303.P9565588535061664667

noncomputable section

/-- A046303: Product of 5 successive primes.

Offset 1, canonical program `A046303.P9565588535061664667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046303 (n : ℕ) : ℤ :=
  A046303.P9565588535061664667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046791.P2170166576823012210

`A038387(lt[1, A336551(1+n)]+1)`
-/

namespace A046791.P2170166576823012210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046791.P2170166576823012210

noncomputable section

/-- A046791: A046790 has several definitions, one of which is: "Numbers i such that there is a smaller positive number j such that (i+j)/2 and sqrt(i*j) are integers". The present sequence gives the smallest choice for j.

Offset 1, canonical program `A046791.P2170166576823012210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2902 terms. -/
def A046791 (n : ℕ) : ℤ :=
  A046791.P2170166576823012210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2902 terms. -/
def A046791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046824.P13810941798240372756

`A046820(n+1)-Δ[A000120(n)]`
-/

namespace A046824.P13810941798240372756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046820 (n + 1) - (f1 (n + 1) - f1 n)

end

end A046824.P13810941798240372756

noncomputable section

/-- A046824: Number of 1's in binary expansion of 5n+4.

Offset 0, canonical program `A046824.P13810941798240372756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046824 (n : ℕ) : ℤ :=
  A046824.P13810941798240372756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046868.P3478574669204923049

`lt[A036263(1+n), 1]+2`
-/

namespace A046868.P3478574669204923049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A046868.P3478574669204923049

noncomputable section

/-- A046868: Numbers n such that prime(n)^2 > prime(n-1)*prime(n+1).

Offset 1, canonical program `A046868.P3478574669204923049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046868 (n : ℕ) : ℤ :=
  (A046868.P3478574669204923049.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046930.P12832360869812236294

`Δ[A011974(1+n)]-2`
-/

namespace A046930.P12832360869812236294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A046930.P12832360869812236294

noncomputable section

/-- A046930: Size of sea of composite numbers surrounding n-th prime.

Offset 1, canonical program `A046930.P12832360869812236294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046930 (n : ℕ) : ℤ :=
  A046930.P12832360869812236294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047009.P16609204866922919021

`A006013(n)-A030983(A028310(n)+2)`
-/

namespace A047009.P16609204866922919021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n - A030983 (A028310 n + 2).toNat

end

end A047009.P16609204866922919021

noncomputable section

/-- A047009: T(2n,n), array T given by A047000.

Offset 0, canonical program `A047009.P16609204866922919021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A047009 (n : ℕ) : ℤ :=
  A047009.P16609204866922919021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A047009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047182.P3338192460869076266

`A037955(A028310(n)+1)-1`
-/

namespace A047182.P3338192460869076266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A028310 n + 1).toNat - 1

end

end A047182.P3338192460869076266

noncomputable section

/-- A047182: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-2)/2.

Offset 1, canonical program `A047182.P3338192460869076266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A047182 (n : ℕ) : ℤ :=
  A047182.P3338192460869076266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A047182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047664.P16577422671529071248

`floor((A008416(n+1)-A001849(n))/2)`
-/

namespace A047664.P16577422671529071248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008416 (n + 1) - A001849 n : ℚ) / 2⌋

end

end A047664.P16577422671529071248

noncomputable section

/-- A047664: Row 7 of square array defined in A047662.

Offset 1, canonical program `A047664.P16577422671529071248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047664 (n : ℕ) : ℤ :=
  A047664.P16577422671529071248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048614.P12453620042090511513

`A027833(abs(1-n)+2)-2`
-/

namespace A048614.P12453620042090511513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (|1 - (n : ℤ)| + 2).toNat - 2

end

end A048614.P12453620042090511513

noncomputable section

/-- A048614: Number of primes between successive pairs of twin primes.

Offset 1, canonical program `A048614.P12453620042090511513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048614 (n : ℕ) : ℤ :=
  A048614.P12453620042090511513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048753.P1406929724014975171

`eq[1, (n^3+1)%A257088(A032741(n))]`
-/

namespace A048753.P1406929724014975171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 3 + 1 : ℤ) (A257088 (A032741 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048753.P1406929724014975171

noncomputable section

/-- A048753: Composite numbers k whose product of aliquot divisors divided by number of aliquot divisors is an integer.

Offset 1, canonical program `A048753.P1406929724014975171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A048753 (n : ℕ) : ℤ :=
  (A048753.P1406929724014975171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A048753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049122.P11757817425609271245

`(A007440(n)+a(n-1))/2` with `a(0)=1`
-/

namespace A049122.P11757817425609271245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A007440 n : ℚ) + a (n - 1)) / 2

end

end A049122.P11757817425609271245

noncomputable section

/-- A049122: Revert transform of x*(1 + 2*x)/(1 + 3*x + x^2).

Offset 1, canonical program `A049122.P11757817425609271245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A049122 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049122.P11757817425609271245.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A049122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049149.P3106904862429449036

`record[(n+1)*A008966(A000010(n+1))]`
-/

namespace A049149.P3106904862429449036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008966 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049149.P3106904862429449036

noncomputable section

/-- A049149: Numbers k such that the Euler totient function phi(k) is squarefree.

Offset 1, canonical program `A049149.P3106904862429449036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A049149 (n : ℕ) : ℤ :=
  A049149.P3106904862429449036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A049149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049197.P6428426226621759377

`filter[A049195(n+1), A008966(#)]`
-/

namespace A049197.P6428426226621759377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A049197.P6428426226621759377

noncomputable section

/-- A049197: Squarefree numbers whose Euler totient function is not squarefree.

Offset 1, canonical program `A049197.P6428426226621759377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5792 terms. -/
def A049197 (n : ℕ) : ℤ :=
  A049197.P6428426226621759377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5792 terms. -/
def A049197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049199.P14129207223259727457

`eq[A008683(A000010(n+2)), A055615(n+2)]+2`
-/

namespace A049199.P14129207223259727457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A049199.P14129207223259727457

noncomputable section

/-- A049199: Nonsquarefree numbers whose Euler totient function is also nonsquarefree.

Offset 1, canonical program `A049199.P14129207223259727457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7811 terms. -/
def A049199 (n : ℕ) : ℤ :=
  (A049199.P14129207223259727457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7811 terms. -/
def A049199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049225.P17979210083929373104

`eq[1, char[A000010(A005117(n+1))]]`
-/

namespace A049225.P17979210083929373104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005117 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049225.P17979210083929373104

noncomputable section

/-- A049225: Values of totient function applied to squarefree numbers; or numbers of form Product (p_i-1) where p_i are distinct primes.

Offset 1, canonical program `A049225.P17979210083929373104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A049225 (n : ℕ) : ℤ :=
  (A049225.P17979210083929373104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. -/
def A049225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049282.P1531050254389215558

`∩[A049231(n+1), A049233(n+1)]`
-/

namespace A049282.P1531050254389215558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049282.P1531050254389215558

noncomputable section

/-- A049282: Primes p such that both p-2 and p+2 are squarefree.

Offset 1, canonical program `A049282.P1531050254389215558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7149 terms. -/
def A049282 (n : ℕ) : ℤ :=
  (A049282.P1531050254389215558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7149 terms. -/
def A049282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049419.P11075566220394595585

`∏{e}[n+1, A032741(#)+1]`
-/

namespace A049419.P11075566220394595585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A032741 (Nat.factorization (f1 n) p) + 1)

end

end A049419.P11075566220394595585

noncomputable section

/-- A049419: a(1) = 1; for n > 1, a(n) = number of exponential divisors of n.

Offset 1, canonical program `A049419.P11075566220394595585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049419 (n : ℕ) : ℤ :=
  A049419.P11075566220394595585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049454.P18198278345640105493

`a(n-1)+A000010(n)²` with `a(0)=1`
-/

namespace A049454.P18198278345640105493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000010 n ^ 2

end

end A049454.P18198278345640105493

noncomputable section

/-- A049454: a(n) = 1 + Sum_{i=1..n} phi(i)^2.

Offset 0, canonical program `A049454.P18198278345640105493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049454 (n : ℕ) : ℤ :=
  A049454.P18198278345640105493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049533.P347491331111619318

`record[floor(sqrt(A059591(n)))]`
-/

namespace A049533.P347491331111619318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049533.P347491331111619318

noncomputable section

/-- A049533: Numbers k such that k^2+1 is squarefree.

Offset 1, canonical program `A049533.P347491331111619318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8951 terms. -/
def A049533 (n : ℕ) : ℤ :=
  A049533.P347491331111619318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8951 terms. -/
def A049533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049599.P10458558030046678201

`∏{e}[n+1, A032741(#)+2]`
-/

namespace A049599.P10458558030046678201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A032741 (Nat.factorization (f1 n) p) + 2)

end

end A049599.P10458558030046678201

noncomputable section

/-- A049599: Number of (1+e)-divisors of n: if n = Product p(i)^r(i), d = Product p(i)^s(i) and s(i) = 0 or s(i) divides r(i), then d is a (1+e)-divisor of n.

Offset 1, canonical program `A049599.P10458558030046678201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049599 (n : ℕ) : ℤ :=
  A049599.P10458558030046678201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049613.P15357711757852427852

`A049653(2+n)+2`
-/

namespace A049613.P15357711757852427852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (2 + n) + 2

end

end A049613.P15357711757852427852

noncomputable section

/-- A049613: a(n) = 2n - (largest prime < 2n-2).

Offset 3, canonical program `A049613.P15357711757852427852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049613 (n : ℕ) : ℤ :=
  A049613.P15357711757852427852.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049691.P8765303235074020931

`a(n-1)+2*A000010(n)` with `a(0)=0, a(1)=3`
-/

namespace A049691.P8765303235074020931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 2 * A000010 n

end

end A049691.P8765303235074020931

noncomputable section

/-- A049691: a(n)=T(n,n), array T as in A049687. Also a(n)=T(2n,2n), array T given by A049639.

Offset 0, canonical program `A049691.P8765303235074020931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A049691 (n : ℕ) : ℤ :=
  A049691.P8765303235074020931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A049691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049797.P8834432724964485178

`∑[lcm(2, n+1)-A091818(n+2)]`
-/

namespace A049797.P8834432724964485178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - A091818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049797.P8834432724964485178

noncomputable section

/-- A049797: a(n) = Sum_{k = 2..n} T(n,k), array T as in A049800.

Offset 1, canonical program `A049797.P8834432724964485178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049797 (n : ℕ) : ℤ :=
  A049797.P8834432724964485178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049822.P2592114568686001596

`∑{d}[1+n, A032741(#-1)]`
-/

namespace A049822.P2592114568686001596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 (d - 1)

end

end A049822.P2592114568686001596

noncomputable section

/-- A049822: a(n) = 1 - tau(n) + Sum_{d|n} tau(d-1).

Offset 1, canonical program `A049822.P2592114568686001596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049822 (n : ℕ) : ℤ :=
  A049822.P2592114568686001596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050206.P11225108751146401757

`A010783(A038722(n+1))+1`
-/

namespace A050206.P11225108751146401757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A038722 (n + 1)).toNat + 1

end

end A050206.P11225108751146401757

noncomputable section

/-- A050206: Triangle read by rows: smallest denominator of the expansion of k/n using the greedy algorithm, 1<=k<=n-1.

Offset 2, canonical program `A050206.P11225108751146401757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050206 (n : ℕ) : ℤ :=
  A050206.P11225108751146401757.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050503.P13340231085724789006

`Δ[A007504(n)]-A064659(n+1)`
-/

namespace A050503.P13340231085724789006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064659 (n + 1)

end

end A050503.P13340231085724789006

noncomputable section

/-- A050503: Nearest integer to n*log(n).

Offset 1, canonical program `A050503.P13340231085724789006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050503 (n : ℕ) : ℤ :=
  A050503.P13340231085724789006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050530.P8340804989317235602

`eq[1, A001222(n+2-A000010(n+2))]+2`
-/

namespace A050530.P8340804989317235602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2 : ℤ) - A000010 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A050530.P8340804989317235602

noncomputable section

/-- A050530: Numbers k such that k - phi(k) is prime.

Offset 1, canonical program `A050530.P8340804989317235602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3742 terms. -/
def A050530 (n : ℕ) : ℤ :=
  (A050530.P8340804989317235602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3742 terms. -/
def A050530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050607.P8984009073988029614

`lt[A000999(n), 2]`
-/

namespace A050607.P8984009073988029614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050607.P8984009073988029614

noncomputable section

/-- A050607: Numbers k such that base 5 expansion matches (0|1|2)*((0|1)(3|4))?(0|1|2)*.

Offset 1, canonical program `A050607.P8984009073988029614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A050607 (n : ℕ) : ℤ :=
  (A050607.P8984009073988029614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A050607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050872.P5272709891617421659

`record[2^n-A000740(n+1)]`
-/

namespace A050872.P5272709891617421659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050872.P5272709891617421659

noncomputable section

/-- A050872: a(n) = (1/2)*A050871 (row sums of array T in A050870, periodic binary words).

Offset 0, canonical program `A050872.P5272709891617421659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050872 (n : ℕ) : ℤ :=
  A050872.P5272709891617421659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051297.P15842795735754610719

`A028266(n)/2`
-/

namespace A051297.P15842795735754610719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028266 n : ℚ) / 2

end

end A051297.P15842795735754610719

noncomputable section

/-- A051297: (Terms in A028266)/2.

Offset 0, canonical program `A051297.P15842795735754610719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051297 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051297.P15842795735754610719.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051341.P12409519143467508836

`A023531(A003056(n)%Δ[A099375(n)])`
-/

namespace A051341.P12409519143467508836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (Int.tmod (A003056 n) (f1 (n + 1) - f1 n)).toNat

end

end A051341.P12409519143467508836

noncomputable section

/-- A051341: A simple 2-dimensional array, read by antidiagonals.

Offset 0, canonical program `A051341.P12409519143467508836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051341 (n : ℕ) : ℤ :=
  A051341.P12409519143467508836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051349.P2414547720400107792

`a(n-1)+A018252(n)` with `a(0)=0`
-/

namespace A051349.P2414547720400107792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A018252 n

end

end A051349.P2414547720400107792

noncomputable section

/-- A051349: Sum of first n nonprimes.

Offset 0, canonical program `A051349.P2414547720400107792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349 (n : ℕ) : ℤ :=
  A051349.P2414547720400107792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051476.P259747214792868749

`A051474(n)²`
-/

namespace A051476.P259747214792868749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051474 n ^ 2

end

end A051476.P259747214792868749

noncomputable section

/-- A051476: (Terms in A014733)/4.

Offset 0, canonical program `A051476.P259747214792868749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A051476 (n : ℕ) : ℤ :=
  A051476.P259747214792868749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A051476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052294.P11560629231918074628

`eq[1, A032741(log2(A001316(n)))]`
-/

namespace A052294.P11560629231918074628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052294.P11560629231918074628

noncomputable section

/-- A052294: Pernicious numbers: numbers with a prime number of 1's in their binary expansion.

Offset 1, canonical program `A052294.P11560629231918074628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052294 (n : ℕ) : ℤ :=
  (A052294.P11560629231918074628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052410.P3102814015669483073

`root(n+1, A052409(n+1)%A014601(a(n-1)))` with `a(0)=1`
-/

namespace A052410.P3102814015669483073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℝ) ^ (1 / (Int.tmod (A052409 (n + 1)) (A014601 (SequenceMachineLib.roundAway (a (n - 1))).toNat) : ℝ))

end

end A052410.P3102814015669483073

noncomputable section

/-- A052410: Write n = m^k with m, k integers, k >= 1, then a(n) is the smallest possible choice for m.

Offset 1, canonical program `A052410.P3102814015669483073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052410 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052410.P3102814015669483073.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052724.P10552562540923377883

`n!*A052702(n)`
-/

namespace A052724.P10552562540923377883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052702 n

end

end A052724.P10552562540923377883

noncomputable section

/-- A052724: A simple context-free grammar in a labeled universe: a(n) = A052743(n)-A052723(n), n>1.

Offset 0, canonical program `A052724.P10552562540923377883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052724 (n : ℕ) : ℤ :=
  A052724.P10552562540923377883.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052726.P3089631758560975748

`n!*A052709(n)`
-/

namespace A052726.P3089631758560975748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052709 n

end

end A052726.P3089631758560975748

noncomputable section

/-- A052726: E.g.f. (1-sqrt(1-4*x-4*x^2))/ (2*(1+x)).

Offset 0, canonical program `A052726.P3089631758560975748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052726 (n : ℕ) : ℤ :=
  A052726.P3089631758560975748.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052784.P1848792610995731098

`A052777(abs(1-n))*n`
-/

namespace A052784.P1848792610995731098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052777 |1 - (n : ℤ)|.toNat * (n : ℤ)

end

end A052784.P1848792610995731098

noncomputable section

/-- A052784: Expansion of e.g.f.: x^3*(exp(x)-1)^3.

Offset 0, canonical program `A052784.P1848792610995731098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A052784 (n : ℕ) : ℤ :=
  A052784.P1848792610995731098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A052784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052823.P10445000710085062306

`A000031(floor(sqrt(n²+1)))-2`
-/

namespace A052823.P10445000710085062306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (Nat.sqrt (n ^ 2 + 1)) - 2

end

end A052823.P10445000710085062306

noncomputable section

/-- A052823: A simple grammar: cycles of pairs of sequences.

Offset 0, canonical program `A052823.P10445000710085062306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052823 (n : ℕ) : ℤ :=
  A052823.P10445000710085062306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052825.P1042105182767021070

`∑[A000031(A004273(n)-n)-1]`
-/

namespace A052825.P1042105182767021070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A004273 n - (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052825.P1042105182767021070

noncomputable section

/-- A052825: A simple grammar: partial sums of A008965.

Offset 0, canonical program `A052825.P1042105182767021070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052825 (n : ℕ) : ℤ :=
  A052825.P1042105182767021070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053176.P7503796743926850121

`A065091(lt[1, A023595(n+1)])`
-/

namespace A053176.P7503796743926850121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053176.P7503796743926850121

noncomputable section

/-- A053176: Primes p such that 2p+1 is composite.

Offset 1, canonical program `A053176.P7503796743926850121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8778 terms. -/
def A053176 (n : ℕ) : ℤ :=
  A053176.P7503796743926850121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8778 terms. -/
def A053176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053201.P899599958866102677

`A014410(n+2)%(row(n)+2)`
-/

namespace A053201.P899599958866102677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014410 (n + 2)) (SequenceMachineLib.triRow n + 2 : ℤ)

end

end A053201.P899599958866102677

noncomputable section

/-- A053201: Pascal's triangle (excluding first, last element of each row) read by rows, row n read mod n.

Offset 2, canonical program `A053201.P899599958866102677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053201 (n : ℕ) : ℤ :=
  A053201.P899599958866102677.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053233.P14014026869215468546

`eq[2, A053230(1+n)]+1`
-/

namespace A053233.P14014026869215468546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053233.P14014026869215468546

noncomputable section

/-- A053233: Numbers k such that A053230(k) = 2.

Offset 1, canonical program `A053233.P14014026869215468546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8497 terms. -/
def A053233 (n : ℕ) : ℤ :=
  (A053233.P14014026869215468546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8497 terms. -/
def A053233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053247.P14306056287210934944

`A053223(A053228(n+1))`
-/

namespace A053247.P14306056287210934944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (A053228 (n + 1)).toNat

end

end A053247.P14306056287210934944

noncomputable section

/-- A053247: Second differences of sigma(n) that are positive.

Offset 1, canonical program `A053247.P14306056287210934944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053247 (n : ℕ) : ℤ :=
  A053247.P14306056287210934944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053248.P11019694182459374148

`abs(A053223(A053229(1+n)))`
-/

namespace A053248.P11019694182459374148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053223 (A053229 (1 + n)).toNat|

end

end A053248.P11019694182459374148

noncomputable section

/-- A053248: Second differences of sigma(n) that are negative.

Offset 1, canonical program `A053248.P11019694182459374148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053248 (n : ℕ) : ℤ :=
  A053248.P11019694182459374148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053477.P2814925217156202681

`n+1+a(A032741(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A053477.P2814925217156202681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n + 1 + a (A032741 (n + 1)).toNat

end

end A053477.P2814925217156202681

noncomputable section

/-- A053477: Sum of iterates of divisor number function A000005.

Offset 1, canonical program `A053477.P2814925217156202681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053477 (n : ℕ) : ℤ :=
  (A053477.P2814925217156202681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053616.P15730649175569513944

`val(2*A036561(n), 6)`
-/

namespace A053616.P15730649175569513944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A036561 n).toNat 6

end

end A053616.P15730649175569513944

noncomputable section

/-- A053616: Pyramidal sequence: distance to nearest triangular number.

Offset 0, canonical program `A053616.P15730649175569513944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616 (n : ℕ) : ℤ :=
  (A053616.P15730649175569513944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053634.P9507846522746473809

`A000031(n+3)/2`
-/

namespace A053634.P9507846522746473809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000031 (n + 3) : ℚ) / 2

end

end A053634.P9507846522746473809

noncomputable section

/-- A053634: a(n) = Sum_{ d divides n } phi(d)*2^(n/d)/(2n).

Offset 3, canonical program `A053634.P9507846522746473809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053634.P9507846522746473809.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053635.P1305169383690897396

`n*A000031(n)`
-/

namespace A053635.P1305169383690897396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000031 n

end

end A053635.P1305169383690897396

noncomputable section

/-- A053635: a(n) = Sum_{d|n} phi(d)*2^(n/d).

Offset 0, canonical program `A053635.P1305169383690897396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053635 (n : ℕ) : ℤ :=
  A053635.P1305169383690897396.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053636.P10200428342403151043

`∑{d}[n, #%2*A000010(#)*2^(n/#)]`
-/

namespace A053636.P10200428342403151043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((d % 2 : ℕ) : ℤ) * A000010 d : ℝ) * (2 : ℝ) ^ ((n : ℚ) / (d : ℚ) : ℝ)

end

end A053636.P10200428342403151043

noncomputable section

/-- A053636: a(n) = Sum_{odd d|n} phi(d)*2^(n/d).

Offset 0, canonical program `A053636.P10200428342403151043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A053636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053636.P10200428342403151043.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A053636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053666.P5884905316640383462

`∏{digits}[Δ[A007504(n)], #]`
-/

namespace A053666.P5884905316640383462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P5884905316640383462

noncomputable section

/-- A053666: Product of digits of n-th prime.

Offset 1, canonical program `A053666.P5884905316640383462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053666 (n : ℕ) : ℤ :=
  (A053666.P5884905316640383462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053726.P6824905761757210776

`A047845(n+2)+1`
-/

namespace A053726.P6824905761757210776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + 1

end

end A053726.P6824905761757210776

noncomputable section

/-- A053726: "Flag numbers": number of dots that can be arranged in successive rows of K, K-1, K, K-1, K, ..., K-1, K (assuming there is a total of L > 1 rows of size K > 1).

Offset 1, canonical program `A053726.P6824905761757210776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053726 (n : ℕ) : ℤ :=
  A053726.P6824905761757210776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053786.P2010636210610092813

`A007918(A000583(n+1))`
-/

namespace A053786.P2010636210610092813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000583 (n + 1)).toNat

end

end A053786.P2010636210610092813

noncomputable section

/-- A053786: a(n) = next prime after n^4.

Offset 1, canonical program `A053786.P2010636210610092813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053786 (n : ℕ) : ℤ :=
  A053786.P2010636210610092813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054058.P15785555967705763602

`∑{d}[1+n, A000031(#-1)]`
-/

namespace A054058.P15785555967705763602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000031 (d - 1)

end

end A054058.P15785555967705763602

noncomputable section

/-- A054058: Inverse Moebius transform of A000031 (starting at term 0).

Offset 0, canonical program `A054058.P15785555967705763602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054058 (n : ℕ) : ℤ :=
  A054058.P15785555967705763602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054079.P11177909957407528994

`∑{d}[n+1, A000031(#-1)*A008683((n+1)/#)]`
-/

namespace A054079.P11177909957407528994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000031 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054079.P11177909957407528994

noncomputable section

/-- A054079: Moebius transform of A000031 (starting at term 0).

Offset 0, canonical program `A054079.P11177909957407528994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054079 (n : ℕ) : ℤ :=
  A054079.P11177909957407528994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054125.P1991655135877599388

`A054124(n)+A054123(n)`
-/

namespace A054125.P1991655135877599388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + A054123 n

end

end A054125.P1991655135877599388

noncomputable section

/-- A054125: Sum of the arrays in A054123 and A054124.

Offset 0, canonical program `A054125.P1991655135877599388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054125 (n : ℕ) : ℤ :=
  A054125.P1991655135877599388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054185.P13065165919071565477

`∑{#}[n, C(n, #)*A000031(#)]`
-/

namespace A054185.P13065165919071565477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000031 k

end

end A054185.P13065165919071565477

noncomputable section

/-- A054185: Binomial transform of A000031.

Offset 0, canonical program `A054185.P13065165919071565477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A054185 (n : ℕ) : ℤ :=
  A054185.P13065165919071565477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A054185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054438.P5014567345859985492

`A038570(A038554(n))`
-/

namespace A054438.P5014567345859985492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (A038554 n).toNat

end

end A054438.P5014567345859985492

noncomputable section

/-- A054438: Third derivative of n.

Offset 0, canonical program `A054438.P5014567345859985492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054438 (n : ℕ) : ℤ :=
  A054438.P5014567345859985492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054439.P8347525699778646254

`A038570(A038570(n))`
-/

namespace A054439.P8347525699778646254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (A038570 n).toNat

end

end A054439.P8347525699778646254

noncomputable section

/-- A054439: Fourth derivative of n.

Offset 0, canonical program `A054439.P8347525699778646254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054439 (n : ℕ) : ℤ :=
  A054439.P8347525699778646254.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054525.P10765847089334305485

`∑{d}[A126988(1+n), A007427(#)]`
-/

namespace A054525.P10765847089334305485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A054525.P10765847089334305485

noncomputable section

/-- A054525: Triangle T(n,k): T(n,k) = mu(n/k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054525.P10765847089334305485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054525 (n : ℕ) : ℤ :=
  A054525.P10765847089334305485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054546.P7941677746410983189

`A018252(n+1)-A141468(n+1)`
-/

namespace A054546.P7941677746410983189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - A141468 (n + 1)

end

end A054546.P7941677746410983189

noncomputable section

/-- A054546: First differences of nonprimes (including 0 and 1, A002808).

Offset 1, canonical program `A054546.P7941677746410983189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054546 (n : ℕ) : ℤ :=
  A054546.P7941677746410983189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054643.P5809740023025136968

`A000040(eq[6, gcd(6, A036263(n+1))]+1)`
-/

namespace A054643.P5809740023025136968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A036263 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A054643.P5809740023025136968

noncomputable section

/-- A054643: Primes prime(n) such that prime(n) + prime(n+1) + prime(n+2) == 0 (mod 3).

Offset 1, canonical program `A054643.P5809740023025136968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A054643 (n : ℕ) : ℤ :=
  A054643.P5809740023025136968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. -/
def A054643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054741.P1148217812874177034

`lt[2*A000010(n+1), n]+1`
-/

namespace A054741.P1148217812874177034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A054741.P1148217812874177034

noncomputable section

/-- A054741: Numbers m such that totient(m) < cototient(m).

Offset 1, canonical program `A054741.P1148217812874177034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054741 (n : ℕ) : ℤ :=
  (A054741.P1148217812874177034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055027.P17972908124499805760

`∑{d}[∑{d}[A055025(n+1), #%2]+1, #%2]`
-/

namespace A055027.P17972908124499805760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 2

end

end A055027.P17972908124499805760

noncomputable section

/-- A055027: Number of inequivalent Gaussian primes of successive norms (indexed by A055025).

Offset 1, canonical program `A055027.P17972908124499805760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055027 (n : ℕ) : ℤ :=
  (A055027.P17972908124499805760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055029.P8500131277876422925

`char[A002144(n+1)]+char[A055025(n+1)]`
-/

namespace A055029.P8500131277876422925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A055029.P8500131277876422925

noncomputable section

/-- A055029: Number of inequivalent Gaussian primes of norm n.

Offset 0, canonical program `A055029.P8500131277876422925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055029 (n : ℕ) : ℤ :=
  (A055029.P8500131277876422925.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055048.P15109314482782834928

`A055040(n+1)/3`
-/

namespace A055048.P15109314482782834928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055040 (n + 1) : ℚ) / 3

end

end A055048.P15109314482782834928

noncomputable section

/-- A055048: Numbers of the form 9^i*(3*j+2).

Offset 1, canonical program `A055048.P15109314482782834928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055048.P15109314482782834928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055210.P17536418174032618054

`∑{d}[n+1, A010052(#)*A000010(#)]`
-/

namespace A055210.P17536418174032618054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A000010 d

end

end A055210.P17536418174032618054

noncomputable section

/-- A055210: Sum of totients of square divisors of n.

Offset 1, canonical program `A055210.P17536418174032618054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055210 (n : ℕ) : ℤ :=
  A055210.P17536418174032618054.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055210.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055498.P9363392666146799462

`A007918(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A055498.P9363392666146799462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007918 (a (n - 1) + a (n - 2)).toNat

end

end A055498.P9363392666146799462

noncomputable section

/-- A055498: a(0)=0, a(1)=1, a(n) = smallest prime >= a(n-1) + a(n-2).

Offset 0, canonical program `A055498.P9363392666146799462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055498 (n : ℕ) : ℤ :=
  A055498.P9363392666146799462.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055529.P12508370460568413740

`A072831(n)-A011371(n)`
-/

namespace A055529.P12508370460568413740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - A011371 n

end

end A055529.P12508370460568413740

noncomputable section

/-- A055529: Number of bits needed in mantissa to express n! exactly.

Offset 0, canonical program `A055529.P12508370460568413740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055529 (n : ℕ) : ℤ :=
  A055529.P12508370460568413740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055632.P7552695491409250947

`eq[∑{p}[n, #-1], A007918(∑{p}[n, #-1])]`
-/

namespace A055632.P7552695491409250947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A055632.P7552695491409250947

noncomputable section

/-- A055632: Sum of totient function of primes dividing n is a prime.

Offset 1, canonical program `A055632.P7552695491409250947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2999 terms. -/
def A055632 (n : ℕ) : ℤ :=
  (A055632.P7552695491409250947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2999 terms. -/
def A055632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055654.P12577505086499020644

`n+1-A055653(n+1)`
-/

namespace A055654.P12577505086499020644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055653 (n + 1)

end

end A055654.P12577505086499020644

noncomputable section

/-- A055654: Difference between n and the result of "Phi-summation" over unitary divisors of n.

Offset 1, canonical program `A055654.P12577505086499020644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055654 (n : ℕ) : ℤ :=
  A055654.P12577505086499020644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055656.P8291033104864227745

`A055597(1+n)-A011371(n+1)`
-/

namespace A055656.P8291033104864227745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055597 (1 + n) - A011371 (n + 1)

end

end A055656.P8291033104864227745

noncomputable section

/-- A055656: Excess in exponents of powers of 2 in Euler phi of n! compared to that of n!.

Offset 1, canonical program `A055656.P8291033104864227745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055656 (n : ℕ) : ℤ :=
  A055656.P8291033104864227745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055741.P7823549928393762310

`lt[A001221(n+1), A001221(A000010(n+1))]+1`
-/

namespace A055741.P7823549928393762310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055741.P7823549928393762310

noncomputable section

/-- A055741: Phi(n) has more distinct prime factors than n.

Offset 1, canonical program `A055741.P7823549928393762310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055741 (n : ℕ) : ℤ :=
  (A055741.P7823549928393762310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055742.P14231494332674757041

`eq[A001221(A000010(n+1)), A001221(n+1)]+1`
-/

namespace A055742.P14231494332674757041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055742.P14231494332674757041

noncomputable section

/-- A055742: Numbers k such that k and EulerPhi(k) have same number of prime factors, counted without multiplicity.

Offset 1, canonical program `A055742.P14231494332674757041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055742 (n : ℕ) : ℤ :=
  (A055742.P14231494332674757041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055743.P3181542319350071640

`lt[A001221(A000010(n+1)), A001221(n+1)]+1`
-/

namespace A055743.P3181542319350071640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055743.P3181542319350071640

noncomputable section

/-- A055743: Phi(n) has fewer distinct prime divisors than n.

Offset 1, canonical program `A055743.P3181542319350071640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A055743 (n : ℕ) : ℤ :=
  (A055743.P3181542319350071640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A055743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056010.P10700281569789151384

`A025262(n+2)`
-/

namespace A056010.P10700281569789151384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025262 (n + 2)

end

end A056010.P10700281569789151384

noncomputable section

/-- A056010: Number of words of length n in a simple grammar.

Offset 0, canonical program `A056010.P10700281569789151384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056010 (n : ℕ) : ℤ :=
  A056010.P10700281569789151384.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056228.P17826182728079616557

`A000010(n+2)²-A000010(n+1)*A000010(n+3)`
-/

namespace A056228.P17826182728079616557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) ^ 2 - A000010 (n + 1) * A000010 (n + 3)

end

end A056228.P17826182728079616557

noncomputable section

/-- A056228: Image of Euler totient function (A000010) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

Offset 1, canonical program `A056228.P17826182728079616557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056228 (n : ℕ) : ℤ :=
  A056228.P17826182728079616557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056274.P6989764788007675043

`ceil(A034741(n+1)/2)`
-/

namespace A056274.P6989764788007675043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034741 (n + 1) : ℚ) / 2⌉

end

end A056274.P6989764788007675043

noncomputable section

/-- A056274: Number of primitive (aperiodic) word structures of length n using a 3-ary alphabet.

Offset 1, canonical program `A056274.P6989764788007675043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056274 (n : ℕ) : ℤ :=
  A056274.P6989764788007675043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056333.P3348555914057923111

`A056332(n+1)+∑{d}[n+1, A008683(#)*A056328((n+1)/#)]`
-/

namespace A056333.P3348555914057923111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056333.P3348555914057923111

noncomputable section

/-- A056333: Number of primitive (aperiodic) reversible string structures with n beads using a maximum of four different colors.

Offset 1, canonical program `A056333.P3348555914057923111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056333 (n : ℕ) : ℤ :=
  A056333.P3348555914057923111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056474.P10987034700088380387

`∑{d}[A008619(n), A056281(#)]`
-/

namespace A056474.P10987034700088380387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056281 d

end

end A056474.P10987034700088380387

noncomputable section

/-- A056474: Number of palindromic structures using exactly five different symbols.

Offset 1, canonical program `A056474.P10987034700088380387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056474 (n : ℕ) : ℤ :=
  A056474.P10987034700088380387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056502.P16267520949959873149

`∑{d}[n+1, A008683(#)*A056492((n+1)/#)]`
-/

namespace A056502.P16267520949959873149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056492 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056502.P16267520949959873149

noncomputable section

/-- A056502: Number of primitive (period n) periodic palindromes using exactly six different symbols.

Offset 1, canonical program `A056502.P16267520949959873149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056492, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056502 (n : ℕ) : ℤ :=
  A056502.P16267520949959873149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056492, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056557.P17486820174551382648

`A003056(n-A000292(A056556(n)))`
-/

namespace A056557.P17486820174551382648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) - A000292 (A056556 n).toNat).toNat

end

end A056557.P17486820174551382648

noncomputable section

/-- A056557: Second tetrahedral coordinate.

Offset 0, canonical program `A056557.P17486820174551382648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056557 (n : ℕ) : ℤ :=
  A056557.P17486820174551382648.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056564.P14160989435104353240

`A056562(n)+A056563(n)`
-/

namespace A056564.P14160989435104353240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + A056563 n

end

end A056564.P14160989435104353240

noncomputable section

/-- A056564: Number of times primes can be produced by taking the absolute difference between the n-th triangular number and another triangular number.

Offset 0, canonical program `A056564.P14160989435104353240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056562, A056563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056564 (n : ℕ) : ℤ :=
  A056564.P14160989435104353240.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056562, A056563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056607.P17725274653819121326

`A002110(n+1)/A048633(n+1)`
-/

namespace A056607.P17725274653819121326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056607.P17725274653819121326

noncomputable section

/-- A056607: a(n) is the n-th primorial divided by squarefree kernel of corresponding central binomial coefficient.

Offset 1, canonical program `A056607.P17725274653819121326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056607.P17725274653819121326.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056610.P1504894740398831934

`A034386(n+1)/A048633(n+1)`
-/

namespace A056610.P1504894740398831934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A048633 (n + 1) : ℚ)

end

end A056610.P1504894740398831934

noncomputable section

/-- A056610: Quotient: squarefree kernel of lcm(1,..,n) (or of n!) divided by kernel of central binomial coefficient.

Offset 1, canonical program `A056610.P1504894740398831934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056610 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056610.P1504894740398831934.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056610.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056691.P4901059937054800505

`∑{d}[n+1, A054521(A000217(n)+#+1)]`
-/

namespace A056691.P4901059937054800505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054521 (A000217 n + (d : ℤ) + 1).toNat

end

end A056691.P4901059937054800505

noncomputable section

/-- A056691: Number of divisors d of n with gcd(d+1, n) = 1.

Offset 1, canonical program `A056691.P4901059937054800505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A056691 (n : ℕ) : ℤ :=
  A056691.P4901059937054800505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A056691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057037.P2208960147265636780

`val(A036561(2*n), 2)+1`
-/

namespace A057037.P2208960147265636780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (2 * n)).toNat 2 + 1

end

end A057037.P2208960147265636780

noncomputable section

/-- A057037: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057037(n)=j(2n-1).

Offset 1, canonical program `A057037.P2208960147265636780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057037 (n : ℕ) : ℤ :=
  (A057037.P2208960147265636780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057039.P10812322326582328204

`val(A036561(2*n+1), 2)+1`
-/

namespace A057039.P10812322326582328204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (2 * n + 1)).toNat 2 + 1

end

end A057039.P10812322326582328204

noncomputable section

/-- A057039: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057039(n)=j(2n).

Offset 1, canonical program `A057039.P10812322326582328204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057039 (n : ℕ) : ℤ :=
  (A057039.P10812322326582328204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057103.P18299417979130677149

`A001283(n+2)*A098352(n+1)`
-/

namespace A057103.P18299417979130677149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) * A098352 (n + 1)

end

end A057103.P18299417979130677149

noncomputable section

/-- A057103: Triangle of congrua: T(n,k) = 4*n*k(n^2-k^2) with n>k>0 and starting at T(2,1) = 24. A055096(n)^2 + a(n) is a square, as is A055096(n)^2 - a(n).

Offset 2, canonical program `A057103.P18299417979130677149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057103 (n : ℕ) : ℤ :=
  A057103.P18299417979130677149.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057554.P2016188426634242539

`val(A036561(floor(n/2)), gcd(2, n)+1)`
-/

namespace A057554.P2016188426634242539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 ⌊(n : ℚ) / 2⌋.toNat).toNat (Nat.gcd 2 n + 1)

end

end A057554.P2016188426634242539

noncomputable section

/-- A057554: Lexicographic ordering of MxM, where M={0,1,2,...}.

Offset 1, canonical program `A057554.P2016188426634242539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057554 (n : ℕ) : ℤ :=
  (A057554.P2016188426634242539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057789.P16127120602619535770

`(n+1)*A023896(n+1)-A053818(n+1)`
-/

namespace A057789.P16127120602619535770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023896 (n + 1) - A053818 (n + 1)

end

end A057789.P16127120602619535770

noncomputable section

/-- A057789: a(n) = Sum_{k = 1..n, gcd(k,n)=1} k*(n-k).

Offset 1, canonical program `A057789.P16127120602619535770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A053818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057789 (n : ℕ) : ℤ :=
  A057789.P16127120602619535770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A053818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057919.P11397683448699479986

`record[gcd(n+1, A000010(n+2)%A000010(n+1))]`
-/

namespace A057919.P11397683448699479986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A000010 (n + 2)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057919.P11397683448699479986

noncomputable section

/-- A057919: Numbers k such that phi(k) divides phi(k+1), where phi(k) is the Euler totient function A000010.

Offset 1, canonical program `A057919.P11397683448699479986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A057919 (n : ℕ) : ℤ :=
  (A057919.P11397683448699479986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A057919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057920.P5459412885655340721

`lt[A000010(n+1)%A000010(n+2), 1]+1`
-/

namespace A057920.P5459412885655340721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A000010 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057920.P5459412885655340721

noncomputable section

/-- A057920: Numbers k such that phi(k+1) divides phi(k), where phi is A000010.

Offset 1, canonical program `A057920.P5459412885655340721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A057920 (n : ℕ) : ℤ :=
  (A057920.P5459412885655340721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. -/
def A057920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058033.P4214227159742838609

`Δ[A054850(1+n)]`
-/

namespace A058033.P4214227159742838609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054850 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058033.P4214227159742838609

noncomputable section

/-- A058033: Number of powers of 2 between (but not including) two consecutive primorials.

Offset 1, canonical program `A058033.P4214227159742838609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058033 (n : ℕ) : ℤ :=
  A058033.P4214227159742838609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058256.P14492067050455526603

`A058254(n+2)/A058254(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058256.P14492067050455526603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058254 (n + 2) : ℚ) / (A058254 (n + 1) : ℚ)

end

end A058256.P14492067050455526603

noncomputable section

/-- A058256: a(n) = A058254(n+1)/A058254(n).

Offset 1, canonical program `A058256.P14492067050455526603`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058256 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058256.P14492067050455526603.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058312.P6549561385771920451

`∏[(n+1)/A335023(A028310(n))]`
-/

namespace A058312.P6549561385771920451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A335023 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058312.P6549561385771920451

noncomputable section

/-- A058312: Denominator of the n-th alternating harmonic number, Sum_{k=1..n} (-1)^(k+1)/k.

Offset 1, canonical program `A058312.P6549561385771920451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A058312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058312.P6549561385771920451.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A058312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058501.P405273937736052748

`p?[A010051(A057023(n+1))+A000040(n+1)]`
-/

namespace A058501.P405273937736052748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A057023 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P405273937736052748

noncomputable section

/-- A058501: Primes p such that largest odd factor of p-1 is not a prime (i.e., is composite or 1).

Offset 1, canonical program `A058501.P405273937736052748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8485 terms. -/
def A058501 (n : ℕ) : ℤ :=
  A058501.P405273937736052748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8485 terms. -/
def A058501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059018.P17827601340596542486

`A053839(10*n)`
-/

namespace A059018.P17827601340596542486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (10 * n)

end

end A059018.P17827601340596542486

noncomputable section

/-- A059018: Write 10*n in base 4; a(n) = sum of digits mod 4.

Offset 0, canonical program `A059018.P17827601340596542486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A059018 (n : ℕ) : ℤ :=
  A059018.P17827601340596542486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A059018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059076.P1559801332482280449

`(A000031(n)-A029744(n+1))/2`
-/

namespace A059076.P1559801332482280449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000031 n - A029744 (n + 1) : ℚ) / 2

end

end A059076.P1559801332482280449

noncomputable section

/-- A059076: Number of pairs of orientable necklaces with n beads and two colors; i.e., turning the necklace over does not leave it unchanged.

Offset 0, canonical program `A059076.P1559801332482280449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059076.P1559801332482280449.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059143.P3220239693564370248

`A059131(3*n)+A059131(3*n+1)+A059131(3*n)`
-/

namespace A059143.P3220239693564370248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059131 (3 * n) + A059131 (3 * n + 1) + A059131 (3 * n)

end

end A059143.P3220239693564370248

noncomputable section

/-- A059143: A hierarchical sequence (W3{2,2}*c - see A059126).

Offset 0, canonical program `A059143.P3220239693564370248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059143 (n : ℕ) : ℤ :=
  A059143.P3220239693564370248.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059596.P11268705004907283405

`∑[∑[A059595(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A059596.P11268705004907283405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A059595 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059596.P11268705004907283405

noncomputable section

/-- A059596: Eighth column (m=7) of convolution triangle A059594(n,m).

Offset 0, canonical program `A059596.P11268705004907283405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059596 (n : ℕ) : ℤ :=
  A059596.P11268705004907283405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059786.P8715638951535635433

`A045344(A020900(n+1))`
-/

namespace A059786.P8715638951535635433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A020900 (n + 1)).toNat

end

end A059786.P8715638951535635433

noncomputable section

/-- A059786: Smallest prime after 2*(n-th prime).

Offset 1, canonical program `A059786.P8715638951535635433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5352 terms. -/
def A059786 (n : ℕ) : ℤ :=
  A059786.P8715638951535635433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5352 terms. -/
def A059786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059981.P14273074610355838574

`Δ[a(A065855(n))+n]` with `a(0)=1`
-/

namespace A059981.P14273074610355838574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A065855 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059981.P14273074610355838574

noncomputable section

/-- A059981: Order of compositeness for the n-th composite number.

Offset 1, canonical program `A059981.P14273074610355838574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059981 (n : ℕ) : ℤ :=
  A059981.P14273074610355838574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060176.P5757415201403961736

`A104887(n+1)^A060175(n+1)`
-/

namespace A060176.P5757415201403961736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104887 (n + 1) : ℚ) ^ (A060175 (n + 1) : ℤ)

end

end A060176.P5757415201403961736

noncomputable section

/-- A060176: Square array A(n,k) = the largest power of k-th prime which divides n, read by falling antidiagonals.

Offset 1, canonical program `A060176.P5757415201403961736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060176.P5757415201403961736.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060192.P8871710138267274484

`A100479(n+1)-A060191(n)`
-/

namespace A060192.P8871710138267274484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A060191 n

end

end A060192.P8871710138267274484

noncomputable section

/-- A060192: Union_i p(4i+2), p(4i+3), where p(k) = k-th prime.

Offset 0, canonical program `A060192.P8871710138267274484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192 (n : ℕ) : ℤ :=
  A060192.P8871710138267274484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060265.P16861797515286908946

`2*(n+2)-A049653(n+2)`
-/

namespace A060265.P16861797515286908946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A049653 (n + 2)

end

end A060265.P16861797515286908946

noncomputable section

/-- A060265: Largest prime less than 2n.

Offset 2, canonical program `A060265.P16861797515286908946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060265 (n : ℕ) : ℤ :=
  A060265.P16861797515286908946.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060271.P16770450189936499221

`A001223(A020900(1+n))`
-/

namespace A060271.P16770450189936499221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A020900 (1 + n)).toNat

end

end A060271.P16770450189936499221

noncomputable section

/-- A060271: Difference between smallest prime following and largest prime preceding 2*(n-th prime).

Offset 1, canonical program `A060271.P16770450189936499221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060271 (n : ℕ) : ℤ :=
  A060271.P16770450189936499221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060420.P6135912024622673130

`val(∑{digits}[Δ[A007504(n)], 5^#], 5)`
-/

namespace A060420.P6135912024622673130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 5 ^ x).sum 5

end

end A060420.P6135912024622673130

noncomputable section

/-- A060420: Least decimal digit in n-th prime.

Offset 1, canonical program `A060420.P6135912024622673130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060420 (n : ℕ) : ℤ :=
  (A060420.P6135912024622673130.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061305.P15133519490295530476

`A000045(A037918(n+1))`
-/

namespace A061305.P15133519490295530476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A037918 (n + 1)).toNat

end

end A061305.P15133519490295530476

noncomputable section

/-- A061305: Squarefree Fibonacci numbers.

Offset 1, canonical program `A061305.P15133519490295530476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061305 (n : ℕ) : ℤ :=
  A061305.P15133519490295530476.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061305.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061338.P1052418466639521221

`n-A011371(and(n, n-1))`
-/

namespace A061338.P1052418466639521221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A061338.P1052418466639521221

noncomputable section

/-- A061338: Increase in maximal number of comparisons for sorting n elements by list merging.

Offset 0, canonical program `A061338.P1052418466639521221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061338 (n : ℕ) : ℤ :=
  A061338.P1052418466639521221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000091.P2909649729475731760

`A034444(n+1)*A097325(A253629(n+1))`
-/

namespace A000091.P2909649729475731760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A097325 (A253629 (n + 1)).toNat

end

end A000091.P2909649729475731760

noncomputable section

/-- A000091: Multiplicative with a(2^e) = 2 for k >= 1; a(3) = 2, a(3^e) = 0 for k >= 2; a(p^e) = 0 if p > 3 and p == -1 (mod 3); a(p^e) = 2 if p > 3 and p == 1 (mod 3).

Offset 1, canonical program `A000091.P2909649729475731760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091 (n : ℕ) : ℤ :=
  A000091.P2909649729475731760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000150.P13871546353888305123

`floor(A000912(n)/2)`
-/

namespace A000150.P13871546353888305123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000912 n : ℚ) / 2⌋

end

end A000150.P13871546353888305123

noncomputable section

/-- A000150: Number of dissections of an n-gon, rooted at an exterior edge, asymmetric with respect to that edge.

Offset 0, canonical program `A000150.P13871546353888305123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000150 (n : ℕ) : ℤ :=
  A000150.P13871546353888305123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000469.P516089823978451219

`A120944(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A000469.P516089823978451219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120944 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A000469.P516089823978451219

noncomputable section

/-- A000469: 1 together with products of 2 or more distinct primes.

Offset 1, canonical program `A000469.P516089823978451219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469 (n : ℕ) : ℤ :=
  A000469.P516089823978451219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000520.P740625616792287926

`A077429(n+1)-A004216(n+1)`
-/

namespace A000520.P740625616792287926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (n + 1) - A004216 (n + 1)

end

end A000520.P740625616792287926

noncomputable section

/-- A000520: Nearest integer to log_10(n).

Offset 1, canonical program `A000520.P740625616792287926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520 (n : ℕ) : ℤ :=
  A000520.P740625616792287926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001036.P12089511997625600617

`A062692(n+1)-1`
-/

namespace A001036.P12089511997625600617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062692 (n + 1) - 1

end

end A001036.P12089511997625600617

noncomputable section

/-- A001036: Partial sums of A001037, omitting A001037(1).

Offset 1, canonical program `A001036.P12089511997625600617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001036 (n : ℕ) : ℤ :=
  A001036.P12089511997625600617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001037.P3072020637183991904

`A045664(n)/A253909(n)`
-/

namespace A001037.P3072020637183991904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045664 n : ℚ) / (A253909 n : ℚ)

end

end A001037.P3072020637183991904

noncomputable section

/-- A001037: Number of degree-n irreducible polynomials over GF(2); number of n-bead necklaces with beads of 2 colors when turning over is not allowed and with primitive period n; number of binary Lyndon words of length n.

Offset 0, canonical program `A001037.P3072020637183991904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001037.P3072020637183991904.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A001037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001742.P4076269078881375086

`A202267(A248910(n+1)+1)`
-/

namespace A001742.P4076269078881375086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (A248910 (n + 1) + 1).toNat

end

end A001742.P4076269078881375086

noncomputable section

/-- A001742: Numbers whose digits contain no loops (version 2).

Offset 1, canonical program `A001742.P4076269078881375086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A001742 (n : ℕ) : ℤ :=
  A001742.P4076269078881375086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A001742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002215.P493053246518222214

`A055879(n+1)+A039919(A065033(n))`
-/

namespace A002215.P493053246518222214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (n + 1) + A039919 (A065033 n).toNat

end

end A002215.P493053246518222214

noncomputable section

/-- A002215: Number of polyhexes with n hexagons, having reflectional symmetry (see Harary and Read for precise definition).

Offset 1, canonical program `A002215.P493053246518222214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A002215 (n : ℕ) : ℤ :=
  A002215.P493053246518222214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A002215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003144.P14581909281585168490

`lt[0, A278045(n)]+1`
-/

namespace A003144.P14581909281585168490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A003144.P14581909281585168490

noncomputable section

/-- A003144: Positions of letter a in the tribonacci word abacabaabacababac... generated by a->ab, b->ac, c->a (cf. A092782).

Offset 1, canonical program `A003144.P14581909281585168490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003144 (n : ℕ) : ℤ :=
  (A003144.P14581909281585168490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003162.P10455901792332071665

`A003161(n)/A001405(n)`
-/

namespace A003162.P10455901792332071665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A001405 n : ℚ)

end

end A003162.P10455901792332071665

noncomputable section

/-- A003162: A binomial coefficient summation.

Offset 0, canonical program `A003162.P10455901792332071665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A003162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003162.P10455901792332071665.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A003162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003257.P15972077673058974051

`comp[A003256(1+n)-1]+1`
-/

namespace A003257.P15972077673058974051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003257.P15972077673058974051

noncomputable section

/-- A003257: Complement of A003256.

Offset 1, canonical program `A003257.P15972077673058974051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003257 (n : ℕ) : ℤ :=
  (A003257.P15972077673058974051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004735.P16541191645354368629

`A004731(n+3)/gcd(2, n)`
-/

namespace A004735.P16541191645354368629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 3) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A004735.P16541191645354368629

noncomputable section

/-- A004735: Denominator of average distance traveled by n-dimensional fly.

Offset 1, canonical program `A004735.P16541191645354368629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A004735 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004735.P16541191645354368629.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A004735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004750.P8810129833095217358

`comp[A004744(1+n)]`
-/

namespace A004750.P8810129833095217358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004750.P8810129833095217358

noncomputable section

/-- A004750: Numbers whose binary expansion contains the substring '011'.

Offset 1, canonical program `A004750.P8810129833095217358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004750 (n : ℕ) : ℤ :=
  (A004750.P8810129833095217358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004764.P5836168721162617501

`lt[A090996(xor(n, floor(n/4))), 3]`
-/

namespace A004764.P5836168721162617501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004764.P5836168721162617501

noncomputable section

/-- A004764: Numbers whose binary expansion does not begin 110.

Offset 1, canonical program `A004764.P5836168721162617501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004764 (n : ℕ) : ℤ :=
  (A004764.P5836168721162617501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005356.P1294022534364448567

`∑[fp[A062692(n+1)]]`
-/

namespace A005356.P1294022534364448567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062692 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P1294022534364448567

noncomputable section

/-- A005356: Number of low discrepancy sequences in base 2.

Offset 1, canonical program `A005356.P1294022534364448567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005356 (n : ℕ) : ℤ :=
  (A005356.P1294022534364448567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005357.P6589109191451829495

`∑[fp[A114945(n+1)]]`
-/

namespace A005357.P6589109191451829495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114945 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005357.P6589109191451829495

noncomputable section

/-- A005357: Number of low discrepancy sequences in base 3.

Offset 1, canonical program `A005357.P6589109191451829495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005357 (n : ℕ) : ℤ :=
  (A005357.P6589109191451829495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005377.P5576648582362079390

`∑[∑[char[A114946(1+n)]]]`
-/

namespace A005377.P5576648582362079390
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114946 (1 + n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P5576648582362079390

noncomputable section

/-- A005377: Number of low discrepancy sequences in base 4.

Offset 1, canonical program `A005377.P5576648582362079390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005377 (n : ℕ) : ℤ :=
  (A005377.P5576648582362079390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005494.P15787601921503971114

`∑{#}[n, 4^#*A124323(C(n+1, 2)+#)]`
-/

namespace A005494.P15787601921503971114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 ^ k : ℤ) * A124323 (Nat.choose (n + 1) 2 + k)

end

end A005494.P15787601921503971114

noncomputable section

/-- A005494: 3-Bell numbers: E.g.f.: exp(3*z + exp(z) - 1).

Offset 0, canonical program `A005494.P15787601921503971114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005494 (n : ℕ) : ℤ :=
  A005494.P15787601921503971114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005559.P17407522996670403277

`ceil((n+1)/2)*A005817(n+1)`
-/

namespace A005559.P17407522996670403277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ * A005817 (n + 1)

end

end A005559.P17407522996670403277

noncomputable section

/-- A005559: Number of walks on square lattice. Column y=1 of A052174.

Offset 1, canonical program `A005559.P17407522996670403277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A005559 (n : ℕ) : ℤ :=
  A005559.P17407522996670403277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A005559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005590.P3379431448846241054

`A145865(A122155(n))`
-/

namespace A005590.P3379431448846241054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A122155 n).toNat

end

end A005590.P3379431448846241054

noncomputable section

/-- A005590: a(0) = 0, a(1) = 1, a(2n) = a(n), a(2n+1) = a(n+1) - a(n).

Offset 0, canonical program `A005590.P3379431448846241054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A005590 (n : ℕ) : ℤ :=
  A005590.P3379431448846241054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A005590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005656.P12596922391734523113

`Δ[A034872(A004273(n))]%A088218(n)`
-/

namespace A005656.P12596922391734523113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034872 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A088218 n)

end

end A005656.P12596922391734523113

noncomputable section

/-- A005656: Number of bracelets (turn over necklaces) with n red, 1 pink and n - 3 blue beads; also reversible strings with n red and n-3 blue beads.

Offset 1, canonical program `A005656.P12596922391734523113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A005656 (n : ℕ) : ℤ :=
  A005656.P12596922391734523113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A005656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005929.P17002143773609211712

`2*A045833(A091685(n))`
-/

namespace A005929.P17002143773609211712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045833 (A091685 n).toNat

end

end A005929.P17002143773609211712

noncomputable section

/-- A005929: Theta series of hexagonal net with respect to midpoint of edge.

Offset 0, canonical program `A005929.P17002143773609211712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005929 (n : ℕ) : ℤ :=
  A005929.P17002143773609211712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006098.P12103769445644724835

`A022166(C(2*n+1, 2)+n)`
-/

namespace A006098.P12103769445644724835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (Nat.choose (2 * n + 1) 2 + n)

end

end A006098.P12103769445644724835

noncomputable section

/-- A006098: Gaussian binomial coefficient [ 2n,n ] for q=2.

Offset 0, canonical program `A006098.P12103769445644724835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006098 (n : ℕ) : ℤ :=
  A006098.P12103769445644724835.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006314.P2297966368482912245

`eq[1, A194003(n)]`
-/

namespace A006314.P2297966368482912245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006314.P2297966368482912245

noncomputable section

/-- A006314: Numbers k such that k^8 + 1 is prime.

Offset 1, canonical program `A006314.P2297966368482912245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A006314 (n : ℕ) : ℤ :=
  (A006314.P2297966368482912245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A006314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007055.P13796273063229323987

`(A057427(n)+1)*A180249(A028310(n))`
-/

namespace A007055.P13796273063229323987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A180249 (A028310 n).toNat

end

end A007055.P13796273063229323987

noncomputable section

/-- A007055: Let S denote the palindromes in the language {0,1}*; a(n) = number of words of length n in the language SS.

Offset 0, canonical program `A007055.P13796273063229323987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A007055 (n : ℕ) : ℤ :=
  A007055.P13796273063229323987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A007055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007428.P12532017655611739201

`∑{d}[n+1, A247343(#)]`
-/

namespace A007428.P12532017655611739201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d

end

end A007428.P12532017655611739201

noncomputable section

/-- A007428: Moebius transform applied thrice to sequence 1,0,0,0,....

Offset 1, canonical program `A007428.P12532017655611739201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007428 (n : ℕ) : ℤ :=
  A007428.P12532017655611739201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007491.P2456272852996360084

`A007918(A000290(n+1))`
-/

namespace A007491.P2456272852996360084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000290 (n + 1)).toNat

end

end A007491.P2456272852996360084

noncomputable section

/-- A007491: Smallest prime > n^2.

Offset 1, canonical program `A007491.P2456272852996360084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007491 (n : ℕ) : ℤ :=
  A007491.P2456272852996360084.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007821.P9323765795172173596

`A000040(A018252(n+1))`
-/

namespace A007821.P9323765795172173596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 1)).toNat

end

end A007821.P9323765795172173596

noncomputable section

/-- A007821: Primes p such that pi(p) is not prime.

Offset 1, canonical program `A007821.P9323765795172173596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007821 (n : ℕ) : ℤ :=
  A007821.P9323765795172173596.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007843.P17090837649853726909

`A100661(A028310(n))+n`
-/

namespace A007843.P17090837649853726909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A028310 n).toNat + (n : ℤ)

end

end A007843.P17090837649853726909

noncomputable section

/-- A007843: Least positive integer k for which 2^n divides k!.

Offset 0, canonical program `A007843.P17090837649853726909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007843 (n : ℕ) : ℤ :=
  A007843.P17090837649853726909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007883.P7406616137818884317

`A007884(or(3, 12*n+8))+A007880(n)`
-/

namespace A007883.P7406616137818884317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007884 (Nat.lor 3 (12 * n + 8)) + A007880 n

end

end A007883.P7406616137818884317

noncomputable section

/-- A007883: Westminster chimes at 15-minute intervals (2).

Offset 1, canonical program `A007883.P7406616137818884317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A007883 (n : ℕ) : ℤ :=
  A007883.P7406616137818884317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A007883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008471.P11725137829217695718

`eq[3, A038800(n)]`
-/

namespace A008471.P11725137829217695718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008471.P11725137829217695718

noncomputable section

/-- A008471: Exactly 3 out of 10m+1, 10m+3, 10m+7, 10m+9 are primes.

Offset 1, canonical program `A008471.P11725137829217695718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A008471 (n : ℕ) : ℤ :=
  (A008471.P11725137829217695718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A008471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008645.P1092398872060374740

`A088954(floor(n/2))`
-/

namespace A008645.P1092398872060374740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088954 ⌊(n : ℚ) / 2⌋.toNat

end

end A008645.P1092398872060374740

noncomputable section

/-- A008645: Molien series of 6 X 6 upper triangular matrices over GF( 2 ).

Offset 0, canonical program `A008645.P1092398872060374740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008645 (n : ℕ) : ℤ :=
  A008645.P1092398872060374740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011684.P11602949521021621259

`A011676(3*(n+3))`
-/

namespace A011684.P11602949521021621259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011676 (3 * (n + 3))

end

end A011684.P11602949521021621259

noncomputable section

/-- A011684: A binary m-sequence: expansion of reciprocal of x^7+x^4+x^3+x^2+1.

Offset 0, canonical program `A011684.P11602949521021621259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A011684 (n : ℕ) : ℤ :=
  A011684.P11602949521021621259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A011684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013498.P10703321779851996206

`A103450(A007590(n))%A075118(n)`
-/

namespace A013498.P10703321779851996206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103450 (A007590 n).toNat) (A075118 n)

end

end A013498.P10703321779851996206

noncomputable section

/-- A013498: Number of permutations in S_n with a certain property.

Offset 1, canonical program `A013498.P10703321779851996206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A013498 (n : ℕ) : ℤ :=
  A013498.P10703321779851996206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A013498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014092.P13846988349257398157

`∩[A004280(n+1), A166081(n+1)]`
-/

namespace A014092.P13846988349257398157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014092.P13846988349257398157

noncomputable section

/-- A014092: Numbers that are not the sum of 2 primes.

Offset 1, canonical program `A014092.P13846988349257398157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7740 terms. -/
def A014092 (n : ℕ) : ℤ :=
  (A014092.P13846988349257398157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7740 terms. -/
def A014092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014110.P17125483522364292326

`∑{#}[n, A000925(#)*A000925(n-#)]`
-/

namespace A014110.P17125483522364292326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000925 k * A000925 (n - k)

end

end A014110.P17125483522364292326

noncomputable section

/-- A014110: Number of ordered ways of writing n as a sum of 4 squares of nonnegative integers.

Offset 0, canonical program `A014110.P17125483522364292326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A014110 (n : ℕ) : ℤ :=
  A014110.P17125483522364292326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A014110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014146.P2259302759515849826

`∑[A003136(1+n)]`
-/

namespace A014146.P2259302759515849826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P2259302759515849826

noncomputable section

/-- A014146: Partial sums of A003136.

Offset 0, canonical program `A014146.P2259302759515849826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014146 (n : ℕ) : ℤ :=
  A014146.P2259302759515849826.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014237.P11822810703592861988

`A000040(n+1)-A018252(n+1)`
-/

namespace A014237.P11822810703592861988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 1)

end

end A014237.P11822810703592861988

noncomputable section

/-- A014237: a(n) = (n-th prime) - (n-th nonprime).

Offset 1, canonical program `A014237.P11822810703592861988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014237 (n : ℕ) : ℤ :=
  A014237.P11822810703592861988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014432.P9142585396779688428

`3*A025237((n-1)%(a(n-1)+1))` with `a(0)=1`
-/

namespace A014432.P9142585396779688428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A025237 (Int.tmod ((n : ℤ) - 1) (a (n - 1) + 1)).toNat

end

end A014432.P9142585396779688428

noncomputable section

/-- A014432: a(n) = Sum_{i=1..n-1} a(i)*a(n-1-i), with a(0) = 1, a(1) = 3.

Offset 0, canonical program `A014432.P9142585396779688428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014432 (n : ℕ) : ℤ :=
  A014432.P9142585396779688428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015618.P16480477383865043174

`∑[A000741(n+2)-n]`
-/

namespace A015618.P16480477383865043174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000741 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015618.P16480477383865043174

noncomputable section

/-- A015618: Number of triples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015618.P16480477383865043174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5829 terms. -/
def A015618 (n : ℕ) : ℤ :=
  A015618.P16480477383865043174.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5829 terms. -/
def A015618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015622.P7437810160960809302

`∑[A346760(n+1)-A000741(n+1)]`
-/

namespace A015622.P7437810160960809302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346760 (n + 1) - A000741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015622.P7437810160960809302

noncomputable section

/-- A015622: Quadruples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015622.P7437810160960809302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1011 terms. -/
def A015622 (n : ℕ) : ℤ :=
  A015622.P7437810160960809302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1011 terms. -/
def A015622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015651.P3676913124546127327

`∑[A117109(n+2)-A000292(n+2)]`
-/

namespace A015651.P3676913124546127327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117109 (n + 2) - A000292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015651.P3676913124546127327

noncomputable section

/-- A015651: Number of ordered 5-tuples of integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015651.P3676913124546127327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A015651 (n : ℕ) : ℤ :=
  A015651.P3676913124546127327.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A015651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015670.P1146037642501951498

`A089801(A377954(round((n-1)/20)))`
-/

namespace A015670.P1146037642501951498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (A377954 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 20)).toNat).toNat

end

end A015670.P1146037642501951498

noncomputable section

/-- A015670: Inverse of 1661st cyclotomic polynomial.

Offset 0, canonical program `A015670.P1146037642501951498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A015670 (n : ℕ) : ℤ :=
  A015670.P1146037642501951498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A015670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016006.P1904156013776657872

`A007095(A016005(n+1))%p?[A046691(n+2)]`
-/

namespace A016006.P1904156013776657872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A016005 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A016006.P1904156013776657872

noncomputable section

/-- A016006: a(n) = (tau(n^10)+9)/10.

Offset 1, canonical program `A016006.P1904156013776657872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A016006 (n : ℕ) : ℤ :=
  A016006.P1904156013776657872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A016006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016128.P1838991919088230119

`C(A051159(A096304(n+1)), A210631(n+1))`
-/

namespace A016128.P1838991919088230119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051159 (A096304 (n + 1)).toNat).toNat (A210631 (n + 1)).toNat

end

end A016128.P1838991919088230119

noncomputable section

/-- A016128: Inverse of 2119th cyclotomic polynomial.

Offset 0, canonical program `A016128.P1838991919088230119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A016128 (n : ℕ) : ℤ :=
  (A016128.P1838991919088230119.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A016128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016132.P8176970911770630062

`A187034(C(A135585(n), 2))`
-/

namespace A016132.P8176970911770630062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187034 (Nat.choose (A135585 n).toNat 2)

end

end A016132.P8176970911770630062

noncomputable section

/-- A016132: Inverse of 2123rd cyclotomic polynomial.

Offset 0, canonical program `A016132.P8176970911770630062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A016132 (n : ℕ) : ℤ :=
  A016132.P8176970911770630062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A016132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018124.P7269445987187065060

`A018118(2*n)`
-/

namespace A018124.P7269445987187065060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (2 * n)

end

end A018124.P7269445987187065060

noncomputable section

/-- A018124: Powers of fifth root of 4 rounded to nearest integer.

Offset 0, canonical program `A018124.P7269445987187065060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018124 (n : ℕ) : ℤ :=
  A018124.P7269445987187065060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018136.P3960294426787492481

`A018118(3*n)`
-/

namespace A018136.P3960294426787492481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (3 * n)

end

end A018136.P3960294426787492481

noncomputable section

/-- A018136: Powers of fifth root of 8 rounded to nearest integer.

Offset 0, canonical program `A018136.P3960294426787492481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018136 (n : ℕ) : ℤ :=
  A018136.P3960294426787492481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018150.P18437596113459788837

`A018152(n)-A011558(n)`
-/

namespace A018150.P18437596113459788837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018152 n - A011558 n

end

end A018150.P18437596113459788837

noncomputable section

/-- A018150: Powers of fifth root of 13 rounded down.

Offset 0, canonical program `A018150.P18437596113459788837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A018150 (n : ℕ) : ℤ :=
  A018150.P18437596113459788837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A018150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018180.P526590853399527022

`A018182(n)-A011558(n)`
-/

namespace A018180.P526590853399527022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018182 n - A011558 n

end

end A018180.P526590853399527022

noncomputable section

/-- A018180: Powers of fifth root of 23 rounded down.

Offset 0, canonical program `A018180.P526590853399527022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A018180 (n : ℕ) : ℤ :=
  A018180.P526590853399527022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A018180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019460.P18320416044288335793

`A081123(n)+A019463(n)`
-/

namespace A019460.P18320416044288335793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A019463 n

end

end A019460.P18320416044288335793

noncomputable section

/-- A019460: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 2.

Offset 0, canonical program `A019460.P18320416044288335793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019460 (n : ℕ) : ℤ :=
  A019460.P18320416044288335793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019468.P14853762686031420114

`3*(1+A111020(n+1))`
-/

namespace A019468.P14853762686031420114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 + A111020 (n + 1))

end

end A019468.P14853762686031420114

noncomputable section

/-- A019468: (n-2)-th Catalan number is congruent to 2n/3 mod n.

Offset 1, canonical program `A019468.P14853762686031420114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A019468 (n : ℕ) : ℤ :=
  A019468.P14853762686031420114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A019468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019588.P12494804011733207949

`A194733(n+1)+1`
-/

namespace A019588.P12494804011733207949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194733 (n + 1) + 1

end

end A019588.P12494804011733207949

noncomputable section

/-- A019588: The right budding sequence: # of i such that 0 < i <= n and {tau*n} <= {tau*i} < 1, where {} is fractional part.

Offset 1, canonical program `A019588.P12494804011733207949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019588 (n : ℕ) : ℤ :=
  A019588.P12494804011733207949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020899.P407132473760746687

`eq[1, A007895(n)%2]`
-/

namespace A020899.P407132473760746687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020899.P407132473760746687

noncomputable section

/-- A020899: Numbers k with an odd number of terms in their Zeckendorf representation (write k as a sum of non-consecutive distinct Fibonacci numbers).

Offset 1, canonical program `A020899.P407132473760746687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A020899 (n : ℕ) : ℤ :=
  (A020899.P407132473760746687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A020899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020944.P8623549795546838227

`A020952(n)-3*A020951(n)`
-/

namespace A020944.P8623549795546838227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020952 n - 3 * A020951 n

end

end A020944.P8623549795546838227

noncomputable section

/-- A020944: a(2n+1) = |a(2n) - a(2n-1)|, a(2n) = a(n) + a(n-1), a(0) = -1.

Offset 0, canonical program `A020944.P8623549795546838227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020944 (n : ℕ) : ℤ :=
  A020944.P8623549795546838227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020966.P2146780201554231546

`A020967(1+n)-Δ[n²]`
-/

namespace A020966.P2146780201554231546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020967 (1 + n) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A020966.P2146780201554231546

noncomputable section

/-- A020966: a(n) = Sum_{k>=1} floor(n*sqrt(2)^(2-k)).

Offset 1, canonical program `A020966.P2146780201554231546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020966 (n : ℕ) : ℤ :=
  A020966.P2146780201554231546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022293.P3061892328888859652

`A022292(1+n)/2`
-/

namespace A022293.P3061892328888859652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022292 (1 + n) : ℚ) / 2

end

end A022293.P3061892328888859652

noncomputable section

/-- A022293: Sequence A022292 divided by 2.

Offset 0, canonical program `A022293.P3061892328888859652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022293.P3061892328888859652.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022335.P640562549474577524

`∑[A066344(A028310(n))]-(∑[n]-n)`
-/

namespace A022335.P640562549474577524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

end

end A022335.P640562549474577524

noncomputable section

/-- A022335: Index of 2^n within sequence of numbers of form 2^i * 5^j.

Offset 0, canonical program `A022335.P640562549474577524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022335 (n : ℕ) : ℤ :=
  A022335.P640562549474577524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023210.P1819903065177715597

`p?[2*A059325(n+1)-1]`
-/

namespace A023210.P1819903065177715597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059325 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P1819903065177715597

noncomputable section

/-- A023210: Primes p such that 3*p + 8 is also prime.

Offset 1, canonical program `A023210.P1819903065177715597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1760 terms. -/
def A023210 (n : ℕ) : ℤ :=
  A023210.P1819903065177715597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1760 terms. -/
def A023210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023221.P12133187674117297177

`floor(A126329(n+1)/6)`
-/

namespace A023221.P12133187674117297177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126329 (n + 1) : ℚ) / 6⌋

end

end A023221.P12133187674117297177

noncomputable section

/-- A023221: Primes p such that 6*p + 5 is also prime.

Offset 1, canonical program `A023221.P12133187674117297177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023221 (n : ℕ) : ℤ :=
  A023221.P12133187674117297177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023223.P4921598859195295087

`p?[A105772(n+1)]`
-/

namespace A023223.P4921598859195295087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023223.P4921598859195295087

noncomputable section

/-- A023223: Primes p such that 7*p + 2 is also prime.

Offset 1, canonical program `A023223.P4921598859195295087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. -/
def A023223 (n : ℕ) : ℤ :=
  A023223.P4921598859195295087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. -/
def A023223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023225.P6014643967068373902

`floor(A136072(1+n)/7)`
-/

namespace A023225.P6014643967068373902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136072 (1 + n) : ℚ) / 7⌋

end

end A023225.P6014643967068373902

noncomputable section

/-- A023225: Primes p such that 7*p + 6 is also prime.

Offset 1, canonical program `A023225.P6014643967068373902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023225 (n : ℕ) : ℤ :=
  A023225.P6014643967068373902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023227.P17859908620912783993

`p?[A111250(n+1)]`
-/

namespace A023227.P17859908620912783993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023227.P17859908620912783993

noncomputable section

/-- A023227: Primes p such that 7*p + 10 is also prime.

Offset 1, canonical program `A023227.P17859908620912783993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A023227 (n : ℕ) : ℤ :=
  A023227.P17859908620912783993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A023227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023269.P10197537875240591780

`p?[∩[A101472(n+1), A102338(n+1)]]`
-/

namespace A023269.P10197537875240591780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023269.P10197537875240591780

noncomputable section

/-- A023269: Primes that remain prime through 2 iterations of function f(x) = 10x + 3.

Offset 1, canonical program `A023269.P10197537875240591780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A023269 (n : ℕ) : ℤ :=
  (A023269.P10197537875240591780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A023269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023515.P16950231091882071862

`A000040(n+1)*A008578(n+1)-1`
-/

namespace A023515.P16950231091882071862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008578 (n + 1) - 1

end

end A023515.P16950231091882071862

noncomputable section

/-- A023515: a(n) = prime(n)*prime(n-1) - 1.

Offset 1, canonical program `A023515.P16950231091882071862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023515 (n : ℕ) : ℤ :=
  A023515.P16950231091882071862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023535.P15152860963191410787

`A023562(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A023535.P15152860963191410787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023562 (n + 1) - a (n - 1)

end

end A023535.P15152860963191410787

noncomputable section

/-- A023535: Convolution of natural numbers with A023531.

Offset 1, canonical program `A023535.P15152860963191410787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023535 (n : ℕ) : ℤ :=
  A023535.P15152860963191410787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023613.P3980966369573134537

`A023655(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023613.P3980966369573134537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023655 (n + 1) - a (n - 1)

end

end A023613.P3980966369573134537

noncomputable section

/-- A023613: Convolution of Fibonacci numbers and A023533.

Offset 0, canonical program `A023613.P3980966369573134537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023613 (n : ℕ) : ℤ :=
  A023613.P3980966369573134537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023617.P9096282738909620640

`2*A023628(n+1)-A023608(n)`
-/

namespace A023617.P9096282738909620640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023628 (n + 1) - A023608 n

end

end A023617.P9096282738909620640

noncomputable section

/-- A023617: Convolution of Lucas numbers and (1, p(1), p(2), ...).

Offset 1, canonical program `A023617.P9096282738909620640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023617 (n : ℕ) : ℤ :=
  A023617.P9096282738909620640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023621.P16071833400035228711

`A023653(n+1)+A023653(n+1)-A023611(n)`
-/

namespace A023621.P16071833400035228711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023653 (n + 1) + (A023653 (n + 1) - A023611 n)

end

end A023621.P16071833400035228711

noncomputable section

/-- A023621: Convolution of Lucas numbers and A000201.

Offset 1, canonical program `A023621.P16071833400035228711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023621 (n : ℕ) : ℤ :=
  A023621.P16071833400035228711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023625.P15838302889821291983

`A023657(n+1)+A023657(n+1)-A023615(n)`
-/

namespace A023625.P15838302889821291983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023657 (n + 1) + (A023657 (n + 1) - A023615 n)

end

end A023625.P15838302889821291983

noncomputable section

/-- A023625: Convolution of Lucas numbers and primes.

Offset 1, canonical program `A023625.P15838302889821291983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023625 (n : ℕ) : ℤ :=
  A023625.P15838302889821291983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023626.P12316545659476574558

`∑{#}[n, A008578(#+1)*A008578(n-#+1)]`
-/

namespace A023626.P12316545659476574558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008578 (k + 1) * A008578 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A023626.P12316545659476574558

noncomputable section

/-- A023626: Self-convolution of (1, p(1), p(2), ...).

Offset 1, canonical program `A023626.P12316545659476574558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A023626 (n : ℕ) : ℤ :=
  A023626.P12316545659476574558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A023626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023632.P17596121348302090998

`A023630(A337909(n+1)-A158388(n))`
-/

namespace A023632.P17596121348302090998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023630 (A337909 (n + 1) - A158388 n).toNat

end

end A023632.P17596121348302090998

noncomputable section

/-- A023632: a(n) = s(2n+1) - s(2n), where s( ) is sequence A023631.

Offset 1, canonical program `A023632.P17596121348302090998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A023632 (n : ℕ) : ℤ :=
  A023632.P17596121348302090998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A023632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023671.P6251527044828931801

`A056556(n+1)-A023670(n+1)`
-/

namespace A023671.P6251527044828931801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (n + 1) - A023670 (n + 1)

end

end A023671.P6251527044828931801

noncomputable section

/-- A023671: Convolution of A023533 and A014306.

Offset 1, canonical program `A023671.P6251527044828931801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023670, A056556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023671 (n : ℕ) : ℤ :=
  A023671.P6251527044828931801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023670, A056556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023706.P12195947765526675273

`eq[n, n*A139352(A334076(n))]`
-/

namespace A023706.P12195947765526675273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139352 (A334076 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P12195947765526675273

noncomputable section

/-- A023706: Numbers with a single 0 in their base 4 expansion.

Offset 1, canonical program `A023706.P12195947765526675273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6016 terms. -/
def A023706 (n : ℕ) : ℤ :=
  (A023706.P12195947765526675273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6016 terms. -/
def A023706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023721.P11352913858414916130

`lt[0, A309956(n)]`
-/

namespace A023721.P11352913858414916130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023721.P11352913858414916130

noncomputable section

/-- A023721: Numbers with no 0's in their base-5 expansion.

Offset 1, canonical program `A023721.P11352913858414916130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A023721 (n : ℕ) : ℤ :=
  (A023721.P11352913858414916130.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. -/
def A023721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023723.P1447336693853563496

`eq[A276134(n)+2, A110592(n)]`
-/

namespace A023723.P1447336693853563496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023723.P1447336693853563496

noncomputable section

/-- A023723: Numbers with exactly 2 0's in their base 5 expansion.

Offset 1, canonical program `A023723.P1447336693853563496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A023723 (n : ℕ) : ℤ :=
  (A023723.P1447336693853563496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A023723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023731.P14028755844219420142

`eq[2, A007949(A194459(n))]`
-/

namespace A023731.P14028755844219420142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023731.P14028755844219420142

noncomputable section

/-- A023731: Numbers with exactly two 2's in base 5 expansion.

Offset 1, canonical program `A023731.P14028755844219420142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2656 terms. -/
def A023731 (n : ℕ) : ℤ :=
  (A023731.P14028755844219420142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2656 terms. -/
def A023731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023734.P2270528785038764700

`eq[3, A000265(A338803(n))]`
-/

namespace A023734.P2270528785038764700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023734.P2270528785038764700

noncomputable section

/-- A023734: Numbers with a single 3 in their base-5 expansion.

Offset 1, canonical program `A023734.P2270528785038764700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023734 (n : ℕ) : ℤ :=
  (A023734.P2270528785038764700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023735.P3011601314647701763

`eq[3, A051064(A338803(n))]`
-/

namespace A023735.P3011601314647701763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023735.P3011601314647701763

noncomputable section

/-- A023735: Numbers with exactly 2 3's in their base-5 expansion.

Offset 1, canonical program `A023735.P3011601314647701763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A023735 (n : ℕ) : ℤ :=
  (A023735.P3011601314647701763.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A023735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023738.P16802884120269520292

`eq[1+n, val(A194459(n), 5)+n]`
-/

namespace A023738.P16802884120269520292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023738.P16802884120269520292

noncomputable section

/-- A023738: Numbers with a single 4 in their base 5 expansion.

Offset 1, canonical program `A023738.P16802884120269520292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023738 (n : ℕ) : ℤ :=
  (A023738.P16802884120269520292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A023738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023739.P14727020229572321214

`eq[n+2, val(A194459(n), 5)+n]`
-/

namespace A023739.P14727020229572321214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023739.P14727020229572321214

noncomputable section

/-- A023739: Numbers with exactly 2 4's in base 5 expansion.

Offset 1, canonical program `A023739.P14727020229572321214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023739 (n : ℕ) : ℤ :=
  (A023739.P14727020229572321214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A023739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024553.P5754304732981083285

`floor(A024552(1+n)/(n+1))`
-/

namespace A024553.P5754304732981083285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024552 (1 + n) : ℚ) / (n + 1 : ℚ)⌋

end

end A024553.P5754304732981083285

noncomputable section

/-- A024553: [ 1/{n*sqrt(5)} ], where {x} := x - [ x ].

Offset 1, canonical program `A024553.P5754304732981083285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024553 (n : ℕ) : ℤ :=
  A024553.P5754304732981083285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024608.P5629676504896288471

`eq[0, A003136(n+1)%2]+1`
-/

namespace A024608.P5629676504896288471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003136 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024608.P5629676504896288471

noncomputable section

/-- A024608: Positions of even numbers in A003136.

Offset 1, canonical program `A024608.P5629676504896288471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A024608 (n : ℕ) : ℤ :=
  (A024608.P5629676504896288471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. -/
def A024608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024609.P591739619766330842

`eq[1, A003136(1+n)%2]+1`
-/

namespace A024609.P591739619766330842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003136 (1 + n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024609.P591739619766330842

noncomputable section

/-- A024609: Positions of odd numbers in A003136.

Offset 1, canonical program `A024609.P591739619766330842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A024609 (n : ℕ) : ℤ :=
  (A024609.P591739619766330842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A024609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024620.P8536977387799856667

`A065515(A000040(n+1))`
-/

namespace A024620.P8536977387799856667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A000040 (n + 1)).toNat

end

end A024620.P8536977387799856667

noncomputable section

/-- A024620: Positions of primes among the powers of primes (A000961).

Offset 1, canonical program `A024620.P8536977387799856667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024620 (n : ℕ) : ℤ :=
  A024620.P8536977387799856667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024623.P17142202958174441954

`A065515(3^n)`
-/

namespace A024623.P17142202958174441954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (3 ^ n)

end

end A024623.P17142202958174441954

noncomputable section

/-- A024623: a(n) is the number of prime powers <= 3^n.

Offset 0, canonical program `A024623.P17142202958174441954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024623 (n : ℕ) : ℤ :=
  A024623.P17142202958174441954.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024679.P10680649668885426669

`eq[1, ∑{e}[A003136(n+1), #]]+1`
-/

namespace A024679.P10680649668885426669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024679.P10680649668885426669

noncomputable section

/-- A024679: Positions of primes in A003136 (ordered distinct numbers i^2 - i*j + j^2).

Offset 1, canonical program `A024679.P10680649668885426669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A024679 (n : ℕ) : ℤ :=
  (A024679.P10680649668885426669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A024679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024718.P9617034669250128048

`1/2*(1+A006134(n))`
-/

namespace A024718.P9617034669250128048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A006134 n : ℚ)

end

end A024718.P9617034669250128048

noncomputable section

/-- A024718: a(n) = (1/2)*(1 + Sum_{k=0..n} binomial(2*k, k)).

Offset 0, canonical program `A024718.P9617034669250128048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024718.P9617034669250128048.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024824.P2408911420491803655

`1+3*A043548(n+2)`
-/

namespace A024824.P2408911420491803655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 3 * A043548 (n + 2)

end

end A024824.P2408911420491803655

noncomputable section

/-- A024824: a(n) = least m such that if r and s in {1/3, 1/6, 1/9,..., 1/3n} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024824.P2408911420491803655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 773 terms. -/
def A024824 (n : ℕ) : ℤ :=
  A024824.P2408911420491803655.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 773 terms. -/
def A024824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024828.P13656246315567213299

`A071111(n+2)+A280193(A007918(n))²`
-/

namespace A024828.P13656246315567213299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (n + 2) + A280193 (A007918 n).toNat ^ 2

end

end A024828.P13656246315567213299

noncomputable section

/-- A024828: a(n) = least m such that if r and s in {h/(1 + h^2): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024828.P13656246315567213299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A024828 (n : ℕ) : ℤ :=
  A024828.P13656246315567213299.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A024828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024835.P2624667832794859258

`or(1, A043548(2*(n+2)))`
-/

namespace A024835.P2624667832794859258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A043548 (2 * (n + 2)))

end

end A024835.P2624667832794859258

noncomputable section

/-- A024835: a(n) = least m such that if r and s in {1/2, 1/4, 1/6, ..., 1/2n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

Offset 2, canonical program `A024835.P2624667832794859258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A024835 (n : ℕ) : ℤ :=
  A024835.P2624667832794859258.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A024835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024901.P9565501919091176731

`A089079(n+1)-3`
-/

namespace A024901.P9565501919091176731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089079 (n + 1) - 3

end

end A024901.P9565501919091176731

noncomputable section

/-- A024901: Numbers k such that 7*k - 2 is prime.

Offset 1, canonical program `A024901.P9565501919091176731`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024901 (n : ℕ) : ℤ :=
  A024901.P9565501919091176731.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024902.P9961799232069063420

`floor(A111517(n+1)/2)`
-/

namespace A024902.P9961799232069063420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111517 (n + 1) : ℚ) / 2⌋

end

end A024902.P9961799232069063420

noncomputable section

/-- A024902: Numbers k such that 7*k + 4 is prime.

Offset 1, canonical program `A024902.P9961799232069063420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024902 (n : ℕ) : ℤ :=
  A024902.P9961799232069063420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024904.P5836203330499457864

`A105772(1+n)+1`
-/

namespace A024904.P5836203330499457864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (1 + n) + 1

end

end A024904.P5836203330499457864

noncomputable section

/-- A024904: Numbers k such that 7*k - 5 is prime.

Offset 1, canonical program `A024904.P5836203330499457864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024904 (n : ℕ) : ℤ :=
  A024904.P5836203330499457864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025156.P15023851928668983565

`eq[1, A032741(A013632(n)-1)]`
-/

namespace A025156.P15023851928668983565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A013632 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025156.P15023851928668983565

noncomputable section

/-- A025156: A prime number of consecutive composites follow n.

Offset 1, canonical program `A025156.P15023851928668983565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4125 terms. -/
def A025156 (n : ℕ) : ℤ :=
  (A025156.P15023851928668983565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4125 terms. -/
def A025156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025471.P13068643471398560519

`A065515(5^n)`
-/

namespace A025471.P13068643471398560519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (5 ^ n)

end

end A025471.P13068643471398560519

noncomputable section

/-- A025471: Position of 5^n among the powers of primes (A000961).

Offset 0, canonical program `A025471.P13068643471398560519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025471 (n : ℕ) : ℤ :=
  A025471.P13068643471398560519.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025472.P17597315845330719835

`A065515(7^n)`
-/

namespace A025472.P17597315845330719835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (7 ^ n)

end

end A025472.P17597315845330719835

noncomputable section

/-- A025472: a(n) is the position of 7^n among the powers of primes (A000961).

Offset 0, canonical program `A025472.P17597315845330719835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025472 (n : ℕ) : ℤ :=
  A025472.P17597315845330719835.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026008.P1049361676505189419

`A208355(n+2)-A097331(n+2)`
-/

namespace A026008.P1049361676505189419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 2) - A097331 (n + 2)

end

end A026008.P1049361676505189419

noncomputable section

/-- A026008: a(n) = T(n, floor(n/2)), where T = Catalan triangle (A008315).

Offset 0, canonical program `A026008.P1049361676505189419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A026008 (n : ℕ) : ℤ :=
  A026008.P1049361676505189419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A026008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026019.P14041434584211369468

`A262717(1+n)+A174687(n)`
-/

namespace A026019.P14041434584211369468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262717 (1 + n) + A174687 n

end

end A026019.P14041434584211369468

noncomputable section

/-- A026019: a(n) = binomial(3*n,n) - binomial(3*n,n-3).

Offset 0, canonical program `A026019.P14041434584211369468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019 (n : ℕ) : ℤ :=
  A026019.P14041434584211369468.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A026019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026112.P727766938938311538

`A026302(A028310(n))-A327871(n)`
-/

namespace A026112.P727766938938311538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026302 (A028310 n).toNat - A327871 n

end

end A026112.P727766938938311538

noncomputable section

/-- A026112: a(n) = T(2n,n), where T is the array defined in A026105.

Offset 0, canonical program `A026112.P727766938938311538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026112 (n : ℕ) : ℤ :=
  A026112.P727766938938311538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026228.P14523334257397245851

`3*A026140(1+n)+2`
-/

namespace A026228.P14523334257397245851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026140 (1 + n) + 2

end

end A026228.P14523334257397245851

noncomputable section

/-- A026228: Numbers k such that A026166(k) = A026136(k) - 1.

Offset 1, canonical program `A026228.P14523334257397245851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026228 (n : ℕ) : ℤ :=
  A026228.P14523334257397245851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026232.P6117915654880813712

`∪[A008486(n+1), A026226(n+2)]`
-/

namespace A026232.P6117915654880813712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026226 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026232.P6117915654880813712

noncomputable section

/-- A026232: a(n) = (1/3)*(s(n) + 1), where s = A026231.

Offset 1, canonical program `A026232.P6117915654880813712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026232 (n : ℕ) : ℤ :=
  (A026232.P6117915654880813712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026332.P16606552884978845820

`A026336(2*n)`
-/

namespace A026332.P16606552884978845820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026336 (2 * n)

end

end A026332.P16606552884978845820

noncomputable section

/-- A026332: a(n) = T(2n,n), where T is the array in A026323.

Offset 0, canonical program `A026332.P16606552884978845820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026332 (n : ℕ) : ℤ :=
  A026332.P16606552884978845820.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026615.P4384294417434262214

`A028326(n)-A135225(A083920(n))`
-/

namespace A026615.P4384294417434262214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135225 (A083920 n).toNat

end

end A026615.P4384294417434262214

noncomputable section

/-- A026615: Triangle read by rows: T(n,0) = T(n,n) = 1 for n >= 0, T(n,1) = T(n,n-1) = 2*n-1 for n >= 1, T(n,k) = T(n-1,k-1) + T(n-1,k) for 2 <= k <= n-2 and n >= 4.

Offset 0, canonical program `A026615.P4384294417434262214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026615 (n : ℕ) : ℤ :=
  A026615.P4384294417434262214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026672.P4241792068261067658

`Δ[A026671(n)]-A026854(n)`
-/

namespace A026672.P4241792068261067658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026854 n

end

end A026672.P4241792068261067658

noncomputable section

/-- A026672: a(n) = T(2n,n-1), T given by A026670. Also T(2n,n-1)=T(2n+1,n+2), T given by A026725; and T(2n,n-1), T given by A026736.

Offset 2, canonical program `A026672.P4241792068261067658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026672 (n : ℕ) : ℤ :=
  A026672.P4241792068261067658.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026943.P8016539442401033073

`A092690(n+1)-Δ[A027914(n)]`
-/

namespace A026943.P8016539442401033073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026943.P8016539442401033073

noncomputable section

/-- A026943: a(n) = Sum_{k=0..n} (k+1) * T(n, k), with T given by A026300.

Offset 0, canonical program `A026943.P8016539442401033073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A026943 (n : ℕ) : ℤ :=
  A026943.P8016539442401033073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A026943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027282.P4320995479671935071

`2*A026596(2*n)-A026597(2*n)`
-/

namespace A027282.P4320995479671935071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026596 (2 * n) - A026597 (2 * n)

end

end A027282.P4320995479671935071

noncomputable section

/-- A027282: a(n) = self-convolution of row n of array T given by A026584.

Offset 0, canonical program `A027282.P4320995479671935071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A027282 (n : ℕ) : ℤ :=
  A027282.P4320995479671935071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A027282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028275.P981092791414747383

`A028326(n)-abs(A159853(n))`
-/

namespace A028275.P981092791414747383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - |A159853 n|

end

end A028275.P981092791414747383

noncomputable section

/-- A028275: Elements in 4-Pascal triangle (by row).

Offset 0, canonical program `A028275.P981092791414747383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028275 (n : ℕ) : ℤ :=
  A028275.P981092791414747383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028393.P12035346811171582160

`A180864(n+4)`
-/

namespace A028393.P12035346811171582160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180864 (n + 4)

end

end A028393.P12035346811171582160

noncomputable section

/-- A028393: Iterate the map in A006368 starting at 8.

Offset 0, canonical program `A028393.P12035346811171582160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3810 terms. -/
def A028393 (n : ℕ) : ℤ :=
  A028393.P12035346811171582160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3810 terms. -/
def A028393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028610.P7977923338784683921

`∑{#}[n, A028609(#)*A028609(n-#)]`
-/

namespace A028610.P7977923338784683921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A028609 k * A028609 (n - k)

end

end A028610.P7977923338784683921

noncomputable section

/-- A028610: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z))^2.

Offset 0, canonical program `A028610.P7977923338784683921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A028610 (n : ℕ) : ℤ :=
  A028610.P7977923338784683921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A028610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028815.P810525423351225743

`A008578(n+1)+1`
-/

namespace A028815.P810525423351225743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 1

end

end A028815.P810525423351225743

noncomputable section

/-- A028815: a(n) = prime(n) + 1 (starting with 1).

Offset 0, canonical program `A028815.P810525423351225743`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A028815.anchor (n : ℕ) : A028815 n = if n = 0 then 2 else (Nat.nth Nat.Prime (n - 1) : ℤ) + 1` in `Proof.A028.A028815`. -/
def A028815 (n : ℕ) : ℤ :=
  A028815.P810525423351225743.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A028815.anchor (n : ℕ) : A028815 n = if n = 0 then 2 else (Nat.nth Nat.Prime (n - 1) : ℤ) + 1` in `Proof.A028.A028815`. -/
def A028815.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A028890.P17409885626667997560

`eq[1, A007895(A007954(n))]`
-/

namespace A028890.P17409885626667997560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028890.P17409885626667997560

noncomputable section

/-- A028890: Product of digits of n is a nonzero Fibonacci number.

Offset 1, canonical program `A028890.P17409885626667997560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A028890 (n : ℕ) : ℤ :=
  (A028890.P17409885626667997560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A028890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029313.P18194141507139867726

`A029259(n)+A029303(n)-A029255(n)`
-/

namespace A029313.P18194141507139867726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 n + (A029303 n - A029255 n)

end

end A029313.P18194141507139867726

noncomputable section

/-- A029313: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029313.P18194141507139867726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029313 (n : ℕ) : ℤ :=
  A029313.P18194141507139867726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029357.P1479724606091517717

`A029303(n)+A029349(n)-A029295(n)`
-/

namespace A029357.P1479724606091517717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029349 n - A029295 n)

end

end A029357.P1479724606091517717

noncomputable section

/-- A029357: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029357.P1479724606091517717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029357 (n : ℕ) : ℤ :=
  A029357.P1479724606091517717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029376.P16706943438829377810

`A029114(n)+A029346(n)-A029102(n)`
-/

namespace A029376.P16706943438829377810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029346 n - A029102 n)

end

end A029376.P16706943438829377810

noncomputable section

/-- A029376: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029376.P16706943438829377810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029376 (n : ℕ) : ℤ :=
  A029376.P16706943438829377810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029399.P14652591475323631026

`Δ[∑[A029417(n)]-A029439(n)]`
-/

namespace A029399.P14652591475323631026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029417 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029399.P14652591475323631026

noncomputable section

/-- A029399: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029399.P14652591475323631026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029399 (n : ℕ) : ℤ :=
  A029399.P14652591475323631026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029641.P5309606783761197821

`A029638(A268232(n+1)+1)`
-/

namespace A029641.P5309606783761197821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (A268232 (n + 1) + 1).toNat

end

end A029641.P5309606783761197821

noncomputable section

/-- A029641: Even numbers in the (1,2)-Pascal triangle A029635 that are different from 2.

Offset 0, canonical program `A029641.P5309606783761197821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A029641 (n : ℕ) : ℤ :=
  A029641.P5309606783761197821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A029641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029658.P12151531906077078320

`filter[A029653(n), (-1)^#]`
-/

namespace A029658.P12151531906077078320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (-1 : ℚ) ^ (f1 j : ℤ) = 1) n)

end

end A029658.P12151531906077078320

noncomputable section

/-- A029658: Even numbers in the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029658.P12151531906077078320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7729 terms. -/
def A029658 (n : ℕ) : ℤ :=
  A029658.P12151531906077078320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7729 terms. -/
def A029658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030014.P14052116061962603541

`∑{d}[n+1, A008578(#)]`
-/

namespace A030014.P14052116061962603541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 d

end

end A030014.P14052116061962603541

noncomputable section

/-- A030014: Inverse Moebius transform of {1, primes}.

Offset 1, canonical program `A030014.P14052116061962603541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030014 (n : ℕ) : ℤ :=
  A030014.P14052116061962603541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030431.P16894720436376490872

`10*A102338(n+1)+3`
-/

namespace A030431.P16894720436376490872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A102338 (n + 1) + 3

end

end A030431.P16894720436376490872

noncomputable section

/-- A030431: Primes of form 10n+3.

Offset 1, canonical program `A030431.P16894720436376490872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030431 (n : ℕ) : ℤ :=
  A030431.P16894720436376490872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030431.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030625.P7737987755420101011

`(A002083(abs(1-n)+1)+n)*n`
-/

namespace A030625.P7737987755420101011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002083 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)) * (n : ℤ)

end

end A030625.P7737987755420101011

noncomputable section

/-- A030625: n(n+Z(n)), where Z( ) is the Narayana-Zidek-Capell sequence (A002083).

Offset 0, canonical program `A030625.P7737987755420101011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A030625 (n : ℕ) : ℤ :=
  A030625.P7737987755420101011.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A030625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031928.P11672901129551717801

`A000040(A320703(n+1))`
-/

namespace A031928.P11672901129551717801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320703 (n + 1)).toNat

end

end A031928.P11672901129551717801

noncomputable section

/-- A031928: Lower prime of a difference of 10 between consecutive primes.

Offset 1, canonical program `A031928.P11672901129551717801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031928 (n : ℕ) : ℤ :=
  A031928.P11672901129551717801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032890.P13361457398123682468

`record[abs(1-n)-A338251(A004523(n))]`
-/

namespace A032890.P13361457398123682468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - A338251 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032890.P13361457398123682468

noncomputable section

/-- A032890: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(0) >= d(1) <= d(2) >= ...

Offset 1, canonical program `A032890.P13361457398123682468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A032890 (n : ℕ) : ℤ :=
  A032890.P13361457398123682468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A032890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033197.P13571610583292348820

`-A204993(record[A007913(n+1)])`
-/

namespace A033197.P13571610583292348820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033197.P13571610583292348820

noncomputable section

/-- A033197: Discriminants of quadratic number fields Q(sqrt -n) for n squarefree.

Offset 1, canonical program `A033197.P13571610583292348820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197 (n : ℕ) : ℤ :=
  A033197.P13571610583292348820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A033197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033685.P5820918837906960133

`3*A045833(n)`
-/

namespace A033685.P5820918837906960133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045833 n

end

end A033685.P5820918837906960133

noncomputable section

/-- A033685: Theta series of hexagonal lattice A_2 with respect to deep hole.

Offset 0, canonical program `A033685.P5820918837906960133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033685 (n : ℕ) : ℤ :=
  A033685.P5820918837906960133.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033685.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033881.P3139120918464982481

`A033880(A005101(n+1))`
-/

namespace A033881.P3139120918464982481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A005101 (n + 1)).toNat

end

end A033881.P3139120918464982481

noncomputable section

/-- A033881: Abundancy of n-th abundant number: sigma(k) - 2k for k such that this is > 0.

Offset 1, canonical program `A033881.P3139120918464982481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033881 (n : ℕ) : ℤ :=
  A033881.P3139120918464982481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034021.P3191518075360289644

`A003136(eq[1, ∏{e}[A003136(n+1), #]]+1)`
-/

namespace A034021.P3191518075360289644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A034021.P3191518075360289644

noncomputable section

/-- A034021: Numbers that are primitively but not imprimitively represented by x^2+xy+y^2.

Offset 1, canonical program `A034021.P3191518075360289644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5619 terms. -/
def A034021 (n : ℕ) : ℤ :=
  A034021.P3191518075360289644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5619 terms. -/
def A034021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034099.P16522247859076894767

`A034097(n+1)+∑[A133100(n)]`
-/

namespace A034099.P16522247859076894767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034097 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034099.P16522247859076894767

noncomputable section

/-- A034099: Fractional part of square root of a(n) starts with digit 3.

Offset 1, canonical program `A034099.P16522247859076894767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034099 (n : ℕ) : ℤ :=
  A034099.P16522247859076894767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034164.P16391364556815372290

`A108411(n)*A218540(n+2)`
-/

namespace A034164.P16391364556815372290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A218540 (n + 2)

end

end A034164.P16391364556815372290

noncomputable section

/-- A034164: Related to triple factorial numbers 2*A034000(n+1).

Offset 0, canonical program `A034164.P16391364556815372290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A034164 (n : ℕ) : ℤ :=
  A034164.P16391364556815372290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A034164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034274.P3693840692117694116

`1/2*A180266(n+2)`
-/

namespace A034274.P3693840692117694116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A180266 (n + 2) : ℚ)

end

end A034274.P3693840692117694116

noncomputable section

/-- A034274: a(n)=f(n,n-1) where f is given in A034261.

Offset 1, canonical program `A034274.P3693840692117694116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034274.P3693840692117694116.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180266, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034737.P1233646584205894789

`∑{d}[n+1, #*A034729((n+1)/#)]`
-/

namespace A034737.P1233646584205894789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P1233646584205894789

noncomputable section

/-- A034737: Dirichlet convolution of b_n=2^(n-1) with sigma(n).

Offset 1, canonical program `A034737.P1233646584205894789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034737 (n : ℕ) : ℤ :=
  A034737.P1233646584205894789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034746.P17647171061663066197

`∑{d}[n+1, A000045(#)*A008578((n+1)/#)]`
-/

namespace A034746.P17647171061663066197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034746.P17647171061663066197

noncomputable section

/-- A034746: Dirichlet convolution of Fibonacci numbers with Primes (with 1).

Offset 1, canonical program `A034746.P17647171061663066197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034746 (n : ℕ) : ℤ :=
  A034746.P17647171061663066197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034752.P8472321955714511973

`∑{d}[n+1, A000244(#-1)*A008578((n+1)/#)]`
-/

namespace A034752.P8472321955714511973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000244 (d - 1) * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034752.P8472321955714511973

noncomputable section

/-- A034752: Dirichlet convolution of 3^(n-1) with primes (with 1).

Offset 1, canonical program `A034752.P8472321955714511973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034752 (n : ℕ) : ℤ :=
  A034752.P8472321955714511973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034759.P7395327973398037914

`∑{d}[n+1, A008578((n+1)/#)*A008578(#)]`
-/

namespace A034759.P7395327973398037914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A008578 d

end

end A034759.P7395327973398037914

noncomputable section

/-- A034759: Dirichlet convolution of primes (with 1) with themselves.

Offset 1, canonical program `A034759.P7395327973398037914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034759 (n : ℕ) : ℤ :=
  A034759.P7395327973398037914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034760.P6515166358504911773

`∑{d}[n+1, A000010(#)*A008578((n+1)/#)]`
-/

namespace A034760.P6515166358504911773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034760.P6515166358504911773

noncomputable section

/-- A034760: Dirichlet convolution of primes (with 1) with phi(n).

Offset 1, canonical program `A034760.P6515166358504911773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034760 (n : ℕ) : ℤ :=
  A034760.P6515166358504911773.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034771.P14136708575511469544

`∑{d}[n+1, A034729(#)]`
-/

namespace A034771.P14136708575511469544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d

end

end A034771.P14136708575511469544

noncomputable section

/-- A034771: Dirichlet convolution of d(n) (# of divisors) with b_n=2^(n-1).

Offset 1, canonical program `A034771.P14136708575511469544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034771 (n : ℕ) : ℤ :=
  A034771.P14136708575511469544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034942.P16640665796906915742

`A026388(n+2)-A129160(n+2)`
-/

namespace A034942.P16640665796906915742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026388 (n + 2) - A129160 (n + 2)

end

end A034942.P16640665796906915742

noncomputable section

/-- A034942: Binomial transform of A002054.

Offset 0, canonical program `A034942.P16640665796906915742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034942 (n : ℕ) : ℤ :=
  A034942.P16640665796906915742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A034942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035170.P11485514388961379659

`A124233(n+1)`
-/

namespace A035170.P11485514388961379659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 (n + 1)

end

end A035170.P11485514388961379659

noncomputable section

/-- A035170: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -20.

Offset 1, canonical program `A035170.P11485514388961379659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035170 (n : ℕ) : ℤ :=
  A035170.P11485514388961379659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035187.P4441846657332739051

`A001899(n+1)+A373335(n+1)-A001878(n+1)`
-/

namespace A035187.P4441846657332739051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (n + 1) + (A373335 (n + 1) - A001878 (n + 1))

end

end A035187.P4441846657332739051

noncomputable section

/-- A035187: Sum over divisors d of n of Kronecker symbol (5|d).

Offset 1, canonical program `A035187.P4441846657332739051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035187 (n : ℕ) : ℤ :=
  A035187.P4441846657332739051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035246.P14637985280883244222

`∪[2*A003136(n+2), A003136(n+2)]`
-/

namespace A035246.P14637985280883244222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003136 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035246.P14637985280883244222

noncomputable section

/-- A035246: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -12.

Offset 1, canonical program `A035246.P14637985280883244222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035246 (n : ℕ) : ℤ :=
  (A035246.P14637985280883244222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035264.P12784958108886998908

`lt[0, A035211(1+n)]+1`
-/

namespace A035264.P12784958108886998908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035264.P12784958108886998908

noncomputable section

/-- A035264: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 29.

Offset 1, canonical program `A035264.P12784958108886998908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A035264 (n : ℕ) : ℤ :=
  (A035264.P12784958108886998908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A035264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035612.P10790304675127339633

`val(A022340(1+n), 2)`
-/

namespace A035612.P10790304675127339633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022340 (1 + n)).toNat 2

end

end A035612.P10790304675127339633

noncomputable section

/-- A035612: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 1) contains n.

Offset 1, canonical program `A035612.P10790304675127339633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035612 (n : ℕ) : ℤ :=
  (A035612.P10790304675127339633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036238.P9635143634491131780

`A002378(A092543(n+1))%A028263(A057944(n))`
-/

namespace A036238.P9635143634491131780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (A092543 (n + 1)).toNat) (A028263 (A057944 n).toNat)

end

end A036238.P9635143634491131780

noncomputable section

/-- A036238: Triangle of numbers a(r,j) = j*(j+1) mod r+2, r>=1, j=1..r.

Offset 1, canonical program `A036238.P9635143634491131780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036238 (n : ℕ) : ℤ :=
  A036238.P9635143634491131780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036706.P17817765458710477030

`A036710(n)-1`
-/

namespace A036706.P17817765458710477030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - 1

end

end A036706.P17817765458710477030

noncomputable section

/-- A036706: a(n)=number of Gaussian integers z=a+bi satisfying n - 1/2 < |z| <= n + 1/2, a>0, b>=0.

Offset 0, canonical program `A036706.P17817765458710477030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7325 terms. -/
def A036706 (n : ℕ) : ℤ :=
  A036706.P17817765458710477030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7325 terms. -/
def A036706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036779.P249363070567097633

`record[and(n+1, A057300(A010060(n+1)+n))]`
-/

namespace A036779.P249363070567097633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A057300 (A010060 (n + 1) + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036779.P249363070567097633

noncomputable section

/-- A036779: Greedy sequence such that no term is the average of three others.

Offset 1, canonical program `A036779.P249363070567097633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A036779 (n : ℕ) : ℤ :=
  A036779.P249363070567097633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A036779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037037.P10824108654988819011

`A100637(n)-A230980(n)`
-/

namespace A037037.P10824108654988819011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A230980 n

end

end A037037.P10824108654988819011

noncomputable section

/-- A037037: Number of primes between n and 3n.

Offset 1, canonical program `A037037.P10824108654988819011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037037 (n : ℕ) : ℤ :=
  A037037.P10824108654988819011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037125.P11317656895485282792

`1+n-A007504(A350174(n))`
-/

namespace A037125.P11317656895485282792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A007504 (A350174 n).toNat

end

end A037125.P11317656895485282792

noncomputable section

/-- A037125: Irregular triangle: row n is 1, 2, 3, 4, .., prime(n).

Offset 1, canonical program `A037125.P11317656895485282792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037125 (n : ℕ) : ℤ :=
  A037125.P11317656895485282792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037169.P12121537751605403474

`A000040(n+1)*∏[Δ[A008578(n+1)]]`
-/

namespace A037169.P12121537751605403474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A037169.P12121537751605403474

noncomputable section

/-- A037169: a(n) = prime(n) * Product_{k=0..n-2} prime(n-k) mod prime(n-k-1).

Offset 1, canonical program `A037169.P12121537751605403474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A037169 (n : ℕ) : ℤ :=
  A037169.P12121537751605403474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A037169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037340.P11258382907585184668

`eq[0, A276729(A202267(1+n))]`
-/

namespace A037340.P11258382907585184668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A202267 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037340.P11258382907585184668

noncomputable section

/-- A037340: Numbers whose base-2 and base-6 expansions have no digits in common.

Offset 1, canonical program `A037340.P11258382907585184668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A037340 (n : ℕ) : ℤ :=
  (A037340.P11258382907585184668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A037340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037863.P16838511849426806167

`A110591(n+1)-2*A139352(n+1)`
-/

namespace A037863.P16838511849426806167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (n + 1) - 2 * A139352 (n + 1)

end

end A037863.P16838511849426806167

noncomputable section

/-- A037863: a(n) = (number of digits <=1) - (number of digits >1) in base 4 representation of n.

Offset 1, canonical program `A037863.P16838511849426806167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037863 (n : ℕ) : ℤ :=
  A037863.P16838511849426806167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037953.P4840713921781047894

`A037955(n)-A099376(floor(n/2))`
-/

namespace A037953.P4840713921781047894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n - A099376 ⌊(n : ℚ) / 2⌋.toNat

end

end A037953.P4840713921781047894

noncomputable section

/-- A037953: a(n) = binomial(n, floor((n-5)/2)).

Offset 0, canonical program `A037953.P4840713921781047894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037953 (n : ℕ) : ℤ :=
  A037953.P4840713921781047894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038509.P14900524453190628503

`A007310(A199593(n+1))`
-/

namespace A038509.P14900524453190628503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A199593 (n + 1)).toNat

end

end A038509.P14900524453190628503

noncomputable section

/-- A038509: Composite numbers congruent to +-1 mod 6.

Offset 1, canonical program `A038509.P14900524453190628503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A038509 (n : ℕ) : ℤ :=
  A038509.P14900524453190628503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A038509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038511.P1114232487141861154

`filter[A133630(n+1), A162289(#)]`
-/

namespace A038511.P1114232487141861154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A038511.P1114232487141861154

noncomputable section

/-- A038511: Composite numbers with smallest prime factor >= 11.

Offset 1, canonical program `A038511.P1114232487141861154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6988 terms. -/
def A038511 (n : ℕ) : ℤ :=
  A038511.P1114232487141861154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6988 terms. -/
def A038511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038558.P636742692231698886

`A233279(n)+A053644(n)`
-/

namespace A038558.P636742692231698886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 n + A053644 n

end

end A038558.P636742692231698886

noncomputable section

/-- A038558: Smallest number with derivative n.

Offset 0, canonical program `A038558.P636742692231698886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038558 (n : ℕ) : ℤ :=
  A038558.P636742692231698886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038618.P1019373947698348323

`A000040(A391014(1+n))`
-/

namespace A038618.P1019373947698348323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391014 (1 + n)).toNat

end

end A038618.P1019373947698348323

noncomputable section

/-- A038618: Primes not containing the digit '0'.

Offset 1, canonical program `A038618.P1019373947698348323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7122 terms. -/
def A038618 (n : ℕ) : ℤ :=
  A038618.P1019373947698348323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7122 terms. -/
def A038618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038668.P9455390079618952805

`∑[A304094(1+n)-1]`
-/

namespace A038668.P9455390079618952805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (1 + n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038668.P9455390079618952805

noncomputable section

/-- A038668: a(n)=[ n/3 ] + [ n/4 ] + [ n/7 ] + [ n/11 ] + [ n/18 ] + [ n/29 ] + [ n/47 ] + [ n/76 ] + [ n/123 ] + [ n/199 ]... (using Lucas numbers A000204).

Offset 1, canonical program `A038668.P9455390079618952805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038668 (n : ℕ) : ℤ :=
  A038668.P9455390079618952805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038838.P4013668275804421176

`eq[1, A067856(n+1)+1]+1`
-/

namespace A038838.P4013668275804421176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038838.P4013668275804421176

noncomputable section

/-- A038838: Numbers that are divisible by the square of an odd prime.

Offset 1, canonical program `A038838.P4013668275804421176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9463 terms. -/
def A038838 (n : ℕ) : ℤ :=
  (A038838.P4013668275804421176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9463 terms. -/
def A038838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038908.P2259766501861335261

`eq[A016035(n+1), A035215(n+1)]+1`
-/

namespace A038908.P2259766501861335261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038908.P2259766501861335261

noncomputable section

/-- A038908: Primes p such that 33 is not a square mod p.

Offset 1, canonical program `A038908.P2259766501861335261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A038908 (n : ℕ) : ℤ :=
  (A038908.P2259766501861335261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A038908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039009.P10161671281358653149

`eq[A001222(A194459(n)), A110592(n)]`
-/

namespace A039009.P10161671281358653149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039009.P10161671281358653149

noncomputable section

/-- A039009: Numbers whose base-5 representation has the same number of 0's and 3's.

Offset 1, canonical program `A039009.P10161671281358653149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2887 terms. -/
def A039009 (n : ℕ) : ℤ :=
  (A039009.P10161671281358653149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2887 terms. -/
def A039009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039012.P2916768435992472855

`eq[A001222(A338803(n)), A276134(n)]`
-/

namespace A039012.P2916768435992472855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039012.P2916768435992472855

noncomputable section

/-- A039012: Numbers whose base-5 representation has the same number of 1's and 4's.

Offset 1, canonical program `A039012.P2916768435992472855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A039012 (n : ℕ) : ℤ :=
  (A039012.P2916768435992472855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A039012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039981.P16034491406109922374

`A052709(n+1)%3`
-/

namespace A039981.P16034491406109922374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052709 (n + 1)) 3

end

end A039981.P16034491406109922374

noncomputable section

/-- A039981: An example of a d-perfect sequence.

Offset 1, canonical program `A039981.P16034491406109922374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039981 (n : ℕ) : ℤ :=
  A039981.P16034491406109922374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039984.P564255626104465486

`A090345(n)%2`
-/

namespace A039984.P564255626104465486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090345 n) 2

end

end A039984.P564255626104465486

noncomputable section

/-- A039984: An example of a d-perfect sequence.

Offset 1, canonical program `A039984.P564255626104465486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039984 (n : ℕ) : ℤ :=
  A039984.P564255626104465486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A041001.P7868168025577261724

`A042941(n+1)-A038845(n+1)`
-/

namespace A041001.P7868168025577261724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042941 (n + 1) - A038845 (n + 1)

end

end A041001.P7868168025577261724

noncomputable section

/-- A041001: Convolution of A000108(n+1), n >= 0, (Catalan numbers) with A038845 (3-fold convolution of powers of 4).

Offset 0, canonical program `A041001.P7868168025577261724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A041001 (n : ℕ) : ℤ :=
  A041001.P7868168025577261724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A041001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042971.P6415468916330116759

`A005654(1+n)-A116406(n+1)`
-/

namespace A042971.P6415468916330116759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (1 + n) - A116406 (n + 1)

end

end A042971.P6415468916330116759

noncomputable section

/-- A042971: a(n) = (C(2n, n)/2 - (2^(n-1) + ((n+1) mod 2)*C(n-1, n/2-1)))/2.

Offset 1, canonical program `A042971.P6415468916330116759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A042971 (n : ℕ) : ℤ :=
  A042971.P6415468916330116759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A042971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043285.P857067819011013542

`A089309(A137688(n))+val(n+1, 12)`
-/

namespace A043285.P857067819011013542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A137688 n).toNat + (SequenceMachineLib.valuation (n + 1) 12 : ℤ)

end

end A043285.P857067819011013542

noncomputable section

/-- A043285: Maximal run length in base 11 representation of n.

Offset 1, canonical program `A043285.P857067819011013542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A043285 (n : ℕ) : ℤ :=
  A043285.P857067819011013542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A043285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043305.P4009443292463290629

`record[(n+1)*A361465(n+1)]`
-/

namespace A043305.P4009443292463290629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043305.P4009443292463290629

noncomputable section

/-- A043305: Numbers k such that the numerator of the sum of the reciprocals of the divisors of k (=A017665(k)) is a power of 2.

Offset 1, canonical program `A043305.P4009443292463290629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A043305 (n : ℕ) : ℤ :=
  A043305.P4009443292463290629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A043305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043374.P2562793773379906124

`eq[2, A268643(A202267(n+1))]`
-/

namespace A043374.P2562793773379906124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043374.P2562793773379906124

noncomputable section

/-- A043374: Numbers having two 1's in base 6.

Offset 1, canonical program `A043374.P2562793773379906124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043374 (n : ℕ) : ℤ :=
  (A043374.P2562793773379906124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043377.P6710888117554607270

`eq[1, A316863(A202267(1+n))]`
-/

namespace A043377.P6710888117554607270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A202267 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043377.P6710888117554607270

noncomputable section

/-- A043377: Numbers having one 2 in base 6.

Offset 1, canonical program `A043377.P6710888117554607270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043377 (n : ℕ) : ℤ :=
  (A043377.P6710888117554607270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A043377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043378.P3910935549729391962

`eq[2, A316863(A202267(n+1))]`
-/

namespace A043378.P3910935549729391962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043378.P3910935549729391962

noncomputable section

/-- A043378: Numbers having two 2's in base 6.

Offset 1, canonical program `A043378.P3910935549729391962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043378 (n : ℕ) : ℤ :=
  (A043378.P3910935549729391962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043390.P901358576775283053

`eq[2, A102677(A202267(n+1))]`
-/

namespace A043390.P901358576775283053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043390.P901358576775283053

noncomputable section

/-- A043390: Numbers having two 5's in base 6.

Offset 1, canonical program `A043390.P901358576775283053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043390 (n : ℕ) : ℤ :=
  (A043390.P901358576775283053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A043390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043514.P17552009662386232543

`eq[2, A316864(A061601(n))]`
-/

namespace A043514.P17552009662386232543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043514.P17552009662386232543

noncomputable section

/-- A043514: Numbers having two 6's in base 10.

Offset 1, canonical program `A043514.P17552009662386232543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043514 (n : ℕ) : ℤ :=
  (A043514.P17552009662386232543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043518.P17478239837040593349

`eq[2, A316863(A061601(n))]`
-/

namespace A043518.P17478239837040593349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043518.P17478239837040593349

noncomputable section

/-- A043518: Numbers having two 7's in base 10.

Offset 1, canonical program `A043518.P17478239837040593349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043518 (n : ℕ) : ℤ :=
  (A043518.P17478239837040593349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044974.P2158267626890744817

`∩[A023695(n+1), A043321(n+1)]`
-/

namespace A044974.P2158267626890744817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044974.P2158267626890744817

noncomputable section

/-- A044974: Numbers whose base-3 representation contains exactly one 0 and four 1's.

Offset 1, canonical program `A044974.P2158267626890744817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A044974 (n : ℕ) : ℤ :=
  (A044974.P2158267626890744817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A044974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044979.P7189074795377754944

`∩[A023695(n+1), A043322(n+1)]`
-/

namespace A044979.P7189074795377754944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044979.P7189074795377754944

noncomputable section

/-- A044979: Numbers whose base-3 representation contains exactly two 0's and four 1's.

Offset 1, canonical program `A044979.P7189074795377754944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A044979 (n : ℕ) : ℤ :=
  (A044979.P7189074795377754944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A044979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044984.P4664107033638038390

`∩[A023695(n+1), A043323(n+1)]`
-/

namespace A044984.P4664107033638038390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044984.P4664107033638038390

noncomputable section

/-- A044984: Numbers whose base-3 representation contains exactly three 0's and four 1's.

Offset 1, canonical program `A044984.P4664107033638038390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A044984 (n : ℕ) : ℤ :=
  (A044984.P4664107033638038390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A044984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045018.P11477163721360045438

`A006015(A045066(n+1))`
-/

namespace A045018.P11477163721360045438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045066 (n + 1)).toNat

end

end A045018.P11477163721360045438

noncomputable section

/-- A045018: Numbers whose base-4 representation contains exactly one 0 and no 1's.

Offset 1, canonical program `A045018.P11477163721360045438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A045018 (n : ℕ) : ℤ :=
  A045018.P11477163721360045438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A045018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045068.P15868725740429608415

`∩[A023719(n+1), A031466(n+1)]`
-/

namespace A045068.P15868725740429608415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045068.P15868725740429608415

noncomputable section

/-- A045068: Numbers whose base-4 representation contains exactly one 0 and two 3's.

Offset 1, canonical program `A045068.P15868725740429608415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3556 terms. -/
def A045068 (n : ℕ) : ℤ :=
  (A045068.P15868725740429608415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3556 terms. -/
def A045068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045089.P13199187241422836247

`A023709(A023695(1+n)+1)`
-/

namespace A045089.P13199187241422836247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023695 (1 + n) + 1).toNat

end

end A045089.P13199187241422836247

noncomputable section

/-- A045089: Numbers whose base-4 representation contains no 1's and exactly four 2's.

Offset 1, canonical program `A045089.P13199187241422836247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A045089 (n : ℕ) : ℤ :=
  A045089.P13199187241422836247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A045089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045109.P98421992831852164

`A023717(∩[A023695(n+1), A023702(n+1)])`
-/

namespace A045109.P98421992831852164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045109.P98421992831852164

noncomputable section

/-- A045109: Numbers whose base-4 representation contains exactly four 1's and four 2's.

Offset 1, canonical program `A045109.P98421992831852164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A045109 (n : ℕ) : ℤ :=
  A045109.P98421992831852164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A045109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045116.P9424321546210109196

`∩[A023710(n+1), A023719(n+1)]`
-/

namespace A045116.P9424321546210109196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045116.P9424321546210109196

noncomputable section

/-- A045116: Numbers whose base-4 representation contains exactly one 1 and two 3's.

Offset 1, canonical program `A045116.P9424321546210109196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A045116 (n : ℕ) : ℤ :=
  (A045116.P9424321546210109196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A045116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045140.P4056378356856557150

`∩[A023714(n+1), A023719(n+1)]`
-/

namespace A045140.P4056378356856557150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045140.P4056378356856557150

noncomputable section

/-- A045140: Numbers whose base-4 representation contains exactly one 2 and two 3's.

Offset 1, canonical program `A045140.P4056378356856557150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045140 (n : ℕ) : ℤ :=
  (A045140.P4056378356856557150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045145.P17634236122104813282

`∩[A023715(n+1), A023719(n+1)]`
-/

namespace A045145.P17634236122104813282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045145.P17634236122104813282

noncomputable section

/-- A045145: Numbers whose base-4 representation contains exactly two 2's and two 3's.

Offset 1, canonical program `A045145.P17634236122104813282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A045145 (n : ℕ) : ℤ :=
  (A045145.P17634236122104813282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A045145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045237.P11851650769541993133

`∩[A023726(n+1), A039011(n+1)]`
-/

namespace A045237.P11851650769541993133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045237.P11851650769541993133

noncomputable section

/-- A045237: Numbers whose base-5 representation contains exactly one 1 and one 3.

Offset 1, canonical program `A045237.P11851650769541993133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3786 terms. -/
def A045237 (n : ℕ) : ℤ :=
  (A045237.P11851650769541993133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3786 terms. -/
def A045237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045389.P14148912449142965134

`A045377((n+1)%(2*n+1)+1)`
-/

namespace A045389.P14148912449142965134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 ((n + 1) % (2 * n + 1) + 1)

end

end A045389.P14148912449142965134

noncomputable section

/-- A045389: Primes congruent to {2, 6} mod 7.

Offset 1, canonical program `A045389.P14148912449142965134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045389 (n : ℕ) : ℤ :=
  A045389.P14148912449142965134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045741.P17100693908967518254

`(n+2)/2*A143023(n+2)`
-/

namespace A045741.P17100693908967518254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A143023 (n + 2) : ℚ)

end

end A045741.P17100693908967518254

noncomputable section

/-- A045741: Number of edges in all noncrossing connected graphs on n nodes on a circle.

Offset 2, canonical program `A045741.P17100693908967518254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A045741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045741.P17100693908967518254.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A045741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045750.P15382284062470339353

`3*A045749(n)+n`
-/

namespace A045750.P15382284062470339353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045749 n + (n : ℤ)

end

end A045750.P15382284062470339353

noncomputable section

/-- A045750: Extension of Beatty sequence, complement of A045749.

Offset 0, canonical program `A045750.P15382284062470339353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045750 (n : ℕ) : ℤ :=
  A045750.P15382284062470339353.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045749, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045844.P17814176289288310916

`∑[A132137(1+n)]`
-/

namespace A045844.P17814176289288310916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132137 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045844.P17814176289288310916

noncomputable section

/-- A045844: a(n+1) = a(n) + largest digit of a(n); a(0) = 1.

Offset 0, canonical program `A045844.P17814176289288310916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045844 (n : ℕ) : ℤ :=
  A045844.P17814176289288310916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046022.P4558940758189190591

`A335402(n+1)+A130716(n)`
-/

namespace A046022.P4558940758189190591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1) + A130716 n

end

end A046022.P4558940758189190591

noncomputable section

/-- A046022: Primes together with 1 and 4.

Offset 1, canonical program `A046022.P4558940758189190591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046022 (n : ℕ) : ℤ :=
  A046022.P4558940758189190591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046160.P11084396749295816972

`A003136(A065475(1+n))+2`
-/

namespace A046160.P11084396749295816972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A065475 (1 + n)).toNat + 2

end

end A046160.P11084396749295816972

noncomputable section

/-- A046160: Bends of spheres in Soddy's bowl of integers which are tangent to the unit sphere and a single 2-sphere.

Offset 1, canonical program `A046160.P11084396749295816972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A046160 (n : ℕ) : ℤ :=
  A046160.P11084396749295816972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A046160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046224.P15998395619117309683

`A210736(A004275(n))+A004275(n)*A120588(n)`
-/

namespace A046224.P15998395619117309683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A004275 n).toNat + A004275 n * A120588 n

end

end A046224.P15998395619117309683

noncomputable section

/-- A046224: Distinct numbers seen when writing first numerator and then denominator of central elements of 1/2-Pascal triangle.

Offset 1, canonical program `A046224.P15998395619117309683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A046224 (n : ℕ) : ℤ :=
  A046224.P15998395619117309683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A046224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046314.P14099619161695556308

`∑{e}[A001248(n+1), #*A046312(n+1)]`
-/

namespace A046314.P14099619161695556308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A046312 (n + 1)

end

end A046314.P14099619161695556308

noncomputable section

/-- A046314: Numbers that are divisible by exactly 10 primes with multiplicity.

Offset 1, canonical program `A046314.P14099619161695556308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A046314 (n : ℕ) : ℤ :=
  A046314.P14099619161695556308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A046314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046736.P811384115133273399

`floor(A232665(n)/(n+1))`
-/

namespace A046736.P811384115133273399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232665 n : ℚ) / (n + 1 : ℚ)⌋

end

end A046736.P811384115133273399

noncomputable section

/-- A046736: Number of ways to place non-intersecting diagonals in convex n-gon so as to create no triangles.

Offset 2, canonical program `A046736.P811384115133273399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A046736 (n : ℕ) : ℤ :=
  A046736.P811384115133273399.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A046736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047779.P5728304473776711494

`∩[A023196(n+1), A079364(n+1)]`
-/

namespace A047779.P5728304473776711494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047779.P5728304473776711494

noncomputable section

/-- A047779: Abundant or perfect numbers k such that neither k-1 nor k+1 is a prime.

Offset 1, canonical program `A047779.P5728304473776711494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1757 terms. -/
def A047779 (n : ℕ) : ℤ :=
  (A047779.P5728304473776711494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1757 terms. -/
def A047779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047820.P3292128957277670527

`record[A191558(A114522(n+3))]`
-/

namespace A047820.P3292128957277670527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A114522 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047820.P3292128957277670527

noncomputable section

/-- A047820: Composite numbers that become prime after exactly 1 iteration of f(k) = sum of distinct prime factors of k.

Offset 1, canonical program `A047820.P3292128957277670527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1247 terms. -/
def A047820 (n : ℕ) : ℤ :=
  A047820.P3292128957277670527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1247 terms. -/
def A047820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047924.P14531844885665270262

`abs(A288709(n+1)-n)`
-/

namespace A047924.P14531844885665270262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288709 (n + 1) - (n : ℤ)|

end

end A047924.P14531844885665270262

noncomputable section

/-- A047924: a(n) = B_{A_n+1}+1, where A_n = floor(n*phi) = A000201(n), B_n = floor(n*phi^2) = A001950(n) and phi is the golden ratio.

Offset 0, canonical program `A047924.P14531844885665270262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924 (n : ℕ) : ℤ :=
  A047924.P14531844885665270262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048449.P12200641501554695606

`A000040(n+1)+A048448(n)+A004139(n+1)`
-/

namespace A048449.P12200641501554695606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A048448 n + A004139 (n + 1))

end

end A048449.P12200641501554695606

noncomputable section

/-- A048449: Starting from generation 2 add previous and next term yielding generation 3.

Offset 0, canonical program `A048449.P12200641501554695606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048449 (n : ℕ) : ℤ :=
  A048449.P12200641501554695606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048717.P2461125811461192478

`∩[A004742(n+1), A077459(n+1)]`
-/

namespace A048717.P2461125811461192478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048717.P2461125811461192478

noncomputable section

/-- A048717: Binary expansion matches ((0)*00(1*)11)*(0*).

Offset 0, canonical program `A048717.P2461125811461192478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A048717 (n : ℕ) : ℤ :=
  (A048717.P2461125811461192478.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A048717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049319.P9182740163463165320

`6*A395768(2*n+1)`
-/

namespace A049319.P9182740163463165320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A395768 (2 * n + 1)

end

end A049319.P9182740163463165320

noncomputable section

/-- A049319: Number of 3-dimensional integer direction vectors (a,b,c) towards grid points at squared integer distance 2n-1.

Offset 1, canonical program `A049319.P9182740163463165320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3224 terms. -/
def A049319 (n : ℕ) : ℤ :=
  A049319.P9182740163463165320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3224 terms. -/
def A049319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049620.P15532980577468314224

`A008865(n+1)%A206350(n+1)`
-/

namespace A049620.P15532980577468314224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008865 (n + 1)) (A206350 (n + 1))

end

end A049620.P15532980577468314224

noncomputable section

/-- A049620: a(n) = T(n,n), array T as in A049615.

Offset 0, canonical program `A049620.P15532980577468314224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2797 terms. -/
def A049620 (n : ℕ) : ℤ :=
  A049620.P15532980577468314224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2797 terms. -/
def A049620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049632.P1310813934760745666

`abs(xor(-2, A206350(n+1)))`
-/

namespace A049632.P1310813934760745666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A206350 (n + 1))|

end

end A049632.P1310813934760745666

noncomputable section

/-- A049632: a(n) = T(n,n), array T as in A049627.

Offset 0, canonical program `A049632.P1310813934760745666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2836 terms. -/
def A049632 (n : ℕ) : ℤ :=
  A049632.P1310813934760745666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2836 terms. -/
def A049632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050057.P8258033888669966079

`a(n-1)+a(A053645(A122155(n)))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A050057.P8258033888669966079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 1) + a (A053645 (A122155 n).toNat).toNat

end

end A050057.P8258033888669966079

noncomputable section

/-- A050057: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

Offset 1, canonical program `A050057.P8258033888669966079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A050057 (n : ℕ) : ℤ :=
  (A050057.P8258033888669966079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A050057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050164.P5331942253269546

`A050161(A014132(n+1))`
-/

namespace A050164.P5331942253269546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050161 (A014132 (n + 1)).toNat

end

end A050164.P5331942253269546

noncomputable section

/-- A050164: T(n,k)=S(2n+3,n+3,k+3), 0<=k<=n, n >= 0, array S as in A050157.

Offset 0, canonical program `A050164.P5331942253269546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A050164 (n : ℕ) : ℤ :=
  A050164.P5331942253269546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A050164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050361.P4609984906141832222

`∏{e}[n+1, A347586(#)]`
-/

namespace A050361.P4609984906141832222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A347586 (Nat.factorization (f1 n) p)

end

end A050361.P4609984906141832222

noncomputable section

/-- A050361: Number of factorizations into distinct prime powers greater than 1.

Offset 1, canonical program `A050361.P4609984906141832222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050361 (n : ℕ) : ℤ :=
  A050361.P4609984906141832222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050433.P14682806207402057435

`A399787(A007091(n+1))`
-/

namespace A050433.P14682806207402057435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A007091 (n + 1)).toNat

end

end A050433.P14682806207402057435

noncomputable section

/-- A050433: Length of longest palindromic subword of (n base 5).

Offset 1, canonical program `A050433.P14682806207402057435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A050433 (n : ℕ) : ℤ :=
  A050433.P14682806207402057435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A050433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050456.P2703078225834932298

`A050448(n+1)-A050455(n+1)`
-/

namespace A050456.P2703078225834932298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050448 (n + 1) - A050455 (n + 1)

end

end A050456.P2703078225834932298

noncomputable section

/-- A050456: a(n) = Sum_{d|n, d==1 mod 4} d^4 - Sum_{d|n, d==3 mod 4} d^4.

Offset 1, canonical program `A050456.P2703078225834932298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050456 (n : ℕ) : ℤ :=
  A050456.P2703078225834932298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050458.P15679077146658638176

`abs(A050450(n+1)-A050453(n+1))`
-/

namespace A050458.P15679077146658638176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050450 (n + 1) - A050453 (n + 1)|

end

end A050458.P15679077146658638176

noncomputable section

/-- A050458: Difference between Sum_{d|n, d == 1 (mod 4)} d^2 and Sum_{d|n, d == 3 (mod 4)} d^2.

Offset 1, canonical program `A050458.P15679077146658638176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050458 (n : ℕ) : ℤ :=
  A050458.P15679077146658638176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050613.P13423793685532721928

`A075149(or(1, n))`
-/

namespace A050613.P13423793685532721928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075149 (Nat.lor 1 n)

end

end A050613.P13423793685532721928

noncomputable section

/-- A050613: Products of distinct terms of 1 and rest from A001566: a(n) = Product_{i=0..floor(log_2(n+1))} L(2^i)^bit(n,i).

Offset 0, canonical program `A050613.P13423793685532721928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A050613 (n : ℕ) : ℤ :=
  A050613.P13423793685532721928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A050613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050615.P3198622266931088097

`a(A004526(n))*A050614(n)` with `a(0)=1`
-/

namespace A050615.P3198622266931088097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A050614 n

end

end A050615.P3198622266931088097

noncomputable section

/-- A050615: Products of distinct terms of Fibonacci(2^(i+2)): a(n) = Product_{i=0..floor(log_2(n+1))} F(2^(i+2))^bit(n,i).

Offset 0, canonical program `A050615.P3198622266931088097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615 (n : ℕ) : ℤ :=
  A050615.P3198622266931088097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050931.P2981049256698480366

`comp[A230780(n+1)-1]+1`
-/

namespace A050931.P2981049256698480366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050931.P2981049256698480366

noncomputable section

/-- A050931: Numbers having a prime factor congruent to 1 mod 6.

Offset 1, canonical program `A050931.P2981049256698480366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050931 (n : ℕ) : ℤ :=
  (A050931.P2981049256698480366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050939.P13334191487414510968

`comp[A193922(n)-1]+1`
-/

namespace A050939.P13334191487414510968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050939.P13334191487414510968

noncomputable section

/-- A050939: Numbers that are not the sum of consecutive Fibonacci numbers.

Offset 1, canonical program `A050939.P13334191487414510968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050939 (n : ℕ) : ℤ :=
  (A050939.P13334191487414510968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051135.P7841360352150666310

`A188163(n+2)-A188163(n+1)`
-/

namespace A051135.P7841360352150666310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 2) - A188163 (n + 1)

end

end A051135.P7841360352150666310

noncomputable section

/-- A051135: a(n) = number of times n appears in the Hofstadter-Conway $10000 sequence A004001.

Offset 1, canonical program `A051135.P7841360352150666310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051135 (n : ℕ) : ℤ :=
  A051135.P7841360352150666310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051356.P11536315113442041786

`∑[Δ[A112632(n+1)]*A065091(n+1)]`
-/

namespace A051356.P11536315113442041786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P11536315113442041786

noncomputable section

/-- A051356: Start with 0, run through primes >=5, adding if -1 mod 6, subtracting if +1 mod 6.

Offset 0, canonical program `A051356.P11536315113442041786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051356 (n : ℕ) : ℤ :=
  A051356.P11536315113442041786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051456.P8737044778690682288

`A029625(n)/2`
-/

namespace A051456.P8737044778690682288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029625 n : ℚ) / 2

end

end A051456.P8737044778690682288

noncomputable section

/-- A051456: (Terms in A029625)/2.

Offset 0, canonical program `A051456.P8737044778690682288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051456 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051456.P8737044778690682288.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051666.P8179550014341494216

`A222404(n)-A051601(n)`
-/

namespace A051666.P8179550014341494216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n - A051601 n

end

end A051666.P8179550014341494216

noncomputable section

/-- A051666: Rows of triangle formed using Pascal's rule except begin and end n-th row with n^2.

Offset 0, canonical program `A051666.P8179550014341494216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051666 (n : ℕ) : ℤ :=
  A051666.P8179550014341494216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051897.P8902770767646687647

`∩[A224854(n+1), A224855(n+1)]`
-/

namespace A051897.P8902770767646687647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051897.P8902770767646687647

noncomputable section

/-- A051897: Values of n such that 90n+11, 90n+13, 90n+17, 90n+19 are all primes.

Offset 1, canonical program `A051897.P8902770767646687647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A051897 (n : ℕ) : ℤ :=
  (A051897.P8902770767646687647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A051897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052468.P15776435723576855453

`A162441(n+2)/(2*(n+1)+1)`
-/

namespace A052468.P15776435723576855453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162441 (n + 2) : ℚ) / (2 * (n + 1) + 1 : ℚ)

end

end A052468.P15776435723576855453

noncomputable section

/-- A052468: Numerators in the Taylor series for arccosh(x) - log(2*x).

Offset 1, canonical program `A052468.P15776435723576855453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052468 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052468.P15776435723576855453.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052705.P5477084767134801795

`A052709(n)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A052705.P5477084767134801795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A052709 n - a (n - 1)

end

end A052705.P5477084767134801795

noncomputable section

/-- A052705: Expansion of 2*x^2/(1 - 2*x - 2*x^2 + sqrt(1 - 4*x - 4*x^2)).

Offset 0, canonical program `A052705.P5477084767134801795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A052705 (n : ℕ) : ℤ :=
  A052705.P5477084767134801795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A052705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052714.P11540160832821077407

`A052701(n)*n!`
-/

namespace A052714.P11540160832821077407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 n * (Nat.factorial n : ℤ)

end

end A052714.P11540160832821077407

noncomputable section

/-- A052714: a(n) = 2^(n-1) * n! * Catalan(n-1) for n > 0 with a(0) = 0.

Offset 0, canonical program `A052714.P11540160832821077407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052714 (n : ℕ) : ℤ :=
  A052714.P11540160832821077407.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052852.P2138148589138615176

`∑{#}[n-1, (#+1)*A271703(C(n+1, 2)+#+1)]`
-/

namespace A052852.P2138148589138615176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * A271703 (Nat.choose (n + 1) 2 + (k + 1))

end

end A052852.P2138148589138615176

noncomputable section

/-- A052852: Expansion of e.g.f.: (x/(1-x))*exp(x/(1-x)).

Offset 0, canonical program `A052852.P2138148589138615176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052852 (n : ℕ) : ℤ :=
  A052852.P2138148589138615176.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053117.P15268049895969107565

`2^col(n)*A049310(C(row(n)+1, 2)+col(n))`
-/

namespace A053117.P15268049895969107565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A049310 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A053117.P15268049895969107565

noncomputable section

/-- A053117: Triangle read by rows of coefficients of Chebyshev's U(n,x) polynomials (exponents in increasing order).

Offset 0, canonical program `A053117.P15268049895969107565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053117 (n : ℕ) : ℤ :=
  A053117.P15268049895969107565.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053227.P5415555737178442554

`abs(A053222(A053226(n+1)))`
-/

namespace A053227.P5415555737178442554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053222 (A053226 (n + 1)).toNat|

end

end A053227.P5415555737178442554

noncomputable section

/-- A053227: First differences of sigma(n) that are negative.

Offset 1, canonical program `A053227.P5415555737178442554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A053227 (n : ℕ) : ℤ :=
  A053227.P5415555737178442554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A053227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053240.P4301108083726215672

`eq[char[A053241(n+1)], A000007(n)]`
-/

namespace A053240.P4301108083726215672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053241 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053240.P4301108083726215672

noncomputable section

/-- A053240: n for which values not equal to 2 occur in the expansion of A053238.

Offset 1, canonical program `A053240.P4301108083726215672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A053240 (n : ℕ) : ℤ :=
  (A053240.P4301108083726215672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A053240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053405.P14811944541059498351

`A257213(n+3)+1`
-/

namespace A053405.P14811944541059498351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 (n + 3) + 1

end

end A053405.P14811944541059498351

noncomputable section

/-- A053405: Definition: A kara B = C, where C is the least nonnegative integer such that C * B >= A and C * (B-1) < A. a(n) is the smallest k such that n kara k is undefined.

Offset 4, canonical program `A053405.P14811944541059498351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053405 (n : ℕ) : ℤ :=
  A053405.P14811944541059498351.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054020.P15543360695863262274

`lt[0, A054015(n+1)]+1`
-/

namespace A054020.P15543360695863262274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054020.P15543360695863262274

noncomputable section

/-- A054020: Chowla's function of n is not divisible by the number of proper divisors of n.

Offset 1, canonical program `A054020.P15543360695863262274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054020 (n : ℕ) : ℤ :=
  (A054020.P15543360695863262274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054021.P9446721746421932216

`eq[0, A054015(2+n)]+2`
-/

namespace A054021.P9446721746421932216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054015 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054021.P9446721746421932216

noncomputable section

/-- A054021: Numbers n such that Chowla's function of n is divisible by the number of proper divisors of n.

Offset 1, canonical program `A054021.P9446721746421932216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5328 terms. -/
def A054021 (n : ℕ) : ℤ :=
  (A054021.P9446721746421932216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5328 terms. -/
def A054021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054054.P2265909657191604686

`9-A054055(A061601(n))`
-/

namespace A054054.P2265909657191604686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A054055 (A061601 n).toNat

end

end A054054.P2265909657191604686

noncomputable section

/-- A054054: Smallest digit of n.

Offset 0, canonical program `A054054.P2265909657191604686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054054 (n : ℕ) : ℤ :=
  A054054.P2265909657191604686.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054072.P7366532012278300850

`A194737(1+n)+1`
-/

namespace A054072.P7366532012278300850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194737 (1 + n) + 1

end

end A054072.P7366532012278300850

noncomputable section

/-- A054072: Position of n in the permutation of 1,2,...,n obtained by ordering the fractional parts {h*sqrt(2)} for h=1,2,...,n.

Offset 1, canonical program `A054072.P7366532012278300850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054072 (n : ℕ) : ℤ :=
  A054072.P7366532012278300850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054388.P5591882632319717874

`A002595(n)/gcd(A002595(n), A008574(n))`
-/

namespace A054388.P5591882632319717874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002595 n : ℚ) / (Int.gcd (A002595 n) (A008574 n) : ℚ)

end

end A054388.P5591882632319717874

noncomputable section

/-- A054388: Denominators of coefficients of 1/2^(2n+1) in Newton's series for Pi.

Offset 0, canonical program `A054388.P5591882632319717874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A054388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054388.P5591882632319717874.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A054388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054723.P13772969738450931539

`p?[A332219(2*n+1)+2*n+1]`
-/

namespace A054723.P13772969738450931539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (2 * n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054723.P13772969738450931539

noncomputable section

/-- A054723: Prime exponents of composite Mersenne numbers.

Offset 1, canonical program `A054723.P13772969738450931539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054723 (n : ℕ) : ℤ :=
  A054723.P13772969738450931539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054784.P4050351329649829973

`eq[1, A336923(n+1)]+1`
-/

namespace A054784.P4050351329649829973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054784.P4050351329649829973

noncomputable section

/-- A054784: Integers n such that sigma(2n) - sigma(n) is a power of 2, where sigma is the sum of the divisors of n.

Offset 1, canonical program `A054784.P4050351329649829973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A054784 (n : ℕ) : ℤ :=
  (A054784.P4050351329649829973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A054784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055219.P2235118488065441353

`A108863(3+n)`
-/

namespace A055219.P2235118488065441353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 (3 + n)

end

end A055219.P2235118488065441353

noncomputable section

/-- A055219: T(2n+3,n), array T as in A055216.

Offset 0, canonical program `A055219.P2235118488065441353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A055219 (n : ℕ) : ℤ :=
  A055219.P2235118488065441353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A055219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055220.P257140366328946267

`A108863(n+4)-A014532(n+2)`
-/

namespace A055220.P257140366328946267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 (n + 4) - A014532 (n + 2)

end

end A055220.P257140366328946267

noncomputable section

/-- A055220: T(2n+4,n), array T as in A055216.

Offset 0, canonical program `A055220.P257140366328946267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A055220 (n : ℕ) : ℤ :=
  A055220.P257140366328946267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A055220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055786.P1330688624360433329

`A001790(n)/gcd(A002596(n), A005408(n))`
-/

namespace A055786.P1330688624360433329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (Int.gcd (A002596 n) (A005408 n) : ℚ)

end

end A055786.P1330688624360433329

noncomputable section

/-- A055786: Numerators of Taylor series expansion of arcsin(x). Also arises from arccos(x), arccsc(x), arcsec(x), arcsinh(x).

Offset 0, canonical program `A055786.P1330688624360433329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A055786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055786.P1330688624360433329.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A055786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055928.P10393867367407220433

`A035316((n+1)!)`
-/

namespace A055928.P10393867367407220433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (Nat.factorial (n + 1))

end

end A055928.P10393867367407220433

noncomputable section

/-- A055928: Sum of square divisors of n! = sum of squares of divisors of the square root of largest square dividing n!.

Offset 1, canonical program `A055928.P10393867367407220433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055928 (n : ℕ) : ℤ :=
  A055928.P10393867367407220433.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056011.P1549659588632935802

`A092543(n+1)+A057944(n)`
-/

namespace A056011.P1549659588632935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) + A057944 n

end

end A056011.P1549659588632935802

noncomputable section

/-- A056011: Enumeration of natural numbers by the boustrophedonic diagonal method.

Offset 1, canonical program `A056011.P1549659588632935802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056011 (n : ℕ) : ℤ :=
  A056011.P1549659588632935802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056270.P851741430272569091

`10*12*A056281(n+1)`
-/

namespace A056270.P851741430272569091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (12 * A056281 (n + 1))

end

end A056270.P851741430272569091

noncomputable section

/-- A056270: Number of primitive (aperiodic) words of length n which contain exactly five different symbols.

Offset 1, canonical program `A056270.P851741430272569091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A056270 (n : ℕ) : ℤ :=
  A056270.P851741430272569091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A056270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056283.P12975955271875151804

`∑{d}[n+1, A056288(#)]`
-/

namespace A056283.P12975955271875151804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056288 d

end

end A056283.P12975955271875151804

noncomputable section

/-- A056283: Number of n-bead necklaces with exactly three different colored beads.

Offset 1, canonical program `A056283.P12975955271875151804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056283 (n : ℕ) : ℤ :=
  A056283.P12975955271875151804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056284.P7023716060080530027

`∑{d}[1+n, A056289(#)]`
-/

namespace A056284.P7023716060080530027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056289 d

end

end A056284.P7023716060080530027

noncomputable section

/-- A056284: Number of n-bead necklaces with exactly four different colored beads.

Offset 1, canonical program `A056284.P7023716060080530027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A056284 (n : ℕ) : ℤ :=
  A056284.P7023716060080530027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A056284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056286.P8141038157855788927

`∑{d}[1+n, A056291(#)]`
-/

namespace A056286.P8141038157855788927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056291 d

end

end A056286.P8141038157855788927

noncomputable section

/-- A056286: Number of n-bead necklaces with exactly six different colored beads.

Offset 1, canonical program `A056286.P8141038157855788927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A056286 (n : ℕ) : ℤ :=
  A056286.P8141038157855788927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A056286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056476.P12632563156965169968

`A056481(n)+C(n, n²)`
-/

namespace A056476.P12632563156965169968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + (Nat.choose n (n ^ 2) : ℤ)

end

end A056476.P12632563156965169968

noncomputable section

/-- A056476: Number of primitive (aperiodic) palindromic structures of length n using a maximum of two different symbols.

Offset 0, canonical program `A056476.P12632563156965169968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A056476 (n : ℕ) : ℤ :=
  A056476.P12632563156965169968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A056476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056813.P16387577618086397622

`A008578(A056811(n+1)+1)`
-/

namespace A056813.P16387577618086397622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A056811 (n + 1) + 1).toNat

end

end A056813.P16387577618086397622

noncomputable section

/-- A056813: Largest non-unitary prime factor of LCM(1,...,n); that is, the largest prime which occurs to power > 1 in prime factorization of LCM(1,..,n).

Offset 1, canonical program `A056813.P16387577618086397622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056813 (n : ℕ) : ℤ :=
  A056813.P16387577618086397622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056913.P16160792407889327597

`record[A080304(2*n+1)]`
-/

namespace A056913.P16160792407889327597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056913.P16160792407889327597

noncomputable section

/-- A056913: Odd squarefree numbers for which the number of prime divisors is even.

Offset 1, canonical program `A056913.P16160792407889327597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056913 (n : ℕ) : ℤ :=
  A056913.P16160792407889327597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056928.P1059956196817698277

`A000290(n+2)+(A053000(n+2)-A056927(n+2))/2`
-/

namespace A056928.P1059956196817698277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 2) : ℚ) + (A053000 (n + 2) - A056927 (n + 2) : ℚ) / 2

end

end A056928.P1059956196817698277

noncomputable section

/-- A056928: Average of the smallest prime greater than n^2 and the largest prime less than n^2.

Offset 2, canonical program `A056928.P1059956196817698277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056928.P1059956196817698277.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056968.P16808487561389902358

`A062172(eq[11, A131818(n+1)])`
-/

namespace A056968.P16808487561389902358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056968.P16808487561389902358

noncomputable section

/-- A056968: 10^(n-1) modulo n.

Offset 1, canonical program `A056968.P16808487561389902358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A056968 (n : ℕ) : ℤ :=
  A056968.P16808487561389902358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A056968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056981.P2022671667099570059

`A002596(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056981.P2022671667099570059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 n ^ 2

end

end A056981.P2022671667099570059

noncomputable section

/-- A056981: a(n) = A002596(n)^2.

Offset 0, canonical program `A056981.P2022671667099570059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002596, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056981 (n : ℕ) : ℤ :=
  A056981.P2022671667099570059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002596, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057334.P9909904161761339769

`A008578(1+A000120(n))`
-/

namespace A057334.P9909904161761339769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A000120 n).toNat

end

end A057334.P9909904161761339769

noncomputable section

/-- A057334: In A000120, replace each entry k with the k-th prime and replace 0 with 1.

Offset 0, canonical program `A057334.P9909904161761339769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057334 (n : ℕ) : ℤ :=
  A057334.P9909904161761339769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057602.P3191110448721845909

`A000040(A008619(n))*A008578(A080513(n))`
-/

namespace A057602.P3191110448721845909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 n).toNat * A008578 (A080513 n).toNat

end

end A057602.P3191110448721845909

noncomputable section

/-- A057602: a(1)=2, a(n+1) is the smallest integer > a(n) such that the smallest prime factor of a(n+1) is the largest prime factor of a(n).

Offset 1, canonical program `A057602.P3191110448721845909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057602 (n : ℕ) : ℤ :=
  A057602.P3191110448721845909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058399.P4901818507027174016

`and(-1, A210950(A038722(n+1)))`
-/

namespace A058399.P4901818507027174016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A210950 (A038722 (n + 1)).toNat)

end

end A058399.P4901818507027174016

noncomputable section

/-- A058399: Triangle of partial row sums of partition triangle A008284.

Offset 1, canonical program `A058399.P4901818507027174016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A058399 (n : ℕ) : ℤ :=
  A058399.P4901818507027174016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A058399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059365.P17412879670440515058

`A106566(floor(sqrt(n²+1)))`
-/

namespace A059365.P17412879670440515058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (Nat.sqrt (n ^ 2 + 1))

end

end A059365.P17412879670440515058

noncomputable section

/-- A059365: Another version of the Catalan triangle: T(r,s) = binomial(2*r-s-1,r-1) - binomial(2*r-s-1,r), r>=0, 0 <= s <= r.

Offset 0, canonical program `A059365.P17412879670440515058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059365 (n : ℕ) : ℤ :=
  A059365.P17412879670440515058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059412.P1207478742608330448

`A000038(n)+Δ[A059413(A028310(n))]`
-/

namespace A059412.P1207478742608330448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059413 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A059412.P1207478742608330448

noncomputable section

/-- A059412: Number of distinct minimal unary DFA's with exactly n states.

Offset 1, canonical program `A059412.P1207478742608330448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059412 (n : ℕ) : ℤ :=
  A059412.P1207478742608330448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A059412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059481.P9969934564956536567

`abs(A027555(n))`
-/

namespace A059481.P9969934564956536567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027555 n|

end

end A059481.P9969934564956536567

noncomputable section

/-- A059481: Triangle read by rows. T(n, k) = binomial(n+k-1, k) for 0 <= k <= n.

Offset 0, canonical program `A059481.P9969934564956536567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059481 (n : ℕ) : ℤ :=
  A059481.P9969934564956536567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059712.P16738313545846618147

`(A059738(n)+A001006(n))/2`
-/

namespace A059712.P16738313545846618147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059738 n + A001006 n : ℚ) / 2

end

end A059712.P16738313545846618147

noncomputable section

/-- A059712: Number of stacked directed animals on the square lattice.

Offset 1, canonical program `A059712.P16738313545846618147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A059712 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059712.P16738313545846618147.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A059712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060141.P5689329236640195433

`A060140(n)+A060140(A066628(n))`
-/

namespace A060141.P5689329236640195433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060140 n + A060140 (A066628 n).toNat

end

end A060141.P5689329236640195433

noncomputable section

/-- A060141: Ordered set S defined by these rules: 0 and 1 are in S and if x is a nonzero number in S, then 3x and 9x+2 are in S.

Offset 0, canonical program `A060141.P5689329236640195433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060141 (n : ℕ) : ℤ :=
  A060141.P5689329236640195433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060308.P13212277095535227373

`2*(n+1)-A238737(n)`
-/

namespace A060308.P13212277095535227373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A238737 n

end

end A060308.P13212277095535227373

noncomputable section

/-- A060308: Largest prime <= 2n.

Offset 1, canonical program `A060308.P13212277095535227373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060308 (n : ℕ) : ℤ :=
  A060308.P13212277095535227373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060736.P900922812008928419

`A220508(n)+1`
-/

namespace A060736.P900922812008928419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 n + 1

end

end A060736.P900922812008928419

noncomputable section

/-- A060736: Array of square numbers read by antidiagonals in up direction.

Offset 1, canonical program `A060736.P900922812008928419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060736 (n : ℕ) : ℤ :=
  A060736.P900922812008928419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060968.P17331185296749833849

`A177704(n)*A395768(n+1)`
-/

namespace A060968.P17331185296749833849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n * A395768 (n + 1)

end

end A060968.P17331185296749833849

noncomputable section

/-- A060968: Number of solutions to x^2 + y^2 == 1 (mod n).

Offset 1, canonical program `A060968.P17331185296749833849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060968 (n : ℕ) : ℤ :=
  A060968.P17331185296749833849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061087.P11015891265639331375

`A061086(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061087.P11015891265639331375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061086 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061087.P11015891265639331375

noncomputable section

/-- A061087: a(n) = A061086(n) / n.

Offset 1, canonical program `A061087.P11015891265639331375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061087 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061087.P11015891265639331375.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061214.P7723433899822060398

`A072472(n+1)/p?[A004273(n)]`
-/

namespace A061214.P7723433899822060398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A061214.P7723433899822060398

noncomputable section

/-- A061214: Product of composite numbers between the n-th and (n+1)st primes.

Offset 1, canonical program `A061214.P7723433899822060398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A061214 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061214.P7723433899822060398.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A061214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000415.P13707848856828247433

`filter[A001481(n+2), A049240(#)]`
-/

namespace A000415.P13707848856828247433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000415.P13707848856828247433

noncomputable section

/-- A000415: Numbers that are the sum of 2 but no fewer nonzero squares.

Offset 1, canonical program `A000415.P13707848856828247433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415 (n : ℕ) : ℤ :=
  A000415.P13707848856828247433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A000415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001747.P198467477273308856

`2*A008578(n+1)`
-/

namespace A001747.P198467477273308856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1)

end

end A001747.P198467477273308856

noncomputable section

/-- A001747: 2 together with primes multiplied by 2.

Offset 1, canonical program `A001747.P198467477273308856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001747 (n : ℕ) : ℤ :=
  A001747.P198467477273308856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002068.P13415145323525649016

`A301316(A008578(n+2))/p?[A014681(n)]`
-/

namespace A002068.P13415145323525649016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A008578 (n + 2)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A002068.P13415145323525649016

noncomputable section

/-- A002068: Wilson remainders: a(n) = ((p-1)!+1)/p mod p, where p = prime(n).

Offset 1, canonical program `A002068.P13415145323525649016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A002068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002068.P13415145323525649016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A002068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002173.P7206352416500240550

`A050450(n+1)-A050453(n+1)`
-/

namespace A002173.P7206352416500240550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050450 (n + 1) - A050453 (n + 1)

end

end A002173.P7206352416500240550

noncomputable section

/-- A002173: a(n) = Sum_{d|n, d == 1 mod 4} d^2 - Sum_{d|n, d == 3 mod 4} d^2.

Offset 1, canonical program `A002173.P7206352416500240550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050450, A050453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002173 (n : ℕ) : ℤ :=
  A002173.P7206352416500240550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050450, A050453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003158.P15521823830310252341

`A003157(n+1)-1`
-/

namespace A003158.P15521823830310252341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - 1

end

end A003158.P15521823830310252341

noncomputable section

/-- A003158: A self-generating sequence (see Comments in A003156 for the definition).

Offset 1, canonical program `A003158.P15521823830310252341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003158 (n : ℕ) : ℤ :=
  A003158.P15521823830310252341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003254.P13670124598959845415

`A003256(A005206(A003234(n+1)))-A003234(n+1)`
-/

namespace A003254.P13670124598959845415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (A005206 (A003234 (n + 1)).toNat).toNat - A003234 (n + 1)

end

end A003254.P13670124598959845415

noncomputable section

/-- A003254: The number m such that A003233(m) = A005206(A003234(n)).

Offset 1, canonical program `A003254.P13670124598959845415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4471 terms. -/
def A003254 (n : ℕ) : ℤ :=
  A003254.P13670124598959845415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4471 terms. -/
def A003254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003641.P16057933161370365951

`2^(A001221(A039957(n+1))-1)`
-/

namespace A003641.P16057933161370365951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (A039957 (n + 1)).toNat - 1 : ℤ)

end

end A003641.P16057933161370365951

noncomputable section

/-- A003641: Number of genera of imaginary quadratic field with discriminant -k, k = A039957(n).

Offset 1, canonical program `A003641.P16057933161370365951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003641.P16057933161370365951.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003645.P9793536378345761660

`A052701(n+2)/2`
-/

namespace A003645.P9793536378345761660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052701 (n + 2) : ℚ) / 2

end

end A003645.P9793536378345761660

noncomputable section

/-- A003645: a(n) = 2^n * C(n+1), where C(n) = A000108(n) Catalan numbers.

Offset 0, canonical program `A003645.P9793536378345761660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003645 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003645.P9793536378345761660.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005812.P15868546208220252248

`a(A081134(n))+1` with `a(0)=0`
-/

namespace A005812.P15868546208220252248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A081134 n).toNat + 1

end

end A005812.P15868546208220252248

noncomputable section

/-- A005812: Weight of balanced ternary representation of n.

Offset 0, canonical program `A005812.P15868546208220252248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005812 (n : ℕ) : ℤ :=
  (A005812.P15868546208220252248.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005881.P8037099234371923042

`2*A033762(n)`
-/

namespace A005881.P8037099234371923042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033762 n

end

end A005881.P8037099234371923042

noncomputable section

/-- A005881: Theta series of planar hexagonal lattice (A2) with respect to edge.

Offset 0, canonical program `A005881.P8037099234371923042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005881 (n : ℕ) : ℤ :=
  A005881.P8037099234371923042.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007931.P11150484303351267694

`A284921(n+1)-A276037(n+1)`
-/

namespace A007931.P11150484303351267694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) - A276037 (n + 1)

end

end A007931.P11150484303351267694

noncomputable section

/-- A007931: Numbers that contain only 1's and 2's. Nonempty binary strings of length n in lexicographic order.

Offset 1, canonical program `A007931.P11150484303351267694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007931 (n : ℕ) : ℤ :=
  A007931.P11150484303351267694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008309.P1593060599352894748

`A049218(eq[0, A111594(n)])`
-/

namespace A008309.P1593060599352894748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008309.P1593060599352894748

noncomputable section

/-- A008309: Triangle T(n,k) of arctangent numbers: expansion of arctan(x)^n/n!.

Offset 1, canonical program `A008309.P1593060599352894748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A008309 (n : ℕ) : ℤ :=
  A008309.P1593060599352894748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A008309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008784.P11903729417169927821

`filter[A072437(n+1), A098725(#)]`
-/

namespace A008784.P11903729417169927821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A008784.P11903729417169927821

noncomputable section

/-- A008784: Numbers k such that sqrt(-1) mod k exists; or, numbers that are primitively represented by x^2 + y^2.

Offset 1, canonical program `A008784.P11903729417169927821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7310 terms. -/
def A008784 (n : ℕ) : ℤ :=
  A008784.P11903729417169927821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7310 terms. -/
def A008784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011674.P2384227229124822472

`A011687(A270545(n))`
-/

namespace A011674.P2384227229124822472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011687 (A270545 n).toNat

end

end A011674.P2384227229124822472

noncomputable section

/-- A011674: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^4+x^3+x^2+1.

Offset 0, canonical program `A011674.P2384227229124822472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A011674 (n : ℕ) : ℤ :=
  A011674.P2384227229124822472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A011674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011679.P6700023965337903991

`A011683(3*n+2)`
-/

namespace A011679.P6700023965337903991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011683 (3 * n + 2)

end

end A011679.P6700023965337903991

noncomputable section

/-- A011679: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^4+x+1.

Offset 0, canonical program `A011679.P6700023965337903991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011679 (n : ℕ) : ℤ :=
  A011679.P6700023965337903991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011704.P6307699629208149425

`A011717(A017053(n))`
-/

namespace A011704.P6307699629208149425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011717 (A017053 n).toNat

end

end A011704.P6307699629208149425

noncomputable section

/-- A011704: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^3+x^2+1.

Offset 0, canonical program `A011704.P6307699629208149425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A011704 (n : ℕ) : ℤ :=
  A011704.P6307699629208149425.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A011704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013602.P10366200212724924736

`A013597(2*n)`
-/

namespace A013602.P10366200212724924736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (2 * n)

end

end A013602.P10366200212724924736

noncomputable section

/-- A013602: a(n) = nextprime(4^n)-4^n.

Offset 0, canonical program `A013602.P10366200212724924736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013602 (n : ℕ) : ℤ :=
  A013602.P10366200212724924736.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014208.P8121156037884658954

`A159978(C(2, n+2)+n)+A000045(A028310(n))`
-/

namespace A014208.P8121156037884658954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (Nat.choose 2 (n + 2) + n) + A000045 (A028310 n).toNat

end

end A014208.P8121156037884658954

noncomputable section

/-- A014208: Next prime after n-th Fibonacci number.

Offset 0, canonical program `A014208.P8121156037884658954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A014208 (n : ℕ) : ℤ :=
  A014208.P8121156037884658954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A014208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014210.P8900791388522812635

`A013597(n)+2^n`
-/

namespace A014210.P8900791388522812635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n + (2 ^ n : ℤ)

end

end A014210.P8900791388522812635

noncomputable section

/-- A014210: Next prime after 2^n.

Offset 0, canonical program `A014210.P8900791388522812635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014210 (n : ℕ) : ℤ :=
  A014210.P8900791388522812635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014220.P16701128890246734141

`A121842(n)+n^3`
-/

namespace A014220.P16701128890246734141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n + (n ^ 3 : ℤ)

end

end A014220.P16701128890246734141

noncomputable section

/-- A014220: Next prime after n^3.

Offset 0, canonical program `A014220.P16701128890246734141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014220 (n : ℕ) : ℤ :=
  A014220.P16701128890246734141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014463.P16967897045246173623

`A014462(A080037(1+n))`
-/

namespace A014463.P16967897045246173623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (A080037 (1 + n)).toNat

end

end A014463.P16967897045246173623

noncomputable section

/-- A014463: Triangular array formed from elements to left of middle of rows of Pascal's triangle that are not 1.

Offset 1, canonical program `A014463.P16967897045246173623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014463 (n : ℕ) : ℤ :=
  A014463.P16967897045246173623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014721.P14394062809074516665

`A014413(n+1)²`
-/

namespace A014721.P14394062809074516665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) ^ 2

end

end A014721.P14394062809074516665

noncomputable section

/-- A014721: Squares of elements to left of the central element in Pascal triangle (by row).

Offset 1, canonical program `A014721.P14394062809074516665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014721 (n : ℕ) : ℤ :=
  A014721.P14394062809074516665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A018122.P2107038045910433194

`A018120(n)+A011558(n)`
-/

namespace A018122.P2107038045910433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018120 n + A011558 n

end

end A018122.P2107038045910433194

noncomputable section

/-- A018122: Powers of fifth root of 3 rounded up.

Offset 0, canonical program `A018122.P2107038045910433194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018122 (n : ℕ) : ℤ :=
  A018122.P2107038045910433194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023226.P6331527255177992895

`p?[A111249(n+1)]`
-/

namespace A023226.P6331527255177992895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023226.P6331527255177992895

noncomputable section

/-- A023226: Primes p such that 7*p + 8 is also prime.

Offset 1, canonical program `A023226.P6331527255177992895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. -/
def A023226 (n : ℕ) : ℤ :=
  A023226.P6331527255177992895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. -/
def A023226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025225.P15758787713115943274

`2*A052701(n+1)`
-/

namespace A025225.P15758787713115943274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052701 (n + 1)

end

end A025225.P15758787713115943274

noncomputable section

/-- A025225: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 2. Also a(n) = (2^n)*C(n-1), where C = A000108 (Catalan numbers).

Offset 1, canonical program `A025225.P15758787713115943274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025225 (n : ℕ) : ℤ :=
  A025225.P15758787713115943274.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025583.P9332945263903215172

`A061673(1+n)+1`
-/

namespace A025583.P9332945263903215172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (1 + n) + 1

end

end A025583.P9332945263903215172

noncomputable section

/-- A025583: Composite numbers that are not the sum of 2 primes.

Offset 1, canonical program `A025583.P9332945263903215172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025583 (n : ℕ) : ℤ :=
  A025583.P9332945263903215172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025707.P6962692642239313162

`∑[A000196(∑[A184732(1+n)])]`
-/

namespace A025707.P6962692642239313162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184732 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025707.P6962692642239313162

noncomputable section

/-- A025707: Index of 5^n within the sequence of the numbers of the form 5^i*6^j.

Offset 0, canonical program `A025707.P6962692642239313162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A025707 (n : ℕ) : ℤ :=
  A025707.P6962692642239313162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A025707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026138.P1780830098618766685

`1+A026140(1+n)`
-/

namespace A026138.P1780830098618766685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026140 (1 + n)

end

end A026138.P1780830098618766685

noncomputable section

/-- A026138: Numbers k such that s(j) < s(k) for all j < k, where s = A026136.

Offset 1, canonical program `A026138.P1780830098618766685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026138 (n : ℕ) : ℤ :=
  A026138.P1780830098618766685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026139.P5835568019489651600

`2*A026140(1+n)+1`
-/

namespace A026139.P5835568019489651600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026140 (1 + n) + 1

end

end A026139.P5835568019489651600

noncomputable section

/-- A026139: a(n) = s(k), where k is the n-th number such that s(j) < s(k) for all j < k, where s = A026136. Also a(n) = 2*t(n) - 1, where t = A026138.

Offset 1, canonical program `A026139.P5835568019489651600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026139 (n : ℕ) : ℤ :=
  A026139.P5835568019489651600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026141.P6698721252845057780

`A026225(n+1)-A026140(n+1)`
-/

namespace A026141.P6698721252845057780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) - A026140 (n + 1)

end

end A026141.P6698721252845057780

noncomputable section

/-- A026141: a(n) = (s(n)-s(n-1))/2, where s = A026139.

Offset 2, canonical program `A026141.P6698721252845057780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026141 (n : ℕ) : ℤ :=
  A026141.P6698721252845057780.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026320.P3662656461649246048

`∩[A026319(n+1), A246297(n+1)]`
-/

namespace A026320.P3662656461649246048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026320.P3662656461649246048

noncomputable section

/-- A026320: sin(n) > cos(n) > sin(n+1).

Offset 1, canonical program `A026320.P3662656461649246048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026320 (n : ℕ) : ℤ :=
  (A026320.P3662656461649246048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026585.P12290631387767027037

`2*A026596(n)-A026597(n)`
-/

namespace A026585.P12290631387767027037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026596 n - A026597 n

end

end A026585.P12290631387767027037

noncomputable section

/-- A026585: a(n) = T(n,n), T given by A026584. Also a(n) is the number of integer strings s(0), ..., s(n) counted by T, such that s(n)=0.

Offset 0, canonical program `A026585.P12290631387767027037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A026585 (n : ℕ) : ℤ :=
  A026585.P12290631387767027037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A026585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028330.P6625420377303343371

`2*A014413(n+1)`
-/

namespace A028330.P6625420377303343371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (n + 1)

end

end A028330.P6625420377303343371

noncomputable section

/-- A028330: Elements to the right of the central elements of the even-Pascal triangle A028326.

Offset 0, canonical program `A028330.P6625420377303343371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330 (n : ℕ) : ℤ :=
  A028330.P6625420377303343371.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028331.P15770476847713799023

`2*A014413(A049068(n+1))`
-/

namespace A028331.P15770476847713799023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (A049068 (n + 1)).toNat

end

end A028331.P15770476847713799023

noncomputable section

/-- A028331: Elements to the right of the central elements of the even-Pascal triangle A028326 that are not 2.

Offset 0, canonical program `A028331.P15770476847713799023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331 (n : ℕ) : ℤ :=
  A028331.P15770476847713799023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028966.P4564524160118052881

`∪[A055040(n+1), comp[A189715(n+1)]]`
-/

namespace A028966.P4564524160118052881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A028966.P4564524160118052881

noncomputable section

/-- A028966: Norms of vectors in the a.c.c. lattice, divided by 2.

Offset 0, canonical program `A028966.P4564524160118052881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028966 (n : ℕ) : ℤ :=
  (A028966.P4564524160118052881.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029629.P8253604627416425046

`A029628(A049068(1+n))`
-/

namespace A029629.P8253604627416425046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (A049068 (1 + n)).toNat

end

end A029629.P8253604627416425046

noncomputable section

/-- A029629: Numbers to left of central elements of the (3,2)-Pascal triangle A029618 that are different from 3.

Offset 0, canonical program `A029629.P8253604627416425046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029629 (n : ℕ) : ℤ :=
  A029629.P8253604627416425046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A029629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029630.P10151144225103094584

`A029628(eq[1, A130047(n)])`
-/

namespace A029630.P10151144225103094584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029630.P10151144225103094584

noncomputable section

/-- A029630: Odd numbers to left of central elements of the (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029630.P10151144225103094584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029630 (n : ℕ) : ℤ :=
  A029630.P10151144225103094584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029631.P17454013802700819155

`A029628(eq[0, A130047(n)])`
-/

namespace A029631.P17454013802700819155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029631.P17454013802700819155

noncomputable section

/-- A029631: Even numbers to left of central elements of the (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029631.P17454013802700819155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029631 (n : ℕ) : ℤ :=
  A029631.P17454013802700819155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029646.P63597527185748147

`A029644(eq[1, A130047(n)])`
-/

namespace A029646.P63597527185748147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029646.P63597527185748147

noncomputable section

/-- A029646: Odd numbers to the left of the central elements of the (1,2)-Pascal triangle A029635.

Offset 0, canonical program `A029646.P63597527185748147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029646 (n : ℕ) : ℤ :=
  A029646.P63597527185748147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A029646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029647.P16607861063663059710

`A029644(eq[0, A130047(n)])`
-/

namespace A029647.P16607861063663059710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029647.P16607861063663059710

noncomputable section

/-- A029647: Even numbers to the left of the central elements of the (1,2)-Pascal triangle A029635.

Offset 0, canonical program `A029647.P16607861063663059710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029647 (n : ℕ) : ℤ :=
  A029647.P16607861063663059710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. -/
def A029647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029662.P6655327354340354651

`A029644(n)+A008315(n)`
-/

namespace A029662.P6655327354340354651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 n + A008315 n

end

end A029662.P6655327354340354651

noncomputable section

/-- A029662: Numbers to the left of the central numbers of the (2,1)-Pascal triangle A029653.

Offset 0, canonical program `A029662.P6655327354340354651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029662 (n : ℕ) : ℤ :=
  A029662.P6655327354340354651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030096.P1601059321159697482

`p?[A066640(n+1)]`
-/

namespace A030096.P1601059321159697482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030096.P1601059321159697482

noncomputable section

/-- A030096: Primes whose digits are all odd.

Offset 1, canonical program `A030096.P1601059321159697482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3217 terms. -/
def A030096 (n : ℕ) : ℤ :=
  A030096.P1601059321159697482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3217 terms. -/
def A030096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031497.P1152109054829542898

`A007095(A043453(n+1))%A155085((n+6)²)`
-/

namespace A031497.P1152109054829542898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043453 (n + 1)).toNat) (A155085 ((n + 6) ^ 2))

end

end A031497.P1152109054829542898

noncomputable section

/-- A031497: Numbers whose base-10 representation has one more 0 than 9's.

Offset 1, canonical program `A031497.P1152109054829542898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A031497 (n : ℕ) : ℤ :=
  A031497.P1152109054829542898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A031497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031944.P1260323757507289481

`eq[A037897(n), A105220(n)]`
-/

namespace A031944.P1260323757507289481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031944.P1260323757507289481

noncomputable section

/-- A031944: Numbers in which digits 0,1,2 all occur in base 3.

Offset 1, canonical program `A031944.P1260323757507289481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031944 (n : ℕ) : ℤ :=
  (A031944.P1260323757507289481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032938.P16217621075849988673

`∪[A037314(n+1), A208665(n+1)]`
-/

namespace A032938.P16217621075849988673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032938.P16217621075849988673

noncomputable section

/-- A032938: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^(m-i) has d(i)=0 for all odd i.

Offset 1, canonical program `A032938.P16217621075849988673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032938 (n : ℕ) : ℤ :=
  (A032938.P16217621075849988673.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032943.P3501722432435064616

`record[abs(A073795(n+1))]`
-/

namespace A032943.P3501722432435064616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073795 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032943.P3501722432435064616

noncomputable section

/-- A032943: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^(m-i) has d(i)=0 for all odd i.

Offset 1, canonical program `A032943.P3501722432435064616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A032943 (n : ℕ) : ℤ :=
  A032943.P3501722432435064616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A032943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033034.P13313601177705697998

`eq[1, gcd(2, A309959(n))]`
-/

namespace A033034.P13313601177705697998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A309959 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033034.P13313601177705697998

noncomputable section

/-- A033034: Numbers all of whose base 8 digits are odd.

Offset 1, canonical program `A033034.P13313601177705697998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033034 (n : ℕ) : ℤ :=
  (A033034.P13313601177705697998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A033034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034098.P3877898319086273828

`A000037(A034103(1+n))`
-/

namespace A034098.P3877898319086273828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034103 (1 + n)).toNat

end

end A034098.P3877898319086273828

noncomputable section

/-- A034098: Fractional part of square root of a(n) starts with digit 2.

Offset 1, canonical program `A034098.P3877898319086273828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A034098 (n : ℕ) : ℤ :=
  A034098.P3877898319086273828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A034098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037035.P15953228204083907658

`A013597(n)-1`
-/

namespace A037035.P15953228204083907658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n - 1

end

end A037035.P15953228204083907658

noncomputable section

/-- A037035: Least k such that 2^n+1+k is a prime.

Offset 0, canonical program `A037035.P15953228204083907658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A037035 (n : ℕ) : ℤ :=
  A037035.P15953228204083907658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A037035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037203.P613243773187998549

`∑[val(A036689(n+1), A048448(n+1))]`
-/

namespace A037203.P613243773187998549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036689 (n + 1)).toNat (A048448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P613243773187998549

noncomputable section

/-- A037203: Number of terms by which A001223 lags behind A037201.

Offset 0, canonical program `A037203.P613243773187998549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037203 (n : ℕ) : ℤ :=
  (A037203.P613243773187998549.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037341.P3346706287896231561

`A249102(A248910(n+1)+1)`
-/

namespace A037341.P3346706287896231561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (A248910 (n + 1) + 1).toNat

end

end A037341.P3346706287896231561

noncomputable section

/-- A037341: Numbers whose base-2 and base-7 expansions have no digits in common.

Offset 1, canonical program `A037341.P3346706287896231561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A037341 (n : ℕ) : ℤ :=
  A037341.P3346706287896231561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. -/
def A037341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037413.P354472380037276149

`A033045(record[gcd(n, A099894(n))])`
-/

namespace A037413.P354472380037276149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A099894 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037413.P354472380037276149

noncomputable section

/-- A037413: Positive numbers having the same set of digits in base 2 and base 8.

Offset 1, canonical program `A037413.P354472380037276149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037413 (n : ℕ) : ℤ :=
  A037413.P354472380037276149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037477.P15889330472557437891

`eq[0, xor(A007095(n), A052421(n+1))]`
-/

namespace A037477.P15889330472557437891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007095 n) (A052421 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037477.P15889330472557437891

noncomputable section

/-- A037477: a(n) = Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*8^i: i=0,1,...,m} is the base 8 representation of n.

Offset 0, canonical program `A037477.P15889330472557437891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037477 (n : ℕ) : ℤ :=
  (A037477.P15889330472557437891.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037868.P13748398354358727401

`A037869(A007095(1+n))`
-/

namespace A037868.P13748398354358727401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A007095 (1 + n)).toNat

end

end A037868.P13748398354358727401

noncomputable section

/-- A037868: a(n)=(number of digits <=4)-(number of digits >4) in base 9 representation of n.

Offset 1, canonical program `A037868.P13748398354358727401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037868 (n : ℕ) : ℤ :=
  A037868.P13748398354358727401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037912.P11160266924684091222

`A037913(A007095(1+n))`
-/

namespace A037912.P11160266924684091222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (A007095 (1 + n)).toNat

end

end A037912.P11160266924684091222

noncomputable section

/-- A037912: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*9^i is the base-9 representation of n.

Offset 1, canonical program `A037912.P11160266924684091222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037912 (n : ℕ) : ℤ :=
  A037912.P11160266924684091222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A037912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038513.P482679686589415624

`filter[A046316(1+n), A187074(#)]`
-/

namespace A038513.P482679686589415624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A038513.P482679686589415624

noncomputable section

/-- A038513: Numbers with three not necessarily distinct prime factors with smallest prime >=5.

Offset 0, canonical program `A038513.P482679686589415624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5214 terms. -/
def A038513 (n : ℕ) : ℤ :=
  A038513.P482679686589415624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5214 terms. -/
def A038513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038613.P7921595428629418031

`p?[A052413(n+1)]`
-/

namespace A038613.P7921595428629418031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038613.P7921595428629418031

noncomputable section

/-- A038613: Primes not containing the digit '5'.

Offset 1, canonical program `A038613.P7921595428629418031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A038613 (n : ℕ) : ℤ :=
  A038613.P7921595428629418031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A038613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038614.P8063922092030666977

`p?[A052414(n+1)]`
-/

namespace A038614.P8063922092030666977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038614.P8063922092030666977

noncomputable section

/-- A038614: Primes not containing the digit '6'.

Offset 1, canonical program `A038614.P8063922092030666977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A038614 (n : ℕ) : ℤ :=
  A038614.P8063922092030666977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A038614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038616.P11115806758595749976

`p?[A052421(n+1)]`
-/

namespace A038616.P11115806758595749976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038616.P11115806758595749976

noncomputable section

/-- A038616: Primes not containing the digit '8'.

Offset 1, canonical program `A038616.P11115806758595749976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A038616 (n : ℕ) : ℤ :=
  A038616.P11115806758595749976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A038616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039416.P5541879360622471767

`∩[A011532(n+1), A039134(n+1)]`
-/

namespace A039416.P5541879360622471767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039416.P5541879360622471767

noncomputable section

/-- A039416: Numbers whose base-10 representation has the same nonzero number of 2's and 9's.

Offset 1, canonical program `A039416.P5541879360622471767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039416 (n : ℕ) : ℤ :=
  (A039416.P5541879360622471767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043283.P5098320167279475588

`A043290(A023717(1+n))`
-/

namespace A043283.P5098320167279475588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A023717 (1 + n)).toNat

end

end A043283.P5098320167279475588

noncomputable section

/-- A043283: Maximal run length in base-9 representation of n.

Offset 1, canonical program `A043283.P5098320167279475588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A043283 (n : ℕ) : ℤ :=
  A043283.P5098320167279475588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A043283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043454.P3294804726548310803

`eq[2, A055641(A052413(n+1))]`
-/

namespace A043454.P3294804726548310803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043454.P3294804726548310803

noncomputable section

/-- A043454: Numbers having two 0's in base 9.

Offset 1, canonical program `A043454.P3294804726548310803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A043454 (n : ℕ) : ℤ :=
  (A043454.P3294804726548310803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A043454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043568.P3323446372025203777

`A040000(A217558(n)%A028310(n))`
-/

namespace A043568.P3323446372025203777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (Int.tmod (A217558 n) (A028310 n)).toNat

end

end A043568.P3323446372025203777

noncomputable section

/-- A043568: Number of runs in base-16 representation of n.

Offset 0, canonical program `A043568.P3323446372025203777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A043568 (n : ℕ) : ℤ :=
  A043568.P3323446372025203777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A043568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045329.P12914608708689287997

`∪[A045341(n+1), A045377(n+1)]`
-/

namespace A045329.P12914608708689287997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045329.P12914608708689287997

noncomputable section

/-- A045329: Primes congruent to {0, 2, 3, 6} (mod 7).

Offset 1, canonical program `A045329.P12914608708689287997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045329 (n : ℕ) : ℤ :=
  (A045329.P12914608708689287997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045376.P4361008746595793697

`∪[A045377(n+1), A045463(n+1)]`
-/

namespace A045376.P4361008746595793697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045376.P4361008746595793697

noncomputable section

/-- A045376: Primes congruent to {0, 1, 2, 6} mod 7.

Offset 1, canonical program `A045376.P4361008746595793697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045376 (n : ℕ) : ℤ :=
  (A045376.P4361008746595793697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046207.P12178220823491989682

`(A000267(n)+1)*A014413(n+1)`
-/

namespace A046207.P12178220823491989682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000267 n + 1) * A014413 (n + 1)

end

end A046207.P12178220823491989682

noncomputable section

/-- A046207: Numbers to the right of the central elements in the triangle of denominators in Leibniz's Harmonic Triangle.

Offset 1, canonical program `A046207.P12178220823491989682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046207 (n : ℕ) : ℤ :=
  A046207.P12178220823491989682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048109.P10170578425489534564

`filter[A336593(n+1), A359472(#)]`
-/

namespace A048109.P10170578425489534564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A048109.P10170578425489534564

noncomputable section

/-- A048109: Numbers having equally many squarefree and nonsquarefree divisors; number of unitary divisors of n (A034444) = number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048109.P10170578425489534564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7421 terms. -/
def A048109 (n : ℕ) : ℤ :=
  A048109.P10170578425489534564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7421 terms. -/
def A048109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049441.P4202534320219273296

`eq[3, A121842(A000038(n)+n)]`
-/

namespace A049441.P4202534320219273296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049441.P4202534320219273296

noncomputable section

/-- A049441: Numbers k such that k^3 + 3 is prime.

Offset 1, canonical program `A049441.P4202534320219273296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A049441 (n : ℕ) : ℤ :=
  (A049441.P4202534320219273296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A049441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049510.P5320459567008850854

`A000720(A030433(n+1))`
-/

namespace A049510.P5320459567008850854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030433 (n + 1)).toNat

end

end A049510.P5320459567008850854

noncomputable section

/-- A049510: Numbers k such that prime(k) == 9 (mod 10).

Offset 1, canonical program `A049510.P5320459567008850854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049510 (n : ℕ) : ℤ :=
  A049510.P5320459567008850854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051288.P12667383771510004661

`A034868(n)*A207538(n+1)`
-/

namespace A051288.P12667383771510004661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A207538 (n + 1)

end

end A051288.P12667383771510004661

noncomputable section

/-- A051288: Triangle read by rows: T(n,k) = number of paths of n upsteps U and n downsteps D that contain k UUDs.

Offset 0, canonical program `A051288.P12667383771510004661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7351 terms. -/
def A051288 (n : ℕ) : ℤ :=
  A051288.P12667383771510004661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7351 terms. -/
def A051288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055151.P1770356931591867441

`A391403(n)/A122197(n+1)`
-/

namespace A055151.P1770356931591867441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391403 n : ℚ) / (A122197 (n + 1) : ℚ)

end

end A055151.P1770356931591867441

noncomputable section

/-- A055151: Triangular array of Motzkin polynomial coefficients.

Offset 0, canonical program `A055151.P1770356931591867441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055151.P1770356931591867441.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056709.P1000143406783122933

`p?[A273460(n+1)]`
-/

namespace A056709.P1000143406783122933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056709.P1000143406783122933

noncomputable section

/-- A056709: Naught-y primes, primes with noughts (or zeros).

Offset 1, canonical program `A056709.P1000143406783122933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A056709 (n : ℕ) : ℤ :=
  A056709.P1000143406783122933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A056709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059015.P11480840936605404321

`A083652(n)-A000788(n)`
-/

namespace A059015.P11480840936605404321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - A000788 n

end

end A059015.P11480840936605404321

noncomputable section

/-- A059015: Total number of 0's in binary expansions of 0, ..., n.

Offset 0, canonical program `A059015.P11480840936605404321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059015 (n : ℕ) : ℤ :=
  A059015.P11480840936605404321.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059344.P14070619251469344958

`A034868(n)*A344391(n)`
-/

namespace A059344.P14070619251469344958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A344391 n

end

end A059344.P14070619251469344958

noncomputable section

/-- A059344: Triangle read by rows: row n consists of the nonzero coefficients of the expansion of 2^n x^n in terms of Hermite polynomials with decreasing subscripts.

Offset 0, canonical program `A059344.P14070619251469344958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A059344 (n : ℕ) : ℤ :=
  A059344.P14070619251469344958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A059344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060254.P5092381505111194767

`A176902(2+n)`
-/

namespace A060254.P5092381505111194767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (2 + n)

end

end A060254.P5092381505111194767

noncomputable section

/-- A060254: Primes which are the sum of two consecutive composite numbers.

Offset 1, canonical program `A060254.P5092381505111194767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060254 (n : ℕ) : ℤ :=
  A060254.P5092381505111194767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008311.P16507071146551103518

`A008314(A082375(n)+A028391(n))`
-/

namespace A008311.P16507071146551103518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A082375 n + A028391 n).toNat

end

end A008311.P16507071146551103518

noncomputable section

/-- A008311: Triangle of expansions of powers of x in terms of Chebyshev polynomials T_n (x).

Offset 0, canonical program `A008311.P16507071146551103518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008311 (n : ℕ) : ℤ :=
  A008311.P16507071146551103518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023218.P971650435398565174

`p?[floor(A030433(n+1)/5)]`
-/

namespace A023218.P971650435398565174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030433 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023218.P971650435398565174

noncomputable section

/-- A023218: Primes p such that 5*p + 4 is also prime.

Offset 1, canonical program `A023218.P971650435398565174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9748 terms. -/
def A023218 (n : ℕ) : ℤ :=
  A023218.P971650435398565174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9748 terms. -/
def A023218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029610.P915263053335155690

`A029628(n)-A008315(n)`
-/

namespace A029610.P915263053335155690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 n - A008315 n

end

end A029610.P915263053335155690

noncomputable section

/-- A029610: Numbers to the left of the central numbers of the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029610.P915263053335155690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029610 (n : ℕ) : ℤ :=
  A029610.P915263053335155690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042990.P10404979310700425933

`∪[A003625(n+1), A042994(n+1)]`
-/

namespace A042990.P10404979310700425933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P10404979310700425933

noncomputable section

/-- A042990: Primes not congruent to 4 (mod 7).

Offset 0, canonical program `A042990.P10404979310700425933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042990 (n : ℕ) : ℤ :=
  (A042990.P10404979310700425933.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045320.P2739606859632727750

`∪[A066436(n+1), A045334(n+1)]`
-/

namespace A045320.P2739606859632727750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045320.P2739606859632727750

noncomputable section

/-- A045320: Primes not congruent to 5 (mod 7).

Offset 1, canonical program `A045320.P2739606859632727750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045320 (n : ℕ) : ℤ :=
  (A045320.P2739606859632727750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045417.P13044081721877140394

`∪[A066436(n+1), A045426(n+1)]`
-/

namespace A045417.P13044081721877140394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P13044081721877140394

noncomputable section

/-- A045417: Primes congruent to {0, 1, 3, 4, 6} mod 7.

Offset 1, canonical program `A045417.P13044081721877140394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045417 (n : ℕ) : ℤ :=
  (A045417.P13044081721877140394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045422.P2170341325868455356

`∪[A066436(n+1), A045433(n+1)]`
-/

namespace A045422.P2170341325868455356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P2170341325868455356

noncomputable section

/-- A045422: Primes congruent to {0, 1, 3, 6} mod 7.

Offset 1, canonical program `A045422.P2170341325868455356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045422 (n : ℕ) : ℤ :=
  (A045422.P2170341325868455356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061018.P11941604777638041697

`A130493(n+1)-A061312(n)`
-/

namespace A061018.P11941604777638041697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1) - A061312 n

end

end A061018.P11941604777638041697

noncomputable section

/-- A061018: Triangle: a(n,m) = number of permutations of (1,2,...,n) with one or more fixed points in the m first positions.

Offset 1, canonical program `A061018.P11941604777638041697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A061018 (n : ℕ) : ℤ :=
  A061018.P11941604777638041697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A061018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005075.P408257098076567385

`A005063(n+1)-A005071(n+1)-9*A079978(n+1)`
-/

namespace A005075.P408257098076567385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) - A005071 (n + 1) - 9 * A079978 (n + 1)

end

end A005075.P408257098076567385

noncomputable section

/-- A005075: Sum of squares of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005075.P408257098076567385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005075 (n : ℕ) : ℤ :=
  A005075.P408257098076567385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010815.P5219802530418017542

`Δ[A078616(abs(1-n))]`
-/

namespace A010815.P5219802530418017542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010815.P5219802530418017542

noncomputable section

/-- A010815: From Euler's Pentagonal Theorem: coefficient of q^n in Product_{m>=1} (1 - q^m).

Offset 0, canonical program `A010815.P5219802530418017542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010815 (n : ℕ) : ℤ :=
  A010815.P5219802530418017542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020888.P10644408960944185549

`∑[char[∑[A068068(1+n)]]]+1`
-/

namespace A020888.P10644408960944185549
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A020888.P10644408960944185549

noncomputable section

/-- A020888: Ordered set of (a + b - c)/2 as (a,b,c) runs through all primitive Pythagorean triples with a<b<c.

Offset 1, canonical program `A020888.P10644408960944185549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020888 (n : ℕ) : ℤ :=
  (A020888.P10644408960944185549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022885.P9407388956969530620

`A000040(A022884(n+1))`
-/

namespace A022885.P9407388956969530620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022884 (n + 1)).toNat

end

end A022885.P9407388956969530620

noncomputable section

/-- A022885: Primes p=prime(k) such that prime(k) + prime(k+3) = prime(k+1) + prime(k+2).

Offset 1, canonical program `A022885.P9407388956969530620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022885 (n : ℕ) : ℤ :=
  A022885.P9407388956969530620.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023201.P15581086770608415372

`p?[A015914(n+1)]`
-/

namespace A023201.P15581086770608415372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023201.P15581086770608415372

noncomputable section

/-- A023201: Primes p such that p + 6 is also prime. (Lesser of a pair of sexy primes.)

Offset 1, canonical program `A023201.P15581086770608415372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A023201 (n : ℕ) : ℤ :=
  A023201.P15581086770608415372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A023201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035178.P16959896462476049729

`abs(A261884(n+1))`
-/

namespace A035178.P16959896462476049729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261884 (n + 1)|

end

end A035178.P16959896462476049729

noncomputable section

/-- A035178: a(n) = Sum_{d|n} Kronecker(-12, d) (= A134667(d)).

Offset 1, canonical program `A035178.P16959896462476049729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035178 (n : ℕ) : ℤ :=
  A035178.P16959896462476049729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050452.P8848155708238405563

`A000593(n+1)-A050449(n+1)`
-/

namespace A050452.P8848155708238405563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A050449 (n + 1)

end

end A050452.P8848155708238405563

noncomputable section

/-- A050452: a(n) = Sum_{d|n, d == 3 (mod 4)} d.

Offset 1, canonical program `A050452.P8848155708238405563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050452 (n : ℕ) : ℤ :=
  A050452.P8848155708238405563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054520.P14142192903502151308

`lt[A230641(n), A050449(n+1)]+1`
-/

namespace A054520.P14142192903502151308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A054520.P14142192903502151308

noncomputable section

/-- A054520: Let S = {1,5,9,13,..., 4n+1, ...} and call p in S an S-prime if p>1 and the only divisors of p in S are 1 and p; sequence gives elements of S that are not S-primes.

Offset 1, canonical program `A054520.P14142192903502151308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A054520 (n : ℕ) : ℤ :=
  (A054520.P14142192903502151308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A054520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056134.P1490690283177267514

`A019554(n+1)+abs(A055615(n+1))`
-/

namespace A056134.P1490690283177267514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) + |A055615 (n + 1)|

end

end A056134.P1490690283177267514

noncomputable section

/-- A056134: Smallest positive integer which is the geometric mean of n and an integer other than n.

Offset 1, canonical program `A056134.P1490690283177267514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056134 (n : ℕ) : ℤ :=
  A056134.P1490690283177267514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056675.P16805316149492235292

`A048656(n+1)-A056672(n+1)`
-/

namespace A056675.P16805316149492235292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) - A056672 (n + 1)

end

end A056675.P16805316149492235292

noncomputable section

/-- A056675: Number of non-unitary but squarefree divisors of n!. Also number of unitary but not-squarefree divisors of n!.

Offset 1, canonical program `A056675.P16805316149492235292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056675 (n : ℕ) : ℤ :=
  A056675.P16805316149492235292.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060475.P17202225269885659723

`A047920(C(row(n)+1, 2)+col(n))/(row(n)-col(n))!`
-/

namespace A060475.P17202225269885659723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047920 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A060475.P17202225269885659723

noncomputable section

/-- A060475: Triangular array formed from successive differences of factorial numbers, then with factorials removed.

Offset 0, canonical program `A060475.P17202225269885659723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060475 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060475.P17202225269885659723.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004488.P8892731102874827996

`A370932(A060587(n))`
-/

namespace A004488.P8892731102874827996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A060587 n).toNat

end

end A004488.P8892731102874827996

noncomputable section

/-- A004488: Tersum n + n.

Offset 0, canonical program `A004488.P8892731102874827996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004488 (n : ℕ) : ℤ :=
  A004488.P8892731102874827996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005064.P4705532925960423919

`A005067(n+1)+8*A059841(n+1)`
-/

namespace A005064.P4705532925960423919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) + 8 * A059841 (n + 1)

end

end A005064.P4705532925960423919

noncomputable section

/-- A005064: Sum of cubes of primes dividing n.

Offset 1, canonical program `A005064.P4705532925960423919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005064 (n : ℕ) : ℤ :=
  A005064.P4705532925960423919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005077.P2212048464589055495

`A005065(n+1)-A005073(n+1)-81*A079978(n+1)`
-/

namespace A005077.P2212048464589055495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (n + 1) - A005073 (n + 1) - 81 * A079978 (n + 1)

end

end A005077.P2212048464589055495

noncomputable section

/-- A005077: Sum of 4th powers of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005077.P2212048464589055495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005073, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005077 (n : ℕ) : ℤ :=
  A005077.P2212048464589055495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005073, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005081.P3663982266665043880

`A005065(n+1)-A005085(n+1)-16*A059841(n+1)`
-/

namespace A005081.P3663982266665043880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (n + 1) - A005085 (n + 1) - 16 * A059841 (n + 1)

end

end A005081.P3663982266665043880

noncomputable section

/-- A005081: Sum of 4th powers of primes = 1 mod 4 dividing n.

Offset 1, canonical program `A005081.P3663982266665043880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005081 (n : ℕ) : ℤ :=
  A005081.P3663982266665043880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008299.P1528602672575865424

`A134991(A056536(n+1))`
-/

namespace A008299.P1528602672575865424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A056536 (n + 1)).toNat

end

end A008299.P1528602672575865424

noncomputable section

/-- A008299: Triangle T(n,k) of associated Stirling numbers of second kind, n >= 2, 1 <= k <= floor(n/2).

Offset 2, canonical program `A008299.P1528602672575865424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A008299 (n : ℕ) : ℤ :=
  A008299.P1528602672575865424.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A008299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022297.P13831019223360445474

`A057428(n)+A013947(n+1)`
-/

namespace A022297.P13831019223360445474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A013947 (n + 1)

end

end A022297.P13831019223360445474

noncomputable section

/-- A022297: Index of n-th 1 in A006928.

Offset 1, canonical program `A022297.P13831019223360445474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297 (n : ℕ) : ℤ :=
  A022297.P13831019223360445474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022422.P1741204150297171016

`A002251(A022418(n)-n)`
-/

namespace A022422.P1741204150297171016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022418 n - (n : ℤ)).toNat

end

end A022422.P1741204150297171016

noncomputable section

/-- A022422: Kim-sums: "Kimberling sums" K_n + K_11.

Offset 0, canonical program `A022422.P1741204150297171016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A022422 (n : ℕ) : ℤ :=
  A022422.P1741204150297171016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A022422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023711.P1492729843880835403

`eq[2, A000120(A292371(n))]`
-/

namespace A023711.P1492729843880835403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P1492729843880835403

noncomputable section

/-- A023711: Numbers with exactly 2 1's in their base 4 expansion.

Offset 1, canonical program `A023711.P1492729843880835403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023711 (n : ℕ) : ℤ :=
  (A023711.P1492729843880835403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023712.P2765386926278102152

`eq[3, A000120(A292371(n))]`
-/

namespace A023712.P2765386926278102152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P2765386926278102152

noncomputable section

/-- A023712: Numbers with exactly 3 1's in their base 4 expansion.

Offset 1, canonical program `A023712.P2765386926278102152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023712 (n : ℕ) : ℤ :=
  (A023712.P2765386926278102152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023716.P15954094912912458081

`eq[3, A000120(A292372(n))]`
-/

namespace A023716.P15954094912912458081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P15954094912912458081

noncomputable section

/-- A023716: Numbers with exactly 3 2's in their base 4 expansion.

Offset 1, canonical program `A023716.P15954094912912458081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023716 (n : ℕ) : ℤ :=
  (A023716.P15954094912912458081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023888.P17873500436284849145

`A000203(n+1)-A035321(n+1)`
-/

namespace A023888.P17873500436284849145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A035321 (n + 1)

end

end A023888.P17873500436284849145

noncomputable section

/-- A023888: Sum of prime power divisors of n (1 included).

Offset 1, canonical program `A023888.P17873500436284849145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023888 (n : ℕ) : ℤ :=
  A023888.P17873500436284849145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026242.P14627616473925988182

`abs(n+1-A002251(n+1))`
-/

namespace A026242.P14627616473925988182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A002251 (n + 1)|

end

end A026242.P14627616473925988182

noncomputable section

/-- A026242: a(n) = j if n is L(j), else a(n) = k if n is U(k), where L = A000201, U = A001950 (lower and upper Wythoff sequences).

Offset 1, canonical program `A026242.P14627616473925988182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026242 (n : ℕ) : ℤ :=
  A026242.P14627616473925988182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030101.P16184294017372777612

`n-A055945(n)`
-/

namespace A030101.P16184294017372777612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055945 n

end

end A030101.P16184294017372777612

noncomputable section

/-- A030101: a(n) is the number produced when n is converted to binary digits, the binary digits are reversed and then converted back into a decimal number.

Offset 0, canonical program `A030101.P16184294017372777612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030101 (n : ℕ) : ℤ :=
  A030101.P16184294017372777612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030430.P15047301384318659499

`10*A024912(n+1)+1`
-/

namespace A030430.P15047301384318659499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A024912 (n + 1) + 1

end

end A030430.P15047301384318659499

noncomputable section

/-- A030430: Primes of the form 10*n+1.

Offset 1, canonical program `A030430.P15047301384318659499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030430 (n : ℕ) : ℤ :=
  A030430.P15047301384318659499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031930.P14447064096362393253

`A000040(A320704(n+1))`
-/

namespace A031930.P14447064096362393253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320704 (n + 1)).toNat

end

end A031930.P14447064096362393253

noncomputable section

/-- A031930: Lower prime of a difference of 12 between consecutive primes.

Offset 1, canonical program `A031930.P14447064096362393253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031930 (n : ℕ) : ℤ :=
  A031930.P14447064096362393253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036044.P16648927426293672306

`A055945(n)+A035327(n)`
-/

namespace A036044.P16648927426293672306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n + A035327 n

end

end A036044.P16648927426293672306

noncomputable section

/-- A036044: BCR(n): write in binary, complement, reverse.

Offset 0, canonical program `A036044.P16648927426293672306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036044 (n : ℕ) : ℤ :=
  A036044.P16648927426293672306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039724.P5845673454398674636

`A007088(A005351(n))`
-/

namespace A039724.P5845673454398674636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005351 n).toNat

end

end A039724.P5845673454398674636

noncomputable section

/-- A039724: a(n) is the negabinary expansion of n, that is, the expansion of n in base -2.

Offset 0, canonical program `A039724.P5845673454398674636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039724 (n : ℕ) : ℤ :=
  A039724.P5845673454398674636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042939.P563178382816472669

`A040997(A000040(n+1))`
-/

namespace A042939.P563178382816472669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A000040 (n + 1)).toNat

end

end A042939.P563178382816472669

noncomputable section

/-- A042939: Absolute values between digits of primes.

Offset 1, canonical program `A042939.P563178382816472669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042939 (n : ℕ) : ℤ :=
  A042939.P563178382816472669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040997, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A042939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A043340.P5937835441452436002

`eq[4, A000120(A292371(n))]`
-/

namespace A043340.P5937835441452436002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043340.P5937835441452436002

noncomputable section

/-- A043340: Numbers having four 1's in base 4.

Offset 1, canonical program `A043340.P5937835441452436002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4739 terms. -/
def A043340 (n : ℕ) : ℤ :=
  (A043340.P5937835441452436002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4739 terms. -/
def A043340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043344.P11053451410694592591

`eq[4, A000120(A292372(n))]`
-/

namespace A043344.P11053451410694592591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043344.P11053451410694592591

noncomputable section

/-- A043344: Numbers having four 2's in base 4.

Offset 1, canonical program `A043344.P11053451410694592591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4739 terms. -/
def A043344 (n : ℕ) : ℤ :=
  (A043344.P11053451410694592591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4739 terms. -/
def A043344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045117.P5349955713832429637

`∩[A023710(n+1), A023720(n+1)]`
-/

namespace A045117.P5349955713832429637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045117.P5349955713832429637

noncomputable section

/-- A045117: Numbers whose base-4 representation contains exactly one 1 and three 3's.

Offset 1, canonical program `A045117.P5349955713832429637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2129 terms. -/
def A045117 (n : ℕ) : ℤ :=
  (A045117.P5349955713832429637.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2129 terms. -/
def A045117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045141.P3734180812995570505

`∩[A023714(n+1), A023720(n+1)]`
-/

namespace A045141.P3734180812995570505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045141.P3734180812995570505

noncomputable section

/-- A045141: Numbers whose base-4 representation contains exactly one 2 and three 3's.

Offset 1, canonical program `A045141.P3734180812995570505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A045141 (n : ℕ) : ℤ :=
  (A045141.P3734180812995570505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A045141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045146.P762105672001422050

`∩[A023715(n+1), A023720(n+1)]`
-/

namespace A045146.P762105672001422050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045146.P762105672001422050

noncomputable section

/-- A045146: Numbers whose base-4 representation contains exactly two 2's and three 3's.

Offset 1, canonical program `A045146.P762105672001422050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1587 terms. -/
def A045146 (n : ℕ) : ℤ :=
  (A045146.P762105672001422050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1587 terms. -/
def A045146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046340.P2863459807996963045

`filter[A014076(n+1), A359372(#)]`
-/

namespace A046340.P2863459807996963045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A046340.P2863459807996963045

noncomputable section

/-- A046340: Odd composite numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046340.P2863459807996963045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3693 terms. -/
def A046340 (n : ℕ) : ℤ :=
  A046340.P2863459807996963045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3693 terms. -/
def A046340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046364.P305014564740388166

`filter[A046363(n+1), A359372(#)]`
-/

namespace A046364.P305014564740388166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A046364.P305014564740388166

noncomputable section

/-- A046364: Odd composite numbers whose sum of prime factors is prime (counted with multiplicity).

Offset 0, canonical program `A046364.P305014564740388166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4072 terms. -/
def A046364 (n : ℕ) : ℤ :=
  A046364.P305014564740388166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4072 terms. -/
def A046364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054239.P9795154902255705499

`A000217(A393253(n))+A059906(n)`
-/

namespace A054239.P9795154902255705499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A393253 n).toNat + A059906 n

end

end A054239.P9795154902255705499

noncomputable section

/-- A054239: Inverse of A054238.

Offset 0, canonical program `A054239.P9795154902255705499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059906, A393253, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054239 (n : ℕ) : ℤ :=
  A054239.P9795154902255705499.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059906, A393253, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057531.P15483397355566411150

`eq[A032741(n)+1, A007953(n)]`
-/

namespace A057531.P15483397355566411150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P15483397355566411150

noncomputable section

/-- A057531: Numbers whose sum of digits and number of divisors are equal.

Offset 1, canonical program `A057531.P15483397355566411150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A057531 (n : ℕ) : ℤ :=
  (A057531.P15483397355566411150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A057531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059867.P12640614250635796407

`2^A073642(n+1)`
-/

namespace A059867.P12640614250635796407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A073642 (n + 1) : ℤ)

end

end A059867.P12640614250635796407

noncomputable section

/-- A059867: Number of irreducible representations of the symmetric group S_n that have odd degree.

Offset 1, canonical program `A059867.P12640614250635796407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059867 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059867.P12640614250635796407.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059867.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004085.P11876971383816228899

`A007953(A000010(n+1))`
-/

namespace A004085.P11876971383816228899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000010 (n + 1)).toNat

end

end A004085.P11876971383816228899

noncomputable section

/-- A004085: Sum of digits of Euler totient function of n.

Offset 1, canonical program `A004085.P11876971383816228899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004085 (n : ℕ) : ℤ :=
  A004085.P11876971383816228899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004207.P9379893475422078749

`A062028(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A004207.P9379893475422078749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A004207.P9379893475422078749

noncomputable section

/-- A004207: a(0) = 1, a(n) = sum of digits of all previous terms.

Offset 0, canonical program `A004207.P9379893475422078749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004207 (n : ℕ) : ℤ :=
  A004207.P9379893475422078749.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006507.P10105666352366520478

`A062028(a(n-1))` with `a(0)=7`
-/

namespace A006507.P10105666352366520478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A006507.P10105666352366520478

noncomputable section

/-- A006507: a(n+1) = a(n) + sum of digits of a(n), with a(1)=7.

Offset 1, canonical program `A006507.P10105666352366520478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006507 (n : ℕ) : ℤ :=
  A006507.P10105666352366520478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007618.P6018863421737465196

`A062028(a(n-1))` with `a(0)=5`
-/

namespace A007618.P6018863421737465196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A007618.P6018863421737465196

noncomputable section

/-- A007618: a(n) = a(n-1) + sum of digits of a(n-1), a(1) = 5.

Offset 1, canonical program `A007618.P6018863421737465196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007618 (n : ℕ) : ℤ :=
  A007618.P6018863421737465196.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010070.P9415386238020052903

`comp[A173528(n+1)+n-1]`
-/

namespace A010070.P9415386238020052903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010070.P9415386238020052903

noncomputable section

/-- A010070: Base 8 self or Colombian numbers (not of form k + sum of base 8 digits of k).

Offset 1, canonical program `A010070.P9415386238020052903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A010070 (n : ℕ) : ℤ :=
  (A010070.P9415386238020052903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A010070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010071.P8562185197263536109

`a(n-1)+A173528(a(n-1)+1)-1` with `a(0)=1`
-/

namespace A010071.P8562185197263536109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A173528 (a (n - 1) + 1).toNat - 1)

end

end A010071.P8562185197263536109

noncomputable section

/-- A010071: a(n+1) = a(n) + sum of digits in base 8 representation of a(n).

Offset 0, canonical program `A010071.P8562185197263536109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A010071 (n : ℕ) : ℤ :=
  A010071.P8562185197263536109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A010071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016052.P16387825715003404480

`A062028(a(n-1))` with `a(0)=3`
-/

namespace A016052.P16387825715003404480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A016052.P16387825715003404480

noncomputable section

/-- A016052: a(1) = 3; for n >= 1, a(n+1) = a(n) + sum of its digits.

Offset 1, canonical program `A016052.P16387825715003404480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016052 (n : ℕ) : ℤ :=
  A016052.P16387825715003404480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A016096.P6894083767046586145

`A062028(a(n-1))` with `a(0)=9`
-/

namespace A016096.P6894083767046586145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A016096.P6894083767046586145

noncomputable section

/-- A016096: a(n+1) = a(n) + sum of its digits, with a(1) = 9.

Offset 1, canonical program `A016096.P6894083767046586145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016096 (n : ℕ) : ℤ :=
  A016096.P6894083767046586145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A016096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032911.P13664026588520458142

`A032804(n+1)-A115637(n)`
-/

namespace A032911.P13664026588520458142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032804 (n + 1) - A115637 n

end

end A032911.P13664026588520458142

noncomputable section

/-- A032911: Numbers whose set of base-4 digits is a subset of {1,3}.

Offset 1, canonical program `A032911.P13664026588520458142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032911 (n : ℕ) : ℤ :=
  A032911.P13664026588520458142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032937.P10558907271502412002

`∪[A000695(n+1), A062880(n+1)]`
-/

namespace A032937.P10558907271502412002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P10558907271502412002

noncomputable section

/-- A032937: Numbers k whose base-2 representation Sum_{i=0..m} d(i)*2^(m-i) has d(i)=0 for all odd i, excluding 0. Here m is the position of the leading bit of k.

Offset 1, canonical program `A032937.P10558907271502412002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032937 (n : ℕ) : ℤ :=
  (A032937.P10558907271502412002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036227.P6221341663879694796

`A062028(a(n-1))` with `a(0)=20`
-/

namespace A036227.P6221341663879694796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A036227.P6221341663879694796

noncomputable section

/-- A036227: a(1) = 20; a(n+1) = a(n) + sum of decimal digits of a(n).

Offset 1, canonical program `A036227.P6221341663879694796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036227 (n : ℕ) : ℤ :=
  A036227.P6221341663879694796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037315.P7198483397476573084

`lt[(n*A180019(n))², n]`
-/

namespace A037315.P7198483397476573084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A180019 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037315.P7198483397476573084

noncomputable section

/-- A037315: Numbers whose base-3 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037315.P7198483397476573084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A037315 (n : ℕ) : ℤ :=
  (A037315.P7198483397476573084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A037315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037331.P10183187185978453703

`eq[A053828(A028310(n))+1, A173528(n+1)]`
-/

namespace A037331.P10183187185978453703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037331.P10183187185978453703

noncomputable section

/-- A037331: Numbers whose base-7 and base-8 expansions have the same digit sum.

Offset 1, canonical program `A037331.P10183187185978453703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 636 terms. -/
def A037331 (n : ℕ) : ℤ :=
  (A037331.P10183187185978453703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 636 terms. -/
def A037331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038366.P4711874104874146746

`eq[lcm(n, A061762(n)), A028310(n)]`
-/

namespace A038366.P4711874104874146746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A061762 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038366.P4711874104874146746

noncomputable section

/-- A038366: n is divisible by (product of digits) + (sum of digits).

Offset 1, canonical program `A038366.P4711874104874146746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A038366 (n : ℕ) : ℤ :=
  (A038366.P4711874104874146746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A038366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039393.P4198254221456296311

`∩[A039112(n+1), A062997(n+1)]`
-/

namespace A039393.P4198254221456296311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039393.P4198254221456296311

noncomputable section

/-- A039393: Numbers whose base-10 representation has the same nonzero number of 0's and 1's.

Offset 1, canonical program `A039393.P4198254221456296311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A039393 (n : ℕ) : ℤ :=
  (A039393.P4198254221456296311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A039393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045690.P9420012133127931673

`∑{d}[n+1, A003000(#-1)*A154269((n+1)/#)]`
-/

namespace A045690.P9420012133127931673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003000 (d - 1) * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045690.P9420012133127931673

noncomputable section

/-- A045690: Number of binary words of length n (beginning with 0) whose autocorrelation function is the indicator of a singleton.

Offset 1, canonical program `A045690.P9420012133127931673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A045690 (n : ℕ) : ℤ :=
  A045690.P9420012133127931673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A045690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045694.P7872206853554572603

`∑{d}[n+1, A019308(#-1)*A154269((n+1)/#)]`
-/

namespace A045694.P7872206853554572603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019308 (d - 1) * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045694.P7872206853554572603

noncomputable section

/-- A045694: Number of ternary words of length n (beginning with 0) with autocorrelation function 2^(n-1).

Offset 1, canonical program `A045694.P7872206853554572603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A045694 (n : ℕ) : ℤ :=
  A045694.P7872206853554572603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A045694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045776.P5877182421305232441

`A062028(a(n-1))-a(n-1)%A007953(a(n-1))` with `a(0)=1`
-/

namespace A045776.P5877182421305232441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (a (n - 1)).toNat - Int.tmod (a (n - 1)) (A007953 (a (n - 1)).toNat)

end

end A045776.P5877182421305232441

noncomputable section

/-- A045776: a(n+1) is smallest multiple of (sum of digits of a(n)) which is > a(n).

Offset 0, canonical program `A045776.P5877182421305232441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A045776 (n : ℕ) : ℤ :=
  A045776.P5877182421305232441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. -/
def A045776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046704.P5960300289646636336

`p?[A000040(n+1)*A001222(A007605(n+1))]`
-/

namespace A046704.P5960300289646636336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046704.P5960300289646636336

noncomputable section

/-- A046704: Additive primes: sum of digits is a prime.

Offset 1, canonical program `A046704.P5960300289646636336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4086 terms. -/
def A046704 (n : ℕ) : ℤ :=
  A046704.P5960300289646636336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4086 terms. -/
def A046704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047791.P9707445729224729229

`record[(n+1)*A010051(A062028(n+1))]`
-/

namespace A047791.P9707445729224729229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A062028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047791.P9707445729224729229

noncomputable section

/-- A047791: Numbers n such that n plus digit sum of n (A007953) equals a prime.

Offset 1, canonical program `A047791.P9707445729224729229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A047791 (n : ℕ) : ℤ :=
  A047791.P9707445729224729229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A047791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049343.P4245191771258133539

`eq[∑{digits}[n², #], A004092(n)]`
-/

namespace A049343.P4245191771258133539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A049343.P4245191771258133539

noncomputable section

/-- A049343: Numbers m such that 2m and m^2 have same digit sum.

Offset 1, canonical program `A049343.P4245191771258133539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A049343 (n : ℕ) : ℤ :=
  (A049343.P4245191771258133539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A049343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051351.P6493723572968094148

`∑[A007605(A000007(n)+n)]-2`
-/

namespace A051351.P6493723572968094148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A051351.P6493723572968094148

noncomputable section

/-- A051351: a(n) = a(n-1) + sum of digits of n-th prime; a(0) = 0.

Offset 0, canonical program `A051351.P6493723572968094148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051351 (n : ℕ) : ℤ :=
  A051351.P6493723572968094148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051369.P3720303996826784203

`A004159(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A051369.P3720303996826784203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004159 (a (n - 1)).toNat + a (n - 1)

end

end A051369.P3720303996826784203

noncomputable section

/-- A051369: a(n+1) = a(n) + sum of digits of a(n)^2, with a(1) = 3.

Offset 1, canonical program `A051369.P3720303996826784203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A051369 (n : ℕ) : ℤ :=
  A051369.P3720303996826784203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A051369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051370.P16333339530751387422

`A004159(a(n-1))+a(n-1)` with `a(0)=8`
-/

namespace A051370.P16333339530751387422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A004159 (a (n - 1)).toNat + a (n - 1)

end

end A051370.P16333339530751387422

noncomputable section

/-- A051370: a(n+1) = a(n) + sum of digits of a(n)^2, with a(1) = 8.

Offset 1, canonical program `A051370.P16333339530751387422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A051370 (n : ℕ) : ℤ :=
  A051370.P16333339530751387422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A051370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051373.P62567746208219066

`A004164(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A051373.P62567746208219066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051373.P62567746208219066

noncomputable section

/-- A051373: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051373.P62567746208219066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A051373 (n : ℕ) : ℤ :=
  A051373.P62567746208219066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A051373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051408.P15079108207671988781

`A004164(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A051408.P15079108207671988781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051408.P15079108207671988781

noncomputable section

/-- A051408: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051408.P15079108207671988781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A051408 (n : ℕ) : ℤ :=
  A051408.P15079108207671988781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A051408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051409.P11390321377571457585

`A004164(a(n-1))+a(n-1)` with `a(0)=4`
-/

namespace A051409.P11390321377571457585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051409.P11390321377571457585

noncomputable section

/-- A051409: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051409.P11390321377571457585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051409 (n : ℕ) : ℤ :=
  A051409.P11390321377571457585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051410.P16283429953950596313

`A004164(a(n-1))+a(n-1)` with `a(0)=6`
-/

namespace A051410.P16283429953950596313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051410.P16283429953950596313

noncomputable section

/-- A051410: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051410.P16283429953950596313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A051410 (n : ℕ) : ℤ :=
  A051410.P16283429953950596313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A051410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051411.P15164664904360530703

`A004164(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A051411.P15164664904360530703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051411.P15164664904360530703

noncomputable section

/-- A051411: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051411.P15164664904360530703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051411 (n : ℕ) : ℤ :=
  A051411.P15164664904360530703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051412.P8533835990491713621

`A004164(a(n-1))+a(n-1)` with `a(0)=9`
-/

namespace A051412.P8533835990491713621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051412.P8533835990491713621

noncomputable section

/-- A051412: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051412.P8533835990491713621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051412 (n : ℕ) : ℤ :=
  A051412.P8533835990491713621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056528.P4442300986705318360

`A004159(A004159(n+1))`
-/

namespace A056528.P4442300986705318360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A004159 (n + 1)).toNat

end

end A056528.P4442300986705318360

noncomputable section

/-- A056528: Sum of digits of square of sum of digits of square.

Offset 1, canonical program `A056528.P4442300986705318360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056528 (n : ℕ) : ℤ :=
  A056528.P4442300986705318360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058369.P43549229018123999

`eq[A004159(n), A007953(n)]`
-/

namespace A058369.P43549229018123999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058369.P43549229018123999

noncomputable section

/-- A058369: Numbers k such that k and k^2 have same digit sum.

Offset 1, canonical program `A058369.P43549229018123999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A058369 (n : ℕ) : ℤ :=
  (A058369.P43549229018123999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A058369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060979.P5913686302778209989

`11*eq[A000007(n), A142150(A245627(n))]`
-/

namespace A060979.P5913686302778209989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060979.P5913686302778209989

noncomputable section

/-- A060979: |First digit - second digit + third digit - fourth digit ...| = 11.

Offset 1, canonical program `A060979.P5913686302778209989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A060979 (n : ℕ) : ℤ :=
  (A060979.P5913686302778209989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A060979.provenance : SequenceMachineLib.Provenance := .conjectured

