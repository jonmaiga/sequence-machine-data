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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A154615.P10632422098970786135

`A022998(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154615.P10632422098970786135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n ^ 2

end

end A154615.P10632422098970786135

noncomputable section

/-- A154615: a(n) = A022998(n)^2.

Offset 0, canonical program `A154615.P10632422098970786135`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022998(n)²` (program `A154615.P10632422098970786135`, by `A154615.P10632422098970786135.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A154615 (n : ℕ) : ℤ :=
  A154615.P10632422098970786135.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022998(n)²` (program `A154615.P10632422098970786135`, by `A154615.P10632422098970786135.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A154615.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A154626.P3282874743034232248

`2^n*A001519(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154626.P3282874743034232248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001519 n

end

end A154626.P3282874743034232248

noncomputable section

/-- A154626: a(n) = 2^n*A001519(n).

Offset 0, canonical program `A154626.P3282874743034232248`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*A001519(n)` (program `A154626.P3282874743034232248`, by `A154626.P3282874743034232248.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A154626 (n : ℕ) : ℤ :=
  A154626.P3282874743034232248.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*A001519(n)` (program `A154626.P3282874743034232248`, by `A154626.P3282874743034232248.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A154626.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A155543.P14544471182699445358

`2*A081294(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155543.P14544471182699445358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081294 n

end

end A155543.P14544471182699445358

noncomputable section

/-- A155543: a(n) = 2*A081294(n).

Offset 0, canonical program `A155543.P14544471182699445358`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A081294(n)` (program `A155543.P14544471182699445358`, by `A155543.P14544471182699445358.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A155543 (n : ℕ) : ℤ :=
  A155543.P14544471182699445358.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A081294(n)` (program `A155543.P14544471182699445358`, by `A155543.P14544471182699445358.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A155543.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A156550.P8922869852312838463

`5*(-1)^n*A078008(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156550.P8922869852312838463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (-1) ^ n * A078008 n

end

end A156550.P8922869852312838463

noncomputable section

/-- A156550: a(n) = 5*(-1)^n*A078008(n).

Offset 0, canonical program `A156550.P8922869852312838463`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(-1)^n*A078008(n)` (program `A156550.P8922869852312838463`, by `A156550.P8922869852312838463.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156550 (n : ℕ) : ℤ :=
  A156550.P8922869852312838463.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(-1)^n*A078008(n)` (program `A156550.P8922869852312838463`, by `A156550.P8922869852312838463.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156550.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A157240.P7590378561638020432

`A128018(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157240.P7590378561638020432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128018 n + 1

end

end A157240.P7590378561638020432

noncomputable section

/-- A157240: a(n) = A128018(n) + 1.

Offset 0, canonical program `A157240.P7590378561638020432`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A128018(n)+1` (program `A157240.P7590378561638020432`, by `A157240.P7590378561638020432.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A157240 (n : ℕ) : ℤ :=
  A157240.P7590378561638020432.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A128018(n)+1` (program `A157240.P7590378561638020432`, by `A157240.P7590378561638020432.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A157240.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A158772.P6138208679307698319

`A138635(n+18)-A138635(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158772.P6138208679307698319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (n + 18) - A138635 n

end

end A158772.P6138208679307698319

noncomputable section

/-- A158772: a(n) = A138635(n+18)-A138635(n).

Offset 0, canonical program `A158772.P6138208679307698319`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A138635(n+18)-A138635(n)` (program `A158772.P6138208679307698319`, by `A158772.P6138208679307698319.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A158772 (n : ℕ) : ℤ :=
  A158772.P6138208679307698319.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A138635(n+18)-A138635(n)` (program `A158772.P6138208679307698319`, by `A158772.P6138208679307698319.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A158772.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A158874.P5308552197139117171

`24*A000389(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158874.P5308552197139117171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000389 (n + 4)

end

end A158874.P5308552197139117171

noncomputable section

/-- A158874: a(n) = (n + 4)*(n + 3)*(n + 2)*(n + 1)*n / 5 = 24*A000389(n+4).

Offset 0, canonical program `A158874.P5308552197139117171`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)*(n+3)*(n+2)*(n+1)*n/5` (program `A158874.P10430715486460636847`, by `A158874.P10430715486460636847.correct`). Lean does not check the parsing of the name. -/
def A158874 (n : ℕ) : ℤ :=
  A158874.P5308552197139117171.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)*(n+3)*(n+2)*(n+1)*n/5` (program `A158874.P10430715486460636847`, by `A158874.P10430715486460636847.correct`). Lean does not check the parsing of the name. -/
def A158874.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160664.P14996881624845338289

`a(n-1)+A000203(n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160664.P14996881624845338289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000203 n

end

end A160664.P14996881624845338289

noncomputable section

/-- A160664: a(n) = a(n-1) + A000203(n), a(0)=1.

Offset 0, canonical program `A160664.P14996881624845338289`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000203(n)` (program `A160664.P14996881624845338289`, by `A160664.P14996881624845338289.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160664 (n : ℕ) : ℤ :=
  A160664.P14996881624845338289.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000203(n)` (program `A160664.P14996881624845338289`, by `A160664.P14996881624845338289.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160664.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A161370.P134387974447513771

`2*A010844(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161370.P134387974447513771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010844 n + 1

end

end A161370.P134387974447513771

noncomputable section

/-- A161370: a(n) = 2*A010844(n) + 1.

Offset 0, canonical program `A161370.P134387974447513771`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A010844(n)+1` (program `A161370.P134387974447513771`, by `A161370.P134387974447513771.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161370 (n : ℕ) : ℤ :=
  A161370.P134387974447513771.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A010844(n)+1` (program `A161370.P134387974447513771`, by `A161370.P134387974447513771.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161370.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163250.P709852108617925705

`A000045(n+6)-(n²+4*n+8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163250.P709852108617925705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6) - (n ^ 2 + 4 * n + 8 : ℤ)

end

end A163250.P709852108617925705

noncomputable section

/-- A163250: a(n) = A000045(n+6) - (n^2 + 4*n + 8).

Offset 0, canonical program `A163250.P709852108617925705`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+6)-(n²+4*n+8)` (program `A163250.P709852108617925705`, by `A163250.P709852108617925705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163250 (n : ℕ) : ℤ :=
  A163250.P709852108617925705.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+6)-(n²+4*n+8)` (program `A163250.P709852108617925705`, by `A163250.P709852108617925705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163250.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163275.P10130318515127563795

`2*(n*(n*A000217(n))²-1)+2`
-/

namespace A163275.P10130318515127563795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) * A000217 n) ^ 2 - 1) + 2

end

end A163275.P10130318515127563795

noncomputable section

/-- A163275: a(n) = n^5*(n+1)^2/2.

Offset 0, canonical program `A163275.P10130318515127563795`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n+1)²/2` (program `A163275.P4085693410306349691`, by `A163275.P4085693410306349691.correct`). Lean does not check the parsing of the name. -/
def A163275 (n : ℕ) : ℤ :=
  A163275.P10130318515127563795.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n+1)²/2` (program `A163275.P4085693410306349691`, by `A163275.P4085693410306349691.correct`). Lean does not check the parsing of the name. -/
def A163275.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163279.P6920893529414243166

`((n+1)*A000217((n+1)*(n+2))+1)*(n+1)`
-/

namespace A163279.P6920893529414243166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000217 ((n + 1) * (n + 2)) + 1) * (n + 1 : ℤ)

end

end A163279.P6920893529414243166

noncomputable section

/-- A163279: a(n) = (n^6 + 2n^5 + 2n^4 + n^3 + 2n)/2.

Offset 1, canonical program `A163279.P6920893529414243166`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^6+2*(n+1)^5+2*(n+1)^4+(n+1)^3+2*(n+1))/2` (program `A163279.P1101939793811619152`, by `A163279.P1101939793811619152.correct`). Lean does not check the parsing of the name. -/
def A163279 (n : ℕ) : ℤ :=
  A163279.P6920893529414243166.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^6+2*(n+1)^5+2*(n+1)^4+(n+1)^3+2*(n+1))/2` (program `A163279.P1101939793811619152`, by `A163279.P1101939793811619152.correct`). Lean does not check the parsing of the name. -/
def A163279.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A165938.P16763498278609329602

`A002203((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165938.P16763498278609329602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 ((n + 1) ^ 2)

end

end A165938.P16763498278609329602

noncomputable section

/-- A165938: a(n) = A002203(n^2) for n>=1.

Offset 1, canonical program `A165938.P16763498278609329602`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002203((n+1)²)` (program `A165938.P16763498278609329602`, by `A165938.P16763498278609329602.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A165938 (n : ℕ) : ℤ :=
  A165938.P16763498278609329602.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002203((n+1)²)` (program `A165938.P16763498278609329602`, by `A165938.P16763498278609329602.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A165938.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A166138.P11177117645269563630

`A022998(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166138.P11177117645269563630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (3 * n + 1)

end

end A166138.P11177117645269563630

noncomputable section

/-- A166138: Trisection A022998(3n+1).

Offset 0, canonical program `A166138.P11177117645269563630`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022998(3*n+1)` (program `A166138.P11177117645269563630`, by `A166138.P11177117645269563630.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A166138 (n : ℕ) : ℤ :=
  A166138.P11177117645269563630.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022998(3*n+1)` (program `A166138.P11177117645269563630`, by `A166138.P11177117645269563630.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A166138.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A166474.P14955010991632488503

`a(n-1)+A000217(n)*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166474.P14955010991632488503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A000217 n * a (n - 2)

end

end A166474.P14955010991632488503

noncomputable section

/-- A166474: a(1)=1; a(2)=2; for n>2, a(n) = a(n-1) + A000217(n-1)*a(n-2).

Offset 1, canonical program `A166474.P14955010991632488503`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000217(n)*a(n-2)` (program `A166474.P14955010991632488503`, by `A166474.P14955010991632488503.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A166474 (n : ℕ) : ℤ :=
  A166474.P14955010991632488503.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000217(n)*a(n-2)` (program `A166474.P14955010991632488503`, by `A166474.P14955010991632488503.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A166474.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A167193.P13646511038953808611

`(-1)^(n+1)*A167030(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167193.P13646511038953808611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A167030 n

end

end A167193.P13646511038953808611

noncomputable section

/-- A167193: a(n) = (1/3)*(1 - (-2)^n + 3*(-1)^n ) = (-1)^(n+1)*A167030(n).

Offset 0, canonical program `A167193.P13646511038953808611`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*A167030(n)` (program `A167193.P13646511038953808611`, by `A167193.P13646511038953808611.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A167193 (n : ℕ) : ℤ :=
  A167193.P13646511038953808611.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*A167030(n)` (program `A167193.P13646511038953808611`, by `A167193.P13646511038953808611.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A167193.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A167471.P9399630394748707823

`A166911(2*n)+A166911(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167471.P9399630394748707823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 (2 * n) + A166911 (2 * n + 1)

end

end A167471.P9399630394748707823

noncomputable section

/-- A167471: Janet periodic table of the elements and structured hexagonal diamond numbers. a(n) = A166911(2*n) + A166911(2*n+1).

Offset 1, canonical program `A167471.P9399630394748707823`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A166911(2*n)+A166911(2*n+1)` (program `A167471.P9399630394748707823`, by `A167471.P9399630394748707823.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A167471 (n : ℕ) : ℤ :=
  A167471.P9399630394748707823.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A166911(2*n)+A166911(2*n+1)` (program `A167471.P9399630394748707823`, by `A167471.P9399630394748707823.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A167471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A167710.P5866345545259427761

`10*2^n-3*A083658(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167710.P5866345545259427761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * 2 ^ n : ℤ) - 3 * A083658 (n + 2)

end

end A167710.P5866345545259427761

noncomputable section

/-- A167710: a(n) = 10*2^n - 3*A083658(n+2).

Offset 0, canonical program `A167710.P5866345545259427761`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*2^n-3*A083658(n+2)` (program `A167710.P5866345545259427761`, by `A167710.P5866345545259427761.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A167710 (n : ℕ) : ℤ :=
  A167710.P5866345545259427761.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*2^n-3*A083658(n+2)` (program `A167710.P5866345545259427761`, by `A167710.P5866345545259427761.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A167710.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168547.P16365202704234955359

`Δ[A000217(n)+C(2*n, 4)]`
-/

namespace A168547.P16365202704234955359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (Nat.choose (2 * n) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168547.P16365202704234955359

noncomputable section

/-- A168547: a(n) = 1 - 2*n^2 + 4*n*(1 + 2*n^2)/3.

Offset 0, canonical program `A168547.P16365202704234955359`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2*n²+4*n*(1+2*n²)/3` (program `A168547.P17009202902646791344`, by `A168547.P17009202902646791344.correct`). Lean does not check the parsing of the name. -/
def A168547 (n : ℕ) : ℤ :=
  A168547.P16365202704234955359.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2*n²+4*n*(1+2*n²)/3` (program `A168547.P17009202902646791344`, by `A168547.P17009202902646791344.correct`). Lean does not check the parsing of the name. -/
def A168547.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168666.P14135901475622080394

`A060891(n)*A168660(n)`
-/

namespace A168666.P14135901475622080394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060891 n * A168660 n

end

end A168666.P14135901475622080394

noncomputable section

/-- A168666: a(n) = n^7*(n^9 + 1)/2.

Offset 0, canonical program `A168666.P14135901475622080394`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7*(n^9+1)/2` (program `A168666.P4112952084173959425`, by `A168666.P4112952084173959425.correct`). Lean does not check the parsing of the name. -/
def A168666 (n : ℕ) : ℤ :=
  A168666.P14135901475622080394.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7*(n^9+1)/2` (program `A168666.P4112952084173959425`, by `A168666.P4112952084173959425.correct`). Lean does not check the parsing of the name. -/
def A168666.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168667.P16359901788460067128

`A060892(n)*A168636(n)`
-/

namespace A168667.P16359901788460067128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060892 n * A168636 n

end

end A168667.P16359901788460067128

noncomputable section

/-- A168667: a(n) = n^7*(n^10 + 1)/2.

Offset 0, canonical program `A168667.P16359901788460067128`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7*(n^10+1)/2` (program `A168667.P16640913663198838941`, by `A168667.P16640913663198838941.correct`). Lean does not check the parsing of the name. -/
def A168667 (n : ℕ) : ℤ :=
  A168667.P16359901788460067128.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7*(n^10+1)/2` (program `A168667.P16640913663198838941`, by `A168667.P16640913663198838941.correct`). Lean does not check the parsing of the name. -/
def A168667.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168674.P4972307837167662134

`2*A001610(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168674.P4972307837167662134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001610 n

end

end A168674.P4972307837167662134

noncomputable section

/-- A168674: a(n) = 2*A001610(n).

Offset 0, canonical program `A168674.P4972307837167662134`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A001610(n)` (program `A168674.P4972307837167662134`, by `A168674.P4972307837167662134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A168674 (n : ℕ) : ℤ :=
  A168674.P4972307837167662134.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A001610(n)` (program `A168674.P4972307837167662134`, by `A168674.P4972307837167662134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A168674.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168675.P16758061815138301769

`n*A168635(n)`
-/

namespace A168675.P16758061815138301769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168635 n

end

end A168675.P16758061815138301769

noncomputable section

/-- A168675: a(n) = n^8*(n + 1)/2.

Offset 0, canonical program `A168675.P16758061815138301769`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n+1)/2` (program `A168675.P3772020338645253373`, by `A168675.P3772020338645253373.correct`). Lean does not check the parsing of the name. -/
def A168675 (n : ℕ) : ℤ :=
  A168675.P16758061815138301769.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n+1)/2` (program `A168675.P3772020338645253373`, by `A168675.P3772020338645253373.correct`). Lean does not check the parsing of the name. -/
def A168675.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A169607.P7800631698044335545

`7*A000330(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169607.P7800631698044335545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000330 n

end

end A169607.P7800631698044335545

noncomputable section

/-- A169607: a(n) = 7*A000330(n).

Offset 0, canonical program `A169607.P7800631698044335545`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*A000330(n)` (program `A169607.P7800631698044335545`, by `A169607.P7800631698044335545.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A169607 (n : ℕ) : ℤ :=
  A169607.P7800631698044335545.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*A000330(n)` (program `A169607.P7800631698044335545`, by `A169607.P7800631698044335545.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A169607.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A169642.P13748874128716676200

`A005408(n)*A022998(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169642.P13748874128716676200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A022998 n

end

end A169642.P13748874128716676200

noncomputable section

/-- A169642: a(n) = A005408(n) * A022998(n).

Offset 0, canonical program `A169642.P13748874128716676200`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005408(n)*A022998(n)` (program `A169642.P13748874128716676200`, by `A169642.P13748874128716676200.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A169642 (n : ℕ) : ℤ :=
  A169642.P13748874128716676200.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005408(n)*A022998(n)` (program `A169642.P13748874128716676200`, by `A169642.P13748874128716676200.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A169642.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170774.P438096596320807968

`n²*A168527(n)`
-/

namespace A170774.P438096596320807968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168527 n

end

end A170774.P438096596320807968

noncomputable section

/-- A170774: a(n) = n^8*(n^2+1)/2.

Offset 0, canonical program `A170774.P438096596320807968`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n²+1)/2` (program `A170774.P10289012073938425148`, by `A170774.P10289012073938425148.correct`). Lean does not check the parsing of the name. -/
def A170774 (n : ℕ) : ℤ :=
  A170774.P438096596320807968.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n²+1)/2` (program `A170774.P10289012073938425148`, by `A170774.P10289012073938425148.correct`). Lean does not check the parsing of the name. -/
def A170774.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170775.P509951791708278490

`n*A168660(n)`
-/

namespace A170775.P509951791708278490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168660 n

end

end A170775.P509951791708278490

noncomputable section

/-- A170775: a(n) = n^8*(n^3 + 1)/2.

Offset 0, canonical program `A170775.P509951791708278490`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^3+1)/2` (program `A170775.P18121385576342472149`, by `A170775.P18121385576342472149.correct`). Lean does not check the parsing of the name. -/
def A170775 (n : ℕ) : ℤ :=
  A170775.P509951791708278490.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^3+1)/2` (program `A170775.P18121385576342472149`, by `A170775.P18121385576342472149.correct`). Lean does not check the parsing of the name. -/
def A170775.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170776.P2388367728873886468

`n*A168661(n)`
-/

namespace A170776.P2388367728873886468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168661 n

end

end A170776.P2388367728873886468

noncomputable section

/-- A170776: a(n) = n^8*(n^4 + 1)/2.

Offset 0, canonical program `A170776.P2388367728873886468`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^4+1)/2` (program `A170776.P11830179127022578483`, by `A170776.P11830179127022578483.correct`). Lean does not check the parsing of the name. -/
def A170776 (n : ℕ) : ℤ :=
  A170776.P2388367728873886468.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^4+1)/2` (program `A170776.P11830179127022578483`, by `A170776.P11830179127022578483.correct`). Lean does not check the parsing of the name. -/
def A170776.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170777.P5117172989826885127

`n*A168662(n)`
-/

namespace A170777.P5117172989826885127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168662 n

end

end A170777.P5117172989826885127

noncomputable section

/-- A170777: a(n) = n^8*(n^5 + 1)/2.

Offset 0, canonical program `A170777.P5117172989826885127`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^5+1)/2` (program `A170777.P12904183505882716092`, by `A170777.P12904183505882716092.correct`). Lean does not check the parsing of the name. -/
def A170777 (n : ℕ) : ℤ :=
  A170777.P5117172989826885127.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^5+1)/2` (program `A170777.P12904183505882716092`, by `A170777.P12904183505882716092.correct`). Lean does not check the parsing of the name. -/
def A170777.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170783.P11706678231183103256

`n²*A168635(n)`
-/

namespace A170783.P11706678231183103256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168635 n

end

end A170783.P11706678231183103256

noncomputable section

/-- A170783: a(n) = n^9*(n + 1)/2.

Offset 0, canonical program `A170783.P11706678231183103256`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n+1)/2` (program `A170783.P15088866975921745427`, by `A170783.P15088866975921745427.correct`). Lean does not check the parsing of the name. -/
def A170783 (n : ℕ) : ℤ :=
  A170783.P11706678231183103256.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n+1)/2` (program `A170783.P15088866975921745427`, by `A170783.P15088866975921745427.correct`). Lean does not check the parsing of the name. -/
def A170783.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170784.P10321765456570023923

`n^3*A168527(n)`
-/

namespace A170784.P10321765456570023923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168527 n

end

end A170784.P10321765456570023923

noncomputable section

/-- A170784: a(n) = n^9*(n^2 + 1)/2.

Offset 0, canonical program `A170784.P10321765456570023923`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n²+1)/2` (program `A170784.P4166560128692119417`, by `A170784.P4166560128692119417.correct`). Lean does not check the parsing of the name. -/
def A170784 (n : ℕ) : ℤ :=
  A170784.P10321765456570023923.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n²+1)/2` (program `A170784.P4166560128692119417`, by `A170784.P4166560128692119417.correct`). Lean does not check the parsing of the name. -/
def A170784.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170786.P13617627857343440756

`n²*A168661(n)`
-/

namespace A170786.P13617627857343440756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168661 n

end

end A170786.P13617627857343440756

noncomputable section

/-- A170786: a(n) = n^9*(n^4 + 1)/2.

Offset 0, canonical program `A170786.P13617627857343440756`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^4+1)/2` (program `A170786.P5584050107514686359`, by `A170786.P5584050107514686359.correct`). Lean does not check the parsing of the name. -/
def A170786 (n : ℕ) : ℤ :=
  A170786.P13617627857343440756.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^4+1)/2` (program `A170786.P5584050107514686359`, by `A170786.P5584050107514686359.correct`). Lean does not check the parsing of the name. -/
def A170786.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170787.P3526523736002679220

`n*n*A168662(n)`
-/

namespace A170787.P3526523736002679220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168662 n)

end

end A170787.P3526523736002679220

noncomputable section

/-- A170787: a(n) = n^9*(n^5 + 1)/2.

Offset 0, canonical program `A170787.P3526523736002679220`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^5+1)/2` (program `A170787.P4996168394147681988`, by `A170787.P4996168394147681988.correct`). Lean does not check the parsing of the name. -/
def A170787 (n : ℕ) : ℤ :=
  A170787.P3526523736002679220.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^5+1)/2` (program `A170787.P4996168394147681988`, by `A170787.P4996168394147681988.correct`). Lean does not check the parsing of the name. -/
def A170787.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170794.P2729191309372779320

`n^3*A168636(n)`
-/

namespace A170794.P2729191309372779320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168636 n

end

end A170794.P2729191309372779320

noncomputable section

/-- A170794: a(n) = n^10*(n^2 + 1)/2.

Offset 0, canonical program `A170794.P2729191309372779320`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n²+1)/2` (program `A170794.P14293233280826601024`, by `A170794.P14293233280826601024.correct`). Lean does not check the parsing of the name. -/
def A170794 (n : ℕ) : ℤ :=
  A170794.P2729191309372779320.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n²+1)/2` (program `A170794.P14293233280826601024`, by `A170794.P14293233280826601024.correct`). Lean does not check the parsing of the name. -/
def A170794.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170795.P17849005678234749663

`n^3*A168660(n)`
-/

namespace A170795.P17849005678234749663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168660 n

end

end A170795.P17849005678234749663

noncomputable section

/-- A170795: a(n) = n^10*(n^3 + 1)/2.

Offset 0, canonical program `A170795.P17849005678234749663`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^3+1)/2` (program `A170795.P4579867630430947981`, by `A170795.P4579867630430947981.correct`). Lean does not check the parsing of the name. -/
def A170795 (n : ℕ) : ℤ :=
  A170795.P17849005678234749663.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^3+1)/2` (program `A170795.P4579867630430947981`, by `A170795.P4579867630430947981.correct`). Lean does not check the parsing of the name. -/
def A170795.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170796.P17705317242308480308

`n^3*A168661(n)`
-/

namespace A170796.P17705317242308480308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168661 n

end

end A170796.P17705317242308480308

noncomputable section

/-- A170796: a(n) = n^10*(n^4 + 1)/2.

Offset 0, canonical program `A170796.P17705317242308480308`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^4+1)/2` (program `A170796.P17450856212560641259`, by `A170796.P17450856212560641259.correct`). Lean does not check the parsing of the name. -/
def A170796 (n : ℕ) : ℤ :=
  A170796.P17705317242308480308.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^4+1)/2` (program `A170796.P17450856212560641259`, by `A170796.P17450856212560641259.correct`). Lean does not check the parsing of the name. -/
def A170796.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170933.P2332904652128649682

`A000930(n)+A000930(n+3)+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170933.P2332904652128649682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + A000930 (n + 3) + 4

end

end A170933.P2332904652128649682

noncomputable section

/-- A170933: a(n) = A000930(n) + A000930(n+3) + 4.

Offset 0, canonical program `A170933.P2332904652128649682`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n)+A000930(n+3)+4` (program `A170933.P2332904652128649682`, by `A170933.P2332904652128649682.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A170933 (n : ℕ) : ℤ :=
  A170933.P2332904652128649682.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n)+A000930(n+3)+4` (program `A170933.P2332904652128649682`, by `A170933.P2332904652128649682.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A170933.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A171129.P17751088220047433642

`A071252(n)-n²`
-/

namespace A171129.P17751088220047433642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n - (n ^ 2 : ℤ)

end

end A171129.P17751088220047433642

noncomputable section

/-- A171129: a(n)=(n^4-n^3-n^2-n)/2.

Offset 0, canonical program `A171129.P17751088220047433642`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3-n²-n)/2` (program `A171129.P8615492750918036692`, by `A171129.P8615492750918036692.correct`). Lean does not check the parsing of the name. -/
def A171129 (n : ℕ) : ℤ :=
  A171129.P17751088220047433642.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3-n²-n)/2` (program `A171129.P8615492750918036692`, by `A171129.P8615492750918036692.correct`). Lean does not check the parsing of the name. -/
def A171129.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A171557.P6596492913375790893

`3^n*A168053(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171557.P6596492913375790893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A168053 n

end

end A171557.P6596492913375790893

noncomputable section

/-- A171557: a(n) = 3^n*A168053(n).

Offset 0, canonical program `A171557.P6596492913375790893`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A168053(n)` (program `A171557.P6596492913375790893`, by `A171557.P6596492913375790893.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A171557 (n : ℕ) : ℤ :=
  A171557.P6596492913375790893.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A168053(n)` (program `A171557.P6596492913375790893`, by `A171557.P6596492913375790893.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A171557.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A172011.P12570364966338476228

`12*A002605(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172011.P12570364966338476228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A002605 n

end

end A172011.P12570364966338476228

noncomputable section

/-- A172011: a(n) = 12*A002605(n).

Offset 0, canonical program `A172011.P12570364966338476228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*A002605(n)` (program `A172011.P12570364966338476228`, by `A172011.P12570364966338476228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A172011 (n : ℕ) : ℤ :=
  A172011.P12570364966338476228.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*A002605(n)` (program `A172011.P12570364966338476228`, by `A172011.P12570364966338476228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A172011.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A173508.P13999398580247368265

`ceil(A173497(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173508.P13999398580247368265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173497 n : ℚ) / 2⌉

end

end A173508.P13999398580247368265

noncomputable section

/-- A173508: a(n) = ceiling(A173497(n)/2).

Offset 0, canonical program `A173508.P13999398580247368265`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A173497(n)/2)` (program `A173508.P13999398580247368265`, by `A173508.P13999398580247368265.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173508 (n : ℕ) : ℤ :=
  A173508.P13999398580247368265.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A173497(n)/2)` (program `A173508.P13999398580247368265`, by `A173508.P13999398580247368265.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173508.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A173513.P10848406702566201534

`ceil(A173510(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173513.P10848406702566201534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173510 n : ℚ) / 2⌉

end

end A173513.P10848406702566201534

noncomputable section

/-- A173513: a(n) = ceiling(A173510(n)/2).

Offset 0, canonical program `A173513.P10848406702566201534`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A173510(n)/2)` (program `A173513.P10848406702566201534`, by `A173513.P10848406702566201534.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173513 (n : ℕ) : ℤ :=
  A173513.P10848406702566201534.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A173510(n)/2)` (program `A173513.P10848406702566201534`, by `A173513.P10848406702566201534.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173513.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A173674.P1173747933919963172

`ceil(A003269(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173674.P1173747933919963172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003269 n : ℚ) / 2⌉

end

end A173674.P1173747933919963172

noncomputable section

/-- A173674: a(n) = ceiling(A003269(n)/2).

Offset 0, canonical program `A173674.P1173747933919963172`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A003269(n)/2)` (program `A173674.P1173747933919963172`, by `A173674.P1173747933919963172.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173674 (n : ℕ) : ℤ :=
  A173674.P1173747933919963172.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A003269(n)/2)` (program `A173674.P1173747933919963172`, by `A173674.P1173747933919963172.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173674.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A173696.P16704578198849924230

`ceil(A117791(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173696.P16704578198849924230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117791 n : ℚ) / 2⌉

end

end A173696.P16704578198849924230

noncomputable section

/-- A173696: a(n) = ceiling(A117791(n)/2).

Offset 0, canonical program `A173696.P16704578198849924230`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A117791(n)/2)` (program `A173696.P16704578198849924230`, by `A173696.P16704578198849924230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173696 (n : ℕ) : ℤ :=
  A173696.P16704578198849924230.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A117791(n)/2)` (program `A173696.P16704578198849924230`, by `A173696.P16704578198849924230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173696.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A173697.P12232505073087085586

`ceil(A013984(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173697.P12232505073087085586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A013984 n : ℚ) / 2⌉

end

end A173697.P12232505073087085586

noncomputable section

/-- A173697: a(n) = ceiling(A013984(n)/2).

Offset 0, canonical program `A173697.P12232505073087085586`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A013984(n)/2)` (program `A173697.P12232505073087085586`, by `A173697.P12232505073087085586.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173697 (n : ℕ) : ℤ :=
  A173697.P12232505073087085586.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A013984(n)/2)` (program `A173697.P12232505073087085586`, by `A173697.P12232505073087085586.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A173697.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174962.P16400334399799843144

`(n+1)^n*A000096(n+1)`
-/

namespace A174962.P16400334399799843144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * A000096 (n + 1)

end

end A174962.P16400334399799843144

noncomputable section

/-- A174962: a(n) = n^n*(3+n)/2.

Offset 1, canonical program `A174962.P16400334399799843144`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)*(3+n+1)/2` (program `A174962.P11620531813696674436`, by `A174962.P11620531813696674436.correct`). Lean does not check the parsing of the name. -/
def A174962 (n : ℕ) : ℤ :=
  A174962.P16400334399799843144.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)*(3+n+1)/2` (program `A174962.P11620531813696674436`, by `A174962.P11620531813696674436.correct`). Lean does not check the parsing of the name. -/
def A174962.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A175018.P4424378011101672681

`A005185(n+1)-floor(A005185(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175018.P4424378011101672681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) - ⌊(A005185 (n + 1) : ℚ) / 2⌋

end

end A175018.P4424378011101672681

noncomputable section

/-- A175018: A005185(n)-floor(A005185(n)/2).

Offset 1, canonical program `A175018.P4424378011101672681`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005185(n+1)-floor(A005185(n+1)/2)` (program `A175018.P4424378011101672681`, by `A175018.P4424378011101672681.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A175018 (n : ℕ) : ℤ :=
  A175018.P4424378011101672681.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005185(n+1)-floor(A005185(n+1)/2)` (program `A175018.P4424378011101672681`, by `A175018.P4424378011101672681.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A175018.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A175387.P14460528820023335310

`A004001(n+1)-floor(A004001(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175387.P14460528820023335310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - ⌊(A004001 (n + 1) : ℚ) / 2⌋

end

end A175387.P14460528820023335310

noncomputable section

/-- A175387: a(n) = A004001(n)-floor(A004001(n)/2).

Offset 1, canonical program `A175387.P14460528820023335310`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)-floor(A004001(n+1)/2)` (program `A175387.P14460528820023335310`, by `A175387.P14460528820023335310.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A175387 (n : ℕ) : ℤ :=
  A175387.P14460528820023335310.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)-floor(A004001(n+1)/2)` (program `A175387.P14460528820023335310`, by `A175387.P14460528820023335310.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A175387.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A176743.P16166337781164789737

`gcd(A000217(n+1), A002378(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176743.P16166337781164789737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (n + 1)) (A002378 (n + 2))

end

end A176743.P16166337781164789737

noncomputable section

/-- A176743: a(n) = gcd(A000217(n+1), A002378(n+2)).

Offset 0, canonical program `A176743.P16166337781164789737`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000217(n+1), A002378(n+2))` (program `A176743.P16166337781164789737`, by `A176743.P16166337781164789737.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176743 (n : ℕ) : ℤ :=
  (A176743.P16166337781164789737.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000217(n+1), A002378(n+2))` (program `A176743.P16166337781164789737`, by `A176743.P16166337781164789737.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176743.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A177009.P13275391886955884048

`(n+1)^(n+1)-A002275(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177009.P13275391886955884048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A002275 (n + 1)

end

end A177009.P13275391886955884048

noncomputable section

/-- A177009: a(n) = n^n - A002275(n).

Offset 1, canonical program `A177009.P13275391886955884048`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-A002275(n+1)` (program `A177009.P13275391886955884048`, by `A177009.P13275391886955884048.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A177009 (n : ℕ) : ℤ :=
  A177009.P13275391886955884048.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-A002275(n+1)` (program `A177009.P13275391886955884048`, by `A177009.P13275391886955884048.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A177009.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A180664.P1517700304713585636

`a(n-1)+A001654(n+1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180664.P1517700304713585636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001654 (n + 1)

end

end A180664.P1517700304713585636

noncomputable section

/-- A180664: Golden Triangle sums: a(n) = a(n-1) + A001654(n+1) with a(0)=0.

Offset 0, canonical program `A180664.P1517700304713585636`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A001654(n+1)` (program `A180664.P1517700304713585636`, by `A180664.P1517700304713585636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A180664 (n : ℕ) : ℤ :=
  A180664.P1517700304713585636.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A001654(n+1)` (program `A180664.P1517700304713585636`, by `A180664.P1517700304713585636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A180664.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A180665.P3269746418656464574

`a(n-2)+A001654(n)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180665.P3269746418656464574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A001654 n

end

end A180665.P3269746418656464574

noncomputable section

/-- A180665: Golden Triangle sums: a(n)=a(n-2)+A001654(n) with a(0)=0 and a(1)=1.

Offset 0, canonical program `A180665.P3269746418656464574`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+A001654(n)` (program `A180665.P3269746418656464574`, by `A180665.P3269746418656464574.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A180665 (n : ℕ) : ℤ :=
  A180665.P3269746418656464574.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+A001654(n)` (program `A180665.P3269746418656464574`, by `A180665.P3269746418656464574.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A180665.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A180666.P11651877787722463626

`a(n-4)+A001654(n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180666.P11651877787722463626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  a (n - 4) + A001654 n

end

end A180666.P11651877787722463626

noncomputable section

/-- A180666: Golden Triangle sums: a(n)=a(n-4)+A001654(n) with a(0)=0, a(1)=1, a(2)=2 and a(3)=6.

Offset 0, canonical program `A180666.P11651877787722463626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+A001654(n)` (program `A180666.P11651877787722463626`, by `A180666.P11651877787722463626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A180666 (n : ℕ) : ℤ :=
  A180666.P11651877787722463626.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+A001654(n)` (program `A180666.P11651877787722463626`, by `A180666.P11651877787722463626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A180666.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A181900.P12304309937606305492

`n*A022998(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181900.P12304309937606305492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022998 n

end

end A181900.P12304309937606305492

noncomputable section

/-- A181900: a(n) = n * A022998(n).

Offset 0, canonical program `A181900.P12304309937606305492`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A022998(n)` (program `A181900.P12304309937606305492`, by `A181900.P12304309937606305492.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A181900 (n : ℕ) : ℤ :=
  A181900.P12304309937606305492.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A022998(n)` (program `A181900.P12304309937606305492`, by `A181900.P12304309937606305492.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A181900.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A183039.P10534272261102802440

`A060352(val(n+1, 3)+1)+1`
-/

namespace A183039.P10534272261102802440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060352 (SequenceMachineLib.valuation (n + 1) 3 + 1) + 1

end

end A183039.P10534272261102802440

noncomputable section

/-- A183039: a(n) = A051064(n)*3^A051064(n) where A051064(n) equals the 3-adic valuation of 3n.

Offset 1, canonical program `A183039.P10534272261102802440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183039 (n : ℕ) : ℤ :=
  A183039.P10534272261102802440.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185010.P938023634184564924

`A000108(n)*A015518(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185010.P938023634184564924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A015518 (n + 1)

end

end A185010.P938023634184564924

noncomputable section

/-- A185010: a(n) = A000108(n)*A015518(n+1), where A000108 are the Catalan numbers and A015518(n) = 2*A015518(n-1) + 3*A015518(n-2).

Offset 0, canonical program `A185010.P938023634184564924`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A015518(n+1)` (program `A185010.P938023634184564924`, by `A185010.P938023634184564924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A185010 (n : ℕ) : ℤ :=
  A185010.P938023634184564924.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A015518(n+1)` (program `A185010.P938023634184564924`, by `A185010.P938023634184564924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A185010.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A185020.P3515777986495691671

`A000108(n)*A002605(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185020.P3515777986495691671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A002605 (n + 1)

end

end A185020.P3515777986495691671

noncomputable section

/-- A185020: a(n) = A000108(n)*A002605(n+1), where A000108 are the Catalan numbers.

Offset 0, canonical program `A185020.P3515777986495691671`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A002605(n+1)` (program `A185020.P3515777986495691671`, by `A185020.P3515777986495691671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A185020 (n : ℕ) : ℤ :=
  A185020.P3515777986495691671.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A002605(n+1)` (program `A185020.P3515777986495691671`, by `A185020.P3515777986495691671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A185020.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A185375.P16095660680762476874

`A000389(2*n+1)+10*A000579(2*n+1)`
-/

namespace A185375.P16095660680762476874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 1) + 10 * A000579 (2 * n + 1)

end

end A185375.P16095660680762476874

noncomputable section

/-- A185375: a(n) = n*(n-1)*(2*n+1)*(2*n-1)*(2*n-3)*(10*n-17)/90.

Offset 0, canonical program `A185375.P16095660680762476874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(2*n+1)*(2*n-1)*(2*n-3)*(10*n-17)/90` (program `A185375.P2837502674887211493`, by `A185375.P2837502674887211493.correct`). Lean does not check the parsing of the name. -/
def A185375 (n : ℕ) : ℤ :=
  A185375.P16095660680762476874.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(2*n+1)*(2*n-1)*(2*n-3)*(10*n-17)/90` (program `A185375.P2837502674887211493`, by `A185375.P2837502674887211493.correct`). Lean does not check the parsing of the name. -/
def A185375.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A186194.P201725492431003808

`A002275(n)*(A002275(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186194.P201725492431003808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * (A002275 n + 1)

end

end A186194.P201725492431003808

noncomputable section

/-- A186194: a(n) = A002275(n) * (A002275(n)+1).

Offset 0, canonical program `A186194.P201725492431003808`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002275(n)*(A002275(n)+1)` (program `A186194.P201725492431003808`, by `A186194.P201725492431003808.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A186194 (n : ℕ) : ℤ :=
  A186194.P201725492431003808.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002275(n)*(A002275(n)+1)` (program `A186194.P201725492431003808`, by `A186194.P201725492431003808.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A186194.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A187357.P2278032874893619399

`A000108(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187357.P2278032874893619399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (3 * n)

end

end A187357.P2278032874893619399

noncomputable section

/-- A187357: Catalan trisection: A000108(3*n), n >= 0.

Offset 0, canonical program `A187357.P2278032874893619399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(3*n)` (program `A187357.P2278032874893619399`, by `A187357.P2278032874893619399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A187357 (n : ℕ) : ℤ :=
  A187357.P2278032874893619399.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(3*n)` (program `A187357.P2278032874893619399`, by `A187357.P2278032874893619399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A187357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A187358.P4431220509580705304

`A000108(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187358.P4431220509580705304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (3 * n + 1)

end

end A187358.P4431220509580705304

noncomputable section

/-- A187358: Catalan trisection: A000108(3*n+1), n>=0.

Offset 0, canonical program `A187358.P4431220509580705304`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(3*n+1)` (program `A187358.P4431220509580705304`, by `A187358.P4431220509580705304.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A187358 (n : ℕ) : ℤ :=
  A187358.P4431220509580705304.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(3*n+1)` (program `A187358.P4431220509580705304`, by `A187358.P4431220509580705304.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A187358.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163276.P13370388899047673994

`(n+1)*A168526(n)`
-/

namespace A163276.P13370388899047673994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168526 n

end

end A163276.P13370388899047673994

noncomputable section

/-- A163276: a(n) = n^6*(n+1)^2/2.

Offset 0, canonical program `A163276.P13370388899047673994`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n+1)²/2` (program `A163276.P17179705559365684468`, by `A163276.P17179705559365684468.correct`). Lean does not check the parsing of the name. -/
def A163276 (n : ℕ) : ℤ :=
  A163276.P13370388899047673994.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n+1)²/2` (program `A163276.P17179705559365684468`, by `A163276.P17179705559365684468.correct`). Lean does not check the parsing of the name. -/
def A163276.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163277.P12433548894732060128

`(n+1)*n*A168526(n)`
-/

namespace A163277.P12433548894732060128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A168526 n)

end

end A163277.P12433548894732060128

noncomputable section

/-- A163277: a(n) = n^7*(n+1)^2/2.

Offset 0, canonical program `A163277.P12433548894732060128`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7*(n+1)²/2` (program `A163277.P16640052362777549291`, by `A163277.P16640052362777549291.correct`). Lean does not check the parsing of the name. -/
def A163277 (n : ℕ) : ℤ :=
  A163277.P12433548894732060128.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7*(n+1)²/2` (program `A163277.P16640052362777549291`, by `A163277.P16640052362777549291.correct`). Lean does not check the parsing of the name. -/
def A163277.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A153388.P14020568489704575440

`10*A001519(n+1)-2`
-/

namespace A153388.P14020568489704575440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A001519 (n + 1) - 2

end

end A153388.P14020568489704575440

noncomputable section

/-- A153388: Second bisection of A153382.

Offset 0, canonical program `A153388.P14020568489704575440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153388 (n : ℕ) : ℤ :=
  A153388.P14020568489704575440.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153466.P2922486959135561412

`A027941(n)+A027941(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153466.P2922486959135561412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + A027941 (n + 6)

end

end A153466.P2922486959135561412

noncomputable section

/-- A153466: a(n) = A027941(n) + A027941(n+6).

Offset 0, canonical program `A153466.P2922486959135561412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153466 (n : ℕ) : ℤ :=
  A153466.P2922486959135561412.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153511.P12346412399723121567

`4*A051189(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153511.P12346412399723121567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051189 n

end

end A153511.P12346412399723121567

noncomputable section

/-- A153511: a(n) = 4 * A051189(n).

Offset 0, canonical program `A153511.P12346412399723121567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153511 (n : ℕ) : ℤ :=
  A153511.P12346412399723121567.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153587.P16815491758399937807

`n%(A062383(n)-n)`
-/

namespace A153587.P16815491758399937807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A062383 n - (n : ℤ))

end

end A153587.P16815491758399937807

noncomputable section

/-- A153587: a(n) = n mod (A062383(n) - n).

Offset 0, canonical program `A153587.P16815491758399937807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153587 (n : ℕ) : ℤ :=
  A153587.P16815491758399937807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154286.P11538623933304528328

`5*A000332(n+4)`
-/

namespace A154286.P11538623933304528328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000332 (n + 4)

end

end A154286.P11538623933304528328

noncomputable section

/-- A154286: a(n) = E(k)*C(n+k,k) = Euler(k)*binomial(n+k,k) for k=4.

Offset 0, canonical program `A154286.P11538623933304528328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154286 (n : ℕ) : ℤ :=
  A154286.P11538623933304528328.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154308.P6338138672506942701

`A000142(n+1)*A000583(n+1)*A000389(n+5)`
-/

namespace A154308.P6338138672506942701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A000583 (n + 1) * A000389 (n + 5)

end

end A154308.P6338138672506942701

noncomputable section

/-- A154308: a(n) = (n+1)^5*(5+n)!/120.

Offset 0, canonical program `A154308.P6338138672506942701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154308 (n : ℕ) : ℤ :=
  A154308.P6338138672506942701.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154333.P16846798057093835368

`A071797((n+1)^3)`
-/

namespace A154333.P16846798057093835368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 ((n + 1) ^ 3)

end

end A154333.P16846798057093835368

noncomputable section

/-- A154333: Difference between n^3 and the next smaller square.

Offset 1, canonical program `A154333.P16846798057093835368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154333 (n : ℕ) : ℤ :=
  A154333.P16846798057093835368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154410.P14606455346137410460

`10*A090040(n)`
-/

namespace A154410.P14606455346137410460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A090040 n

end

end A154410.P14606455346137410460

noncomputable section

/-- A154410: a(n) = 5*(3*6^n + 2^n)/2.

Offset 0, canonical program `A154410.P14606455346137410460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154410 (n : ℕ) : ℤ :=
  A154410.P14606455346137410460.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154589.P3879680968054244063

`A154570(n)+A154570(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154589.P3879680968054244063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 n + A154570 (n + 1)

end

end A154589.P3879680968054244063

noncomputable section

/-- A154589: a(n) = A154570(n) + A154570(n+1).

Offset 0, canonical program `A154589.P3879680968054244063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154589 (n : ℕ) : ℤ :=
  A154589.P3879680968054244063.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A155085.P3282672389110014595

`A000203(n+1)+n+1`
-/

namespace A155085.P3282672389110014595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (n + 1 : ℤ)

end

end A155085.P3282672389110014595

noncomputable section

/-- A155085: a(n) = n + sum of divisors of n.

Offset 1, canonical program `A155085.P3282672389110014595`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155085 (n : ℕ) : ℤ :=
  A155085.P3282672389110014595.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A155110.P1647809718960722810

`8*A122367(n)`
-/

namespace A155110.P1647809718960722810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A122367 n

end

end A155110.P1647809718960722810

noncomputable section

/-- A155110: a(n) = 8*Fibonacci(2n+1).

Offset 0, canonical program `A155110.P1647809718960722810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155110 (n : ℕ) : ℤ :=
  A155110.P1647809718960722810.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A155559.P218960338783892964

`2*A131577(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155559.P218960338783892964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131577 n

end

end A155559.P218960338783892964

noncomputable section

/-- A155559: a(n) = 2*A131577(n).

Offset 0, canonical program `A155559.P218960338783892964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155559 (n : ℕ) : ℤ :=
  A155559.P218960338783892964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156058.P4791948417348963261

`5^n*A000108(n)`
-/

namespace A156058.P4791948417348963261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000108 n

end

end A156058.P4791948417348963261

noncomputable section

/-- A156058: a(n) = 5^n * Catalan(n).

Offset 0, canonical program `A156058.P4791948417348963261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156058 (n : ℕ) : ℤ :=
  A156058.P4791948417348963261.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156088.P16305813456167853455

`(-1)^n*A081079(n)/15`
-/

namespace A156088.P16305813456167853455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A081079 n : ℚ) / 15

end

end A156088.P16305813456167853455

noncomputable section

/-- A156088: Alternating sum of the squares of the first n even-indexed Fibonacci numbers.

Offset 0, canonical program `A156088.P16305813456167853455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156088.P16305813456167853455.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156094.P11465919669108424970

`A056854(n)-5*A001906(n)-1`
-/

namespace A156094.P11465919669108424970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 n - 5 * A001906 n - 1

end

end A156094.P11465919669108424970

noncomputable section

/-- A156094: 5 F(2n) (F(2n) - 1) + 1 where F(n) denotes the n-th Fibonacci number.

Offset 0, canonical program `A156094.P11465919669108424970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156094 (n : ℕ) : ℤ :=
  A156094.P11465919669108424970.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156125.P3794830085695596017

`10^(n-1)*A007272(n)`
-/

namespace A156125.P3794830085695596017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A007272 n : ℚ)

end

end A156125.P3794830085695596017

noncomputable section

/-- A156125: a(n) = 10^n*C(2n,n)/C(n+3,3).

Offset 0, canonical program `A156125.P3794830085695596017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156125 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156125.P3794830085695596017.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156128.P4488118802743694307

`6^n*A000108(n)`
-/

namespace A156128.P4488118802743694307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000108 n

end

end A156128.P4488118802743694307

noncomputable section

/-- A156128: a(n) = 6^n * Catalan(n).

Offset 0, canonical program `A156128.P4488118802743694307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156128 (n : ℕ) : ℤ :=
  A156128.P4488118802743694307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156174.P14265002136869172753

`(-1)^n*A099443(n)`
-/

namespace A156174.P14265002136869172753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A099443 n

end

end A156174.P14265002136869172753

noncomputable section

/-- A156174: Period 5: repeat [1,-1,1,-1,0].

Offset 0, canonical program `A156174.P14265002136869172753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156174 (n : ℕ) : ℤ :=
  A156174.P14265002136869172753.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156266.P8245967861638923851

`7^n*A000108(n)`
-/

namespace A156266.P8245967861638923851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000108 n

end

end A156266.P8245967861638923851

noncomputable section

/-- A156266: a(n) = 7^n*Catalan(n).

Offset 0, canonical program `A156266.P8245967861638923851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156266 (n : ℕ) : ℤ :=
  A156266.P8245967861638923851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156270.P10850469450774389515

`8^n*A000108(n)`
-/

namespace A156270.P10850469450774389515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000108 n

end

end A156270.P10850469450774389515

noncomputable section

/-- A156270: a(n) = 8^n*Catalan(n).

Offset 0, canonical program `A156270.P10850469450774389515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156270 (n : ℕ) : ℤ :=
  A156270.P10850469450774389515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156273.P11938944850300387714

`9^n*A000108(n)`
-/

namespace A156273.P11938944850300387714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000108 n

end

end A156273.P11938944850300387714

noncomputable section

/-- A156273: a(n) = 9^n*Catalan(n).

Offset 0, canonical program `A156273.P11938944850300387714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156273 (n : ℕ) : ℤ :=
  A156273.P11938944850300387714.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156275.P5423901398526623183

`10^n*A000108(n)`
-/

namespace A156275.P5423901398526623183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A000108 n

end

end A156275.P5423901398526623183

noncomputable section

/-- A156275: a(n) = 10^n*Catalan(n).

Offset 0, canonical program `A156275.P5423901398526623183`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156275 (n : ℕ) : ℤ :=
  A156275.P5423901398526623183.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156331.P9268504184016860715

`8*A154811(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156331.P9268504184016860715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A154811 n

end

end A156331.P9268504184016860715

noncomputable section

/-- A156331: a(n)=8*A154811(n).

Offset 0, canonical program `A156331.P9268504184016860715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156331 (n : ℕ) : ℤ :=
  A156331.P9268504184016860715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156561.P6186296288781561187

`floor(A122367(n)/9)`
-/

namespace A156561.P6186296288781561187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122367 n : ℚ) / 9⌋

end

end A156561.P6186296288781561187

noncomputable section

/-- A156561: Floor(Fibonacci(2n+1)/9).

Offset 0, canonical program `A156561.P6186296288781561187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156561 (n : ℕ) : ℤ :=
  A156561.P6186296288781561187.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156572.P308074895079523884

`A156567(n+1)²`
-/

namespace A156572.P308074895079523884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (n + 1) ^ 2

end

end A156572.P308074895079523884

noncomputable section

/-- A156572: Squares of the form k^2+(k+23)^2 with integer k.

Offset 1, canonical program `A156572.P308074895079523884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156572 (n : ℕ) : ℤ :=
  A156572.P308074895079523884.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156573.P3368904626161036951

`529*A008844(n)`
-/

namespace A156573.P3368904626161036951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  529 * A008844 n

end

end A156573.P3368904626161036951

noncomputable section

/-- A156573: a(n) = 34*a(n-1) - a(n-2) - 4232 for n > 2; a(1)=529, a(2)=13225.

Offset 1, canonical program `A156573.P3368904626161036951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156573 (n : ℕ) : ℤ :=
  A156573.P3368904626161036951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156625.P9818569217592863471

`A050504(n+2)-(n+2)+1`
-/

namespace A156625.P9818569217592863471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 2) - (n + 2 : ℤ) + 1

end

end A156625.P9818569217592863471

noncomputable section

/-- A156625: Floor(integral of log(x) from 1 to n).

Offset 2, canonical program `A156625.P9818569217592863471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156625 (n : ℕ) : ℤ :=
  A156625.P9818569217592863471.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156664.P8435972975703296166

`2*A000129(n+1)-2^n`
-/

namespace A156664.P8435972975703296166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (n + 1) - (2 ^ n : ℤ)

end

end A156664.P8435972975703296166

noncomputable section

/-- A156664: Binomial transform of A052551.

Offset 0, canonical program `A156664.P8435972975703296166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156664 (n : ℕ) : ℤ :=
  A156664.P8435972975703296166.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156728.P5383628148153885775

`A156253(n+2)-A156253(n+1)`
-/

namespace A156728.P5383628148153885775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 2) - A156253 (n + 1)

end

end A156728.P5383628148153885775

noncomputable section

/-- A156728: a(n) = abs(A054354(n)).

Offset 1, canonical program `A156728.P5383628148153885775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156728 (n : ℕ) : ℤ :=
  A156728.P5383628148153885775.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156926.P8511251065076520410

`A000079(n)*A000178(n)*A057077(n)`
-/

namespace A156926.P8511251065076520410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000178 n * A057077 n

end

end A156926.P8511251065076520410

noncomputable section

/-- A156926: Row sums of the FP2 polynomials of A156925.

Offset 0, canonical program `A156926.P8511251065076520410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156926 (n : ℕ) : ℤ :=
  A156926.P8511251065076520410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156986.P1727426336729709761

`A006882(A006882(n))`
-/

namespace A156986.P1727426336729709761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A006882 n).toNat

end

end A156986.P1727426336729709761

noncomputable section

/-- A156986: a(n) = (n!!)!!.

Offset 0, canonical program `A156986.P1727426336729709761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156986 (n : ℕ) : ℤ :=
  A156986.P1727426336729709761.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157005.P3245455919645198880

`2^n*A006720(n+2)`
-/

namespace A157005.P3245455919645198880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006720 (n + 2)

end

end A157005.P3245455919645198880

noncomputable section

/-- A157005: A Somos-4 variant.

Offset 0, canonical program `A157005.P3245455919645198880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157005 (n : ℕ) : ℤ :=
  A157005.P3245455919645198880.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157326.P17646832408429129565

`2*A017533(6*(n+1))²-1`
-/

namespace A157326.P17646832408429129565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017533 (6 * (n + 1)) ^ 2 - 1

end

end A157326.P17646832408429129565

noncomputable section

/-- A157326: a(n) = 10368*n^2 + 288*n + 1.

Offset 1, canonical program `A157326.P17646832408429129565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157326 (n : ℕ) : ℤ :=
  A157326.P17646832408429129565.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157442.P1859832919989261530

`A017485(11*(n+1)-10)²+1`
-/

namespace A157442.P1859832919989261530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (11 * (n + 1) - 10) ^ 2 + 1

end

end A157442.P1859832919989261530

noncomputable section

/-- A157442: a(n) = 14641*n^2 - 24684*n + 10405.

Offset 1, canonical program `A157442.P1859832919989261530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157442 (n : ℕ) : ℤ :=
  A157442.P1859832919989261530.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157449.P13170254361894922479

`2*(n+2)+1-A000203(n+2)`
-/

namespace A157449.P13170254361894922479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) + 1 : ℤ) - A000203 (n + 2)

end

end A157449.P13170254361894922479

noncomputable section

/-- A157449: Difference between n and the sum of its divisors except 1 and itself.

Offset 2, canonical program `A157449.P13170254361894922479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157449 (n : ℕ) : ℤ :=
  A157449.P13170254361894922479.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157696.P910149474973142663

`A110391(5*(n+1))/A110391(n+1)`
-/

namespace A157696.P910149474973142663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110391 (5 * (n + 1)) : ℚ) / (A110391 (n + 1) : ℚ)

end

end A157696.P910149474973142663

noncomputable section

/-- A157696: Define k(n) to be the sequence of integers such that k(n)F(n)=F(2n)(Fibonacci sequence) (A000204); in turn define g(n) to be the sequence of integers such that g(n)k(n)=k(3n)(A110391); finally a(n) is the sequence of integers such that a(n)g(n)=g(5n).

Offset 1, canonical program `A157696.P910149474973142663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157696.P910149474973142663.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157739.P2552013654737498011

`2*A158319(n+1)²-1`
-/

namespace A157739.P2552013654737498011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158319 (n + 1) ^ 2 - 1

end

end A157739.P2552013654737498011

noncomputable section

/-- A157739: a(n) = 388962*n^2 - 1764*n + 1.

Offset 1, canonical program `A157739.P2552013654737498011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157739 (n : ℕ) : ℤ :=
  A157739.P2552013654737498011.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157741.P13625461882730976066

`2*A158322(n+1)²-1`
-/

namespace A157741.P13625461882730976066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158322 (n + 1) ^ 2 - 1

end

end A157741.P13625461882730976066

noncomputable section

/-- A157741: a(n) = 388962*n^2 + 1764*n + 1.

Offset 1, canonical program `A157741.P13625461882730976066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157741 (n : ℕ) : ℤ :=
  A157741.P13625461882730976066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158137.P8154285053775819964

`A158090(n)-2`
-/

namespace A158137.P8154285053775819964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158090 n - 2

end

end A158137.P8154285053775819964

noncomputable section

/-- A158137: Period 9: repeat [-2,4,-2,4,-2,-2,1,1,-2].

Offset 0, canonical program `A158137.P8154285053775819964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158137 (n : ℕ) : ℤ :=
  A158137.P8154285053775819964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158138.P2815902676441644616

`(floor((n+1)/2)+1)²+2*A069905(n+1)`
-/

namespace A158138.P2815902676441644616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / 2⌋ + 1) ^ 2 + 2 * A069905 (n + 1)

end

end A158138.P2815902676441644616

noncomputable section

/-- A158138: Number of nondecreasing integer sequences of length 4 with sum zero and sum of absolute values 2n.

Offset 1, canonical program `A158138.P2815902676441644616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158138 (n : ℕ) : ℤ :=
  A158138.P2815902676441644616.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158501.P748590238385233164

`4*(-1)^n*A000292(n)+A000290(n+1)`
-/

namespace A158501.P748590238385233164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (-1) ^ n * A000292 n + A000290 (n + 1)

end

end A158501.P748590238385233164

noncomputable section

/-- A158501: Hankel transform of A158500.

Offset 0, canonical program `A158501.P748590238385233164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158501 (n : ℕ) : ℤ :=
  A158501.P748590238385233164.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158525.P8352468504798026345

`2*A035344(n+2)`
-/

namespace A158525.P8352468504798026345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035344 (n + 2)

end

end A158525.P8352468504798026345

noncomputable section

/-- A158525: Number of connected spanning subgraphs and number of forests of the wheel graph W_n.

Offset 4, canonical program `A158525.P8352468504798026345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158525 (n : ℕ) : ℤ :=
  A158525.P8352468504798026345.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158552.P7680842235153735162

`A144433(n+1)-A106833(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158552.P7680842235153735162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) - A106833 (n + 1)

end

end A158552.P7680842235153735162

noncomputable section

/-- A158552: a(n) = A144433(n) - A106833(n).

Offset 1, canonical program `A158552.P7680842235153735162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158552 (n : ℕ) : ℤ :=
  A158552.P7680842235153735162.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158569.P12997002080472448591

`A000071(A157725(n))`
-/

namespace A158569.P12997002080472448591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A157725 n).toNat

end

end A158569.P12997002080472448591

noncomputable section

/-- A158569: a(n) = Sum_{i=1..F(n)} F(i), where F = A000045, Fibonacci numbers.

Offset 0, canonical program `A158569.P12997002080472448591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158569 (n : ℕ) : ℤ :=
  A158569.P12997002080472448591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158683.P7854582827485140561

`32*A158563(n+1)`
-/

namespace A158683.P7854582827485140561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A158563 (n + 1)

end

end A158683.P7854582827485140561

noncomputable section

/-- A158683: a(n) = 1024*n^2 - 32.

Offset 1, canonical program `A158683.P7854582827485140561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158683 (n : ℕ) : ℤ :=
  A158683.P7854582827485140561.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158729.P13009135757130666035

`34*A158588(n+1)`
-/

namespace A158729.P13009135757130666035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 * A158588 (n + 1)

end

end A158729.P13009135757130666035

noncomputable section

/-- A158729: a(n) = 1156*n^2 - 34.

Offset 1, canonical program `A158729.P13009135757130666035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158729 (n : ℕ) : ℤ :=
  A158729.P13009135757130666035.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158731.P7583583914137398169

`34*A158586(n)`
-/

namespace A158731.P7583583914137398169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 * A158586 n

end

end A158731.P7583583914137398169

noncomputable section

/-- A158731: a(n) = 1156*n^2 + 34.

Offset 0, canonical program `A158731.P7583583914137398169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158731 (n : ℕ) : ℤ :=
  A158731.P7583583914137398169.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158737.P17281014902818735769

`36*A136017(n+1)`
-/

namespace A158737.P17281014902818735769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A136017 (n + 1)

end

end A158737.P17281014902818735769

noncomputable section

/-- A158737: a(n) = 1296*n^2 - 36.

Offset 1, canonical program `A158737.P17281014902818735769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158737 (n : ℕ) : ℤ :=
  A158737.P17281014902818735769.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158739.P3580061092875837422

`36*A158591(n)`
-/

namespace A158739.P3580061092875837422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A158591 n

end

end A158739.P3580061092875837422

noncomputable section

/-- A158739: a(n) = 1296*n^2 + 36.

Offset 0, canonical program `A158739.P3580061092875837422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158739 (n : ℕ) : ℤ :=
  A158739.P3580061092875837422.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158766.P1760928194827730081

`38*A158593(n)`
-/

namespace A158766.P1760928194827730081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  38 * A158593 n

end

end A158766.P1760928194827730081

noncomputable section

/-- A158766: a(n) = 1444*n^2 + 38.

Offset 0, canonical program `A158766.P1760928194827730081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158766 (n : ℕ) : ℤ :=
  A158766.P1760928194827730081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158773.P9913520330111839781

`40*A158598(n+1)`
-/

namespace A158773.P9913520330111839781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * A158598 (n + 1)

end

end A158773.P9913520330111839781

noncomputable section

/-- A158773: a(n) = 1600*n^2 - 40.

Offset 1, canonical program `A158773.P9913520330111839781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158773 (n : ℕ) : ℤ :=
  A158773.P9913520330111839781.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158775.P6408366669123313915

`40*A158602(n+1)`
-/

namespace A158775.P6408366669123313915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * A158602 (n + 1)

end

end A158775.P6408366669123313915

noncomputable section

/-- A158775: a(n) = 1600*n^2 + 40.

Offset 1, canonical program `A158775.P6408366669123313915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158775 (n : ℕ) : ℤ :=
  A158775.P6408366669123313915.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158880.P13135155835513871061

`6*A001906(n+1)²*A004254(n+1)²*A001109(n+1)`
-/

namespace A158880.P13135155835513871061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001906 (n + 1) ^ 2 * A004254 (n + 1) ^ 2 * A001109 (n + 1)

end

end A158880.P13135155835513871061

noncomputable section

/-- A158880: Number of spanning trees in C_6 X P_n.

Offset 1, canonical program `A158880.P13135155835513871061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158880 (n : ℕ) : ℤ :=
  A158880.P13135155835513871061.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159290.P6677818832078359262

`3*A000975(n+1)-A000975(n)`
-/

namespace A159290.P6677818832078359262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000975 (n + 1) - A000975 n

end

end A159290.P6677818832078359262

noncomputable section

/-- A159290: A generalized Jacobsthal sequence.

Offset 0, canonical program `A159290.P6677818832078359262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159290 (n : ℕ) : ℤ :=
  A159290.P6677818832078359262.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159324.P14653545983242416296

`A138772(n+1)-A000254(n)`
-/

namespace A159324.P14653545983242416296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - A000254 n

end

end A159324.P14653545983242416296

noncomputable section

/-- A159324: n! times the average number of comparisons required by an insertion sort of n (distinct) elements.

Offset 0, canonical program `A159324.P14653545983242416296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159324 (n : ℕ) : ℤ :=
  A159324.P14653545983242416296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159328.P6853743607200588841

`2*A034943(n+2)`
-/

namespace A159328.P6853743607200588841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034943 (n + 2)

end

end A159328.P6853743607200588841

noncomputable section

/-- A159328: Transform of 1 by the T_{1,1} transformation (see link).

Offset 0, canonical program `A159328.P6853743607200588841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159328 (n : ℕ) : ℤ :=
  A159328.P6853743607200588841.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159355.P13745875119866861617

`A014626((n+2)²)`
-/

namespace A159355.P13745875119866861617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 ((n + 2) ^ 2)

end

end A159355.P13745875119866861617

noncomputable section

/-- A159355: Number of n X n arrays of squares of integers summing to 4.

Offset 2, canonical program `A159355.P13745875119866861617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159355 (n : ℕ) : ℤ :=
  A159355.P13745875119866861617.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159469.P13189640171723573862

`2*A050187(n+3)`
-/

namespace A159469.P13189640171723573862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050187 (n + 3)

end

end A159469.P13189640171723573862

noncomputable section

/-- A159469: Maximum remainder when (k + 1)^n + (k - 1)^n is divided by k^2 for variable n and k > 2.

Offset 3, canonical program `A159469.P13189640171723573862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159469 (n : ℕ) : ℤ :=
  A159469.P13189640171723573862.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159699.P10776547008237270048

`A136013(n)+2*n`
-/

namespace A159699.P10776547008237270048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 n + (2 * n : ℤ)

end

end A159699.P10776547008237270048

noncomputable section

/-- A159699: Replace 2^k in binary expansion of n with A045623(k+1).

Offset 0, canonical program `A159699.P10776547008237270048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159699 (n : ℕ) : ℤ :=
  A159699.P10776547008237270048.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159783.P10788161440935704845

`2^(n*(n+1)/2)*A000178(n)*A000178(n+1)`
-/

namespace A159783.P10788161440935704845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ) * (A000178 n : ℝ) * (A000178 (n + 1) : ℝ)

end

end A159783.P10788161440935704845

noncomputable section

/-- A159783: Hankel transform of ordered Bell numbers A000670. a(n)=det(A000670(i+j-1)), i,j=1,2..n.

Offset 1, canonical program `A159783.P10788161440935704845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159783 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159783.P10788161440935704845.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160094.P14962074149469739945

`1+A122840(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160094.P14962074149469739945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A122840 (n + 1)

end

end A160094.P14962074149469739945

noncomputable section

/-- A160094: a(n) = 1 + A122840(n).

Offset 1, canonical program `A160094.P14962074149469739945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160094 (n : ℕ) : ℤ :=
  A160094.P14962074149469739945.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160244.P2442629381192183432

`A000285(n+1)+A000040(n+1)`
-/

namespace A160244.P2442629381192183432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) + A000040 (n + 1)

end

end A160244.P2442629381192183432

noncomputable section

/-- A160244: A104449(n+1)+prime(n), sum of a Lucas and the prime sequence.

Offset 1, canonical program `A160244.P2442629381192183432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160244 (n : ℕ) : ℤ :=
  A160244.P2442629381192183432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160637.P3818900873539354450

`(-2)^A011848(n+1)`
-/

namespace A160637.P3818900873539354450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A011848 (n + 1) : ℤ)

end

end A160637.P3818900873539354450

noncomputable section

/-- A160637: Hankel transform of A114464(n+1).

Offset 0, canonical program `A160637.P3818900873539354450`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160637 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160637.P3818900873539354450.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160722.P10602755746573012121

`3*A006046(n)-2*n`
-/

namespace A160722.P10602755746573012121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006046 n - (2 * n : ℤ)

end

end A160722.P10602755746573012121

noncomputable section

/-- A160722: Number of "ON" cells at n-th stage in a certain 2-dimensional cellular automaton based on Sierpinski triangles (see Comments for precise definition).

Offset 0, canonical program `A160722.P10602755746573012121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160722 (n : ℕ) : ℤ :=
  A160722.P10602755746573012121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161124.P4802588664088639793

`n²*A001147(n)`
-/

namespace A161124.P4802588664088639793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001147 n

end

end A161124.P4802588664088639793

noncomputable section

/-- A161124: Number of inversions in all fixed-point-free involutions of {1,2,...,2n}.

Offset 0, canonical program `A161124.P4802588664088639793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161124 (n : ℕ) : ℤ :=
  A161124.P4802588664088639793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161128.P10683319585445762331

`A000254(n)-A007489(n)`
-/

namespace A161128.P10683319585445762331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A007489 n

end

end A161128.P10683319585445762331

noncomputable section

/-- A161128: a(n) = n!*(1/1 + 1/2 + ... + 1/n) - (1! + 2! + ... + n!).

Offset 0, canonical program `A161128.P10683319585445762331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161128 (n : ℕ) : ℤ :=
  A161128.P10683319585445762331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161130.P10498569127810044368

`A000166(n+1)-A155521(n)`
-/

namespace A161130.P10498569127810044368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) - A155521 n

end

end A161130.P10498569127810044368

noncomputable section

/-- A161130: Sum of the differences between the largest and the smallest fixed points over all non-derangement permutations of {1,2,...,n}.

Offset 0, canonical program `A161130.P10498569127810044368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161130 (n : ℕ) : ℤ :=
  A161130.P10498569127810044368.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161365.P10032920921242083664

`A017377(floor(n/2))`
-/

namespace A161365.P10032920921242083664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 ⌊(n : ℚ) / 2⌋.toNat

end

end A161365.P10032920921242083664

noncomputable section

/-- A161365: a(n) = 3/2 + 5*n - 5*(-1)^n/2.

Offset 1, canonical program `A161365.P10032920921242083664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161365 (n : ℕ) : ℤ :=
  A161365.P10032920921242083664.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161581.P6997675696429681006

`1/2*A005789(n+3)`
-/

namespace A161581.P6997675696429681006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A005789 (n + 3) : ℚ)

end

end A161581.P6997675696429681006

noncomputable section

/-- A161581: a(n) = (3n)!/(n!(n+1)!(n+2)!).

Offset 3, canonical program `A161581.P6997675696429681006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161581 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161581.P6997675696429681006.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161626.P12773892105089373629

`A000217(A000040(n+1))-A000217(2*n)`
-/

namespace A161626.P12773892105089373629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1)).toNat - A000217 (2 * n)

end

end A161626.P12773892105089373629

noncomputable section

/-- A161626: Sum of all numbers from 2*n-1 up to prime(n).

Offset 1, canonical program `A161626.P12773892105089373629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161626 (n : ℕ) : ℤ :=
  A161626.P12773892105089373629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161729.P10217361930846299492

`2^n*A153594(n+1)`
-/

namespace A161729.P10217361930846299492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A153594 (n + 1)

end

end A161729.P10217361930846299492

noncomputable section

/-- A161729: a(n) = ((4+sqrt(3))*(8+2*sqrt(3))^n-(4-sqrt(3))*(8-2*sqrt(3))^n)/(2*sqrt(3)).

Offset 0, canonical program `A161729.P10217361930846299492`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161729 (n : ℕ) : ℤ :=
  A161729.P10217361930846299492.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161744.P5231681236444858033

`A000166(A000040(n+1))`
-/

namespace A161744.P5231681236444858033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A000040 (n + 1)).toNat

end

end A161744.P5231681236444858033

noncomputable section

/-- A161744: The subfactorial with index prime(n).

Offset 1, canonical program `A161744.P5231681236444858033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161744 (n : ℕ) : ℤ :=
  A161744.P5231681236444858033.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161745.P16620163924537964088

`A000166(A000045(n))`
-/

namespace A161745.P16620163924537964088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A000045 n).toNat

end

end A161745.P16620163924537964088

noncomputable section

/-- A161745: The subfactorial with index Fibonacci(n).

Offset 0, canonical program `A161745.P16620163924537964088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161745 (n : ℕ) : ℤ :=
  A161745.P16620163924537964088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162397.P17892200127642729839

`(n+1)*A102283(n+1)`
-/

namespace A162397.P17892200127642729839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102283 (n + 1)

end

end A162397.P17892200127642729839

noncomputable section

/-- A162397: a(n) = n * Kronecker(-3, n).

Offset 1, canonical program `A162397.P17892200127642729839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162397 (n : ℕ) : ℤ :=
  A162397.P17892200127642729839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162462.P8340308467305916758

`A000217(A000203(n+1))-A000217(n)`
-/

namespace A162462.P8340308467305916758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat - A000217 n

end

end A162462.P8340308467305916758

noncomputable section

/-- A162462: Sum of all numbers from n to sigma(n).

Offset 1, canonical program `A162462.P8340308467305916758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162462 (n : ℕ) : ℤ :=
  A162462.P8340308467305916758.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162473.P16076520480502830895

`(n+1)*(2^(A070939(n+1)*(n+1))-1)/(2^A070939(n+1)-1)`
-/

namespace A162473.P16076520480502830895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((2 : ℚ) ^ (A070939 (n + 1) * (n + 1 : ℤ) : ℤ) - 1) / ((2 : ℚ) ^ (A070939 (n + 1) : ℤ) - 1)

end

end A162473.P16076520480502830895

noncomputable section

/-- A162473: Write n in binary n times and concatenate (see example). a(n) is the decimal equivalent.

Offset 1, canonical program `A162473.P16076520480502830895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162473.P16076520480502830895.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162485.P2751942674058220469

`A002203(n+1)+1-(-1)^(n+1)`
-/

namespace A162485.P2751942674058220469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + 1 - (-1) ^ (n + 1)

end

end A162485.P2751942674058220469

noncomputable section

/-- A162485: a(1)=4, a(2)=6; for n > 2, a(n) = 2*a(n-1) + a(n-2) - 4*((n-1) mod 2).

Offset 1, canonical program `A162485.P2751942674058220469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162485 (n : ℕ) : ℤ :=
  A162485.P2751942674058220469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162647.P7934316701633457534

`A000215(n)-A162634(n)`
-/

namespace A162647.P7934316701633457534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000215 n - A162634 n

end

end A162647.P7934316701633457534

noncomputable section

/-- A162647: Numerators associated with denominators A000215(n) approximating the complementary Thue-Morse constant.

Offset 0, canonical program `A162647.P7934316701633457534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162647 (n : ℕ) : ℤ :=
  A162647.P7934316701633457534.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162735.P15250219322694002563

`A001057(A000040(n+2))-A001057(A000040(n+1)-1)`
-/

namespace A162735.P15250219322694002563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A000040 (n + 2)).toNat - A001057 (A000040 (n + 1) - 1).toNat

end

end A162735.P15250219322694002563

noncomputable section

/-- A162735: An alternating sum of all numbers from prime(n) to prime(n+1).

Offset 1, canonical program `A162735.P15250219322694002563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162735 (n : ℕ) : ℤ :=
  A162735.P15250219322694002563.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162964.P17591131160355510349

`A000203(A000203(A000203(A000203(A000203(n+1)))))`
-/

namespace A162964.P17591131160355510349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A000203 (A000203 (A000203 (n + 1)).toNat).toNat).toNat).toNat

end

end A162964.P17591131160355510349

noncomputable section

/-- A162964: a(n) = sigma(sigma(sigma(sigma(sigma(n))))).

Offset 1, canonical program `A162964.P17591131160355510349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162964 (n : ℕ) : ℤ :=
  A162964.P17591131160355510349.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162991.P1110863836861765821

`A001048(n+1)²`
-/

namespace A162991.P1110863836861765821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (n + 1) ^ 2

end

end A162991.P1110863836861765821

noncomputable section

/-- A162991: The first right hand column of triangle A162990.

Offset 1, canonical program `A162991.P1110863836861765821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162991 (n : ℕ) : ℤ :=
  A162991.P1110863836861765821.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162993.P3473054239230815582

`A001710(n+3)²`
-/

namespace A162993.P3473054239230815582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 3) ^ 2

end

end A162993.P3473054239230815582

noncomputable section

/-- A162993: The second left hand column of triangle A162990.

Offset 2, canonical program `A162993.P3473054239230815582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162993 (n : ℕ) : ℤ :=
  A162993.P3473054239230815582.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162994.P1141293001052040260

`A002301(n+4)²`
-/

namespace A162994.P1141293001052040260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002301 (n + 4) ^ 2

end

end A162994.P1141293001052040260

noncomputable section

/-- A162994: The third left hand column of triangle A162990.

Offset 3, canonical program `A162994.P1141293001052040260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162994 (n : ℕ) : ℤ :=
  A162994.P1141293001052040260.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163297.P16071574598912958319

`A000203(n+1)+A029837(n+1)`
-/

namespace A163297.P16071574598912958319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A029837 (n + 1)

end

end A163297.P16071574598912958319

noncomputable section

/-- A163297: a(n) = sum of divisors of n plus length of the binary expansion of n.

Offset 1, canonical program `A163297.P16071574598912958319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163297 (n : ℕ) : ℤ :=
  A163297.P16071574598912958319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163298.P757571966658937127

`A000203(n+1)-A029837(n+1)`
-/

namespace A163298.P757571966658937127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A029837 (n + 1)

end

end A163298.P757571966658937127

noncomputable section

/-- A163298: Sum of divisors of n minus binary order of n.

Offset 1, canonical program `A163298.P757571966658937127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163298 (n : ℕ) : ℤ :=
  A163298.P757571966658937127.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163298.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163395.P14222380856025125144

`A163300(n+1)^A005843(n)`
-/

namespace A163395.P14222380856025125144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163300 (n + 1) : ℚ) ^ (A005843 n : ℤ)

end

end A163395.P14222380856025125144

noncomputable section

/-- A163395: a(n) = (n-th even nonprime)^(n-th even number).

Offset 1, canonical program `A163395.P14222380856025125144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163395.P14222380856025125144.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163456.P15399528921749741339

`A001449(n+1)/5`
-/

namespace A163456.P15399528921749741339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 (n + 1) : ℚ) / 5

end

end A163456.P15399528921749741339

noncomputable section

/-- A163456: a(n) = binomial(5*n,n)/5.

Offset 1, canonical program `A163456.P15399528921749741339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163456 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163456.P15399528921749741339.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163979.P9843439997033090403

`n*(n-1)+A144437(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163979.P9843439997033090403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) + A144437 (n + 3)

end

end A163979.P9843439997033090403

noncomputable section

/-- A163979: a(n) = n*(n-1) + A144437(n+2).

Offset 0, canonical program `A163979.P9843439997033090403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163979 (n : ℕ) : ℤ :=
  A163979.P9843439997033090403.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163979.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165187.P271533036140097410

`(n+1)*A000217(n+1)*A000292(n+1)`
-/

namespace A165187.P271533036140097410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000217 (n + 1) * A000292 (n + 1)

end

end A165187.P271533036140097410

noncomputable section

/-- A165187: a(n) = n^3*(n+1)^2*(n+2)/12.

Offset 1, canonical program `A165187.P271533036140097410`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*(n+2)²*(n+3)/12` (program `A165187.P4138941038970738266`, by `A165187.P4138941038970738266.correct`). Lean does not check the parsing of the name. -/
def A165187 (n : ℕ) : ℤ :=
  A165187.P271533036140097410.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*(n+2)²*(n+3)/12` (program `A165187.P4138941038970738266`, by `A165187.P4138941038970738266.correct`). Lean does not check the parsing of the name. -/
def A165187.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A165199.P18080261923669933743

`2*a(floor(n/2))+A000035(n+A000523(n))` with `a(0)=0, a(1)=1`
-/

namespace A165199.P18080261923669933743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + A000035 ((n : ℤ) + A000523 n).toNat

end

end A165199.P18080261923669933743

noncomputable section

/-- A165199: a(n) is obtained by flipping every second bit in the binary representation of n starting at the second-most significant bit and on downwards.

Offset 0, canonical program `A165199.P18080261923669933743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165199 (n : ℕ) : ℤ :=
  A165199.P18080261923669933743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165233.P2827086617515235092

`A057077(n)*A000142(n)`
-/

namespace A165233.P2827086617515235092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A000142 n

end

end A165233.P2827086617515235092

noncomputable section

/-- A165233: Signed denominators of terms in series expansion of cos(x)+sin(x).

Offset 0, canonical program `A165233.P2827086617515235092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165233 (n : ℕ) : ℤ :=
  A165233.P2827086617515235092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165248.P11382934050771289473

`A061037(5*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165248.P11382934050771289473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (5 * n + 2)

end

end A165248.P11382934050771289473

noncomputable section

/-- A165248: Quintisection A061037(5*n+2).

Offset 0, canonical program `A165248.P11382934050771289473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165248 (n : ℕ) : ℤ :=
  A165248.P11382934050771289473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165518.P229213089645885385

`4*A008844(n)`
-/

namespace A165518.P229213089645885385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008844 n

end

end A165518.P229213089645885385

noncomputable section

/-- A165518: Perfect squares (A000290) that can be expressed as the sum of four consecutive triangular numbers (A000217).

Offset 1, canonical program `A165518.P229213089645885385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165518 (n : ℕ) : ℤ :=
  A165518.P229213089645885385.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165753.P1365110760228968470

`A027868(A000045(n+1))`
-/

namespace A165753.P1365110760228968470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A000045 (n + 1)).toNat

end

end A165753.P1365110760228968470

noncomputable section

/-- A165753: Number of trailing zeros in sequence of factorials of Fibonacci numbers.

Offset 1, canonical program `A165753.P1365110760228968470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165753 (n : ℕ) : ℤ :=
  A165753.P1365110760228968470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165775.P10524646008314914098

`n+A048761(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165775.P10524646008314914098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A048761 n

end

end A165775.P10524646008314914098

noncomputable section

/-- A165775: n + (least square >= n), i.e., n + A048761(n).

Offset 0, canonical program `A165775.P10524646008314914098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165775 (n : ℕ) : ℤ :=
  A165775.P10524646008314914098.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165776.P8682621078741289421

`n+A048761(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165776.P8682621078741289421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A048761 (n + 1)

end

end A165776.P8682621078741289421

noncomputable section

/-- A165776: n + (least square > n), i.e., n + A048761(n+1).

Offset 0, canonical program `A165776.P8682621078741289421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165776 (n : ℕ) : ℤ :=
  A165776.P8682621078741289421.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165904.P1462325065743654306

`2^n*A006720(n)`
-/

namespace A165904.P1462325065743654306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006720 n

end

end A165904.P1462325065743654306

noncomputable section

/-- A165904: Somos-4 recurrence with a(i)=2^i for 0<=i<=3.

Offset 0, canonical program `A165904.P1462325065743654306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165904 (n : ℕ) : ℤ :=
  A165904.P1462325065743654306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165905.P10433289138713052558

`2^n*A006720(n+1)`
-/

namespace A165905.P10433289138713052558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006720 (n + 1)

end

end A165905.P10433289138713052558

noncomputable section

/-- A165905: Somos-4 recurrence with a(0)=1, a(1)=2, a(2)=4, a(3)=16.

Offset 0, canonical program `A165905.P10433289138713052558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165905 (n : ℕ) : ℤ :=
  A165905.P10433289138713052558.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165943.P9933738983943013805

`A061037(7*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165943.P9933738983943013805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (7 * n + 2)

end

end A165943.P9933738983943013805

noncomputable section

/-- A165943: a(n) = A061037(7*n+2).

Offset 0, canonical program `A165943.P9933738983943013805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165943 (n : ℕ) : ℤ :=
  A165943.P9933738983943013805.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165994.P15795052251853394702

`floor(A000040(n+1)-sqrt(A000040(n+1)))`
-/

namespace A165994.P15795052251853394702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) - Real.sqrt (A000040 (n + 1) : ℝ)⌋

end

end A165994.P15795052251853394702

noncomputable section

/-- A165994: a(n) is the number of nonzero values of floor (j^2/prime(n)), over 1 <= j < prime(n).

Offset 1, canonical program `A165994.P15795052251853394702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165994 (n : ℕ) : ℤ :=
  A165994.P15795052251853394702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166025.P6999648749179387122

`6*A000045(n+1)+11*A000045(n)`
-/

namespace A166025.P6999648749179387122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (n + 1) + 11 * A000045 n

end

end A166025.P6999648749179387122

noncomputable section

/-- A166025: a(0) = 6, a(1) = 17, a(n+1) = a(n) + a(n-1) for n>0.

Offset 0, canonical program `A166025.P6999648749179387122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166025 (n : ℕ) : ℤ :=
  A166025.P6999648749179387122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166105.P9440066960198392468

`A002065(n)+1`
-/

namespace A166105.P9440066960198392468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002065 n + 1

end

end A166105.P9440066960198392468

noncomputable section

/-- A166105: Quadratic recurrence from Sylvester's sequence, but starting with a(0)=1 and a(1)=2.

Offset 0, canonical program `A166105.P9440066960198392468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166105 (n : ℕ) : ℤ :=
  A166105.P9440066960198392468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166169.P2397110666755841043

`A000204((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166169.P2397110666755841043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 ((n + 1) ^ 2)

end

end A166169.P2397110666755841043

noncomputable section

/-- A166169: a(n) = Lucas(n^2) = A000204(n^2) for n >= 1.

Offset 1, canonical program `A166169.P2397110666755841043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166169 (n : ℕ) : ℤ :=
  A166169.P2397110666755841043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166231.P11317312831400850727

`2^C(n+1, 2)*A006012(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166231.P11317312831400850727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (n + 1) 2 : ℤ) * A006012 n

end

end A166231.P11317312831400850727

noncomputable section

/-- A166231: a(n) = 2^C(n+1,2)*A006012(n).

Offset 0, canonical program `A166231.P11317312831400850727`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^C(n+1, 2)*A006012(n)` (program `A166231.P11317312831400850727`, by `A166231.P11317312831400850727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A166231 (n : ℕ) : ℤ :=
  A166231.P11317312831400850727.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^C(n+1, 2)*A006012(n)` (program `A166231.P11317312831400850727`, by `A166231.P11317312831400850727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A166231.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A166326.P11855077977136138580

`A007925(A000040(n+1))`
-/

namespace A166326.P11855077977136138580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (A000040 (n + 1)).toNat

end

end A166326.P11855077977136138580

noncomputable section

/-- A166326: a(n) = prime(n)^(prime(n)+1) - (prime(n)+1)^prime(n).

Offset 1, canonical program `A166326.P11855077977136138580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166326 (n : ℕ) : ℤ :=
  A166326.P11855077977136138580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166464.P5573303640485334479

`A002492(n)+1`
-/

namespace A166464.P5573303640485334479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + 1

end

end A166464.P5573303640485334479

noncomputable section

/-- A166464: a(n) = (3 + 2*n + 6*n^2 + 4*n^3)/3.

Offset 0, canonical program `A166464.P5573303640485334479`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3+2*n+6*n²+4*n^3)/3` (program `A166464.P6171357209603445686`, by `A166464.P6171357209603445686.correct`). Lean does not check the parsing of the name. -/
def A166464 (n : ℕ) : ℤ :=
  A166464.P5573303640485334479.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3+2*n+6*n²+4*n^3)/3` (program `A166464.P6171357209603445686`, by `A166464.P6171357209603445686.correct`). Lean does not check the parsing of the name. -/
def A166464.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A166482.P11513648503076732975

`A131322(2*n)`
-/

namespace A166482.P11513648503076732975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n)

end

end A166482.P11513648503076732975

noncomputable section

/-- A166482: a(n) = Sum_{k=0..n} binomial(n+k,2*k)*Fibonacci(2*k+1).

Offset 0, canonical program `A166482.P11513648503076732975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166482 (n : ℕ) : ℤ :=
  A166482.P11513648503076732975.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166750.P4578388664558341782

`A001147(n)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166750.P4578388664558341782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n ^ 3

end

end A166750.P4578388664558341782

noncomputable section

/-- A166750: a(n) = (A001147(n))^3 = 2^(3*n)*Gamma(n+1/2)^3/Pi^(3/2).

Offset 0, canonical program `A166750.P4578388664558341782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166750 (n : ℕ) : ℤ :=
  A166750.P4578388664558341782.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166754.P9218110132002024369

`4*A061547(n+2)-3*A166753(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166754.P9218110132002024369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061547 (n + 2) - 3 * A166753 n

end

end A166754.P9218110132002024369

noncomputable section

/-- A166754: a(n) = 4*A061547(n+2) - 3*A166753(n).

Offset 0, canonical program `A166754.P9218110132002024369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166754 (n : ℕ) : ℤ :=
  A166754.P9218110132002024369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166810.P9111942378694377844

`A000579(n+7)-2`
-/

namespace A166810.P9111942378694377844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 7) - 2

end

end A166810.P9111942378694377844

noncomputable section

/-- A166810: Number of n X 6 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

Offset 1, canonical program `A166810.P9111942378694377844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166810 (n : ℕ) : ℤ :=
  A166810.P9111942378694377844.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166812.P11148181708282103747

`A000580(n+8)-2`
-/

namespace A166812.P11148181708282103747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - 2

end

end A166812.P11148181708282103747

noncomputable section

/-- A166812: Number of n X 7 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

Offset 1, canonical program `A166812.P11148181708282103747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166812 (n : ℕ) : ℤ :=
  A166812.P11148181708282103747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166813.P1159037647007195774

`A000581(n+9)-2`
-/

namespace A166813.P1159037647007195774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 9) - 2

end

end A166813.P1159037647007195774

noncomputable section

/-- A166813: Number of n X 8 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

Offset 1, canonical program `A166813.P1159037647007195774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166813 (n : ℕ) : ℤ :=
  A166813.P1159037647007195774.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166830.P5934880011950380253

`floor(A000292(n+2)^3/(A000292(n+2)+1)²)`
-/

namespace A166830.P5934880011950380253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 (n + 2) ^ 3 : ℚ) / ((A000292 (n + 2) + 1) ^ 2 : ℚ)⌋

end

end A166830.P5934880011950380253

noncomputable section

/-- A166830: Number of n X 3 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

Offset 1, canonical program `A166830.P5934880011950380253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166830 (n : ℕ) : ℤ :=
  A166830.P5934880011950380253.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167367.P12696573703430145409

`A000203(A006882(n))`
-/

namespace A167367.P12696573703430145409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006882 n).toNat

end

end A167367.P12696573703430145409

noncomputable section

/-- A167367: a(n) = sigma(n!!) where n!! is A006882(n).

Offset 0, canonical program `A167367.P12696573703430145409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167367 (n : ℕ) : ℤ :=
  A167367.P12696573703430145409.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167385.P16697247258437742402

`A000931(n+12)-4`
-/

namespace A167385.P16697247258437742402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 12) - 4

end

end A167385.P16697247258437742402

noncomputable section

/-- A167385: a(n)= sum_{i=7..n+6} A000931(i).

Offset 0, canonical program `A167385.P16697247258437742402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167385 (n : ℕ) : ℤ :=
  A167385.P16697247258437742402.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167434.P15551848417895861373

`(-1)^n*A052947(n+4)`
-/

namespace A167434.P15551848417895861373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052947 (n + 4)

end

end A167434.P15551848417895861373

noncomputable section

/-- A167434: Diagonal sums of the Riordan array (1-4*x+4*x^2, x*(1-2*x)) (A167431).

Offset 0, canonical program `A167434.P15551848417895861373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167434 (n : ℕ) : ℤ :=
  A167434.P15551848417895861373.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167435.P17728928110512448121

`2^n²*A247560(n)`
-/

namespace A167435.P17728928110512448121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A247560 n

end

end A167435.P17728928110512448121

noncomputable section

/-- A167435: Hankel transform of A084076.

Offset 0, canonical program `A167435.P17728928110512448121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167435 (n : ℕ) : ℤ :=
  A167435.P17728928110512448121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167446.P12620071142182261706

`A000142(A006882(A000045(n)))`
-/

namespace A167446.P12620071142182261706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A006882 (A000045 n).toNat).toNat

end

end A167446.P12620071142182261706

noncomputable section

/-- A167446: a(n) = (Fibonacci(n)!!)!.

Offset 0, canonical program `A167446.P12620071142182261706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167446 (n : ℕ) : ℤ :=
  A167446.P12620071142182261706.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167566.P3658616145969070422

`A024166(n+1)+A000389(n+5)`
-/

namespace A167566.P3658616145969070422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1) + A000389 (n + 5)

end

end A167566.P3658616145969070422

noncomputable section

/-- A167566: The third left hand column of triangle A167565.

Offset 3, canonical program `A167566.P3658616145969070422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167566 (n : ℕ) : ℤ :=
  A167566.P3658616145969070422.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167614.P16420558875026492301

`A152950(n+3)`
-/

namespace A167614.P16420558875026492301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 3)

end

end A167614.P16420558875026492301

noncomputable section

/-- A167614: a(n) = (n^2 + 3*n + 8)/2.

Offset 1, canonical program `A167614.P16420558875026492301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167614 (n : ℕ) : ℤ :=
  A167614.P16420558875026492301.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167617.P352576770255971121

`(-1)^n*A024495(n+1)+A131531(n+2)`
-/

namespace A167617.P352576770255971121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A024495 (n + 1) + A131531 (n + 2)

end

end A167617.P352576770255971121

noncomputable section

/-- A167617: G.f.: x^2*(3+3*x+x^2) / ( (2*x+1) * (1+x) * (1+x+x^2) * (x^2-x+1) ) .

Offset 0, canonical program `A167617.P352576770255971121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167617 (n : ℕ) : ℤ :=
  A167617.P352576770255971121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167774.P15558136657283396020

`9*A114048(n+1)`
-/

namespace A167774.P15558136657283396020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A114048 (n + 1)

end

end A167774.P15558136657283396020

noncomputable section

/-- A167774: Subsequence of A167708 whose indices are congruent to 1 mod 5, i.e., a(n) = A167708(5*n+1).

Offset 0, canonical program `A167774.P15558136657283396020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167774 (n : ℕ) : ℤ :=
  A167774.P15558136657283396020.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167774.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167820.P10396303190266437

`A167709(5*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167820.P10396303190266437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n)

end

end A167820.P10396303190266437

noncomputable section

/-- A167820: Subsequence of A167709 whose indices are congruent to 0 mod 5, i.e., a(n) = A167709(5*n).

Offset 0, canonical program `A167820.P10396303190266437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167820 (n : ℕ) : ℤ :=
  A167820.P10396303190266437.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167821.P7964156617973824438

`2*A008466(n)`
-/

namespace A167821.P7964156617973824438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008466 n

end

end A167821.P7964156617973824438

noncomputable section

/-- A167821: a(n) is the number of n-tosses having a run of 3 or more heads or a run of 3 or more tails for a fair coin (i.e., probability is a(n)/2^n).

Offset 1, canonical program `A167821.P7964156617973824438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167821 (n : ℕ) : ℤ :=
  A167821.P7964156617973824438.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167822.P18255597860093548566

`A167709(5*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167822.P18255597860093548566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 1)

end

end A167822.P18255597860093548566

noncomputable section

/-- A167822: Subsequence of A167709 whose indices are congruent to 1 mod 5, i.e., a(n) = A167709(5*n+1).

Offset 0, canonical program `A167822.P18255597860093548566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167822 (n : ℕ) : ℤ :=
  A167822.P18255597860093548566.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167822.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167823.P17491243100459834800

`A167709(5*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167823.P17491243100459834800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 2)

end

end A167823.P17491243100459834800

noncomputable section

/-- A167823: Subsequence of A167709 whose indices are congruent to 2 mod 5, i.e., a(n) = A167709(5*n+2).

Offset 0, canonical program `A167823.P17491243100459834800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167823 (n : ℕ) : ℤ :=
  A167823.P17491243100459834800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167824.P17128754098296150390

`A167709(5*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167824.P17128754098296150390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 3)

end

end A167824.P17128754098296150390

noncomputable section

/-- A167824: Subsequence of A167709 whose indices are congruent to 3 mod 5, i.e., a(n) = A167709(5*n+3).

Offset 0, canonical program `A167824.P17128754098296150390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167824 (n : ℕ) : ℤ :=
  A167824.P17128754098296150390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167825.P1033036688345908538

`A167709(5*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167825.P1033036688345908538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 4)

end

end A167825.P1033036688345908538

noncomputable section

/-- A167825: Subsequence of A167709 whose indices are congruent to 4 mod 5, i.e., a(n) = A167709(5*n+4).

Offset 0, canonical program `A167825.P1033036688345908538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167825 (n : ℕ) : ℤ :=
  A167825.P1033036688345908538.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167936.P10180852110118149804

`2^n-A108411(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167936.P10180852110118149804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A108411 n

end

end A167936.P10180852110118149804

noncomputable section

/-- A167936: a(n) = 2^n - A108411(n).

Offset 0, canonical program `A167936.P10180852110118149804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167936 (n : ℕ) : ℤ :=
  A167936.P10180852110118149804.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168052.P6691970129694865005

`A010892(n)/3+2*(-1)^n*(n+1)/3`
-/

namespace A168052.P6691970129694865005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 n : ℚ) / 3 + (2 * (-1) ^ n * (n + 1 : ℤ) : ℚ) / 3

end

end A168052.P6691970129694865005

noncomputable section

/-- A168052: Hankel transform of a Motzkin variant.

Offset 0, canonical program `A168052.P6691970129694865005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168052 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168052.P6691970129694865005.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168061.P11737824638444645668

`A007531(n+3)/A089145(n+1)`
-/

namespace A168061.P11737824638444645668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (n + 3) : ℚ) / (A089145 (n + 1) : ℚ)

end

end A168061.P11737824638444645668

noncomputable section

/-- A168061: Denominator of (n+3) / ((n+2) * (n+1) * n).

Offset 1, canonical program `A168061.P11737824638444645668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168061 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168061.P11737824638444645668.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168072.P9136903090417513791

`3^n*A168071(n)`
-/

namespace A168072.P9136903090417513791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A168071 n

end

end A168072.P9136903090417513791

noncomputable section

/-- A168072: Expansion of (1-27x^2-108x^3)/((1-3x)^2*(1+3x+9x^2)).

Offset 0, canonical program `A168072.P9136903090417513791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168072 (n : ℕ) : ℤ :=
  A168072.P9136903090417513791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168088.P2999246367601181221

`2^A000078(n)`
-/

namespace A168088.P2999246367601181221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000078 n : ℤ)

end

end A168088.P2999246367601181221

noncomputable section

/-- A168088: a(n) = 2^tetranacci(n).

Offset 0, canonical program `A168088.P2999246367601181221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168088.P2999246367601181221.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168089.P13627008311631189801

`2^A001591(n)`
-/

namespace A168089.P13627008311631189801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001591 n : ℤ)

end

end A168089.P13627008311631189801

noncomputable section

/-- A168089: a(n) = 2^pentanacci(n).

Offset 0, canonical program `A168089.P13627008311631189801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168089.P13627008311631189801.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168221.P17159314194095188608

`A006368(A006368(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168221.P17159314194095188608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A006368 n).toNat

end

end A168221.P17159314194095188608

noncomputable section

/-- A168221: a(n) = A006368(A006368(n)).

Offset 0, canonical program `A168221.P17159314194095188608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168221 (n : ℕ) : ℤ :=
  A168221.P17159314194095188608.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168222.P9769663046748618959

`A006369(A006369(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168222.P9769663046748618959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006369 n).toNat

end

end A168222.P9769663046748618959

noncomputable section

/-- A168222: a(n) = A006369(A006369(n)).

Offset 0, canonical program `A168222.P9769663046748618959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168222 (n : ℕ) : ℤ :=
  A168222.P9769663046748618959.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168223.P6736241960057185808

`A006369(n)-A006368(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168223.P6736241960057185808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n - A006368 n

end

end A168223.P6736241960057185808

noncomputable section

/-- A168223: a(n) = A006369(n) - A006368(n).

Offset 0, canonical program `A168223.P6736241960057185808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168223 (n : ℕ) : ℤ :=
  A168223.P6736241960057185808.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168232.P7885086089654887095

`2*A028242(n)`
-/

namespace A168232.P7885086089654887095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028242 n

end

end A168232.P7885086089654887095

noncomputable section

/-- A168232: a(n) = (2*n - 3*(-1)^n - 1)/2.

Offset 1, canonical program `A168232.P7885086089654887095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168232 (n : ℕ) : ℤ :=
  A168232.P7885086089654887095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168278.P80779956992525217

`A168282(n+1)+1`
-/

namespace A168278.P80779956992525217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (n + 1) + 1

end

end A168278.P80779956992525217

noncomputable section

/-- A168278: a(n) = (10*n + 5*(-1)^n + 3)/4.

Offset 1, canonical program `A168278.P80779956992525217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168278 (n : ℕ) : ℤ :=
  A168278.P80779956992525217.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168491.P1156082334228349470

`(-1)^n*A000108(n)`
-/

namespace A168491.P1156082334228349470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000108 n

end

end A168491.P1156082334228349470

noncomputable section

/-- A168491: a(n) = (-1)^n*Catalan(n).

Offset 0, canonical program `A168491.P1156082334228349470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168491 (n : ℕ) : ℤ :=
  A168491.P1156082334228349470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168507.P7360139832923134569

`A006003(n^5)`
-/

namespace A168507.P7360139832923134569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n ^ 5)

end

end A168507.P7360139832923134569

noncomputable section

/-- A168507: a(n) = n^5*(n^10 + 1)/2.

Offset 0, canonical program `A168507.P7360139832923134569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168507 (n : ℕ) : ℤ :=
  A168507.P7360139832923134569.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168597.P15490916615143292873

`A002426(n)²`
-/

namespace A168597.P15490916615143292873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n ^ 2

end

end A168597.P15490916615143292873

noncomputable section

/-- A168597: Squares of the central trinomial coefficients (A002426).

Offset 0, canonical program `A168597.P15490916615143292873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168597 (n : ℕ) : ℤ :=
  A168597.P15490916615143292873.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A169630.P113445014588492800

`n*A007598(n)`
-/

namespace A169630.P113445014588492800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007598 n

end

end A169630.P113445014588492800

noncomputable section

/-- A169630: a(n) = n times the square of Fibonacci(n).

Offset 0, canonical program `A169630.P113445014588492800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169630 (n : ℕ) : ℤ :=
  A169630.P113445014588492800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171378.P8202068084178417597

`(n+1)²-A006046(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171378.P8202068084178417597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A006046 (n + 1)

end

end A171378.P8202068084178417597

noncomputable section

/-- A171378: a(n) = (n+1)^2 - A006046(n+1).

Offset 0, canonical program `A171378.P8202068084178417597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171378 (n : ℕ) : ℤ :=
  A171378.P8202068084178417597.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171507.P13086555374085975948

`A084640(n)-A042948(n)`
-/

namespace A171507.P13086555374085975948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 n - A042948 n

end

end A171507.P13086555374085975948

noncomputable section

/-- A171507: a(n) = (5*2^(n+1)-9-(-1)^n)/6-2*n.

Offset 0, canonical program `A171507.P13086555374085975948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171507 (n : ℕ) : ℤ :=
  A171507.P13086555374085975948.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171522.P16063199169324206122

`A066830(n+1)²`
-/

namespace A171522.P16063199169324206122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066830 (n + 1) ^ 2

end

end A171522.P16063199169324206122

noncomputable section

/-- A171522: Denominator of 1/n^2-1/(n+2)^2.

Offset 0, canonical program `A171522.P16063199169324206122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171522 (n : ℕ) : ℤ :=
  A171522.P16063199169324206122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171621.P19222282852191136

`A061037(n+2)*A010121(n)`
-/

namespace A171621.P19222282852191136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) * A010121 n

end

end A171621.P19222282852191136

noncomputable section

/-- A171621: Numerator of 1/4 - 1/n^2, each fourth term multiplied by 4.

Offset 2, canonical program `A171621.P19222282852191136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171621 (n : ℕ) : ℤ :=
  A171621.P19222282852191136.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171754.P18260183722679767665

`round(sinh(A000040(n+1)))`
-/

namespace A171754.P18260183722679767665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (A000040 (n + 1) : ℝ))

end

end A171754.P18260183722679767665

noncomputable section

/-- A171754: Hyperbolic sine of the prime numbers, rounded to the nearest integer.

Offset 1, canonical program `A171754.P18260183722679767665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171754 (n : ℕ) : ℤ :=
  A171754.P18260183722679767665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171977.P14092944863121073856

`A038712(n+1)+1`
-/

namespace A171977.P14092944863121073856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + 1

end

end A171977.P14092944863121073856

noncomputable section

/-- A171977: a(n) = 2^(k+1) where 2^k is the highest power of 2 dividing n.

Offset 1, canonical program `A171977.P14092944863121073856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171977 (n : ℕ) : ℤ :=
  A171977.P14092944863121073856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172075.P13525443449354109114

`A172118(n)-2*A036464(n+1)`
-/

namespace A172075.P13525443449354109114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172118 n - 2 * A036464 (n + 1)

end

end A172075.P13525443449354109114

noncomputable section

/-- A172075: a(n) = n*(n+1)*(9*n^2 - n - 5)/6.

Offset 0, canonical program `A172075.P13525443449354109114`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(9*n²-n-5)/6` (program `A172075.P17654659069368217073`, by `A172075.P17654659069368217073.correct`). Lean does not check the parsing of the name. -/
def A172075 (n : ℕ) : ℤ :=
  A172075.P13525443449354109114.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(9*n²-n-5)/6` (program `A172075.P17654659069368217073`, by `A172075.P17654659069368217073.correct`). Lean does not check the parsing of the name. -/
def A172075.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A172162.P14221209511065570468

`(A165154(n)+A165155(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172162.P14221209511065570468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165154 n + A165155 n : ℚ) / 2

end

end A172162.P14221209511065570468

noncomputable section

/-- A172162: a(n) = ( A165154(n) + A165155(n) )/2.

Offset 0, canonical program `A172162.P14221209511065570468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172162.P14221209511065570468.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172163.P13458640249589125478

`(A165155(n)-A165154(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172163.P13458640249589125478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165155 n - A165154 n : ℚ) / 2

end

end A172163.P13458640249589125478

noncomputable section

/-- A172163: a(n) = ( A165155(n) - A165154(n) )/2.

Offset 0, canonical program `A172163.P13458640249589125478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172163.P13458640249589125478.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172447.P12575909183800251685

`A172416(2*n+1)`
-/

namespace A172447.P12575909183800251685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 (2 * n + 1)

end

end A172447.P12575909183800251685

noncomputable section

/-- A172447: a(n) = (-1 + 5*2^(2*n + 1) - 3*n)/9.

Offset 0, canonical program `A172447.P12575909183800251685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172447 (n : ℕ) : ℤ :=
  A172447.P12575909183800251685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172481.P16636311317649585292

`A001045(n-1)+2*a(n-1)` with `a(0)=1`
-/

namespace A172481.P16636311317649585292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001045 (n - 1) + 2 * a (n - 1)

end

end A172481.P16636311317649585292

noncomputable section

/-- A172481: a(n) = (3*n*2^n+2^(n+4)+2*(-1)^n)/18.

Offset 0, canonical program `A172481.P16636311317649585292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172481 (n : ℕ) : ℤ :=
  A172481.P16636311317649585292.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172482.P11363485365046249463

`A131941(2*n+2)`
-/

namespace A172482.P11363485365046249463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 (2 * n + 2)

end

end A172482.P11363485365046249463

noncomputable section

/-- A172482: a(n) = (1+n)*(9 + 11*n + 4*n^2)/3.

Offset 0, canonical program `A172482.P11363485365046249463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172482 (n : ℕ) : ℤ :=
  A172482.P11363485365046249463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173072.P15776542700832946734

`A000040(n+1)-2*n`
-/

namespace A173072.P15776542700832946734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (2 * n : ℤ)

end

end A173072.P15776542700832946734

noncomputable section

/-- A173072: n-th prime minus n-th even number.

Offset 1, canonical program `A173072.P15776542700832946734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173072 (n : ℕ) : ℤ :=
  A173072.P15776542700832946734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173114.P6868209317581628192

`2*a(n-1)-A010686(n)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173114.P6868209317581628192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - A010686 n

end

end A173114.P6868209317581628192

noncomputable section

/-- A173114: a(0)=a(1)=1, a(n) = 2*a(n-1)- A010686(n), n>1.

Offset 0, canonical program `A173114.P6868209317581628192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173114 (n : ℕ) : ℤ :=
  A173114.P6868209317581628192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173115.P15177088250404863837

`A132596(2*n)`
-/

namespace A173115.P15177088250404863837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 (2 * n)

end

end A173115.P15177088250404863837

noncomputable section

/-- A173115: a(n) = -(sin(2*n*arccos(sqrt(3))))^2.

Offset 0, canonical program `A173115.P15177088250404863837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173115 (n : ℕ) : ℤ :=
  A173115.P15177088250404863837.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173126.P17860162282996765866

`A173125(n)-A000045(n+1)`
-/

namespace A173126.P17860162282996765866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 n - A000045 (n + 1)

end

end A173126.P17860162282996765866

noncomputable section

/-- A173126: Sum_{k=floor[(n+5)/2] mod 5} C(n,k).

Offset 0, canonical program `A173126.P17860162282996765866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173126 (n : ℕ) : ℤ :=
  A173126.P17860162282996765866.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173433.P8809888979316886333

`(A000045(n+1)+A173432(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173433.P8809888979316886333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) + A173432 (n + 1) : ℚ) / 2

end

end A173433.P8809888979316886333

noncomputable section

/-- A173433: a(n) = (A000045(n)+A173432(n))/2.

Offset 1, canonical program `A173433.P8809888979316886333`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173433 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173433.P8809888979316886333.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173693.P15640502224323147865

`ceil(A107293(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173693.P15640502224323147865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107293 n : ℚ) / 2⌉

end

end A173693.P15640502224323147865

noncomputable section

/-- A173693: a(n) = ceiling(A107293(n)/2).

Offset 0, canonical program `A173693.P15640502224323147865`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173693 (n : ℕ) : ℤ :=
  A173693.P15640502224323147865.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173714.P11236947115911678652

`A000204(n+1)/2+A099837(n+1)/6-1/3`
-/

namespace A173714.P11236947115911678652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) : ℚ) / 2 + (A099837 (n + 1) : ℚ) / 6 - (1 : ℚ) / 3

end

end A173714.P11236947115911678652

noncomputable section

/-- A173714: a(n) = floor(Lucas(n+1)/2), Lucas(n) = A000032(n).

Offset 0, canonical program `A173714.P11236947115911678652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173714.P11236947115911678652.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173989.P10255759146279605812

`log(A173300(n+1))/log(2)`
-/

namespace A173989.P10255759146279605812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A173300 (n + 1) : ℝ) / Real.log (2 : ℝ)

end

end A173989.P10255759146279605812

noncomputable section

/-- A173989: a(n) is the 2-adic valuation of A173300(n).

Offset 1, canonical program `A173989.P10255759146279605812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173989.P10255759146279605812.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174008.P6709864670116437209

`A000040(n+1)+A163300(n+1)`
-/

namespace A174008.P6709864670116437209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A163300 (n + 1)

end

end A174008.P6709864670116437209

noncomputable section

/-- A174008: a(n) = n-th prime plus n-th even nonnegative nonprime.

Offset 1, canonical program `A174008.P6709864670116437209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174008 (n : ℕ) : ℤ :=
  A174008.P6709864670116437209.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174012.P2403212887453053805

`3*A064680(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174012.P2403212887453053805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064680 n

end

end A174012.P2403212887453053805

noncomputable section

/-- A174012: a(n) = 3 * A064680(n).

Offset 0, canonical program `A174012.P2403212887453053805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174012 (n : ℕ) : ℤ :=
  A174012.P2403212887453053805.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174041.P16296558426401425262

`A047243(n+3)`
-/

namespace A174041.P16296558426401425262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 3)

end

end A174041.P16296558426401425262

noncomputable section

/-- A174041: Composites of the form 6n+2 or 6n+3.

Offset 1, canonical program `A174041.P16296558426401425262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174041 (n : ℕ) : ℤ :=
  A174041.P16296558426401425262.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174212.P11329962796631262777

`A006882(n)^A006882(n)`
-/

namespace A174212.P11329962796631262777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) ^ (A006882 n : ℤ)

end

end A174212.P11329962796631262777

noncomputable section

/-- A174212: Ultradoublefactorials: a(n) = (n!!)^(n!!).

Offset 0, canonical program `A174212.P11329962796631262777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174212 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174212.P11329962796631262777.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174554.P964044573545116008

`A003418(n+2)+2`
-/

namespace A174554.P964044573545116008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 2) + 2

end

end A174554.P964044573545116008

noncomputable section

/-- A174554: Smallest k > 2 such that 2|k, 3|k+1, 4|k+2,..., n|k+n-2.

Offset 2, canonical program `A174554.P964044573545116008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174554 (n : ℕ) : ℤ :=
  A174554.P964044573545116008.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174687.P9780258777249550525

`(n+1)*A001764(n)`
-/

namespace A174687.P9780258777249550525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001764 n

end

end A174687.P9780258777249550525

noncomputable section

/-- A174687: Central coefficients T(2n,n) of the Catalan triangle A033184.

Offset 0, canonical program `A174687.P9780258777249550525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174687 (n : ℕ) : ℤ :=
  A174687.P9780258777249550525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174836.P548874784824666408

`3*A113861(n+1)+1`
-/

namespace A174836.P548874784824666408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A113861 (n + 1) + 1

end

end A174836.P548874784824666408

noncomputable section

/-- A174836: a(n) = 1 + ((6*n-1)*2^n + (-1)^n)/3.

Offset 0, canonical program `A174836.P548874784824666408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174836 (n : ℕ) : ℤ :=
  A174836.P548874784824666408.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175110.P3665220089273309715

`8*A219086(n)+1`
-/

namespace A175110.P3665220089273309715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A219086 n + 1

end

end A175110.P3665220089273309715

noncomputable section

/-- A175110: a(n) = ((2*n+1)^4+1)/2.

Offset 0, canonical program `A175110.P3665220089273309715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175110 (n : ℕ) : ℤ :=
  A175110.P3665220089273309715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175322.P16000230983706862446

`A053141(n+1)*A001109(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175322.P16000230983706862446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (n + 1) * A001109 (n + 2)

end

end A175322.P16000230983706862446

noncomputable section

/-- A175322: a(n) = A053141(n)*A001109(n+1) = Sum_{k=A053141(n)+1..A001109(n+1)-1} k.

Offset 1, canonical program `A175322.P16000230983706862446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175322 (n : ℕ) : ℤ :=
  A175322.P16000230983706862446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175395.P17598903217825691316

`2*A007598(n)`
-/

namespace A175395.P17598903217825691316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n

end

end A175395.P17598903217825691316

noncomputable section

/-- A175395: a(n) = 2*Fibonacci(n)^2.

Offset 0, canonical program `A175395.P17598903217825691316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175395 (n : ℕ) : ℤ :=
  A175395.P17598903217825691316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175654.P10714757702589374977

`2*A006138(n)-2^n`
-/

namespace A175654.P10714757702589374977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006138 n - (2 ^ n : ℤ)

end

end A175654.P10714757702589374977

noncomputable section

/-- A175654: Eight bishops and one elephant on a 3 X 3 chessboard. G.f.: (1 - x - x^2)/(1 - 3*x - x^2 + 6*x^3).

Offset 0, canonical program `A175654.P10714757702589374977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175654 (n : ℕ) : ℤ :=
  A175654.P10714757702589374977.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175676.P1891341993679921175

`A008620(n)*A079978(n+1)`
-/

namespace A175676.P1891341993679921175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A079978 (n + 1)

end

end A175676.P1891341993679921175

noncomputable section

/-- A175676: a(n) = binomial(n,3) mod n.

Offset 1, canonical program `A175676.P1891341993679921175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175676 (n : ℕ) : ℤ :=
  A175676.P1891341993679921175.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175676.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175884.P5955673173974396126

`A005843(n)+A057354(n)`
-/

namespace A175884.P5955673173974396126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A057354 n

end

end A175884.P5955673173974396126

noncomputable section

/-- A175884: Numbers that are congruent to {0, 2, 4, 7, 9} mod 12.

Offset 1, canonical program `A175884.P5955673173974396126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175884 (n : ℕ) : ℤ :=
  A175884.P5955673173974396126.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175926.P5638761069667499745

`A000203((n+1)^3)`
-/

namespace A175926.P5638761069667499745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 3)

end

end A175926.P5638761069667499745

noncomputable section

/-- A175926: Sum of divisors of cubes.

Offset 1, canonical program `A175926.P5638761069667499745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175926 (n : ℕ) : ℤ :=
  A175926.P5638761069667499745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176018.P12622215518759670678

`C(A000460(n+4), 3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176018.P12622215518759670678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000460 (n + 4)).toNat 3

end

end A176018.P12622215518759670678

noncomputable section

/-- A176018: a(n) = binomial(A000460(n), 3).

Offset 4, canonical program `A176018.P12622215518759670678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176018 (n : ℕ) : ℤ :=
  (A176018.P12622215518759670678.a (n - 4) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176027.P5107042245820206540

`A001793(n+1)-2^n`
-/

namespace A176027.P5107042245820206540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - (2 ^ n : ℤ)

end

end A176027.P5107042245820206540

noncomputable section

/-- A176027: Binomial transform of A005563.

Offset 0, canonical program `A176027.P5107042245820206540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176027 (n : ℕ) : ℤ :=
  A176027.P5107042245820206540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176031.P11873302326825557356

`(n+1)^A007947(n+1)`
-/

namespace A176031.P11873302326825557356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A007947 (n + 1) : ℤ)

end

end A176031.P11873302326825557356

noncomputable section

/-- A176031: a(n) = n^rad(n).

Offset 1, canonical program `A176031.P11873302326825557356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176031 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176031.P11873302326825557356.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176624.P16337049625333485401

`A000040(n+1)+A038608(n+1)`
-/

namespace A176624.P16337049625333485401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A038608 (n + 1)

end

end A176624.P16337049625333485401

noncomputable section

/-- A176624: a(n) = prime(n) + n*(-1)^n.

Offset 1, canonical program `A176624.P16337049625333485401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176624 (n : ℕ) : ℤ :=
  A176624.P16337049625333485401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176758.P4647366096493658833

`2*A094309(n+3)`
-/

namespace A176758.P4647366096493658833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094309 (n + 3)

end

end A176758.P4647366096493658833

noncomputable section

/-- A176758: a(n) = Sum_{k=0..floor((n-1)/2)} (3^k-1)*binomial(n, 2*k+1).

Offset 3, canonical program `A176758.P4647366096493658833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176758 (n : ℕ) : ℤ :=
  A176758.P4647366096493658833.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177265.P8128628056292383743

`a(n-1)+(n+1)*A000166(n)` with `a(0)=1, a(1)=1`
-/

namespace A177265.P8128628056292383743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000166 n

end

end A177265.P8128628056292383743

noncomputable section

/-- A177265: Number of permutations of {1,2,...,n} having exactly one string of consecutive fixed points (including singletons).

Offset 1, canonical program `A177265.P8128628056292383743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177265 (n : ℕ) : ℤ :=
  A177265.P8128628056292383743.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177456.P6663241461723531709

`(n+1)*A177234(n+2)`
-/

namespace A177456.P6663241461723531709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A177234 (n + 2)

end

end A177456.P6663241461723531709

noncomputable section

/-- A177456: a(n) = binomial(n^2,n+1)/n.

Offset 2, canonical program `A177456.P6663241461723531709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177456 (n : ℕ) : ℤ :=
  A177456.P6663241461723531709.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177788.P1309928515328305027

`(n+2)*A177234(n+2)`
-/

namespace A177788.P1309928515328305027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A177234 (n + 2)

end

end A177788.P1309928515328305027

noncomputable section

/-- A177788: a(n) = binomial(n^2, n+1)/(n-1).

Offset 2, canonical program `A177788.P1309928515328305027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177788 (n : ℕ) : ℤ :=
  A177788.P1309928515328305027.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177795.P10719503522809026642

`2^(n+1)-A049856(n+4)`
-/

namespace A177795.P10719503522809026642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A049856 (n + 4)

end

end A177795.P10719503522809026642

noncomputable section

/-- A177795: Number of length n binary words that have at least one maximal run of 1's having length two.

Offset 1, canonical program `A177795.P10719503522809026642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177795 (n : ℕ) : ℤ :=
  A177795.P10719503522809026642.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178142.P4447128767071927501

`A010673(n)+A021337(n)`
-/

namespace A178142.P4447128767071927501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A021337 n

end

end A178142.P4447128767071927501

noncomputable section

/-- A178142: Sum over the divisors d = 2 and/or 3 of n.

Offset 1, canonical program `A178142.P4447128767071927501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178142 (n : ℕ) : ℤ :=
  A178142.P4447128767071927501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178312.P17701900749152698981

`n*A000217(A110654(n))`
-/

namespace A178312.P17701900749152698981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A110654 n).toNat

end

end A178312.P17701900749152698981

noncomputable section

/-- A178312: a(n) = n * T(ceiling(n/2)), where T are the triangular numbers, A000217.

Offset 0, canonical program `A178312.P17701900749152698981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178312 (n : ℕ) : ℤ :=
  A178312.P17701900749152698981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178370.P6190570086360895808

`A178242(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178370.P6190570086360895808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 (3 * n + 2)

end

end A178370.P6190570086360895808

noncomputable section

/-- A178370: The trisection A178242(3n+2).

Offset 0, canonical program `A178370.P6190570086360895808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178370 (n : ℕ) : ℤ :=
  A178370.P6190570086360895808.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178523.P10038394558862016635

`2*A006478(n+1)`
-/

namespace A178523.P10038394558862016635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006478 (n + 1)

end

end A178523.P10038394558862016635

noncomputable section

/-- A178523: The path length of the Fibonacci tree of order n.

Offset 0, canonical program `A178523.P10038394558862016635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178523 (n : ℕ) : ℤ :=
  A178523.P10038394558862016635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178630.P8228154791409845847

`((A002276(n)*10+1)*10^n+A002281(n))*10+8`
-/

namespace A178630.P8228154791409845847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002276 n * 10 + 1) * (10 ^ n : ℤ) + A002281 n) * 10 + 8

end

end A178630.P8228154791409845847

noncomputable section

/-- A178630: a(n) = 18*((10^n - 1)/9)^2.

Offset 1, canonical program `A178630.P8228154791409845847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178630 (n : ℕ) : ℤ :=
  A178630.P8228154791409845847.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178631.P10205965919072706542

`((A002277(n)*10+2)*10^n+A002280(n))*10+7`
-/

namespace A178631.P10205965919072706542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002277 n * 10 + 2) * (10 ^ n : ℤ) + A002280 n) * 10 + 7

end

end A178631.P10205965919072706542

noncomputable section

/-- A178631: a(n) = 27*((10^n - 1)/9)^2.

Offset 1, canonical program `A178631.P10205965919072706542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178631 (n : ℕ) : ℤ :=
  A178631.P10205965919072706542.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178632.P9409455296089398004

`(A002279(n)*10^(n+1)+A002278(n+1))*10+5`
-/

namespace A178632.P9409455296089398004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002279 n * (10 ^ (n + 1) : ℤ) + A002278 (n + 1)) * 10 + 5

end

end A178632.P9409455296089398004

noncomputable section

/-- A178632: a(n) = 45*((10^n - 1)/9)^2.

Offset 1, canonical program `A178632.P9409455296089398004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178632 (n : ℕ) : ℤ :=
  A178632.P9409455296089398004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178633.P4454025448965253150

`((A002280(n)*10+5)*10^n+A002277(n))*10+4`
-/

namespace A178633.P4454025448965253150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002280 n * 10 + 5) * (10 ^ n : ℤ) + A002277 n) * 10 + 4

end

end A178633.P4454025448965253150

noncomputable section

/-- A178633: a(n) = 54*((10^n - 1)/9)^2.

Offset 1, canonical program `A178633.P4454025448965253150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178633 (n : ℕ) : ℤ :=
  A178633.P4454025448965253150.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178634.P7265615430456287864

`((A002281(n)*10+6)*10^n+A002276(n))*10+3`
-/

namespace A178634.P7265615430456287864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002281 n * 10 + 6) * (10 ^ n : ℤ) + A002276 n) * 10 + 3

end

end A178634.P7265615430456287864

noncomputable section

/-- A178634: a(n) = 63*((10^n - 1)/9)^2.

Offset 1, canonical program `A178634.P7265615430456287864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178634 (n : ℕ) : ℤ :=
  A178634.P7265615430456287864.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178635.P7995468334030923801

`((A002282(n)*10+7)*10^n+A002275(n))*10+2`
-/

namespace A178635.P7995468334030923801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002282 n * 10 + 7) * (10 ^ n : ℤ) + A002275 n) * 10 + 2

end

end A178635.P7995468334030923801

noncomputable section

/-- A178635: a(n) = 72*((10^n - 1)/9)^2.

Offset 1, canonical program `A178635.P7995468334030923801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178635 (n : ℕ) : ℤ :=
  A178635.P7995468334030923801.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178808.P4383453861225710956

`(6*A001850(n+1)*A001850(n)-A001850(n+1)²-A001850(n)²)/8`
-/

namespace A178808.P4383453861225710956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A001850 (n + 1) * A001850 n - A001850 (n + 1) ^ 2 - A001850 n ^ 2 : ℚ) / 8

end

end A178808.P4383453861225710956

noncomputable section

/-- A178808: a(n) = (1/n^2) * Sum_{k = 0..n-1} (2*k+1)*(D_k)^2, where D_0, D_1, ... are central Delannoy numbers given by A001850.

Offset 1, canonical program `A178808.P4383453861225710956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178808 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178808.P4383453861225710956.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178855.P7616249228420714047

`(A033485(2*(n+1)+1)-1)/2`
-/

namespace A178855.P7616249228420714047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033485 (2 * (n + 1) + 1) - 1 : ℚ) / 2

end

end A178855.P7616249228420714047

noncomputable section

/-- A178855: Partial sums of A033485.

Offset 1, canonical program `A178855.P7616249228420714047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178855 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178855.P7616249228420714047.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178981.P9400766510582345247

`2^A003418(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178981.P9400766510582345247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003418 n : ℤ)

end

end A178981.P9400766510582345247

noncomputable section

/-- A178981: a(n) = 2^A003418(n); for n >= 1, the least number > 1 that can be expressed simultaneously as a k-th power of some integer for all 1 <= k <= n.

Offset 0, canonical program `A178981.P9400766510582345247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178981 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178981.P9400766510582345247.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179089.P17028568044351276168

`(A002426(n+1)+A002426(n))*(3*A002426(n)-A002426(n+1))/4`
-/

namespace A179089.P17028568044351276168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002426 (n + 1) + A002426 n) * (3 * A002426 n - A002426 (n + 1)) : ℚ) / 4

end

end A179089.P17028568044351276168

noncomputable section

/-- A179089: a(n) = (1/n^2) * Sum_{k=0..n-1} (2k+1)*T_k^2(-3)^(n-1-k), where T_0, T_1, ... are central trinomial coefficients given by A002426.

Offset 1, canonical program `A179089.P17028568044351276168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179089.P17028568044351276168.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179125.P9568614675191718862

`A000037(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179125.P9568614675191718862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) ^ 3

end

end A179125.P9568614675191718862

noncomputable section

/-- A179125: a(n) = A000037(n)^3.

Offset 1, canonical program `A179125.P9568614675191718862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179125 (n : ℕ) : ℤ :=
  A179125.P9568614675191718862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179135.P12389729081759109058

`A178381(4*n+3)`
-/

namespace A179135.P12389729081759109058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (4 * n + 3)

end

end A179135.P12389729081759109058

noncomputable section

/-- A179135: a(n) = (3-sqrt(5))*((3+sqrt(5))/10)^(-n)/2 + (3+sqrt(5))*((3-sqrt(5))/10)^(-n)/2.

Offset 0, canonical program `A179135.P12389729081759109058`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179135 (n : ℕ) : ℤ :=
  A179135.P12389729081759109058.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179237.P6821180634810169376

`A005668(n)+A015451(n)`
-/

namespace A179237.P6821180634810169376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 n + A015451 n

end

end A179237.P6821180634810169376

noncomputable section

/-- A179237: a(0) = 1, a(1) = 2; a(n+1) = 6*a(n) + a(n-1) for n>1.

Offset 0, canonical program `A179237.P6821180634810169376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179237 (n : ℕ) : ℤ :=
  A179237.P6821180634810169376.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179545.P2130774823130393985

`3*A000040(n+1)*(A000040(n+1)-1)/2`
-/

namespace A179545.P2130774823130393985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000040 (n + 1) * (A000040 (n + 1) - 1) : ℚ) / 2

end

end A179545.P2130774823130393985

noncomputable section

/-- A179545: The sum of the elements within a jump in a Sieve of Eratosthenes table.

Offset 1, canonical program `A179545.P2130774823130393985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179545 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179545.P2130774823130393985.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179645.P9823570256898303870

`A000040(n+1)^8`
-/

namespace A179645.P9823570256898303870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 8

end

end A179645.P9823570256898303870

noncomputable section

/-- A179645: a(n) = prime(n)^8.

Offset 1, canonical program `A179645.P9823570256898303870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179645 (n : ℕ) : ℤ :=
  A179645.P9823570256898303870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179665.P967492933399289079

`A000040(n+1)^9`
-/

namespace A179665.P967492933399289079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 9

end

end A179665.P967492933399289079

noncomputable section

/-- A179665: a(n) = prime(n)^9.

Offset 1, canonical program `A179665.P967492933399289079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179665 (n : ℕ) : ℤ :=
  A179665.P967492933399289079.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179753.P14864369555432723012

`2*A000194(n+1)-A074294(n+1)`
-/

namespace A179753.P14864369555432723012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000194 (n + 1) - A074294 (n + 1)

end

end A179753.P14864369555432723012

noncomputable section

/-- A179753: Integers (2k)-1..0 followed by integers (2k)+1..0 and so on.

Offset 1, canonical program `A179753.P14864369555432723012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179753 (n : ℕ) : ℤ :=
  A179753.P14864369555432723012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180000.P9582620330911628146

`A003418(n)/A056040(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180000.P9582620330911628146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A056040 n : ℚ)

end

end A180000.P9582620330911628146

noncomputable section

/-- A180000: a(n) = lcm{1,2,...,n} / swinging_factorial(n) = A003418(n) / A056040(n).

Offset 0, canonical program `A180000.P9582620330911628146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180000 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180000.P9582620330911628146.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180017.P1955405444060819929

`A011371(n)-2*A054861(n)`
-/

namespace A180017.P1955405444060819929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - 2 * A054861 n

end

end A180017.P1955405444060819929

noncomputable section

/-- A180017: Difference of sums of digits of n in ternary and in binary.

Offset 0, canonical program `A180017.P1955405444060819929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180017 (n : ℕ) : ℤ :=
  A180017.P1955405444060819929.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180119.P7712605466301032233

`A000142(n)*A000217(n)`
-/

namespace A180119.P7712605466301032233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000217 n

end

end A180119.P7712605466301032233

noncomputable section

/-- A180119: a(n) = (n+2)! * Sum_{k = 1..n} 1/((k+1)*(k+2)).

Offset 0, canonical program `A180119.P7712605466301032233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180119 (n : ℕ) : ℤ :=
  A180119.P7712605466301032233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180153.P10697429087781370174

`10*a(n-1)+A109242(n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180153.P10697429087781370174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + A109242 n

end

end A180153.P10697429087781370174

noncomputable section

/-- A180153: a(n) = 10*a(n-1) + A109242(n).

Offset 1, canonical program `A180153.P10697429087781370174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180153 (n : ℕ) : ℤ :=
  A180153.P10697429087781370174.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180170.P8442958474247998015

`n!*A003418(n)`
-/

namespace A180170.P8442958474247998015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003418 n

end

end A180170.P8442958474247998015

noncomputable section

/-- A180170: a(0) = 1, a(n) = n*a(n-1)*A014963(n).

Offset 0, canonical program `A180170.P8442958474247998015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180170 (n : ℕ) : ℤ :=
  A180170.P8442958474247998015.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180191.P1102953380152495368

`A002467(n+1)-A000166(n)`
-/

namespace A180191.P1102953380152495368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 1) - A000166 n

end

end A180191.P1102953380152495368

noncomputable section

/-- A180191: Number of permutations of [n] having at least one succession. A succession of a permutation p is a position i such that p(i+1)-p(i) = 1.

Offset 1, canonical program `A180191.P1102953380152495368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180191 (n : ℕ) : ℤ :=
  A180191.P1102953380152495368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180218.P2308509609643463431

`(n+1)*(n+2)*A000254(n)`
-/

namespace A180218.P2308509609643463431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) * A000254 n

end

end A180218.P2308509609643463431

noncomputable section

/-- A180218: a(n) = (n+2)! * Sum_{k=1..n} 1/k.

Offset 0, canonical program `A180218.P2308509609643463431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180218 (n : ℕ) : ℤ :=
  A180218.P2308509609643463431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180224.P15208035443506619355

`A103762(a(n-1)+1)` with `a(0)=1`
-/

namespace A180224.P15208035443506619355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103762 (a (n - 1) + 1).toNat

end

end A180224.P15208035443506619355

noncomputable section

/-- A180224: a(n+1) is the least k such that 1/(a(n)+1) + 1/(a(n)+2) + ... + 1/k > 1, with a(1) = 1.

Offset 1, canonical program `A180224.P15208035443506619355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180224 (n : ℕ) : ℤ :=
  A180224.P15208035443506619355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180282.P6030147663920471768

`A002426(n+2)-1`
-/

namespace A180282.P6030147663920471768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 2) - 1

end

end A180282.P6030147663920471768

noncomputable section

/-- A180282: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 2.

Offset 2, canonical program `A180282.P6030147663920471768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180282 (n : ℕ) : ℤ :=
  A180282.P6030147663920471768.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180353.P1035985859442097278

`A000312(n+1)*A000040(n+1)`
-/

namespace A180353.P1035985859442097278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) * A000040 (n + 1)

end

end A180353.P1035985859442097278

noncomputable section

/-- A180353: a(n) = n^n * prime(n).

Offset 1, canonical program `A180353.P1035985859442097278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180353 (n : ℕ) : ℤ :=
  A180353.P1035985859442097278.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180363.P17041838073704525923

`A000032(A000040(n+1))`
-/

namespace A180363.P17041838073704525923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000040 (n + 1)).toNat

end

end A180363.P17041838073704525923

noncomputable section

/-- A180363: a(n) = Lucas(prime(n)).

Offset 1, canonical program `A180363.P17041838073704525923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180363 (n : ℕ) : ℤ :=
  A180363.P17041838073704525923.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180589.P1957697358356188444

`(A000254(n+1)-A061006(n+1))/(n+1)`
-/

namespace A180589.P1957697358356188444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) - A061006 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A180589.P1957697358356188444

noncomputable section

/-- A180589: a(n) = floor(n!*h(n)/n), where h(n) = Sum_{k=1..n} 1/k.

Offset 1, canonical program `A180589.P1957697358356188444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180589 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180589.P1957697358356188444.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180670.P6737041665798080008

`a(n-1)+A001590(n+7)-(12+4*n+4*n²)` with `a(0)=0`
-/

namespace A180670.P6737041665798080008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001590 (n + 7) - (12 + 4 * n + 4 * n ^ 2 : ℤ)

end

end A180670.P6737041665798080008

noncomputable section

/-- A180670: a(n) = a(n-1)+a(n-2)+a(n-3)+(8*n^3-48*n^2+112*n-96)/3 with a(0)=0, a(1)=0 and a(2)=1.

Offset 0, canonical program `A180670.P6737041665798080008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180670 (n : ℕ) : ℤ :=
  A180670.P6737041665798080008.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180713.P7632895049826476937

`A131743(n)+3*n`
-/

namespace A180713.P7632895049826476937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 n + (3 * n : ℤ)

end

end A180713.P7632895049826476937

noncomputable section

/-- A180713: If n is even then a(n) = 3n, if n == 1 mod 4 then a(n) = 3n+1, if n == 3 mod 4 then a(n) = 3n+2.

Offset 0, canonical program `A180713.P7632895049826476937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180713 (n : ℕ) : ℤ :=
  A180713.P7632895049826476937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180966.P14804889782384738041

`2^(n*(n-1)/2)*A007070(n)`
-/

namespace A180966.P14804889782384738041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) * (A007070 n : ℝ)

end

end A180966.P14804889782384738041

noncomputable section

/-- A180966: Hankel transform of A123164.

Offset 0, canonical program `A180966.P14804889782384738041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180966 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180966.P14804889782384738041.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181133.P3977381246546319106

`n+1+A003056(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181133.P3977381246546319106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003056 (n + 1)

end

end A181133.P3977381246546319106

noncomputable section

/-- A181133: a(n) = n + A003056(n).

Offset 1, canonical program `A181133.P3977381246546319106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181133 (n : ℕ) : ℤ :=
  A181133.P3977381246546319106.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181359.P15602091966244308938

`A000035(a(n-1)+a(A000196(n+1)-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A181359.P15602091966244308938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A000035 (a (n - 1) + a (A000196 (n + 1) - 1).toNat).toNat

end

end A181359.P15602091966244308938

noncomputable section

/-- A181359: a(1)=1. After that, a(n) = a(n-1) XOR a(floor(sqrt(n))).

Offset 1, canonical program `A181359.P15602091966244308938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181359 (n : ℕ) : ℤ :=
  A181359.P15602091966244308938.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181510.P12708566249263007351

`2*A014209(n+1)`
-/

namespace A181510.P12708566249263007351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014209 (n + 1)

end

end A181510.P12708566249263007351

noncomputable section

/-- A181510: Number of permutations of the multiset {1,1,2,2,3,3,...,n+1,n+1} avoiding the permutation patterns {132, 231, 2134}.

Offset 1, canonical program `A181510.P12708566249263007351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181510 (n : ℕ) : ℤ :=
  A181510.P12708566249263007351.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181569.P12799232397946313634

`(n+2)/A014973(n+2)`
-/

namespace A181569.P12799232397946313634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A014973 (n + 2) : ℚ)

end

end A181569.P12799232397946313634

noncomputable section

/-- A181569: Greatest common divisor of n! and n+1.

Offset 1, canonical program `A181569.P12799232397946313634`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181569.P12799232397946313634.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181618.P11863935237551342240

`3^(n+1)-3*A002426(n+1)`
-/

namespace A181618.P11863935237551342240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - 3 * A002426 (n + 1)

end

end A181618.P11863935237551342240

noncomputable section

/-- A181618: Number of n-game win/loss/draw series that contain at least one dead game.

Offset 1, canonical program `A181618.P11863935237551342240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181618 (n : ℕ) : ℤ :=
  A181618.P11863935237551342240.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181719.P3652433551893555141

`A133473(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181719.P3652433551893555141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 (n + 1) ^ 2

end

end A181719.P3652433551893555141

noncomputable section

/-- A181719: a(n) = A133473(n+1)^2.

Offset 1, canonical program `A181719.P3652433551893555141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181719 (n : ℕ) : ℤ :=
  A181719.P3652433551893555141.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181763.P14779170359321932747

`A061037(n+2)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181763.P14779170359321932747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) ^ 2

end

end A181763.P14779170359321932747

noncomputable section

/-- A181763: a(n) = A061037(n)^2.

Offset 2, canonical program `A181763.P14779170359321932747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181763 (n : ℕ) : ℤ :=
  A181763.P14779170359321932747.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181860.P3820670353524876626

`lcm(A000290(n), A056040(n))`
-/

namespace A181860.P3820670353524876626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 n) (A056040 n)

end

end A181860.P3820670353524876626

noncomputable section

/-- A181860: a(n) = lcm(n^2, swinging_factorial(n)).

Offset 0, canonical program `A181860.P3820670353524876626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181860 (n : ℕ) : ℤ :=
  (A181860.P3820670353524876626.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181892.P2473477457107646532

`A139174(n+4)²`
-/

namespace A181892.P2473477457107646532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139174 (n + 4) ^ 2

end

end A181892.P2473477457107646532

noncomputable section

/-- A181892: a(n) = (n!/4-1)^2.

Offset 4, canonical program `A181892.P2473477457107646532`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181892 (n : ℕ) : ℤ :=
  A181892.P2473477457107646532.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181984.P13479675070080437777

`A034943(n+2)`
-/

namespace A181984.P13479675070080437777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 2)

end

end A181984.P13479675070080437777

noncomputable section

/-- A181984: INVERT transform of A028310.

Offset 0, canonical program `A181984.P13479675070080437777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181984 (n : ℕ) : ℤ :=
  A181984.P13479675070080437777.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182028.P14679133625633371517

`2*a(n-1)+A003849(n)` with `a(0)=0`
-/

namespace A182028.P14679133625633371517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A003849 n

end

end A182028.P14679133625633371517

noncomputable section

/-- A182028: Take first n bits of the infinite Fibonacci word A003849, regard them as a binary number, then convert it to base 10.

Offset 0, canonical program `A182028.P14679133625633371517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182028 (n : ℕ) : ℤ :=
  A182028.P14679133625633371517.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182149.P944538646474166194

`A000045(A000578(n))`
-/

namespace A182149.P944538646474166194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000578 n).toNat

end

end A182149.P944538646474166194

noncomputable section

/-- A182149: a(n) = Fibonacci(n^3).

Offset 0, canonical program `A182149.P944538646474166194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182149 (n : ℕ) : ℤ :=
  A182149.P944538646474166194.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182212.P16253075558844481521

`floor(A000142(n+1)/A000045(n+1))`
-/

namespace A182212.P16253075558844481521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)⌋

end

end A182212.P16253075558844481521

noncomputable section

/-- A182212: a(n) = floor(n! / Fibonacci(n)).

Offset 1, canonical program `A182212.P16253075558844481521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182212 (n : ℕ) : ℤ :=
  A182212.P16253075558844481521.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182778.P1616150781796186047

`3*(n+1)+A022838(n+1)`
-/

namespace A182778.P1616150781796186047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + A022838 (n + 1)

end

end A182778.P1616150781796186047

noncomputable section

/-- A182778: Beatty sequence for 3 + sqrt(3).

Offset 1, canonical program `A182778.P1616150781796186047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182778 (n : ℕ) : ℤ :=
  A182778.P1616150781796186047.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182890.P1146056889706245791

`(A000045(2*n+2)-(-1)^n*A010892(n))/4`
-/

namespace A182890.P1146056889706245791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 2) - (-1) ^ n * A010892 n : ℚ) / 4

end

end A182890.P1146056889706245791

noncomputable section

/-- A182890: Number of (1,0)-steps of weight 1 at level 0 in all weighted lattice paths in L_n.

Offset 0, canonical program `A182890.P1146056889706245791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182890 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182890.P1146056889706245791.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182895.P10123971015645176101

`(A000032(2*n+1)-A010892(2*n))/4`
-/

namespace A182895.P10123971015645176101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) - A010892 (2 * n) : ℚ) / 4

end

end A182895.P10123971015645176101

noncomputable section

/-- A182895: Number of (1,0)-steps at level 0 in all weighted lattice paths in L_n.

Offset 0, canonical program `A182895.P10123971015645176101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182895.P10123971015645176101.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183294.P2707416302761019771

`n+1+A180447(n)`
-/

namespace A183294.P2707416302761019771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A180447 n

end

end A183294.P2707416302761019771

noncomputable section

/-- A183294: Complement of A005449.

Offset 1, canonical program `A183294.P2707416302761019771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183294 (n : ℕ) : ℤ :=
  A183294.P2707416302761019771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183299.P11168409399824116378

`A000037(n+1)-1`
-/

namespace A183299.P11168409399824116378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) - 1

end

end A183299.P11168409399824116378

noncomputable section

/-- A183299: Complement of A005563.

Offset 1, canonical program `A183299.P11168409399824116378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183299 (n : ℕ) : ℤ :=
  A183299.P11168409399824116378.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184337.P6368528835179303585

`A059482(n)*A002283(n)`
-/

namespace A184337.P6368528835179303585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n * A002283 n

end

end A184337.P6368528835179303585

noncomputable section

/-- A184337: a(n) is the integer whose decimal representation consists of n 8's followed by n 1's.

Offset 0, canonical program `A184337.P6368528835179303585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184337 (n : ℕ) : ℤ :=
  A184337.P6368528835179303585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184387.P7123974566523732080

`A000217(A000203(n+1))`
-/

namespace A184387.P7123974566523732080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat

end

end A184387.P7123974566523732080

noncomputable section

/-- A184387: a(n) = sum of numbers from 1 to sigma(n), where sigma(n) = A000203(n).

Offset 1, canonical program `A184387.P7123974566523732080`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184387 (n : ℕ) : ℤ :=
  A184387.P7123974566523732080.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184388.P14157118067265196798

`A000203(n+1)!`
-/

namespace A184388.P14157118067265196798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000203 (n + 1)).toNat

end

end A184388.P14157118067265196798

noncomputable section

/-- A184388: a(n) = product of numbers from 1 to sigma(n), where sigma(n) = A000203(n).

Offset 1, canonical program `A184388.P14157118067265196798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184388 (n : ℕ) : ℤ :=
  (A184388.P14157118067265196798.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184617.P6500714334577552436

`A178729(n)/2`
-/

namespace A184617.P6500714334577552436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178729 n : ℚ) / 2

end

end A184617.P6500714334577552436

noncomputable section

/-- A184617: With nonadjacent forms: A184615(n) + A184616(n).

Offset 0, canonical program `A184617.P6500714334577552436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184617.P6500714334577552436.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185039.P4008326806517723638

`A004526(n+1)*A156638(n+1)`
-/

namespace A185039.P4008326806517723638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A156638 (n + 1)

end

end A185039.P4008326806517723638

noncomputable section

/-- A185039: Numbers of the form 9*m^2 + 4*m, m an integer.

Offset 1, canonical program `A185039.P4008326806517723638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185039 (n : ℕ) : ℤ :=
  A185039.P4008326806517723638.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185113.P14775528151376410648

`C(n+2, 2)*A000260(n)`
-/

namespace A185113.P14775528151376410648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A000260 n

end

end A185113.P14775528151376410648

noncomputable section

/-- A185113: Number of dissections of a convex (3n+3)-sided polygon into n pentagons and one triangle (up to equivalence).

Offset 0, canonical program `A185113.P14775528151376410648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185113 (n : ℕ) : ℤ :=
  A185113.P14775528151376410648.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185192.P5848289516990491153

`A000720(2^(n+1)-1)`
-/

namespace A185192.P5848289516990491153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 ^ (n + 1) - 1)

end

end A185192.P5848289516990491153

noncomputable section

/-- A185192: Number of primes less than 2^n.

Offset 1, canonical program `A185192.P5848289516990491153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185192 (n : ℕ) : ℤ :=
  A185192.P5848289516990491153.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185542.P16826996703818466053

`A000217(A155013(n+1))`
-/

namespace A185542.P16826996703818466053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A155013 (n + 1)).toNat

end

end A185542.P16826996703818466053

noncomputable section

/-- A185542: a(n) = m*(m+1)/2, where m = floor(n^(5/2)).

Offset 1, canonical program `A185542.P16826996703818466053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185542 (n : ℕ) : ℤ :=
  A185542.P16826996703818466053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185970.P13347069573920601442

`2^C(n, 2)*A001710(n+2)`
-/

namespace A185970.P13347069573920601442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) * A001710 (n + 2)

end

end A185970.P13347069573920601442

noncomputable section

/-- A185970: a(n) = 2^((n^2-n-2)/2)*(n+2)!

Offset 0, canonical program `A185970.P13347069573920601442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185970 (n : ℕ) : ℤ :=
  A185970.P13347069573920601442.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186196.P14794759112543715371

`(-1)^n*(-2)^C(n, 2)*A001045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186196.P14794759112543715371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (-2) ^ Nat.choose n 2 * A001045 (n + 1)

end

end A186196.P14794759112543715371

noncomputable section

/-- A186196: a(n)=(-1)^n*(-2)^C(n,2)*A001045(n+1).

Offset 0, canonical program `A186196.P14794759112543715371`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(-2)^C(n, 2)*A001045(n+1)` (program `A186196.P14794759112543715371`, by `A186196.P14794759112543715371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A186196 (n : ℕ) : ℤ :=
  A186196.P14794759112543715371.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(-2)^C(n, 2)*A001045(n+1)` (program `A186196.P14794759112543715371`, by `A186196.P14794759112543715371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A186196.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A186244.P14326985804142618526

`3^n-A028859(n)`
-/

namespace A186244.P14326985804142618526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A028859 n

end

end A186244.P14326985804142618526

noncomputable section

/-- A186244: Number of ternary strings of length n containing 00.

Offset 0, canonical program `A186244.P14326985804142618526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186244 (n : ℕ) : ℤ :=
  A186244.P14326985804142618526.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186266.P11491383351930044938

`3*A000108(n)*A000108(n+1)*(n+1)/(n+3)`
-/

namespace A186266.P11491383351930044938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000108 n * A000108 (n + 1) * (n + 1 : ℤ) : ℚ) / (n + 3 : ℚ)

end

end A186266.P11491383351930044938

noncomputable section

/-- A186266: Expansion of 2F1( 1/2, 3/2; 4; 16*x ).

Offset 0, canonical program `A186266.P11491383351930044938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186266.P11491383351930044938.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186314.P17552666734171357615

`3^n-A001906(n+1)`
-/

namespace A186314.P17552666734171357615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A001906 (n + 1)

end

end A186314.P17552666734171357615

noncomputable section

/-- A186314: Number of ternary strings of length n which contain 01.

Offset 0, canonical program `A186314.P17552666734171357615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186314 (n : ℕ) : ℤ :=
  A186314.P17552666734171357615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186340.P3689441549172991547

`2^A001840(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186340.P3689441549172991547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001840 n : ℤ)

end

end A186340.P3689441549172991547

noncomputable section

/-- A186340: a(n) = 2^A001840(n).

Offset 0, canonical program `A186340.P3689441549172991547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186340.P3689441549172991547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186415.P15094829752616771025

`A000888(n)*A000984(n)`
-/

namespace A186415.P15094829752616771025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000888 n * A000984 n

end

end A186415.P15094829752616771025

noncomputable section

/-- A186415: a(n) = binomial(2n,n)^3/(n+1).

Offset 0, canonical program `A186415.P15094829752616771025`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186415 (n : ℕ) : ℤ :=
  A186415.P15094829752616771025.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186416.P3937847066975652994

`A000108(n)^3*A000984(n)`
-/

namespace A186416.P3937847066975652994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 3 * A000984 n

end

end A186416.P3937847066975652994

noncomputable section

/-- A186416: a(n) = binomial(2n,n)^4/(n+1)^3.

Offset 0, canonical program `A186416.P3937847066975652994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186416 (n : ℕ) : ℤ :=
  A186416.P3937847066975652994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186422.P9834622977751955722

`A186421(n+1)-A186421(n)`
-/

namespace A186422.P9834622977751955722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (n + 1) - A186421 n

end

end A186422.P9834622977751955722

noncomputable section

/-- A186422: First differences of A186421.

Offset 0, canonical program `A186422.P9834622977751955722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186422 (n : ℕ) : ℤ :=
  A186422.P9834622977751955722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186423.P7734216048992605812

`(6*n*(n+1)+3+(-1)^n*(2*n+1)-4*A087960(n))/16`
-/

namespace A186423.P7734216048992605812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n * (n + 1) + 3 : ℤ) + (-1) ^ n * (2 * n + 1 : ℤ) - 4 * A087960 n : ℚ) / 16

end

end A186423.P7734216048992605812

noncomputable section

/-- A186423: Partial sums of A186421.

Offset 0, canonical program `A186423.P7734216048992605812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186423.P7734216048992605812.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186763.P4441082643897295989

`(A000522(n)-A000166(n))/2`
-/

namespace A186763.P4441082643897295989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n - A000166 n : ℚ) / 2

end

end A186763.P4441082643897295989

noncomputable section

/-- A186763: Number of increasing odd cycles in all permutations of {1,2,...,n}.

Offset 0, canonical program `A186763.P4441082643897295989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186763.P4441082643897295989.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186813.P16316920745608396461

`A134172(n)+A134172(n+1)`
-/

namespace A186813.P16316920745608396461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 n + A134172 (n + 1)

end

end A186813.P16316920745608396461

noncomputable section

/-- A186813: a(n) = n if n odd, a(2n) = 3n if n odd, a(4n) = 2n.

Offset 0, canonical program `A186813.P16316920745608396461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186813 (n : ℕ) : ℤ :=
  A186813.P16316920745608396461.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187044.P16714071663709978981

`A193361(n+2)`
-/

namespace A187044.P16714071663709978981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2)

end

end A187044.P16714071663709978981

noncomputable section

/-- A187044: Row sums of number triangle A070895.

Offset 0, canonical program `A187044.P16714071663709978981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187044 (n : ℕ) : ℤ :=
  A187044.P16714071663709978981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187093.P8635450470421443308

`(n²-1+(-1)^floor(n/2)*A000034(n))/2`
-/

namespace A187093.P8635450470421443308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 1 : ℚ) + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A000034 n : ℚ)) / 2

end

end A187093.P8635450470421443308

noncomputable section

/-- A187093: a(0)=0, a(1)=a(2)=1; thereafter, a(n+1) = n^2 - a(n-1).

Offset 0, canonical program `A187093.P8635450470421443308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187093.P8635450470421443308.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187131.P9181800046760726140

`A076628(n+1)²`
-/

namespace A187131.P9181800046760726140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076628 (n + 1) ^ 2

end

end A187131.P9181800046760726140

noncomputable section

/-- A187131: Numerator of probability that the height of a rooted random binary tree is n.

Offset 0, canonical program `A187131.P9181800046760726140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187131 (n : ℕ) : ℤ :=
  A187131.P9181800046760726140.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187284.P2001770761397353711

`round(log(A003418(n)))-n`
-/

namespace A187284.P2001770761397353711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A003418 n : ℝ)) - (n : ℤ)

end

end A187284.P2001770761397353711

noncomputable section

/-- A187284: a(n) = round(log(lcm(1,...,n))) - n.

Offset 0, canonical program `A187284.P2001770761397353711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187284 (n : ℕ) : ℤ :=
  A187284.P2001770761397353711.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187359.P1936867484030985609

`A000108(3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187359.P1936867484030985609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (3 * n + 2) : ℚ) / 2

end

end A187359.P1936867484030985609

noncomputable section

/-- A187359: Catalan trisection: A000108(3*n + 2)/2, n>=0.

Offset 0, canonical program `A187359.P1936867484030985609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187359.P1936867484030985609.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187673.P15122020256320025968

`A002419(n+1)+A050534(n+1)`
-/

namespace A187673.P15122020256320025968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + A050534 (n + 1)

end

end A187673.P15122020256320025968

noncomputable section

/-- A187673: Partial sums of the tricapped prism numbers A005920.

Offset 0, canonical program `A187673.P15122020256320025968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187673 (n : ℕ) : ℤ :=
  A187673.P15122020256320025968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187756.P2037243805529063286

`n*A000447(n)`
-/

namespace A187756.P2037243805529063286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000447 n

end

end A187756.P2037243805529063286

noncomputable section

/-- A187756: a(n) = n^2 * (4*n^2 - 1) / 3.

Offset 0, canonical program `A187756.P2037243805529063286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187756 (n : ℕ) : ℤ :=
  A187756.P2037243805529063286.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188050.P2437867071037647755

`A016755(n)-A001845(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188050.P2437867071037647755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A001845 n

end

end A188050.P2437867071037647755

noncomputable section

/-- A188050: a(n) = A016755(n) - A001845(n).

Offset 0, canonical program `A188050.P2437867071037647755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188050 (n : ℕ) : ℤ :=
  A188050.P2437867071037647755.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188068.P12204074435986584008

`A007538(n+1)-2`
-/

namespace A188068.P12204074435986584008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) - 2

end

end A188068.P12204074435986584008

noncomputable section

/-- A188068: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=1, [ ]=floor.

Offset 1, canonical program `A188068.P12204074435986584008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188068 (n : ℕ) : ℤ :=
  A188068.P12204074435986584008.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157459.P11164572467771712150

`2*A201003(n)`
-/

namespace A157459.P11164572467771712150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201003 n

end

end A157459.P11164572467771712150

noncomputable section

/-- A157459: Expansion of 72*x^2 / (1 - 323*x + 323*x^2 - x^3).

Offset 1, canonical program `A157459.P11164572467771712150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157459 (n : ℕ) : ℤ :=
  A157459.P11164572467771712150.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159683.P11121208865461669295

`16*A180926(n+1)`
-/

namespace A159683.P11121208865461669295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A180926 (n + 1)

end

end A159683.P11121208865461669295

noncomputable section

/-- A159683: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2 equations problem: 3*n(j) + 1 = a(j)*a(j) and 5*n(j) + 1 = b(j)*b(j) with positive integer numbers.

Offset 1, canonical program `A159683.P11121208865461669295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159683 (n : ℕ) : ℤ :=
  A159683.P11121208865461669295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159940.P8091727123112620188

`A159941(n+2)/2`
-/

namespace A159940.P8091727123112620188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159941 (n + 2) : ℚ) / 2

end

end A159940.P8091727123112620188

noncomputable section

/-- A159940: The number of trisubstitution products with composition C_n H_(2n-1) X_2 Y.

Offset 2, canonical program `A159940.P8091727123112620188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159940.P8091727123112620188.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A164576.P5630668423943986502

`A175485(A007310(n+1))`
-/

namespace A164576.P5630668423943986502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175485 (A007310 (n + 1)).toNat

end

end A164576.P5630668423943986502

noncomputable section

/-- A164576: Integer averages of the set of the first positive squares up to some n^2.

Offset 1, canonical program `A164576.P5630668423943986502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164576 (n : ℕ) : ℤ :=
  A164576.P5630668423943986502.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166929.P12544204046458921436

`A360187(2*(n+1)-1)`
-/

namespace A166929.P12544204046458921436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360187 (2 * (n + 1) - 1)

end

end A166929.P12544204046458921436

noncomputable section

/-- A166929: Positive integers m such that m^4 = a^2 + b^2 and a + b = c^2 for some coprime integers a, b, c.

Offset 1, canonical program `A166929.P12544204046458921436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166929 (n : ℕ) : ℤ :=
  A166929.P12544204046458921436.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167268.P1116264393051329281

`4*A216607(n+1)+2`
-/

namespace A167268.P1116264393051329281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A216607 (n + 1) + 2

end

end A167268.P1116264393051329281

noncomputable section

/-- A167268: Janet's sequence: Number of elements for each successively filled electronic subshell of an atom.

Offset 1, canonical program `A167268.P1116264393051329281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167268 (n : ℕ) : ℤ :=
  A167268.P1116264393051329281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168181.P9292927315098625345

`1-A253513(n)`
-/

namespace A168181.P9292927315098625345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A253513 n

end

end A168181.P9292927315098625345

noncomputable section

/-- A168181: Characteristic function of numbers that are not multiples of 8.

Offset 0, canonical program `A168181.P9292927315098625345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168181 (n : ℕ) : ℤ :=
  A168181.P9292927315098625345.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171974.P3727932900943191614

`A172476(2*(n+1))`
-/

namespace A171974.P3727932900943191614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (2 * (n + 1))

end

end A171974.P3727932900943191614

noncomputable section

/-- A171974: Integer part of the height of a regular tetrahedron with edge length n.

Offset 1, canonical program `A171974.P3727932900943191614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171974 (n : ℕ) : ℤ :=
  A171974.P3727932900943191614.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174256.P1964980402873017546

`8*A174257(n+1)`
-/

namespace A174256.P1964980402873017546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A174257 (n + 1)

end

end A174256.P1964980402873017546

noncomputable section

/-- A174256: Number of 3 X 3 reduced magic squares with distinct values and maximum value 2n; also, with magic sum 3n.

Offset 1, canonical program `A174256.P1964980402873017546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174256 (n : ℕ) : ℤ :=
  A174256.P1964980402873017546.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185138.P1014935391464103176

`3*A208950(n)/A109613(n)`
-/

namespace A185138.P1014935391464103176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A208950 n : ℚ) / (A109613 n : ℚ)

end

end A185138.P1014935391464103176

noncomputable section

/-- A185138: a(4*n) = n*(4*n-1); a(2*n+1) = n*(n+1)/2; a(4*n+2) = (2*n+1)*(4*n+1).

Offset 0, canonical program `A185138.P1014935391464103176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185138.P1014935391464103176.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186339.P16662494727419453789

`2^A320259(n)`
-/

namespace A186339.P16662494727419453789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A320259 n : ℤ)

end

end A186339.P16662494727419453789

noncomputable section

/-- A186339: a(n) = A006125(n+1) * 2^A001840(n).

Offset 0, canonical program `A186339.P16662494727419453789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186339.P16662494727419453789.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153282.P6158274056639244414

`eq[1, A066247(3*n+1)]-1`
-/

namespace A153282.P6158274056639244414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A153282.P6158274056639244414

noncomputable section

/-- A153282: Numbers k such that 3*k + 4 is not prime.

Offset 1, canonical program `A153282.P6158274056639244414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153282 (n : ℕ) : ℤ :=
  A153282.P6158274056639244414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153308.P18325032581413547276

`comp[A102342(n+1)]`
-/

namespace A153308.P18325032581413547276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153308.P18325032581413547276

noncomputable section

/-- A153308: Numbers k such that 10*k+7 is not prime.

Offset 1, canonical program `A153308.P18325032581413547276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153308 (n : ℕ) : ℤ :=
  (A153308.P18325032581413547276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153315.P11188983019484737054

`gcd(n+1, n-1)*∑[A000045(2*n+1+n)]`
-/

namespace A153315.P11188983019484737054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153315.P11188983019484737054

noncomputable section

/-- A153315: Denominators of continued fraction convergents to sqrt(5/4).

Offset 0, canonical program `A153315.P11188983019484737054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A153315 (n : ℕ) : ℤ :=
  A153315.P11188983019484737054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A153315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153318.P702139765015862779

`A041048(n)/gcd(5, A041048(n))`
-/

namespace A153318.P702139765015862779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041048 n : ℚ) / (Int.gcd 5 (A041048 n) : ℚ)

end

end A153318.P702139765015862779

noncomputable section

/-- A153318: Numerators of continued fraction convergents to sqrt(6/5).

Offset 0, canonical program `A153318.P702139765015862779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A153318 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153318.P702139765015862779.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A153318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153334.P13771578035933822493

`A001792(n)-2*A100071(n)`
-/

namespace A153334.P13771578035933822493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - 2 * A100071 n

end

end A153334.P13771578035933822493

noncomputable section

/-- A153334: Number of zig-zag paths from top to bottom of an n X n square whose color is that of the top right corner.

Offset 1, canonical program `A153334.P13771578035933822493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153334 (n : ℕ) : ℤ :=
  A153334.P13771578035933822493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153335.P14857227922523687050

`A001792(n)-A100071(n+1)`
-/

namespace A153335.P14857227922523687050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A100071 (n + 1)

end

end A153335.P14857227922523687050

noncomputable section

/-- A153335: Number of zig-zag paths from top to bottom of an n X n square whose color is not that of the top right corner.

Offset 1, canonical program `A153335.P14857227922523687050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153335 (n : ℕ) : ℤ :=
  A153335.P14857227922523687050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A153335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153340.P9472442687798973603

`A090992(n+1)+A061551(n)`
-/

namespace A153340.P9472442687798973603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090992 (n + 1) + A061551 n

end

end A153340.P9472442687798973603

noncomputable section

/-- A153340: Number of zig-zag paths from top to bottom of a rectangle of width 8 with n rows.

Offset 1, canonical program `A153340.P9472442687798973603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A153340 (n : ℕ) : ℤ :=
  A153340.P9472442687798973603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A153340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153360.P9570591132759772216

`A336675(n)+A090994(n+1)`
-/

namespace A153360.P9570591132759772216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 n + A090994 (n + 1)

end

end A153360.P9570591132759772216

noncomputable section

/-- A153360: Number of zig-zag paths from top to bottom of a rectangle of width 10 with n rows.

Offset 1, canonical program `A153360.P9570591132759772216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A153360 (n : ℕ) : ℤ :=
  A153360.P9570591132759772216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A153360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153364.P8612063116656853991

`A217777(n)+A178381(n+3)`
-/

namespace A153364.P8612063116656853991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 n + A178381 (n + 3)

end

end A153364.P8612063116656853991

noncomputable section

/-- A153364: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows whose color is not that of the top right corner.

Offset 1, canonical program `A153364.P8612063116656853991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A153364 (n : ℕ) : ℤ :=
  A153364.P8612063116656853991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A153364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153370.P1674643474410020339

`A216241(n+2)+Δ[A027383(n)]`
-/

namespace A153370.P1674643474410020339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216241 (n + 2) + (f1 (n + 1) - f1 n)

end

end A153370.P1674643474410020339

noncomputable section

/-- A153370: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows whose color is not that of the top right corner.

Offset 1, canonical program `A153370.P1674643474410020339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A153370 (n : ℕ) : ℤ :=
  A153370.P1674643474410020339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A153370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153372.P3008337133283248084

`Δ[2*A087945(n)]`
-/

namespace A153372.P3008337133283248084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153372.P3008337133283248084

noncomputable section

/-- A153372: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n-1 rows whose color is that of the top right corner.

Offset 1, canonical program `A153372.P3008337133283248084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153372 (n : ℕ) : ℤ :=
  A153372.P3008337133283248084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153381.P17942683048602701020

`comp[A108233(n+1)]`
-/

namespace A153381.P17942683048602701020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153381.P17942683048602701020

noncomputable section

/-- A153381: Numbers k such that 11*k+5 is not prime.

Offset 1, canonical program `A153381.P17942683048602701020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153381 (n : ℕ) : ℤ :=
  (A153381.P17942683048602701020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153384.P2062558916155313946

`comp[A111174(n+1)]`
-/

namespace A153384.P2062558916155313946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153384.P2062558916155313946

noncomputable section

/-- A153384: Numbers k such that 24*k+1 is not prime.

Offset 1, canonical program `A153384.P2062558916155313946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153384 (n : ℕ) : ℤ :=
  (A153384.P2062558916155313946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153766.P15965562508492777775

`A005122(n+1)+1`
-/

namespace A153766.P15965562508492777775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) + 1

end

end A153766.P15965562508492777775

noncomputable section

/-- A153766: Numbers k such that 8k-9 is prime.

Offset 1, canonical program `A153766.P15965562508492777775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153766 (n : ℕ) : ℤ :=
  A153766.P15965562508492777775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153776.P10293732672639534286

`∑[A294566(A111982(n))]`
-/

namespace A153776.P10293732672639534286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (A111982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153776.P10293732672639534286

noncomputable section

/-- A153776: Sequence S such that 1 is in S and if x is in S, then 5x-3 and 5x-1 are in S.

Offset 1, canonical program `A153776.P10293732672639534286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153776 (n : ℕ) : ℤ :=
  A153776.P10293732672639534286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153818.P11151295241026271931

`A013936((n+1)²)`
-/

namespace A153818.P11151295241026271931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 ((n + 1) ^ 2)

end

end A153818.P11151295241026271931

noncomputable section

/-- A153818: a(n) = Sum_{k=1..n} floor(n^2/k^2).

Offset 1, canonical program `A153818.P11151295241026271931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153818 (n : ℕ) : ℤ :=
  A153818.P11151295241026271931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153979.P6961115840848148548

`p?[A001414(n+1)%(n+1)]`
-/

namespace A153979.P6961115840848148548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P6961115840848148548

noncomputable section

/-- A153979: Prime sums of prime factors of composite(k)=A002808(k).

Offset 1, canonical program `A153979.P6961115840848148548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153979 (n : ℕ) : ℤ :=
  A153979.P6961115840848148548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154028.P7192645698628401841

`A057979(n)!*C(A057979(n+1)+1, 2)`
-/

namespace A154028.P7192645698628401841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A057979 n).toNat * Nat.choose (A057979 (n + 1) + 1).toNat 2

end

end A154028.P7192645698628401841

noncomputable section

/-- A154028: a(2n) = n*(n+1)/2, a(2n+1) = n!.

Offset 0, canonical program `A154028.P7192645698628401841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A154028 (n : ℕ) : ℤ :=
  (A154028.P7192645698628401841.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A154028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154115.P220062109648616098

`A086801(n+2)`
-/

namespace A154115.P220062109648616098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 2)

end

end A154115.P220062109648616098

noncomputable section

/-- A154115: Numbers n such that n + 3 is prime.

Offset 1, canonical program `A154115.P220062109648616098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154115 (n : ℕ) : ℤ :=
  A154115.P220062109648616098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154115.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154276.P17448744353974337590

`∩[A125557(n+1), A154277(n)]`
-/

namespace A154276.P17448744353974337590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P17448744353974337590

noncomputable section

/-- A154276: Primes of the form 81*k^2 - 72*k + 17.

Offset 1, canonical program `A154276.P17448744353974337590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A154276 (n : ℕ) : ℤ :=
  (A154276.P17448744353974337590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A154276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154324.P630547226117239156

`∑[A006918(n-2)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A154324.P630547226117239156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  A006918 (n - 2) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154324.P630547226117239156

noncomputable section

/-- A154324: Diagonal sums of number triangle A113582.

Offset 0, canonical program `A154324.P630547226117239156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154324 (n : ℕ) : ℤ :=
  A154324.P630547226117239156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154358.P10512341012428131107

`50*A154355(n)-1`
-/

namespace A154358.P10512341012428131107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A154355 n - 1

end

end A154358.P10512341012428131107

noncomputable section

/-- A154358: a(n) = 1250*n^2 - 1800*n + 649.

Offset 0, canonical program `A154358.P10512341012428131107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154358 (n : ℕ) : ℤ :=
  A154358.P10512341012428131107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154359.P8856775665768468533

`50*A154357(n)-1`
-/

namespace A154359.P8856775665768468533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A154357 n - 1

end

end A154359.P8856775665768468533

noncomputable section

/-- A154359: a(n) = 1250*n^2 - 700*n + 99.

Offset 0, canonical program `A154359.P8856775665768468533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154359 (n : ℕ) : ℤ :=
  A154359.P8856775665768468533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154387.P12620786957504123218

`filter[A054683(n+2), A066247(#)]`
-/

namespace A154387.P12620786957504123218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A154387.P12620786957504123218

noncomputable section

/-- A154387: Composite numbers with even sum of digits.

Offset 1, canonical program `A154387.P12620786957504123218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8928 terms. -/
def A154387 (n : ℕ) : ℤ :=
  A154387.P12620786957504123218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8928 terms. -/
def A154387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154393.P580899473292945297

`floor(A007598(n+2)^ϕ)`
-/

namespace A154393.P580899473292945297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007598 (n + 2) : ℝ) ^ Real.goldenRatio⌋

end

end A154393.P580899473292945297

noncomputable section

/-- A154393: Empirically good sequence of increments for shell sort algorithm.

Offset 1, canonical program `A154393.P580899473292945297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A154393 (n : ℕ) : ℤ :=
  A154393.P580899473292945297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A154393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154549.P10693917250383853004

`lcm(A153814(n+1), A177769(n+1))`
-/

namespace A154549.P10693917250383853004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153814 (n + 1)) (A177769 (n + 1))

end

end A154549.P10693917250383853004

noncomputable section

/-- A154549: a(n) = 111111*n.

Offset 1, canonical program `A154549.P10693917250383853004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154549 (n : ℕ) : ℤ :=
  (A154549.P10693917250383853004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154613.P2203050780449046038

`p?[floor(A141914(n+1)/23)]`
-/

namespace A154613.P2203050780449046038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141914 (n + 1) : ℚ) / 23⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154613.P2203050780449046038

noncomputable section

/-- A154613: Prime p such that 23p + 10 is prime.

Offset 1, canonical program `A154613.P2203050780449046038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A154613 (n : ℕ) : ℤ :=
  A154613.P2203050780449046038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A154613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154620.P17008154751221550007

`p?[floor(A142018(n+1)/31)]`
-/

namespace A154620.P17008154751221550007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142018 (n + 1) : ℚ) / 31⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154620.P17008154751221550007

noncomputable section

/-- A154620: Primes p such that 31p+14 is prime.

Offset 1, canonical program `A154620.P17008154751221550007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A154620 (n : ℕ) : ℤ :=
  A154620.P17008154751221550007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A154620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154622.P11395790207356592826

`p?[floor(A154621(n+1)/67)]`
-/

namespace A154622.P11395790207356592826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154621 (n + 1) : ℚ) / 67⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154622.P11395790207356592826

noncomputable section

/-- A154622: Primes p such that 67*p + 32 is also prime.

Offset 1, canonical program `A154622.P11395790207356592826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1246 terms. -/
def A154622 (n : ℕ) : ℤ :=
  A154622.P11395790207356592826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1246 terms. -/
def A154622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154699.P12525665278413531406

`A014217(xor(1, n))`
-/

namespace A154699.P12525665278413531406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (Nat.xor 1 n)

end

end A154699.P12525665278413531406

noncomputable section

/-- A154699: Terms in A014217 pairwise swapped.

Offset 0, canonical program `A154699.P12525665278413531406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A154699 (n : ℕ) : ℤ :=
  A154699.P12525665278413531406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A154699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154728.P8684620148875109764

`A007645(n+2)*A007645(n+3)*A007645(n+4)`
-/

namespace A154728.P8684620148875109764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2) * A007645 (n + 3) * A007645 (n + 4)

end

end A154728.P8684620148875109764

noncomputable section

/-- A154728: Products of three consecutive primes of the form 6n+1 (see A002476).

Offset 1, canonical program `A154728.P8684620148875109764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154728 (n : ℕ) : ℤ :=
  A154728.P8684620148875109764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154949.P11919610843526897996

`∑[∑[A112476(n)]]`
-/

namespace A154949.P11919610843526897996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154949.P11919610843526897996

noncomputable section

/-- A154949: Diagonal sums of Riordan array A154948.

Offset 0, canonical program `A154949.P11919610843526897996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A154949 (n : ℕ) : ℤ :=
  A154949.P11919610843526897996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A154949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155076.P9504009048706138996

`A101688(n)-A023532(n)`
-/

namespace A155076.P9504009048706138996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n - A023532 n

end

end A155076.P9504009048706138996

noncomputable section

/-- A155076: Triangle read by rows. The main diagonal is positive. If rowindex >= 2*columnindex then -1 else 0.

Offset 1, canonical program `A155076.P9504009048706138996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155076 (n : ℕ) : ℤ :=
  A155076.P9504009048706138996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155108.P14627046994044769413

`p?[2*n+1-A000720(2*n+1)]`
-/

namespace A155108.P14627046994044769413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000720 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155108.P14627046994044769413

noncomputable section

/-- A155108: Primes k such that the k-th composite is even.

Offset 1, canonical program `A155108.P14627046994044769413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A155108 (n : ℕ) : ℤ :=
  A155108.P14627046994044769413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A155108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155182.P16204467128585160948

`record[gcd(n+1, A004454(gcd(n, n+1))!)]`
-/

namespace A155182.P16204467128585160948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial (A004454 (Nat.gcd n (n + 1))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155182.P16204467128585160948

noncomputable section

/-- A155182: Divisors of 12!.

Offset 1, canonical program `A155182.P16204467128585160948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A155182 (n : ℕ) : ℤ :=
  (A155182.P16204467128585160948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A155182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155498.P7656764821816016428

`∑[∑{digits}[A000040(n+1), #%2]]`
-/

namespace A155498.P7656764821816016428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x % 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P7656764821816016428

noncomputable section

/-- A155498: Number of odd digits in the concatenation of first n primes.

Offset 1, canonical program `A155498.P7656764821816016428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155498 (n : ℕ) : ℤ :=
  (A155498.P7656764821816016428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155760.P8725941739082997170

`p?[p?[A000040(n+1)-30]-30]`
-/

namespace A155760.P8725941739082997170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 30

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155760.P8725941739082997170

noncomputable section

/-- A155760: Primes p such that p+30 and p+60 are prime.

Offset 1, canonical program `A155760.P8725941739082997170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155760 (n : ℕ) : ℤ :=
  A155760.P8725941739082997170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155771.P775361544863186254

`eq[∑{p}[A155769(n), #], A155769(n)]`
-/

namespace A155771.P775361544863186254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A155771.P775361544863186254

noncomputable section

/-- A155771: Numbers n such that 2*n^2+2*n-41 is a prime.

Offset 1, canonical program `A155771.P775361544863186254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A155771 (n : ℕ) : ℤ :=
  (A155771.P775361544863186254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A155771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155853.P16741750777501655828

`floor(A100202(n+1)/13)`
-/

namespace A155853.P16741750777501655828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100202 (n + 1) : ℚ) / 13⌋

end

end A155853.P16741750777501655828

noncomputable section

/-- A155853: Numbers n such that 13*n + 3 is a prime.

Offset 1, canonical program `A155853.P16741750777501655828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155853 (n : ℕ) : ℤ :=
  A155853.P16741750777501655828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155946.P13812767345114228886

`A096033(n+1)-1`
-/

namespace A155946.P13812767345114228886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1) - 1

end

end A155946.P13812767345114228886

noncomputable section

/-- A155946: Numbers d for which the volume of the regular d-dimensional simplex of unit edge is rational.

Offset 1, canonical program `A155946.P13812767345114228886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155946 (n : ℕ) : ℤ :=
  A155946.P13812767345114228886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156039.P9805640249302762307

`A212986(n)+A173722(n)`
-/

namespace A156039.P9805640249302762307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 n + A173722 n

end

end A156039.P9805640249302762307

noncomputable section

/-- A156039: Number of compositions (ordered partitions) of n into 4 parts, where the first is at least as great as each of the others.

Offset 0, canonical program `A156039.P9805640249302762307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156039 (n : ℕ) : ℤ :=
  A156039.P9805640249302762307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156056.P7596928476601549033

`C(n+2, 2)%A000040(n+1)`
-/

namespace A156056.P7596928476601549033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 2) 2 : ℤ) (A000040 (n + 1))

end

end A156056.P7596928476601549033

noncomputable section

/-- A156056: n-th triangular number modulo n-th prime.

Offset 1, canonical program `A156056.P7596928476601549033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156056 (n : ℕ) : ℤ :=
  A156056.P7596928476601549033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156060.P14496861671679913336

`A010878(2*n*A070366(n))`
-/

namespace A156060.P14496861671679913336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (2 * ((n : ℤ) * A070366 n)).toNat

end

end A156060.P14496861671679913336

noncomputable section

/-- A156060: Jacobsthal numbers A001045 mod 9.

Offset 0, canonical program `A156060.P14496861671679913336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. -/
def A156060 (n : ℕ) : ℤ :=
  A156060.P14496861671679913336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. -/
def A156060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156124.P5510944569090822694

`p?[A156105(n+1)-72]`
-/

namespace A156124.P5510944569090822694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156105 (n + 1) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P5510944569090822694

noncomputable section

/-- A156124: Primes p, such that p+72 and p+144 are both prime.

Offset 1, canonical program `A156124.P5510944569090822694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A156124 (n : ℕ) : ℤ :=
  A156124.P5510944569090822694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A156124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156159.P14802451819547333670

`A155923(n+1)²`
-/

namespace A156159.P14802451819547333670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (n + 1) ^ 2

end

end A156159.P14802451819547333670

noncomputable section

/-- A156159: Squares of the form k^2+(k+17)^2 with integer k.

Offset 1, canonical program `A156159.P14802451819547333670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A156159 (n : ℕ) : ℤ :=
  A156159.P14802451819547333670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A156159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156269.P821415153029621083

`A042968(n+1)*A320770(comp[4*n+2])`
-/

namespace A156269.P821415153029621083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) * A320770 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156269.P821415153029621083

noncomputable section

/-- A156269: Denominators of a series expansion for Pi/2.

Offset 0, canonical program `A156269.P821415153029621083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A156269 (n : ℕ) : ℤ :=
  A156269.P821415153029621083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A156269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156276.P2956332392884539004

`5^n*A011782(xor(1, n))`
-/

namespace A156276.P2956332392884539004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A011782 (Nat.xor 1 n)

end

end A156276.P2956332392884539004

noncomputable section

/-- A156276: Denominator of Euler(n, 1/10).

Offset 0, canonical program `A156276.P2956332392884539004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A156276 (n : ℕ) : ℤ :=
  A156276.P2956332392884539004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A156276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156301.P1440636161218985836

`A020915(n)-C(2, n+2)`
-/

namespace A156301.P1440636161218985836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n - (Nat.choose 2 (n + 2) : ℤ)

end

end A156301.P1440636161218985836

noncomputable section

/-- A156301: a(n) = ceiling( n * log_3(2) ) = ceiling(n * 0.6309297535714574371...).

Offset 0, canonical program `A156301.P1440636161218985836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156301 (n : ℕ) : ℤ :=
  A156301.P1440636161218985836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156346.P16688115046334546321

`A057077(n)*A156283(n)`
-/

namespace A156346.P16688115046334546321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A156283 n

end

end A156346.P16688115046334546321

noncomputable section

/-- A156346: Period length 12: repeat 1,2,-4,4,-2,-1,-1,-2,4,-4,2,1.

Offset 0, canonical program `A156346.P16688115046334546321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156346 (n : ℕ) : ℤ :=
  A156346.P16688115046334546321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156562.P3592564537652149873

`a(n-2)+a(A156351(n)%2)` with `a(0)=1, a(1)=2`
-/

namespace A156562.P3592564537652149873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (Int.tmod (A156351 n) 2).toNat

end

end A156562.P3592564537652149873

noncomputable section

/-- A156562: a(n) = (-1)^n*Sum_{k=1..n} A054353(k)*(-1)^k.

Offset 1, canonical program `A156562.P3592564537652149873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156562 (n : ℕ) : ℤ :=
  (A156562.P3592564537652149873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156591.P12243526318247523164

`A157823(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A156591.P12243526318247523164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A157823 (n - 1) - a (n - 1)

end

end A156591.P12243526318247523164

noncomputable section

/-- A156591: First differences of A154570.

Offset 0, canonical program `A156591.P12243526318247523164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A156591 (n : ℕ) : ℤ :=
  A156591.P12243526318247523164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A156591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156627.P2115852716161736592

`26*A156718(2*(n+1))`
-/

namespace A156627.P2115852716161736592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A156718 (2 * (n + 1))

end

end A156627.P2115852716161736592

noncomputable section

/-- A156627: a(n) = 4394*n - 1820.

Offset 1, canonical program `A156627.P2115852716161736592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156627 (n : ℕ) : ℤ :=
  A156627.P2115852716161736592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156636.P2324365661510684648

`26*A156718(2*n+1)`
-/

namespace A156636.P2324365661510684648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A156718 (2 * n + 1)

end

end A156636.P2324365661510684648

noncomputable section

/-- A156636: a(n) = 4394*n + 1820.

Offset 0, canonical program `A156636.P2324365661510684648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156636 (n : ℕ) : ℤ :=
  A156636.P2324365661510684648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156729.P11115397462345893869

`Δ[A156351(2*n+1)]-1`
-/

namespace A156729.P11115397462345893869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A156729.P11115397462345893869

noncomputable section

/-- A156729: a(n)=(v(2*n+2)-v(2*n))/2 where v(n)=A156253(n)-A156251(n).

Offset 1, canonical program `A156729.P11115397462345893869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156729 (n : ℕ) : ℤ :=
  A156729.P11115397462345893869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156731.P10098910702488001825

`val(A078929(2*n+1), 2)`
-/

namespace A156731.P10098910702488001825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078929 (2 * n + 1)).toNat 2

end

end A156731.P10098910702488001825

noncomputable section

/-- A156731: a(n)=(v(2*n+1)-v(2*n-1))/2 where v(n)=A156253(n)-A156251(n).

Offset 1, canonical program `A156731.P10098910702488001825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156731 (n : ℕ) : ℤ :=
  (A156731.P10098910702488001825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156731.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156773.P14721469066702585292

`81*A156677(n)-1`
-/

namespace A156773.P14721469066702585292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A156677 n - 1

end

end A156773.P14721469066702585292

noncomputable section

/-- A156773: a(n) = 6561*n^2 - 9558*n + 3482.

Offset 0, canonical program `A156773.P14721469066702585292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156773 (n : ℕ) : ℤ :=
  A156773.P14721469066702585292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156843.P2012834602273359370

`A156849(comp[2*(n+1)]+1)²-1`
-/

namespace A156843.P2012834602273359370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156849 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) ^ 2 - 1

end

end A156843.P2012834602273359370

noncomputable section

/-- A156843: a(n) = 279841n^2 - 165048n + 24335.

Offset 0, canonical program `A156843.P2012834602273359370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A156843 (n : ℕ) : ℤ :=
  A156843.P2012834602273359370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A156843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156844.P15209842752411794617

`A156849(2*n+1)²-1`
-/

namespace A156844.P15209842752411794617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156849 (2 * n + 1) ^ 2 - 1

end

end A156844.P15209842752411794617

noncomputable section

/-- A156844: a(n) = 279841*n^2 - 394634*n + 139128.

Offset 1, canonical program `A156844.P15209842752411794617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156844 (n : ℕ) : ℤ :=
  A156844.P15209842752411794617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157080.P15307887305720561026

`round(sqrt(A156855(n+1))*A156867(n+1))`
-/

namespace A157080.P15307887305720561026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A156855 (n + 1) : ℝ) * (A156867 (n + 1) : ℝ))

end

end A157080.P15307887305720561026

noncomputable section

/-- A157080: a(n) = 32805000*n^2 - 16200*n + 1.

Offset 1, canonical program `A157080.P15307887305720561026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157080 (n : ℕ) : ℤ :=
  A157080.P15307887305720561026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157116.P3367610532658477289

`A155098(A005408(A155098(n+1))-A000035(n))`
-/

namespace A157116.P3367610532658477289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (A005408 (A155098 (n + 1)).toNat - A000035 n).toNat

end

end A157116.P3367610532658477289

noncomputable section

/-- A157116: Numbers k such that k^2 + 1 == 0 (mod 41^2).

Offset 1, canonical program `A157116.P3367610532658477289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A157116 (n : ℕ) : ℤ :=
  A157116.P3367610532658477289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A157116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157264.P9433360168294747943

`A154514(4*n+1)`
-/

namespace A157264.P9433360168294747943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (4 * n + 1)

end

end A157264.P9433360168294747943

noncomputable section

/-- A157264: a(n) = 10368*n^2 - 15840*n + 6049.

Offset 1, canonical program `A157264.P9433360168294747943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157264 (n : ℕ) : ℤ :=
  A157264.P9433360168294747943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157266.P4819740598114228326

`2*A154519(A004767(n))`
-/

namespace A157266.P4819740598114228326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154519 (A004767 n).toNat

end

end A157266.P4819740598114228326

noncomputable section

/-- A157266: a(n) = 1728*n - 408.

Offset 1, canonical program `A157266.P4819740598114228326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157266 (n : ℕ) : ℤ :=
  A157266.P4819740598114228326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157267.P12656285102130768072

`A154515(4*n+3)`
-/

namespace A157267.P12656285102130768072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (4 * n + 3)

end

end A157267.P12656285102130768072

noncomputable section

/-- A157267: a(n) = 10368*n^2 - 4896*n + 577.

Offset 1, canonical program `A157267.P12656285102130768072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157267 (n : ℕ) : ℤ :=
  A157267.P12656285102130768072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157288.P8220059802701160179

`2*A157921(n+1)²-1`
-/

namespace A157288.P8220059802701160179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157921 (n + 1) ^ 2 - 1

end

end A157288.P8220059802701160179

noncomputable section

/-- A157288: a(n) = 10368*n^2 - 288*n + 1.

Offset 1, canonical program `A157288.P8220059802701160179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157288 (n : ℕ) : ℤ :=
  A157288.P8220059802701160179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157433.P13730914805304613161

`A275543(A004768(n)+72)`
-/

namespace A157433.P13730914805304613161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (A004768 n + 72).toNat

end

end A157433.P13730914805304613161

noncomputable section

/-- A157433: a(n) = 128n^2 + 2336n + 10657.

Offset 1, canonical program `A157433.P13730914805304613161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157433 (n : ℕ) : ℤ :=
  A157433.P13730914805304613161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157436.P7975827807383193179

`round(sqrt(A157434(n+1))*A157435(n+1))`
-/

namespace A157436.P7975827807383193179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157434 (n + 1) : ℝ) * (A157435 (n + 1) : ℝ))

end

end A157436.P7975827807383193179

noncomputable section

/-- A157436: a(n) = 128*n^2 + 2528*n + 12481.

Offset 1, canonical program `A157436.P7975827807383193179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157436 (n : ℕ) : ℤ :=
  A157436.P7975827807383193179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157444.P3765960402501703196

`11*(A158130(n+1)-18)`
-/

namespace A157444.P3765960402501703196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A158130 (n + 1) - 18)

end

end A157444.P3765960402501703196

noncomputable section

/-- A157444: a(n) = 1331*n - 209.

Offset 1, canonical program `A157444.P3765960402501703196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157444 (n : ℕ) : ℤ :=
  A157444.P3765960402501703196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157445.P9537513974224732465

`(A158130(n+1)-18)²+1`
-/

namespace A157445.P9537513974224732465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158130 (n + 1) - 18) ^ 2 + 1

end

end A157445.P9537513974224732465

noncomputable section

/-- A157445: a(n) = 14641*n^2 - 4598*n + 362.

Offset 1, canonical program `A157445.P9537513974224732465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157445 (n : ℕ) : ℤ :=
  A157445.P9537513974224732465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157448.P10982465410716432833

`2*A239128(n+1)²-1`
-/

namespace A157448.P10982465410716432833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239128 (n + 1) ^ 2 - 1

end

end A157448.P10982465410716432833

noncomputable section

/-- A157448: a(n) = 2048*n^2 - 128*n + 1.

Offset 1, canonical program `A157448.P10982465410716432833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157448 (n : ℕ) : ℤ :=
  A157448.P10982465410716432833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157476.P8636604521927645473

`A157951(n+1)+A152691(n+1)*A174312(n+1)`
-/

namespace A157476.P8636604521927645473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1) + A152691 (n + 1) * A174312 (n + 1)

end

end A157476.P8636604521927645473

noncomputable section

/-- A157476: a(n) = 2048n^2 + 128n + 1.

Offset 1, canonical program `A157476.P8636604521927645473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A157476 (n : ℕ) : ℤ :=
  A157476.P8636604521927645473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A157476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157506.P2026269780825984186

`2*A158123(n+1)²-1`
-/

namespace A157506.P2026269780825984186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158123 (n + 1) ^ 2 - 1

end

end A157506.P2026269780825984186

noncomputable section

/-- A157506: a(n) = 13122*n^2 + 324*n + 1.

Offset 1, canonical program `A157506.P2026269780825984186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157506 (n : ℕ) : ℤ :=
  A157506.P2026269780825984186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157509.P5075584753381153263

`2*(A157953(n+1)/(n+1))²-1`
-/

namespace A157509.P5075584753381153263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A157953 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2 - 1

end

end A157509.P5075584753381153263

noncomputable section

/-- A157509: a(n) = 13122*n^2 - 324*n + 1.

Offset 1, canonical program `A157509.P5075584753381153263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157509.P5075584753381153263.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157609.P14910852287074054418

`(A158130(2*(n+1))-1)*11`
-/

namespace A157609.P14910852287074054418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158130 (2 * (n + 1)) - 1) * 11

end

end A157609.P14910852287074054418

noncomputable section

/-- A157609: a(n) = 2662*n - 22.

Offset 1, canonical program `A157609.P14910852287074054418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157609 (n : ℕ) : ℤ :=
  A157609.P14910852287074054418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157610.P244768068460791271

`2*A158130(n+1)²-1`
-/

namespace A157610.P244768068460791271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158130 (n + 1) ^ 2 - 1

end

end A157610.P244768068460791271

noncomputable section

/-- A157610: a(n) = 29282*n^2 - 484*n + 1.

Offset 1, canonical program `A157610.P244768068460791271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157610 (n : ℕ) : ℤ :=
  A157610.P244768068460791271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157613.P3701408785580871283

`2*11/(n+1)*A173267(n+1)`
-/

namespace A157613.P3701408785580871283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (11 / (n + 1 : ℚ) * (A173267 (n + 1) : ℚ))

end

end A157613.P3701408785580871283

noncomputable section

/-- A157613: a(n) = 2662*n + 22.

Offset 1, canonical program `A157613.P3701408785580871283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157613 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157613.P3701408785580871283.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157614.P10492941285321630228

`2*A158131(n+1)²-1`
-/

namespace A157614.P10492941285321630228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158131 (n + 1) ^ 2 - 1

end

end A157614.P10492941285321630228

noncomputable section

/-- A157614: a(n) = 29282*n^2 + 484*n + 1.

Offset 1, canonical program `A157614.P10492941285321630228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157614 (n : ℕ) : ℤ :=
  A157614.P10492941285321630228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157627.P13299627642857711962

`2*A157515(A016813(n))`
-/

namespace A157627.P13299627642857711962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157515 (A016813 n).toNat

end

end A157627.P13299627642857711962

noncomputable section

/-- A157627: a(n) = 8000n - 6040.

Offset 1, canonical program `A157627.P13299627642857711962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157627 (n : ℕ) : ℤ :=
  A157627.P13299627642857711962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A157627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157653.P9609645503293129867

`round(sqrt(A157651(n+1))*A157652(n+1))`
-/

namespace A157653.P9609645503293129867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157651 (n + 1) : ℝ) * (A157652 (n + 1) : ℝ))

end

end A157653.P9609645503293129867

noncomputable section

/-- A157653: a(n) = 80000*n^2 - 39200*n + 4801.

Offset 1, canonical program `A157653.P9609645503293129867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157653 (n : ℕ) : ℤ :=
  A157653.P9609645503293129867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157661.P14401092144953088813

`2*A157955(n+1)²-1`
-/

namespace A157661.P14401092144953088813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157955 (n + 1) ^ 2 - 1

end

end A157661.P14401092144953088813

noncomputable section

/-- A157661: a(n) = 80000*n^2 - 800*n + 1.

Offset 1, canonical program `A157661.P14401092144953088813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157661 (n : ℕ) : ℤ :=
  A157661.P14401092144953088813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157664.P5745045271246218104

`2*A157956(n+1)²-1`
-/

namespace A157664.P5745045271246218104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157956 (n + 1) ^ 2 - 1

end

end A157664.P5745045271246218104

noncomputable section

/-- A157664: a(n) = 80000*n^2 + 800*n + 1.

Offset 1, canonical program `A157664.P5745045271246218104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157664 (n : ℕ) : ℤ :=
  A157664.P5745045271246218104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157686.P7495774716437211567

`A156351(n+1)%2`
-/

namespace A157686.P7495774716437211567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156351 (n + 1)) 2

end

end A157686.P7495774716437211567

noncomputable section

/-- A157686: a(n) = A157684(n) - A157685(n).

Offset 1, canonical program `A157686.P7495774716437211567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157686 (n : ℕ) : ℤ :=
  A157686.P7495774716437211567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157706.P9262348439420365523

`A108673(n)+A053127(n+5)`
-/

namespace A157706.P9262348439420365523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108673 n + A053127 (n + 5)

end

end A157706.P9262348439420365523

noncomputable section

/-- A157706: The z^2 coefficients of the polynomials in the GF1 denominators of A156921.

Offset 2, canonical program `A157706.P9262348439420365523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157706 (n : ℕ) : ℤ :=
  A157706.P9262348439420365523.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157707.P14655950218148529604

`∑[(n+2)^3*∑[A008585(n)+2]]`
-/

namespace A157707.P14655950218148529604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157707.P14655950218148529604

noncomputable section

/-- A157707: The z^2 coefficients of the polynomials in the GF3 denominators of A156927 divided by 2.

Offset 1, canonical program `A157707.P14655950218148529604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157707 (n : ℕ) : ℤ :=
  A157707.P14655950218148529604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157736.P2524852362038602371

`A157364(9*n+5)`
-/

namespace A157736.P2524852362038602371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157364 (9 * n + 5)

end

end A157736.P2524852362038602371

noncomputable section

/-- A157736: a(n) = 388962*n^2 - 347508*n + 77617.

Offset 1, canonical program `A157736.P2524852362038602371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A157736 (n : ℕ) : ℤ :=
  A157736.P2524852362038602371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A157736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157738.P790782766719659964

`42*A158319(n+1)`
-/

namespace A157738.P790782766719659964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A158319 (n + 1)

end

end A157738.P790782766719659964

noncomputable section

/-- A157738: a(n) = 18522n - 42.

Offset 1, canonical program `A157738.P790782766719659964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157738 (n : ℕ) : ℤ :=
  A157738.P790782766719659964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157740.P16474577948140217042

`42*A158322(n+1)`
-/

namespace A157740.P16474577948140217042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A158322 (n + 1)

end

end A157740.P16474577948140217042

noncomputable section

/-- A157740: a(n) = 18522*n + 42.

Offset 1, canonical program `A157740.P16474577948140217042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157740 (n : ℕ) : ℤ :=
  A157740.P16474577948140217042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157853.P5714258803807178798

`A157265(10*(n+1)-2)+A017245(n)`
-/

namespace A157853.P5714258803807178798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157265 (10 * (n + 1) - 2) + A017245 n

end

end A157853.P5714258803807178798

noncomputable section

/-- A157853: a(n) = 3600*n^2 - 1601*n + 178.

Offset 1, canonical program `A157853.P5714258803807178798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A157853 (n : ℕ) : ℤ :=
  A157853.P5714258803807178798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A157853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157858.P9428969928922990493

`Δ[15*A158408(A017113(n))]`
-/

namespace A157858.P9428969928922990493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A158408 (A017113 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157858.P9428969928922990493

noncomputable section

/-- A157858: a(n) = 1728000*n - 240.

Offset 1, canonical program `A157858.P9428969928922990493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A157858 (n : ℕ) : ℤ :=
  A157858.P9428969928922990493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A157858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157862.P11086760066188653856

`6*A157663(A044102(n+1))`
-/

namespace A157862.P11086760066188653856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A157663 (A044102 (n + 1)).toNat

end

end A157862.P11086760066188653856

noncomputable section

/-- A157862: a(n) = 1728000*n + 240.

Offset 1, canonical program `A157862.P11086760066188653856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157862 (n : ℕ) : ℤ :=
  A157862.P11086760066188653856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157865.P9126079717468846930

`Δ[A095117(4*n)]-4`
-/

namespace A157865.P9126079717468846930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A157865.P9126079717468846930

noncomputable section

/-- A157865: a(n) is the number of numbers of the form 4n+2 in A082542.

Offset 0, canonical program `A157865.P9126079717468846930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A157865 (n : ℕ) : ℤ :=
  A157865.P9126079717468846930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A157865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157976.P13573726974064683333

`p?[A138918(n+1)-1]`
-/

namespace A157976.P13573726974064683333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157976.P13573726974064683333

noncomputable section

/-- A157976: Primes p such that 18*p + 17 is also prime.

Offset 1, canonical program `A157976.P13573726974064683333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A157976 (n : ℕ) : ℤ :=
  A157976.P13573726974064683333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A157976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158016.P9281002551474068050

`p?[A005122(n+1)]`
-/

namespace A158016.P9281002551474068050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158016.P9281002551474068050

noncomputable section

/-- A158016: Primes p such that 8*p-1 is also prime.

Offset 1, canonical program `A158016.P9281002551474068050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A158016 (n : ℕ) : ℤ :=
  A158016.P9281002551474068050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A158016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158017.P9242020065271411351

`p?[A105042(n+1)]`
-/

namespace A158017.P9242020065271411351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158017.P9242020065271411351

noncomputable section

/-- A158017: Primes p such that 10*p-1 is also prime.

Offset 1, canonical program `A158017.P9242020065271411351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A158017 (n : ℕ) : ℤ :=
  A158017.P9242020065271411351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. -/
def A158017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158190.P2903595179682650954

`filter[A260181(n+1), A066247(#)]`
-/

namespace A158190.P2903595179682650954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A158190.P2903595179682650954

noncomputable section

/-- A158190: Nonprime numbers with final digit prime.

Offset 1, canonical program `A158190.P2903595179682650954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8614 terms. -/
def A158190 (n : ℕ) : ℤ :=
  A158190.P2903595179682650954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8614 terms. -/
def A158190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158510.P11790813226340929365

`round(A074677(2*n)^(ceil(sin(n)²)/2))`
-/

namespace A158510.P11790813226340929365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074677 (2 * n) : ℝ) ^ ((⌈Real.sin (n : ℝ) ^ 2⌉ : ℚ) / 2 : ℝ))

end

end A158510.P11790813226340929365

noncomputable section

/-- A158510: Generalized Fibonacci numbers Fib(n + 0.5) rounded to an integer.

Offset 0, canonical program `A158510.P11790813226340929365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A158510 (n : ℕ) : ℤ :=
  A158510.P11790813226340929365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A158510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158572.P3362869834669589704

`val(∑[C(A059029(n), 3)+1], 2)+1`
-/

namespace A158572.P3362869834669589704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059029 n).toNat 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A158572.P3362869834669589704

noncomputable section

/-- A158572: a(n) = A007814((2n-1)!! - 1).

Offset 2, canonical program `A158572.P3362869834669589704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158572 (n : ℕ) : ℤ :=
  (A158572.P3362869834669589704.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158611.P9275629407611603775

`A000040(n-a(gcd(n, n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A158611.P9275629407611603775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 ((n : ℤ) - a (Nat.gcd n (n + 1))).toNat

end

end A158611.P9275629407611603775

noncomputable section

/-- A158611: 0, 1 and the primes.

Offset 1, canonical program `A158611.P9275629407611603775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158611 (n : ℕ) : ℤ :=
  A158611.P9275629407611603775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158614.P3548908336296467476

`floor(A132232(n+1)/30)`
-/

namespace A158614.P3548908336296467476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132232 (n + 1) : ℚ) / 30⌋

end

end A158614.P3548908336296467476

noncomputable section

/-- A158614: Numbers n such that 30*n + 11 is prime.

Offset 1, canonical program `A158614.P3548908336296467476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158614 (n : ℕ) : ℤ :=
  A158614.P3548908336296467476.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158622.P3424711789564218679

`∑[A153171(n)]+1`
-/

namespace A158622.P3424711789564218679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A158622.P3424711789564218679

noncomputable section

/-- A158622: Numerator of the reduced fraction A158620(n)/A158621(n).

Offset 2, canonical program `A158622.P3424711789564218679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158622 (n : ℕ) : ℤ :=
  A158622.P3424711789564218679.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158678.P5654835132515354139

`A158674(n+1)-A158677(n+1)`
-/

namespace A158678.P5654835132515354139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158674 (n + 1) - A158677 (n + 1)

end

end A158678.P5654835132515354139

noncomputable section

/-- A158678: Period 18: repeat [0, 0, 0, 3, 0, 0, 0, 3, 0, -3, 0, 3, 0, -3, 0, 0, 0, -3].

Offset 1, canonical program `A158678.P5654835132515354139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158678 (n : ℕ) : ℤ :=
  A158678.P5654835132515354139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158709.P9586412307712416437

`p?[floor(A001749(n+1)/6)]`
-/

namespace A158709.P9586412307712416437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001749 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158709.P9586412307712416437

noncomputable section

/-- A158709: Primes p such that p + ceiling(p/2) is prime.

Offset 1, canonical program `A158709.P9586412307712416437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158709 (n : ℕ) : ℤ :=
  A158709.P9586412307712416437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158746.P16753522694152937982

`floor(A132233(n+1)/30)`
-/

namespace A158746.P16753522694152937982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132233 (n + 1) : ℚ) / 30⌋

end

end A158746.P16753522694152937982

noncomputable section

/-- A158746: Numbers n such that 30*n + 13 is prime.

Offset 1, canonical program `A158746.P16753522694152937982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158746 (n : ℕ) : ℤ :=
  A158746.P16753522694152937982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158791.P14882095896788264991

`floor(A132235(n+1)/30)`
-/

namespace A158791.P14882095896788264991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132235 (n + 1) : ℚ) / 30⌋

end

end A158791.P14882095896788264991

noncomputable section

/-- A158791: Numbers n such that 30*n + 23 is prime.

Offset 1, canonical program `A158791.P14882095896788264991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158791 (n : ℕ) : ℤ :=
  A158791.P14882095896788264991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158791.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158850.P4164223774133924455

`floor(A132236(n+1)/30)`
-/

namespace A158850.P4164223774133924455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132236 (n + 1) : ℚ) / 30⌋

end

end A158850.P4164223774133924455

noncomputable section

/-- A158850: Numbers k such that 30*k + 29 is prime.

Offset 1, canonical program `A158850.P4164223774133924455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158850 (n : ℕ) : ℤ :=
  A158850.P4164223774133924455.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158907.P7286143353781437512

`A032741(n+1)+n+1`
-/

namespace A158907.P7286143353781437512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (n + 1 : ℤ)

end

end A158907.P7286143353781437512

noncomputable section

/-- A158907: Row sums of triangle A158906.

Offset 1, canonical program `A158907.P7286143353781437512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158907 (n : ℕ) : ℤ :=
  A158907.P7286143353781437512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158942.P5860238254517438265

`filter[A045572(n+1), A049240(#)]`
-/

namespace A158942.P5860238254517438265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A158942.P5860238254517438265

noncomputable section

/-- A158942: Nonsquares coprime to 10.

Offset 1, canonical program `A158942.P5860238254517438265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A158942 (n : ℕ) : ℤ :=
  A158942.P5860238254517438265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A158942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158955.P17986053229698884062

`or(1, p?[a(n-1)+9])-A061241(n+1)` with `a(0)=16`
-/

namespace A158955.P17986053229698884062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - A061241 (n + 1)

end

end A158955.P17986053229698884062

noncomputable section

/-- A158955: First differences of A061241.

Offset 1, canonical program `A158955.P17986053229698884062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158955 (n : ℕ) : ℤ :=
  A158955.P17986053229698884062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159035.P16587480534937130279

`A117189((n-1)%(n+1))`
-/

namespace A159035.P16587480534937130279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A159035.P16587480534937130279

noncomputable section

/-- A159035: a(0)=1=a(1), a(2)=2, a(3)=5; thereafter a(n+3)=4*a(n+2)-4*a(n+1)+2*a(n) for n>=1.

Offset 0, canonical program `A159035.P16587480534937130279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A159035 (n : ℕ) : ℤ :=
  A159035.P16587480534937130279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A159035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159219.P11989702742414678499

`A288732(2*(n+2))+∑[A020714(n+2)]`
-/

namespace A159219.P11989702742414678499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288732 (2 * (n + 2)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159219.P11989702742414678499

noncomputable section

/-- A159219: Number of n X n arrays of squares of integers with every 2X2 subblock summing to 18.

Offset 2, canonical program `A159219.P11989702742414678499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A159219 (n : ℕ) : ℤ :=
  A159219.P11989702742414678499.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A159219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159222.P13919845073042096290

`A052955(n)+∑[6*2^n]`
-/

namespace A159222.P13919845073042096290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159222.P13919845073042096290

noncomputable section

/-- A159222: 1/4 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 21.

Offset 2, canonical program `A159222.P13919845073042096290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A159222 (n : ℕ) : ℤ :=
  A159222.P13919845073042096290.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A159222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159225.P9455546201784334909

`A159217(n+2)+(2*A052955(n))²`
-/

namespace A159225.P9455546201784334909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159217 (n + 2) + (2 * A052955 n) ^ 2

end

end A159225.P9455546201784334909

noncomputable section

/-- A159225: 1/4 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 25.

Offset 2, canonical program `A159225.P9455546201784334909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A159225 (n : ℕ) : ℤ :=
  A159225.P9455546201784334909.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A159225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159229.P10720237677923146473

`A052955(3*n)+A020707(n)-2`
-/

namespace A159229.P10720237677923146473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (3 * n) + A020707 n - 2

end

end A159229.P10720237677923146473

noncomputable section

/-- A159229: 1/16 the number of n X n arrays of squares of integers with every 2X2 subblock summing to 30.

Offset 2, canonical program `A159229.P10720237677923146473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A159229 (n : ℕ) : ℤ :=
  A159229.P10720237677923146473.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A159229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159277.P4275423233446813716

`A011782(n)*A054881(n)`
-/

namespace A159277.P4275423233446813716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A054881 n

end

end A159277.P4275423233446813716

noncomputable section

/-- A159277: Ways to write the identity as a product of n 3-cycles in symmetric group S_4.

Offset 0, canonical program `A159277.P4275423233446813716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A159277 (n : ℕ) : ℤ :=
  A159277.P4275423233446813716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A159277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159329.P3710613267588612533

`A159347(n)+A097550(n)`
-/

namespace A159329.P3710613267588612533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 n + A097550 n

end

end A159329.P3710613267588612533

noncomputable section

/-- A159329: Transform of the finite sequence (1, 0, -1) by the T_{1,1} transformation (see link).

Offset 0, canonical program `A159329.P3710613267588612533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159329 (n : ℕ) : ℤ :=
  A159329.P3710613267588612533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159331.P2025219793887168336

`A159349(n)+A097550(n)`
-/

namespace A159331.P2025219793887168336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159349 n + A097550 n

end

end A159331.P2025219793887168336

noncomputable section

/-- A159331: Transform of the finite sequence (1, 0, -1, 0, 1, 0, -1) by the T_{1,1} transform (see link).

Offset 0, canonical program `A159331.P2025219793887168336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159331 (n : ℕ) : ℤ :=
  A159331.P2025219793887168336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159334.P11728449618279607625

`A159350(n)+A097550(n)`
-/

namespace A159334.P11728449618279607625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 n + A097550 n

end

end A159334.P11728449618279607625

noncomputable section

/-- A159334: Transform of A056594 by the T_{1,1} transformation (see link).

Offset 0, canonical program `A159334.P11728449618279607625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159334 (n : ℕ) : ℤ :=
  A159334.P11728449618279607625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159624.P9845643586274726781

`A159619(2*(n+1))-A159615(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159624.P9845643586274726781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159619 (2 * (n + 1)) - A159615 (2 * (n + 1))

end

end A159624.P9845643586274726781

noncomputable section

/-- A159624: a(n)=A159619(2n)-A159615(2n).

Offset 1, canonical program `A159624.P9845643586274726781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A159615, A159619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159624 (n : ℕ) : ℤ :=
  A159624.P9845643586274726781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A159615, A159619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159710.P6503886363121990557

`n*A000431((2*n)%(n+1))`
-/

namespace A159710.P6503886363121990557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000431 (2 * n % (n + 1))

end

end A159710.P6503886363121990557

noncomputable section

/-- A159710: Number of permutations of 1..n arranged in a circle with exactly 2 local maxima.

Offset 0, canonical program `A159710.P6503886363121990557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A159710 (n : ℕ) : ℤ :=
  A159710.P6503886363121990557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A159710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159876.P18135579079725230870

`∑{d}[n+1, A096270(#)]`
-/

namespace A159876.P18135579079725230870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096270 d

end

end A159876.P18135579079725230870

noncomputable section

/-- A159876: Inverse Mobius transform of the rabbit sequence, A051731 * A005614.

Offset 1, canonical program `A159876.P18135579079725230870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159876 (n : ℕ) : ℤ :=
  A159876.P18135579079725230870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159986.P10623672141925611723

`A000108(n)%7`
-/

namespace A159986.P10623672141925611723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 7

end

end A159986.P10623672141925611723

noncomputable section

/-- A159986: Catalan numbers read modulo 7.

Offset 0, canonical program `A159986.P10623672141925611723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159986 (n : ℕ) : ℤ :=
  A159986.P10623672141925611723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159987.P18264325475443909403

`A289682(n)%8`
-/

namespace A159987.P18264325475443909403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289682 n) 8

end

end A159987.P18264325475443909403

noncomputable section

/-- A159987: Catalan numbers read modulo 8.

Offset 0, canonical program `A159987.P18264325475443909403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159987 (n : ℕ) : ℤ :=
  A159987.P18264325475443909403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159988.P1909233444926346523

`A000108(n)%11`
-/

namespace A159988.P1909233444926346523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 11

end

end A159988.P1909233444926346523

noncomputable section

/-- A159988: Catalan numbers read modulo 11 .

Offset 0, canonical program `A159988.P1909233444926346523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159988 (n : ℕ) : ℤ :=
  A159988.P1909233444926346523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159989.P6743413061247156764

`A000108(n)%12`
-/

namespace A159989.P6743413061247156764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 12

end

end A159989.P6743413061247156764

noncomputable section

/-- A159989: Catalan numbers read modulo 12.

Offset 0, canonical program `A159989.P6743413061247156764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159989 (n : ℕ) : ℤ :=
  A159989.P6743413061247156764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160016.P18102945791737797298

`A004525(n)+n%A116966(n)`
-/

namespace A160016.P18102945791737797298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + Int.tmod (n : ℤ) (A116966 n)

end

end A160016.P18102945791737797298

noncomputable section

/-- A160016: Lodumo_2 transform of A159833.

Offset 0, canonical program `A160016.P18102945791737797298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160016 (n : ℕ) : ℤ :=
  A160016.P18102945791737797298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160117.P14095845487667351200

`A160411(n)+a(n-1)` with `a(0)=0`
-/

namespace A160117.P14095845487667351200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160411 n + a (n - 1)

end

end A160117.P14095845487667351200

noncomputable section

/-- A160117: Number of "ON" cells after n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A160117.P14095845487667351200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160117 (n : ℕ) : ℤ :=
  A160117.P14095845487667351200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160144.P6080785552484719942

`(2*n+1)/A014491(2*n+1)`
-/

namespace A160144.P6080785552484719942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A014491 (2 * n + 1) : ℚ)

end

end A160144.P6080785552484719942

noncomputable section

/-- A160144: Numerator of (2*n+1)/(2^(2*n+1)-1).

Offset 0, canonical program `A160144.P6080785552484719942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160144.P6080785552484719942.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160189.P17763358345723942006

`A020695(n)-p?[A001057(n)]`
-/

namespace A160189.P17763358345723942006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160189.P17763358345723942006

noncomputable section

/-- A160189: Prime terms subtracted from Fibonacci terms (ignoring first two terms of Fibonacci sequence).

Offset 1, canonical program `A160189.P17763358345723942006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A160189 (n : ℕ) : ℤ :=
  A160189.P17763358345723942006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A160189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160382.P9589961601338406698

`A160381(A003817(n)-n)`
-/

namespace A160382.P9589961601338406698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A003817 n - (n : ℤ)).toNat

end

end A160382.P9589961601338406698

noncomputable section

/-- A160382: Number of 2's in base-4 representation of n.

Offset 0, canonical program `A160382.P9589961601338406698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160382 (n : ℕ) : ℤ :=
  A160382.P9589961601338406698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160451.P1535954668451377781

`8*A033568(A001318(n+3))`
-/

namespace A160451.P1535954668451377781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A033568 (A001318 (n + 3)).toNat

end

end A160451.P1535954668451377781

noncomputable section

/-- A160451: a(n) = (4/3)*u*(u^3+6*u^2+8*u-3) where u=floor((3*n+5)/2).

Offset 1, canonical program `A160451.P1535954668451377781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A160451 (n : ℕ) : ℤ :=
  A160451.P1535954668451377781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A160451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160455.P8880904531920314958

`A005044(C(n+4, 2))%Δ[n²²]`
-/

namespace A160455.P8880904531920314958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005044 (Nat.choose (n + 4) 2)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A160455.P8880904531920314958

noncomputable section

/-- A160455: Number of triangles that can be built from rods with lengths 1,2,...,n by using and concatenating all rods.

Offset 3, canonical program `A160455.P8880904531920314958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A160455 (n : ℕ) : ℤ :=
  A160455.P8880904531920314958.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A160455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160545.P5564771938556718587

`comp[A176409(n+1)]`
-/

namespace A160545.P5564771938556718587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160545.P5564771938556718587

noncomputable section

/-- A160545: Numbers coprime to 21.

Offset 1, canonical program `A160545.P5564771938556718587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160545 (n : ℕ) : ℤ :=
  (A160545.P5564771938556718587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160546.P3257711352568043309

`A008621(floor(n/7))+n`
-/

namespace A160546.P3257711352568043309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ⌊(n : ℚ) / 7⌋.toNat + (n : ℤ)

end

end A160546.P3257711352568043309

noncomputable section

/-- A160546: Not divisible by 29.

Offset 1, canonical program `A160546.P3257711352568043309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160546 (n : ℕ) : ℤ :=
  A160546.P3257711352568043309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160590.P5144668435671400432

`A140684(∑[A140684(n+1)])`
-/

namespace A160590.P5144668435671400432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160590.P5144668435671400432

noncomputable section

/-- A160590: Next-to-least significant digit of 2^n.

Offset 4, canonical program `A160590.P5144668435671400432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A160590 (n : ℕ) : ℤ :=
  A160590.P5144668435671400432.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. -/
def A160590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160591.P9164857169513233061

`A000720(A040117(n+1))`
-/

namespace A160591.P9164857169513233061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A040117 (n + 1)).toNat

end

end A160591.P9164857169513233061

noncomputable section

/-- A160591: Indices of primes congruent to 5 modulo 12.

Offset 1, canonical program `A160591.P9164857169513233061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160591 (n : ℕ) : ℤ :=
  A160591.P9164857169513233061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160592.P15698679299650213589

`A000720(A068229(n+1))`
-/

namespace A160592.P15698679299650213589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A068229 (n + 1)).toNat

end

end A160592.P15698679299650213589

noncomputable section

/-- A160592: Indices of primes congruent to 7 modulo 12.

Offset 1, canonical program `A160592.P15698679299650213589`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160592 (n : ℕ) : ℤ :=
  A160592.P15698679299650213589.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160593.P18105628296432784865

`A000720(A068231(n+1))`
-/

namespace A160593.P18105628296432784865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A068231 (n + 1)).toNat

end

end A160593.P18105628296432784865

noncomputable section

/-- A160593: Indices of primes congruent to 11 modulo 12.

Offset 1, canonical program `A160593.P18105628296432784865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160593 (n : ℕ) : ℤ :=
  A160593.P18105628296432784865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160594.P8669518195614110326

`A000720(A068228(n+1))`
-/

namespace A160594.P8669518195614110326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A068228 (n + 1)).toNat

end

end A160594.P8669518195614110326

noncomputable section

/-- A160594: Indices of primes congruent to 1 modulo 12.

Offset 1, canonical program `A160594.P8669518195614110326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160594 (n : ℕ) : ℤ :=
  A160594.P8669518195614110326.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160596.P4885123688175961226

`lcm(A000217(n+1), A023896(n+2))/A023896(n+2)`
-/

namespace A160596.P4885123688175961226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000217 (n + 1)) (A023896 (n + 2)) : ℚ) / (A023896 (n + 2) : ℚ)

end

end A160596.P4885123688175961226

noncomputable section

/-- A160596: Denominator of resilience R(n) = phi(n)/(n-1).

Offset 2, canonical program `A160596.P4885123688175961226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160596 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160596.P4885123688175961226.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160706.P11268429903863111269

`(A057079(n)-A099254(n))*A057078(n)`
-/

namespace A160706.P11268429903863111269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057079 n - A099254 n) * A057078 n

end

end A160706.P11268429903863111269

noncomputable section

/-- A160706: Hankel transform of A052702(n+1).

Offset 0, canonical program `A160706.P11268429903863111269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160706 (n : ℕ) : ℤ :=
  A160706.P11268429903863111269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160741.P12067086175370630114

`A160739(2*n)`
-/

namespace A160741.P12067086175370630114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160739 (2 * n)

end

end A160741.P12067086175370630114

noncomputable section

/-- A160741: Numerator of P_6(2n), the Legendre polynomial of order 6 at 2n.

Offset 0, canonical program `A160741.P12067086175370630114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160741 (n : ℕ) : ℤ :=
  A160741.P12067086175370630114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A160741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160788.P1866869141177683774

`A160834(n)-A008911(n)*A132411(n)`
-/

namespace A160788.P1866869141177683774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - A008911 n * A132411 n

end

end A160788.P1866869141177683774

noncomputable section

/-- A160788: G.f.: (1+62*x+561*x^2+1014*x^3+449*x^4+48*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160788.P1866869141177683774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160788 (n : ℕ) : ℤ :=
  A160788.P1866869141177683774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160798.P4220499149327281104

`A160797(n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160798.P4220499149327281104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160797 (n + 3) : ℚ) / 3

end

end A160798.P4220499149327281104

noncomputable section

/-- A160798: a(n) = A160797(n+2)/3.

Offset 1, canonical program `A160798.P4220499149327281104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160798 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160798.P4220499149327281104.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160817.P13598031876587468841

`A160834(n)-A002415(n)*A132411(n)`
-/

namespace A160817.P13598031876587468841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - A002415 n * A132411 n

end

end A160817.P13598031876587468841

noncomputable section

/-- A160817: Expansion of (1+62*x+564*x^2+1041*x^3+476*x^4+51*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160817.P13598031876587468841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160817 (n : ℕ) : ℤ :=
  A160817.P13598031876587468841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160906.P15132912407392441353

`2*A066380(n)-A005809(n)`
-/

namespace A160906.P15132912407392441353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066380 n - A005809 n

end

end A160906.P15132912407392441353

noncomputable section

/-- A160906: Row sums of A159841.

Offset 0, canonical program `A160906.P15132912407392441353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A160906 (n : ℕ) : ℤ :=
  A160906.P15132912407392441353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A160906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160967.P16943757796773735707

`record[A135318(n)*A166486(n)]`
-/

namespace A160967.P16943757796773735707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n * A166486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160967.P16943757796773735707

noncomputable section

/-- A160967: Numbers of the form (4^k - 1)/3 or 2^k.

Offset 0, canonical program `A160967.P16943757796773735707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A160967 (n : ℕ) : ℤ :=
  A160967.P16943757796773735707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A160967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161051.P17687368643804515329

`Δ[a(n-1)+a(A113497(n)%n)]` with `a(0)=1, a(1)=1`
-/

namespace A161051.P17687368643804515329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (Int.tmod (A113497 n) (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A161051.P17687368643804515329

noncomputable section

/-- A161051: Number of partitions of 2n into powers of two where every part appears at least twice.

Offset 1, canonical program `A161051.P17687368643804515329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161051 (n : ℕ) : ℤ :=
  A161051.P17687368643804515329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161116.P10574643515255184138

`A070824(2*n+3)`
-/

namespace A161116.P10574643515255184138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * n + 3)

end

end A161116.P10574643515255184138

noncomputable section

/-- A161116: a(n) is the number of nontrivial positive divisors of 2n+3.

Offset 0, canonical program `A161116.P10574643515255184138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161116 (n : ℕ) : ℤ :=
  A161116.P10574643515255184138.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161153.P2026840443107816770

`lt[gcd(n+1, A070939(n+1)), 2]+1`
-/

namespace A161153.P2026840443107816770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A070939 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A161153.P2026840443107816770

noncomputable section

/-- A161153: Positive integers that are coprime to their number of digits in binary representation.

Offset 1, canonical program `A161153.P2026840443107816770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161153 (n : ℕ) : ℤ :=
  (A161153.P2026840443107816770.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161178.P8855392918829510295

`∑{digits}[n, A006882(#)]`
-/

namespace A161178.P8855392918829510295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A006882 x).sum

end

end A161178.P8855392918829510295

noncomputable section

/-- A161178: Sum of the double factorials of the digits of n.

Offset 0, canonical program `A161178.P8855392918829510295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161178 (n : ℕ) : ℤ :=
  A161178.P8855392918829510295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161339.P10592069914475419976

`and(∑[A161205(n+1)], -1)`
-/

namespace A161339.P10592069914475419976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A161339.P10592069914475419976

noncomputable section

/-- A161339: Partial sums of A161205.

Offset 1, canonical program `A161339.P10592069914475419976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161339 (n : ℕ) : ℤ :=
  A161339.P10592069914475419976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161466.P17609333070254711809

`record[gcd(n+1, A008527(gcd(n, n+1))!)]`
-/

namespace A161466.P17609333070254711809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial (A008527 (Nat.gcd n (n + 1))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161466.P17609333070254711809

noncomputable section

/-- A161466: Divisors of 10!.

Offset 1, canonical program `A161466.P17609333070254711809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A161466 (n : ℕ) : ℤ :=
  (A161466.P17609333070254711809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A161466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161504.P6427745028966693470

`p?[A063214(n+1)+A063213(n+1)]`
-/

namespace A161504.P6427745028966693470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (n + 1) + A063213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161504.P6427745028966693470

noncomputable section

/-- A161504: Primes congruent to {1, 2, 10, 11, 19, 20} mod 21.

Offset 1, canonical program `A161504.P6427745028966693470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3471 terms. -/
def A161504 (n : ℕ) : ℤ :=
  A161504.P6427745028966693470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3471 terms. -/
def A161504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161505.P14222485162780523660

`p?[∑[gcd(18, A005899(n))]]`
-/

namespace A161505.P14222485162780523660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 18 (A005899 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161505.P14222485162780523660

noncomputable section

/-- A161505: Primes congruent to {1, 7, 8, 25, 26, 32} mod 33.

Offset 1, canonical program `A161505.P14222485162780523660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. -/
def A161505 (n : ℕ) : ℤ :=
  (A161505.P14222485162780523660.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. -/
def A161505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161654.P13899316953508437492

`1-A054008(n+1)+n`
-/

namespace A161654.P13899316953508437492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054008 (n + 1) + (n : ℤ)

end

end A161654.P13899316953508437492

noncomputable section

/-- A161654: a(n) = the largest multiple of {the number of divisors of n} that is <= n.

Offset 1, canonical program `A161654.P13899316953508437492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A161654 (n : ℕ) : ℤ :=
  A161654.P13899316953508437492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A161654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161725.P14638798488162685741

`p?[A049481(n+1)-30]+30`
-/

namespace A161725.P14638798488162685741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P14638798488162685741

noncomputable section

/-- A161725: Primes p such that also p+30 and p-30 are primes.

Offset 1, canonical program `A161725.P14638798488162685741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2864 terms. -/
def A161725 (n : ℕ) : ℤ :=
  A161725.P14638798488162685741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2864 terms. -/
def A161725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161847.P7260317161909887223

`A000040(n+1)%A109256(n)`
-/

namespace A161847.P7260317161909887223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A109256 n)

end

end A161847.P7260317161909887223

noncomputable section

/-- A161847: Denominator of the ratio (prime((n+1)^2) - prime(n^2))/prime(n).

Offset 1, canonical program `A161847.P7260317161909887223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161847 (n : ℕ) : ℤ :=
  A161847.P7260317161909887223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161909.P10245088550154768326

`∑[(-1)^n*A000749(n+1)]`
-/

namespace A161909.P10245088550154768326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161909.P10245088550154768326

noncomputable section

/-- A161909: Inverse binomial transform of A181586.

Offset 0, canonical program `A161909.P10245088550154768326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A161909 (n : ℕ) : ℤ :=
  A161909.P10245088550154768326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A161909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162459.P12002494023824943082

`2^n*A002321(n+1)`
-/

namespace A162459.P12002494023824943082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002321 (n + 1)

end

end A162459.P12002494023824943082

noncomputable section

/-- A162459: A002321*A000079.

Offset 1, canonical program `A162459.P12002494023824943082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162459 (n : ℕ) : ℤ :=
  A162459.P12002494023824943082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162753.P6450214016435119612

`A000040(floor(n/2)-and(1, a(n-1))+1)` with `a(0)=2`
-/

namespace A162753.P6450214016435119612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (⌊(n : ℚ) / 2⌋ - Int.land 1 (a (n - 1)) + 1).toNat

end

end A162753.P6450214016435119612

noncomputable section

/-- A162753: a(0)=a(1)=2; a(n) is the smallest prime such that a(n-1)^a(n) > a(n-2)^a(n-1).

Offset 0, canonical program `A162753.P6450214016435119612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162753 (n : ℕ) : ℤ :=
  A162753.P6450214016435119612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162772.P324308446947990405

`A163064(n)-A108404(n)`
-/

namespace A162772.P324308446947990405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163064 n - A108404 n

end

end A162772.P324308446947990405

noncomputable section

/-- A162772: a(n) = ((2+sqrt(5))*(4+sqrt(5))^n + (2-sqrt(5))*(4-sqrt(5))^n)/2.

Offset 0, canonical program `A162772.P324308446947990405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A162772 (n : ℕ) : ℤ :=
  A162772.P324308446947990405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A162772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162923.P2258807770550946497

`comp[A000203(A000203(n+1))-1]+1`
-/

namespace A162923.P2258807770550946497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A162923.P2258807770550946497

noncomputable section

/-- A162923: Numbers k such that the equation sigma(sigma(x)) = k has no solutions.

Offset 1, canonical program `A162923.P2258807770550946497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162923 (n : ℕ) : ℤ :=
  (A162923.P2258807770550946497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162939.P7706678392215437110

`record[A001414(2*n+1)+1+n]`
-/

namespace A162939.P7706678392215437110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162939.P7706678392215437110

noncomputable section

/-- A162939: A 1-based alternate sum over the numbers from 0 to prime(n).

Offset 1, canonical program `A162939.P7706678392215437110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A162939 (n : ℕ) : ℤ :=
  A162939.P7706678392215437110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A162939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162966.P408493999641022152

`record[C(A105570(n+1), n)]`
-/

namespace A162966.P408493999641022152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105570 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162966.P408493999641022152

noncomputable section

/-- A162966: Union of 1 and nonsquarefree numbers (A013929).

Offset 1, canonical program `A162966.P408493999641022152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162966 (n : ℕ) : ℤ :=
  (A162966.P408493999641022152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162969.P4444035939304920594

`A000166(floor(n/2))+A000166(A065033(n))`
-/

namespace A162969.P4444035939304920594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 ⌊(n : ℚ) / 2⌋.toNat + A000166 (A065033 n).toNat

end

end A162969.P4444035939304920594

noncomputable section

/-- A162969: Number of permutations of {1,2,...,n} in which the fixed points and the non-fixed points alternate.

Offset 0, canonical program `A162969.P4444035939304920594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A162969 (n : ℕ) : ℤ :=
  A162969.P4444035939304920594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A162969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163087.P13228092064453547001

`∏{d}[n, A056040(#)]`
-/

namespace A163087.P13228092064453547001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A056040 d

end

end A163087.P13228092064453547001

noncomputable section

/-- A163087: Product{k|n} k$. Here '$' denotes the swinging factorial function (A056040).

Offset 0, canonical program `A163087.P13228092064453547001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A163087 (n : ℕ) : ℤ :=
  A163087.P13228092064453547001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A163087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163241.P5053896136228002252

`xor(n, A063695(n)/2)`
-/

namespace A163241.P5053896136228002252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((A063695 n : ℚ) / 2))

end

end A163241.P5053896136228002252

noncomputable section

/-- A163241: Simple self-inverse permutation: Write n in base 4, then replace each digit '2' with '3' and vice versa, then convert back to decimal.

Offset 0, canonical program `A163241.P5053896136228002252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163241 (n : ℕ) : ℤ :=
  A163241.P5053896136228002252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163294.P15376385814900721170

`A282738(p?[A014681(n)])-A001057(n)`
-/

namespace A163294.P15376385814900721170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A001057 n

end

end A163294.P15376385814900721170

noncomputable section

/-- A163294: a(n) = 2 + Sum_{x=n..prime(n)} (-x*(-1)^x).

Offset 1, canonical program `A163294.P15376385814900721170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A163294 (n : ℕ) : ℤ :=
  A163294.P15376385814900721170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A163294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163369.P14747559561079042345

`A000203(A062402(n+1))`
-/

namespace A163369.P14747559561079042345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062402 (n + 1)).toNat

end

end A163369.P14747559561079042345

noncomputable section

/-- A163369: a(n) = sigma(sigma(phi(n))).

Offset 1, canonical program `A163369.P14747559561079042345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163369 (n : ℕ) : ℤ :=
  A163369.P14747559561079042345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163372.P2384357725536949515

`A062402(A000203(n+1))`
-/

namespace A163372.P2384357725536949515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A000203 (n + 1)).toNat

end

end A163372.P2384357725536949515

noncomputable section

/-- A163372: a(n) = sigma(phi(sigma(n))).

Offset 1, canonical program `A163372.P2384357725536949515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163372 (n : ℕ) : ℤ :=
  A163372.P2384357725536949515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163407.P15515305636135691580

`A014682(A001414(n+1)²-A067666(n+1))`
-/

namespace A163407.P15515305636135691580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001414 (n + 1) ^ 2 - A067666 (n + 1)).toNat

end

end A163407.P15515305636135691580

noncomputable section

/-- A163407: Sum of semiprime divisors of n with repetition.

Offset 1, canonical program `A163407.P15515305636135691580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163407 (n : ℕ) : ℤ :=
  A163407.P15515305636135691580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163434.P15103238688503368501

`A239608(n)%(A144130(n)+n²)`
-/

namespace A163434.P15103238688503368501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239608 n) (A144130 n + (n ^ 2 : ℤ))

end

end A163434.P15103238688503368501

noncomputable section

/-- A163434: Number of different fixed (possibly) disconnected tetrominoes bounded tightly by an n X n square.

Offset 1, canonical program `A163434.P15103238688503368501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163434 (n : ℕ) : ℤ :=
  A163434.P15103238688503368501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163575.P3456227262057770014

`floor((n+1)/2^A136480(n+1))`
-/

namespace A163575.P3456227262057770014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (2 : ℚ) ^ (A136480 (n + 1) : ℤ)⌋

end

end A163575.P3456227262057770014

noncomputable section

/-- A163575: Remove all trailing bits equal to (n mod 2) in binary representation of n.

Offset 1, canonical program `A163575.P3456227262057770014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163575 (n : ℕ) : ℤ :=
  A163575.P3456227262057770014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163595.P15993234825003165298

`A000720(A061240(n+1))`
-/

namespace A163595.P15993234825003165298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061240 (n + 1)).toNat

end

end A163595.P15993234825003165298

noncomputable section

/-- A163595: Numbers k such that prime(k) == 5 (mod 9).

Offset 1, canonical program `A163595.P15993234825003165298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163595 (n : ℕ) : ℤ :=
  A163595.P15993234825003165298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163659.P14378206319616432805

`A038712(n+1)*A061347(n+1)`
-/

namespace A163659.P14378206319616432805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A061347 (n + 1)

end

end A163659.P14378206319616432805

noncomputable section

/-- A163659: L.g.f.: Sum_{n>=1} a(n)*x^n/n = log(S(x)/x) where S(x) is the g.f. of Stern's diatomic series (A002487).

Offset 1, canonical program `A163659.P14378206319616432805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163659 (n : ℕ) : ℤ :=
  A163659.P14378206319616432805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163704.P11637123394182967532

`∑[A163695(n+1)-1]`
-/

namespace A163704.P11637123394182967532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163704.P11637123394182967532

noncomputable section

/-- A163704: Number of n X 2 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

Offset 1, canonical program `A163704.P11637123394182967532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A163704 (n : ℕ) : ℤ :=
  A163704.P11637123394182967532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A163704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163774.P18138271461630038501

`A000984(n+1)-A002426(n+1)`
-/

namespace A163774.P18138271461630038501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A002426 (n + 1)

end

end A163774.P18138271461630038501

noncomputable section

/-- A163774: Row sums of the central coefficients triangle (A163771).

Offset 0, canonical program `A163774.P18138271461630038501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A163774 (n : ℕ) : ℤ :=
  A163774.P18138271461630038501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A163774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163824.P14431625898049546395

`A000984(n)-Δ[Δ[A000392(n)]]`
-/

namespace A163824.P14431625898049546395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (f1 (n + 1) - f1 n)

end

end A163824.P14431625898049546395

noncomputable section

/-- A163824: Number of permutations of length n in the 2x2 double-chevron permutation grid class.

Offset 0, canonical program `A163824.P14431625898049546395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A163824 (n : ℕ) : ℤ :=
  A163824.P14431625898049546395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A163824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163869.P10429528466280486876

`∑[A377197(n)]`
-/

namespace A163869.P10429528466280486876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163869.P10429528466280486876

noncomputable section

/-- A163869: Binomial transform of the beta numbers 1/beta(n+1,n+1) (A002457).

Offset 0, canonical program `A163869.P10429528466280486876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A163869 (n : ℕ) : ℤ :=
  A163869.P10429528466280486876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A163869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163933.P1195655893141466299

`∑[(n+1)*(∑[A050509(n+1)]+1)]`
-/

namespace A163933.P1195655893141466299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163933.P1195655893141466299

noncomputable section

/-- A163933: Third right hand column of triangle A163932.

Offset 3, canonical program `A163933.P1195655893141466299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A163933 (n : ℕ) : ℤ :=
  A163933.P1195655893141466299.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A163933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164318.P3164482500635630201

`p?[(n+2)*A082551(n+1)]`
-/

namespace A164318.P3164482500635630201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164318.P3164482500635630201

noncomputable section

/-- A164318: Primes p such that the sum of divisors of p-1 is larger than 2*p.

Offset 1, canonical program `A164318.P3164482500635630201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4153 terms. -/
def A164318 (n : ℕ) : ℤ :=
  A164318.P3164482500635630201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4153 terms. -/
def A164318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164319.P7850389425374029552

`record[p?[n%(n-A000203(n+1))]]`
-/

namespace A164319.P7850389425374029552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) ((n : ℤ) - A000203 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164319.P7850389425374029552

noncomputable section

/-- A164319: Primes p such that the sum of divisors of p+1 is larger than 2*p.

Offset 1, canonical program `A164319.P7850389425374029552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6142 terms. -/
def A164319 (n : ℕ) : ℤ :=
  A164319.P7850389425374029552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6142 terms. -/
def A164319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164349.P4841108181734445144

`a(A053645(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A164349.P4841108181734445144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A053645 (n - 1)).toNat

end

end A164349.P4841108181734445144

noncomputable section

/-- A164349: The limit of the string "0, 1" under the operation 'repeat string twice and remove last symbol'.

Offset 0, canonical program `A164349.P4841108181734445144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164349 (n : ℕ) : ℤ :=
  (A164349.P4841108181734445144.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164391.P9179662373154407567

`∑[A123908(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A164391.P9179662373154407567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A123908 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164391.P9179662373154407567

noncomputable section

/-- A164391: Number of binary strings of length n with no substrings equal to 0000 or 0111.

Offset 0, canonical program `A164391.P9179662373154407567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A164391 (n : ℕ) : ℤ :=
  A164391.P9179662373154407567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A164391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164399.P11409520841760359662

`A003479(n+4)+A052537(n+5)+A052537(n)`
-/

namespace A164399.P11409520841760359662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 (n + 4) + (A052537 (n + 5) + A052537 n)

end

end A164399.P11409520841760359662

noncomputable section

/-- A164399: Number of binary strings of length n with no substrings equal to 0001 or 1010.

Offset 4, canonical program `A164399.P11409520841760359662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. -/
def A164399 (n : ℕ) : ℤ :=
  A164399.P11409520841760359662.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 431 terms. -/
def A164399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164404.P8510783320141564040

`(A164402(n+2)+A164402(n+5))/2`
-/

namespace A164404.P8510783320141564040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164402 (n + 2) + A164402 (n + 5) : ℚ) / 2

end

end A164404.P8510783320141564040

noncomputable section

/-- A164404: Number of binary strings of length n with no substrings equal to 0010 or 1011.

Offset 4, canonical program `A164404.P8510783320141564040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A164404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164404.P8510783320141564040.a (n - 4))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A164404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164406.P600747503632810465

`A291725(n)-A068921(n)`
-/

namespace A164406.P600747503632810465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n - A068921 n

end

end A164406.P600747503632810465

noncomputable section

/-- A164406: Number of binary strings of length n with no substrings equal to 0011 or 0101.

Offset 0, canonical program `A164406.P600747503632810465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A164406 (n : ℕ) : ℤ :=
  A164406.P600747503632810465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A164406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164407.P9971242313005730117

`A060945(n+1)+A005251(n+7)`
-/

namespace A164407.P9971242313005730117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) + A005251 (n + 7)

end

end A164407.P9971242313005730117

noncomputable section

/-- A164407: Number of binary strings of length n with no substrings equal to 0000 0001 or 0010.

Offset 4, canonical program `A164407.P9971242313005730117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164407 (n : ℕ) : ℤ :=
  A164407.P9971242313005730117.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164409.P3755803672503472147

`A117374(2*(n+4))`
-/

namespace A164409.P3755803672503472147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117374 (2 * (n + 4))

end

end A164409.P3755803672503472147

noncomputable section

/-- A164409: Number of binary strings of length n with no substrings equal to 0000 0001 or 0100.

Offset 4, canonical program `A164409.P3755803672503472147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164409 (n : ℕ) : ℤ :=
  A164409.P3755803672503472147.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164411.P5870386763254250035

`A340215(n+4)-2*A340215(n+2)`
-/

namespace A164411.P5870386763254250035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4) - 2 * A340215 (n + 2)

end

end A164411.P5870386763254250035

noncomputable section

/-- A164411: Number of binary strings of length n with no substrings equal to 0000, 0001, or 0110.

Offset 0, canonical program `A164411.P5870386763254250035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A164411 (n : ℕ) : ℤ :=
  A164411.P5870386763254250035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A164411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164412.P16406330314494169784

`A094103(2*n+9)`
-/

namespace A164412.P16406330314494169784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094103 (2 * n + 9)

end

end A164412.P16406330314494169784

noncomputable section

/-- A164412: Number of binary strings of length n with no substrings equal to 0000 0001 or 0111.

Offset 4, canonical program `A164412.P16406330314494169784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164412 (n : ℕ) : ℤ :=
  A164412.P16406330314494169784.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164421.P12875825263820570006

`A340217(n+1)+A340217(n+5)`
-/

namespace A164421.P12875825263820570006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340217 (n + 1) + A340217 (n + 5)

end

end A164421.P12875825263820570006

noncomputable section

/-- A164421: Number of binary strings of length n with no substrings equal to 0000 0010 or 1001.

Offset 4, canonical program `A164421.P12875825263820570006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A164421 (n : ℕ) : ℤ :=
  A164421.P12875825263820570006.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. -/
def A164421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164422.P17038356559560906086

`A000570(n+6)+Δ[A000570(n+3)]`
-/

namespace A164422.P17038356559560906086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (n + 6) + (f1 (n + 1) - f1 n)

end

end A164422.P17038356559560906086

noncomputable section

/-- A164422: Number of binary strings of length n with no substrings equal to 0000 0010 or 1010.

Offset 4, canonical program `A164422.P17038356559560906086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A164422 (n : ℕ) : ℤ :=
  A164422.P17038356559560906086.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A164422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164438.P11898394778015943007

`A023435(n+8)-3`
-/

namespace A164438.P11898394778015943007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (n + 8) - 3

end

end A164438.P11898394778015943007

noncomputable section

/-- A164438: Number of binary strings of length n with no substrings equal to 0000 0110 or 0111.

Offset 4, canonical program `A164438.P11898394778015943007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A164438 (n : ℕ) : ℤ :=
  A164438.P11898394778015943007.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A164438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164447.P16929820992422671722

`record[A272912(n+13)]-A088911(n+4)`
-/

namespace A164447.P16929820992422671722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088911 (n + 4)

end

end A164447.P16929820992422671722

noncomputable section

/-- A164447: Number of binary strings of length n with no substrings equal to 0001 0010 or 0110.

Offset 4, canonical program `A164447.P16929820992422671722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164447 (n : ℕ) : ℤ :=
  A164447.P16929820992422671722.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164448.P17168225305762406650

`A164464(n+4)+∑[A023435(n)]`
-/

namespace A164448.P17168225305762406650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164448.P17168225305762406650

noncomputable section

/-- A164448: Number of binary strings of length n with no substrings equal to 0001 0010 or 0111.

Offset 4, canonical program `A164448.P17168225305762406650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A164448 (n : ℕ) : ℤ :=
  A164448.P17168225305762406650.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A164448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164449.P9687608175749677541

`A097083(n+2)+A000032(n+5)`
-/

namespace A164449.P9687608175749677541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 2) + A000032 (n + 5)

end

end A164449.P9687608175749677541

noncomputable section

/-- A164449: Number of binary strings of length n with no substrings equal to 0001 0010 or 1010.

Offset 4, canonical program `A164449.P9687608175749677541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164449 (n : ℕ) : ℤ :=
  A164449.P9687608175749677541.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164452.P3000043555096228233

`A048590(n+2)+A048590(n+4)-(n+16)`
-/

namespace A164452.P3000043555096228233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 (n + 2) + (A048590 (n + 4) - (n + 16 : ℤ))

end

end A164452.P3000043555096228233

noncomputable section

/-- A164452: Number of binary strings of length n with no substrings equal to 0001 0010 or 1101.

Offset 4, canonical program `A164452.P3000043555096228233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 705 terms. -/
def A164452 (n : ℕ) : ℤ :=
  A164452.P3000043555096228233.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 705 terms. -/
def A164452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164453.P12160442601266819930

`Δ[Δ[A164440(n+9)]]%A164440(n+5)`
-/

namespace A164453.P12160442601266819930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164440 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164440 (n + 5))

end

end A164453.P12160442601266819930

noncomputable section

/-- A164453: Number of binary strings of length n with no substrings equal to 0001 0011 or 0100.

Offset 4, canonical program `A164453.P12160442601266819930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A164453 (n : ℕ) : ℤ :=
  A164453.P12160442601266819930.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A164453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164454.P16577046448962556385

`A048626(n+3)-(A004396(n)+6)`
-/

namespace A164454.P16577046448962556385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 (n + 3) - (A004396 n + 6)

end

end A164454.P16577046448962556385

noncomputable section

/-- A164454: Number of binary strings of length n with no substrings equal to 0001 0011 or 0101.

Offset 4, canonical program `A164454.P16577046448962556385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A164454 (n : ℕ) : ℤ :=
  A164454.P16577046448962556385.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A164454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164456.P3672447585452505969

`n+9+∑[A164393(n+2)]`
-/

namespace A164456.P3672447585452505969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164393 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164456.P3672447585452505969

noncomputable section

/-- A164456: Number of binary strings of length n with no substrings equal to 0001 0011 or 1000.

Offset 4, canonical program `A164456.P3672447585452505969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A164456 (n : ℕ) : ℤ :=
  A164456.P3672447585452505969.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A164456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164458.P637685599849046048

`A007307(n+13)-A020735(n+7)`
-/

namespace A164458.P637685599849046048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 13) - A020735 (n + 7)

end

end A164458.P637685599849046048

noncomputable section

/-- A164458: Number of binary strings of length n with no substrings equal to 0001 0011 or 1011.

Offset 4, canonical program `A164458.P637685599849046048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A164458 (n : ℕ) : ℤ :=
  A164458.P637685599849046048.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. -/
def A164458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164460.P12087829792596565309

`A109537(n+7)+A109537(n+10)-2`
-/

namespace A164460.P12087829792596565309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 7) + (A109537 (n + 10) - 2)

end

end A164460.P12087829792596565309

noncomputable section

/-- A164460: Number of binary strings of length n with no substrings equal to 0001 0011 or 1101.

Offset 4, canonical program `A164460.P12087829792596565309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A164460 (n : ℕ) : ℤ :=
  A164460.P12087829792596565309.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A164460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164462.P14348606007212189000

`A000045(n+7)-∑[n]%2`
-/

namespace A164462.P14348606007212189000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 7) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A164462.P14348606007212189000

noncomputable section

/-- A164462: Number of binary strings of length n with no substrings equal to 0001 0100 or 0101.

Offset 4, canonical program `A164462.P14348606007212189000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164462 (n : ℕ) : ℤ :=
  A164462.P14348606007212189000.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164463.P13789395395333063195

`A286311(A020715(n))+A010892(n)`
-/

namespace A164463.P13789395395333063195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (A020715 n).toNat + A010892 n

end

end A164463.P13789395395333063195

noncomputable section

/-- A164463: Number of binary strings of length n with no substrings equal to 0001 0100 or 0110.

Offset 4, canonical program `A164463.P13789395395333063195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164463 (n : ℕ) : ℤ :=
  A164463.P13789395395333063195.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A164463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164466.P2888521042451949652

`∑[A003269(A257542(n+1))]`
-/

namespace A164466.P2888521042451949652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A257542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P2888521042451949652

noncomputable section

/-- A164466: Number of binary strings of length n with no substrings equal to 0001, 0100, or 1011.

Offset 0, canonical program `A164466.P2888521042451949652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A164466 (n : ℕ) : ℤ :=
  A164466.P2888521042451949652.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A164466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164471.P3513710247006841702

`A164395(n+1)+A164395(n+3)+3`
-/

namespace A164471.P3513710247006841702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 (n + 1) + (A164395 (n + 3) + 3)

end

end A164471.P3513710247006841702

noncomputable section

/-- A164471: Number of binary strings of length n with no substrings equal to 0001 0101 or 1000.

Offset 4, canonical program `A164471.P3513710247006841702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A164471 (n : ℕ) : ℤ :=
  A164471.P3513710247006841702.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A164471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164489.P7627719625061381392

`A109537(n+10)+∑[A109537(n+3)]`
-/

namespace A164489.P7627719625061381392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 10) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164489.P7627719625061381392

noncomputable section

/-- A164489: Number of binary strings of length n with no substrings equal to 0001 1011 or 1100.

Offset 4, canonical program `A164489.P7627719625061381392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A164489 (n : ℕ) : ℤ :=
  A164489.P7627719625061381392.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A164489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164490.P14874193741949125750

`A130137(n+6)-(A130137(n)+2)`
-/

namespace A164490.P14874193741949125750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130137 (n + 6) - (A130137 n + 2)

end

end A164490.P14874193741949125750

noncomputable section

/-- A164490: Number of binary strings of length n with no substrings equal to 0010 0011 or 0110.

Offset 4, canonical program `A164490.P14874193741949125750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A164490 (n : ℕ) : ℤ :=
  A164490.P14874193741949125750.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A164490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164491.P14143353542599236624

`Δ[A079960(n+2)+A079960(n+6)]`
-/

namespace A164491.P14143353542599236624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079960 (n + 2) + A079960 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164491.P14143353542599236624

noncomputable section

/-- A164491: Number of binary strings of length n with no substrings equal to 0010 0100 or 1001.

Offset 4, canonical program `A164491.P14143353542599236624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A164491 (n : ℕ) : ℤ :=
  A164491.P14143353542599236624.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A164491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164500.P6050288250861714650

`Δ[Δ[A120400(n+4)+A120400(n+7)]]`
-/

namespace A164500.P6050288250861714650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120400 (n + 4) + A120400 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164500.P6050288250861714650

noncomputable section

/-- A164500: Number of binary strings of length n with no substrings equal to 0010 1001 or 1010.

Offset 4, canonical program `A164500.P6050288250861714650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A164500 (n : ℕ) : ℤ :=
  A164500.P6050288250861714650.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A164500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164503.P13287873994081283143

`A000930(n+11)-(A003269(n+5)+A003269(n+13))`
-/

namespace A164503.P13287873994081283143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 11) - (A003269 (n + 5) + A003269 (n + 13))

end

end A164503.P13287873994081283143

noncomputable section

/-- A164503: Number of binary strings of length n with no substrings equal to 0011 0101 or 0110.

Offset 4, canonical program `A164503.P13287873994081283143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A164503 (n : ℕ) : ℤ :=
  A164503.P13287873994081283143.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A164503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164577.P166533466208341956

`A000217(A042965(n+2))²/A042965(n+2)`
-/

namespace A164577.P166533466208341956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A042965 (n + 2)).toNat ^ 2 : ℚ) / (A042965 (n + 2) : ℚ)

end

end A164577.P166533466208341956

noncomputable section

/-- A164577: Integer averages of the first perfect cubes up to some n^3.

Offset 1, canonical program `A164577.P166533466208341956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A164577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164577.P166533466208341956.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A164577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164743.P5989493387288468885

`A049341(n+7)`
-/

namespace A164743.P5989493387288468885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049341 (n + 7)

end

end A164743.P5989493387288468885

noncomputable section

/-- A164743: Digital root of 3*A000045(n).

Offset 1, canonical program `A164743.P5989493387288468885`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164743 (n : ℕ) : ℤ :=
  A164743.P5989493387288468885.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164852.P5010145751110003074

`A000032(n)+10*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A164852.P5010145751110003074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A000032 n + 10 * a (n - 2)

end

end A164852.P5010145751110003074

noncomputable section

/-- A164852: Diagonal sum of generalized Lucas-Pascal triangle;(11*10^n,1).

Offset 1, canonical program `A164852.P5010145751110003074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A164852 (n : ℕ) : ℤ :=
  A164852.P5010145751110003074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A164852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164955.P8784047705212146680

`A061602(A000045(n))`
-/

namespace A164955.P8784047705212146680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A000045 n).toNat

end

end A164955.P8784047705212146680

noncomputable section

/-- A164955: Sequence obtained from Fibonacci numbers by taking the factorials of each digit and summing.

Offset 0, canonical program `A164955.P8784047705212146680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164955 (n : ℕ) : ℤ :=
  A164955.P8784047705212146680.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164991.P7991826585228388326

`ceil(A000079(n)-A063886(n)/2)`
-/

namespace A164991.P7991826585228388326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℚ) - (A063886 n : ℚ) / 2⌉

end

end A164991.P7991826585228388326

noncomputable section

/-- A164991: Number of triangular involutions of n. A triangular involution is a square involution with at most three faces.

Offset 1, canonical program `A164991.P7991826585228388326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A164991 (n : ℕ) : ℤ :=
  A164991.P7991826585228388326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A164991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165162.P16797027812994173801

`A122197(A020703(n+1))`
-/

namespace A165162.P16797027812994173801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A020703 (n + 1)).toNat

end

end A165162.P16797027812994173801

noncomputable section

/-- A165162: Triangle T(n,m) with 2*n-1 entries per row, read by rows: the first n entries count down from n to 1, the remaining n-1 entries down from n-1 to 1.

Offset 1, canonical program `A165162.P16797027812994173801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A165162 (n : ℕ) : ℤ :=
  A165162.P16797027812994173801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A165162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165163.P1554951501839677559

`A061602(A000108(n))`
-/

namespace A165163.P1554951501839677559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A000108 n).toNat

end

end A165163.P1554951501839677559

noncomputable section

/-- A165163: Sequence is obtained from Catalan numbers (A000108) by taking the factorial of each digit and adding them up.

Offset 0, canonical program `A165163.P1554951501839677559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165163 (n : ℕ) : ℤ :=
  A165163.P1554951501839677559.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165188.P17491138411917498515

`A008731(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A165188.P17491138411917498515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008731 n + a (n - 2)

end

end A165188.P17491138411917498515

noncomputable section

/-- A165188: Interleaving of A014125 and zero followed by A014125.

Offset 1, canonical program `A165188.P17491138411917498515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165188 (n : ℕ) : ℤ :=
  A165188.P17491138411917498515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165189.P12331472653171714079

`∑[A001400(or(1, n))]`
-/

namespace A165189.P12331472653171714079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P12331472653171714079

noncomputable section

/-- A165189: Partial sums of partial sums of (A001840 interleaved with zeros).

Offset 1, canonical program `A165189.P12331472653171714079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165189 (n : ℕ) : ℤ :=
  A165189.P12331472653171714079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165206.P8129600844828367063

`1-∑[n*A002878(n)]`
-/

namespace A165206.P8129600844828367063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165206.P8129600844828367063

noncomputable section

/-- A165206: a(n) = (3-4*n)*F(2*n-2) + (4-7*n)*F(2*n-1).

Offset 0, canonical program `A165206.P8129600844828367063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A165206 (n : ℕ) : ℤ :=
  A165206.P8129600844828367063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A165206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165669.P9172651887663700738

`dr(A014206(A057357(A008486(n))))`
-/

namespace A165669.P9172651887663700738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014206 (A057357 (A008486 n).toNat).toNat)

end

end A165669.P9172651887663700738

noncomputable section

/-- A165669: First digit of the decimal expansion of (n^2+2)/7 after the decimal point.

Offset 0, canonical program `A165669.P9172651887663700738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A165669 (n : ℕ) : ℤ :=
  (A165669.P9172651887663700738.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A165669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165684.P15035907269724094192

`A029143(n+1)-A103221(n+1)`
-/

namespace A165684.P15035907269724094192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (n + 1) - A103221 (n + 1)

end

end A165684.P15035907269724094192

noncomputable section

/-- A165684: Dimension of the space of Siegel cusp forms of genus 2 and dimension 2n (associated with full modular group Gamma_2).

Offset 1, canonical program `A165684.P15035907269724094192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165684 (n : ℕ) : ℤ :=
  A165684.P15035907269724094192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165735.P14877846359675506891

`A010872(A054995(n+1))`
-/

namespace A165735.P14877846359675506891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A054995 (n + 1)).toNat

end

end A165735.P14877846359675506891

noncomputable section

/-- A165735: Surviving integers under the double-count Josephus problem (see A054995), modulo 3.

Offset 1, canonical program `A165735.P14877846359675506891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165735 (n : ℕ) : ℤ :=
  A165735.P14877846359675506891.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165794.P6654975979671749485

`xor(A000032(n+1), A000032(n))`
-/

namespace A165794.P6654975979671749485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000032 (n + 1)) (A000032 n)

end

end A165794.P6654975979671749485

noncomputable section

/-- A165794: Nimsum of pairs of consecutive Lucas numbers.

Offset 0, canonical program `A165794.P6654975979671749485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A165794 (n : ℕ) : ℤ :=
  A165794.P6654975979671749485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A165794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166070.P1012251332305445958

`lt[A054024(n+1), 2]+1`
-/

namespace A166070.P1012251332305445958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166070.P1012251332305445958

noncomputable section

/-- A166070: Sorted sequence of primes and multiply perfect numbers.

Offset 1, canonical program `A166070.P1012251332305445958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166070 (n : ℕ) : ℤ :=
  (A166070.P1012251332305445958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166458.P12701024512450342606

`round(A122869(n+1)/10)`
-/

namespace A166458.P12701024512450342606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A122869 (n + 1) : ℚ) / 10)

end

end A166458.P12701024512450342606

noncomputable section

/-- A166458: Numbers k such that 10*k - (-1)^k is prime.

Offset 1, canonical program `A166458.P12701024512450342606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166458 (n : ℕ) : ℤ :=
  A166458.P12701024512450342606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166547.P12175533422904995910

`∩[A141882(n+1), A141932(n+1)]`
-/

namespace A166547.P12175533422904995910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P12175533422904995910

noncomputable section

/-- A166547: Primes of the form 100*k+7.

Offset 1, canonical program `A166547.P12175533422904995910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1977 terms. -/
def A166547 (n : ℕ) : ℤ :=
  (A166547.P12175533422904995910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1977 terms. -/
def A166547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166602.P5138221118942487946

`eq[A072230(n+1), A101808(n)]`
-/

namespace A166602.P5138221118942487946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P5138221118942487946

noncomputable section

/-- A166602: Numbers k such that Sum_{i=1..k} i^2 divides Product_{i=1..k} i^2.

Offset 1, canonical program `A166602.P5138221118942487946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6699 terms. -/
def A166602 (n : ℕ) : ℤ :=
  (A166602.P5138221118942487946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6699 terms. -/
def A166602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166673.P4650330979156642246

`∏{p}[n+1, A016789(#)^val(n+1, #)]`
-/

namespace A166673.P4650330979156642246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016789 p ^ SequenceMachineLib.valuation (n + 1) p

end

end A166673.P4650330979156642246

noncomputable section

/-- A166673: Totally multiplicative sequence with a(p) = 3p+2 for prime p.

Offset 1, canonical program `A166673.P4650330979156642246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166673 (n : ℕ) : ℤ :=
  A166673.P4650330979156642246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166737.P1119223457734412701

`Δ[A000720(A235707(n+1)+A000007(n))]`
-/

namespace A166737.P1119223457734412701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A235707 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166737.P1119223457734412701

noncomputable section

/-- A166737: Number of primes in (n^2*log(n)..(n+1)^2*log(n+1)] semi-open intervals, n >= 1.

Offset 1, canonical program `A166737.P1119223457734412701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A166737 (n : ℕ) : ℤ :=
  A166737.P1119223457734412701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A166737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166819.P334354906009438737

`A060099(2*n)+∑[A007584(n)+C(n, 2)]`
-/

namespace A166819.P334354906009438737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n + (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166819.P334354906009438737

noncomputable section

/-- A166819: Number of n X 3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in increasing order.

Offset 1, canonical program `A166819.P334354906009438737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A166819 (n : ℕ) : ℤ :=
  A166819.P334354906009438737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A166819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166831.P9542562262896504832

`A166776(n+1)+A060103(n)+A001296(n)`
-/

namespace A166831.P9542562262896504832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166776 (n + 1) + (A060103 n + A001296 n)

end

end A166831.P9542562262896504832

noncomputable section

/-- A166831: Number of nX3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

Offset 1, canonical program `A166831.P9542562262896504832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166831 (n : ℕ) : ℤ :=
  A166831.P9542562262896504832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166838.P6310268772221810504

`A166815(n+1)-2*A005582(n)`
-/

namespace A166838.P6310268772221810504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166815 (n + 1) - 2 * A005582 n

end

end A166838.P6310268772221810504

noncomputable section

/-- A166838: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

Offset 1, canonical program `A166838.P6310268772221810504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166838 (n : ℕ) : ℤ :=
  A166838.P6310268772221810504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166842.P16402790300489593416

`A060103(n)+∑[n*∑[n]]`
-/

namespace A166842.P16402790300489593416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060103 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A166842.P16402790300489593416

noncomputable section

/-- A166842: Number of n X 3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in decreasing order.

Offset 1, canonical program `A166842.P16402790300489593416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166842 (n : ℕ) : ℤ :=
  A166842.P16402790300489593416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166868.P15029246490408703154

`A166867(n)+A097076(n+2)`
-/

namespace A166868.P15029246490408703154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166867 n + A097076 (n + 2)

end

end A166868.P15029246490408703154

noncomputable section

/-- A166868: Convolution of Jacobsthal(n+2) and Pell(n+1).

Offset 0, canonical program `A166868.P15029246490408703154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A166868 (n : ℕ) : ℤ :=
  A166868.P15029246490408703154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A166868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166871.P15799474795996814222

`Δ[(A047412(n+2)-A047363(n+1))*n/2]`
-/

namespace A166871.P15799474795996814222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047412 (n + 2) - A047363 (n + 1) : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166871.P15799474795996814222

noncomputable section

/-- A166871: Permutation of the integers: 3 positives, 2 negatives.

Offset 0, canonical program `A166871.P15799474795996814222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A166871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166871.P15799474795996814222.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A166871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166931.P10593389537129159251

`35*12*(A016921(n)+5)-1`
-/

namespace A166931.P10593389537129159251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * (12 * (A016921 n + 5)) - 1

end

end A166931.P10593389537129159251

noncomputable section

/-- A166931: Numbers m such that m mod k is k-1 for all k = 2..9.

Offset 1, canonical program `A166931.P10593389537129159251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166931 (n : ℕ) : ℤ :=
  A166931.P10593389537129159251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166946.P5633800222494881361

`A334414(n+1-A007067(A101803(n)))`
-/

namespace A166946.P5633800222494881361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334414 ((n + 1 : ℤ) - A007067 (A101803 n).toNat).toNat

end

end A166946.P5633800222494881361

noncomputable section

/-- A166946: a(n) = 1 if n is a rounded multiple of phi (1.618033989...), the larger golden ratio value; else a(n) = 0.

Offset 0, canonical program `A166946.P5633800222494881361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166946 (n : ℕ) : ℤ :=
  A166946.P5633800222494881361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167055.P8738677862289622729

`floor(A040117(n+1)/12)`
-/

namespace A167055.P8738677862289622729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040117 (n + 1) : ℚ) / 12⌋

end

end A167055.P8738677862289622729

noncomputable section

/-- A167055: Numbers k such that 12*k + 5 is prime.

Offset 1, canonical program `A167055.P8738677862289622729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167055 (n : ℕ) : ℤ :=
  A167055.P8738677862289622729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167056.P14638089962256373532

`lt[A000079(∏{e}[12*n+7, #+1]), 7]`
-/

namespace A167056.P14638089962256373532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A167056.P14638089962256373532

noncomputable section

/-- A167056: Numbers k such that 12*k + 7 is prime.

Offset 1, canonical program `A167056.P14638089962256373532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2841 terms. -/
def A167056 (n : ℕ) : ℤ :=
  (A167056.P14638089962256373532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2841 terms. -/
def A167056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167155.P2538249655502824357

`dr(and(A000051(n+4), A001846(n+1)))`
-/

namespace A167155.P2538249655502824357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land (A000051 (n + 4)) (A001846 (n + 1)))

end

end A167155.P2538249655502824357

noncomputable section

/-- A167155: Exponential primorial constant Sum_{k>=0} 1/A140319(k).

Offset 1, canonical program `A167155.P2538249655502824357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167155 (n : ℕ) : ℤ :=
  (A167155.P2538249655502824357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167175.P17494444165242893148

`lt[0, tan(A073855(n)²)]`
-/

namespace A167175.P17494444165242893148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A073855 n ^ 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A167175.P17494444165242893148

noncomputable section

/-- A167175: Numbers with a nonprime number of prime divisors (counted with multiplicity).

Offset 1, canonical program `A167175.P17494444165242893148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167175 (n : ℕ) : ℤ :=
  (A167175.P17494444165242893148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167280.P13747006247133767003

`∑[A131666(n)]%10`
-/

namespace A167280.P13747006247133767003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A167280.P13747006247133767003

noncomputable section

/-- A167280: Period 12: repeat [0, 0, 1, 2, 4, 7, 4, 8, 7, 4, 8, 5].

Offset 0, canonical program `A167280.P13747006247133767003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A167280 (n : ℕ) : ℤ :=
  A167280.P13747006247133767003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A167280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167388.P3997312490521143460

`∩[A141884(n+1), A141931(n+1)]`
-/

namespace A167388.P3997312490521143460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P3997312490521143460

noncomputable section

/-- A167388: Prime numbers ending in the prime number 31.

Offset 1, canonical program `A167388.P3997312490521143460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A167388 (n : ℕ) : ℤ :=
  (A167388.P3997312490521143460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A167388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167389.P9605169446371438607

`round(A016813(n+1)/log(16))`
-/

namespace A167389.P9605169446371438607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016813 (n + 1) : ℝ) / Real.log (16 : ℝ))

end

end A167389.P9605169446371438607

noncomputable section

/-- A167389: (arg(exp(-w)) + Im(w)) / (2*Pi), with w = W(n,-log(2)/2)/log(2), where W is the Lambert W function.

Offset 1, canonical program `A167389.P9605169446371438607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167389 (n : ℕ) : ℤ :=
  A167389.P9605169446371438607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167423.P3227491816640280159

`1-∑[n*A122367(n)]`
-/

namespace A167423.P3227491816640280159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167423.P3227491816640280159

noncomputable section

/-- A167423: Hankel transform of a simple Catalan convolution.

Offset 0, canonical program `A167423.P3227491816640280159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A167423 (n : ℕ) : ℤ :=
  A167423.P3227491816640280159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A167423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167443.P3009455221864699155

`∩[A141881(n+1), A141939(n+1)]`
-/

namespace A167443.P3009455221864699155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P3009455221864699155

noncomputable section

/-- A167443: Prime numbers ending in the prime number 41.

Offset 1, canonical program `A167443.P3009455221864699155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A167443 (n : ℕ) : ℤ :=
  (A167443.P3009455221864699155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A167443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167479.P1697017817167652318

`A000108(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P1697017817167652318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n - 2 * a (n - 1)

end

end A167479.P1697017817167652318

noncomputable section

/-- A167479: Convolution of the Catalan numbers A000108(n) and (-2)^n.

Offset 0, canonical program `A167479.P1697017817167652318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A167479 (n : ℕ) : ℤ :=
  A167479.P1697017817167652318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A167479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167481.P11598172894172064079

`A000984(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P11598172894172064079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n - 2 * a (n - 1)

end

end A167481.P11598172894172064079

noncomputable section

/-- A167481: Convolution of the central binomial coefficients A000984(n) and (-2)^n.

Offset 0, canonical program `A167481.P11598172894172064079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A167481 (n : ℕ) : ℤ :=
  A167481.P11598172894172064079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A167481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167494.P8689486958449903805

`p?[A167493(n+2)-A167493(n+1)]`
-/

namespace A167494.P8689486958449903805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167493 (n + 2) - A167493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167494.P8689486958449903805

noncomputable section

/-- A167494: List of first differences of A167493 that are different from 1.

Offset 1, canonical program `A167494.P8689486958449903805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A167494 (n : ℕ) : ℤ :=
  A167494.P8689486958449903805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A167494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167555.P10787802457163991177

`∑[∑[A050409(n)+A016789(n)]]`
-/

namespace A167555.P10787802457163991177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n + A016789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167555.P10787802457163991177

noncomputable section

/-- A167555: The third left hand column of triangle A167552.

Offset 3, canonical program `A167555.P10787802457163991177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167555 (n : ℕ) : ℤ :=
  A167555.P10787802457163991177.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167607.P13390879685489196630

`2*(p?[A000040(n+1)+4]-2)`
-/

namespace A167607.P13390879685489196630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)

end

end A167607.P13390879685489196630

noncomputable section

/-- A167607: Sum of cousin prime pairs.

Offset 1, canonical program `A167607.P13390879685489196630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167607 (n : ℕ) : ℤ :=
  A167607.P13390879685489196630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167622.P16334936875259400761

`∑[A003215(n)]%A000040(n+1)`
-/

namespace A167622.P16334936875259400761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A167622.P16334936875259400761

noncomputable section

/-- A167622: a(n) = n^3 mod n-th prime.

Offset 1, canonical program `A167622.P16334936875259400761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167622 (n : ℕ) : ℤ :=
  A167622.P16334936875259400761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167627.P4832978969137311705

`p?[A158128(A017293(n))-38]`
-/

namespace A167627.P4832978969137311705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A017293 n).toNat - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167627.P4832978969137311705

noncomputable section

/-- A167627: Prime numbers ending in the prime number 163.

Offset 1, canonical program `A167627.P4832978969137311705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A167627 (n : ℕ) : ℤ :=
  A167627.P4832978969137311705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A167627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167826.P4230620490821421290

`A050231(n+1)-A238361(n+1)`
-/

namespace A167826.P4230620490821421290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050231 (n + 1) - A238361 (n + 1)

end

end A167826.P4230620490821421290

noncomputable section

/-- A167826: a(n) is the number of n-tosses having a run of 3 or more heads and a run of 3 or more tails for a fair coin.

Offset 1, canonical program `A167826.P4230620490821421290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A167826 (n : ℕ) : ℤ :=
  A167826.P4230620490821421290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A167826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167994.P9212402622745255672

`eq[n%10, A000030(A005408(n))]`
-/

namespace A167994.P9212402622745255672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167994.P9212402622745255672

noncomputable section

/-- A167994: Numbers k with the property that the first digit of 2*k is the last digit of k.

Offset 1, canonical program `A167994.P9212402622745255672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A167994 (n : ℕ) : ℤ :=
  (A167994.P9212402622745255672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A167994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167996.P17083151300053585305

`eq[A000030(A008486(n)), A010879(n)]`
-/

namespace A167996.P17083151300053585305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167996.P17083151300053585305

noncomputable section

/-- A167996: Positive numbers n with property that first digit of 3*n = last digit of n.

Offset 1, canonical program `A167996.P17083151300053585305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A167996 (n : ℕ) : ℤ :=
  (A167996.P17083151300053585305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A167996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167997.P11114227523397276923

`eq[n%10, A000030(A008574(n))]`
-/

namespace A167997.P11114227523397276923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167997.P11114227523397276923

noncomputable section

/-- A167997: Numbers k with property that first digit of 4*k = last digit of k.

Offset 1, canonical program `A167997.P11114227523397276923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A167997 (n : ℕ) : ℤ :=
  (A167997.P11114227523397276923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A167997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167998.P18279875355077747579

`10*(n+1)+A000030(5*n+9)`
-/

namespace A167998.P18279875355077747579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) + A000030 (5 * n + 9)

end

end A167998.P18279875355077747579

noncomputable section

/-- A167998: Numbers k with property that first digit of 5*k = last digit of k.

Offset 1, canonical program `A167998.P18279875355077747579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A167998 (n : ℕ) : ℤ :=
  A167998.P18279875355077747579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. -/
def A167998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168000.P5053828168036232053

`eq[A000030(6*n+1), A010879(n)]`
-/

namespace A168000.P5053828168036232053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (6 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168000.P5053828168036232053

noncomputable section

/-- A168000: Numbers k with property that first digit of 6*k = last digit of k.

Offset 1, canonical program `A168000.P5053828168036232053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A168000 (n : ℕ) : ℤ :=
  (A168000.P5053828168036232053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A168000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168001.P7412613283397050099

`eq[A000030(7*n+1), A010879(n)]`
-/

namespace A168001.P7412613283397050099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (7 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168001.P7412613283397050099

noncomputable section

/-- A168001: Numbers k with property that first digit of 7*k = last digit of k.

Offset 1, canonical program `A168001.P7412613283397050099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A168001 (n : ℕ) : ℤ :=
  (A168001.P7412613283397050099.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A168001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168004.P15547708650801779670

`eq[A000030(8*n+1), A010879(n)]`
-/

namespace A168004.P15547708650801779670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (8 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168004.P15547708650801779670

noncomputable section

/-- A168004: Numbers k with property that first digit of 8*k = last digit of k.

Offset 1, canonical program `A168004.P15547708650801779670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A168004 (n : ℕ) : ℤ :=
  (A168004.P15547708650801779670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A168004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168005.P16894134117400247977

`eq[A000030(A122709(n)), A010879(n)]`
-/

namespace A168005.P16894134117400247977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A122709 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168005.P16894134117400247977

noncomputable section

/-- A168005: Numbers k with property that first digit of 9*k = last digit of k.

Offset 1, canonical program `A168005.P16894134117400247977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A168005 (n : ℕ) : ℤ :=
  (A168005.P16894134117400247977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A168005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168014.P8076818047564407707

`n*A032741(n)`
-/

namespace A168014.P8076818047564407707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

end

end A168014.P8076818047564407707

noncomputable section

/-- A168014: Sum of all parts of all partitions of n into equal parts that do not contain 1 as a part.

Offset 0, canonical program `A168014.P8076818047564407707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168014 (n : ℕ) : ℤ :=
  A168014.P8076818047564407707.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168038.P13922680817706906049

`A123578(n)^2`
-/

namespace A168038.P13922680817706906049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n ^ 2

end

end A168038.P13922680817706906049

noncomputable section

/-- A168038: Squares closest to 2*n.

Offset 0, canonical program `A168038.P13922680817706906049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168038 (n : ℕ) : ℤ :=
  A168038.P13922680817706906049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168039.P2285749283661592489

`A053187(3*n)`
-/

namespace A168039.P2285749283661592489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (3 * n)

end

end A168039.P2285749283661592489

noncomputable section

/-- A168039: Squares closest to 3*n.

Offset 0, canonical program `A168039.P2285749283661592489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A168039 (n : ℕ) : ℤ :=
  A168039.P2285749283661592489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A168039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168049.P8332189401244449518

`A001006(floor(n-atan(n)))-char[1]`
-/

namespace A168049.P8332189401244449518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A168049.P8332189401244449518

noncomputable section

/-- A168049: Expansion of (3 -x -sqrt(1-2*x-3*x^2))/2.

Offset 0, canonical program `A168049.P8332189401244449518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168049 (n : ℕ) : ℤ :=
  A168049.P8332189401244449518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168104.P5845644003780604461

`floor((A168105(n)+A168103(n))/2)`
-/

namespace A168104.P5845644003780604461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168105 n + A168103 n : ℚ) / 2⌋

end

end A168104.P5845644003780604461

noncomputable section

/-- A168104: a(n) = sum of natural numbers m such that n - 5 <= m <= n + 5.

Offset 0, canonical program `A168104.P5845644003780604461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168104 (n : ℕ) : ℤ :=
  A168104.P5845644003780604461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168201.P16849005549237807023

`A025885(n)+A025900(n)-A025876(n)`
-/

namespace A168201.P16849005549237807023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n + (A025900 n - A025876 n)

end

end A168201.P16849005549237807023

noncomputable section

/-- A168201: Number of representations of n in the form 7*k+11*m (with nonnegative k, m).

Offset 0, canonical program `A168201.P16849005549237807023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168201 (n : ℕ) : ℤ :=
  A168201.P16849005549237807023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168256.P5031658385717853237

`A028303(A279891(n))`
-/

namespace A168256.P5031658385717853237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A279891 n).toNat

end

end A168256.P5031658385717853237

noncomputable section

/-- A168256: Triangle read by rows: Catalan number C(n) repeated n+1 times.

Offset 0, canonical program `A168256.P5031658385717853237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168256 (n : ℕ) : ℤ :=
  A168256.P5031658385717853237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168539.P16516583657687144427

`A107007(n+2)`
-/

namespace A168539.P16516583657687144427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 2)

end

end A168539.P16516583657687144427

noncomputable section

/-- A168539: Terms of A123239 which are prime in Z(i), Z(rho) and Z(sqrt(2)).

Offset 1, canonical program `A168539.P16516583657687144427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A168539 (n : ℕ) : ℤ :=
  A168539.P16516583657687144427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A168539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168545.P5591216854163291025

`p?[2*A316725(n)+5]`
-/

namespace A168545.P5591216854163291025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316725 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168545.P5591216854163291025

noncomputable section

/-- A168545: Primes p such that the concatenation of p and 29 is a square number: "p 29" = N = m^2.

Offset 1, canonical program `A168545.P5591216854163291025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A168545 (n : ℕ) : ℤ :=
  A168545.P5591216854163291025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A168545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168615.P24149378747454152

`(A065164(n+1)-(n+1))*A103312(n+1)`
-/

namespace A168615.P24149378747454152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065164 (n + 1) - (n + 1 : ℤ)) * A103312 (n + 1)

end

end A168615.P24149378747454152

noncomputable section

/-- A168615: Inverse binomial transform of A169609, or of A144437 preceded by 1.

Offset 0, canonical program `A168615.P24149378747454152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A168615 (n : ℕ) : ℤ :=
  A168615.P24149378747454152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A168615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168650.P1467188131186192413

`A027662((n+1)²)`
-/

namespace A168650.P1467188131186192413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027662 ((n + 1) ^ 2)

end

end A168650.P1467188131186192413

noncomputable section

/-- A168650: Integers that can be generated with a C/C++ expression that is shorter than their decimal representation.

Offset 1, canonical program `A168650.P1467188131186192413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A168650 (n : ℕ) : ℤ :=
  A168650.P1467188131186192413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A168650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169580.P10187954367342615925

`A005767(n+1)²`
-/

namespace A169580.P10187954367342615925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1) ^ 2

end

end A169580.P10187954367342615925

noncomputable section

/-- A169580: Squares of the form x^2 + y^2 + z^2 with x, y, z as positive integers.

Offset 1, canonical program `A169580.P10187954367342615925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169580 (n : ℕ) : ℤ :=
  A169580.P10187954367342615925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169647.P7129432361313558652

`p?[A073855(A008620(n))+n]`
-/

namespace A169647.P7129432361313558652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A008620 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A169647.P7129432361313558652

noncomputable section

/-- A169647: Primes p such that (p-2)/3 is not a prime number.

Offset 1, canonical program `A169647.P7129432361313558652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A169647 (n : ℕ) : ℤ :=
  A169647.P7129432361313558652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A169647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169669.P11126607343254313567

`n%10*A000030(n)`
-/

namespace A169669.P11126607343254313567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 10 : ℕ) : ℤ) * A000030 n

end

end A169669.P11126607343254313567

noncomputable section

/-- A169669: (first digit of n) * (last digit of n) in decimal representation.

Offset 0, canonical program `A169669.P11126607343254313567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169669 (n : ℕ) : ℤ :=
  A169669.P11126607343254313567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169695.P2980267079696158606

`2-A010052(n)`
-/

namespace A169695.P2980267079696158606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010052 n

end

end A169695.P2980267079696158606

noncomputable section

/-- A169695: a(n) = 1 if n is a square, otherwise a(n) = 2.

Offset 0, canonical program `A169695.P2980267079696158606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169695 (n : ℕ) : ℤ :=
  A169695.P2980267079696158606.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169734.P17344525313310178766

`A160931(a(n-1)-1)+1` with `a(0)=1000`
-/

namespace A169734.P17344525313310178766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1000] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A169734.P17344525313310178766

noncomputable section

/-- A169734: a(1) = 1000; for n>1, a(n) = a(n-1) + digitsum(a(n-1)).

Offset 1, canonical program `A169734.P17344525313310178766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A169734 (n : ℕ) : ℤ :=
  A169734.P17344525313310178766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A169734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170817.P11548764296532079712

`∏{p}[n+1, A140210(#)]`
-/

namespace A170817.P11548764296532079712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A140210 p

end

end A170817.P11548764296532079712

noncomputable section

/-- A170817: a(n) = product of distinct primes of form 4k+1 that divide n.

Offset 1, canonical program `A170817.P11548764296532079712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A170817 (n : ℕ) : ℤ :=
  A170817.P11548764296532079712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A170817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170935.P1298337015902180825

`A224809(Δ[n²])`
-/

namespace A170935.P1298337015902180825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A170935.P1298337015902180825

noncomputable section

/-- A170935: b(n)*b(n+1), where b() = A000930().

Offset 0, canonical program `A170935.P1298337015902180825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A170935 (n : ℕ) : ℤ :=
  A170935.P1298337015902180825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A170935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170950.P16751627190420055194

`A028392(n)+1-A014682(A053186(n))`
-/

namespace A170950.P16751627190420055194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n + (1 - A014682 (A053186 n).toNat)

end

end A170950.P16751627190420055194

noncomputable section

/-- A170950: Inverse permutation to A170949.

Offset 1, canonical program `A170950.P16751627190420055194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170950 (n : ℕ) : ℤ :=
  A170950.P16751627190420055194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171001.P15890735463834651018

`C(A057353(n), ceil(n/4))²`
-/

namespace A171001.P15890735463834651018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057353 n).toNat ⌈(n : ℚ) / 4⌉.toNat ^ 2

end

end A171001.P15890735463834651018

noncomputable section

/-- A171001: Binomial(n-k,k)^2 where k = ceiling(n/4).

Offset 0, canonical program `A171001.P15890735463834651018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A171001 (n : ℕ) : ℤ :=
  (A171001.P15890735463834651018.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A171001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171071.P10423908267440821586

`∑[A000032(val((n+1)², 2))+1]`
-/

namespace A171071.P10423908267440821586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171071.P10423908267440821586

noncomputable section

/-- A171071: A bisection of A178482.

Offset 1, canonical program `A171071.P10423908267440821586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171071 (n : ℕ) : ℤ :=
  A171071.P10423908267440821586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171176.P17322365115208506390

`A253515(n+1)+A053186(n*A005369(n))`
-/

namespace A171176.P17322365115208506390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (n + 1) + A053186 ((n : ℤ) * A005369 n).toNat

end

end A171176.P17322365115208506390

noncomputable section

/-- A171176: Triangle read by rows in which row n lists 3n-1 together with the first 2n-1 positive integers, in reverse order.

Offset 1, canonical program `A171176.P17322365115208506390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171176 (n : ℕ) : ℤ :=
  A171176.P17322365115208506390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171403.P10794916819766522155

`eq[2, A002321(A028310(n))]`
-/

namespace A171403.P10794916819766522155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171403.P10794916819766522155

noncomputable section

/-- A171403: Solutions to the equation M(n) = 2 (M = Mertens's function A002321).

Offset 1, canonical program `A171403.P10794916819766522155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A171403 (n : ℕ) : ℤ :=
  (A171403.P10794916819766522155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A171403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171406.P8527978597109318047

`eq[4, A002321(A028310(n))]`
-/

namespace A171406.P8527978597109318047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171406.P8527978597109318047

noncomputable section

/-- A171406: Solutions to the equation M(n) = 4 (M = Mertens's function A002321).

Offset 1, canonical program `A171406.P8527978597109318047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A171406 (n : ℕ) : ℤ :=
  (A171406.P8527978597109318047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A171406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171427.P12417627294716191402

`eq[5, A002321(A028310(n))]`
-/

namespace A171427.P12417627294716191402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171427.P12417627294716191402

noncomputable section

/-- A171427: Solutions to the equation M(n) = 5 (M = Mertens's function A002321).

Offset 1, canonical program `A171427.P12417627294716191402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A171427 (n : ℕ) : ℤ :=
  (A171427.P12417627294716191402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A171427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171428.P4692146372551918575

`eq[6, A002321(A028310(n))]`
-/

namespace A171428.P4692146372551918575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171428.P4692146372551918575

noncomputable section

/-- A171428: Solutions to the equation M(n) = 6 (M = Mertens's function A002321).

Offset 1, canonical program `A171428.P4692146372551918575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A171428 (n : ℕ) : ℤ :=
  (A171428.P4692146372551918575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A171428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171436.P12618760449162599911

`eq[7, A002321(A028310(n))]`
-/

namespace A171436.P12618760449162599911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171436.P12618760449162599911

noncomputable section

/-- A171436: Solutions to the equation M(n) = 7 (M = Mertens's function A002321).

Offset 1, canonical program `A171436.P12618760449162599911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A171436 (n : ℕ) : ℤ :=
  (A171436.P12618760449162599911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A171436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171556.P13391373783144301351

`3*A000108(n)-2`
-/

namespace A171556.P13391373783144301351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000108 n - 2

end

end A171556.P13391373783144301351

noncomputable section

/-- A171556: a(n) = 3*C(n)-2, where C(n) = A000108(n).

Offset 0, canonical program `A171556.P13391373783144301351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A171556 (n : ℕ) : ℤ :=
  A171556.P13391373783144301351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A171556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171581.P14375995751855154974

`A122825(n+1)-A157928(n)`
-/

namespace A171581.P14375995751855154974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (n + 1) - A157928 n

end

end A171581.P14375995751855154974

noncomputable section

/-- A171581: The natural numbers without primes > 3.

Offset 1, canonical program `A171581.P14375995751855154974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171581 (n : ℕ) : ℤ :=
  A171581.P14375995751855154974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171608.P14025582836431070738

`ceil((Δ[A278818(n)]+1)/4)`
-/

namespace A171608.P14025582836431070738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n + 1 : ℚ) / 4⌉

end

end A171608.P14025582836431070738

noncomputable section

/-- A171608: Triangle by columns, T(n,k); (..., n, (n+1)) preceded by (n-1) zeros, as an infinite lower triangular matrix.

Offset 1, canonical program `A171608.P14025582836431070738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A171608 (n : ℕ) : ℤ :=
  A171608.P14025582836431070738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A171608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171715.P12184834719262593618

`abs(A003627(n+1)-A007645(n+1))`
-/

namespace A171715.P12184834719262593618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003627 (n + 1) - A007645 (n + 1)|

end

end A171715.P12184834719262593618

noncomputable section

/-- A171715: Absolute value of (n-th prime of form 3*m-1 minus n-th prime of form 3*k+1/2+-1/2).

Offset 1, canonical program `A171715.P12184834719262593618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, A007645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171715 (n : ℕ) : ℤ :=
  A171715.P12184834719262593618.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, A007645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171716.P4487288318910183918

`abs(A003627(n+2)-A007645(n+2))/2`
-/

namespace A171716.P4487288318910183918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A003627 (n + 2) - A007645 (n + 2)| : ℚ) / 2

end

end A171716.P4487288318910183918

noncomputable section

/-- A171716: a(n) = abs((n-th prime of the form 6*k+1) minus (n-th prime of the form 6*m-1))/2.

Offset 1, canonical program `A171716.P4487288318910183918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, A007645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171716.P4487288318910183918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, A007645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171757.P1472708756566652642

`2*A004761(n+2)`
-/

namespace A171757.P1472708756566652642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004761 (n + 2)

end

end A171757.P1472708756566652642

noncomputable section

/-- A171757: Even numbers whose binary expansion begins 10.

Offset 1, canonical program `A171757.P1472708756566652642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004761, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171757 (n : ℕ) : ℤ :=
  A171757.P1472708756566652642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004761, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171885.P16728377187125056907

`xor(n-char[1], A000217(A003817(n)))`
-/

namespace A171885.P16728377187125056907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A000217 (A003817 n).toNat)

end

end A171885.P16728377187125056907

noncomputable section

/-- A171885: Representation of n in D. E. Knuth's second prefix-unambiguous, order-preserving binary string system.

Offset 0, canonical program `A171885.P16728377187125056907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171885 (n : ℕ) : ℤ :=
  A171885.P16728377187125056907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171962.P10531660157610596055

`floor(A000045(n)^(1/π))`
-/

namespace A171962.P10531660157610596055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℝ) ^ (1 / Real.pi)⌋

end

end A171962.P10531660157610596055

noncomputable section

/-- A171962: a(n) = floor(Fibonacci(n)^(1/Pi)).

Offset 0, canonical program `A171962.P10531660157610596055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A171962 (n : ℕ) : ℤ :=
  A171962.P10531660157610596055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A171962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172022.P17233119009471851656

`A095116(n+1)-xor(1, n)`
-/

namespace A172022.P17233119009471851656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (Nat.xor 1 n : ℤ)

end

end A172022.P17233119009471851656

noncomputable section

/-- A172022: a(n) = prime(n) + (-1)^n.

Offset 1, canonical program `A172022.P17233119009471851656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172022 (n : ℕ) : ℤ :=
  A172022.P17233119009471851656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172128.P9847462736047019527

`ceil(record[A000032(n)]/(n+1))-1`
-/

namespace A172128.P9847462736047019527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A172128.P9847462736047019527

noncomputable section

/-- A172128: a(n) = floor(phi^n/n), where phi = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A172128.P9847462736047019527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A172128 (n : ℕ) : ℤ :=
  A172128.P9847462736047019527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A172128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172137.P6493979831333276600

`A172132(round(sqrt(n²+1)))+∑[6*n²]`
-/

namespace A172137.P6493979831333276600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172132 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A172137.P6493979831333276600

noncomputable section

/-- A172137: Number of ways to place 2 nonattacking zebras on an n X n board.

Offset 1, canonical program `A172137.P6493979831333276600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172137 (n : ℕ) : ℤ :=
  A172137.P6493979831333276600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172229.P6406971379391401100

`A211613(n)+A060354(n)`
-/

namespace A172229.P6406971379391401100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211613 n + A060354 n

end

end A172229.P6406971379391401100

noncomputable section

/-- A172229: Number of ways to place 3 nonattacking wazirs on a 3 X n board.

Offset 1, canonical program `A172229.P6406971379391401100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172229 (n : ℕ) : ℤ :=
  A172229.P6406971379391401100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172235.P14922142282495861337

`A172113(n+1)-A172188(n+1)`
-/

namespace A172235.P14922142282495861337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172113 (n + 1) - A172188 (n + 1)

end

end A172235.P14922142282495861337

noncomputable section

/-- A172235: n-th partial sum of primes of the form 3*k+1/2+-1/2 minus n-th partial sum of primes of the form 3*m-1.

Offset 1, canonical program `A172235.P14922142282495861337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172113, A172188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172235 (n : ℕ) : ℤ :=
  A172235.P14922142282495861337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172113, A172188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172414.P18140129355790672352

`A000108(floor(sqrt(n)))`
-/

namespace A172414.P18140129355790672352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.sqrt n)

end

end A172414.P18140129355790672352

noncomputable section

/-- A172414: Triangle read by rows: Catalan number C(n) repeated 2*n+1 times.

Offset 0, canonical program `A172414.P18140129355790672352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172414 (n : ℕ) : ℤ :=
  A172414.P18140129355790672352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172423.P4258919403678142260

`A144468(A237420(n)+A144468(n))`
-/

namespace A172423.P4258919403678142260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144468 (A237420 n + A144468 n).toNat

end

end A172423.P4258919403678142260

noncomputable section

/-- A172423: Period 10: repeat [0, 9, 2, 7, 4, 5, 6, 3, 8, 1].

Offset 0, canonical program `A172423.P4258919403678142260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A172423 (n : ℕ) : ℤ :=
  A172423.P4258919403678142260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A172423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173015.P11072420852092885662

`comp[A000203(floor(n/2)+1)-n%2]`
-/

namespace A173015.P11072420852092885662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (⌊(n : ℚ) / 2⌋ + 1).toNat - ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173015.P11072420852092885662

noncomputable section

/-- A173015: Numbers k such that sequence of type a_k(n): {a(1) = 1, for n >= 2: a(n) = the smallest number h such that sigma(h) = A000203(h) = a(n-1) + k, a(n) = 0 if no such number exists} is sequence A063524(n) for n >= 1.

Offset 1, canonical program `A173015.P11072420852092885662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173015 (n : ℕ) : ℤ :=
  (A173015.P11072420852092885662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173023.P442632253626153546

`∑[char[or(n, A048728(n))]]`
-/

namespace A173023.P442632253626153546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A048728 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P442632253626153546

noncomputable section

/-- A173023: Number of numbers <= n whose binary representation contains no isolated digits "11".

Offset 0, canonical program `A173023.P442632253626153546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5121 terms. -/
def A173023 (n : ℕ) : ℤ :=
  (A173023.P442632253626153546.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5121 terms. -/
def A173023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173024.P3410906692018923875

`A163617(eq[xor(n, 3*n)/2, xor(n, 2*n)])`
-/

namespace A173024.P3410906692018923875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (3 * n) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A173024.P3410906692018923875

noncomputable section

/-- A173024: Numbers having neither isolated ones nor isolated double ones in their binary representations.

Offset 1, canonical program `A173024.P3410906692018923875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. -/
def A173024 (n : ℕ) : ℤ :=
  A173024.P3410906692018923875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. -/
def A173024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173106.P5453701988030285158

`∑[record[n-A082551(n+1)]]`
-/

namespace A173106.P5453701988030285158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173106.P5453701988030285158

noncomputable section

/-- A173106: Partial sums of A005100.

Offset 1, canonical program `A173106.P5453701988030285158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173106 (n : ℕ) : ℤ :=
  A173106.P5453701988030285158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173107.P1204229330952170811

`∑[eq[1, A082551(n+1)]+1]`
-/

namespace A173107.P1204229330952170811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173107.P1204229330952170811

noncomputable section

/-- A173107: Partial sums of abundant numbers (A005101).

Offset 1, canonical program `A173107.P1204229330952170811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173107 (n : ℕ) : ℤ :=
  (A173107.P1204229330952170811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173247.P2226880617797609074

`∑[A033627(n+1)]*A033999(n+1)`
-/

namespace A173247.P2226880617797609074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 1)

end

end A173247.P2226880617797609074

noncomputable section

/-- A173247: a(0) = -1 and a(n) = (-1)^(n+1)*(3*n^2 - n + 4)/2 for n >= 1.

Offset 0, canonical program `A173247.P2226880617797609074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173247 (n : ℕ) : ℤ :=
  A173247.P2226880617797609074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173263.P8165751700118268913

`or(1, A047839(2*n+1))`
-/

namespace A173263.P8165751700118268913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047839 (2 * n + 1))

end

end A173263.P8165751700118268913

noncomputable section

/-- A173263: Successive numbers n such that ChebyshevT[n/2, n] is not an integer.

Offset 1, canonical program `A173263.P8165751700118268913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173263 (n : ℕ) : ℤ :=
  A173263.P8165751700118268913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173285.P17321651225120668683

`Δ[A298349(n)-A298348(n)]`
-/

namespace A173285.P17321651225120668683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298349 n - A298348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173285.P17321651225120668683

noncomputable section

/-- A173285: A(x) satisfies: Fibonacci(x)/x = A(x)/A(x^2).

Offset 0, canonical program `A173285.P17321651225120668683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A173285 (n : ℕ) : ℤ :=
  A173285.P17321651225120668683.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A173285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173299.P10688043708097055938

`A052945(n)/gcd(A003945(n), A052945(n))`
-/

namespace A173299.P10688043708097055938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052945 n : ℚ) / (Int.gcd (A003945 n) (A052945 n) : ℚ)

end

end A173299.P10688043708097055938

noncomputable section

/-- A173299: Numerators of fractions x^n + y^n, where x + y = 1 and x^2 + y^2 = 2.

Offset 1, canonical program `A173299.P10688043708097055938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A173299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173299.P10688043708097055938.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A173299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173315.P11569175325327384851

`2*(A108520(n)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A173315.P11569175325327384851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (A108520 n - a (n - 1))

end

end A173315.P11569175325327384851

noncomputable section

/-- A173315: Inverse binomial transform of A131800.

Offset 0, canonical program `A173315.P11569175325327384851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A173315 (n : ℕ) : ℤ :=
  A173315.P11569175325327384851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A173315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173340.P17490353339000496261

`record[gcd(n+1, A130674(n+1))]`
-/

namespace A173340.P17490353339000496261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A130674 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173340.P17490353339000496261

noncomputable section

/-- A173340: Numbers n for which the factorial of the number of divisors of n is divisible by n.

Offset 1, canonical program `A173340.P17490353339000496261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A173340 (n : ℕ) : ℤ :=
  (A173340.P17490353339000496261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A173340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173343.P15639870317806623529

`A000045(n+2)*A010892(n)`
-/

namespace A173343.P15639870317806623529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A010892 n

end

end A173343.P15639870317806623529

noncomputable section

/-- A173343: a(n+4) = a(n+3) - 2*a(n+2) - a(n+1) - a(n).

Offset 0, canonical program `A173343.P15639870317806623529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A173343 (n : ℕ) : ℤ :=
  A173343.P15639870317806623529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A173343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173344.P16983812646555922678

`A000045(n)*A010892(n)`
-/

namespace A173344.P16983812646555922678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A010892 n

end

end A173344.P16983812646555922678

noncomputable section

/-- A173344: a(n+4) = a(n+3) - 2*a(n+2) - a(n+1) - a(n), starting with (0, 1, 0, -2).

Offset 0, canonical program `A173344.P16983812646555922678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A173344 (n : ℕ) : ℤ :=
  A173344.P16983812646555922678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A173344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173439.P5321888796491362127

`∑{d}[n+1, A000007(A000203(n+1)%A000203(#))]`
-/

namespace A173439.P5321888796491362127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (A000203 (n + 1)) (A000203 d)).toNat

end

end A173439.P5321888796491362127

noncomputable section

/-- A173439: Number of divisors d of number n such that sigma(d) divides sigma(n).

Offset 1, canonical program `A173439.P5321888796491362127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173439 (n : ℕ) : ℤ :=
  A173439.P5321888796491362127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173517.P8849641690335087974

`(1-A010052(n))*A028391(n)`
-/

namespace A173517.P8849641690335087974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010052 n) * A028391 n

end

end A173517.P8849641690335087974

noncomputable section

/-- A173517: a(n) = k if n is the k-th nonsquare, zero otherwise.

Offset 0, canonical program `A173517.P8849641690335087974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173517 (n : ℕ) : ℤ :=
  A173517.P8849641690335087974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173673.P5809439835741203774

`Δ[floor(A123231(n+1)/A000034(n))]`
-/

namespace A173673.P5809439835741203774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123231 (n + 1) : ℚ) / (A000034 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173673.P5809439835741203774

noncomputable section

/-- A173673: a(2k) = floor(F(k)/2), a(2k+1) = ceiling(F(k)/2), where F = A000045 is the Fibonacci sequence.

Offset 0, canonical program `A173673.P5809439835741203774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A173673 (n : ℕ) : ℤ :=
  A173673.P5809439835741203774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A173673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173773.P3419673963759673321

`A173855(n+1)/4`
-/

namespace A173773.P3419673963759673321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173855 (n + 1) : ℚ) / 4

end

end A173773.P3419673963759673321

noncomputable section

/-- A173773: a(3*n) = 8*n+2, a(3*n+1) = 2*n+1, a(3*n+2) = 8*n+6.

Offset 0, canonical program `A173773.P3419673963759673321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173773 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173773.P3419673963759673321.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173781.P10795593716828301618

`∏[A111284(n+1)/A008620(A111284(n+1))]`
-/

namespace A173781.P10795593716828301618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111284 (n + 1) : ℚ) / (A008620 (A111284 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173781.P10795593716828301618

noncomputable section

/-- A173781: a(n) is the smallest entry of the n-th column of the matrix of Super Catalan numbers S(m,n).

Offset 0, canonical program `A173781.P10795593716828301618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A173781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173781.P10795593716828301618.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A173781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174059.P16493240021173771503

`A157928(n)+A025224(n)`
-/

namespace A174059.P16493240021173771503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A025224 n

end

end A174059.P16493240021173771503

noncomputable section

/-- A174059: a(n) = ceiling(Sum_{k=1..n} sqrt(k)).

Offset 0, canonical program `A174059.P16493240021173771503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2907 terms. -/
def A174059 (n : ℕ) : ℤ :=
  A174059.P16493240021173771503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2907 terms. -/
def A174059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174139.P12345827715275463118

`comp[A174138(n+1)]`
-/

namespace A174139.P12345827715275463118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174139.P12345827715275463118

noncomputable section

/-- A174139: Numbers congruent to {0,1,2,3,4,10,11,12,13,14,20,21,22,23,24} mod 25.

Offset 1, canonical program `A174139.P12345827715275463118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174139 (n : ℕ) : ℤ :=
  (A174139.P12345827715275463118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174141.P3649070814873083278

`A007494(n-n%10)+n`
-/

namespace A174141.P3649070814873083278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n - n % 10) + (n : ℤ)

end

end A174141.P3649070814873083278

noncomputable section

/-- A174141: Numbers congruent to k mod 25, where 0 <= k <= 9.

Offset 1, canonical program `A174141.P3649070814873083278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174141 (n : ℕ) : ℤ :=
  A174141.P3649070814873083278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174147.P5805914630021460573

`A087156(∏{p}[n+1, #-1]+∑{p}[n+1, #-1])`
-/

namespace A174147.P5805914630021460573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)).toNat

end

end A174147.P5805914630021460573

noncomputable section

/-- A174147: a(n) = n-th sum{p-1|p is prime and divisor of n} plus n-th product{p-1|p is prime and divisor of n}.

Offset 1, canonical program `A174147.P5805914630021460573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A174147 (n : ℕ) : ℤ :=
  A174147.P5805914630021460573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A174147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174325.P14171404086078609093

`A181318(3*n)-A188134(3*n)`
-/

namespace A174325.P14171404086078609093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 (3 * n) - A188134 (3 * n)

end

end A174325.P14171404086078609093

noncomputable section

/-- A174325: Trisection A061037(3*n-2) of the Balmer spectrum numerators extended to negative indices.

Offset 0, canonical program `A174325.P14171404086078609093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A174325 (n : ℕ) : ℤ :=
  A174325.P14171404086078609093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A174325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174420.P12325697063228247299

`2^n-(A002379(n)+A002380(n)+2)`
-/

namespace A174420.P12325697063228247299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A002379 n + (A002380 n + 2))

end

end A174420.P12325697063228247299

noncomputable section

/-- A174420: Let A(n) = floor((3/2)^n), B(n)=3^n-2^n*A(n); then a(n)=2^n-A(n)-B(n)-2.

Offset 0, canonical program `A174420.P12325697063228247299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A174420 (n : ℕ) : ℤ :=
  A174420.P12325697063228247299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A174420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174478.P11090844667858883052

`∑{d}[n+1, #*A054598((n+1)/#)]`
-/

namespace A174478.P11090844667858883052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A054598 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174478.P11090844667858883052

noncomputable section

/-- A174478: a(n) = Sum_{d|n} d*2^(n/d)*tau(d).

Offset 1, canonical program `A174478.P11090844667858883052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A174478 (n : ℕ) : ℤ :=
  A174478.P11090844667858883052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A174478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174506.P1103548392494020403

`A138123(A347838(n+1))`
-/

namespace A174506.P1103548392494020403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138123 (A347838 (n + 1)).toNat

end

end A174506.P1103548392494020403

noncomputable section

/-- A174506: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A014448(n)) ), where A014448(n) = (2+sqrt(5))^n + (2-sqrt(5))^n.

Offset 0, canonical program `A174506.P1103548392494020403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A174506 (n : ℕ) : ℤ :=
  A174506.P1103548392494020403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A174506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174618.P7393569912784185416

`A174619(n)-a(n-1)` with `a(0)=0`
-/

namespace A174618.P7393569912784185416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A174619 n - a (n - 1)

end

end A174618.P7393569912784185416

noncomputable section

/-- A174618: For n odd a(n) = a(n-2) + a(n-3), for n even a(n) = a(n-2) + a(n-5); with a(1) = 0, a(2) = 1.

Offset 1, canonical program `A174618.P7393569912784185416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A174618 (n : ℕ) : ℤ :=
  A174618.P7393569912784185416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A174618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174620.P5649719936141533131

`(2^comp[A000040(n+1)])%A000040(n+1)`
-/

namespace A174620.P5649719936141533131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000040 (n + 1))

end

end A174620.P5649719936141533131

noncomputable section

/-- A174620: a(n) = 2^A141468(n) mod prime(n), where A141468(n) is the n-th nonnegative nonprime.

Offset 1, canonical program `A174620.P5649719936141533131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A174620 (n : ℕ) : ℤ :=
  A174620.P5649719936141533131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A174620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174622.P14034591481856896786

`∑[A005256(n+1)]`
-/

namespace A174622.P14034591481856896786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174622.P14034591481856896786

noncomputable section

/-- A174622: Partial sums of A005256.

Offset 1, canonical program `A174622.P14034591481856896786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A174622 (n : ℕ) : ℤ :=
  A174622.P14034591481856896786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A174622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174655.P18326500229170347041

`∑[A049486(n+1)]`
-/

namespace A174655.P18326500229170347041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174655.P18326500229170347041

noncomputable section

/-- A174655: Partial sums of A049486.

Offset 1, canonical program `A174655.P18326500229170347041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174655 (n : ℕ) : ℤ :=
  A174655.P18326500229170347041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174783.P12683386541777257962

`∑[A001405(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A174783.P12683386541777257962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A001405 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174783.P12683386541777257962

noncomputable section

/-- A174783: Expansion of (1+2x-sqrt(1-4x^2))/(2(1-x^2)*sqrt(1-4x^2)).

Offset 0, canonical program `A174783.P12683386541777257962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A174783 (n : ℕ) : ℤ :=
  A174783.P12683386541777257962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A174783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174786.P6932952363311441244

`p?[A003627(n+1)-6]-2`
-/

namespace A174786.P6932952363311441244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174786.P6932952363311441244

noncomputable section

/-- A174786: Numbers n congruent to 3 (mod 6) such that n+2 and n+8 are primes.

Offset 1, canonical program `A174786.P6932952363311441244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174786 (n : ℕ) : ℤ :=
  A174786.P6932952363311441244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175036.P5810203869327028597

`A000079(n)%A000040(n+1)`
-/

namespace A175036.P5810203869327028597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A000040 (n + 1))

end

end A175036.P5810203869327028597

noncomputable section

/-- A175036: a(n) = 2^(n-1) mod prime(n).

Offset 1, canonical program `A175036.P5810203869327028597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A175036 (n : ℕ) : ℤ :=
  A175036.P5810203869327028597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A175036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175082.P4067203835093049919

`∪[A007916(n+1), A001287(n)]`
-/

namespace A175082.P4067203835093049919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P4067203835093049919

noncomputable section

/-- A175082: Possible values for sum of perfect divisors of n.

Offset 1, canonical program `A175082.P4067203835093049919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175082 (n : ℕ) : ℤ :=
  (A175082.P4067203835093049919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175131.P6524666404151477770

`A000079(n)%eq[2, A105700(n)]`
-/

namespace A175131.P6524666404151477770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A175131.P6524666404151477770

noncomputable section

/-- A175131: a(n) = 2^(n-1) mod semiprime(n).

Offset 1, canonical program `A175131.P6524666404151477770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A175131 (n : ℕ) : ℤ :=
  A175131.P6524666404151477770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A175131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175191.P2783859153547134366

`A104435(n+1)-A106002(n+1)`
-/

namespace A175191.P2783859153547134366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) - A106002 (n + 1)

end

end A175191.P2783859153547134366

noncomputable section

/-- A175191: a(n) = the smallest positive integer such that (the n-th prime)+2*a(n) is composite.

Offset 1, canonical program `A175191.P2783859153547134366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175191 (n : ℕ) : ℤ :=
  A175191.P2783859153547134366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175192.P1621049955634462593

`char[A000203(n+1)-1]`
-/

namespace A175192.P1621049955634462593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175192.P1621049955634462593

noncomputable section

/-- A175192: a(n) = characteristic function of numbers k such that A000203(m) = k has solution, where A000203(m) = sums of divisors of m.

Offset 1, canonical program `A175192.P1621049955634462593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175192 (n : ℕ) : ℤ :=
  (A175192.P1621049955634462593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175213.P5615207341891619309

`A135034(n)+a(A053186(n))` with `a(0)=1`
-/

namespace A175213.P5615207341891619309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135034 n + a (A053186 n).toNat

end

end A175213.P5615207341891619309

noncomputable section

/-- A175213: a(n)= a(r)+a(s) ; (r+s)<=n ; r=(floor(sqrt(n-1)))^2 ; s=n-(floor(sqrt(n)))^2.

Offset 0, canonical program `A175213.P5615207341891619309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A175213 (n : ℕ) : ℤ :=
  A175213.P5615207341891619309.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A175213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175221.P11607856886314794758

`A052147(n+1)+2`
-/

namespace A175221.P11607856886314794758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 2

end

end A175221.P11607856886314794758

noncomputable section

/-- A175221: a(n) = prime(n) + 4.

Offset 1, canonical program `A175221.P11607856886314794758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175221 (n : ℕ) : ℤ :=
  A175221.P11607856886314794758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175225.P6956092010931584881

`A140353(n+1)+1`
-/

namespace A175225.P6956092010931584881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) + 1

end

end A175225.P6956092010931584881

noncomputable section

/-- A175225: a(n) = prime(n) + 10.

Offset 1, canonical program `A175225.P6956092010931584881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175225 (n : ℕ) : ℤ :=
  A175225.P6956092010931584881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175254.P11385085050354624172

`A000330(n+1)-A072481(n+1)`
-/

namespace A175254.P11385085050354624172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - A072481 (n + 1)

end

end A175254.P11385085050354624172

noncomputable section

/-- A175254: a(n) = Sum_{k<=n} A000203(k)*(n-k+1), where A000203(m) is the sum of divisors of m.

Offset 1, canonical program `A175254.P11385085050354624172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175254 (n : ℕ) : ℤ :=
  A175254.P11385085050354624172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175312.P15716013473008669264

`comp[comp[A200672(n+1)]+n]+n`
-/

namespace A175312.P15716013473008669264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200672 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A175312.P15716013473008669264

noncomputable section

/-- A175312: Maximum value on Lower Shuffle Part of Kimberling's Expulsion Array (A035486).

Offset 1, canonical program `A175312.P15716013473008669264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175312 (n : ℕ) : ℤ :=
  (A175312.P15716013473008669264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175330.P8823655716488796875

`and(A014692(n+1)+n, ∏{d}[p?[2*n+1], #])`
-/

namespace A175330.P8823655716488796875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014692 (n + 1) + (n : ℤ)) ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A175330.P8823655716488796875

noncomputable section

/-- A175330: a(n) = bitwise AND of prime(n) and prime(n+1).

Offset 1, canonical program `A175330.P8823655716488796875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175330 (n : ℕ) : ℤ :=
  A175330.P8823655716488796875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175337.P3500885851626886640

`A011658(A132739(n+1))`
-/

namespace A175337.P3500885851626886640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (A132739 (n + 1)).toNat

end

end A175337.P3500885851626886640

noncomputable section

/-- A175337: Fixed point of morphism 0 -> 00110, 1 -> 00111.

Offset 0, canonical program `A175337.P3500885851626886640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175337 (n : ℕ) : ℤ :=
  A175337.P3500885851626886640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175348.P9354277622868758318

`A056849(A000040(n+1))`
-/

namespace A175348.P9354277622868758318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A000040 (n + 1)).toNat

end

end A175348.P9354277622868758318

noncomputable section

/-- A175348: Last digit of p^p, where p is the n-th prime.

Offset 1, canonical program `A175348.P9354277622868758318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175348 (n : ℕ) : ℤ :=
  A175348.P9354277622868758318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175386.P10851720843828530846

`2*(n+1)/gcd(2*(n+1), A294152(n+1))`
-/

namespace A175386.P10851720843828530846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Int.gcd (2 * (n + 1) : ℤ) (A294152 (n + 1)) : ℚ)

end

end A175386.P10851720843828530846

noncomputable section

/-- A175386: a(n) = denominator of Sum_{i=1..n} (1/i)*C(2n-i-1,i-1).

Offset 1, canonical program `A175386.P10851720843828530846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A175386 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175386.P10851720843828530846.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A175386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175396.P3615558224982143830

`eq[1, A010052(A003132(n))]`
-/

namespace A175396.P3615558224982143830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175396.P3615558224982143830

noncomputable section

/-- A175396: Numbers whose sum of squares of digits is a square.

Offset 1, canonical program `A175396.P3615558224982143830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A175396 (n : ℕ) : ℤ :=
  (A175396.P3615558224982143830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A175396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175435.P4675412527778873767

`A004166(n+1)%(n+1)`
-/

namespace A175435.P4675412527778873767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004166 (n + 1)) (n + 1 : ℤ)

end

end A175435.P4675412527778873767

noncomputable section

/-- A175435: (Digit sum of 3^n) mod n.

Offset 1, canonical program `A175435.P4675412527778873767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175435 (n : ℕ) : ℤ :=
  A175435.P4675412527778873767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175457.P18245557606766183687

`A066002(n+1)%(n+1)`
-/

namespace A175457.P18245557606766183687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066002 (n + 1)) (n + 1 : ℤ)

end

end A175457.P18245557606766183687

noncomputable section

/-- A175457: (Digit sum of 6^n) mod n.

Offset 1, canonical program `A175457.P18245557606766183687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A175457 (n : ℕ) : ℤ :=
  A175457.P18245557606766183687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A175457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175512.P1488611551688082023

`A066003(n+1)%(n+1)`
-/

namespace A175512.P1488611551688082023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066003 (n + 1)) (n + 1 : ℤ)

end

end A175512.P1488611551688082023

noncomputable section

/-- A175512: (Digit sum of 7^n) mod n.

Offset 1, canonical program `A175512.P1488611551688082023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A175512 (n : ℕ) : ℤ :=
  A175512.P1488611551688082023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A175512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175567.P16821500222834983336

`C(A119690(n+1), 2)`
-/

namespace A175567.P16821500222834983336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119690 (n + 1)).toNat 2

end

end A175567.P16821500222834983336

noncomputable section

/-- A175567: (n!)^2 modulo n(n+1)/2.

Offset 1, canonical program `A175567.P16821500222834983336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175567 (n : ℕ) : ℤ :=
  (A175567.P16821500222834983336.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175832.P355630512362293705

`A036987(A171960(n))+A036987(A194275(n))`
-/

namespace A175832.P355630512362293705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A171960 n).toNat + A036987 (A194275 n).toNat

end

end A175832.P355630512362293705

noncomputable section

/-- A175832: Number of solutions of equation 3^q - 2^p = n over integer variables p, q.

Offset 0, canonical program `A175832.P355630512362293705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A175832 (n : ℕ) : ℤ :=
  A175832.P355630512362293705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A175832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175851.P13592010490707745070

`gcd(a(n-1)+1, A061007(n+1))` with `a(0)=1`
-/

namespace A175851.P13592010490707745070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A061007 (n + 1))

end

end A175851.P13592010490707745070

noncomputable section

/-- A175851: a(n) = 1 for noncomposite n, a(n) = n - previousprime(n) + 1 for composite n.

Offset 1, canonical program `A175851.P13592010490707745070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175851 (n : ℕ) : ℤ :=
  (A175851.P13592010490707745070.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175971.P4381704136798521032

`A017114(A009947(n))`
-/

namespace A175971.P4381704136798521032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 (A009947 n).toNat

end

end A175971.P4381704136798521032

noncomputable section

/-- A175971: Denominators of 1/16-1/m^2 for some m>0, which are of the form (8*k+4)^2, sorted by increasing m.

Offset 1, canonical program `A175971.P4381704136798521032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175971 (n : ℕ) : ℤ :=
  A175971.P4381704136798521032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176166.P6692841945889221809

`A051903(A000217(n+1))`
-/

namespace A176166.P6692841945889221809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000217 (n + 1)).toNat

end

end A176166.P6692841945889221809

noncomputable section

/-- A176166: a(n) is the maximum exponent in the prime factorization of the n-th triangular number.

Offset 1, canonical program `A176166.P6692841945889221809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176166 (n : ℕ) : ℤ :=
  A176166.P6692841945889221809.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176266.P11595990340571434479

`C(A014692(n+1)+n, ∑{digits}[n+1, #])/(A014692(n+1)+n)`
-/

namespace A176266.P11595990340571434479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A014692 (n + 1) + (n : ℤ)).toNat ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ) / (A014692 (n + 1) + (n : ℤ) : ℚ)

end

end A176266.P11595990340571434479

noncomputable section

/-- A176266: Binomial(prime(n),s)/prime(n) where s is the sum of the decimal digits of n.

Offset 1, canonical program `A176266.P11595990340571434479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3898 terms. -/
def A176266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176266.P11595990340571434479.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3898 terms. -/
def A176266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176640.P14622370455490958492

`∑[A005985(n)]`
-/

namespace A176640.P14622370455490958492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176640.P14622370455490958492

noncomputable section

/-- A176640: Partial sums of A005985.

Offset 0, canonical program `A176640.P14622370455490958492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A176640 (n : ℕ) : ℤ :=
  A176640.P14622370455490958492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A176640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176846.P9074982901365840745

`a(n-A000203(∑{e}[n+1, #]))+1` with `a(0)=0`
-/

namespace A176846.P9074982901365840745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000203 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat + 1

end

end A176846.P9074982901365840745

noncomputable section

/-- A176846: Number of iterations of the map n-> n - sigma(bigomega(n)) needed to reach 1.

Offset 1, canonical program `A176846.P9074982901365840745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176846 (n : ℕ) : ℤ :=
  (A176846.P9074982901365840745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176864.P6691509707204081848

`eq[1, A032741(n-floor(sqrt(n))²)]`
-/

namespace A176864.P6691509707204081848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n - Nat.sqrt n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P6691509707204081848

noncomputable section

/-- A176864: Numbers k such that A053186(k) is prime.

Offset 1, canonical program `A176864.P6691509707204081848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176864 (n : ℕ) : ℤ :=
  (A176864.P6691509707204081848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176900.P16882127047652168650

`(n+1)*A128018(n)`
-/

namespace A176900.P16882127047652168650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128018 n

end

end A176900.P16882127047652168650

noncomputable section

/-- A176900: a(n) = sin((2*n+5)*Pi/6)*(n+1)*2^(n+1).

Offset 0, canonical program `A176900.P16882127047652168650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A176900 (n : ℕ) : ℤ :=
  A176900.P16882127047652168650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A176900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177049.P13793878134069651499

`A176672(n)*A302773(n)`
-/

namespace A177049.P13793878134069651499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 n * A302773 n

end

end A177049.P13793878134069651499

noncomputable section

/-- A177049: Numerator of (3n+1)*(3n+2)/4.

Offset 0, canonical program `A177049.P13793878134069651499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177049 (n : ℕ) : ℤ :=
  A177049.P13793878134069651499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177241.P14163680106090466848

`round((A131136(n)/2)²)`
-/

namespace A177241.P14163680106090466848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A131136 n : ℚ) / 2) ^ 2)

end

end A177241.P14163680106090466848

noncomputable section

/-- A177241: First differences of A177240.

Offset 0, canonical program `A177241.P14163680106090466848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5551 terms. -/
def A177241 (n : ℕ) : ℤ :=
  A177241.P14163680106090466848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5551 terms. -/
def A177241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177349.P17512532981795150140

`p?[A046699(n+2)+A046699(n+2)+n]`
-/

namespace A177349.P17512532981795150140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) + (A046699 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177349.P17512532981795150140

noncomputable section

/-- A177349: Primes p for which no m! has a prime power factorization of the form 2^p*...*p^1*...

Offset 1, canonical program `A177349.P17512532981795150140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2033 terms. -/
def A177349 (n : ℕ) : ℤ :=
  A177349.P17512532981795150140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2033 terms. -/
def A177349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177357.P2631027854699251735

`A000196(A086801(n+2))`
-/

namespace A177357.P2631027854699251735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A086801 (n + 2)).toNat

end

end A177357.P2631027854699251735

noncomputable section

/-- A177357: Number of positive squares <= prime(n) - 3.

Offset 2, canonical program `A177357.P2631027854699251735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177357 (n : ℕ) : ℤ :=
  A177357.P2631027854699251735.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177452.P7115906065145340262

`∑[A002055(n+5)]`
-/

namespace A177452.P7115906065145340262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002055 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P7115906065145340262

noncomputable section

/-- A177452: Partial sums of A002055.

Offset 5, canonical program `A177452.P7115906065145340262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A177452 (n : ℕ) : ℤ :=
  A177452.P7115906065145340262.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A177452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177712.P17818057687902141564

`2*A057716(n+1)`
-/

namespace A177712.P17818057687902141564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057716 (n + 1)

end

end A177712.P17818057687902141564

noncomputable section

/-- A177712: Even numbers divisible by an odd prime.

Offset 1, canonical program `A177712.P17818057687902141564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177712 (n : ℕ) : ℤ :=
  A177712.P17818057687902141564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177716.P2261927231186975988

`p?[A000720(n+1)]`
-/

namespace A177716.P2261927231186975988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P2261927231186975988

noncomputable section

/-- A177716: The k-th prime repeated A073124(k) times, k = 1,2,3....

Offset 1, canonical program `A177716.P2261927231186975988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177716 (n : ℕ) : ℤ :=
  A177716.P2261927231186975988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177735.P15978522362492685645

`∏{d}[n, A145737(#)]`
-/

namespace A177735.P15978522362492685645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A145737 d

end

end A177735.P15978522362492685645

noncomputable section

/-- A177735: a(0)=1, a(n)=A002445(n)/6 for n>=1.

Offset 0, canonical program `A177735.P15978522362492685645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A177735 (n : ℕ) : ℤ :=
  A177735.P15978522362492685645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A177735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177824.P6916438723185174319

`A260259(n+3)%7`
-/

namespace A177824.P6916438723185174319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260259 (n + 3)) 7

end

end A177824.P6916438723185174319

noncomputable section

/-- A177824: a(n) = (Fibonacci(n)*Fibonacci(n+7)) mod 7.

Offset 0, canonical program `A177824.P6916438723185174319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A177824 (n : ℕ) : ℤ :=
  A177824.P6916438723185174319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A177824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177869.P3283892457013278428

`record[gcd(n+1, (n+1)%A070939(n+1))]`
-/

namespace A177869.P3283892457013278428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A070939 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177869.P3283892457013278428

noncomputable section

/-- A177869: Integers divisible by their number of digits in binary.

Offset 1, canonical program `A177869.P3283892457013278428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 825 terms. -/
def A177869 (n : ℕ) : ℤ :=
  (A177869.P3283892457013278428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 825 terms. -/
def A177869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178115.P2196423212252848013

`A087960(n)*A094967(n+1)`
-/

namespace A178115.P2196423212252848013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A094967 (n + 1)

end

end A178115.P2196423212252848013

noncomputable section

/-- A178115: a(n)=(-1)^C(n+1,2)*(F(n+1)*(1+(-1)^n)/2+F(n+2)*(1-(-1)^n)/2).

Offset 0, canonical program `A178115.P2196423212252848013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A178115 (n : ℕ) : ℤ :=
  A178115.P2196423212252848013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A178115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178157.P7181085318826071123

`eq[n, lcm(n, a(A059995(n)))]` with `a(0)=1`
-/

namespace A178157.P7181085318826071123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.lcm n (f2 (A059995 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178157.P7181085318826071123

noncomputable section

/-- A178157: Numbers k that are divisible by every prefix of k.

Offset 1, canonical program `A178157.P7181085318826071123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A178157 (n : ℕ) : ℤ :=
  (A178157.P7181085318826071123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A178157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178178.P13798652792377946234

`p?[A177353(n+1)+1]`
-/

namespace A178178.P13798652792377946234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177353 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178178.P13798652792377946234

noncomputable section

/-- A178178: Primes of the form A177353(n) + 1 sorted with respect to increasing n.

Offset 1, canonical program `A178178.P13798652792377946234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A178178 (n : ℕ) : ℤ :=
  A178178.P13798652792377946234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A178178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178294.P14920345089702934564

`(A094375(n)-2^n)*2^n`
-/

namespace A178294.P14920345089702934564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094375 n - (2 ^ n : ℤ)) * (2 ^ n : ℤ)

end

end A178294.P14920345089702934564

noncomputable section

/-- A178294: Number of collinear point triples in a 4 X 4 X 4 X... n-dimensional cubic grid.

Offset 0, canonical program `A178294.P14920345089702934564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A178294 (n : ℕ) : ℤ :=
  A178294.P14920345089702934564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A178294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178305.P2093063245342575933

`A008937(∑{e}[A006047(n), #])`
-/

namespace A178305.P2093063245342575933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178305.P2093063245342575933

noncomputable section

/-- A178305: a(0)=1, a(1)=a(2)=1 and a(3k)=a(k), a(3k+1) = a(3k+2) = 2a(k) for k >= 1.

Offset 0, canonical program `A178305.P2093063245342575933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A178305 (n : ℕ) : ℤ :=
  A178305.P2093063245342575933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A178305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178440.P5561484890838812170

`∑[A000579(floor(n/2)+6)]`
-/

namespace A178440.P5561484890838812170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (⌊(n : ℚ) / 2⌋ + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P5561484890838812170

noncomputable section

/-- A178440: Convolution square of A058187, the tetrahedral series with repeats.

Offset 0, canonical program `A178440.P5561484890838812170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178440 (n : ℕ) : ℤ :=
  A178440.P5561484890838812170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178482.P3084981656249753860

`∑[A169986(A004275(val(n+1, 2)))]`
-/

namespace A178482.P3084981656249753860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 (A004275 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178482.P3084981656249753860

noncomputable section

/-- A178482: Phi-antipalindromic numbers.

Offset 1, canonical program `A178482.P3084981656249753860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178482 (n : ℕ) : ℤ :=
  A178482.P3084981656249753860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178525.P9065591598084763508

`∑[(2*n-1)*A000045(abs(1-n))]+1`
-/

namespace A178525.P9065591598084763508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A178525.P9065591598084763508

noncomputable section

/-- A178525: The sum of the costs of all nodes in the Fibonacci tree of order n.

Offset 0, canonical program `A178525.P9065591598084763508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A178525 (n : ℕ) : ℤ :=
  A178525.P9065591598084763508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A178525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178690.P17185701927195899815

`A155627(n)-or(1, A005057(n))`
-/

namespace A178690.P17185701927195899815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155627 n - Int.lor 1 (A005057 n)

end

end A178690.P17185701927195899815

noncomputable section

/-- A178690: Expansion of (exp(3*x)-1)*(exp(2*x)-1)*(exp(x)-1).

Offset 0, canonical program `A178690.P17185701927195899815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A178690 (n : ℕ) : ℤ :=
  A178690.P17185701927195899815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A178690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178832.P1928673808826274112

`A028310(or(1, A032615(n)))`
-/

namespace A178832.P1928673808826274112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor 1 (A032615 n)).toNat

end

end A178832.P1928673808826274112

noncomputable section

/-- A178832: Number of minima of the 1-D Griewank function in [-n, n].

Offset 0, canonical program `A178832.P1928673808826274112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A178832 (n : ℕ) : ℤ :=
  A178832.P1928673808826274112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A178832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178885.P14563616485542962033

`∑[A007420(n)]`
-/

namespace A178885.P14563616485542962033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178885.P14563616485542962033

noncomputable section

/-- A178885: Partial sums of Berstel sequence (A007420).

Offset 0, canonical program `A178885.P14563616485542962033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A178885 (n : ℕ) : ℤ :=
  A178885.P14563616485542962033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A178885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178965.P4770176394915467321

`∑[∑{d}[n, 1/A011782(#)]]*A011782(n)`
-/

namespace A178965.P4770176394915467321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), 1 / (A011782 d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A011782 n : ℚ)

end

end A178965.P4770176394915467321

noncomputable section

/-- A178965: a(n) = numerator of Sum_{k>=1} floor(n/k)/2^k.

Offset 0, canonical program `A178965.P4770176394915467321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A178965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178965.P4770176394915467321.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A178965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179001.P13692469998195323094

`∑[floor(A000045(n)/3)]`
-/

namespace A179001.P13692469998195323094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179001.P13692469998195323094

noncomputable section

/-- A179001: Partial sums of floor(Fibonacci(n)/3).

Offset 0, canonical program `A179001.P13692469998195323094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A179001 (n : ℕ) : ℤ :=
  A179001.P13692469998195323094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A179001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179006.P8202191832822900743

`∑[A004697(n)]`
-/

namespace A179006.P8202191832822900743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179006.P8202191832822900743

noncomputable section

/-- A179006: Partial sums of floor(Fibonacci(n)/4).

Offset 0, canonical program `A179006.P8202191832822900743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A179006 (n : ℕ) : ℤ :=
  A179006.P8202191832822900743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A179006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179053.P6495662916326547234

`∑[ceil(A000045(n)/11)]`
-/

namespace A179053.P6495662916326547234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 n : ℚ) / 11⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179053.P6495662916326547234

noncomputable section

/-- A179053: Partial sums of ceiling(Fibonacci(n)/11).

Offset 0, canonical program `A179053.P6495662916326547234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A179053 (n : ℕ) : ℤ :=
  A179053.P6495662916326547234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A179053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179062.P4322763169761835599

`∑[A000579(n)]*A159083(n+1)`
-/

namespace A179062.P4322763169761835599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A159083 (n + 1)

end

end A179062.P4322763169761835599

noncomputable section

/-- A179062: Number of non-attacking placements of 7 rooks on an n X n board.

Offset 1, canonical program `A179062.P4322763169761835599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179062 (n : ℕ) : ℤ :=
  A179062.P4322763169761835599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179082.P5883374979102671625

`record[A054683(n+1)%A054684(n+1)]`
-/

namespace A179082.P5883374979102671625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054683 (n + 1)) (A054684 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179082.P5883374979102671625

noncomputable section

/-- A179082: Even numbers having an even sum of digits in their decimal representation.

Offset 1, canonical program `A179082.P5883374979102671625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179082 (n : ℕ) : ℤ :=
  A179082.P5883374979102671625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179083.P5259151219979920016

`∩[2*n, A054684(n+1)]`
-/

namespace A179083.P5259151219979920016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179083.P5259151219979920016

noncomputable section

/-- A179083: Even numbers having an odd sum of digits in their decimal representation.

Offset 1, canonical program `A179083.P5259151219979920016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179083 (n : ℕ) : ℤ :=
  (A179083.P5259151219979920016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179096.P11137882903066574492

`∑[A125082(n)+∑[A064999(n)]]`
-/

namespace A179096.P11137882903066574492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125082 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179096.P11137882903066574492

noncomputable section

/-- A179096: Rectified hexateron (5-simplex) numbers: the coefficient of x^(2n-2) in (1+x+x^2+...+x^(n-1))^6.

Offset 0, canonical program `A179096.P11137882903066574492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179096 (n : ℕ) : ℤ :=
  A179096.P11137882903066574492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179111.P5800371512716543629

`∑[round(A000045(n)/11)]`
-/

namespace A179111.P5800371512716543629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 n : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179111.P5800371512716543629

noncomputable section

/-- A179111: Partial sums of round(Fibonacci(n)/11).

Offset 0, canonical program `A179111.P5800371512716543629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A179111 (n : ℕ) : ℤ :=
  A179111.P5800371512716543629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A179111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179126.P17825207703947104967

`A007412(n+1)^2`
-/

namespace A179126.P17825207703947104967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1) ^ 2

end

end A179126.P17825207703947104967

noncomputable section

/-- A179126: Positive integers m for which the torsion subgroup of the elliptic curve y^2 = x^3 + m has order 3.

Offset 1, canonical program `A179126.P17825207703947104967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179126 (n : ℕ) : ℤ :=
  A179126.P17825207703947104967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179241.P18350770780176249104

`floor(sqrt(A240523(n+1)))`
-/

namespace A179241.P18350770780176249104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A240523 (n + 1))

end

end A179241.P18350770780176249104

noncomputable section

/-- A179241: Powers of sqrt(5) - 1 rounded down.

Offset 1, canonical program `A179241.P18350770780176249104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A179241 (n : ℕ) : ℤ :=
  A179241.P18350770780176249104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A179241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179398.P1838939389011368377

`p?[2*n+7]²%A000040(n+1)`
-/

namespace A179398.P1838939389011368377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) (A000040 (n + 1))

end

end A179398.P1838939389011368377

noncomputable section

/-- A179398: a(n) = prime(n)^2 mod prime(n-3).

Offset 4, canonical program `A179398.P1838939389011368377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179398 (n : ℕ) : ℤ :=
  A179398.P1838939389011368377.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179403.P15949940439148558400

`A035286(n+1)%(A172132(n+1)+4)`
-/

namespace A179403.P15949940439148558400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035286 (n + 1)) (A172132 (n + 1) + 4)

end

end A179403.P15949940439148558400

noncomputable section

/-- A179403: Number of ways to place 2 nonattacking kings on an n X n toroidal board.

Offset 1, canonical program `A179403.P15949940439148558400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179403 (n : ℕ) : ℤ :=
  A179403.P15949940439148558400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179475.P11372603097837124970

`A042997(n+1)%7`
-/

namespace A179475.P11372603097837124970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042997 (n + 1)) 7

end

end A179475.P11372603097837124970

noncomputable section

/-- A179475: a(n) = A042997(n) mod 7.

Offset 1, canonical program `A179475.P11372603097837124970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179475 (n : ℕ) : ℤ :=
  A179475.P11372603097837124970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179656.P3079453122685604857

`∑{d}[A000040(n+1), #%dr(#)]`
-/

namespace A179656.P3079453122685604857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % SequenceMachineLib.digitalRoot (d : ℤ)

end

end A179656.P3079453122685604857

noncomputable section

/-- A179656: prime(n) mod (digital root(prime(n))).

Offset 1, canonical program `A179656.P3079453122685604857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179656 (n : ℕ) : ℤ :=
  (A179656.P3079453122685604857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179848.P18196075278690951285

`A001764(n)*A062157(n)`
-/

namespace A179848.P18196075278690951285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A062157 n

end

end A179848.P18196075278690951285

noncomputable section

/-- A179848: Expansion of series reversion of generating function for triangular numbers.

Offset 0, canonical program `A179848.P18196075278690951285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A179848 (n : ℕ) : ℤ :=
  A179848.P18196075278690951285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A179848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180002.P14711307796903389757

`A341895(n+1)+4`
-/

namespace A180002.P14711307796903389757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341895 (n + 1) + 4

end

end A180002.P14711307796903389757

noncomputable section

/-- A180002: Place a(n) red and b(n) blue balls in an urn; draw 5 balls without replacement; Probability(5 red balls) = Probability(3 red and 2 blue balls).

Offset 1, canonical program `A180002.P14711307796903389757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A180002 (n : ℕ) : ℤ :=
  A180002.P14711307796903389757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A180002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180061.P17462486290347262264

`1+eq[4, A180060(n+1)]`
-/

namespace A180061.P17462486290347262264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180061.P17462486290347262264

noncomputable section

/-- A180061: Numbers k such that (2^(2^k mod k) mod k) = 4.

Offset 1, canonical program `A180061.P17462486290347262264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180061 (n : ℕ) : ℤ :=
  (A180061.P17462486290347262264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180097.P10343464858030569198

`record[A000027(n+1)*A112526(A000203(n+1))]`
-/

namespace A180097.P10343464858030569198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A112526 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180097.P10343464858030569198

noncomputable section

/-- A180097: Numbers k such that sigma(k) is powerful.

Offset 1, canonical program `A180097.P10343464858030569198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A180097 (n : ℕ) : ℤ :=
  A180097.P10343464858030569198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A180097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180125.P7727917654497563634

`A050292(n)-A050292(floor(n/(xor(n, n+1)+1)))`
-/

namespace A180125.P7727917654497563634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n - A050292 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A180125.P7727917654497563634

noncomputable section

/-- A180125: Self-convolution of period-doubling sequence A035263.

Offset 1, canonical program `A180125.P7727917654497563634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180125 (n : ℕ) : ℤ :=
  A180125.P7727917654497563634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180160.P17039234537924765232

`∑{digits}[n, #]%A055642(n)`
-/

namespace A180160.P17039234537924765232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A055642 n)

end

end A180160.P17039234537924765232

noncomputable section

/-- A180160: (sum of digits) mod (number of digits) of n in decimal representation.

Offset 0, canonical program `A180160.P17039234537924765232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180160 (n : ℕ) : ℤ :=
  A180160.P17039234537924765232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180172.P11480918897039442858

`gcd(n+1, A052147(n+1))`
-/

namespace A180172.P11480918897039442858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A052147 (n + 1))

end

end A180172.P11480918897039442858

noncomputable section

/-- A180172: a(n) = gcd(prime(n)+2, n).

Offset 1, canonical program `A180172.P11480918897039442858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180172 (n : ℕ) : ℤ :=
  (A180172.P11480918897039442858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180352.P10272901100519998822

`A001006(7-(2*n%7-n))`
-/

namespace A180352.P10272901100519998822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (7 - (((2 * (n % 7) : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A180352.P10272901100519998822

noncomputable section

/-- A180352: A permutation of Motzkin numbers by reversal of indices in blocks of length 7.

Offset 1, canonical program `A180352.P10272901100519998822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A180352 (n : ℕ) : ℤ :=
  A180352.P10272901100519998822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A180352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180365.P9491354516201512416

`A061201(10^n)`
-/

namespace A180365.P9491354516201512416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (10 ^ n)

end

end A180365.P9491354516201512416

noncomputable section

/-- A180365: Partial sums up to 10^n of A007425.

Offset 0, canonical program `A180365.P9491354516201512416`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180365 (n : ℕ) : ℤ :=
  A180365.P9491354516201512416.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180452.P15696806717676616471

`or(1, p?[A134707(n+1)])`
-/

namespace A180452.P15696806717676616471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A180452.P15696806717676616471

noncomputable section

/-- A180452: Primes of the form floor(k^sqrt(Pi)).

Offset 1, canonical program `A180452.P15696806717676616471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A180452 (n : ℕ) : ℤ :=
  A180452.P15696806717676616471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A180452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180469.P16617430781801320686

`p?[A158128(p?[2*n+1])]`
-/

namespace A180469.P16617430781801320686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P16617430781801320686

noncomputable section

/-- A180469: Primes of the form 100p + 1, where p is prime.

Offset 1, canonical program `A180469.P16617430781801320686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A180469 (n : ℕ) : ℤ :=
  A180469.P16617430781801320686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A180469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180714.P5061028925191492414

`∑[A062157(A000194(n))]`
-/

namespace A180714.P5061028925191492414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180714.P5061028925191492414

noncomputable section

/-- A180714: Sum of the x- and y-coordinates of a point moving in a clockwise spiral.

Offset 0, canonical program `A180714.P5061028925191492414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180714 (n : ℕ) : ℤ :=
  A180714.P5061028925191492414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180879.P15904673467512840993

`A001405(n+3)*A077866(n)`
-/

namespace A180879.P15904673467512840993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 3) * A077866 n

end

end A180879.P15904673467512840993

noncomputable section

/-- A180879: Number of permutations p() of 1..n+2 with centered difference p(i+1)-p(i-1) < 0 exactly once.

Offset 1, canonical program `A180879.P15904673467512840993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A180879 (n : ℕ) : ℤ :=
  A180879.P15904673467512840993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A180879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180923.P9167318157465148194

`eq[3*37*n+1, A001414(3*37*n+1)]`
-/

namespace A180923.P9167318157465148194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (37 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (3 * (37 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180923.P9167318157465148194

noncomputable section

/-- A180923: Numbers n such that 111*n + 1 is prime.

Offset 1, canonical program `A180923.P9167318157465148194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A180923 (n : ℕ) : ℤ :=
  (A180923.P9167318157465148194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A180923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180958.P11115631614330140298

`(-1)^n*A077913(2*n)`
-/

namespace A180958.P11115631614330140298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077913 (2 * n)

end

end A180958.P11115631614330140298

noncomputable section

/-- A180958: Diagonal sums of generalized Narayana triangle A180957.

Offset 0, canonical program `A180958.P11115631614330140298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A180958 (n : ℕ) : ℤ :=
  A180958.P11115631614330140298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A180958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180967.P14884180377159508952

`4*(A117186(n)-2^n)`
-/

namespace A180967.P14884180377159508952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A117186 n - (2 ^ n : ℤ))

end

end A180967.P14884180377159508952

noncomputable section

/-- A180967: Number of n-game win/loss series that contain at least one dead game.

Offset 1, canonical program `A180967.P14884180377159508952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A180967 (n : ℕ) : ℤ :=
  A180967.P14884180377159508952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A180967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181065.P819305362319414895

`(A000045(n)-∑{digits}[A000045(n), #])/9`
-/

namespace A181065.P819305362319414895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9

end

end A181065.P819305362319414895

noncomputable section

/-- A181065: a(n)=(F(n)-sumofdigits(F(n)))/9, where F(n) = A000045(n).

Offset 0, canonical program `A181065.P819305362319414895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A181065 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181065.P819305362319414895.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A181065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181140.P8140830859380223308

`3*A209239(n)`
-/

namespace A181140.P8140830859380223308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A209239 n

end

end A181140.P8140830859380223308

noncomputable section

/-- A181140: The number of ways to color n balls in a row with 3 colors with no color runs having lengths greater than 4. This sequence is a special case of the general problem for coloring n balls in a row with p colors where each color has a given maximum run-length. In this example, the bounds are uniformly 4. It can be phrased in terms of tossing a p-faced die n times, requiring each face to have no runs longer than b.

Offset 1, canonical program `A181140.P8140830859380223308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A181140 (n : ℕ) : ℤ :=
  A181140.P8140830859380223308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A181140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181208.P7735863262485493887

`A052528(n+2)²`
-/

namespace A181208.P7735863262485493887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 (n + 2) ^ 2

end

end A181208.P7735863262485493887

noncomputable section

/-- A181208: Number of n X 4 binary matrices with no two 1's adjacent diagonally or antidiagonally.

Offset 1, canonical program `A181208.P7735863262485493887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A181208 (n : ℕ) : ℤ :=
  A181208.P7735863262485493887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A181208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181282.P12816364877972098295

`floor(3*2^(n-1)*A000108(n))`
-/

namespace A181282.P12816364877972098295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000108 n : ℚ)⌋

end

end A181282.P12816364877972098295

noncomputable section

/-- A181282: a(n) is the number of associate Rota-Baxter words in one idempotent generator x and one idempotent operator P of degree n. Such words are Rota-Baxter words that begin and/or end with x, and P is applied n times in the word.

Offset 0, canonical program `A181282.P12816364877972098295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A181282 (n : ℕ) : ℤ :=
  A181282.P12816364877972098295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A181282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181292.P306821892681239711

`∑[A054146(n)]`
-/

namespace A181292.P306821892681239711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181292.P306821892681239711

noncomputable section

/-- A181292: The sum of the entries in the top rows of all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181292.P306821892681239711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181292 (n : ℕ) : ℤ :=
  A181292.P306821892681239711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181305.P8476751815903758168

`A054146(n)-a(n-1)` with `a(0)=0`
-/

namespace A181305.P8476751815903758168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054146 n - a (n - 1)

end

end A181305.P8476751815903758168

noncomputable section

/-- A181305: Number of increasing columns in all 2-compositions of n.

Offset 0, canonical program `A181305.P8476751815903758168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181305 (n : ℕ) : ℤ :=
  A181305.P8476751815903758168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181346.P5815690762823342949

`Δ[A000040(n-and(1, a(n-2)))]` with `a(0)=0, a(1)=1`
-/

namespace A181346.P5815690762823342949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000040 ((n : ℤ) - Int.land 1 (f1 (n - 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181346.P5815690762823342949

noncomputable section

/-- A181346: Absolute difference between (sum of previous terms) and prime(n) with a(0) = 1 and a(1) = 2.

Offset 0, canonical program `A181346.P5815690762823342949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181346 (n : ℕ) : ℤ :=
  A181346.P5815690762823342949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181357.P237192071809245977

`A003132(A000045(n+1))`
-/

namespace A181357.P237192071809245977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000045 (n + 1)).toNat

end

end A181357.P237192071809245977

noncomputable section

/-- A181357: Sum of squares of digits of Fibonacci(n).

Offset 1, canonical program `A181357.P237192071809245977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181357 (n : ℕ) : ℤ :=
  A181357.P237192071809245977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181361.P13218759026643542293

`A055012(A000045(n))`
-/

namespace A181361.P13218759026643542293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A000045 n).toNat

end

end A181361.P13218759026643542293

noncomputable section

/-- A181361: Sum of cubes of digits of Fibonacci(n).

Offset 0, canonical program `A181361.P13218759026643542293`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181361 (n : ℕ) : ℤ :=
  A181361.P13218759026643542293.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181367.P11083133926418273287

`Δ[A007052(n)]-floor(2^(n-1))`
-/

namespace A181367.P11083133926418273287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A181367.P11083133926418273287

noncomputable section

/-- A181367: Number of 2-compositions of n containing at least one 0 entry. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 1, canonical program `A181367.P11083133926418273287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A181367 (n : ℕ) : ℤ :=
  A181367.P11083133926418273287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A181367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181474.P11910840652620331206

`(ceil(n/2)+1)*A000330(A008619(n))`
-/

namespace A181474.P11910840652620331206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * A000330 (A008619 n).toNat

end

end A181474.P11910840652620331206

noncomputable section

/-- A181474: Sequence related to the Hankel transform of A105523(n+5).

Offset 0, canonical program `A181474.P11910840652620331206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181474 (n : ℕ) : ℤ :=
  A181474.P11910840652620331206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181534.P6465701493684644829

`A097432(n+1)-A061288(n+1)`
-/

namespace A181534.P6465701493684644829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097432 (n + 1) - A061288 (n + 1)

end

end A181534.P6465701493684644829

noncomputable section

/-- A181534: Minimum number of rounds to be played to decide a two-player game of up to n rounds in which the winner of round j receives j points.

Offset 1, canonical program `A181534.P6465701493684644829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181534 (n : ℕ) : ℤ :=
  A181534.P6465701493684644829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181587.P3009405554724561704

`A000035(n+1)*A002321(n+1)`
-/

namespace A181587.P3009405554724561704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A002321 (n + 1)

end

end A181587.P3009405554724561704

noncomputable section

/-- A181587: If n is even, a(n) = 0, if n is odd, a(n) = A002321(n), where A002321 is Mertens's function.

Offset 1, canonical program `A181587.P3009405554724561704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181587 (n : ℕ) : ℤ :=
  A181587.P3009405554724561704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181635.P11492006392331502600

`6^(n+1)*A008612(2*n+1)`
-/

namespace A181635.P11492006392331502600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) * A008612 (2 * n + 1)

end

end A181635.P11492006392331502600

noncomputable section

/-- A181635: Expansion of 36*x^2*(1+36*x^2-6*x) / ((36*x^2+6*x+1)*(1-6*x)^2).

Offset 1, canonical program `A181635.P11492006392331502600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A181635 (n : ℕ) : ℤ :=
  A181635.P11492006392331502600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A181635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181658.P2143649759648752811

`∑[A005409(Δ[A101881(n)])]`
-/

namespace A181658.P2143649759648752811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181658.P2143649759648752811

noncomputable section

/-- A181658: Row sums of A181657.

Offset 0, canonical program `A181658.P2143649759648752811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 521 terms. -/
def A181658 (n : ℕ) : ℤ :=
  A181658.P2143649759648752811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 521 terms. -/
def A181658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181732.P16858907317138216025

`1/90*(A142312(n+1)-1)`
-/

namespace A181732.P16858907317138216025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 90 * (A142312 (n + 1) - 1 : ℚ)

end

end A181732.P16858907317138216025

noncomputable section

/-- A181732: Numbers n such that 90n + 1 is prime.

Offset 1, canonical program `A181732.P16858907317138216025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181732 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181732.P16858907317138216025.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142312, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181969.P2584642580505507836

`A226097(Δ[n²])`
-/

namespace A181969.P2584642580505507836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A181969.P2584642580505507836

noncomputable section

/-- A181969: Prime-generating polynomial: a(n) = 16*n^2 - 292*n + 1373.

Offset 0, canonical program `A181969.P2584642580505507836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A181969 (n : ℕ) : ℤ :=
  A181969.P2584642580505507836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A181969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181973.P8315557034956440561

`A226097(2*n)`
-/

namespace A181973.P8315557034956440561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (2 * n)

end

end A181973.P8315557034956440561

noncomputable section

/-- A181973: Prime-generating polynomial: a(n) = 16*n^2 - 300*n + 1447.

Offset 0, canonical program `A181973.P8315557034956440561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A181973 (n : ℕ) : ℤ :=
  A181973.P8315557034956440561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A181973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182082.P6630599206526508764

`ceil((A061503(n+1)+n)/2)`
-/

namespace A182082.P6630599206526508764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061503 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A182082.P6630599206526508764

noncomputable section

/-- A182082: Number of pairs, (x,y), with x >= y, whose LCM does not exceed n.

Offset 1, canonical program `A182082.P6630599206526508764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182082 (n : ℕ) : ℤ :=
  A182082.P6630599206526508764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182139.P5742789842587436338

`∏{e}[n+1, A126646(#)]`
-/

namespace A182139.P5742789842587436338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A126646 (Nat.factorization (f1 n) p)

end

end A182139.P5742789842587436338

noncomputable section

/-- A182139: Inverse Moebius transform of A061142.

Offset 1, canonical program `A182139.P5742789842587436338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182139 (n : ℕ) : ℤ :=
  A182139.P5742789842587436338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182324.P68523715600839783

`n+A000030(n)`
-/

namespace A182324.P68523715600839783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000030 n

end

end A182324.P68523715600839783

noncomputable section

/-- A182324: n + (initial digit of n) in decimal representation.

Offset 0, canonical program `A182324.P68523715600839783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182324 (n : ℕ) : ℤ :=
  A182324.P68523715600839783.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182615.P18328539032038545886

`floor(sqrt(A000032(2*(n+1))*(n+2)²))`
-/

namespace A182615.P18328539032038545886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000032 (2 * (n + 1)) * ((n + 2) ^ 2 : ℤ))

end

end A182615.P18328539032038545886

noncomputable section

/-- A182615: Greatest k such that floor(k/r^n)=n, where r = golden mean = (1+sqrt(5))/2.

Offset 1, canonical program `A182615.P18328539032038545886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A182615 (n : ℕ) : ℤ :=
  A182615.P18328539032038545886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A182615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182691.P3091554765257165792

`∪[A341248(n+2), A341250(n+2)]`
-/

namespace A182691.P3091554765257165792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341248 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341250 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182691.P3091554765257165792

noncomputable section

/-- A182691: Composite Beatty sequence of sqrt(2).

Offset 1, canonical program `A182691.P3091554765257165792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A182691 (n : ℕ) : ℤ :=
  (A182691.P3091554765257165792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A182691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182944.P10822648229596895612

`A000040(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A182944.P10822648229596895612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A182944.P10822648229596895612

noncomputable section

/-- A182944: Square array A(i,j), i >= 1, j >= 1, of prime powers prime(i)^j, by descending antidiagonals.

Offset 1, canonical program `A182944.P10822648229596895612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2643 terms. -/
def A182944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182944.P10822648229596895612.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2643 terms. -/
def A182944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183094.P2300528291682876645

`A005361(n+1)-1`
-/

namespace A183094.P2300528291682876645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - 1

end

end A183094.P2300528291682876645

noncomputable section

/-- A183094: a(n) = number of powerful divisors d (excluding 1) of n.

Offset 1, canonical program `A183094.P2300528291682876645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183094 (n : ℕ) : ℤ :=
  A183094.P2300528291682876645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183116.P14214458870589238909

`∑[A183115(n)]`
-/

namespace A183116.P14214458870589238909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183116.P14214458870589238909

noncomputable section

/-- A183116: Magnetic Tower of Hanoi, total number of moves, optimally solving the [RED ; NEUTRAL ; NEUTRAL] or [NEUTRAL ; NEUTRAL ; BLUE] pre-colored puzzle.

Offset 0, canonical program `A183116.P14214458870589238909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183116 (n : ℕ) : ℤ :=
  A183116.P14214458870589238909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183118.P1322329897683414282

`∑[A183117(n)]`
-/

namespace A183118.P1322329897683414282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183118.P1322329897683414282

noncomputable section

/-- A183118: Magnetic Tower of Hanoi, total number of moves, optimally solving the [NEUTRAL ; NEUTRAL ; NEUTRAL] pre-colored puzzle.

Offset 0, canonical program `A183118.P1322329897683414282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183118 (n : ℕ) : ℤ :=
  A183118.P1322329897683414282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183121.P10056443279133338240

`∑[A183120(n)]`
-/

namespace A183121.P10056443279133338240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183121.P10056443279133338240

noncomputable section

/-- A183121: Magnetic Tower of Hanoi, total number of moves, generated by a certain algorithm, yielding a "forward moving" non-optimal solution of the [RED ; NEUTRAL ; NEUTRAL] or [NEUTRAL ; NEUTRAL ; BLUE] pre-colored puzzle.

Offset 0, canonical program `A183121.P10056443279133338240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183121 (n : ℕ) : ℤ :=
  A183121.P10056443279133338240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183139.P922356334192034262

`∑[A049474(n+1)]-(n+1)`
-/

namespace A183139.P922356334192034262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A183139.P922356334192034262

noncomputable section

/-- A183139: a(n) = [1/r]+[2/r]+...+[n/r], where r=sqrt(2) and []=floor.

Offset 1, canonical program `A183139.P922356334192034262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183139 (n : ℕ) : ℤ :=
  A183139.P922356334192034262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183143.P15961995698808160381

`∑[n]-∑[A183142(n+1)]`
-/

namespace A183143.P15961995698808160381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183143.P15961995698808160381

noncomputable section

/-- A183143: [1/r]+[2/r]+...+[n/r], where r=sqrt(3) and []=floor.

Offset 1, canonical program `A183143.P15961995698808160381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183143 (n : ℕ) : ℤ :=
  A183143.P15961995698808160381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183264.P7351332499873215840

`(3*n-1)*A049610(n+1)`
-/

namespace A183264.P7351332499873215840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 1) * A049610 (n + 1)

end

end A183264.P7351332499873215840

noncomputable section

/-- A183264: Number of singly defective permutations of 1..n with exactly 1 maximum.

Offset 1, canonical program `A183264.P7351332499873215840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A183264 (n : ℕ) : ℤ :=
  A183264.P7351332499873215840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A183264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183295.P13174156566864909733

`A183217(n+1)-1`
-/

namespace A183295.P13174156566864909733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (n + 1) - 1

end

end A183295.P13174156566864909733

noncomputable section

/-- A183295: Complement of A115067.

Offset 1, canonical program `A183295.P13174156566864909733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183295 (n : ℕ) : ℤ :=
  A183295.P13174156566864909733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183302.P991472531218603923

`∑[A003982(n)]+n`
-/

namespace A183302.P991472531218603923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P991472531218603923

noncomputable section

/-- A183302: Complement of A014106.

Offset 1, canonical program `A183302.P991472531218603923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183302 (n : ℕ) : ℤ :=
  A183302.P991472531218603923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183324.P6500009440408032523

`A288380(n)-1`
-/

namespace A183324.P6500009440408032523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288380 n - 1

end

end A183324.P6500009440408032523

noncomputable section

/-- A183324: Number of nX3 binary arrays with each 1 adjacent to exactly two other 1s.

Offset 1, canonical program `A183324.P6500009440408032523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. -/
def A183324 (n : ℕ) : ℤ :=
  A183324.P6500009440408032523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. -/
def A183324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183353.P8172612219232151983

`A002001(n)*A184534(3*n+1)`
-/

namespace A183353.P8172612219232151983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n * A184534 (3 * n + 1)

end

end A183353.P8172612219232151983

noncomputable section

/-- A183353: One quarter the number of n X n 1..4 arrays with no two neighbors of any element equal to each other.

Offset 1, canonical program `A183353.P8172612219232151983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A183353 (n : ℕ) : ℤ :=
  A183353.P8172612219232151983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A183353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183356.P13320275883136781663

`(A022346(n+2)/ceil(2/(n+1)))²`
-/

namespace A183356.P13320275883136781663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A022346 (n + 2) : ℚ) / (⌈2 / (n + 1 : ℚ)⌉ : ℚ)) ^ 2

end

end A183356.P13320275883136781663

noncomputable section

/-- A183356: One quarter the number of n X 4 1..4 arrays with no two neighbors of any element equal to each other.

Offset 1, canonical program `A183356.P13320275883136781663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A183356 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183356.P13320275883136781663.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A183356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183409.P13666591434493509880

`n+1+A319390(n)+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A183409.P13666591434493509880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (n + 1 : ℤ) + (A319390 n + a (n - 2))

end

end A183409.P13666591434493509880

noncomputable section

/-- A183409: Number of n X 2 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2 and rows and columns in nondecreasing order.

Offset 1, canonical program `A183409.P13666591434493509880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183409 (n : ℕ) : ℤ :=
  A183409.P13666591434493509880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183494.P3190851867238133307

`A106624(A005131(n))+A000079(n)`
-/

namespace A183494.P3190851867238133307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A005131 n).toNat + A000079 n

end

end A183494.P3190851867238133307

noncomputable section

/-- A183494: Half the number of nX1 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

Offset 1, canonical program `A183494.P3190851867238133307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183494 (n : ℕ) : ℤ :=
  A183494.P3190851867238133307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183624.P5127553162645094958

`A254028(n+2)-1`
-/

namespace A183624.P5127553162645094958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254028 (n + 2) - 1

end

end A183624.P5127553162645094958

noncomputable section

/-- A183624: Number of (n+1) X 2 0..2 arrays with every 2 x 2 subblock summing to 4.

Offset 1, canonical program `A183624.P5127553162645094958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183624 (n : ℕ) : ℤ :=
  A183624.P5127553162645094958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183625.P17615891382779643584

`3*A271743(n+5)`
-/

namespace A183625.P17615891382779643584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A271743 (n + 5)

end

end A183625.P17615891382779643584

noncomputable section

/-- A183625: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock summing to 4.

Offset 1, canonical program `A183625.P17615891382779643584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183625 (n : ℕ) : ℤ :=
  A183625.P17615891382779643584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183664.P10951039784674155652

`A001554(n+2)+A001553(n+2)`
-/

namespace A183664.P10951039784674155652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001554 (n + 2) + A001553 (n + 2)

end

end A183664.P10951039784674155652

noncomputable section

/-- A183664: Number of (n+1) X 2 0..6 arrays with every 2 X 2 subblock summing to 12.

Offset 1, canonical program `A183664.P10951039784674155652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A183664 (n : ℕ) : ℤ :=
  A183664.P10951039784674155652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A183664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183877.P3935388817591142783

`abs(record[3^n-A001105(n+1)])`
-/

namespace A183877.P3935388817591142783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A001105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A183877.P3935388817591142783

noncomputable section

/-- A183877: Number of arrangements of n+2 numbers in 0..2 with each number being the sum mod 3 of two others.

Offset 1, canonical program `A183877.P3935388817591142783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A183877 (n : ℕ) : ℤ :=
  A183877.P3935388817591142783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A183877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183928.P3163840417968673372

`A025767(n)+A144677(n)-A001399(n)`
-/

namespace A183928.P3163840417968673372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n + (A144677 n - A001399 n)

end

end A183928.P3163840417968673372

noncomputable section

/-- A183928: Number of nondecreasing arrangements of n numbers in -2..2 with sum zero and sum of squares less than 2n.

Offset 1, canonical program `A183928.P3163840417968673372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183928 (n : ℕ) : ℤ :=
  A183928.P3163840417968673372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183954.P12203830716976065382

`A011862(n)+A008618(10*(n+1))`
-/

namespace A183954.P12203830716976065382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n + A008618 (10 * (n + 1))

end

end A183954.P12203830716976065382

noncomputable section

/-- A183954: Number of strings of numbers x(i=1..3) in 0..n with sum i^2*x(i) equal to n*9.

Offset 1, canonical program `A183954.P12203830716976065382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A183954 (n : ℕ) : ℤ :=
  A183954.P12203830716976065382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A183954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183979.P11748391360820795572

`A183978(n+1)+2`
-/

namespace A183979.P11748391360820795572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 1) + 2

end

end A183979.P11748391360820795572

noncomputable section

/-- A183979: 1/4 the number of (n+1) X 3 binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183979.P11748391360820795572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183979 (n : ℕ) : ℤ :=
  A183979.P11748391360820795572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183982.P8755978245693372615

`A183981(n+1)+10`
-/

namespace A183982.P8755978245693372615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) + 10

end

end A183982.P8755978245693372615

noncomputable section

/-- A183982: 1/4 the number of (n+1) X 6 binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183982.P8755978245693372615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183982 (n : ℕ) : ℤ :=
  A183982.P8755978245693372615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183984.P15355246000211894766

`A183983(n+1)+36`
-/

namespace A183984.P15355246000211894766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 1) + 36

end

end A183984.P15355246000211894766

noncomputable section

/-- A183984: 1/4 the number of (n+1) X 8 binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183984.P15355246000211894766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183984 (n : ℕ) : ℤ :=
  A183984.P15355246000211894766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184006.P9911267686596200721

`floor(A184654(2*(n+1))/2)`
-/

namespace A184006.P9911267686596200721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184654 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184006.P9911267686596200721

noncomputable section

/-- A184006: floor(nr+h), where r=sqrt(3), h=-1/3; complement of A184007.

Offset 1, canonical program `A184006.P9911267686596200721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184006 (n : ℕ) : ℤ :=
  A184006.P9911267686596200721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184031.P10153947277455675381

`A004119(A008619(n))*A004119(A080513(n))`
-/

namespace A184031.P10153947277455675381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (A008619 n).toNat * A004119 (A080513 n).toNat

end

end A184031.P10153947277455675381

noncomputable section

/-- A184031: 1/16 the number of (n+1) X 2 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184031.P10153947277455675381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184031 (n : ℕ) : ℤ :=
  A184031.P10153947277455675381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184042.P2967297191868889764

`A183981(n+3)+5`
-/

namespace A184042.P2967297191868889764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 3) + 5

end

end A184042.P2967297191868889764

noncomputable section

/-- A184042: 1/9 the number of (n+1) X 4 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184042.P2967297191868889764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184042 (n : ℕ) : ℤ :=
  A184042.P2967297191868889764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184043.P4071349188653570990

`A183983(n+3)-5`
-/

namespace A184043.P4071349188653570990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 3) - 5

end

end A184043.P4071349188653570990

noncomputable section

/-- A184043: 1/9 the number of (n+1) X 5 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184043.P4071349188653570990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184043 (n : ℕ) : ℤ :=
  A184043.P4071349188653570990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184096.P1202341694869382035

`(n%2+1)*A085903(n+1)`
-/

namespace A184096.P1202341694869382035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A085903 (n + 1)

end

end A184096.P1202341694869382035

noncomputable section

/-- A184096: Half the number of n X n toroidal binary arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

Offset 1, canonical program `A184096.P1202341694869382035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184096 (n : ℕ) : ℤ :=
  A184096.P1202341694869382035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184117.P11570288483414038940

`A184118(n+1)%A144396(n+1)`
-/

namespace A184117.P11570288483414038940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184118 (n + 1)) (A144396 (n + 1))

end

end A184117.P11570288483414038940

noncomputable section

/-- A184117: Lower s-Wythoff sequence, where s(n) = 2n + 1.

Offset 1, canonical program `A184117.P11570288483414038940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184117 (n : ℕ) : ℤ :=
  A184117.P11570288483414038940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184138.P16659584735667142756

`A145129(n+1)-∑[∑[A000124(n)]]`
-/

namespace A184138.P16659584735667142756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145129 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184138.P16659584735667142756

noncomputable section

/-- A184138: Number of n X 3 binary arrays with rows and columns in nondecreasing order.

Offset 1, canonical program `A184138.P16659584735667142756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A184138 (n : ℕ) : ℤ :=
  A184138.P16659584735667142756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A184138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184480.P6499280255303279041

`A080600(n+1)-(2*n+3)`
-/

namespace A184480.P6499280255303279041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (n + 1) - (2 * n + 3 : ℤ)

end

end A184480.P6499280255303279041

noncomputable section

/-- A184480: Lower s-Wythoff sequence, where s(n)=3n. Complement of A001956.

Offset 1, canonical program `A184480.P6499280255303279041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184480 (n : ℕ) : ℤ :=
  A184480.P6499280255303279041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184515.P9567241075721048045

`A184514(n+1)+A004767(n)`
-/

namespace A184515.P9567241075721048045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184514 (n + 1) + A004767 n

end

end A184515.P9567241075721048045

noncomputable section

/-- A184515: Upper s-Wythoff sequence, where s=4n-1. Complement of A184514.

Offset 1, canonical program `A184515.P9567241075721048045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184515 (n : ℕ) : ℤ :=
  A184515.P9567241075721048045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184522.P14639484135176890682

`comp[A184523(n+1)-1]+1`
-/

namespace A184522.P14639484135176890682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184523 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184522.P14639484135176890682

noncomputable section

/-- A184522: Upper s-Wythoff sequence, where s=5n. Complement of A184523.

Offset 1, canonical program `A184522.P14639484135176890682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184522 (n : ℕ) : ℤ :=
  (A184522.P14639484135176890682.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184584.P4544522844543927769

`A002264(A022839(3*n+2))`
-/

namespace A184584.P4544522844543927769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022839 (3 * n + 2)).toNat

end

end A184584.P4544522844543927769

noncomputable section

/-- A184584: floor[(n-1/3)r], where r=sqrt(5); complement of A184585.

Offset 1, canonical program `A184584.P4544522844543927769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A184584 (n : ℕ) : ℤ :=
  A184584.P4544522844543927769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. -/
def A184584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184626.P17588970043243414211

`A004526(A198268(n+1))`
-/

namespace A184626.P17588970043243414211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198268 (n + 1)).toNat

end

end A184626.P17588970043243414211

noncomputable section

/-- A184626: floor(nr+h), where r=sqrt(3), h=1/4; complement of A184627.

Offset 1, canonical program `A184626.P17588970043243414211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2886 terms. -/
def A184626 (n : ℕ) : ℤ :=
  A184626.P17588970043243414211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2886 terms. -/
def A184626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184638.P10162494678616007917

`abs(1-A022847(n+1))`
-/

namespace A184638.P10162494678616007917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A022847 (n + 1)|

end

end A184638.P10162494678616007917

noncomputable section

/-- A184638: floor(nr+h), where r=sqrt(3), h=-1/2; complement of A184653.

Offset 1, canonical program `A184638.P10162494678616007917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184638 (n : ℕ) : ℤ :=
  A184638.P10162494678616007917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184653.P5190902005474955621

`ceil(A180124(n+1)/2)+n+1`
-/

namespace A184653.P5190902005474955621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180124 (n + 1) : ℚ) / 2⌉ + (n + 1 : ℤ)

end

end A184653.P5190902005474955621

noncomputable section

/-- A184653: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-1/2; complement of A184638.

Offset 1, canonical program `A184653.P5190902005474955621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184653 (n : ℕ) : ℤ :=
  A184653.P5190902005474955621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184656.P5168837873934125938

`floor((A022839(n+1)+n)/2)`
-/

namespace A184656.P5168837873934125938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022839 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A184656.P5168837873934125938

noncomputable section

/-- A184656: floor(nr+h), where r=(1+sqrt(5))/2, h=-1/2; complement of A184657.

Offset 1, canonical program `A184656.P5168837873934125938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184656 (n : ℕ) : ℤ :=
  A184656.P5168837873934125938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184732.P15715545253695480124

`comp[A184733(n+1)-1]+1`
-/

namespace A184732.P15715545253695480124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184732.P15715545253695480124

noncomputable section

/-- A184732: a(n) = floor(n*r+h), where r=(1+sqrt(5))/2, h=-1/4; complement of A184733.

Offset 1, canonical program `A184732.P15715545253695480124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184732 (n : ℕ) : ℤ :=
  (A184732.P15715545253695480124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184736.P3648179815715570266

`A022851(n+1)-(n+2)`
-/

namespace A184736.P3648179815715570266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022851 (n + 1) - (n + 2 : ℤ)

end

end A184736.P3648179815715570266

noncomputable section

/-- A184736: floor(nr+h), where r=-1+2^(3/2), h=-1/2; complement of A184735.

Offset 1, canonical program `A184736.P3648179815715570266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184736 (n : ℕ) : ℤ :=
  A184736.P3648179815715570266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184738.P12317671310958345823

`∑[Δ[A022848(n)]-1]`
-/

namespace A184738.P12317671310958345823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184738.P12317671310958345823

noncomputable section

/-- A184738: floor(nr+h), where r=-1+sqrt(5), h=1/2; complement of A184735.

Offset 1, canonical program `A184738.P12317671310958345823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184738 (n : ℕ) : ℤ :=
  A184738.P12317671310958345823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184739.P7836081269569052161

`A184586(n+1)+3*n+2`
-/

namespace A184739.P7836081269569052161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1) + (3 * n + 2 : ℤ)

end

end A184739.P7836081269569052161

noncomputable section

/-- A184739: floor(n*s+h-h*s), where s=3+sqrt(5), h=1/2; complement of A184738.

Offset 1, canonical program `A184739.P7836081269569052161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184739 (n : ℕ) : ℤ :=
  A184739.P7836081269569052161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184741.P10263354780089770362

`∑[p?[2-Δ[A190843(n+1)]]]`
-/

namespace A184741.P10263354780089770362
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184741.P10263354780089770362

noncomputable section

/-- A184741: floor(n*s+h-h*s), where s=(e-1)/(e-2) and h=-1/2; complement of A184740.

Offset 1, canonical program `A184741.P10263354780089770362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7182 terms. -/
def A184741 (n : ℕ) : ℤ :=
  A184741.P10263354780089770362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7182 terms. -/
def A184741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184745.P12485344530230035149

`A060644(n)+1+n`
-/

namespace A184745.P12485344530230035149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 n + 1 + (n : ℤ)

end

end A184745.P12485344530230035149

noncomputable section

/-- A184745: floor(n*(e-1/2)+1/2); complement of A184744.

Offset 1, canonical program `A184745.P12485344530230035149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184745 (n : ℕ) : ℤ :=
  A184745.P12485344530230035149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184747.P12092686040311310565

`A184586(n+1)+1+n`
-/

namespace A184747.P12092686040311310565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1) + 1 + (n : ℤ)

end

end A184747.P12092686040311310565

noncomputable section

/-- A184747: a(n) = floor(n*s+h-h*s), where s=1+sqrt(5), h=1/2; complement of A184746.

Offset 1, canonical program `A184747.P12092686040311310565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184747 (n : ℕ) : ℤ :=
  A184747.P12092686040311310565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184748.P35318513119021768

`(4*n+3)%A022848(n+1)`
-/

namespace A184748.P35318513119021768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * n + 3 : ℤ) (A022848 (n + 1))

end

end A184748.P35318513119021768

noncomputable section

/-- A184748: a(n) = floor(n*r + h), where r = 4 - sqrt(5), h = -1/2. Also, complement of A184749.

Offset 1, canonical program `A184748.P35318513119021768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184748 (n : ℕ) : ℤ :=
  A184748.P35318513119021768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184779.P1472640870444816487

`A000720(A184777(n+1))`
-/

namespace A184779.P1472640870444816487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184777 (n + 1)).toNat

end

end A184779.P1472640870444816487

noncomputable section

/-- A184779: Numbers m such that prime(m) is of the form 2k + floor(k*sqrt(2)); complement of A184776.

Offset 1, canonical program `A184779.P1472640870444816487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2852 terms. -/
def A184779 (n : ℕ) : ℤ :=
  A184779.P1472640870444816487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2852 terms. -/
def A184779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184793.P9825854891666558465

`A000720(A095280(n+1))`
-/

namespace A184793.P9825854891666558465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095280 (n + 1)).toNat

end

end A184793.P9825854891666558465

noncomputable section

/-- A184793: Numbers m such that prime(m) is of the form floor(k*r), where r=(1+sqrt(5))/2; complement of A180736.

Offset 1, canonical program `A184793.P9825854891666558465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A184793 (n : ℕ) : ℤ :=
  A184793.P9825854891666558465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A184793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184798.P13188937388461352414

`A000720(A184796(n+1))`
-/

namespace A184798.P13188937388461352414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184796 (n + 1)).toNat

end

end A184798.P13188937388461352414

noncomputable section

/-- A184798: Numbers m such that prime(m) is of the form floor(k*sqrt(3)); complement of A184801.

Offset 1, canonical program `A184798.P13188937388461352414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5514 terms. -/
def A184798 (n : ℕ) : ℤ :=
  A184798.P13188937388461352414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5514 terms. -/
def A184798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184800.P9287086856315659630

`A183142(p?[A054406(n+1)]+1)`
-/

namespace A184800.P9287086856315659630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184800.P9287086856315659630

noncomputable section

/-- A184800: Numbers k such that floor(k*s) is prime, where s = (3 + sqrt(3))/2.

Offset 1, canonical program `A184800.P9287086856315659630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A184800 (n : ℕ) : ℤ :=
  A184800.P9287086856315659630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A184800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184816.P4894067043180022468

`A000720(p?[A184813(n+1)])`
-/

namespace A184816.P4894067043180022468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184816.P4894067043180022468

noncomputable section

/-- A184816: Numbers m such that prime(m) is of the form k+floor(kr/s)+floor(kt/s), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184816.P4894067043180022468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1074 terms. -/
def A184816 (n : ℕ) : ℤ :=
  A184816.P4894067043180022468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1074 terms. -/
def A184816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184817.P11132086153548115860

`A000720(p?[A184814(n+1)])`
-/

namespace A184817.P11132086153548115860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P11132086153548115860

noncomputable section

/-- A184817: Numbers m such that prime(m) is of the form k+floor(kr/t)+floor(ks/t), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184817.P11132086153548115860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A184817 (n : ℕ) : ℤ :=
  A184817.P11132086153548115860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A184817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184821.P12244193815727515257

`A158919(n+1)+comp[A158919(n)+n]`
-/

namespace A184821.P12244193815727515257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A184821.P12244193815727515257

noncomputable section

/-- A184821: a(n) = n + floor(n*t) + floor(n/t), where t is the tribonacci constant.

Offset 1, canonical program `A184821.P12244193815727515257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184821 (n : ℕ) : ℤ :=
  A184821.P12244193815727515257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184822.P1251102137686634409

`A277722(n+1)+∑[Δ[A158919(n)]+1]`
-/

namespace A184822.P1251102137686634409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184822.P1251102137686634409

noncomputable section

/-- A184822: a(n) = n + floor(n*t) + floor(n*t^2), where t is the tribonacci constant.

Offset 1, canonical program `A184822.P1251102137686634409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184822 (n : ℕ) : ℤ :=
  A184822.P1251102137686634409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184855.P8976664609453704411

`A000720(A077545(n+1))`
-/

namespace A184855.P8976664609453704411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077545 (n + 1)).toNat

end

end A184855.P8976664609453704411

noncomputable section

/-- A184855: Numbers m such that prime(m) is of the form (k*e); complement of A184858.

Offset 1, canonical program `A184855.P8976664609453704411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3563 terms. -/
def A184855 (n : ℕ) : ℤ :=
  A184855.P8976664609453704411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3563 terms. -/
def A184855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184867.P12412138484424509341

`A000720(A184865(n+1))`
-/

namespace A184867.P12412138484424509341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184865 (n + 1)).toNat

end

end A184867.P12412138484424509341

noncomputable section

/-- A184867: Numbers m such that prime(m) is of the form floor(1/2+k*sqrt(2)). Complement of A184870.

Offset 1, canonical program `A184867.P12412138484424509341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6775 terms. -/
def A184867 (n : ℕ) : ℤ :=
  A184867.P12412138484424509341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6775 terms. -/
def A184867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184869.P15509007701373363628

`A194920(p?[A063957(n+1)])`
-/

namespace A184869.P15509007701373363628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184869.P15509007701373363628

noncomputable section

/-- A184869: Numbers k such that floor[(k-1/2)*(2+2^(1/2))+1/2] is prime.

Offset 1, canonical program `A184869.P15509007701373363628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A184869 (n : ℕ) : ℤ :=
  A184869.P15509007701373363628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A184869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184871.P9235573609580196540

`A000027(A066343(n+1)+A056576(n+1))`
-/

namespace A184871.P9235573609580196540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A066343 (n + 1) + A056576 (n + 1)).toNat

end

end A184871.P9235573609580196540

noncomputable section

/-- A184871: n+floor(ns/r)+floor(nt/r), where r=log(2), s=log(3), t=log(5).

Offset 1, canonical program `A184871.P9235573609580196540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184871 (n : ℕ) : ℤ :=
  A184871.P9235573609580196540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184884.P3036636223459627772

`A079972(2*n)`
-/

namespace A184884.P3036636223459627772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079972 (2 * n)

end

end A184884.P3036636223459627772

noncomputable section

/-- A184884: Diagonal sums of number triangle A184883.

Offset 0, canonical program `A184884.P3036636223459627772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184884 (n : ℕ) : ℤ :=
  A184884.P3036636223459627772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184920.P14001461014007326555

`A190191(n+1)+2*A189458(n+1)`
-/

namespace A184920.P14001461014007326555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1) + 2 * A189458 (n + 1)

end

end A184920.P14001461014007326555

noncomputable section

/-- A184920: a(n) = n+[s*n/r]+[t*n/r]+[u*n/r], where []=floor and r=2^(1/2), s=r+1, t=r+2, u=r+3.

Offset 1, canonical program `A184920.P14001461014007326555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184920 (n : ℕ) : ℤ :=
  A184920.P14001461014007326555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184921.P405514056550223549

`A000027(A022842(n+1)+record[xor(1, n)])`
-/

namespace A184921.P405514056550223549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022842 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A184921.P405514056550223549

noncomputable section

/-- A184921: a(n) = n+[r*n/s]+[t*n/s]+[u*n/s], where []=floor and r=2^(1/2), s=r+1, t=r+2, u=r+3.

Offset 1, canonical program `A184921.P405514056550223549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184921 (n : ℕ) : ℤ :=
  A184921.P405514056550223549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184939.P17998620125503061143

`eq[1, A083375(n+1)%2]+1`
-/

namespace A184939.P17998620125503061143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083375 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184939.P17998620125503061143

noncomputable section

/-- A184939: From the base sequence of the positive integers, keep the first two, remove the next three, keep the next five, remove the next seven, ..., block lengths determined by the prime numbers.

Offset 1, canonical program `A184939.P17998620125503061143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184939 (n : ℕ) : ℤ :=
  (A184939.P17998620125503061143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184969.P9991180838185652522

`∑[A120701(n+1)]+1`
-/

namespace A184969.P9991180838185652522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A184969.P9991180838185652522

noncomputable section

/-- A184969: a(n) = [Pi]+[2*Pi]+...+[n*Pi], where []=floor.

Offset 1, canonical program `A184969.P9991180838185652522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184969 (n : ℕ) : ℤ :=
  A184969.P9991180838185652522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184976.P5743174411028907580

`-∑[∑[-Δ[A022843(n)]]]`
-/

namespace A184976.P5743174411028907580
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184976.P5743174411028907580

noncomputable section

/-- A184976: a(n) = [e]+[2*e]+...+[n*e], where []=floor.

Offset 1, canonical program `A184976.P5743174411028907580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184976 (n : ℕ) : ℤ :=
  A184976.P5743174411028907580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185021.P7780383072814977479

`a(A004526(n))*A056040(n)` with `a(0)=1`
-/

namespace A185021.P7780383072814977479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A056040 n

end

end A185021.P7780383072814977479

noncomputable section

/-- A185021: a(n) = h(1)*h(2)*...*h(n), where h(i) = i/[g(i/2)*g(i/4)*g(i/8)*...] and g(x) = x if x is an integer and g(x) = 1 otherwise.

Offset 0, canonical program `A185021.P7780383072814977479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A185021 (n : ℕ) : ℤ :=
  A185021.P7780383072814977479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A185021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185047.P18180775153408804782

`A155579(n+1)/3`
-/

namespace A185047.P18180775153408804782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155579 (n + 1) : ℚ) / 3

end

end A185047.P18180775153408804782

noncomputable section

/-- A185047: Expansion of 2F1( [1, 4/3]; [3]; 9*x).

Offset 0, canonical program `A185047.P18180775153408804782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A185047 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185047.P18180775153408804782.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A185047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185050.P3885030406127625706

`abs(A054414(n+1)-n)`
-/

namespace A185050.P3885030406127625706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054414 (n + 1) - (n : ℤ)|

end

end A185050.P3885030406127625706

noncomputable section

/-- A185050: Least k such that G(k) > 3 - 1/2^n, where G(k) is the sum of the first k terms of the geometric series 1 + 2/3 + (2/3)^2 + ....

Offset 0, canonical program `A185050.P3885030406127625706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6173 terms. -/
def A185050 (n : ℕ) : ℤ :=
  A185050.P3885030406127625706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6173 terms. -/
def A185050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185152.P4343648518591402247

`(n+1)*A046897(n+1)`
-/

namespace A185152.P4343648518591402247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046897 (n + 1)

end

end A185152.P4343648518591402247

noncomputable section

/-- A185152: Expansion of (q/2) * phi(q)^3 (d/dq) phi(q) in powers of q.

Offset 1, canonical program `A185152.P4343648518591402247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185152 (n : ℕ) : ℤ :=
  A185152.P4343648518591402247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185252.P13578347679694665257

`n*A027306((2*n)%(n+1))`
-/

namespace A185252.P13578347679694665257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027306 (2 * n % (n + 1))

end

end A185252.P13578347679694665257

noncomputable section

/-- A185252: a(n) = Sum_{k=0..ceiling(n/2)} k*binomial(n,k).

Offset 0, canonical program `A185252.P13578347679694665257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185252 (n : ℕ) : ℤ :=
  A185252.P13578347679694665257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185302.P10911868235339170465

`∑{d}[n+1, #*A000203((n+1)/#)^#]`
-/

namespace A185302.P10911868235339170465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A185302.P10911868235339170465

noncomputable section

/-- A185302: a(n) = Sum_{d|n} d*sigma(n/d)^d.

Offset 1, canonical program `A185302.P10911868235339170465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A185302 (n : ℕ) : ℤ :=
  A185302.P10911868235339170465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A185302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185353.P9660579593036902322

`∑[A056849(n+1)]%10`
-/

namespace A185353.P9660579593036902322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A185353.P9660579593036902322

noncomputable section

/-- A185353: a(n) = (1^1 + 2^2 . . . + n^n) mod 10.

Offset 1, canonical program `A185353.P9660579593036902322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185353 (n : ℕ) : ℤ :=
  A185353.P9660579593036902322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185381.P9864076903114994448

`A103609(A130568(n))`
-/

namespace A185381.P9864076903114994448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A130568 n).toNat

end

end A185381.P9864076903114994448

noncomputable section

/-- A185381: a(n) = Fibonacci(k) where k = floor( n*(1+sqrt(5))/2 ).

Offset 0, canonical program `A185381.P9864076903114994448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A185381 (n : ℕ) : ℤ :=
  A185381.P9864076903114994448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A185381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185590.P1060238962198747214

`A006369(a(n-1))` with `a(0)=44`
-/

namespace A185590.P1060238962198747214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [44] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A185590.P1060238962198747214

noncomputable section

/-- A185590: Iterate the map in A006369 starting at 44.

Offset 1, canonical program `A185590.P1060238962198747214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185590 (n : ℕ) : ℤ :=
  A185590.P1060238962198747214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185602.P5785848709718018963

`comp[A185595(A028310(n))-n]`
-/

namespace A185602.P5785848709718018963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (A028310 n).toNat - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A185602.P5785848709718018963

noncomputable section

/-- A185602: Numbers not of the form floor(n^(3/2))-floor(n^(1/2))-n; complement of A185601.

Offset 1, canonical program `A185602.P5785848709718018963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185602 (n : ℕ) : ℤ :=
  (A185602.P5785848709718018963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185715.P10679573485318822552

`∑[A185709(n+1)]`
-/

namespace A185715.P10679573485318822552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P10679573485318822552

noncomputable section

/-- A185715: a(n) = number of primes <= n that end in 9.

Offset 1, canonical program `A185715.P10679573485318822552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185715 (n : ℕ) : ℤ :=
  A185715.P10679573485318822552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185727.P3313924342085274439

`A106610(A007494(n))`
-/

namespace A185727.P3313924342085274439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A007494 n).toNat

end

end A185727.P3313924342085274439

noncomputable section

/-- A185727: Integers of the form A145911(k)/(k+1) sorted along increasing k.

Offset 0, canonical program `A185727.P3313924342085274439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185727 (n : ℕ) : ℤ :=
  A185727.P3313924342085274439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185869.P6524959697424845596

`abs(Δ[n²]+A002024(n+1)²)`
-/

namespace A185869.P6524959697424845596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + A002024 (n + 1) ^ 2|

end

end A185869.P6524959697424845596

noncomputable section

/-- A185869: (Odd,even)-polka dot array in the natural number array A000027; read by antidiagonals.

Offset 1, canonical program `A185869.P6524959697424845596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185869 (n : ℕ) : ℤ :=
  A185869.P6524959697424845596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185963.P16951610829913740184

`A233581(n)+∑[A233581(n)]-1`
-/

namespace A185963.P16951610829913740184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233581 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A185963.P16951610829913740184

noncomputable section

/-- A185963: Row sums of number triangle A185962.

Offset 0, canonical program `A185963.P16951610829913740184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. -/
def A185963 (n : ℕ) : ℤ :=
  A185963.P16951610829913740184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. -/
def A185963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186038.P6899057204950467925

`val(A002426(n), 3)`
-/

namespace A186038.P6899057204950467925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002426 n).toNat 3

end

end A186038.P6899057204950467925

noncomputable section

/-- A186038: a(n) = log_3(A002426(n)/numerator(A002426(n)/3^n)).

Offset 0, canonical program `A186038.P6899057204950467925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A186038 (n : ℕ) : ℤ :=
  (A186038.P6899057204950467925.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A186038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186042.P1830360839014229339

`comp[A007775(n+1)-7]`
-/

namespace A186042.P1830360839014229339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186042.P1830360839014229339

noncomputable section

/-- A186042: Numbers of the form 2*k + 1, 3*k + 2, or 5*k + 3.

Offset 1, canonical program `A186042.P1830360839014229339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186042 (n : ℕ) : ℤ :=
  (A186042.P1830360839014229339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186098.P11267662135029825083

`p?[A095116(n+1)]`
-/

namespace A186098.P11267662135029825083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P11267662135029825083

noncomputable section

/-- A186098: Primes removed by sieve generating A095117.

Offset 1, canonical program `A186098.P11267662135029825083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A186098 (n : ℕ) : ℤ :=
  A186098.P11267662135029825083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A186098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186150.P950085431451964586

`floor(∑[A035936(n)+2]/2)`
-/

namespace A186150.P950085431451964586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A186150.P950085431451964586

noncomputable section

/-- A186150: Rank of (1/4)n^3 when {(1/4)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/4)i^3 after j^2 when (1/4)i^3=j^2. Complement of A186151.

Offset 1, canonical program `A186150.P950085431451964586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186150 (n : ℕ) : ℤ :=
  A186150.P950085431451964586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186155.P11739038206239790895

`A186153(n+1)-A010057(n+1)`
-/

namespace A186155.P11739038206239790895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186153 (n + 1) - A010057 (n + 1)

end

end A186155.P11739038206239790895

noncomputable section

/-- A186155: Rank of n^2 when {(1/8)i^3: i>=1} and {j^2>: j>=1} are jointly ranked with (1/8)i^3 after j^2 when (1/8)i^3=j^2. Complement of A186154.

Offset 1, canonical program `A186155.P11739038206239790895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186155 (n : ℕ) : ℤ :=
  A186155.P11739038206239790895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186220.P16755767740802634993

`A214857(n+1)+n`
-/

namespace A186220.P16755767740802634993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 1) + (n : ℤ)

end

end A186220.P16755767740802634993

noncomputable section

/-- A186220: Adjusted joint rank sequence of (g(i)) and (f(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186219.

Offset 1, canonical program `A186220.P16755767740802634993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186220 (n : ℕ) : ℤ :=
  A186220.P16755767740802634993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186225.P9074722489243742899

`A008620(A180124(n+1)-n)+n`
-/

namespace A186225.P9074722489243742899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A180124 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A186225.P9074722489243742899

noncomputable section

/-- A186225: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and pentagonal numbers. Complement of A186226.

Offset 1, canonical program `A186225.P9074722489243742899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186225 (n : ℕ) : ℤ :=
  A186225.P9074722489243742899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186288.P8673100312429212378

`comp[floor(sqrt(A000326(n))+n)]`
-/

namespace A186288.P8673100312429212378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000326 n : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186288.P8673100312429212378

noncomputable section

/-- A186288: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186289.

Offset 1, canonical program `A186288.P8673100312429212378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186288 (n : ℕ) : ℤ :=
  (A186288.P8673100312429212378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186289.P4937028171788868200

`floor(sqrt(A000326(n+1)))+n+1`
-/

namespace A186289.P4937028171788868200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000326 (n + 1)) + (n + 1 : ℤ)

end

end A186289.P4937028171788868200

noncomputable section

/-- A186289: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186288.

Offset 1, canonical program `A186289.P4937028171788868200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186289 (n : ℕ) : ℤ :=
  A186289.P4937028171788868200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186293.P900579189785350023

`(A007519(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186293.P900579189785350023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007519 (n + 1) - 1 : ℚ) / 2

end

end A186293.P900579189785350023

noncomputable section

/-- A186293: a(n) = (A007519(n)-1)/2.

Offset 1, canonical program `A186293.P900579189785350023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186293.P900579189785350023.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186294.P1128626915274176743

`(A007519(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186294.P1128626915274176743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007519 (n + 1) + 1 : ℚ) / 2

end

end A186294.P1128626915274176743

noncomputable section

/-- A186294: (A007519(n)+1)/2.

Offset 1, canonical program `A186294.P1128626915274176743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186294.P1128626915274176743.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186295.P16210222267034878699

`A007519(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186295.P16210222267034878699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1) - 2

end

end A186295.P16210222267034878699

noncomputable section

/-- A186295: A007519(n)-2.

Offset 1, canonical program `A186295.P16210222267034878699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186295 (n : ℕ) : ℤ :=
  A186295.P16210222267034878699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186296.P12004062648873151931

`(A007520(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186296.P12004062648873151931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007520 (n + 1) + 1 : ℚ) / 2

end

end A186296.P12004062648873151931

noncomputable section

/-- A186296: ( A007520(n)+1 )/2.

Offset 1, canonical program `A186296.P12004062648873151931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186296.P12004062648873151931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186298.P971007839183561830

`A007520(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186298.P971007839183561830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1) - 2

end

end A186298.P971007839183561830

noncomputable section

/-- A186298: A007520(n)-2.

Offset 1, canonical program `A186298.P971007839183561830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186298 (n : ℕ) : ℤ :=
  A186298.P971007839183561830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186299.P12069743824327385336

`(A007521(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186299.P12069743824327385336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007521 (n + 1) - 1 : ℚ) / 2

end

end A186299.P12069743824327385336

noncomputable section

/-- A186299: (A007521(n)-1)/2.

Offset 1, canonical program `A186299.P12069743824327385336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186299.P12069743824327385336.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186301.P7683703900443366685

`A007521(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186301.P7683703900443366685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1) - 2

end

end A186301.P7683703900443366685

noncomputable section

/-- A186301: a(n) = A007521(n) - 2.

Offset 1, canonical program `A186301.P7683703900443366685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186301 (n : ℕ) : ℤ :=
  A186301.P7683703900443366685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186315.P16986293479875845827

`floor((A190337(n+1)+n+2)/4)`
-/

namespace A186315.P16986293479875845827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190337 (n + 1) + (n + 2 : ℤ) : ℚ) / 4⌋

end

end A186315.P16986293479875845827

noncomputable section

/-- A186315: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186316.

Offset 1, canonical program `A186315.P16986293479875845827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186315 (n : ℕ) : ℤ :=
  A186315.P16986293479875845827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186316.P1630878402730518717

`A184580(n+1)+1+n`
-/

namespace A186316.P1630878402730518717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184580 (n + 1) + 1 + (n : ℤ)

end

end A186316.P1630878402730518717

noncomputable section

/-- A186316: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186315.

Offset 1, canonical program `A186316.P1630878402730518717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186316 (n : ℕ) : ℤ :=
  A186316.P1630878402730518717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186320.P11072949175102014407

`comp[floor(sqrt(A000566(n))+n)]`
-/

namespace A186320.P11072949175102014407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000566 n : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186320.P11072949175102014407

noncomputable section

/-- A186320: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186321.

Offset 1, canonical program `A186320.P11072949175102014407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186320 (n : ℕ) : ℤ :=
  (A186320.P11072949175102014407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186325.P1608070430125445151

`floor(sqrt(∑[A016921(n)]))+1+n`
-/

namespace A186325.P1608070430125445151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A186325.P1608070430125445151

noncomputable section

/-- A186325: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186324.

Offset 1, canonical program `A186325.P1608070430125445151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186325 (n : ℕ) : ℤ :=
  A186325.P1608070430125445151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186328.P11830136122439441989

`A008619(A144077(n+1))+n`
-/

namespace A186328.P11830136122439441989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144077 (n + 1)).toNat + (n : ℤ)

end

end A186328.P11830136122439441989

noncomputable section

/-- A186328: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186329.

Offset 1, canonical program `A186328.P11830136122439441989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186328 (n : ℕ) : ℤ :=
  A186328.P11830136122439441989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. -/
def A186328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186330.P4637361622243978588

`ceil((A186224(n+1)+n+1)/2)`
-/

namespace A186330.P4637361622243978588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186224 (n + 1) + (n : ℤ) + 1 : ℚ) / 2⌉

end

end A186330.P4637361622243978588

noncomputable section

/-- A186330: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186331.

Offset 1, canonical program `A186330.P4637361622243978588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186330 (n : ℕ) : ℤ :=
  A186330.P4637361622243978588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186331.P6947879650581704107

`A186223(Δ[n²])-n`
-/

namespace A186331.P6947879650581704107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A186331.P6947879650581704107

noncomputable section

/-- A186331: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186330.

Offset 1, canonical program `A186331.P6947879650581704107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186331 (n : ℕ) : ℤ :=
  A186331.P6947879650581704107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186343.P11545071070651969370

`A004526(A184623(2*n+1))-n`
-/

namespace A186343.P11545071070651969370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184623 (2 * n + 1)).toNat - (n : ℤ)

end

end A186343.P11545071070651969370

noncomputable section

/-- A186343: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186342.

Offset 1, canonical program `A186343.P11545071070651969370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A186343 (n : ℕ) : ℤ :=
  A186343.P11545071070651969370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A186343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186354.P1694336808375307866

`A073188(n)+2+n`
-/

namespace A186354.P1694336808375307866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 n + 2 + (n : ℤ)

end

end A186354.P1694336808375307866

noncomputable section

/-- A186354: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186355.

Offset 1, canonical program `A186354.P1694336808375307866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186354 (n : ℕ) : ℤ :=
  A186354.P1694336808375307866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186389.P13848014347458583741

`∑[Δ[A000934(n)]+1]`
-/

namespace A186389.P13848014347458583741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P13848014347458583741

noncomputable section

/-- A186389: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=6i and g(j)=j(j+1)/2 (triangular number). Complement of A186390.

Offset 1, canonical program `A186389.P13848014347458583741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186389 (n : ℕ) : ℤ :=
  A186389.P13848014347458583741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186497.P7946603808634787494

`A000703(n)-3+n`
-/

namespace A186497.P7946603808634787494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n - 3 + (n : ℤ)

end

end A186497.P7946603808634787494

noncomputable section

/-- A186497: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i-2 and g(j)=j-th triangular number. Complement of A186498.

Offset 1, canonical program `A186497.P7946603808634787494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186497 (n : ℕ) : ℤ :=
  A186497.P7946603808634787494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186499.P2988238181767478112

`ceil(sqrt(A008812(n))+n)`
-/

namespace A186499.P2988238181767478112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008812 n : ℝ) + (n : ℝ)⌉

end

end A186499.P2988238181767478112

noncomputable section

/-- A186499: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-4+5j^2. Complement of A186500.

Offset 1, canonical program `A186499.P2988238181767478112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186499 (n : ℕ) : ℤ :=
  A186499.P2988238181767478112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186513.P11653591617409960415

`comp[A186514(n+1)-1]+1`
-/

namespace A186513.P11653591617409960415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186514 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186513.P11653591617409960415

noncomputable section

/-- A186513: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186514.

Offset 1, canonical program `A186513.P11653591617409960415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186513 (n : ℕ) : ℤ :=
  (A186513.P11653591617409960415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186515.P18183641407450854378

`2*n+1-A005378(A005206(a(n-1)))` with `a(0)=1`
-/

namespace A186515.P18183641407450854378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) - A005378 (A005206 (a (n - 1)).toNat).toNat

end

end A186515.P18183641407450854378

noncomputable section

/-- A186515: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=4+5j^2. Complement of A186516.

Offset 1, canonical program `A186515.P18183641407450854378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186515 (n : ℕ) : ℤ :=
  A186515.P18183641407450854378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186723.P8199349779263166728

`(n^gcd(4, A016116(n)))%10`
-/

namespace A186723.P8199349779263166728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Int.gcd 4 (A016116 n) % 10

end

end A186723.P8199349779263166728

noncomputable section

/-- A186723: a(n) = n^n! (mod 10).

Offset 0, canonical program `A186723.P8199349779263166728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A186723 (n : ℕ) : ℤ :=
  (A186723.P8199349779263166728.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A186723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186852.P18054438384369363332

`A022144(4*n+2)²%A054275(4*n+2)`
-/

namespace A186852.P18054438384369363332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (4 * n + 2) ^ 2) (A054275 (4 * n + 2))

end

end A186852.P18054438384369363332

noncomputable section

/-- A186852: Number of 3-step knight's tours on an (n+2) X (n+2) board summed over all starting positions.

Offset 1, canonical program `A186852.P18054438384369363332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A186852 (n : ℕ) : ℤ :=
  A186852.P18054438384369363332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A186852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187036.P6676794968930008292

`(A036987(n+1)-A036987(A042968(n+2)))^(n+1)`
-/

namespace A187036.P6676794968930008292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036987 (n + 1) - A036987 (A042968 (n + 2)).toNat) ^ (n + 1)

end

end A187036.P6676794968930008292

noncomputable section

/-- A187036: An eigensequence of A187034.

Offset 0, canonical program `A187036.P6676794968930008292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A187036 (n : ℕ) : ℤ :=
  A187036.P6676794968930008292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A187036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187164.P6841462791461600436

`(A007742(n)+n²-A087156(n+1))*6*(n+1)`
-/

namespace A187164.P6841462791461600436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007742 n + (n ^ 2 : ℤ) - A087156 (n + 1)) * (6 * (n + 1) : ℤ)

end

end A187164.P6841462791461600436

noncomputable section

/-- A187164: Number of 3-step self-avoiding walks on an n X n X n cube summed over all starting positions.

Offset 1, canonical program `A187164.P6841462791461600436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187164 (n : ℕ) : ℤ :=
  A187164.P6841462791461600436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187173.P1490319691721797313

`A004275(n)*A004275(A004275(A004275(n))-n)`
-/

namespace A187173.P1490319691721797313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n * A004275 (A004275 (A004275 n).toNat - (n : ℤ)).toNat

end

end A187173.P1490319691721797313

noncomputable section

/-- A187173: Number of 3-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

Offset 1, canonical program `A187173.P1490319691721797313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A187173 (n : ℕ) : ℤ :=
  A187173.P1490319691721797313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A187173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187181.P6476450187330902741

`A028310(∑[A049347(A071619(n))])`
-/

namespace A187181.P6476450187330902741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A071619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187181.P6476450187330902741

noncomputable section

/-- A187181: Parse the infinite string 012012012012... into distinct phrases 0, 1, 2, 01, 20, 12, 012, ...; a(n) = length of n-th phrase.

Offset 1, canonical program `A187181.P6476450187330902741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A187181 (n : ℕ) : ℤ :=
  A187181.P6476450187330902741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A187181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187191.P14870004376443903265

`(A260260(n)+A000217(n))*(n+1)²`
-/

namespace A187191.P14870004376443903265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260260 n + A000217 n) * ((n + 1) ^ 2 : ℤ)

end

end A187191.P14870004376443903265

noncomputable section

/-- A187191: Number of 4-turn rook's tours on an n X n board summed over all starting positions.

Offset 1, canonical program `A187191.P14870004376443903265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187191 (n : ℕ) : ℤ :=
  A187191.P14870004376443903265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187387.P5808425786983979277

`∑[Δ[A228177(n)]+1]`
-/

namespace A187387.P5808425786983979277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187387.P5808425786983979277

noncomputable section

/-- A187387: Floor(r*n), where r=1+sqrt(6)+sqrt(5); complement of A187388.

Offset 1, canonical program `A187387.P5808425786983979277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A187387 (n : ℕ) : ℤ :=
  A187387.P5808425786983979277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A187387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187388.P12675393244022700110

`comp[A228177(n)+n]`
-/

namespace A187388.P12675393244022700110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187388.P12675393244022700110

noncomputable section

/-- A187388: Floor(s*n), where s=1+sqrt(6)-sqrt(5); complement of A187387.

Offset 1, canonical program `A187388.P12675393244022700110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187388 (n : ℕ) : ℤ :=
  (A187388.P12675393244022700110.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187389.P17181131781947967530

`floor(A158231(n+1)/42)`
-/

namespace A187389.P17181131781947967530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158231 (n + 1) : ℚ) / 42⌋

end

end A187389.P17181131781947967530

noncomputable section

/-- A187389: a(n) = floor(r*n), where r = 1 + sqrt(7) + sqrt(6); complement of A187390.

Offset 1, canonical program `A187389.P17181131781947967530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187389 (n : ℕ) : ℤ :=
  A187389.P17181131781947967530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187395.P1363540998234301676

`∑[A081168(n)+4]`
-/

namespace A187395.P1363540998234301676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187395.P1363540998234301676

noncomputable section

/-- A187395: a(n) = floor(r*n), where r = 4 + sqrt(10); complement of A187396.

Offset 1, canonical program `A187395.P1363540998234301676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187395 (n : ℕ) : ℤ :=
  A187395.P1363540998234301676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187396.P13224673495148614598

`∑[A081168(n)-2]`
-/

namespace A187396.P13224673495148614598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187396.P13224673495148614598

noncomputable section

/-- A187396: a(n) = floor(s*n), where s =-2 + sqrt(10); complement of A187395.

Offset 1, canonical program `A187396.P13224673495148614598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187396 (n : ℕ) : ℤ :=
  A187396.P13224673495148614598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187499.P9877960000477458818

`A187501(n-3%(n+1))`
-/

namespace A187499.P9877960000477458818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (n - 3 % (n + 1))

end

end A187499.P9877960000477458818

noncomputable section

/-- A187499: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=1. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,1,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

Offset 0, canonical program `A187499.P9877960000477458818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A187499 (n : ℕ) : ℤ :=
  A187499.P9877960000477458818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A187499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187571.P5003095769329786883

`3*A187570(n+1)+n+1`
-/

namespace A187571.P5003095769329786883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A187570 (n + 1) + (n + 1 : ℤ)

end

end A187571.P5003095769329786883

noncomputable section

/-- A187571: Complement of A187570.

Offset 1, canonical program `A187571.P5003095769329786883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187571 (n : ℕ) : ℤ :=
  A187571.P5003095769329786883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187573.P17768076224200419782

`3*A187572(n+1)+2+n`
-/

namespace A187573.P17768076224200419782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A187572 (n + 1) + 2 + (n : ℤ)

end

end A187573.P17768076224200419782

noncomputable section

/-- A187573: Complement of A187572.

Offset 1, canonical program `A187573.P17768076224200419782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187573 (n : ℕ) : ℤ :=
  A187573.P17768076224200419782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187607.P7809169353720146712

`(C(2, n)-A139544(n+1))²`
-/

namespace A187607.P7809169353720146712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 n : ℤ) - A139544 (n + 1)) ^ 2

end

end A187607.P7809169353720146712

noncomputable section

/-- A187607: Number of 3-step one space for components leftwards or up, two space for components rightwards or down asymmetric quasi-bishop's tours (antidiagonal moves become knight moves) on an n X n board summed over all starting positions.

Offset 1, canonical program `A187607.P7809169353720146712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187607 (n : ℕ) : ℤ :=
  A187607.P7809169353720146712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187680.P13544893128640517715

`∏{d}[n+1, #]%A000203(n+1)`
-/

namespace A187680.P13544893128640517715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A000203 (n + 1))

end

end A187680.P13544893128640517715

noncomputable section

/-- A187680: a(n) = (product of divisors of n) mod (sum of divisors of n).

Offset 1, canonical program `A187680.P13544893128640517715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A187680 (n : ℕ) : ℤ :=
  A187680.P13544893128640517715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A187680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187689.P16838789493905865231

`∑[gcd(2, ∑[n])]-A106665(n)`
-/

namespace A187689.P16838789493905865231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A106665 n

end

end A187689.P16838789493905865231

noncomputable section

/-- A187689: Rank transform of the sequence round(3n/4); complement of A187690.

Offset 1, canonical program `A187689.P16838789493905865231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187689 (n : ℕ) : ℤ :=
  A187689.P16838789493905865231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187690.P14255351328814757455

`3*(n+1)-A106665(n)`
-/

namespace A187690.P14255351328814757455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A106665 n

end

end A187690.P14255351328814757455

noncomputable section

/-- A187690: Complement of A187689.

Offset 1, canonical program `A187690.P14255351328814757455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187690 (n : ℕ) : ℤ :=
  A187690.P14255351328814757455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187811.P10596766044350093657

`lt[A091379(n+1), 1]+1`
-/

namespace A187811.P10596766044350093657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A187811.P10596766044350093657

noncomputable section

/-- A187811: Numbers having at least one prime factor of form 4*k+3.

Offset 1, canonical program `A187811.P10596766044350093657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187811 (n : ℕ) : ℤ :=
  (A187811.P10596766044350093657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187947.P11780904534146498966

`∪[A187485(n+1), A035337(n)]`
-/

namespace A187947.P11780904534146498966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187947.P11780904534146498966

noncomputable section

/-- A187947: Positions of 0 in A187946; complement of A134862.

Offset 1, canonical program `A187947.P11780904534146498966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187947 (n : ℕ) : ℤ :=
  (A187947.P11780904534146498966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187953.P13392832314913242653

`A163801(A004396(n))+1+n`
-/

namespace A187953.P13392832314913242653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (A004396 n).toNat + 1 + (n : ℤ)

end

end A187953.P13392832314913242653

noncomputable section

/-- A187953: Positions of 1 in A187948; complement of A187949.

Offset 1, canonical program `A187953.P13392832314913242653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187953 (n : ℕ) : ℤ :=
  A187953.P13392832314913242653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187967.P10014398144128110312

`abs(Δ[A159684(n)])`
-/

namespace A187967.P10014398144128110312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187967.P10014398144128110312

noncomputable section

/-- A187967: a(n) = floor((n+k)*r) - floor(n*r) - floor(k*r), where r=sqrt(2), k=2.

Offset 1, canonical program `A187967.P10014398144128110312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187967 (n : ℕ) : ℤ :=
  A187967.P10014398144128110312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187971.P5819129724540132840

`3*A003152(n+1)-(n+1)`
-/

namespace A187971.P5819129724540132840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003152 (n + 1) - (n + 1 : ℤ)

end

end A187971.P5819129724540132840

noncomputable section

/-- A187971: Positions of 1 in A187969; complement of A187970.

Offset 1, canonical program `A187971.P5819129724540132840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187971 (n : ℕ) : ℤ :=
  A187971.P5819129724540132840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188009.P134641851213232026

`A096270(n-A078588(n))`
-/

namespace A188009.P134641851213232026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((n : ℤ) - A078588 n).toNat

end

end A188009.P134641851213232026

noncomputable section

/-- A188009: a(n) = [nr] - [nr-kr] - [kr], where r=(1+sqrt(5))/2, k=2, [ ]=floor.

Offset 1, canonical program `A188009.P134641851213232026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188009 (n : ℕ) : ℤ :=
  A188009.P134641851213232026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188013.P5416462943945789149

`comp[3*n+A285679(n+1)-1]+1`
-/

namespace A188013.P5416462943945789149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A285679 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188013.P5416462943945789149

noncomputable section

/-- A188013: Positions of 1 in A188011; complement of A188012.

Offset 1, canonical program `A188013.P5416462943945789149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188013 (n : ℕ) : ℤ :=
  (A188013.P5416462943945789149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188017.P1836281172235948211

`char[Δ[6*A060144(n)]+n]`
-/

namespace A188017.P1836281172235948211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188017.P1836281172235948211

noncomputable section

/-- A188017: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=6, [ ]=floor.

Offset 1, canonical program `A188017.P1836281172235948211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A188017 (n : ℕ) : ℤ :=
  (A188017.P1836281172235948211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A188017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188040.P2755953208103886192

`A003152(n+1)-A049472(A049472(n+1))`
-/

namespace A188040.P2755953208103886192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - A049472 (A049472 (n + 1)).toNat

end

end A188040.P2755953208103886192

noncomputable section

/-- A188040: Positions of 1 in A188038; complement of A188039.

Offset 1, canonical program `A188040.P2755953208103886192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188040 (n : ℕ) : ℤ :=
  A188040.P2755953208103886192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188041.P15409242099086241299

`A188037(n+1-2*A188037(n+1))`
-/

namespace A188041.P15409242099086241299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 ((n + 1 : ℤ) - 2 * A188037 (n + 1)).toNat

end

end A188041.P15409242099086241299

noncomputable section

/-- A188041: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A188041.P15409242099086241299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188041 (n : ℕ) : ℤ :=
  A188041.P15409242099086241299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188070.P187749389523668513

`abs(A054406(n+1)-n)`
-/

namespace A188070.P187749389523668513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054406 (n + 1) - (n : ℤ)|

end

end A188070.P187749389523668513

noncomputable section

/-- A188070: Positions of 1 in A188068; complement of A188069.

Offset 1, canonical program `A188070.P187749389523668513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188070 (n : ℕ) : ℤ :=
  A188070.P187749389523668513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188072.P9285876619016988220

`A172475(A052928(n))+1+n`
-/

namespace A188072.P9285876619016988220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A052928 n).toNat + 1 + (n : ℤ)

end

end A188072.P9285876619016988220

noncomputable section

/-- A188072: Positions of 0 in A188071; complement of A188073.

Offset 1, canonical program `A188072.P9285876619016988220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188072 (n : ℕ) : ℤ :=
  A188072.P9285876619016988220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188082.P14647801940553537570

`char[A003511(n+1)-1]`
-/

namespace A188082.P14647801940553537570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188082.P14647801940553537570

noncomputable section

/-- A188082: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=1, [ ]=floor.

Offset 1, canonical program `A188082.P14647801940553537570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188082 (n : ℕ) : ℤ :=
  (A188082.P14647801940553537570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188083.P8593130762785517257

`A144612(A138466(n+1))`
-/

namespace A188083.P8593130762785517257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144612 (A138466 (n + 1)).toNat

end

end A188083.P8593130762785517257

noncomputable section

/-- A188083: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=2, [ ]=floor.

Offset 1, canonical program `A188083.P8593130762785517257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188083 (n : ℕ) : ℤ :=
  A188083.P8593130762785517257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188084.P3866804258431948867

`A198081(∑[(n+1)%2])+n`
-/

namespace A188084.P3866804258431948867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A188084.P3866804258431948867

noncomputable section

/-- A188084: Positions of 0 in A188083; complement of A188084.

Offset 1, canonical program `A188084.P3866804258431948867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188084 (n : ℕ) : ℤ :=
  A188084.P3866804258431948867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188085.P18175226881759273036

`A188073(n+1)-2`
-/

namespace A188085.P18175226881759273036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (n + 1) - 2

end

end A188085.P18175226881759273036

noncomputable section

/-- A188085: Positions of 1 in A188083; complement of A188084.

Offset 1, canonical program `A188085.P18175226881759273036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188085 (n : ℕ) : ℤ :=
  A188085.P18175226881759273036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188086.P10127461063612971264

`Δ[A195120(n)-A195120(A195120(n))]`
-/

namespace A188086.P10127461063612971264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n - A195120 (A195120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188086.P10127461063612971264

noncomputable section

/-- A188086: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=3, [ ]=floor.

Offset 1, canonical program `A188086.P10127461063612971264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188086 (n : ℕ) : ℤ :=
  A188086.P10127461063612971264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188087.P14776229008693783147

`A215781(A008620(n))+n`
-/

namespace A188087.P14776229008693783147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A008620 n).toNat + (n : ℤ)

end

end A188087.P14776229008693783147

noncomputable section

/-- A188087: Positions of 0 in A188086; complement of A188088.

Offset 1, canonical program `A188087.P14776229008693783147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188087 (n : ℕ) : ℤ :=
  A188087.P14776229008693783147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188089.P18310189432462336947

`4*A003512(n+1)-(n+1)`
-/

namespace A188089.P18310189432462336947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003512 (n + 1) - (n + 1 : ℤ)

end

end A188089.P18310189432462336947

noncomputable section

/-- A188089: Positions of 0 in the zero-one sequence [nr+4r]-[nr]-[4r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188089.P18310189432462336947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188089 (n : ℕ) : ℤ :=
  A188089.P18310189432462336947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188169.P9022130587462569637

`∑{d}[n+1, A253513(#-1)]`
-/

namespace A188169.P9022130587462569637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253513 (d - 1)

end

end A188169.P9022130587462569637

noncomputable section

/-- A188169: The number of divisors d of n of the form d == 1 (mod 8).

Offset 1, canonical program `A188169.P9022130587462569637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188169 (n : ℕ) : ℤ :=
  A188169.P9022130587462569637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188170.P7143844993511574485

`∑{d}[n+1, and(1, #*A122046(#))]`
-/

namespace A188170.P7143844993511574485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 ((d : ℤ) * A122046 d)

end

end A188170.P7143844993511574485

noncomputable section

/-- A188170: The number of divisors d of n of the form d == 3 (mod 8).

Offset 1, canonical program `A188170.P7143844993511574485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188170 (n : ℕ) : ℤ :=
  A188170.P7143844993511574485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188187.P4964063636311275739

`A081147(n)-2`
-/

namespace A188187.P4964063636311275739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n - 2

end

end A188187.P4964063636311275739

noncomputable section

/-- A188187: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=1, [ ]=floor.

Offset 1, canonical program `A188187.P4964063636311275739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188187 (n : ℕ) : ℤ :=
  A188187.P4964063636311275739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188188.P12443416094707849401

`ceil(A026352(n)/2)`
-/

namespace A188188.P12443416094707849401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026352 n : ℚ) / 2⌉

end

end A188188.P12443416094707849401

noncomputable section

/-- A188188: Positions of 0 in A188187; complement of A004958.

Offset 1, canonical program `A188188.P12443416094707849401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188188 (n : ℕ) : ℤ :=
  A188188.P12443416094707849401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188191.P14924021026053288212

`A198082(ceil(n/2))+n+1`
-/

namespace A188191.P14924021026053288212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 ⌈(n : ℚ) / 2⌉.toNat + (n + 1 : ℤ)

end

end A188191.P14924021026053288212

noncomputable section

/-- A188191: Positions of 1 in A188189; complement of A188190.

Offset 1, canonical program `A188191.P14924021026053288212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188191 (n : ℕ) : ℤ :=
  A188191.P14924021026053288212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188220.P14087564465006756477

`∑[(char[A276854(n)]+2)²]`
-/

namespace A188220.P14087564465006756477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188220.P14087564465006756477

noncomputable section

/-- A188220: Positions of 1 in the zero-one sequence [n*r]-[5*r]-[n*r-5*r], where r=sqrt(5), n>=1.

Offset 1, canonical program `A188220.P14087564465006756477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188220 (n : ℕ) : ℤ :=
  (A188220.P14087564465006756477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188221.P599899064614246343

`A081147(n+1)-2`
-/

namespace A188221.P599899064614246343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 (n + 1) - 2

end

end A188221.P599899064614246343

noncomputable section

/-- A188221: a(n) = [n*r + k*r]-[n*r]-[k*r], where r=sqrt(5), k=1, [ ]=floor.

Offset 1, canonical program `A188221.P599899064614246343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188221 (n : ℕ) : ℤ :=
  A188221.P599899064614246343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153363.P15146954388921839273

`∪[A153365(n+1), A153366(n+1)]`
-/

namespace A153363.P15146954388921839273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153363.P15146954388921839273

noncomputable section

/-- A153363: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows whose color is that of the top right corner.

Offset 1, canonical program `A153363.P15146954388921839273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153363 (n : ℕ) : ℤ :=
  (A153363.P15146954388921839273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154223.P9681747968428157129

`A008619(n)+∑[A007179(A289207(n))]`
-/

namespace A154223.P9681747968428157129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154223.P9681747968428157129

noncomputable section

/-- A154223: Diagonal sums of number triangle A154221.

Offset 0, canonical program `A154223.P9681747968428157129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A154223 (n : ℕ) : ℤ :=
  A154223.P9681747968428157129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A154223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154419.P2313163327098521587

`∩[A145995(n+1), A245042(n+1)]`
-/

namespace A154419.P2313163327098521587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154419.P2313163327098521587

noncomputable section

/-- A154419: Primes of the form 20*k^2 + 36*k + 17.

Offset 1, canonical program `A154419.P2313163327098521587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 489 terms. -/
def A154419 (n : ℕ) : ℤ :=
  (A154419.P2313163327098521587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 489 terms. -/
def A154419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155462.P12021390879330110779

`Δ[A230980(9*n)]`
-/

namespace A155462.P12021390879330110779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P12021390879330110779

noncomputable section

/-- A155462: Frequency of n in A155213.

Offset 0, canonical program `A155462.P12021390879330110779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A155462 (n : ℕ) : ℤ :=
  A155462.P12021390879330110779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A155462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155941.P17300863654346635542

`comp[A155942(n+1)]`
-/

namespace A155941.P17300863654346635542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155941.P17300863654346635542

noncomputable section

/-- A155941: Numbers n such that 16*n+1 is not prime.

Offset 1, canonical program `A155941.P17300863654346635542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155941 (n : ℕ) : ℤ :=
  (A155941.P17300863654346635542.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156655.P1351968691735993926

`∩[A008853(2*n+1)+A008853(2*(n+1)), A179231(n+2)]`
-/

namespace A156655.P1351968691735993926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (2 * n + 1) + A008853 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179231 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P1351968691735993926

noncomputable section

/-- A156655: Primes of the form 1000*k + 1.

Offset 1, canonical program `A156655.P1351968691735993926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A156655 (n : ℕ) : ℤ :=
  (A156655.P1351968691735993926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A156655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156685.P11810782186417547600

`A004526(∑[A350872(n+1)])`
-/

namespace A156685.P11810782186417547600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156685.P11810782186417547600

noncomputable section

/-- A156685: Number of primitive Pythagorean triples A^2 + B^2 = C^2 with 0 < A < B < C and gcd(A,B)=1 that have a hypotenuse C that is less than or equal to n.

Offset 1, canonical program `A156685.P11810782186417547600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156685 (n : ℕ) : ℤ :=
  A156685.P11810782186417547600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157657.P1538413047181948395

`A157658(n+1)+A000007(n)`
-/

namespace A157657.P1538413047181948395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) + A000007 n

end

end A157657.P1538413047181948395

noncomputable section

/-- A157657: a(1) = 1, a(n) = -mu(n) for n >= 2.

Offset 1, canonical program `A157657.P1538413047181948395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157657 (n : ℕ) : ℤ :=
  A157657.P1538413047181948395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157892.P3381969269400244454

`A162751(A322250(n+2))`
-/

namespace A157892.P3381969269400244454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162751 (A322250 (n + 2)).toNat

end

end A157892.P3381969269400244454

noncomputable section

/-- A157892: Values of k in A080075.

Offset 1, canonical program `A157892.P3381969269400244454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157892 (n : ℕ) : ℤ :=
  A157892.P3381969269400244454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158275.P7501874898225500758

`A000203(n+1)/A179931(n+1)`
-/

namespace A158275.P7501874898225500758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A179931 (n + 1) : ℚ)

end

end A158275.P7501874898225500758

noncomputable section

/-- A158275: Denominators of antiharmonic means of divisors of n.

Offset 1, canonical program `A158275.P7501874898225500758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158275.P7501874898225500758.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159302.P6188150767410829118

`eq[A076191(2*(n+1)), A252736(n+2)]+1`
-/

namespace A159302.P6188150767410829118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A159302.P6188150767410829118

noncomputable section

/-- A159302: Numbers k such that the number of factors on both sides of the equation k + (k+1) = 2k+1 is the same.

Offset 1, canonical program `A159302.P6188150767410829118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A159302 (n : ℕ) : ℤ :=
  (A159302.P6188150767410829118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A159302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160417.P5505954181710526844

`floor(A160797(n+2)/3)`
-/

namespace A160417.P5505954181710526844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160797 (n + 2) : ℚ) / 3⌋

end

end A160417.P5505954181710526844

noncomputable section

/-- A160417: a(n) = A160415(n+1)/4.

Offset 1, canonical program `A160417.P5505954181710526844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. -/
def A160417 (n : ℕ) : ℤ :=
  A160417.P5505954181710526844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. -/
def A160417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160796.P3091951535364728411

`∑[A160797(A028310(n))]-1`
-/

namespace A160796.P3091951535364728411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160796.P3091951535364728411

noncomputable section

/-- A160796: Total number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton which is the "corner" structure corresponding to A160118.

Offset 0, canonical program `A160796.P3091951535364728411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A160796 (n : ℕ) : ℤ :=
  A160796.P3091951535364728411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1093 terms. -/
def A160796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160816.P12891272167244012469

`A160834(n)-A169801(n)`
-/

namespace A160816.P12891272167244012469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - A169801 n

end

end A160816.P12891272167244012469

noncomputable section

/-- A160816: Expansion of (1+62*x+563*x^2+1032*x^3+467*x^4+50*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160816.P12891272167244012469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160816 (n : ℕ) : ℤ :=
  A160816.P12891272167244012469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163641.P921846724175378980

`gcd(A186944(n+1), A327998(n))`
-/

namespace A163641.P921846724175378980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (n + 1)) (A327998 n)

end

end A163641.P921846724175378980

noncomputable section

/-- A163641: The radical of the swinging factorial A056040.

Offset 0, canonical program `A163641.P921846724175378980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A163641 (n : ℕ) : ℤ :=
  (A163641.P921846724175378980.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A163641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164410.P18148346622489512535

`A303714(n+3)+A303714(n+4)`
-/

namespace A164410.P18148346622489512535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303714 (n + 3) + A303714 (n + 4)

end

end A164410.P18148346622489512535

noncomputable section

/-- A164410: Number of binary strings of length n with no substrings equal to 0000 0001 or 0101.

Offset 4, canonical program `A164410.P18148346622489512535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A164410 (n : ℕ) : ℤ :=
  A164410.P18148346622489512535.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. -/
def A164410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164418.P13987918611985411480

`A189593(n+6)+A189593(n+1)`
-/

namespace A164418.P13987918611985411480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189593 (n + 6) + A189593 (n + 1)

end

end A164418.P13987918611985411480

noncomputable section

/-- A164418: Number of binary strings of length n with no substrings equal to 0000 0010 or 0101.

Offset 4, canonical program `A164418.P13987918611985411480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A164418 (n : ℕ) : ℤ :=
  A164418.P13987918611985411480.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A164418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164457.P2348421352263541236

`A286938(n)-C(2, C(n², 5))`
-/

namespace A164457.P2348421352263541236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - (Nat.choose 2 (Nat.choose (n ^ 2) 5) : ℤ)

end

end A164457.P2348421352263541236

noncomputable section

/-- A164457: Number of binary strings of length n with no substrings equal to 0001, 0011, or 1010.

Offset 0, canonical program `A164457.P2348421352263541236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A164457 (n : ℕ) : ℤ :=
  A164457.P2348421352263541236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A164457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164910.P1632267053222193330

`n+1+A173318(n)`
-/

namespace A164910.P1632267053222193330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A173318 n

end

end A164910.P1632267053222193330

noncomputable section

/-- A164910: Partial sums of A088748.

Offset 1, canonical program `A164910.P1632267053222193330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164910 (n : ℕ) : ℤ :=
  A164910.P1632267053222193330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166363.P11370000195262789773

`Δ[A230980(A212293(n+1))]`
-/

namespace A166363.P11370000195262789773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A212293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166363.P11370000195262789773

noncomputable section

/-- A166363: Number of primes in the half-open interval (n*(log(n))^2..(n+1)*(log(n+1))^2].

Offset 1, canonical program `A166363.P11370000195262789773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A166363 (n : ℕ) : ℤ :=
  A166363.P11370000195262789773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A166363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166712.P7902075081343021312

`Δ[A230980(A050504(n+1))]`
-/

namespace A166712.P7902075081343021312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A050504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166712.P7902075081343021312

noncomputable section

/-- A166712: Number of primes in (n*log(n)..(n+1)*log(n+1)] semi-open intervals, n >= 1.

Offset 1, canonical program `A166712.P7902075081343021312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A166712 (n : ℕ) : ℤ :=
  A166712.P7902075081343021312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A166712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166797.P17921625085108199249

`A166815(n+1)+C(n, 3)`
-/

namespace A166797.P17921625085108199249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166815 (n + 1) + (Nat.choose n 3 : ℤ)

end

end A166797.P17921625085108199249

noncomputable section

/-- A166797: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

Offset 1, canonical program `A166797.P17921625085108199249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166797 (n : ℕ) : ℤ :=
  A166797.P17921625085108199249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167683.P15759584013371215298

`Δ[A293137(n)]*A087960(n)`
-/

namespace A167683.P15759584013371215298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087960 n

end

end A167683.P15759584013371215298

noncomputable section

/-- A167683: Hankel transform of A007325.

Offset 0, canonical program `A167683.P15759584013371215298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A167683 (n : ℕ) : ℤ :=
  A167683.P15759584013371215298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A167683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171008.P3211273678646596191

`A256078(A000040(n+1))`
-/

namespace A171008.P3211273678646596191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A000040 (n + 1)).toNat

end

end A171008.P3211273678646596191

noncomputable section

/-- A171008: Write the n-th prime in binary and change all 0's to 1's and all 1's to 0's.

Offset 1, canonical program `A171008.P3211273678646596191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A171008 (n : ℕ) : ℤ :=
  A171008.P3211273678646596191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A171008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171856.P8435397142163404245

`A201081(n+4)%Δ[A201081(n+3)]`
-/

namespace A171856.P8435397142163404245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201081 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201081 (n + 4)) (f1 (n + 1) - f1 n)

end

end A171856.P8435397142163404245

noncomputable section

/-- A171856: Number of n-step up-side self-avoiding walks on the lattice strip {-1,0,1} x Z (up-side means that the walks move up and sideways but not down).

Offset 0, canonical program `A171856.P8435397142163404245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A171856 (n : ℕ) : ℤ :=
  A171856.P8435397142163404245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A171856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175454.P8699953243359222956

`A338117(2*(n+1))*A338117(2*(n+2))`
-/

namespace A175454.P8699953243359222956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * (n + 1)) * A338117 (2 * (n + 2))

end

end A175454.P8699953243359222956

noncomputable section

/-- A175454: a(n) = number of divisors of n(n+1) that divide neither n nor n+1.

Offset 1, canonical program `A175454.P8699953243359222956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175454 (n : ℕ) : ℤ :=
  A175454.P8699953243359222956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176311.P3447246616575634106

`∑{d}[n+1, #*#%2]+2*A176362(n+1)`
-/

namespace A176311.P3447246616575634106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) + 2 * A176362 (n + 1)

end

end A176311.P3447246616575634106

noncomputable section

/-- A176311: a(n) = sigma(n*2^n).

Offset 1, canonical program `A176311.P3447246616575634106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A176311 (n : ℕ) : ℤ :=
  A176311.P3447246616575634106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A176311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177691.P3371925039135772831

`A230980(eq[1, gcd(2, A230980(n))])`
-/

namespace A177691.P3371925039135772831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A230980 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177691.P3371925039135772831

noncomputable section

/-- A177691: The odd values of PrimePi(.), with repetition.

Offset 1, canonical program `A177691.P3371925039135772831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5144 terms. -/
def A177691 (n : ℕ) : ℤ :=
  A177691.P3371925039135772831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5144 terms. -/
def A177691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178413.P660033189277865224

`eq[n+1, lcm(n+1, A187844(n))]`
-/

namespace A178413.P660033189277865224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A187844 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178413.P660033189277865224

noncomputable section

/-- A178413: Numbers k such that the product of decimal digits of k divides k+1.

Offset 1, canonical program `A178413.P660033189277865224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A178413 (n : ℕ) : ℤ :=
  (A178413.P660033189277865224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A178413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178448.P888281708996163110

`∑{d}[n+1, A007427(#)*A189923((n+1)/#)]`
-/

namespace A178448.P888281708996163110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A189923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178448.P888281708996163110

noncomputable section

/-- A178448: Dirichlet inverse of A001160, sigma_5.

Offset 1, canonical program `A178448.P888281708996163110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178448 (n : ℕ) : ℤ :=
  A178448.P888281708996163110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179051.P15377436199673264274

`A179052(floor(n/10))`
-/

namespace A179051.P15377436199673264274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179052 ⌊(n : ℚ) / 10⌋.toNat

end

end A179051.P15377436199673264274

noncomputable section

/-- A179051: Number of partitions of n into powers of 10 (cf. A011557).

Offset 0, canonical program `A179051.P15377436199673264274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179051 (n : ℕ) : ℤ :=
  A179051.P15377436199673264274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182112.P16970799148170175086

`∑[A270059(A000267(n))]`
-/

namespace A182112.P16970799148170175086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (A000267 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182112.P16970799148170175086

noncomputable section

/-- A182112: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and (w+n)^2=x+y+w.

Offset 0, canonical program `A182112.P16970799148170175086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A182112 (n : ℕ) : ℤ :=
  A182112.P16970799148170175086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A182112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182318.P12456302042161532717

`filter[A047501(n+1), A295316(#)]`
-/

namespace A182318.P12456302042161532717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A182318.P12456302042161532717

noncomputable section

/-- A182318: List of positive integers whose prime tower factorization, as defined in comments, does not contain the prime 2.

Offset 1, canonical program `A182318.P12456302042161532717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318 (n : ℕ) : ℤ :=
  A182318.P12456302042161532717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. -/
def A182318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183111.P10582153524129419430

`record[Δ[A183112(A004523(n))]]`
-/

namespace A183111.P10582153524129419430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183112 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183111.P10582153524129419430

noncomputable section

/-- A183111: Magnetic Tower of Hanoi, number of moves of disk number k, optimally solving the [RED ; BLUE ; NEUTRAL] or [NEUTRAL ; RED ; BLUE] pre-colored puzzle.

Offset 0, canonical program `A183111.P10582153524129419430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183111 (n : ℕ) : ℤ :=
  A183111.P10582153524129419430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A183111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183920.P9589663836147478205

`A025767(n+1)+A307872(n+1)+A307872(n+2)`
-/

namespace A183920.P9589663836147478205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (n + 1) + (A307872 (n + 1) + A307872 (n + 2))

end

end A183920.P9589663836147478205

noncomputable section

/-- A183920: Number of nondecreasing arrangements of n numbers in -2..2 with sum zero and sum of squares not greater than n*6/3.

Offset 1, canonical program `A183920.P9589663836147478205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A183920 (n : ℕ) : ℤ :=
  A183920.P9589663836147478205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A183920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184036.P9807258316638069783

`6*(A184037(n+1)/6-50)`
-/

namespace A184036.P9807258316638069783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A184037 (n + 1) : ℚ) / 6 - 50)

end

end A184036.P9807258316638069783

noncomputable section

/-- A184036: 1/16 the number of (n+1) X 7 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184036.P9807258316638069783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184036 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184036.P9807258316638069783.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184737.P17691551374496734365

`∑[p?[2-Δ[A327256(n)]]]`
-/

namespace A184737.P17691551374496734365
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184737.P17691551374496734365

noncomputable section

/-- A184737: a(n) = floor(n*s+h-h*s), where s=-1+2^(3/2), h=-1/2; complement of A184736.

Offset 1, canonical program `A184737.P17691551374496734365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A184737 (n : ℕ) : ℤ :=
  A184737.P17691551374496734365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A184737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185015.P8568089362200605037

`A185115(n)-A185116(n)`
-/

namespace A185015.P8568089362200605037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 n - A185116 n

end

end A185015.P8568089362200605037

noncomputable section

/-- A185015: Characteristic function of 5.

Offset 0, canonical program `A185015.P8568089362200605037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, A185116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185015 (n : ℕ) : ℤ :=
  A185015.P8568089362200605037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, A185116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185016.P15635717452489970801

`A185116(n)-A185117(n)`
-/

namespace A185016.P15635717452489970801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 n - A185117 n

end

end A185016.P15635717452489970801

noncomputable section

/-- A185016: Characteristic function of 6.

Offset 0, canonical program `A185016.P15635717452489970801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185116, A185117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185016 (n : ℕ) : ℤ :=
  A185016.P15635717452489970801.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185116, A185117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185017.P17290526473514130814

`A185117(n)-A185118(n)`
-/

namespace A185017.P17290526473514130814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n - A185118 n

end

end A185017.P17290526473514130814

noncomputable section

/-- A185017: Characteristic function of 7.

Offset 0, canonical program `A185017.P17290526473514130814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185117, A185118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185017 (n : ℕ) : ℤ :=
  A185017.P17290526473514130814.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185117, A185118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185017.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185395.P13652728076347247808

`A005899(n)-A299272(n)`
-/

namespace A185395.P13652728076347247808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A299272 n

end

end A185395.P13652728076347247808

noncomputable section

/-- A185395: a(3n) = n^2, a(3n+1) = a(3n+2) = 3*n*(n+1)/2.

Offset 0, canonical program `A185395.P13652728076347247808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185395 (n : ℕ) : ℤ :=
  A185395.P13652728076347247808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186159.P16162331322285445235

`comp[A186274(n+1)-1]+1`
-/

namespace A186159.P16162331322285445235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186274 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186159.P16162331322285445235

noncomputable section

/-- A186159: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and octagonal numbers. Complement of A186274.

Offset 1, canonical program `A186159.P16162331322285445235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186159 (n : ℕ) : ℤ :=
  (A186159.P16162331322285445235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186237.P13313159862021497232

`comp[A186238(n+1)-1]+1`
-/

namespace A186237.P13313159862021497232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186238 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186237.P13313159862021497232

noncomputable section

/-- A186237: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers (A000217) and heptagonal numbers (A000566). Complement of A186238.

Offset 1, canonical program `A186237.P13313159862021497232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186237 (n : ℕ) : ℤ :=
  (A186237.P13313159862021497232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186322.P17281344190024078444

`comp[A186323(n+1)-1]+1`
-/

namespace A186322.P17281344190024078444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186323 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186322.P17281344190024078444

noncomputable section

/-- A186322: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186323.

Offset 1, canonical program `A186322.P17281344190024078444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186322 (n : ℕ) : ℤ :=
  (A186322.P17281344190024078444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188046.P2805480995859068982

`∪[A003152(n+1), A285078(n+1)+2]`
-/

namespace A188046.P2805480995859068982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188046.P2805480995859068982

noncomputable section

/-- A188046: Positions of 1 in A188044; complement of A188045.

Offset 1, canonical program `A188046.P2805480995859068982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188046 (n : ℕ) : ℤ :=
  (A188046.P2805480995859068982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188212.P3002002980398510572

`A188334(n+1)+A188334(n+2)-A188182(n+2)`
-/

namespace A188212.P3002002980398510572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188334 (n + 1) + (A188334 (n + 2) - A188182 (n + 2))

end

end A188212.P3002002980398510572

noncomputable section

/-- A188212: Number of nondecreasing arrangements of 4 numbers in -(n+2)..(n+2) with sum zero.

Offset 1, canonical program `A188212.P3002002980398510572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188212 (n : ℕ) : ℤ :=
  A188212.P3002002980398510572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164722.P9583709512373322785

`eq[1, A010052(A008472(n+1))]+1`
-/

namespace A164722.P9583709512373322785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164722.P9583709512373322785

noncomputable section

/-- A164722: Numbers whose sum of distinct prime factors is a square.

Offset 1, canonical program `A164722.P9583709512373322785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A164722 (n : ℕ) : ℤ :=
  (A164722.P9583709512373322785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A164722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164788.P18376608569673635882

`eq[1, A010057(A008472(n+1))]+1`
-/

namespace A164788.P18376608569673635882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A008472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164788.P18376608569673635882

noncomputable section

/-- A164788: Numbers such that the sum of the distinct prime factors is a cube.

Offset 1, canonical program `A164788.P18376608569673635882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A164788 (n : ℕ) : ℤ :=
  (A164788.P18376608569673635882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A164788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171833.P10297610789633293472

`A002144(A002144(n+1))`
-/

namespace A171833.P10297610789633293472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (A002144 (n + 1)).toNat

end

end A171833.P10297610789633293472

noncomputable section

/-- A171833: Pythagorean primes with Pythagorean prime index.

Offset 1, canonical program `A171833.P10297610789633293472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171833 (n : ℕ) : ℤ :=
  A171833.P10297610789633293472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173527.P4501047238505781544

`1+A053828(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173527.P4501047238505781544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053828 n

end

end A173527.P4501047238505781544

noncomputable section

/-- A173527: a(n) = 1 + A053828(n-1), where A053828 is the sum of digits in base 7.

Offset 1, canonical program `A173527.P4501047238505781544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173527 (n : ℕ) : ℤ :=
  A173527.P4501047238505781544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173529.P74338267676865748

`1+A053830(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173529.P74338267676865748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053830 n

end

end A173529.P74338267676865748

noncomputable section

/-- A173529: a(n) = 1 + A053830(n-1), where A053830 is the sum of the digits of its argument in base 9.

Offset 1, canonical program `A173529.P74338267676865748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173529 (n : ℕ) : ℤ :=
  A173529.P74338267676865748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176147.P5594787546737527152

`(n+1)^A008472(n+1)`
-/

namespace A176147.P5594787546737527152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008472 (n + 1) : ℤ)

end

end A176147.P5594787546737527152

noncomputable section

/-- A176147: a(n) = n^sopf(n), where sopf(n) is the sum of the distinct primes dividing n (A008472).

Offset 1, canonical program `A176147.P5594787546737527152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176147.P5594787546737527152.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178389.P4315006235003171408

`3*A007522(n+1)`
-/

namespace A178389.P4315006235003171408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007522 (n + 1)

end

end A178389.P4315006235003171408

noncomputable section

/-- A178389: Multiples of 3 in A175461.

Offset 1, canonical program `A178389.P4315006235003171408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178389 (n : ℕ) : ℤ :=
  A178389.P4315006235003171408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178978.P11304914624765367311

`A144448(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178978.P11304914624765367311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144448 (n + 1) : ℚ) / 8

end

end A178978.P11304914624765367311

noncomputable section

/-- A178978: a(n) = A144448(n+1)/8.

Offset 0, canonical program `A178978.P11304914624765367311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178978.P11304914624765367311.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179211.P7410535593365144243

`A013928(2*(n+1)+1)-A013928(n+1)`
-/

namespace A179211.P7410535593365144243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1) + 1) - A013928 (n + 1)

end

end A179211.P7410535593365144243

noncomputable section

/-- A179211: Number of squarefree numbers between n and 2*n (inclusive).

Offset 1, canonical program `A179211.P7410535593365144243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179211 (n : ℕ) : ℤ :=
  A179211.P7410535593365144243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180253.P5766954473390724664

`∑{d}[n+1, A065967(#)]`
-/

namespace A180253.P5766954473390724664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065967 d

end

end A180253.P5766954473390724664

noncomputable section

/-- A180253: Call two divisors of n adjacent if the larger is a prime times the smaller. a(n) is the sum of elements of all pairs of adjacent divisors of n.

Offset 1, canonical program `A180253.P5766954473390724664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180253 (n : ℕ) : ℤ :=
  A180253.P5766954473390724664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183097.P3908447792888475748

`∑{d}[n+1, #*A112526(#)]`
-/

namespace A183097.P3908447792888475748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A112526 d

end

end A183097.P3908447792888475748

noncomputable section

/-- A183097: a(n) = sum of powerful divisors d (including 1) of n.

Offset 1, canonical program `A183097.P3908447792888475748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183097 (n : ℕ) : ℤ :=
  A183097.P3908447792888475748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186083.P13615355468121439967

`eq[1, char[A161903(n)]]`
-/

namespace A186083.P13615355468121439967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161903 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186083.P13615355468121439967

noncomputable section

/-- A186083: Values taken by A161903, sorted and duplicates removed.

Offset 1, canonical program `A186083.P13615355468121439967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A186083 (n : ℕ) : ℤ :=
  (A186083.P13615355468121439967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A186083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186302.P17475383867491687271

`(A007522(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186302.P17475383867491687271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007522 (n + 1) - 1 : ℚ) / 2

end

end A186302.P17475383867491687271

noncomputable section

/-- A186302: a(n) = ( A007522(n)-1 )/2.

Offset 1, canonical program `A186302.P17475383867491687271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186302 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186302.P17475383867491687271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186304.P15915226160515621966

`A007522(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186304.P15915226160515621966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) - 2

end

end A186304.P15915226160515621966

noncomputable section

/-- A186304: a(n) = A007522(n) - 2.

Offset 1, canonical program `A186304.P15915226160515621966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186304 (n : ℕ) : ℤ :=
  A186304.P15915226160515621966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187793.P5149541496451924796

`∑{d}[n+1, #*A294934(#)]`
-/

namespace A187793.P5149541496451924796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A294934 d

end

end A187793.P5149541496451924796

noncomputable section

/-- A187793: Sum of the deficient divisors of n.

Offset 1, canonical program `A187793.P5149541496451924796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187793 (n : ℕ) : ℤ :=
  A187793.P5149541496451924796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187793.provenance : SequenceMachineLib.Provenance := .conjectured

