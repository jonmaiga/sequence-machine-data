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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A119633.P3368979013141627521

`A046717(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119633.P3368979013141627521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 1) ^ 3

end

end A119633.P3368979013141627521

noncomputable section

/-- A119633: a(n) = (A046717(n))^3.

Offset 1, canonical program `A119633.P3368979013141627521`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A046717(n+1)^3` (program `A119633.P3368979013141627521`, by `A119633.P3368979013141627521.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A119633 (n : ℕ) : ℤ :=
  A119633.P3368979013141627521.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A046717(n+1)^3` (program `A119633.P3368979013141627521`, by `A119633.P3368979013141627521.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A119633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A120096.P14687869589434560623

`A046717(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120096.P14687869589434560623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 1) ^ 2

end

end A120096.P14687869589434560623

noncomputable section

/-- A120096: a(n) = (A046717(n))^2 (starting with n=1).

Offset 1, canonical program `A120096.P14687869589434560623`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A046717(n+1)²` (program `A120096.P14687869589434560623`, by `A120096.P14687869589434560623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120096 (n : ℕ) : ℤ :=
  A120096.P14687869589434560623.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A046717(n+1)²` (program `A120096.P14687869589434560623`, by `A120096.P14687869589434560623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120096.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A120471.P1065442861071889028

`6*A015518(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120471.P1065442861071889028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A015518 n

end

end A120471.P1065442861071889028

noncomputable section

/-- A120471: a(n) = 6 * A015518(n).

Offset 0, canonical program `A120471.P1065442861071889028`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*A015518(n)` (program `A120471.P1065442861071889028`, by `A120471.P1065442861071889028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120471 (n : ℕ) : ℤ :=
  A120471.P1065442861071889028.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*A015518(n)` (program `A120471.P1065442861071889028`, by `A120471.P1065442861071889028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A120471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A127214.P12019303537521758473

`2^(n+1)*A001644(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127214.P12019303537521758473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A001644 (n + 1)

end

end A127214.P12019303537521758473

noncomputable section

/-- A127214: a(n) = 2^n*tribonacci(n) or (2^n)*A001644(n+1).

Offset 1, canonical program `A127214.P12019303537521758473`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*A001644(n+1)` (program `A127214.P12019303537521758473`, by `A127214.P12019303537521758473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127214 (n : ℕ) : ℤ :=
  A127214.P12019303537521758473.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*A001644(n+1)` (program `A127214.P12019303537521758473`, by `A127214.P12019303537521758473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127214.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A127215.P7958708193143260324

`3^(n+1)*A001644(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127215.P7958708193143260324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A001644 (n + 1)

end

end A127215.P7958708193143260324

noncomputable section

/-- A127215: a(n) = 3^n*tribonacci(n) or (3^n)*A001644(n+1).

Offset 1, canonical program `A127215.P7958708193143260324`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)*A001644(n+1)` (program `A127215.P7958708193143260324`, by `A127215.P7958708193143260324.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127215 (n : ℕ) : ℤ :=
  A127215.P7958708193143260324.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)*A001644(n+1)` (program `A127215.P7958708193143260324`, by `A127215.P7958708193143260324.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127215.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A129589.P17786864021087815234

`2*A000129(n+1)+A000129(n)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129589.P17786864021087815234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (n + 1) + A000129 n - (n + 1 : ℤ)

end

end A129589.P17786864021087815234

noncomputable section

/-- A129589: a(n) = 2*A000129(n) + A000129(n-1) - n.

Offset 1, canonical program `A129589.P17786864021087815234`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000129(n+1)+A000129(n)-(n+1)` (program `A129589.P17786864021087815234`, by `A129589.P17786864021087815234.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A129589 (n : ℕ) : ℤ :=
  A129589.P17786864021087815234.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000129(n+1)+A000129(n)-(n+1)` (program `A129589.P17786864021087815234`, by `A129589.P17786864021087815234.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A129589.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A132434.P11741610590592150908

`A132433(n+3)-33`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132434.P11741610590592150908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132433 (n + 3) - 33

end

end A132434.P11741610590592150908

noncomputable section

/-- A132434: a(n) = A132433(n) - 33.

Offset 3, canonical program `A132434.P11741610590592150908`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A132433(n+3)-33` (program `A132434.P11741610590592150908`, by `A132434.P11741610590592150908.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A132434 (n : ℕ) : ℤ :=
  A132434.P11741610590592150908.a (n - 3)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A132433(n+3)-33` (program `A132434.P11741610590592150908`, by `A132434.P11741610590592150908.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A132434.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A133037.P1237939868318635299

`A000931(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133037.P1237939868318635299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n ^ 2

end

end A133037.P1237939868318635299

noncomputable section

/-- A133037: a(n) = A000931(n)^2.

Offset 0, canonical program `A133037.P1237939868318635299`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000931(n)²` (program `A133037.P1237939868318635299`, by `A133037.P1237939868318635299.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A133037 (n : ℕ) : ℤ :=
  A133037.P1237939868318635299.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000931(n)²` (program `A133037.P1237939868318635299`, by `A133037.P1237939868318635299.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A133037.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A133654.P8228889830282211406

`2*A000129(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133654.P8228889830282211406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (n + 1) - 1

end

end A133654.P8228889830282211406

noncomputable section

/-- A133654: a(n) = 2*A000129(n) - 1.

Offset 1, canonical program `A133654.P8228889830282211406`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000129(n+1)-1` (program `A133654.P8228889830282211406`, by `A133654.P8228889830282211406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A133654 (n : ℕ) : ℤ :=
  A133654.P8228889830282211406.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000129(n+1)-1` (program `A133654.P8228889830282211406`, by `A133654.P8228889830282211406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A133654.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A135263.P12713593680314051727

`2*A132357(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135263.P12713593680314051727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132357 n

end

end A135263.P12713593680314051727

noncomputable section

/-- A135263: a(n) = 2*A132357(n).

Offset 0, canonical program `A135263.P12713593680314051727`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A132357(n)` (program `A135263.P12713593680314051727`, by `A135263.P12713593680314051727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A135263 (n : ℕ) : ℤ :=
  A135263.P12713593680314051727.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A132357(n)` (program `A135263.P12713593680314051727`, by `A135263.P12713593680314051727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A135263.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A135264.P2171394345503189444

`3*A132357(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135264.P2171394345503189444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A132357 n

end

end A135264.P2171394345503189444

noncomputable section

/-- A135264: a(n) = 3*A132357(n).

Offset 0, canonical program `A135264.P2171394345503189444`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A132357(n)` (program `A135264.P2171394345503189444`, by `A135264.P2171394345503189444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A135264 (n : ℕ) : ℤ :=
  A135264.P2171394345503189444.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A132357(n)` (program `A135264.P2171394345503189444`, by `A135264.P2171394345503189444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A135264.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A135688.P5613016767241642201

`A004001(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135688.P5613016767241642201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004001 (n + 1) * a (n - 1) + a (n - 2)

end

end A135688.P5613016767241642201

noncomputable section

/-- A135688: a(n) = A004001(n)*a(n-1) + a(n-2), for n > 2, with a(1) = a(2) = 1.

Offset 1, canonical program `A135688.P5613016767241642201`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)*a(n-1)+a(n-2)` (program `A135688.P5613016767241642201`, by `A135688.P5613016767241642201.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A135688 (n : ℕ) : ℤ :=
  A135688.P5613016767241642201.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)*a(n-1)+a(n-2)` (program `A135688.P5613016767241642201`, by `A135688.P5613016767241642201.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A135688.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A136036.P4686225280415602955

`A063882(n+2)-A063882(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136036.P4686225280415602955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 2) - A063882 (n + 1)

end

end A136036.P4686225280415602955

noncomputable section

/-- A136036: a(n) = A063882(n+1) - A063882(n).

Offset 1, canonical program `A136036.P4686225280415602955`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A063882(n+2)-A063882(n+1)` (program `A136036.P4686225280415602955`, by `A136036.P4686225280415602955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A136036 (n : ℕ) : ℤ :=
  A136036.P4686225280415602955.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A063882(n+2)-A063882(n+1)` (program `A136036.P4686225280415602955`, by `A136036.P4686225280415602955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A136036.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A138365.P3398846623714641803

`A006190(n+1)*A006190(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138365.P3398846623714641803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) * A006190 (n + 3)

end

end A138365.P3398846623714641803

noncomputable section

/-- A138365: a(n) = A006190(n) * A006190(n+2).

Offset 1, canonical program `A138365.P3398846623714641803`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006190(n+1)*A006190(n+3)` (program `A138365.P3398846623714641803`, by `A138365.P3398846623714641803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A138365 (n : ℕ) : ℤ :=
  A138365.P3398846623714641803.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006190(n+1)*A006190(n+3)` (program `A138365.P3398846623714641803`, by `A138365.P3398846623714641803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A138365.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144613.P4002945584050852539

`A000203(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144613.P4002945584050852539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * (n + 1))

end

end A144613.P4002945584050852539

noncomputable section

/-- A144613: a(n) = sigma(3*n) = A000203(3*n).

Offset 1, canonical program `A144613.P4002945584050852539`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(3*(n+1))` (program `A144613.P4002945584050852539`, by `A144613.P4002945584050852539.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144613 (n : ℕ) : ℤ :=
  A144613.P4002945584050852539.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(3*(n+1))` (program `A144613.P4002945584050852539`, by `A144613.P4002945584050852539.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144613.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144615.P1433595682718935894

`A000203(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144615.P1433595682718935894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * n + 2)

end

end A144615.P1433595682718935894

noncomputable section

/-- A144615: a(n) = A000203(3n+2).

Offset 0, canonical program `A144615.P1433595682718935894`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(3*n+2)` (program `A144615.P1433595682718935894`, by `A144615.P1433595682718935894.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144615 (n : ℕ) : ℤ :=
  A144615.P1433595682718935894.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(3*n+2)` (program `A144615.P1433595682718935894`, by `A144615.P1433595682718935894.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144615.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A115788.P13674972467552780509

`A000035(A022844(n+1))`
-/

namespace A115788.P13674972467552780509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022844 (n + 1)).toNat

end

end A115788.P13674972467552780509

noncomputable section

/-- A115788: a(n) = floor(n*Pi) mod 2.

Offset 1, canonical program `A115788.P13674972467552780509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115788 (n : ℕ) : ℤ :=
  A115788.P13674972467552780509.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115970.P12697513617867407272

`(64*a(n-1)-8*A000108(n-1))/7` with `a(0)=1`
-/

namespace A115970.P12697513617867407272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (64 * a (n - 1) - (8 * A000108 (n - 1) : ℚ)) / 7

end

end A115970.P12697513617867407272

noncomputable section

/-- A115970: Expansion of 1/(4*sqrt(1-4*x) - 3).

Offset 0, canonical program `A115970.P12697513617867407272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115970 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115970.P12697513617867407272.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116385.P5361191380306114926

`A001405(n+3)-3*A001405(n+1)`
-/

namespace A116385.P5361191380306114926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 3) - 3 * A001405 (n + 1)

end

end A116385.P5361191380306114926

noncomputable section

/-- A116385: Expansion of e.g.f. Bessel_I(2,2x) + 2*Bessel_I(3,2x) + Bessel_I(4,2x).

Offset 0, canonical program `A116385.P5361191380306114926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116385 (n : ℕ) : ℤ :=
  A116385.P5361191380306114926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116549.P11628790569736777894

`a(A000523(n))+a(A053645(n))` with `a(0)=1`
-/

namespace A116549.P11628790569736777894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000523 n).toNat + a (A053645 n).toNat

end

end A116549.P11628790569736777894

noncomputable section

/-- A116549: a(0) = 1. a(m + 2^n) = a(n) + a(m), for 0 <= m <= 2^n - 1.

Offset 0, canonical program `A116549.P11628790569736777894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116549 (n : ℕ) : ℤ :=
  (A116549.P11628790569736777894.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116593.P16482802111974345195

`A006046(n+2)+A006046(n)`
-/

namespace A116593.P16482802111974345195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 2) + A006046 n

end

end A116593.P16482802111974345195

noncomputable section

/-- A116593: a(n) = b(n+2) + b(n), where b(n) = A006046(n) is the sequence defined by b(0)=0, b(1)=1, b(n) = 2*b((n-1)/2) + b((n+1)/2) for n =3,5,7,... and b(n) = 3*b(n/2) for n =2,4,6,....

Offset 0, canonical program `A116593.P16482802111974345195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116593 (n : ℕ) : ℤ :=
  A116593.P16482802111974345195.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116731.P1311479631612180233

`A006527(n)+1`
-/

namespace A116731.P1311479631612180233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n + 1

end

end A116731.P1311479631612180233

noncomputable section

/-- A116731: Number of permutations of length n which avoid the patterns 321, 2143, 3124; or avoid the patterns 132, 2314, 4312, etc.

Offset 1, canonical program `A116731.P1311479631612180233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116731 (n : ℕ) : ℤ :=
  A116731.P1311479631612180233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116847.P5495450403933766828

`A001906(n+1)-A004006(n)`
-/

namespace A116847.P5495450403933766828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A004006 n

end

end A116847.P5495450403933766828

noncomputable section

/-- A116847: Number of permutations of length n which avoid the patterns 123, 51432.

Offset 1, canonical program `A116847.P5495450403933766828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116847 (n : ℕ) : ℤ :=
  A116847.P5495450403933766828.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117397.P12887881903317768543

`1/8*(A007489(n+3)-1)`
-/

namespace A117397.P12887881903317768543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A007489 (n + 3) - 1 : ℚ)

end

end A117397.P12887881903317768543

noncomputable section

/-- A117397: Column 3 of triangle A117396.

Offset 0, canonical program `A117397.P12887881903317768543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117397 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117397.P12887881903317768543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117590.P11190650351712641150

`ceil(A008776(n)/A000079(n))`
-/

namespace A117590.P11190650351712641150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008776 n : ℚ) / (A000079 n : ℚ)⌉

end

end A117590.P11190650351712641150

noncomputable section

/-- A117590: a(n) = ceiling(x(n)), where x(n) = 3*x(n-1)/2 and x(1) = 1.

Offset 1, canonical program `A117590.P11190650351712641150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117590 (n : ℕ) : ℤ :=
  A117590.P11190650351712641150.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117591.P11645935650358651505

`A099036(n)+2*A000045(n)`
-/

namespace A117591.P11645935650358651505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n + 2 * A000045 n

end

end A117591.P11645935650358651505

noncomputable section

/-- A117591: a(n) = 2^n + Fibonacci(n).

Offset 0, canonical program `A117591.P11645935650358651505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117591 (n : ℕ) : ℤ :=
  A117591.P11645935650358651505.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117647.P15779758486782283817

`A059973(n+2)-A059973(n+1)`
-/

namespace A117647.P15779758486782283817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (n + 2) - A059973 (n + 1)

end

end A117647.P15779758486782283817

noncomputable section

/-- A117647: a(2n) = A014445(n), a(2n+1) = A015448(n+1).

Offset 0, canonical program `A117647.P15779758486782283817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117647 (n : ℕ) : ℤ :=
  A117647.P15779758486782283817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118011.P16071621871497293811

`4*(n+1)-A001614(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118011.P16071621871497293811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A001614 (n + 1)

end

end A118011.P16071621871497293811

noncomputable section

/-- A118011: Complement of the Connell sequence (A001614); a(n) = 4*n - A001614(n).

Offset 1, canonical program `A118011.P16071621871497293811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118011 (n : ℕ) : ℤ :=
  A118011.P16071621871497293811.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118016.P13608870388523236126

`4*A016031(n+1)`
-/

namespace A118016.P13608870388523236126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016031 (n + 1)

end

end A118016.P13608870388523236126

noncomputable section

/-- A118016: Integers of the form 2^k/(k-1).

Offset 1, canonical program `A118016.P13608870388523236126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118016 (n : ℕ) : ℤ :=
  A118016.P13608870388523236126.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118286.P12890573738190486029

`2*A047237(n+2)`
-/

namespace A118286.P12890573738190486029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047237 (n + 2)

end

end A118286.P12890573738190486029

noncomputable section

/-- A118286: Numbers n such that n == 0 (mod 4) or n == 2 (mod 12).

Offset 1, canonical program `A118286.P12890573738190486029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118286 (n : ℕ) : ℤ :=
  A118286.P12890573738190486029.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118645.P9988651607657554541

`2^n-A000930(n+2)`
-/

namespace A118645.P9988651607657554541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000930 (n + 2)

end

end A118645.P9988651607657554541

noncomputable section

/-- A118645: Number of binary strings of length n such that there exist three consecutive digits where at least two of them are 1's.

Offset 0, canonical program `A118645.P9988651607657554541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118645 (n : ℕ) : ℤ :=
  A118645.P9988651607657554541.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119574.P14004957112172224916

`A000108(n)*A000290(n+2)`
-/

namespace A119574.P14004957112172224916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000290 (n + 2)

end

end A119574.P14004957112172224916

noncomputable section

/-- A119574: a(n) = binomial(2*n,n)*(n+2)^2/(n+1).

Offset 0, canonical program `A119574.P14004957112172224916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119574 (n : ℕ) : ℤ :=
  A119574.P14004957112172224916.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119580.P11477404399209456439

`(n*(n+1))²*A000108(n)`
-/

namespace A119580.P11477404399209456439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1)) ^ 2 : ℤ) * A000108 n

end

end A119580.P11477404399209456439

noncomputable section

/-- A119580: a(n) = (n^2+n^3)*binomial(2*n,n).

Offset 0, canonical program `A119580.P11477404399209456439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119580 (n : ℕ) : ℤ :=
  A119580.P11477404399209456439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119587.P11582636828515909663

`A000051(n)-A006355(n+2)`
-/

namespace A119587.P11582636828515909663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A006355 (n + 2)

end

end A119587.P11582636828515909663

noncomputable section

/-- A119587: 2^n + 1 - 2*Fibonacci(n+1).

Offset 0, canonical program `A119587.P11582636828515909663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119587 (n : ℕ) : ℤ :=
  A119587.P11582636828515909663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119694.P9770232383195286344

`A000045(n)*A000108(n)`
-/

namespace A119694.P9770232383195286344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000108 n

end

end A119694.P9770232383195286344

noncomputable section

/-- A119694: a(n) = Fibonacci(n) * Catalan(n).

Offset 0, canonical program `A119694.P9770232383195286344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119694 (n : ℕ) : ℤ :=
  A119694.P9770232383195286344.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119913.P9282675612654689328

`2*A002807(n+1)`
-/

namespace A119913.P9282675612654689328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002807 (n + 1)

end

end A119913.P9282675612654689328

noncomputable section

/-- A119913: Number of directed simple cycles in the complete graph K_n.

Offset 1, canonical program `A119913.P9282675612654689328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119913 (n : ℕ) : ℤ :=
  A119913.P9282675612654689328.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119944.P17068462013719077516

`A003418(n+1)-A003418(n)`
-/

namespace A119944.P17068462013719077516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - A003418 n

end

end A119944.P17068462013719077516

noncomputable section

/-- A119944: First differences of A003418(n) = lcm(1..n).

Offset 0, canonical program `A119944.P17068462013719077516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119944 (n : ℕ) : ℤ :=
  A119944.P17068462013719077516.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120304.P16195813583233364787

`A000108(n)-2`
-/

namespace A120304.P16195813583233364787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - 2

end

end A120304.P16195813583233364787

noncomputable section

/-- A120304: Catalan numbers minus 2.

Offset 0, canonical program `A120304.P16195813583233364787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120304 (n : ℕ) : ℤ :=
  A120304.P16195813583233364787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120325.P3063020395212392980

`1-A093719(n)`
-/

namespace A120325.P3063020395212392980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A093719 n

end

end A120325.P3063020395212392980

noncomputable section

/-- A120325: Period 6: repeat [0, 0, 1, 0, 1, 0].

Offset 0, canonical program `A120325.P3063020395212392980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120325 (n : ℕ) : ℤ :=
  A120325.P3063020395212392980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120444.P14466474420296758408

`A005408(n+1)-A000203(n+2)`
-/

namespace A120444.P14466474420296758408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) - A000203 (n + 2)

end

end A120444.P14466474420296758408

noncomputable section

/-- A120444: First differences of A004125.

Offset 1, canonical program `A120444.P14466474420296758408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120444 (n : ℕ) : ℤ :=
  A120444.P14466474420296758408.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120905.P535700430110413336

`A006495(2^n)`
-/

namespace A120905.P535700430110413336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (2 ^ n)

end

end A120905.P535700430110413336

noncomputable section

/-- A120905: Real part of (1 + 2i)^(2^n) where i is sqrt(-1).

Offset 0, canonical program `A120905.P535700430110413336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120905 (n : ℕ) : ℤ :=
  A120905.P535700430110413336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121257.P17841054764828038356

`4*A001870(n)`
-/

namespace A121257.P17841054764828038356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001870 n

end

end A121257.P17841054764828038356

noncomputable section

/-- A121257: Number of conjugated cycles composed of six carbons in (1,1)-nanotubes in terms of the number of naphthalene units.

Offset 1, canonical program `A121257.P17841054764828038356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121257 (n : ℕ) : ℤ :=
  A121257.P17841054764828038356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121357.P16255230545232394079

`A000085(n)*A001470(n)`
-/

namespace A121357.P16255230545232394079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A001470 n

end

end A121357.P16255230545232394079

noncomputable section

/-- A121357: Number of different, not necessarily connected, labeled trivalent diagrams of size n.

Offset 0, canonical program `A121357.P16255230545232394079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121357 (n : ℕ) : ℤ :=
  A121357.P16255230545232394079.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121663.P16388253668531222567

`(A000523(n)+2)*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121663.P16388253668531222567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000523 n + 2) * a (A053645 n).toNat

end

end A121663.P16388253668531222567

noncomputable section

/-- A121663: a(0) = 1; if n = 2^k, a(n) = k+2, otherwise a(n)=(A000523(n)+2)*a(A053645(n)).

Offset 0, canonical program `A121663.P16388253668531222567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121663 (n : ℕ) : ℤ :=
  A121663.P16388253668531222567.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121723.P6925570740188186703

`A098916(n+3)+(1-(n+1))*A067318(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121723.P6925570740188186703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098916 (n + 3) + (1 - (n + 1 : ℤ)) * A067318 (n + 1)

end

end A121723.P6925570740188186703

noncomputable section

/-- A121723: a(n) = A098916(n+2) + (1-n) * A067318(n).

Offset 1, canonical program `A121723.P6925570740188186703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121723 (n : ℕ) : ℤ :=
  A121723.P6925570740188186703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121726.P8348806351701603211

`A002104(n+1)-n`
-/

namespace A121726.P8348806351701603211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 (n + 1) - (n : ℤ)

end

end A121726.P8348806351701603211

noncomputable section

/-- A121726: Sum sequence A000522 then subtract 0,1,2,3,4,5,...

Offset 1, canonical program `A121726.P8348806351701603211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121726 (n : ℕ) : ℤ :=
  A121726.P8348806351701603211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122099.P854490588697344585

`(-1)^n*A122100(n)`
-/

namespace A122099.P854490588697344585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122100 n

end

end A122099.P854490588697344585

noncomputable section

/-- A122099: a(n) = -3*a(n-1) + a(n-3) for n>2, with a(0)=1, a(1)=1, a(2)=0.

Offset 0, canonical program `A122099.P854490588697344585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122099 (n : ℕ) : ℤ :=
  A122099.P854490588697344585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122161.P10642544240638225994

`A006053(n+2)-3*A006053(n+1)+A006053(n)`
-/

namespace A122161.P10642544240638225994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 2) - 3 * A006053 (n + 1) + A006053 n

end

end A122161.P10642544240638225994

noncomputable section

/-- A122161: Expansion of x*(1 - 3*x + x^2) / (1 - x - 2*x^2 + x^3).

Offset 1, canonical program `A122161.P10642544240638225994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122161 (n : ℕ) : ℤ :=
  A122161.P10642544240638225994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122437.P14441182777570689841

`A020914(n)+n`
-/

namespace A122437.P14441182777570689841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n + (n : ℤ)

end

end A122437.P14441182777570689841

noncomputable section

/-- A122437: Allowable values of the "dropping time" of the Collatz (3x+1) iteration.

Offset 1, canonical program `A122437.P14441182777570689841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122437 (n : ℕ) : ℤ :=
  A122437.P14441182777570689841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122600.P680517027422699838

`(-1)^n*(6*A215076(n+4)-21*A215076(n+3)-13*A215076(n+2))/7`
-/

namespace A122600.P680517027422699838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) * ((6 * A215076 (n + 4) - 21 * A215076 (n + 3) - 13 * A215076 (n + 2) : ℚ) / 7)

end

end A122600.P680517027422699838

noncomputable section

/-- A122600: Expansion of 1/(1 + 3*x - 4*x^2 + x^3).

Offset 0, canonical program `A122600.P680517027422699838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122600 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122600.P680517027422699838.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122650.P15911976050261522756

`A000045(n+23)`
-/

namespace A122650.P15911976050261522756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 23)

end

end A122650.P15911976050261522756

noncomputable section

/-- A122650: Fibonacci numbers starting at F(23).

Offset 1, canonical program `A122650.P15911976050261522756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122650 (n : ℕ) : ℤ :=
  A122650.P15911976050261522756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122656.P17276579968870830074

`n*A008794(n)`
-/

namespace A122656.P17276579968870830074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008794 n

end

end A122656.P17276579968870830074

noncomputable section

/-- A122656: a(n) = n*floor(n/2)^2.

Offset 0, canonical program `A122656.P17276579968870830074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122656 (n : ℕ) : ℤ :=
  A122656.P17276579968870830074.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122797.P12059737121592676741

`A001614(n+1)-n`
-/

namespace A122797.P12059737121592676741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1) - (n : ℤ)

end

end A122797.P12059737121592676741

noncomputable section

/-- A122797: A P_3-stuttered arithmetic progression with a(n+1) = a(n) if n is a triangular number, a(n+1) = a(n) + 1 otherwise.

Offset 1, canonical program `A122797.P12059737121592676741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122797 (n : ℕ) : ℤ :=
  A122797.P12059737121592676741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122798.P2287833048270803522

`A045929(n+1)-n`
-/

namespace A122798.P2287833048270803522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045929 (n + 1) - (n : ℤ)

end

end A122798.P2287833048270803522

noncomputable section

/-- A122798: A P_5-stuttered arithmetic progression with a(n+1) = a(n) if n is a pentagonal number, a(n+1) = a(n)+4 otherwise.

Offset 1, canonical program `A122798.P2287833048270803522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122798 (n : ℕ) : ℤ :=
  A122798.P2287833048270803522.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122799.P10680246314926975861

`A045930(n+1)-n`
-/

namespace A122799.P10680246314926975861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 (n + 1) - (n : ℤ)

end

end A122799.P10680246314926975861

noncomputable section

/-- A122799: A P_7-stuttered arithmetic progression with a(n+1)=a(n) if n is not a heptagonal number, a(n+1)=a(n)+2 otherwise.

Offset 1, canonical program `A122799.P10680246314926975861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122799 (n : ℕ) : ℤ :=
  A122799.P10680246314926975861.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122880.P9603902106566322994

`A000108(n+1)-A001519(n+1)`
-/

namespace A122880.P9603902106566322994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A001519 (n + 1)

end

end A122880.P9603902106566322994

noncomputable section

/-- A122880: Catalan numbers minus odd-indexed Fibonacci numbers.

Offset 1, canonical program `A122880.P9603902106566322994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122880 (n : ℕ) : ℤ :=
  A122880.P9603902106566322994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122932.P15590536832610869506

`A000085(n+1)-A000079(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122932.P15590536832610869506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) - A000079 n

end

end A122932.P15590536832610869506

noncomputable section

/-- A122932: a(n) = A000085(n) - A000079(n-1).

Offset 1, canonical program `A122932.P15590536832610869506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122932 (n : ℕ) : ℤ :=
  A122932.P15590536832610869506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123056.P8046938970922466105

`1/4*A000129(2*n)*(A002203(2*n)+2)`
-/

namespace A123056.P8046938970922466105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000129 (2 * n) : ℚ) * (A002203 (2 * n) + 2 : ℚ)

end

end A123056.P8046938970922466105

noncomputable section

/-- A123056: Values of X satisfying the equation (X-Y)^4 - 2*X*Y = 0 with integer X >= Y >= 0.

Offset 0, canonical program `A123056.P8046938970922466105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123056 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123056.P8046938970922466105.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123115.P16782163017273333645

`1/4*A000129(2*n)*(A002203(2*n)-2)`
-/

namespace A123115.P16782163017273333645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000129 (2 * n) : ℚ) * (A002203 (2 * n) - 2 : ℚ)

end

end A123115.P16782163017273333645

noncomputable section

/-- A123115: Values of Y satisfying the equation (X-Y)^4 - 2*X*Y = 0 with integer X >= Y >= 0.

Offset 0, canonical program `A123115.P16782163017273333645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123115.P16782163017273333645.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123151.P5166714984886003685

`A000124(n)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123151.P5166714984886003685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000124 n * a (n - 3)

end

end A123151.P5166714984886003685

noncomputable section

/-- A123151: a(n) = A000124(n)*a(n-3) for n > 2, otherwise n!.

Offset 0, canonical program `A123151.P5166714984886003685`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000124(n)*a(n-3)` (program `A123151.P5166714984886003685`, by `A123151.P5166714984886003685.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A123151 (n : ℕ) : ℤ :=
  A123151.P5166714984886003685.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000124(n)*a(n-3)` (program `A123151.P5166714984886003685`, by `A123151.P5166714984886003685.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A123151.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A123335.P2835725696675414482

`(-1)^n*A001333(n)`
-/

namespace A123335.P2835725696675414482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001333 n

end

end A123335.P2835725696675414482

noncomputable section

/-- A123335: a(n) = -2*a(n-1) + a(n-2) for n>1, a(0)=1, a(1)=-1.

Offset 0, canonical program `A123335.P2835725696675414482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123335 (n : ℕ) : ℤ :=
  A123335.P2835725696675414482.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123348.P7131483526110074031

`3*A090017(n)`
-/

namespace A123348.P7131483526110074031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090017 n

end

end A123348.P7131483526110074031

noncomputable section

/-- A123348: Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

Offset 0, canonical program `A123348.P7131483526110074031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123348 (n : ℕ) : ℤ :=
  A123348.P7131483526110074031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123350.P6960914957523859593

`1+A117717(n+1)`
-/

namespace A123350.P6960914957523859593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A117717 (n + 1)

end

end A123350.P6960914957523859593

noncomputable section

/-- A123350: a(n) = (n^4 + 2n^3 + 5n^2 + 4)/4.

Offset 0, canonical program `A123350.P6960914957523859593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123350 (n : ℕ) : ℤ :=
  A123350.P6960914957523859593.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123350.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123358.P8414249925965946807

`5^n*A001519(n+1)`
-/

namespace A123358.P8414249925965946807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A001519 (n + 1)

end

end A123358.P8414249925965946807

noncomputable section

/-- A123358: Kekulé numbers for certain benzenoids (see the Cyvin-Gutman book for details).

Offset 0, canonical program `A123358.P8414249925965946807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123358 (n : ℕ) : ℤ :=
  A123358.P8414249925965946807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123480.P12114428298635189869

`4*A076139(n+1)`
-/

namespace A123480.P12114428298635189869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A076139 (n + 1)

end

end A123480.P12114428298635189869

noncomputable section

/-- A123480: Coefficients of the series giving the best rational approximations to sqrt(3).

Offset 1, canonical program `A123480.P12114428298635189869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123480 (n : ℕ) : ℤ :=
  A123480.P12114428298635189869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123753.P15676585840177218925

`A003314(n+1)+1`
-/

namespace A123753.P15676585840177218925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (n + 1) + 1

end

end A123753.P15676585840177218925

noncomputable section

/-- A123753: Partial sums of A070941.

Offset 0, canonical program `A123753.P15676585840177218925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123753 (n : ℕ) : ℤ :=
  A123753.P15676585840177218925.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123918.P10039824320491567180

`A000045(A000032(n))-A000032(A000045(n))`
-/

namespace A123918.P10039824320491567180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000032 n).toNat - A000032 (A000045 n).toNat

end

end A123918.P10039824320491567180

noncomputable section

/-- A123918: a(n) = F(L(n)) - L(F(n)) where F(n) = n-th Fibonacci number and L(n) = n-th Lucas number. Commutator [Fibonacci, Lucas] at n.

Offset 0, canonical program `A123918.P10039824320491567180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123918 (n : ℕ) : ℤ :=
  A123918.P10039824320491567180.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124052.P2153594134558953165

`A000203(A003418(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A124052.P2153594134558953165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003418 (n + 1)).toNat

end

end A124052.P2153594134558953165

noncomputable section

/-- A124052: a(n) = sigma(lcm(1,2,...,n)) = A000203(A003418(n)).

Offset 1, canonical program `A124052.P2153594134558953165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124052 (n : ℕ) : ℤ :=
  A124052.P2153594134558953165.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124062.P13614805138597769082

`A000930(n+3)-A000931(n+7)`
-/

namespace A124062.P13614805138597769082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 3) - A000931 (n + 7)

end

end A124062.P13614805138597769082

noncomputable section

/-- A124062: Number of ways to write n as an ordered sum of 1's, 2's and 3's such that no 2 precedes any 1.

Offset 0, canonical program `A124062.P13614805138597769082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124062 (n : ℕ) : ℤ :=
  A124062.P13614805138597769082.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124166.P6880331802080243181

`10*A105279(n)`
-/

namespace A124166.P6880331802080243181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A105279 n

end

end A124166.P6880331802080243181

noncomputable section

/-- A124166: a(n) = 100*(10^n - 1)/9.

Offset 0, canonical program `A124166.P6880331802080243181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124166 (n : ℕ) : ℤ :=
  A124166.P6880331802080243181.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124312.P1361553995460791148

`A001591(n+2)-A001591(n+1)`
-/

namespace A124312.P1361553995460791148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 2) - A001591 (n + 1)

end

end A124312.P1361553995460791148

noncomputable section

/-- A124312: Expansion of g.f. x^3*(1 - x)/(1 - x - x^2 - x^3 - x^4 - x^5).

Offset 1, canonical program `A124312.P1361553995460791148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124312 (n : ℕ) : ℤ :=
  A124312.P1361553995460791148.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124342.P5683137222073773849

`(-1)^(n+1)*A073358(n+1)`
-/

namespace A124342.P5683137222073773849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A073358 (n + 1)

end

end A124342.P5683137222073773849

noncomputable section

/-- A124342: Expansion of (1+x)/(1+2x-2x^3).

Offset 0, canonical program `A124342.P5683137222073773849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124342 (n : ℕ) : ℤ :=
  A124342.P5683137222073773849.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125107.P14562720571296376294

`A000108(n)-A011782(n)`
-/

namespace A125107.P14562720571296376294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A011782 n

end

end A125107.P14562720571296376294

noncomputable section

/-- A125107: Subtract compositions (A011782) from Catalan numbers (A000108).

Offset 0, canonical program `A125107.P14562720571296376294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125107 (n : ℕ) : ℤ :=
  A125107.P14562720571296376294.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125599.P15580670365980156821

`A125598(2*(n+1)-1)/(2*(n+1)+1)`
-/

namespace A125599.P15580670365980156821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125598 (2 * (n + 1) - 1) : ℚ) / (2 * (n + 1) + 1 : ℚ)

end

end A125599.P15580670365980156821

noncomputable section

/-- A125599: Quotient ((2n)^(2n-2)-1)/(2n+1)/(2n-1).

Offset 1, canonical program `A125599.P15580670365980156821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125599 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125599.P15580670365980156821.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125650.P9186956251778564931

`A106609(n)*A106609(n+3)`
-/

namespace A125650.P9186956251778564931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n * A106609 (n + 3)

end

end A125650.P9186956251778564931

noncomputable section

/-- A125650: Numerator of n(n+3)/(4(n+1)(n+2)) = sum(k=1..n, 1/(k(k+1)(k+2)) ).

Offset 0, canonical program `A125650.P9186956251778564931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125650 (n : ℕ) : ℤ :=
  A125650.P9186956251778564931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125905.P8484690575050045173

`(-1)^n*A001353(n+1)`
-/

namespace A125905.P8484690575050045173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001353 (n + 1)

end

end A125905.P8484690575050045173

noncomputable section

/-- A125905: a(0) = 1, a(1) = -4, a(n) = -4*a(n-1) - a(n-2) for n > 1.

Offset 0, canonical program `A125905.P8484690575050045173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125905 (n : ℕ) : ℤ :=
  A125905.P8484690575050045173.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126694.P14132965859486371822

`(49*a(n-1)-7*A000108(n-1))/6` with `a(0)=1`
-/

namespace A126694.P14132965859486371822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (49 * a (n - 1) - (7 * A000108 (n - 1) : ℚ)) / 6

end

end A126694.P14132965859486371822

noncomputable section

/-- A126694: Expansion of g.f.: 1/(1 - 7*x*c(x)), where c(x) is the g.f. for A000108.

Offset 0, canonical program `A126694.P14132965859486371822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126694 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126694.P14132965859486371822.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126804.P13276352623796629092

`2*A001814(n+1)`
-/

namespace A126804.P13276352623796629092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001814 (n + 1)

end

end A126804.P13276352623796629092

noncomputable section

/-- A126804: a(n) = (2n)! / (n-1)!.

Offset 1, canonical program `A126804.P13276352623796629092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126804 (n : ℕ) : ℤ :=
  A126804.P13276352623796629092.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126883.P5417842474268763739

`A006125(n+1)-1`
-/

namespace A126883.P5417842474268763739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - 1

end

end A126883.P5417842474268763739

noncomputable section

/-- A126883: a(n) = (2^0)*(2^1)*(2^2)*(2^3)...(2^n)-1 = 2^T(n) - 1 where T(n) = A000217(n) is the n-th triangular number.

Offset 0, canonical program `A126883.P5417842474268763739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126883 (n : ℕ) : ℤ :=
  A126883.P5417842474268763739.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126930.P10974584581349947886

`(-1)^n*A001405(n)`
-/

namespace A126930.P10974584581349947886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001405 n

end

end A126930.P10974584581349947886

noncomputable section

/-- A126930: Inverse binomial transform of A005043.

Offset 0, canonical program `A126930.P10974584581349947886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126930 (n : ℕ) : ℤ :=
  A126930.P10974584581349947886.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126934.P7330697824820049470

`(-1)^n*A001147(n)*A001813(n)`
-/

namespace A126934.P7330697824820049470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001147 n * A001813 n

end

end A126934.P7330697824820049470

noncomputable section

/-- A126934: Define an array by d(m, 0) = 1, d(m, 1) = m; d(m, k) = (m - k + 1) d(m+1, k-1) - (k-1) (m+1) d(m+2, k-2). Sequence gives d(0,2n).

Offset 0, canonical program `A126934.P7330697824820049470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126934 (n : ℕ) : ℤ :=
  A126934.P7330697824820049470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127111.P17464411461334883638

`A000142(n+1)-A006882(n)`
-/

namespace A127111.P17464411461334883638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A006882 n

end

end A127111.P17464411461334883638

noncomputable section

/-- A127111: a(n) = (n+1)! - (n)!!.

Offset 0, canonical program `A127111.P17464411461334883638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127111 (n : ℕ) : ℤ :=
  A127111.P17464411461334883638.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127216.P15922572375641362652

`2^(n+1)*A001648(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127216.P15922572375641362652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A001648 (n + 1)

end

end A127216.P15922572375641362652

noncomputable section

/-- A127216: a(n) = 2^n*tetranacci(n) or (2^n)*A001648(n).

Offset 1, canonical program `A127216.P15922572375641362652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127216 (n : ℕ) : ℤ :=
  A127216.P15922572375641362652.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127628.P631754407712890539

`(36*a(n-1)-6*A000108(n-1))/5` with `a(0)=1`
-/

namespace A127628.P631754407712890539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (36 * a (n - 1) - (6 * A000108 (n - 1) : ℚ)) / 5

end

end A127628.P631754407712890539

noncomputable section

/-- A127628: G.f. 1/(1-6*x*c(x)) where c(x) is the g.f. of A000108.

Offset 0, canonical program `A127628.P631754407712890539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127628 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127628.P631754407712890539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127721.P12872554968319410745

`A000196(A000330(n+1))`
-/

namespace A127721.P12872554968319410745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000330 (n + 1)).toNat

end

end A127721.P12872554968319410745

noncomputable section

/-- A127721: Floor of square root of sum of squares of n consecutive numbers.

Offset 1, canonical program `A127721.P12872554968319410745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127721 (n : ℕ) : ℤ :=
  A127721.P12872554968319410745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127722.P527297215727668033

`A000196(A000447(n+1))`
-/

namespace A127722.P527297215727668033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000447 (n + 1)).toNat

end

end A127722.P527297215727668033

noncomputable section

/-- A127722: Floor of square root of sum of squares of n consecutive odd numbers.

Offset 1, canonical program `A127722.P527297215727668033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127722 (n : ℕ) : ℤ :=
  A127722.P527297215727668033.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127739.P6291269565293973198

`A003057(n+2)*A002024(n+1)/2`
-/

namespace A127739.P6291269565293973198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) * A002024 (n + 1) : ℚ) / 2

end

end A127739.P6291269565293973198

noncomputable section

/-- A127739: Triangle read by rows, in which row n contains the triangular number T(n) = A000217(n) repeated n times; smallest triangular number greater than or equal to n.

Offset 1, canonical program `A127739.P6291269565293973198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127739.P6291269565293973198.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127860.P8409216546487249527

`A127858(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127860.P8409216546487249527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127858 (n + 1) ^ 2

end

end A127860.P8409216546487249527

noncomputable section

/-- A127860: a(n) = A127858(n)^2.

Offset 1, canonical program `A127860.P8409216546487249527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127860 (n : ℕ) : ℤ :=
  A127860.P8409216546487249527.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127861.P3981228862055435855

`A127859(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127861.P3981228862055435855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127859 (n + 1) ^ 2

end

end A127861.P3981228862055435855

noncomputable section

/-- A127861: a(n) = A127859(n)^2.

Offset 1, canonical program `A127861.P3981228862055435855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127861 (n : ℕ) : ℤ :=
  A127861.P3981228862055435855.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127944.P14372493809634427534

`A000217(n)-A005187(n)`
-/

namespace A127944.P14372493809634427534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A005187 n

end

end A127944.P14372493809634427534

noncomputable section

/-- A127944: Partial sums of A093049.

Offset 0, canonical program `A127944.P14372493809634427534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127944 (n : ℕ) : ℤ :=
  A127944.P14372493809634427534.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128012.P6644255252158757568

`3*A001399(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128012.P6644255252158757568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001399 n

end

end A128012.P6644255252158757568

noncomputable section

/-- A128012: a(n) = 3*A001399(n).

Offset 0, canonical program `A128012.P6644255252158757568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128012 (n : ℕ) : ℤ :=
  A128012.P6644255252158757568.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128018.P8491788308704242621

`2^n*A057079(n+2)`
-/

namespace A128018.P8491788308704242621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057079 (n + 2)

end

end A128018.P8491788308704242621

noncomputable section

/-- A128018: Expansion of (1-4*x)/(1-2*x+4*x^2).

Offset 0, canonical program `A128018.P8491788308704242621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128018 (n : ℕ) : ℤ :=
  A128018.P8491788308704242621.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128055.P2008874094036097807

`2^A128054(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128055.P2008874094036097807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A128054 n : ℤ)

end

end A128055.P2008874094036097807

noncomputable section

/-- A128055: a(n) = 2^A128054(n).

Offset 0, canonical program `A128055.P2008874094036097807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128055 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128055.P2008874094036097807.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128063.P15460615406075581206

`2^n*A099443(n+2)`
-/

namespace A128063.P15460615406075581206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A099443 (n + 2)

end

end A128063.P15460615406075581206

noncomputable section

/-- A128063: Hankel transform of A115962.

Offset 0, canonical program `A128063.P15460615406075581206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128063 (n : ℕ) : ℤ :=
  A128063.P15460615406075581206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128587.P7309852469290401665

`(-1)^(n+1)*(1-A118658(n))`
-/

namespace A128587.P7309852469290401665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (1 - A118658 n)

end

end A128587.P7309852469290401665

noncomputable section

/-- A128587: Row sums of A128586.

Offset 1, canonical program `A128587.P7309852469290401665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128587 (n : ℕ) : ℤ :=
  A128587.P7309852469290401665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128615.P11457295584601275430

`floor((n+3)/3)*A049347(n+2)`
-/

namespace A128615.P11457295584601275430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 3⌋ * A049347 (n + 2)

end

end A128615.P11457295584601275430

noncomputable section

/-- A128615: Expansion of x/(1 + x + x^2 - x^3 - x^4 - x^5).

Offset 0, canonical program `A128615.P11457295584601275430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128615 (n : ℕ) : ℤ :=
  A128615.P11457295584601275430.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128826.P6087672172713904502

`10^(2*(n+1)-1)-A061433(2*(n+1)-1)`
-/

namespace A128826.P6087672172713904502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) - (A061433 (2 * (n + 1) - 1) : ℚ)

end

end A128826.P6087672172713904502

noncomputable section

/-- A128826: a(n) = 10^(2n-1) minus largest square less than 10^(2n-1).

Offset 1, canonical program `A128826.P6087672172713904502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128826 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128826.P6087672172713904502.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128834.P16779687439637953687

`A010892(n+5)`
-/

namespace A128834.P16779687439637953687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 5)

end

end A128834.P16779687439637953687

noncomputable section

/-- A128834: Periodic sequence 0,1,1,0,-1,-1,...

Offset 0, canonical program `A128834.P16779687439637953687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128834 (n : ℕ) : ℤ :=
  A128834.P16779687439637953687.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128862.P7659074823418386284

`(3*A001570(n+1)+1)/4`
-/

namespace A128862.P7659074823418386284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001570 (n + 1) + 1 : ℚ) / 4

end

end A128862.P7659074823418386284

noncomputable section

/-- A128862: Numbers simultaneously triangular and centered triangular.

Offset 1, canonical program `A128862.P7659074823418386284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128862.P7659074823418386284.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128882.P10026494431697835336

`A006882(n)-1`
-/

namespace A128882.P10026494431697835336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n - 1

end

end A128882.P10026494431697835336

noncomputable section

/-- A128882: a(n) = n!! - 1.

Offset 0, canonical program `A128882.P10026494431697835336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128882 (n : ℕ) : ℤ :=
  A128882.P10026494431697835336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129076.P18074707200360144195

`A000203(A000203(A000203(A000203(n+1))))`
-/

namespace A129076.P18074707200360144195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A000203 (A000203 (n + 1)).toNat).toNat).toNat

end

end A129076.P18074707200360144195

noncomputable section

/-- A129076: a(n) = sigma(sigma(sigma(sigma(n)))), where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A129076.P18074707200360144195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129076 (n : ℕ) : ℤ :=
  A129076.P18074707200360144195.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129080.P3385067771831719985

`A095263(n+1)+2*(n+1)+1`
-/

namespace A129080.P3385067771831719985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1) + (2 * (n + 1) : ℤ) + 1

end

end A129080.P3385067771831719985

noncomputable section

/-- A129080: Expansion of g.f. x*(x^4 - 5*x^3 + 10*x^2 - 12*x + 4)/((1-x)^2*(1 - 3*x + 2*x^2 - x^3)).

Offset 1, canonical program `A129080.P3385067771831719985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129080 (n : ℕ) : ℤ :=
  A129080.P3385067771831719985.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129080.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129348.P8088459165295115484

`A003436(n+1)*n!*2^n`
-/

namespace A129348.P8088459165295115484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 (n + 1) * (Nat.factorial n : ℤ) * (2 ^ n : ℤ)

end

end A129348.P8088459165295115484

noncomputable section

/-- A129348: Number of (directed) Hamiltonian circuits in the cocktail party graph of order n.

Offset 1, canonical program `A129348.P8088459165295115484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129348 (n : ℕ) : ℤ :=
  A129348.P8088459165295115484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129361.P14000498497627899100

`A000045(n+3)-A103609(n+5)`
-/

namespace A129361.P14000498497627899100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - A103609 (n + 5)

end

end A129361.P14000498497627899100

noncomputable section

/-- A129361: a(n) = Sum_{k=floor((n+1)/2)..n} Fibonacci(k+1).

Offset 0, canonical program `A129361.P14000498497627899100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129361 (n : ℕ) : ℤ :=
  A129361.P14000498497627899100.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129380.P12503975665008941224

`a(n-1)+A129379(n+1)` with `a(0)=1`
-/

namespace A129380.P12503975665008941224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A129379 (n + 1)

end

end A129380.P12503975665008941224

noncomputable section

/-- A129380: Partial sums of A129379.

Offset 1, canonical program `A129380.P12503975665008941224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129380 (n : ℕ) : ℤ :=
  A129380.P12503975665008941224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129400.P6392400552746080250

`2^n*A001006(n)`
-/

namespace A129400.P6392400552746080250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001006 n

end

end A129400.P6392400552746080250

noncomputable section

/-- A129400: Number of walks of length n on one 60-degree wedge of the equilateral triangular lattice. The walk can go along the walls of the wedge, but cannot cross the walls.

Offset 0, canonical program `A129400.P6392400552746080250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129400 (n : ℕ) : ℤ :=
  A129400.P6392400552746080250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129728.P800066224648299689

`A005843(n)+A000045(n+1)`
-/

namespace A129728.P800066224648299689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A000045 (n + 1)

end

end A129728.P800066224648299689

noncomputable section

/-- A129728: a(n) = 2*(n-1) + Fibonacci(n).

Offset 1, canonical program `A129728.P800066224648299689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129728 (n : ℕ) : ℤ :=
  A129728.P800066224648299689.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129831.P13980928109898495750

`A006882(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A129831.P13980928109898495750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006882 (n + 1) - a (n - 1)

end

end A129831.P13980928109898495750

noncomputable section

/-- A129831: Alternating sum of double factorials: n!! - (n-1)!! + (n-2)!! - ... 1!!.

Offset 1, canonical program `A129831.P13980928109898495750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129831 (n : ℕ) : ℤ :=
  A129831.P13980928109898495750.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129889.P4892323476713999206

`a(n-2)+A124625(n)` with `a(0)=0, a(1)=0`
-/

namespace A129889.P4892323476713999206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + A124625 n

end

end A129889.P4892323476713999206

noncomputable section

/-- A129889: Write down n, then n*(n+1).

Offset 0, canonical program `A129889.P4892323476713999206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129889 (n : ℕ) : ℤ :=
  A129889.P4892323476713999206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129890.P10315040289470255892

`(2*n+1)*a(n-1)+A000165(n)` with `a(0)=1`
-/

namespace A129890.P10315040289470255892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) + A000165 n

end

end A129890.P10315040289470255892

noncomputable section

/-- A129890: a(n) = (2*n+2)!! - (2*n+1)!!.

Offset 0, canonical program `A129890.P10315040289470255892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129890 (n : ℕ) : ℤ :=
  A129890.P10315040289470255892.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129937.P10540123488156281583

`A001405(n+1)-A000217(n)`
-/

namespace A129937.P10540123488156281583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) - A000217 n

end

end A129937.P10540123488156281583

noncomputable section

/-- A129937: a(n) = binomial(n, floor(n/2)) - n*(n - 1)/2.

Offset 1, canonical program `A129937.P10540123488156281583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129937 (n : ℕ) : ℤ :=
  A129937.P10540123488156281583.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130251.P736255258434360353

`(n+1)*floor(log2(3*n+1))-1/2*(A001045(floor(log2(3*n+1))+2)-1)`
-/

namespace A130251.P736255258434360353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.log 2 (3 * n + 1) : ℚ) - (1 : ℚ) / 2 * (A001045 (Nat.log 2 (3 * n + 1) + 2) - 1 : ℚ)

end

end A130251.P736255258434360353

noncomputable section

/-- A130251: Partial sums of A130249.

Offset 0, canonical program `A130251.P736255258434360353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130251.P736255258434360353.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130253.P13667080394334210224

`A130249(n)+1`
-/

namespace A130253.P13667080394334210224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 n + 1

end

end A130253.P13667080394334210224

noncomputable section

/-- A130253: Number of Jacobsthal numbers (A001045) <=n.

Offset 0, canonical program `A130253.P13667080394334210224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130253 (n : ℕ) : ℤ :=
  A130253.P13667080394334210224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130261.P14879159584277744452

`(n+1)*A130259(n)-A001519(A130259(n)+1)+1`
-/

namespace A130261.P14879159584277744452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130259 n - A001519 (A130259 n + 1).toNat + 1

end

end A130261.P14879159584277744452

noncomputable section

/-- A130261: Partial sums of the 'lower' even Fibonacci Inverse A130259.

Offset 0, canonical program `A130261.P14879159584277744452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130261 (n : ℕ) : ℤ :=
  A130261.P14879159584277744452.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130380.P12199744557882978766

`ceil(A000108(n)/2)`
-/

namespace A130380.P12199744557882978766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000108 n : ℚ) / 2⌉

end

end A130380.P12199744557882978766

noncomputable section

/-- A130380: Catalan numbers halved and rounded to the next integer.

Offset 0, canonical program `A130380.P12199744557882978766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130380 (n : ℕ) : ℤ :=
  A130380.P12199744557882978766.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130578.P5111612429403274779

`A005252(n+2)-1`
-/

namespace A130578.P5111612429403274779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 2) - 1

end

end A130578.P5111612429403274779

noncomputable section

/-- A130578: Number of different possible rows (or columns) in an n X n crossword puzzle.

Offset 1, canonical program `A130578.P5111612429403274779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130578 (n : ℕ) : ℤ :=
  A130578.P5111612429403274779.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130686.P10616595932014876428

`abs(A010879(A000217(n+1))-A010879(A000217(n)))`
-/

namespace A130686.P10616595932014876428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010879 (A000217 (n + 1)).toNat - A010879 (A000217 n).toNat|

end

end A130686.P10616595932014876428

noncomputable section

/-- A130686: Absolute difference of final digits of two consecutive triangular numbers.

Offset 1, canonical program `A130686.P10616595932014876428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130686 (n : ℕ) : ℤ :=
  A130686.P10616595932014876428.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130793.P14981452560275151591

`3+2*A049347(n+1)`
-/

namespace A130793.P14981452560275151591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + 2 * A049347 (n + 1)

end

end A130793.P14981452560275151591

noncomputable section

/-- A130793: Periodic sequence with period 3: 1, 3, 5.

Offset 0, canonical program `A130793.P14981452560275151591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130793 (n : ℕ) : ℤ :=
  A130793.P14981452560275151591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130813.P4891616102812374704

`128*A000580(n+7)`
-/

namespace A130813.P4891616102812374704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  128 * A000580 (n + 7)

end

end A130813.P4891616102812374704

noncomputable section

/-- A130813: If X_1,...,X_n is a partition of a 2n-set X into 2-blocks then a(n) is equal to the number of 7-subsets of X containing none of X_i, (i=1,...n).

Offset 7, canonical program `A130813.P4891616102812374704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130813 (n : ℕ) : ℤ :=
  A130813.P4891616102812374704.a (n - 7)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131242.P8931364218291701596

`(n-A010879(n))*(n+A010879(n)-8)/20`
-/

namespace A131242.P8931364218291701596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A010879 n : ℚ) * (((n : ℤ) + A010879 n - 8 : ℚ) / 20)

end

end A131242.P8931364218291701596

noncomputable section

/-- A131242: Partial sums of A059995: a(n) = Sum_{k=0..n} floor(k/10).

Offset 0, canonical program `A131242.P8931364218291701596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131242 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131242.P8931364218291701596.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131283.P3268464960979322100

`2^(n+1)-A120118(n+1)`
-/

namespace A131283.P3268464960979322100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A120118 (n + 1)

end

end A131283.P3268464960979322100

noncomputable section

/-- A131283: a(n) is the number of binary strings of length n such that there exist 3 or more ones in a subsequence of length 5 or less.

Offset 1, canonical program `A131283.P3268464960979322100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131283 (n : ℕ) : ℤ :=
  A131283.P3268464960979322100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131360.P9670347099784418459

`floor((n-1)/2)*A021913(n)`
-/

namespace A131360.P9670347099784418459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋ * A021913 n

end

end A131360.P9670347099784418459

noncomputable section

/-- A131360: a(4n) = a(4n+1) = 0, a(4n+2) = 2n, a(4n+3) = 2n+1.

Offset 0, canonical program `A131360.P9670347099784418459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131360 (n : ℕ) : ℤ :=
  A131360.P9670347099784418459.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131520.P18113647192679955461

`2*A006127(n)`
-/

namespace A131520.P18113647192679955461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006127 n

end

end A131520.P18113647192679955461

noncomputable section

/-- A131520: Number of partitions of the graph G_n (defined below) into "strokes".

Offset 1, canonical program `A131520.P18113647192679955461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131520 (n : ℕ) : ℤ :=
  A131520.P18113647192679955461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131556.P3122007109925631263

`(-1)^n*A131534(n)`
-/

namespace A131556.P3122007109925631263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131534 n

end

end A131556.P3122007109925631263

noncomputable section

/-- A131556: Period 6: repeat [1, -2, 1, -1, 2, -1].

Offset 0, canonical program `A131556.P3122007109925631263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131556 (n : ℕ) : ℤ :=
  A131556.P3122007109925631263.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131562.P15641282564746912010

`(-1)^n*A130707(n)`
-/

namespace A131562.P15641282564746912010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A130707 n

end

end A131562.P15641282564746912010

noncomputable section

/-- A131562: a(n)= -3a(n-1) -3a(n-2)-2a(n-3), a(0)=1, a(1)=-2, a(2)=2.

Offset 0, canonical program `A131562.P15641282564746912010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131562 (n : ℕ) : ℤ :=
  A131562.P15641282564746912010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131575.P55044588801403838

`A131572(n+1)-A131572(n)`
-/

namespace A131575.P55044588801403838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 1) - A131572 n

end

end A131575.P55044588801403838

noncomputable section

/-- A131575: First differences of A131572.

Offset 0, canonical program `A131575.P55044588801403838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131575 (n : ℕ) : ℤ :=
  A131575.P55044588801403838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131607.P9347802856886057719

`floor(A001333(n+4)/10)`
-/

namespace A131607.P9347802856886057719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001333 (n + 4) : ℚ) / 10⌋

end

end A131607.P9347802856886057719

noncomputable section

/-- A131607: Pell companion numbers A001333 without last digit.

Offset 4, canonical program `A131607.P9347802856886057719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131607 (n : ℕ) : ℤ :=
  A131607.P9347802856886057719.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131727.P2999918149424605756

`floor(A000129(n+4)/10)`
-/

namespace A131727.P2999918149424605756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000129 (n + 4) : ℚ) / 10⌋

end

end A131727.P2999918149424605756

noncomputable section

/-- A131727: Pell numbers A000129 without last digit.

Offset 4, canonical program `A131727.P2999918149424605756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131727 (n : ℕ) : ℤ :=
  A131727.P2999918149424605756.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131913.P328979393623836381

`A010049(n)+A001629(n+2)`
-/

namespace A131913.P328979393623836381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + A001629 (n + 2)

end

end A131913.P328979393623836381

noncomputable section

/-- A131913: Product of the square matrix in A065941 and the column vector (1, 2, 3, ...)'.

Offset 0, canonical program `A131913.P328979393623836381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131913 (n : ℕ) : ℤ :=
  A131913.P328979393623836381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132101.P4109760056791164260

`(A001147(n)+A047974(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132101.P4109760056791164260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 n + A047974 n : ℚ) / 2

end

end A132101.P4109760056791164260

noncomputable section

/-- A132101: a(n) = (A001147(n) + A047974(n))/2.

Offset 0, canonical program `A132101.P4109760056791164260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132101 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132101.P4109760056791164260.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132124.P7402126348460062974

`A002412(n)+A006331(n)`
-/

namespace A132124.P7402126348460062974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n + A006331 n

end

end A132124.P7402126348460062974

noncomputable section

/-- A132124: a(n) = n*(n+1)*(8*n + 1)/6.

Offset 0, canonical program `A132124.P7402126348460062974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132124 (n : ℕ) : ℤ :=
  A132124.P7402126348460062974.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132199.P10057998437925682092

`A106108(n+2)-A106108(n+1)`
-/

namespace A132199.P10057998437925682092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106108 (n + 2) - A106108 (n + 1)

end

end A132199.P10057998437925682092

noncomputable section

/-- A132199: Rowland's prime-generating sequence: first differences of A106108.

Offset 1, canonical program `A132199.P10057998437925682092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132199 (n : ℕ) : ℤ :=
  A132199.P10057998437925682092.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132366.P7609112223921373864

`A006007(n)+A006007(n+1)`
-/

namespace A132366.P7609112223921373864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + A006007 (n + 1)

end

end A132366.P7609112223921373864

noncomputable section

/-- A132366: Partial sum of centered tetrahedral numbers A005894.

Offset 0, canonical program `A132366.P7609112223921373864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132366 (n : ℕ) : ℤ :=
  A132366.P7609112223921373864.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132371.P2907420895890266735

`A000142(n+1)-A007489(n)`
-/

namespace A132371.P2907420895890266735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A007489 n

end

end A132371.P2907420895890266735

noncomputable section

/-- A132371: a(n) = n! - Sum_{j=1..n-1} j!.

Offset 1, canonical program `A132371.P2907420895890266735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132371 (n : ℕ) : ℤ :=
  A132371.P2907420895890266735.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132419.P11785938489810226282

`A061347(n+1)*(-1)^floor(n/3)`
-/

namespace A132419.P11785938489810226282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061347 (n + 1) : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A132419.P11785938489810226282

noncomputable section

/-- A132419: Period 6: repeat [1, 1, -2, -1, -1, 2].

Offset 0, canonical program `A132419.P11785938489810226282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132419.P11785938489810226282.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132431.P14213066868819128410

`A060226(n+1)-A062119(n+1)+A002378(n)`
-/

namespace A132431.P14213066868819128410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060226 (n + 1) - A062119 (n + 1) + A002378 n

end

end A132431.P14213066868819128410

noncomputable section

/-- A132431: For n>0, let B_n be the subsemigroup of the full transformation monoid on the n-set [n] generated by the following functions: Let x be a certain element in [n]. Now the generators of B are those functions which map either x to any distinct element y in [n] leaving all the other elements fixed, or y to x leaving all the other elements fixed. Then a(n) = number of elements in B_n.

Offset 1, canonical program `A132431.P14213066868819128410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132431 (n : ℕ) : ℤ :=
  A132431.P14213066868819128410.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132788.P2699789363673482983

`2*A000108(n+1)-(n+1)`
-/

namespace A132788.P2699789363673482983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 (n + 1) - (n + 1 : ℤ)

end

end A132788.P2699789363673482983

noncomputable section

/-- A132788: a(n) = 2*binomial(2*n,n)/(n+1) - n.

Offset 1, canonical program `A132788.P2699789363673482983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132788 (n : ℕ) : ℤ :=
  A132788.P2699789363673482983.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132798.P12311710572282220137

`A080425(n)*A130151(n)`
-/

namespace A132798.P12311710572282220137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n * A130151 n

end

end A132798.P12311710572282220137

noncomputable section

/-- A132798: Period 6: repeat [0, 2, 1, 0, -2, -1].

Offset 0, canonical program `A132798.P12311710572282220137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132798 (n : ℕ) : ℤ :=
  A132798.P12311710572282220137.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132804.P16328243439683463460

`A078008(3*n+1)`
-/

namespace A132804.P16328243439683463460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (3 * n + 1)

end

end A132804.P16328243439683463460

noncomputable section

/-- A132804: A trisection of A024495.

Offset 0, canonical program `A132804.P16328243439683463460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132804 (n : ℕ) : ℤ :=
  A132804.P16328243439683463460.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132805.P5666018870212362628

`3*A015565(n)`
-/

namespace A132805.P5666018870212362628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A015565 n

end

end A132805.P5666018870212362628

noncomputable section

/-- A132805: A trisection of A024495.

Offset 0, canonical program `A132805.P5666018870212362628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132805 (n : ℕ) : ℤ :=
  A132805.P5666018870212362628.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132807.P12743396962450466870

`A000108(n)+A000079(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132807.P12743396962450466870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A000079 n - 1

end

end A132807.P12743396962450466870

noncomputable section

/-- A132807: a(n) = A000108(n) + A000079(n) - 1.

Offset 0, canonical program `A132807.P12743396962450466870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132807 (n : ℕ) : ℤ :=
  A132807.P12743396962450466870.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132843.P8250867450047545094

`A005704((5*3^n+(-1)^n-6)/8)`
-/

namespace A132843.P8250867450047545094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (SequenceMachineLib.roundAway (((5 * 3 ^ n : ℤ) + (-1) ^ n - 6 : ℚ) / 8)).toNat

end

end A132843.P8250867450047545094

noncomputable section

/-- A132843: a(n) = A005704( A037480(n) ) for n>0 with a(0)=1, where A005704 = number of partitions of 3n into powers of 3 and A037480(n) = n-th number having alternating base-3 digits 1, 2 (starting with '1').

Offset 0, canonical program `A132843.P8250867450047545094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132843 (n : ℕ) : ℤ :=
  A132843.P8250867450047545094.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132880.P3878101244072083350

`A000123((2^(n+1)+(-1)^n-3)/6)`
-/

namespace A132880.P3878101244072083350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (SequenceMachineLib.roundAway (((2 ^ (n + 1) : ℤ) + (-1) ^ n - 3 : ℚ) / 6)).toNat

end

end A132880.P3878101244072083350

noncomputable section

/-- A132880: a(n) = A000123( A000975(n-1) ) for n>=1 with a(0)=1, where A000123(n) = number of partitions of 2n into powers of 2 and A000975(n) = n-th number without consecutive equal binary digits.

Offset 0, canonical program `A132880.P3878101244072083350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132880 (n : ℕ) : ℤ :=
  A132880.P3878101244072083350.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132894.P13878505637686974869

`n*A005773(n)`
-/

namespace A132894.P13878505637686974869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005773 n

end

end A132894.P13878505637686974869

noncomputable section

/-- A132894: Number of (1,0) steps in all paths of length n with steps U=(1,1), D=(1,-1) and H=(1,0), starting at (0,0), staying weakly above the x-axis (i.e., in all length-n left factors of Motzkin paths).

Offset 0, canonical program `A132894.P13878505637686974869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132894 (n : ℕ) : ℤ :=
  A132894.P13878505637686974869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132900.P17952565946066696786

`3^n*A001006(n)`
-/

namespace A132900.P17952565946066696786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001006 n

end

end A132900.P17952565946066696786

noncomputable section

/-- A132900: Colored Motzkin paths where each of the steps has three possible colors.

Offset 0, canonical program `A132900.P17952565946066696786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132900 (n : ℕ) : ℤ :=
  A132900.P17952565946066696786.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133038.P77083935429570710

`A000931(n)^3`
-/

namespace A133038.P77083935429570710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n ^ 3

end

end A133038.P77083935429570710

noncomputable section

/-- A133038: Cubes of A000931.

Offset 0, canonical program `A133038.P77083935429570710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133038 (n : ℕ) : ℤ :=
  A133038.P77083935429570710.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133053.P7872907574992418741

`A001006(n)²`
-/

namespace A133053.P7872907574992418741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n ^ 2

end

end A133053.P7872907574992418741

noncomputable section

/-- A133053: Squares of Motzkin numbers.

Offset 0, canonical program `A133053.P7872907574992418741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133053 (n : ℕ) : ℤ :=
  A133053.P7872907574992418741.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133054.P4983043306368321640

`A001006(n)^3`
-/

namespace A133054.P4983043306368321640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n ^ 3

end

end A133054.P4983043306368321640

noncomputable section

/-- A133054: Cubes of Motzkin numbers.

Offset 0, canonical program `A133054.P4983043306368321640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133054 (n : ℕ) : ℤ :=
  A133054.P4983043306368321640.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133196.P16440954679324344778

`A003056(n)+3`
-/

namespace A133196.P16440954679324344778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 3

end

end A133196.P16440954679324344778

noncomputable section

/-- A133196: n+2 repeated n times.

Offset 1, canonical program `A133196.P16440954679324344778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133196 (n : ℕ) : ℤ :=
  A133196.P16440954679324344778.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133280.P1210636766669220191

`A005408(n)-A002024(n+1)`
-/

namespace A133280.P1210636766669220191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A002024 (n + 1)

end

end A133280.P1210636766669220191

noncomputable section

/-- A133280: Triangle formed by: 1 even, 2 odd, 3 even, 4 odd, ... starting with zero.

Offset 0, canonical program `A133280.P1210636766669220191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133280 (n : ℕ) : ℤ :=
  A133280.P1210636766669220191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133280.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133480.P16877783716579154334

`(-1)^n*A008544(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133480.P16877783716579154334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008544 n

end

end A133480.P16877783716579154334

noncomputable section

/-- A133480: Left 3-step factorial (n,-3)!: a(n) = (-1)^n * A008544(n).

Offset 0, canonical program `A133480.P16877783716579154334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133480 (n : ℕ) : ℤ :=
  A133480.P16877783716579154334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133511.P14482885469916783984

`3*A113405(n)-A113405(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133511.P14482885469916783984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A113405 n - A113405 (n + 1)

end

end A133511.P14482885469916783984

noncomputable section

/-- A133511: a(n) = 3 A113405(n)- A113405(n+1).

Offset 0, canonical program `A133511.P14482885469916783984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133511 (n : ℕ) : ℤ :=
  A133511.P14482885469916783984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133798.P3640702929185874138

`A002467(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133798.P3640702929185874138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 1) - 1

end

end A133798.P3640702929185874138

noncomputable section

/-- A133798: a(n) = A002467(n) - 1.

Offset 1, canonical program `A133798.P3640702929185874138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133798 (n : ℕ) : ℤ :=
  A133798.P3640702929185874138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133987.P12300878041056720244

`A005704((3^n+(-1)^n-2)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133987.P12300878041056720244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (SequenceMachineLib.roundAway (((3 ^ n : ℤ) + (-1) ^ n - 2 : ℚ) / 4)).toNat

end

end A133987.P12300878041056720244

noncomputable section

/-- A133987: a(n) = A005704( (3^n + (-1)^n - 2)/4 ), where A005704(n) = number of partitions of 3n into powers of 3.

Offset 0, canonical program `A133987.P12300878041056720244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133987 (n : ℕ) : ℤ :=
  A133987.P12300878041056720244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134006.P18120072628716423938

`A074507(n)+A000420(n)`
-/

namespace A134006.P18120072628716423938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074507 n + A000420 n

end

end A134006.P18120072628716423938

noncomputable section

/-- A134006: a(n) = 1^n + 3^n + 5^n + 7^n.

Offset 0, canonical program `A134006.P18120072628716423938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134006 (n : ℕ) : ℤ :=
  A134006.P18120072628716423938.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134041.P7493600617532933187

`A000123(A000045(n))`
-/

namespace A134041.P7493600617532933187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A000045 n).toNat

end

end A134041.P7493600617532933187

noncomputable section

/-- A134041: a(n) = number of binary partitions of the Fibonacci number F(n).

Offset 0, canonical program `A134041.P7493600617532933187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134041 (n : ℕ) : ℤ :=
  A134041.P7493600617532933187.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134183.P8466557060232572687

`A053763(n)*A001787(n)`
-/

namespace A134183.P8466557060232572687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053763 n * A001787 n

end

end A134183.P8466557060232572687

noncomputable section

/-- A134183: A Hankel transform of a Catalan product.

Offset 0, canonical program `A134183.P8466557060232572687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134183 (n : ℕ) : ℤ :=
  A134183.P8466557060232572687.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134481.P3195373075799668587

`5*A000292(n)`
-/

namespace A134481.P3195373075799668587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000292 n

end

end A134481.P3195373075799668587

noncomputable section

/-- A134481: Row sums of triangle A134480.

Offset 0, canonical program `A134481.P3195373075799668587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134481 (n : ℕ) : ℤ :=
  A134481.P3195373075799668587.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134489.P3074940285726636598

`A000045(A016873(n))`
-/

namespace A134489.P3074940285726636598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016873 n).toNat

end

end A134489.P3074940285726636598

noncomputable section

/-- A134489: a(n) = Fibonacci(5*n + 2).

Offset 0, canonical program `A134489.P3074940285726636598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134489 (n : ℕ) : ℤ :=
  A134489.P3074940285726636598.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134491.P9559343845643119561

`A000045(A016897(n))`
-/

namespace A134491.P9559343845643119561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016897 n).toNat

end

end A134491.P9559343845643119561

noncomputable section

/-- A134491: a(n) = Fibonacci(5*n+4).

Offset 0, canonical program `A134491.P9559343845643119561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134491 (n : ℕ) : ℤ :=
  A134491.P9559343845643119561.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134494.P14791650121589639962

`A000045(A016933(n))`
-/

namespace A134494.P14791650121589639962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016933 n).toNat

end

end A134494.P14791650121589639962

noncomputable section

/-- A134494: a(n) = Fibonacci(6n+2).

Offset 0, canonical program `A134494.P14791650121589639962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134494 (n : ℕ) : ℤ :=
  A134494.P14791650121589639962.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134495.P18293174624368307397

`2*A007805(n)`
-/

namespace A134495.P18293174624368307397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007805 n

end

end A134495.P18293174624368307397

noncomputable section

/-- A134495: a(n) = Fibonacci(6n + 3).

Offset 0, canonical program `A134495.P18293174624368307397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134495 (n : ℕ) : ℤ :=
  A134495.P18293174624368307397.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134497.P641800258384470957

`A000045(A016969(n))`
-/

namespace A134497.P641800258384470957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016969 n).toNat

end

end A134497.P641800258384470957

noncomputable section

/-- A134497: a(n) = Fibonacci(6n+5).

Offset 0, canonical program `A134497.P641800258384470957`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134497 (n : ℕ) : ℤ :=
  A134497.P641800258384470957.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134498.P7666158850166276348

`13*A049667(n)`
-/

namespace A134498.P7666158850166276348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A049667 n

end

end A134498.P7666158850166276348

noncomputable section

/-- A134498: a(n) = Fibonacci(7n).

Offset 0, canonical program `A134498.P7666158850166276348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134498 (n : ℕ) : ℤ :=
  A134498.P7666158850166276348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134500.P6287195679193612502

`A000045(A017005(n))`
-/

namespace A134500.P6287195679193612502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A017005 n).toNat

end

end A134500.P6287195679193612502

noncomputable section

/-- A134500: a(n) = Fibonacci(7n + 2).

Offset 0, canonical program `A134500.P6287195679193612502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134500 (n : ℕ) : ℤ :=
  A134500.P6287195679193612502.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134501.P18236831011765669420

`A000045(A017017(n))`
-/

namespace A134501.P18236831011765669420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A017017 n).toNat

end

end A134501.P18236831011765669420

noncomputable section

/-- A134501: a(n) = Fibonacci(7n + 3).

Offset 0, canonical program `A134501.P18236831011765669420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134501 (n : ℕ) : ℤ :=
  A134501.P18236831011765669420.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134502.P16923367467815006900

`A000045(A017029(n))`
-/

namespace A134502.P16923367467815006900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A017029 n).toNat

end

end A134502.P16923367467815006900

noncomputable section

/-- A134502: a(n) = Fibonacci(7n + 4).

Offset 0, canonical program `A134502.P16923367467815006900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134502 (n : ℕ) : ℤ :=
  A134502.P16923367467815006900.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134503.P10762999087738266337

`5*A049667(n+1)-A049667(n)`
-/

namespace A134503.P10762999087738266337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049667 (n + 1) - A049667 n

end

end A134503.P10762999087738266337

noncomputable section

/-- A134503: a(n) = Fibonacci(7n + 5).

Offset 0, canonical program `A134503.P10762999087738266337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134503 (n : ℕ) : ℤ :=
  A134503.P10762999087738266337.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134515.P387095092634577795

`(n+2)*(n+1)/2*A000757(n)`
-/

namespace A134515.P387095092634577795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / 2 * (A000757 n : ℚ)

end

end A134515.P387095092634577795

noncomputable section

/-- A134515: Third column (k=2) of triangle A134832 (circular succession numbers).

Offset 0, canonical program `A134515.P387095092634577795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134515.P387095092634577795.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134763.P11114117980784406333

`3/2*(1+(-1)^n)*A001405(n)-2*(-1)^n`
-/

namespace A134763.P11114117980784406333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * ((1 + (-1) ^ n) * A001405 n : ℚ) - (2 * (-1) ^ n : ℚ)

end

end A134763.P11114117980784406333

noncomputable section

/-- A134763: a(n) = (1/2)*( (1+(-1)^n)*A134762(n/2) + 2*(1-(-1)^n) ).

Offset 0, canonical program `A134763.P11114117980784406333`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134763.P11114117980784406333.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134960.P9973488464711806881

`540*A135639(n)`
-/

namespace A134960.P9973488464711806881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  540 * A135639 n

end

end A134960.P9973488464711806881

noncomputable section

/-- A134960: a(n) = n*453060.

Offset 0, canonical program `A134960.P9973488464711806881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134960 (n : ℕ) : ℤ :=
  A134960.P9973488464711806881.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135033.P10123583613989861320

`2*A010874(n+1)`
-/

namespace A135033.P10123583613989861320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010874 (n + 1)

end

end A135033.P10123583613989861320

noncomputable section

/-- A135033: Period 5: repeat [2, 4, 6, 8, 0].

Offset 0, canonical program `A135033.P10123583613989861320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135033 (n : ℕ) : ℤ :=
  A135033.P10123583613989861320.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135259.P8295290231040197

`3*A131666(n)-A131666(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135259.P8295290231040197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131666 n - A131666 (n + 1)

end

end A135259.P8295290231040197

noncomputable section

/-- A135259: a(n) = 3*A131666(n) - A131666(n+1).

Offset 0, canonical program `A135259.P8295290231040197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135259 (n : ℕ) : ℤ :=
  A135259.P8295290231040197.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135401.P14093664586731084065

`A000898(floor(n/2))`
-/

namespace A135401.P14093664586731084065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000898 ⌊(n : ℚ) / 2⌋.toNat

end

end A135401.P14093664586731084065

noncomputable section

/-- A135401: a(n) = number of permutations (p(1),p(2),p(3),...,p(n)) of (1,2,3,...n) each of which is its own inverse and is such that p(k) = n + 1 - p(n+1-k) for all k in the range 1 <= k <= n.

Offset 0, canonical program `A135401.P14093664586731084065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135401 (n : ℕ) : ℤ :=
  A135401.P14093664586731084065.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135416.P6777012113120259479

`A036987(n+1)*(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135416.P6777012113120259479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036987 (n + 1) : ℚ) * ((n + 2 : ℚ) / 2)

end

end A135416.P6777012113120259479

noncomputable section

/-- A135416: a(n) = A036987(n)*(n+1)/2.

Offset 1, canonical program `A135416.P6777012113120259479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135416 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135416.P6777012113120259479.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135503.P12126158469696378449

`A002411(n)-A000217(n)`
-/

namespace A135503.P12126158469696378449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - A000217 n

end

end A135503.P12126158469696378449

noncomputable section

/-- A135503: a(n) = n*(n^2 - 1)/2.

Offset 0, canonical program `A135503.P12126158469696378449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135503 (n : ℕ) : ℤ :=
  A135503.P12126158469696378449.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135509.P7872450546571693998

`A006003(n)²`
-/

namespace A135509.P7872450546571693998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n ^ 2

end

end A135509.P7872450546571693998

noncomputable section

/-- A135509: Nonnegative integers c such that there are nonnegative integers a and b that satisfy a^(1/2) + b^(1/2) = c^(1/2) and a^2 + b = c.

Offset 0, canonical program `A135509.P7872450546571693998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135509 (n : ℕ) : ℤ :=
  A135509.P7872450546571693998.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135556.P14501241796162923884

`A001651(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135556.P14501241796162923884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) ^ 2

end

end A135556.P14501241796162923884

noncomputable section

/-- A135556: Squares of numbers not divisible by 3: a(n) = A001651(n)^2.

Offset 1, canonical program `A135556.P14501241796162923884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135556 (n : ℕ) : ℤ :=
  A135556.P14501241796162923884.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135575.P6885642071124699221

`A135574(n+1)-2*A135574(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135575.P6885642071124699221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 (n + 1) - 2 * A135574 n

end

end A135575.P6885642071124699221

noncomputable section

/-- A135575: a(n) = A135574(n+1) - 2*A135574(n).

Offset 0, canonical program `A135575.P6885642071124699221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135575 (n : ℕ) : ℤ :=
  A135575.P6885642071124699221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135711.P5117175424597361346

`2*A135708(n+1)-6*(n+1)`
-/

namespace A135711.P5117175424597361346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135708 (n + 1) - (6 * (n + 1) : ℤ)

end

end A135711.P5117175424597361346

noncomputable section

/-- A135711: Minimal perimeter of a polyhex with n cells.

Offset 1, canonical program `A135711.P5117175424597361346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135711 (n : ℕ) : ℤ :=
  A135711.P5117175424597361346.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135758.P16278049171603218048

`A000108(n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135758.P16278049171603218048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A135758.P16278049171603218048

noncomputable section

/-- A135758: Catalan numbers at triangular positions: a(n) = A000108(n(n+1)/2).

Offset 0, canonical program `A135758.P16278049171603218048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135758 (n : ℕ) : ℤ :=
  A135758.P16278049171603218048.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135759.P17469886222955656611

`A000108(2^(n+1)-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135759.P17469886222955656611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 ^ (n + 1) - 2)

end

end A135759.P17469886222955656611

noncomputable section

/-- A135759: Least Catalan number divisible by 2^n: a(n) = A000108(2^(n+1)-2).

Offset 0, canonical program `A135759.P17469886222955656611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135759 (n : ℕ) : ℤ :=
  A135759.P17469886222955656611.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135799.P17184054697667347209

`(n+1)*A000757(n)`
-/

namespace A135799.P17184054697667347209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000757 n

end

end A135799.P17184054697667347209

noncomputable section

/-- A135799: Second column (k=1) of triangle A134832 (circular succession numbers).

Offset 0, canonical program `A135799.P17184054697667347209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135799 (n : ℕ) : ℤ :=
  A135799.P17184054697667347209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136128.P4496303722994767783

`A003149(n+1)-(n+1)!`
-/

namespace A136128.P4496303722994767783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A136128.P4496303722994767783

noncomputable section

/-- A136128: Number of components in all permutations of [1,2,...,n].

Offset 1, canonical program `A136128.P4496303722994767783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136128 (n : ℕ) : ℤ :=
  A136128.P4496303722994767783.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136308.P109043430102558311

`A000042(A000079(n))`
-/

namespace A136308.P109043430102558311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A000079 n).toNat

end

end A136308.P109043430102558311

noncomputable section

/-- A136308: a(n) = (10^2^n - 1)/9.

Offset 0, canonical program `A136308.P109043430102558311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136308 (n : ℕ) : ℤ :=
  A136308.P109043430102558311.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136417.P14890248830846296454

`1+A017910(n)`
-/

namespace A136417.P14890248830846296454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A017910 n

end

end A136417.P14890248830846296454

noncomputable section

/-- A136417: Number of squares <= 2^n.

Offset 0, canonical program `A136417.P14890248830846296454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136417 (n : ℕ) : ℤ :=
  A136417.P14890248830846296454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136495.P596664169401550958

`A005374(A005374(n))+n+1`
-/

namespace A136495.P596664169401550958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A005374 n).toNat + (n + 1 : ℤ)

end

end A136495.P596664169401550958

noncomputable section

/-- A136495: Solution of the complementary equation b(n)=a(a(n))+n.

Offset 1, canonical program `A136495.P596664169401550958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136495 (n : ℕ) : ℤ :=
  A136495.P596664169401550958.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136591.P93203430416818655

`n!*A061347(n+1)`
-/

namespace A136591.P93203430416818655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A061347 (n + 1)

end

end A136591.P93203430416818655

noncomputable section

/-- A136591: Column 1 of triangle A136590.

Offset 1, canonical program `A136591.P93203430416818655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136591 (n : ℕ) : ℤ :=
  A136591.P93203430416818655.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137213.P6087140348945722974

`3^n-A000129(n+1)`
-/

namespace A137213.P6087140348945722974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A000129 (n + 1)

end

end A137213.P6087140348945722974

noncomputable section

/-- A137213: First differences of A137212.

Offset 0, canonical program `A137213.P6087140348945722974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137213 (n : ℕ) : ℤ :=
  A137213.P6087140348945722974.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137223.P2905100958406323800

`A135574(3*n)+A135574(3*n+1)+A135574(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137223.P2905100958406323800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 (3 * n) + A135574 (3 * n + 1) + A135574 (3 * n + 2)

end

end A137223.P2905100958406323800

noncomputable section

/-- A137223: a(n) = A135574(3*n) + A135574(3*n+1) + A135574(3*n+2).

Offset 0, canonical program `A137223.P2905100958406323800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137223 (n : ℕ) : ℤ :=
  A137223.P2905100958406323800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137228.P18017378543647975834

`(3*(n+1)+A067628(n+1))/2`
-/

namespace A137228.P18017378543647975834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) + A067628 (n + 1) : ℚ) / 2

end

end A137228.P18017378543647975834

noncomputable section

/-- A137228: Minimal total number of edges in a polyiamond consisting of n triangular cells.

Offset 1, canonical program `A137228.P18017378543647975834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137228.P18017378543647975834.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137232.P11818209852443531926

`((-3)^n+A135532(n))/14`
-/

namespace A137232.P11818209852443531926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-3) ^ n + A135532 n : ℚ) / 14

end

end A137232.P11818209852443531926

noncomputable section

/-- A137232: a(n) = -a(n-1) + 7*a(n-2) + 3*a(n-3) with a(0) = a(1) = 0, a(2) = 1.

Offset 0, canonical program `A137232.P11818209852443531926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137232 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137232.P11818209852443531926.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137429.P665720432497095065

`(-1)^n*A137444(n)`
-/

namespace A137429.P665720432497095065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A137444 n

end

end A137429.P665720432497095065

noncomputable section

/-- A137429: a(n) = -2*a(n-1) - 2*a(n-2), with a(0)=1 and a(1)=-4.

Offset 0, canonical program `A137429.P665720432497095065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137429 (n : ℕ) : ℤ :=
  A137429.P665720432497095065.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137495.P3155090716779164920

`2*A005314(n+1)-A005314(n)`
-/

namespace A137495.P3155090716779164920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005314 (n + 1) - A005314 n

end

end A137495.P3155090716779164920

noncomputable section

/-- A137495: a(n) = A098601(2n) + A098601(2n+1).

Offset 0, canonical program `A137495.P3155090716779164920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137495 (n : ℕ) : ℤ :=
  A137495.P3155090716779164920.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137500.P10173415657923203167

`3*a(n-1)+A009545(n-1)` with `a(0)=0`
-/

namespace A137500.P10173415657923203167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + A009545 (n - 1)

end

end A137500.P10173415657923203167

noncomputable section

/-- A137500: Binomial transform of b(n) = (0, 0, A007910).

Offset 0, canonical program `A137500.P10173415657923203167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137500 (n : ℕ) : ℤ :=
  A137500.P10173415657923203167.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137688.P9746695207037186753

`2^A003056(n)`
-/

namespace A137688.P9746695207037186753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ)

end

end A137688.P9746695207037186753

noncomputable section

/-- A137688: 2^A003056: 2^n appears n+1 times.

Offset 0, canonical program `A137688.P9746695207037186753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137688.P9746695207037186753.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137717.P6135755318765446272

`2^n*A061347(n+2)`
-/

namespace A137717.P6135755318765446272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A061347 (n + 2)

end

end A137717.P6135755318765446272

noncomputable section

/-- A137717: Hankel transform of A106191.

Offset 0, canonical program `A137717.P6135755318765446272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137717 (n : ℕ) : ℤ :=
  A137717.P6135755318765446272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137886.P14455541681682241129

`2*(n+3)!*A000271(n+3)`
-/

namespace A137886.P14455541681682241129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (n + 3) : ℤ) * A000271 (n + 3)

end

end A137886.P14455541681682241129

noncomputable section

/-- A137886: Number of (directed) Hamiltonian paths in the n-crown graph.

Offset 3, canonical program `A137886.P14455541681682241129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137886 (n : ℕ) : ℤ :=
  A137886.P14455541681682241129.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137933.P15299060257872889024

`(n+1)*A109043(n+1)`
-/

namespace A137933.P15299060257872889024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109043 (n + 1)

end

end A137933.P15299060257872889024

noncomputable section

/-- A137933: Least common multiple of n^2 and 2.

Offset 1, canonical program `A137933.P15299060257872889024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137933 (n : ℕ) : ℤ :=
  A137933.P15299060257872889024.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137934.P9069368963092737308

`2*A097325(n+1)`
-/

namespace A137934.P9069368963092737308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097325 (n + 1)

end

end A137934.P9069368963092737308

noncomputable section

/-- A137934: Period 6: 2,2,2,2,2,0.

Offset 1, canonical program `A137934.P9069368963092737308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137934 (n : ℕ) : ℤ :=
  A137934.P9069368963092737308.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138129.P12129596085727893475

`91*A008601(n)`
-/

namespace A138129.P12129596085727893475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  91 * A008601 n

end

end A138129.P12129596085727893475

noncomputable section

/-- A138129: Multiples of 1729, the Hardy-Ramanujan number.

Offset 0, canonical program `A138129.P12129596085727893475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138129 (n : ℕ) : ℤ :=
  A138129.P12129596085727893475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138130.P10725115915710778988

`A000420(n)*A001022(n)*A001029(n)`
-/

namespace A138130.P10725115915710778988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n * A001022 n * A001029 n

end

end A138130.P10725115915710778988

noncomputable section

/-- A138130: Powers of 1729, the Hardy-Ramanujan number.

Offset 0, canonical program `A138130.P10725115915710778988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138130 (n : ℕ) : ℤ :=
  A138130.P10725115915710778988.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138147.P10958362460763954075

`10*A109241(n)`
-/

namespace A138147.P10958362460763954075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A109241 n

end

end A138147.P10958362460763954075

noncomputable section

/-- A138147: Concatenation of n digits 1 and n digits 0.

Offset 1, canonical program `A138147.P10958362460763954075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138147 (n : ℕ) : ℤ :=
  A138147.P10958362460763954075.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138148.P14723109673005405600

`A002275(2*n+1)-A011557(n)`
-/

namespace A138148.P14723109673005405600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * n + 1) - A011557 n

end

end A138148.P14723109673005405600

noncomputable section

/-- A138148: Cyclops numbers with binary digits only.

Offset 0, canonical program `A138148.P14723109673005405600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138148 (n : ℕ) : ℤ :=
  A138148.P14723109673005405600.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138288.P14569179554426450410

`A054320(n)-A001078(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138288.P14569179554426450410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - A001078 n

end

end A138288.P14569179554426450410

noncomputable section

/-- A138288: a(n) = A054320(n) - A001078(n).

Offset 0, canonical program `A138288.P14569179554426450410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138288 (n : ℕ) : ℤ :=
  A138288.P14569179554426450410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138414.P15952755572868005210

`A000957(2*n+1)`
-/

namespace A138414.P15952755572868005210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (2 * n + 1)

end

end A138414.P15952755572868005210

noncomputable section

/-- A138414: A bisection of A000957.

Offset 0, canonical program `A138414.P15952755572868005210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138414 (n : ℕ) : ℤ :=
  A138414.P15952755572868005210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138503.P12556879654800362698

`(-1)^n*A008457(n+1)`
-/

namespace A138503.P12556879654800362698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008457 (n + 1)

end

end A138503.P12556879654800362698

noncomputable section

/-- A138503: a(n) = Sum_{d|n} (-1)^(d-1)*d^3.

Offset 1, canonical program `A138503.P12556879654800362698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138503 (n : ℕ) : ℤ :=
  A138503.P12556879654800362698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138591.P13503904033525948997

`n+1+A000523(n+1+A000523(n+1))`
-/

namespace A138591.P13503904033525948997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000523 ((n + 1 : ℤ) + A000523 (n + 1)).toNat

end

end A138591.P13503904033525948997

noncomputable section

/-- A138591: Sums of two or more consecutive nonnegative integers.

Offset 1, canonical program `A138591.P13503904033525948997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138591 (n : ℕ) : ℤ :=
  A138591.P13503904033525948997.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138614.P16444557196922960541

`A138232(n)-A138231(n)`
-/

namespace A138614.P16444557196922960541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 n - A138231 n

end

end A138614.P16444557196922960541

noncomputable section

/-- A138614: Expansion of (2*x-1)*(x^2-x-1) / ( 1-2*x^2+2*x^4 ).

Offset 0, canonical program `A138614.P16444557196922960541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138614 (n : ℕ) : ℤ :=
  A138614.P16444557196922960541.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139209.P15313262022134198685

`A001906(n)-A000079(n)`
-/

namespace A139209.P15313262022134198685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A000079 n

end

end A139209.P15313262022134198685

noncomputable section

/-- A139209: Fibonacci bisection minus powers of 2.

Offset 0, canonical program `A139209.P15313262022134198685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139209 (n : ℕ) : ℤ :=
  A139209.P15313262022134198685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139541.P17102609727749235083

`A001147(n)*A001147(2*n)`
-/

namespace A139541.P17102609727749235083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A001147 (2 * n)

end

end A139541.P17102609727749235083

noncomputable section

/-- A139541: There are 4*n players who wish to play bridge at n tables. Each player must have another player as partner and each pair of partners must have another pair as opponents. The choice of partners and opponents can be made in exactly a(n)=(4*n)!/(n!*8^n) different ways.

Offset 0, canonical program `A139541.P17102609727749235083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139541 (n : ℕ) : ℤ :=
  A139541.P17102609727749235083.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139550.P7288531121830713770

`A003418(floor(n/2))`
-/

namespace A139550.P7288531121830713770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ⌊(n : ℚ) / 2⌋.toNat

end

end A139550.P7288531121830713770

noncomputable section

/-- A139550: a(n) = lcm(1..floor(n/2)).

Offset 0, canonical program `A139550.P7288531121830713770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139550 (n : ℕ) : ℤ :=
  A139550.P7288531121830713770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139626.P18204651707014816669

`A000332(n+4)*A000400(n)`
-/

namespace A139626.P18204651707014816669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A000400 n

end

end A139626.P18204651707014816669

noncomputable section

/-- A139626: a(n) = binomial(n+4, 4)*6^n.

Offset 0, canonical program `A139626.P18204651707014816669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139626 (n : ℕ) : ℤ :=
  A139626.P18204651707014816669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140096.P3031810697924802986

`A000045(n)-A113405(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140096.P3031810697924802986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A113405 n

end

end A140096.P3031810697924802986

noncomputable section

/-- A140096: a(n) = A000045(n) - A113405(n).

Offset 0, canonical program `A140096.P3031810697924802986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140096 (n : ℕ) : ℤ :=
  A140096.P3031810697924802986.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140096.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140106.P2723219612803141067

`floor(A129194(n)/A022998(n+1))`
-/

namespace A140106.P2723219612803141067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129194 n : ℚ) / (A022998 (n + 1) : ℚ)⌋

end

end A140106.P2723219612803141067

noncomputable section

/-- A140106: Number of noncongruent diagonals in a regular n-gon.

Offset 1, canonical program `A140106.P2723219612803141067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140106 (n : ℕ) : ℤ :=
  A140106.P2723219612803141067.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140167.P10646731209052173332

`(-1)^(n+1)*A006130(n)`
-/

namespace A140167.P10646731209052173332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A006130 n

end

end A140167.P10646731209052173332

noncomputable section

/-- A140167: a(n) = (-1)*a(n-1) + 3*a(n-2) with a(1)=-1 and a(2)=1.

Offset 1, canonical program `A140167.P10646731209052173332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140167 (n : ℕ) : ℤ :=
  A140167.P10646731209052173332.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140167.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140236.P12614309250063322323

`A000292(A000292(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140236.P12614309250063322323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000292 n).toNat

end

end A140236.P12614309250063322323

noncomputable section

/-- A140236: a(n) = A000292(A000292(n)).

Offset 0, canonical program `A140236.P12614309250063322323`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000292(A000292(n))` (program `A140236.P12614309250063322323`, by `A140236.P12614309250063322323.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140236 (n : ℕ) : ℤ :=
  A140236.P12614309250063322323.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000292(A000292(n))` (program `A140236.P12614309250063322323`, by `A140236.P12614309250063322323.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140236.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140428.P11997677646932736718

`A000045(n)+A113405(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140428.P11997677646932736718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A113405 n

end

end A140428.P11997677646932736718

noncomputable section

/-- A140428: a(n) = A000045(n) + A113405(n).

Offset 0, canonical program `A140428.P11997677646932736718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140428 (n : ℕ) : ℤ :=
  A140428.P11997677646932736718.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140431.P4392069254811655813

`2*A094555(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140431.P4392069254811655813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094555 n

end

end A140431.P4392069254811655813

noncomputable section

/-- A140431: a(n) = 2*A094555(n).

Offset 0, canonical program `A140431.P4392069254811655813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140431 (n : ℕ) : ℤ :=
  A140431.P4392069254811655813.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140659.P2374754563002886907

`floor(A140657(n+2)/10)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140659.P2374754563002886907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140657 (n + 2) : ℚ) / 10⌋

end

end A140659.P2374754563002886907

noncomputable section

/-- A140659: a(n) = floor(A140657(n+2)/10).

Offset 0, canonical program `A140659.P2374754563002886907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140659 (n : ℕ) : ℤ :=
  A140659.P2374754563002886907.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140662.P10525022962344994397

`A001006(n+2)-1`
-/

namespace A140662.P10525022962344994397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 2) - 1

end

end A140662.P10525022962344994397

noncomputable section

/-- A140662: Number of possible column states for self-avoiding polygons in a slit of width n.

Offset 1, canonical program `A140662.P10525022962344994397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140662 (n : ℕ) : ℤ :=
  A140662.P10525022962344994397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140868.P7032624597065670371

`A003151(A003151(n+1))`
-/

namespace A140868.P7032624597065670371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003151 (n + 1)).toNat

end

end A140868.P7032624597065670371

noncomputable section

/-- A140868: a(n) = floor(floor(n*alpha)*alpha) where alpha = 1+sqrt(2) = A014176.

Offset 1, canonical program `A140868.P7032624597065670371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140868 (n : ℕ) : ℤ :=
  A140868.P7032624597065670371.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140960.P8522325177965692138

`A059570(n+1)-A011782(n+1)`
-/

namespace A140960.P8522325177965692138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) - A011782 (n + 1)

end

end A140960.P8522325177965692138

noncomputable section

/-- A140960: a(n) = (2*(-1)^n - 2^(n+1) + 3*n*2^n)/9.

Offset 0, canonical program `A140960.P8522325177965692138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140960 (n : ℕ) : ℤ :=
  A140960.P8522325177965692138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140978.P12561242005867960431

`A003057(n+2)²`
-/

namespace A140978.P12561242005867960431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) ^ 2

end

end A140978.P12561242005867960431

noncomputable section

/-- A140978: Repeat (n+1)^2 n times.

Offset 1, canonical program `A140978.P12561242005867960431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140978 (n : ℕ) : ℤ :=
  A140978.P12561242005867960431.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140991.P67649880405592751

`A006904(n+4)-(n-1)²`
-/

namespace A140991.P67649880405592751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006904 (n + 4) - ((n : ℤ) - 1) ^ 2

end

end A140991.P67649880405592751

noncomputable section

/-- A140991: a(n) = (1/9)*(7*2^n + (-1)^n*(3*n+2)) - (n-1)^2.

Offset 0, canonical program `A140991.P67649880405592751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140991 (n : ℕ) : ℤ :=
  A140991.P67649880405592751.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140992.P7781271617900783477

`a(n-2)+a(n-1)+A000071(n+1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140992.P7781271617900783477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) + A000071 (n + 1)

end

end A140992.P7781271617900783477

noncomputable section

/-- A140992: a(0) = 0, a(1) = 1; for n > 1, a(n) = a(n-2) + a(n-1) + A000071(n+1).

Offset 0, canonical program `A140992.P7781271617900783477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140992 (n : ℕ) : ℤ :=
  A140992.P7781271617900783477.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141073.P12102067151743280568

`2*a(n-2)+A129847(floor((n+1)/2)-(4+(-1)^(n+1)))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2, a(4)=8, a(5)=4, a(6)=17, a(7)=8`
-/

namespace A141073.P12102067151743280568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 2, 8, 4, 17, 8] fun n a =>
  2 * a (n - 2) + A129847 (⌊(n + 1 : ℚ) / 2⌋ - (4 + (-1) ^ (n + 1))).toNat

end

end A141073.P12102067151743280568

noncomputable section

/-- A141073: List of central integer pairs in Pascal-like triangles with index of asymmetry y = 3 and index of obliqueness z = 0 or z = 1.

Offset 1, canonical program `A141073.P12102067151743280568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141073 (n : ℕ) : ℤ :=
  A141073.P12102067151743280568.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141317.P6107136016160513922

`A000244(n)-A010684(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141317.P6107136016160513922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A010684 n

end

end A141317.P6107136016160513922

noncomputable section

/-- A141317: a(n) = A000244(n) - A010684(n).

Offset 0, canonical program `A141317.P6107136016160513922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141317 (n : ℕ) : ℤ :=
  A141317.P6107136016160513922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141325.P2371812307783591660

`A000045(n)+A131531(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141325.P2371812307783591660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A131531 (n + 3)

end

end A141325.P2371812307783591660

noncomputable section

/-- A141325: a(n) = A000045(n) + A131531(n+3).

Offset 0, canonical program `A141325.P2371812307783591660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141325 (n : ℕ) : ℤ :=
  A141325.P2371812307783591660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141397.P18428813078412907815

`3*a(n-1)+A001651(n+1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141397.P18428813078412907815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A001651 (n + 1)

end

end A141397.P18428813078412907815

noncomputable section

/-- A141397: a(n) = 3*a(n-1) + A001651(n+1).

Offset 0, canonical program `A141397.P18428813078412907815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141397 (n : ℕ) : ℤ :=
  A141397.P18428813078412907815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141845.P4237322174291289607

`5*a(n-1)+A047201(n+1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141845.P4237322174291289607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A047201 (n + 1)

end

end A141845.P4237322174291289607

noncomputable section

/-- A141845: a(n) = 5*a(n-1) + A047201(n), a(1) = 1. A047201 = numbers not divisible by 5: (1, 2, 3, 4, 6, 7, 8, 9, 11, ...).

Offset 1, canonical program `A141845.P4237322174291289607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141845 (n : ℕ) : ℤ :=
  A141845.P4237322174291289607.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142245.P14669397109634929574

`2*A022095(n+3)-22`
-/

namespace A142245.P14669397109634929574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022095 (n + 3) - 22

end

end A142245.P14669397109634929574

noncomputable section

/-- A142245: Expansion of 2*x*(6 + 5*x) / ((1 - x)*(1 - x - x^2)).

Offset 0, canonical program `A142245.P14669397109634929574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142245 (n : ℕ) : ℤ :=
  A142245.P14669397109634929574.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142584.P8654170768485749778

`A014217(n+2)-A115360(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142584.P8654170768485749778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 2) - A115360 (n + 3)

end

end A142584.P8654170768485749778

noncomputable section

/-- A142584: a(n) = A014217(n+1) - A115360(n+2).

Offset 1, canonical program `A142584.P8654170768485749778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142584 (n : ℕ) : ℤ :=
  A142584.P8654170768485749778.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142588.P14446721395174826203

`A000129(3*n)`
-/

namespace A142588.P14446721395174826203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (3 * n)

end

end A142588.P14446721395174826203

noncomputable section

/-- A142588: A trisection of A000129, the Pell numbers.

Offset 0, canonical program `A142588.P14446721395174826203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142588 (n : ℕ) : ℤ :=
  A142588.P14446721395174826203.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142883.P8119179199355655471

`A142590(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142883.P8119179199355655471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142590 n : ℚ) / 3

end

end A142883.P8119179199355655471

noncomputable section

/-- A142883: a(n) = A142590(n)/3.

Offset 0, canonical program `A142883.P8119179199355655471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142883.P8119179199355655471.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142888.P1802572120345251366

`A142705(n+2)-A142705(n+1)`
-/

namespace A142888.P1802572120345251366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (n + 2) - A142705 (n + 1)

end

end A142888.P1802572120345251366

noncomputable section

/-- A142888: First differences of A142705.

Offset 1, canonical program `A142888.P1802572120345251366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142888 (n : ℕ) : ℤ :=
  A142888.P1802572120345251366.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143101.P7657192953490634974

`A000217(n+1)+A079978(n+1)`
-/

namespace A143101.P7657192953490634974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A079978 (n + 1)

end

end A143101.P7657192953490634974

noncomputable section

/-- A143101: Partial sums of A143097.

Offset 1, canonical program `A143101.P7657192953490634974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143101 (n : ℕ) : ℤ :=
  A143101.P7657192953490634974.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143132.P864110151815142097

`46-200*(n+1)+330*A000217(n+1)-245*A000292(n+1)+70*A000332(n+4)`
-/

namespace A143132.P864110151815142097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  46 - (200 * (n + 1) : ℤ) + 330 * A000217 (n + 1) - 245 * A000292 (n + 1) + 70 * A000332 (n + 4)

end

end A143132.P864110151815142097

noncomputable section

/-- A143132: Binomial transform of [1, 5, 15, 35, 70, 0, 0, 0, ...].

Offset 1, canonical program `A143132.P864110151815142097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143132 (n : ℕ) : ℤ :=
  A143132.P864110151815142097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143212.P10230428343141082012

`A000045(n+1)*A000071(n+3)`
-/

namespace A143212.P10230428343141082012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000071 (n + 3)

end

end A143212.P10230428343141082012

noncomputable section

/-- A143212: a(n) = Fibonacci(n) * (Fibonacci(n+2) - 1).

Offset 1, canonical program `A143212.P10230428343141082012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143212 (n : ℕ) : ℤ :=
  A143212.P10230428343141082012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143217.P18343159879643153823

`A000142(n)*A003422(n+1)`
-/

namespace A143217.P18343159879643153823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003422 (n + 1)

end

end A143217.P18343159879643153823

noncomputable section

/-- A143217: a(n) = n! * (!(n+1)) = n! * Sum_{k=0..n} k!.

Offset 0, canonical program `A143217.P18343159879643153823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143217 (n : ℕ) : ℤ :=
  A143217.P18343159879643153823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143281.P18435193582386234759

`A000045(n+2)-A000930(n+2)`
-/

namespace A143281.P18435193582386234759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A000930 (n + 2)

end

end A143281.P18435193582386234759

noncomputable section

/-- A143281: Number of binary words of length n containing at least one subword 101 and no subword 11.

Offset 0, canonical program `A143281.P18435193582386234759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143281 (n : ℕ) : ℤ :=
  A143281.P18435193582386234759.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143282.P17898293873386048579

`A000930(n+2)-A003269(n+4)`
-/

namespace A143282.P17898293873386048579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) - A003269 (n + 4)

end

end A143282.P17898293873386048579

noncomputable section

/-- A143282: Number of binary words of length n containing at least one subword 1001 and no subwords 10^{i}1 with i

Offset 0, canonical program `A143282.P17898293873386048579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143282 (n : ℕ) : ℤ :=
  A143282.P17898293873386048579.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143283.P17170733134350020410

`A003269(n+4)-A003520(n+4)`
-/

namespace A143283.P17170733134350020410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 4) - A003520 (n + 4)

end

end A143283.P17170733134350020410

noncomputable section

/-- A143283: Number of binary words of length n containing at least one subword 10001 and no subwords 10^{i}1 with i

Offset 0, canonical program `A143283.P17170733134350020410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143283 (n : ℕ) : ℤ :=
  A143283.P17170733134350020410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143284.P12262816341558427075

`A003520(n+4)-A005708(n+5)`
-/

namespace A143284.P12262816341558427075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 4) - A005708 (n + 5)

end

end A143284.P12262816341558427075

noncomputable section

/-- A143284: Number of binary words of length n containing at least one subword 100001 and no subwords 10^{i}1 with i

Offset 0, canonical program `A143284.P12262816341558427075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143284 (n : ℕ) : ℤ :=
  A143284.P12262816341558427075.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143285.P16206103124320944146

`A005708(n+5)-A005709(n+6)`
-/

namespace A143285.P16206103124320944146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 5) - A005709 (n + 6)

end

end A143285.P16206103124320944146

noncomputable section

/-- A143285: Number of binary words of length n containing at least one subword 1000001 and no subwords 10^{i}1 with i

Offset 0, canonical program `A143285.P16206103124320944146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143285 (n : ℕ) : ℤ :=
  A143285.P16206103124320944146.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143286.P7076045960563745098

`A005709(n+6)-A005710(n+7)`
-/

namespace A143286.P7076045960563745098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 6) - A005710 (n + 7)

end

end A143286.P7076045960563745098

noncomputable section

/-- A143286: Number of binary words of length n containing at least one subword 10^{6}1 and no subwords 10^{i}1 with i

Offset 0, canonical program `A143286.P7076045960563745098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143286 (n : ℕ) : ℤ :=
  A143286.P7076045960563745098.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143287.P5161336264023573381

`A005710(n+7)-A005711(n+7)`
-/

namespace A143287.P5161336264023573381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (n + 7) - A005711 (n + 7)

end

end A143287.P5161336264023573381

noncomputable section

/-- A143287: Number of binary words of length n containing at least one subword 10^{7}1 and no subwords 10^{i}1 with i

Offset 0, canonical program `A143287.P5161336264023573381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143287 (n : ℕ) : ℤ :=
  A143287.P5161336264023573381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143287.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143662.P5880569709313616368

`2^n-A001592(n+6)`
-/

namespace A143662.P5880569709313616368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001592 (n + 6)

end

end A143662.P5880569709313616368

noncomputable section

/-- A143662: a(n) is the number of n-tosses having a run of 6 or more heads for a fair coin (i.e., probability is a(n)/2^n).

Offset 0, canonical program `A143662.P5880569709313616368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143662 (n : ℕ) : ℤ :=
  A143662.P5880569709313616368.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143690.P3024574281317307231

`A000326(n+1)+(n+1)*A000326(n)`
-/

namespace A143690.P3024574281317307231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) + (n + 1 : ℤ) * A000326 n

end

end A143690.P3024574281317307231

noncomputable section

/-- A143690: a(n) = A007318 * [1, 6, 14, 9, 0, 0, 0, ...].

Offset 0, canonical program `A143690.P3024574281317307231`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143690 (n : ℕ) : ℤ :=
  A143690.P3024574281317307231.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143769.P10432666543899901502

`A141533(n+2)-2*A141533(n+1)`
-/

namespace A143769.P10432666543899901502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141533 (n + 2) - 2 * A141533 (n + 1)

end

end A143769.P10432666543899901502

noncomputable section

/-- A143769: Expansion of 3*x*(3*x+1)*(2*x-1) / ( (1+x)*(3*x^2+1) ).

Offset 1, canonical program `A143769.P10432666543899901502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143769 (n : ℕ) : ℤ :=
  A143769.P10432666543899901502.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143803.P15197784940766103459

`2*A001614(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143803.P15197784940766103459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001614 (n + 1) - 1

end

end A143803.P15197784940766103459

noncomputable section

/-- A143803: a(n) = 2*A001614(n) - 1 where A001614 lists the Connell numbers.

Offset 1, canonical program `A143803.P15197784940766103459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143803 (n : ℕ) : ℤ :=
  A143803.P15197784940766103459.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143804.P3155521920074128437

`3*A001614(n+1)-2`
-/

namespace A143804.P3155521920074128437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001614 (n + 1) - 2

end

end A143804.P3155521920074128437

noncomputable section

/-- A143804: Triangle read by rows, thrice the Connell numbers (A001614) - 2.

Offset 1, canonical program `A143804.P3155521920074128437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143804 (n : ℕ) : ℤ :=
  A143804.P3155521920074128437.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143960.P11326528955184198405

`2*A099393(n)`
-/

namespace A143960.P11326528955184198405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099393 n

end

end A143960.P11326528955184198405

noncomputable section

/-- A143960: a(n) = the n-th positive integer with exactly n zeros and n ones in its binary representation.

Offset 1, canonical program `A143960.P11326528955184198405`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143960 (n : ℕ) : ℤ :=
  A143960.P11326528955184198405.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144109.P15775941751959478664

`(9*A004254(n+1)-4*A056594(n))/5`
-/

namespace A144109.P15775941751959478664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A004254 (n + 1) - 4 * A056594 n : ℚ) / 5

end

end A144109.P15775941751959478664

noncomputable section

/-- A144109: INVERT transform of the cubes A000578.

Offset 0, canonical program `A144109.P15775941751959478664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144109 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144109.P15775941751959478664.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144298.P8587430462916839701

`A030117(n)+(3*n-1)*C(n, 3)`
-/

namespace A144298.P8587430462916839701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030117 n + ((3 * n : ℤ) - 1) * (Nat.choose n 3 : ℤ)

end

end A144298.P8587430462916839701

noncomputable section

/-- A144298: Number of cycles of length 3 in the queen graph associated with an n X n chessboard.

Offset 0, canonical program `A144298.P8587430462916839701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144298 (n : ℕ) : ℤ :=
  A144298.P8587430462916839701.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144298.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144390.P6424163605810737516

`A003154(n+1)-A049451(n)`
-/

namespace A144390.P6424163605810737516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A049451 n

end

end A144390.P6424163605810737516

noncomputable section

/-- A144390: a(n) = 3*n^2 - n - 1.

Offset 1, canonical program `A144390.P6424163605810737516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144390 (n : ℕ) : ℤ :=
  A144390.P6424163605810737516.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144430.P375800706036090337

`1+A144429(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144430.P375800706036090337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A144429 (n + 1)

end

end A144430.P375800706036090337

noncomputable section

/-- A144430: a(n) = 1 + A144429(n).

Offset 1, canonical program `A144430.P375800706036090337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144430 (n : ℕ) : ℤ :=
  A144430.P375800706036090337.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144495.P1709474972171092925

`1/2*(3+n+(1+3*n+n²)*A000522(n))`
-/

namespace A144495.P1709474972171092925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (3 + ((n : ℤ) + (1 + 3 * n + n ^ 2 : ℤ) * A000522 n) : ℚ)

end

end A144495.P1709474972171092925

noncomputable section

/-- A144495: Row 2 of array in A144502.

Offset 0, canonical program `A144495.P1709474972171092925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144495 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144495.P1709474972171092925.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144498.P11939167362090134045

`A001515(n+1)-A001515(n)`
-/

namespace A144498.P11939167362090134045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 (n + 1) - A001515 n

end

end A144498.P11939167362090134045

noncomputable section

/-- A144498: Column 2 of array in A144502.

Offset 0, canonical program `A144498.P11939167362090134045`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144498 (n : ℕ) : ℤ :=
  A144498.P11939167362090134045.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144614.P17938140406171166888

`A000203(3*n+1)`
-/

namespace A144614.P17938140406171166888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * n + 1)

end

end A144614.P17938140406171166888

noncomputable section

/-- A144614: Sum of divisors of 3*n + 1.

Offset 0, canonical program `A144614.P17938140406171166888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144614 (n : ℕ) : ℤ :=
  A144614.P17938140406171166888.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144647.P13343009352407560619

`2*A001515(n+1)-(2*n+3)*A001515(n)`
-/

namespace A144647.P13343009352407560619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001515 (n + 1) - (2 * n + 3 : ℤ) * A001515 n

end

end A144647.P13343009352407560619

noncomputable section

/-- A144647: Second differences of A001515 (or A144301).

Offset 0, canonical program `A144647.P13343009352407560619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144647 (n : ℕ) : ℤ :=
  A144647.P13343009352407560619.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144828.P6877321025962803446

`4^n*A001147(n)`
-/

namespace A144828.P6877321025962803446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001147 n

end

end A144828.P6877321025962803446

noncomputable section

/-- A144828: Partial products of successive terms of A017113; a(0)=1.

Offset 0, canonical program `A144828.P6877321025962803446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144828 (n : ℕ) : ℤ :=
  A144828.P6877321025962803446.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144843.P11444026047298682305

`A016129(n)²`
-/

namespace A144843.P11444026047298682305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n ^ 2

end

end A144843.P11444026047298682305

noncomputable section

/-- A144843: a(n) = (6^n - 2^n)^2 / 16.

Offset 1, canonical program `A144843.P11444026047298682305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144843 (n : ℕ) : ℤ :=
  A144843.P11444026047298682305.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144964.P8698337924137114216

`2^A000108(n+1)-1`
-/

namespace A144964.P8698337924137114216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000108 (n + 1) : ℤ) - 1

end

end A144964.P8698337924137114216

noncomputable section

/-- A144964: Number of groves of degree n.

Offset 1, canonical program `A144964.P8698337924137114216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144964 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144964.P8698337924137114216.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115792.P92138196797629265

`a(n-1)+a(n-2)+a(n-3)-A132151(n+4)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A115792.P92138196797629265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - A132151 (n + 4)

end

end A115792.P92138196797629265

noncomputable section

/-- A115792: a(n) = ceiling(g(A000073(n))) with g(k) = (k-1)^2/(4k).

Offset 2, canonical program `A115792.P92138196797629265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115792 (n : ℕ) : ℤ :=
  A115792.P92138196797629265.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116712.P5431410053559634133

`A257113(n+2)-A000045(n+3)`
-/

namespace A116712.P5431410053559634133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 2) - A000045 (n + 3)

end

end A116712.P5431410053559634133

noncomputable section

/-- A116712: Number of permutations of length n which avoid the patterns 231, 3214, 4312.

Offset 1, canonical program `A116712.P5431410053559634133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116712 (n : ℕ) : ℤ :=
  A116712.P5431410053559634133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117142.P5674735437351401139

`A152919(n+2)/2`
-/

namespace A117142.P5674735437351401139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152919 (n + 2) : ℚ) / 2

end

end A117142.P5674735437351401139

noncomputable section

/-- A117142: Number of partitions of n in which any two parts differ by at most 2.

Offset 1, canonical program `A117142.P5674735437351401139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117142 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117142.P5674735437351401139.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117630.P12923137934398612656

`2*(n+1)+A368131(n+1)`
-/

namespace A117630.P12923137934398612656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A368131 (n + 1)

end

end A117630.P12923137934398612656

noncomputable section

/-- A117630: Complement of A056576.

Offset 1, canonical program `A117630.P12923137934398612656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117630 (n : ℕ) : ℤ :=
  A117630.P12923137934398612656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121625.P17625148713159675040

`n^n*A146559(n)`
-/

namespace A121625.P17625148713159675040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A146559 n

end

end A121625.P17625148713159675040

noncomputable section

/-- A121625: Real part of (n + n*i)^n.

Offset 0, canonical program `A121625.P17625148713159675040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121625 (n : ℕ) : ℤ :=
  A121625.P17625148713159675040.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A121625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122909.P2380570618535790159

`(2*A163063(n)-A061084(n))/5`
-/

namespace A122909.P2380570618535790159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A163063 n - A061084 n : ℚ) / 5

end

end A122909.P2380570618535790159

noncomputable section

/-- A122909: a(n) = F(n+1)*F(2n+2) + F(n)*F(2n).

Offset 0, canonical program `A122909.P2380570618535790159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122909.P2380570618535790159.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122931.P9109639114546519688

`A301809(n+2)-A000045(n+1)`
-/

namespace A122931.P9109639114546519688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301809 (n + 2) - A000045 (n + 1)

end

end A122931.P9109639114546519688

noncomputable section

/-- A122931: Row sums of triangular array A122930.

Offset 1, canonical program `A122931.P9109639114546519688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122931 (n : ℕ) : ℤ :=
  A122931.P9109639114546519688.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123954.P12062937612146197065

`(4^(n+1)-3^(n+1)-3*5^n)/12+(4*A153594(n+2)-19*A153594(n+1))/78`
-/

namespace A123954.P12062937612146197065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) - (3 * 5 ^ n : ℤ) : ℚ) / 12 + (4 * A153594 (n + 2) - 19 * A153594 (n + 1) : ℚ) / 78

end

end A123954.P12062937612146197065

noncomputable section

/-- A123954: Expansion of g.f.: x^5/((1-3*x)*(1-4*x)*(1-5*x)*(1 - 8*x + 13*x^2)).

Offset 1, canonical program `A123954.P12062937612146197065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123954.P12062937612146197065.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128767.P5391098239481366286

`(A337952(n+1)+A337955(n+1))/2`
-/

namespace A128767.P5391098239481366286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337952 (n + 1) + A337955 (n + 1) : ℚ) / 2

end

end A128767.P5391098239481366286

noncomputable section

/-- A128767: Number of inequivalent n-colorings of the 4D hypercube under the full orthogonal group of the cube (of order 2^4*4! = 384).

Offset 1, canonical program `A128767.P5391098239481366286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128767 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128767.P5391098239481366286.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130821.P15508198224782849712

`A131507(ceil((n+1)/2)-1)`
-/

namespace A130821.P15508198224782849712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat

end

end A130821.P15508198224782849712

noncomputable section

/-- A130821: 2n-1 appears 2n times.

Offset 1, canonical program `A130821.P15508198224782849712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130821 (n : ℕ) : ℤ :=
  A130821.P15508198224782849712.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130869.P337791573145592

`2^(n+2)-A131026(n+2)`
-/

namespace A130869.P337791573145592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A131026 (n + 2)

end

end A130869.P337791573145592

noncomputable section

/-- A130869: Partial sums of A130752.

Offset 0, canonical program `A130869.P337791573145592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130869 (n : ℕ) : ℤ :=
  A130869.P337791573145592.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131037.P4097135119821782390

`A001333(n)-A131707(n)`
-/

namespace A131037.P4097135119821782390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A131707 n

end

end A131037.P4097135119821782390

noncomputable section

/-- A131037: Sequence A001333 with last digits set to zero.

Offset 0, canonical program `A131037.P4097135119821782390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131037 (n : ℕ) : ℤ :=
  A131037.P4097135119821782390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131090.P7320947114519578557

`A131666(n+1)-A131666(n)`
-/

namespace A131090.P7320947114519578557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) - A131666 n

end

end A131090.P7320947114519578557

noncomputable section

/-- A131090: First differences of A131666.

Offset 0, canonical program `A131090.P7320947114519578557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131090 (n : ℕ) : ℤ :=
  A131090.P7320947114519578557.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133216.P3224202254503711479

`A000217(A133218(n+1))`
-/

namespace A133216.P3224202254503711479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A133218 (n + 1)).toNat

end

end A133216.P3224202254503711479

noncomputable section

/-- A133216: Integers that are simultaneously triangular (A000217) and decagonal (A001107).

Offset 1, canonical program `A133216.P3224202254503711479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133216 (n : ℕ) : ℤ :=
  A133216.P3224202254503711479.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133275.P16050064932795148582

`3*A157014(n+1)`
-/

namespace A133275.P16050064932795148582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157014 (n + 1)

end

end A133275.P16050064932795148582

noncomputable section

/-- A133275: Numbers X such that 30*X^2-45 is a square.

Offset 1, canonical program `A133275.P16050064932795148582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133275 (n : ℕ) : ℤ :=
  A133275.P16050064932795148582.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137880.P9737918691451441773

`A137881(n+1)²`
-/

namespace A137880.P9737918691451441773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137881 (n + 1) ^ 2

end

end A137880.P9737918691451441773

noncomputable section

/-- A137880: Indices k of perfect squares among 17-gonal numbers A051869(k) = k*(15*k - 13)/2.

Offset 1, canonical program `A137880.P9737918691451441773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137880 (n : ℕ) : ℤ :=
  A137880.P9737918691451441773.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139596.P3616204576914108652

`2*A156859(n)`
-/

namespace A139596.P3616204576914108652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156859 n

end

end A139596.P3616204576914108652

noncomputable section

/-- A139596: A033587(n) followed by even hexagonal number A014635(n+1).

Offset 0, canonical program `A139596.P3616204576914108652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139596 (n : ℕ) : ℤ :=
  A139596.P3616204576914108652.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144927.P9346811107420950621

`7*A144929(n+1)`
-/

namespace A144927.P9346811107420950621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A144929 (n + 1)

end

end A144927.P9346811107420950621

noncomputable section

/-- A144927: Numbers n such that there exists an integer k with (n+7)^3-n^3=k^2.

Offset 1, canonical program `A144927.P9346811107420950621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144927 (n : ℕ) : ℤ :=
  A144927.P9346811107420950621.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115821.P562963444630615089

`eq[0, and(A008588(n), A008597(n))]`
-/

namespace A115821.P562963444630615089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008588 n) (A008597 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115821.P562963444630615089

noncomputable section

/-- A115821: Integers i such that 6*i XOR 15*i = 21*i.

Offset 0, canonical program `A115821.P562963444630615089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A115821 (n : ℕ) : ℤ :=
  (A115821.P562963444630615089.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A115821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115881.P4143255658260624620

`A115880(n+1)-A004524(A004442(n))`
-/

namespace A115881.P4143255658260624620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115880 (n + 1) - A004524 (A004442 n).toNat

end

end A115881.P4143255658260624620

noncomputable section

/-- A115881: a(n) is the largest positive y satisfying the Diophantine equation x^2=y(y+n). a(n)=0 if there are no solutions.

Offset 1, canonical program `A115881.P4143255658260624620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115881 (n : ℕ) : ℤ :=
  A115881.P4143255658260624620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116024.P7378432602794831852

`eq[2, ∑{e}[A000040(abs(1-n)+1)-n, #]]`
-/

namespace A116024.P7378432602794831852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (|1 - (n : ℤ)| + 1).toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116024.P7378432602794831852

noncomputable section

/-- A116024: The n-th prime minus n gives a semiprime (A001358).

Offset 1, canonical program `A116024.P7378432602794831852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A116024 (n : ℕ) : ℤ :=
  (A116024.P7378432602794831852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A116024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116363.P9413902486912199227

`A001850(n)-A050151(n)`
-/

namespace A116363.P9413902486912199227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A050151 n

end

end A116363.P9413902486912199227

noncomputable section

/-- A116363: a(n) = dot product of row n in Catalan triangle A033184 with row n in Pascal's triangle.

Offset 0, canonical program `A116363.P9413902486912199227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A116363 (n : ℕ) : ℤ :=
  A116363.P9413902486912199227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A116363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116368.P4128061207012300454

`A000040(2*(n+1))+A000040(n+2)`
-/

namespace A116368.P4128061207012300454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) + A000040 (n + 2)

end

end A116368.P4128061207012300454

noncomputable section

/-- A116368: Central terms of the triangle in A116366.

Offset 1, canonical program `A116368.P4128061207012300454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116368 (n : ℕ) : ℤ :=
  A116368.P4128061207012300454.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116384.P5047349765898739039

`A027306(n)-a(n-1)` with `a(0)=1`
-/

namespace A116384.P5047349765898739039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027306 n - a (n - 1)

end

end A116384.P5047349765898739039

noncomputable section

/-- A116384: Diagonal sums of the Riordan array A116382.

Offset 0, canonical program `A116384.P5047349765898739039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A116384 (n : ℕ) : ℤ :=
  A116384.P5047349765898739039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A116384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116447.P8161211096471228

`A057979(n)!*A057979(n+1)`
-/

namespace A116447.P8161211096471228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057979 n).toNat : ℤ) * A057979 (n + 1)

end

end A116447.P8161211096471228

noncomputable section

/-- A116447: a(2n) = n, a(2n+1) = n!.

Offset 0, canonical program `A116447.P8161211096471228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A116447 (n : ℕ) : ℤ :=
  A116447.P8161211096471228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A116447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116487.P16519514305196677635

`round(A244725(2*n)/(((n+1)²+n)²-n^4))`
-/

namespace A116487.P16519514305196677635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A244725 (2 * n) : ℚ) / ((((n + 1) ^ 2 + n) ^ 2 : ℤ) - (n ^ 4 : ℤ) : ℚ))

end

end A116487.P16519514305196677635

noncomputable section

/-- A116487: First digit after decimal point in decimal representation of (1+1/n)^n.

Offset 1, canonical program `A116487.P16519514305196677635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A116487 (n : ℕ) : ℤ :=
  A116487.P16519514305196677635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A116487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116572.P3284969235691833188

`ceil(abs(4-A000040(n+1))/5)`
-/

namespace A116572.P3284969235691833188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|4 - A000040 (n + 1)| : ℚ) / 5⌉

end

end A116572.P3284969235691833188

noncomputable section

/-- A116572: a(n) = floor(prime(n)/5) for n > 2, a(1) = a(2) = 1.

Offset 1, canonical program `A116572.P3284969235691833188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116572 (n : ℕ) : ℤ :=
  A116572.P3284969235691833188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116576.P8299248494025184444

`∑[∑[record[A276658(n+1)]]]`
-/

namespace A116576.P8299248494025184444
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116576.P8299248494025184444

noncomputable section

/-- A116576: Number of distinct squares D(n) in the n-th iterate of the tribonacci morphism (a -> ab, b -> ac, c -> a) on the letter a.

Offset 4, canonical program `A116576.P8299248494025184444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A116576 (n : ℕ) : ℤ :=
  A116576.P8299248494025184444.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A116576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116579.P1934188919371270679

`floor(A000040(abs(2-n)+3)/6)`
-/

namespace A116579.P1934188919371270679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (|2 - (n : ℤ)| + 3).toNat : ℚ) / 6⌋

end

end A116579.P1934188919371270679

noncomputable section

/-- A116579: a(1) = a(2) = 1; a(n) = floor(prime(n)/6) for n > 2.

Offset 1, canonical program `A116579.P1934188919371270679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116579 (n : ℕ) : ℤ :=
  A116579.P1934188919371270679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116714.P5720931361368883710

`A100683(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A116714.P5720931361368883710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A100683 n + a (n - 1)

end

end A116714.P5720931361368883710

noncomputable section

/-- A116714: Number of permutations of length n that avoid the patterns 321, 1342, 4123.

Offset 0, canonical program `A116714.P5720931361368883710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A116714 (n : ℕ) : ℤ :=
  A116714.P5720931361368883710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A116714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116726.P1660123306156606521

`∑[A202012(n)+∑[A000100(n)]]`
-/

namespace A116726.P1660123306156606521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116726.P1660123306156606521

noncomputable section

/-- A116726: Number of permutations of length n which avoid the patterns 213, 1234, 2431.

Offset 1, canonical program `A116726.P1660123306156606521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A116726 (n : ℕ) : ℤ :=
  A116726.P1660123306156606521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A116726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116746.P3587289007981454688

`A008776(n)-∑[A094723(n)]`
-/

namespace A116746.P3587289007981454688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116746.P3587289007981454688

noncomputable section

/-- A116746: Number of permutations of length n which avoid the patterns 1243, 4123, 4213.

Offset 1, canonical program `A116746.P3587289007981454688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A116746 (n : ℕ) : ℤ :=
  A116746.P3587289007981454688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A116746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116757.P14793402824670207077

`∑[A001815(n)+n]+1`
-/

namespace A116757.P14793402824670207077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116757.P14793402824670207077

noncomputable section

/-- A116757: Number of permutations of length n which avoid the patterns 1324, 2314, 4312.

Offset 1, canonical program `A116757.P14793402824670207077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A116757 (n : ℕ) : ℤ :=
  A116757.P14793402824670207077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A116757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116774.P7955953011893595407

`A000124(n)+∑[∑[A103290(n)]]`
-/

namespace A116774.P7955953011893595407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116774.P7955953011893595407

noncomputable section

/-- A116774: Number of permutations of length n which avoid the patterns 2143, 2341, 4312; or avoid the patterns 1234, 1432, 3412.

Offset 1, canonical program `A116774.P7955953011893595407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116774 (n : ℕ) : ℤ :=
  A116774.P7955953011893595407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116837.P17209511271887823155

`2*(2*a(n-1)-a(n-2))-A010892(n)` with `a(0)=1, a(1)=2`
-/

namespace A116837.P17209511271887823155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * a (n - 1) - a (n - 2)) - A010892 n

end

end A116837.P17209511271887823155

noncomputable section

/-- A116837: Number of permutations of length n which avoid the patterns 3421, 4123, 4312; or avoid the patterns 2341, 3142, 3214.

Offset 1, canonical program `A116837.P17209511271887823155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A116837 (n : ℕ) : ℤ :=
  A116837.P17209511271887823155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A116837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116942.P10060715374549380448

`floor((A000982(A100795(n+1))+n)/2)`
-/

namespace A116942.P10060715374549380448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000982 (A100795 (n + 1)).toNat + (n : ℤ) : ℚ) / 2⌋

end

end A116942.P10060715374549380448

noncomputable section

/-- A116942: Permutation of the natural numbers in conjunction with A116939 and A003056.

Offset 0, canonical program `A116942.P10060715374549380448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116942 (n : ℕ) : ℤ :=
  A116942.P10060715374549380448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116995.P12832703324765891542

`A000326(A000040(n+1))`
-/

namespace A116995.P12832703324765891542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A000040 (n + 1)).toNat

end

end A116995.P12832703324765891542

noncomputable section

/-- A116995: Pentagonal numbers with prime indices.

Offset 1, canonical program `A116995.P12832703324765891542`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116995 (n : ℕ) : ℤ :=
  A116995.P12832703324765891542.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117012.P9702005270601097127

`p?[A028557(n+1)-3*(-1)^n]`
-/

namespace A117012.P9702005270601097127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (n + 1) - 3 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117012.P9702005270601097127

noncomputable section

/-- A117012: Primes of the form k^2+5*k+c (k>=0), where c=3 for even k and c=-3 for odd k.

Offset 1, canonical program `A117012.P9702005270601097127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A117012 (n : ℕ) : ℤ :=
  A117012.P9702005270601097127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A117012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117109.P83652352233922109

`∑{d}[n+1, A007427(#)*A073570((n+1)/#)]`
-/

namespace A117109.P83652352233922109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A073570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117109.P83652352233922109

noncomputable section

/-- A117109: Moebius transform of binomial(n+3, 4).

Offset 1, canonical program `A117109.P83652352233922109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117109 (n : ℕ) : ℤ :=
  A117109.P83652352233922109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117143.P8365364006383304082

`Δ[A000601(n)]+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A117143.P8365364006383304082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 3)

end

end A117143.P8365364006383304082

noncomputable section

/-- A117143: Number of partitions of n in which any two parts differ by at most 3.

Offset 1, canonical program `A117143.P8365364006383304082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. -/
def A117143 (n : ℕ) : ℤ :=
  A117143.P8365364006383304082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. -/
def A117143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117152.P11692183672418118795

`∑[A086926(n)]`
-/

namespace A117152.P11692183672418118795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117152.P11692183672418118795

noncomputable section

/-- A117152: Sum of product of Fibonacci and triangular numbers.

Offset 0, canonical program `A117152.P11692183672418118795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A117152 (n : ℕ) : ℤ :=
  A117152.P11692183672418118795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A117152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117186.P16189362140189374884

`A045621(n)+A027306(n)`
-/

namespace A117186.P16189362140189374884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n + A027306 n

end

end A117186.P16189362140189374884

noncomputable section

/-- A117186: Expansion of (1+x)c(x^2)/((1-xc(x^2))*sqrt(1-4x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117186.P16189362140189374884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A117186 (n : ℕ) : ℤ :=
  A117186.P16189362140189374884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A117186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117229.P2958333672756986876

`∑{digits}[n, A087049(#)]`
-/

namespace A117229.P2958333672756986876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A087049 x).sum

end

end A117229.P2958333672756986876

noncomputable section

/-- A117229: Number of decimal digits of n in {0,1,4,8,9}.

Offset 0, canonical program `A117229.P2958333672756986876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117229 (n : ℕ) : ℤ :=
  A117229.P2958333672756986876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117472.P6896553093448825116

`A155923(floor(3*n/2)+3)`
-/

namespace A117472.P6896553093448825116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (⌊3 * ((n : ℚ) / 2)⌋ + 3).toNat

end

end A117472.P6896553093448825116

noncomputable section

/-- A117472: Values of c in a^2 + b^2 = c^2, where b - a = 17 and gcd(a,b,c)=1.

Offset 1, canonical program `A117472.P6896553093448825116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A117472 (n : ℕ) : ℤ :=
  A117472.P6896553093448825116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A117472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117475.P640661815065372066

`A156567(A001651(n+1)+2)`
-/

namespace A117475.P640661815065372066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A001651 (n + 1) + 2).toNat

end

end A117475.P640661815065372066

noncomputable section

/-- A117475: The values of c in a^2 + b^2 = c^2 where b - a = 23 and gcd(a,b,c) = 1.

Offset 1, canonical program `A117475.P640661815065372066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A117475 (n : ℕ) : ℤ :=
  A117475.P640661815065372066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A117475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117485.P9752384446201333472

`A115266(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A117485.P9752384446201333472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A115266 n + a (n - 2)

end

end A117485.P9752384446201333472

noncomputable section

/-- A117485: Expansion of x^9/((1-x)*(1-x^2)*(1-x^3))^2.

Offset 9, canonical program `A117485.P9752384446201333472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117485 (n : ℕ) : ℤ :=
  A117485.P9752384446201333472.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117671.P860725926744981913

`A081181(2*n)`
-/

namespace A117671.P860725926744981913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081181 (2 * n)

end

end A117671.P860725926744981913

noncomputable section

/-- A117671: a(n) = binomial(3*n+1, n+1).

Offset 0, canonical program `A117671.P860725926744981913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A117671 (n : ℕ) : ℤ :=
  A117671.P860725926744981913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A117671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117676.P2600702969936227066

`A060464(n+1)²`
-/

namespace A117676.P2600702969936227066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) ^ 2

end

end A117676.P2600702969936227066

noncomputable section

/-- A117676: Squares for which the digital root is also a square.

Offset 0, canonical program `A117676.P2600702969936227066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117676 (n : ℕ) : ℤ :=
  A117676.P2600702969936227066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117677.P11119658557963893335

`A070824((n+1)²)`
-/

namespace A117677.P11119658557963893335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 ((n + 1) ^ 2)

end

end A117677.P11119658557963893335

noncomputable section

/-- A117677: a(n) = number of divisors of n^2 (excluding 1 and n^2).

Offset 1, canonical program `A117677.P11119658557963893335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117677 (n : ℕ) : ℤ :=
  A117677.P11119658557963893335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117719.P2688201268573301251

`A089928(n)+A135153(n)²`
-/

namespace A117719.P2688201268573301251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089928 n + A135153 n ^ 2

end

end A117719.P2688201268573301251

noncomputable section

/-- A117719: a(2n) = A001653(n) (Numbers n such that 2*n^2 - 1 is a square), a(2n+1) = A038725(n+1).

Offset 0, canonical program `A117719.P2688201268573301251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A117719 (n : ℕ) : ℤ :=
  A117719.P2688201268573301251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A117719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117792.P17211875692657687818

`A117791(n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A117792.P17211875692657687818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A117791 (n - 2) + a (n - 2)

end

end A117792.P17211875692657687818

noncomputable section

/-- A117792: First entry of the vector (M^n)w, where M is the 6x6 matrix [[0, 1, 0, 0, 0, 0, ], [0, 0, 1, 0, 0, 0], [0, 0, 0, 1, 0, 0], [0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 1], [1, 0, -1, 0, 1, 1]] and w is the column vector [0, 1, 1, 2, 3, 5].

Offset 0, canonical program `A117792.P17211875692657687818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A117792 (n : ℕ) : ℤ :=
  A117792.P17211875692657687818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A117792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117793.P2060671107007092421

`A000326(floor(5*n/2))`
-/

namespace A117793.P2060671107007092421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 ⌊5 * ((n : ℚ) / 2)⌋.toNat

end

end A117793.P2060671107007092421

noncomputable section

/-- A117793: Pentagonal numbers divisible by 5.

Offset 1, canonical program `A117793.P2060671107007092421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4001 terms. -/
def A117793 (n : ℕ) : ℤ :=
  A117793.P2060671107007092421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4001 terms. -/
def A117793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117795.P17562383556456651923

`A000566(A047352(n+1))`
-/

namespace A117795.P17562383556456651923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047352 (n + 1)).toNat

end

end A117795.P17562383556456651923

noncomputable section

/-- A117795: Heptagonal numbers divisible by 7.

Offset 1, canonical program `A117795.P17562383556456651923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2858 terms. -/
def A117795 (n : ℕ) : ℤ :=
  A117795.P17562383556456651923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2858 terms. -/
def A117795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117796.P7154377782179391691

`A001106(A047274(n+1)+n)`
-/

namespace A117796.P7154377782179391691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A047274 (n + 1) + (n : ℤ)).toNat

end

end A117796.P7154377782179391691

noncomputable section

/-- A117796: Enneagonal numbers divisible by 9.

Offset 1, canonical program `A117796.P7154377782179391691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A117796 (n : ℕ) : ℤ :=
  A117796.P7154377782179391691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A117796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117797.P11222363613984097648

`A028994(∑[gcd(2, n)²]-4)`
-/

namespace A117797.P11222363613984097648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 (∑ j ∈ Finset.range (n + 1), f1 j - 4)

end

end A117797.P11222363613984097648

noncomputable section

/-- A117797: Decagonal numbers divisible by 10.

Offset 1, canonical program `A117797.P11222363613984097648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A117797 (n : ℕ) : ℤ :=
  A117797.P11222363613984097648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A117797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117798.P16552918837814940565

`A051872(2*A008851(n+1))`
-/

namespace A117798.P16552918837814940565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 (2 * A008851 (n + 1)).toNat

end

end A117798.P16552918837814940565

noncomputable section

/-- A117798: Icosagonal numbers divisible by 20.

Offset 1, canonical program `A117798.P16552918837814940565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A117798 (n : ℕ) : ℤ :=
  A117798.P16552918837814940565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A117798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117804.P17019267012547572643

`A055642(n)+a(n-1)` with `a(0)=1`
-/

namespace A117804.P17019267012547572643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 n + a (n - 1)

end

end A117804.P17019267012547572643

noncomputable section

/-- A117804: Natural position of n in the string 12345678910111213....

Offset 1, canonical program `A117804.P17019267012547572643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117804 (n : ℕ) : ℤ :=
  A117804.P17019267012547572643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117806.P16597823138856235406

`a(A083920(A083920(n)+1))+1` with `a(0)=1`
-/

namespace A117806.P16597823138856235406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A083920 (A083920 n + 1).toNat).toNat + 1

end

end A117806.P16597823138856235406

noncomputable section

/-- A117806: n appears {a(1) + a(2) + ... + a(n-1)} times (with a(1) = 1).

Offset 1, canonical program `A117806.P16597823138856235406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A117806 (n : ℕ) : ℤ :=
  (A117806.P16597823138856235406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A117806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117826.P12196296091663511553

`a(n-4)*A008621(n)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A117826.P12196296091663511553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 4) * A008621 n

end

end A117826.P12196296091663511553

noncomputable section

/-- A117826: First four terms of the sequence are doubled, then those numbers are tripled and then those numbers are quadrupled, etc.

Offset 1, canonical program `A117826.P12196296091663511553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A117826 (n : ℕ) : ℤ :=
  A117826.P12196296091663511553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A117826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117900.P4931029659330977014

`A008619(n)+A004526(A110090(n))`
-/

namespace A117900.P4931029659330977014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A004526 (A110090 n).toNat

end

end A117900.P4931029659330977014

noncomputable section

/-- A117900: Expansion of (1 + 2*x + 4*x^2 + 4*x^3 + 2*x^4)/((1+x)*(1-x^3)^2).

Offset 0, canonical program `A117900.P4931029659330977014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117900 (n : ℕ) : ℤ :=
  A117900.P4931029659330977014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117961.P17924509354445677278

`A000040(n+1)*(2*A000040(n+1)-1)`
-/

namespace A117961.P17924509354445677278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (2 * A000040 (n + 1) - 1)

end

end A117961.P17924509354445677278

noncomputable section

/-- A117961: Hexagonal numbers with prime indices.

Offset 1, canonical program `A117961.P17924509354445677278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117961 (n : ℕ) : ℤ :=
  A117961.P17924509354445677278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118001.P7504210016249544694

`A118000(n+1)-A118000(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118001.P7504210016249544694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118000 (n + 1) - A118000 n

end

end A118001.P7504210016249544694

noncomputable section

/-- A118001: a(n) = smallest integer >= n which is coprime to A118000(n-1). a(n) = A118000(n) - A118000(n-1).

Offset 1, canonical program `A118001.P7504210016249544694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118001 (n : ℕ) : ℤ :=
  A118001.P7504210016249544694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118003.P1087298648720468450

`A118002(n+1)-A118002(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118003.P1087298648720468450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 (n + 1) - A118002 n

end

end A118003.P1087298648720468450

noncomputable section

/-- A118003: a(n) = largest integer <= n which is coprime to A118002(n-1). a(n) = A118002(n) - A118002(n-1).

Offset 1, canonical program `A118003.P1087298648720468450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118003 (n : ℕ) : ℤ :=
  A118003.P1087298648720468450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118256.P3763547980877692601

`xor(10*a(n-1), A066247(n+1))` with `a(0)=1`
-/

namespace A118256.P3763547980877692601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A066247 (n + 1))

end

end A118256.P3763547980877692601

noncomputable section

/-- A118256: Concatenation for i=1 to n of A005171(i); also A118255 in base 2.

Offset 1, canonical program `A118256.P3763547980877692601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A118256 (n : ℕ) : ℤ :=
  A118256.P3763547980877692601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A118256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118425.P11488403813007551376

`∑[A006478(n)]`
-/

namespace A118425.P11488403813007551376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118425.P11488403813007551376

noncomputable section

/-- A118425: Number of binary sequences of length n containing exactly one subsequence 001.

Offset 0, canonical program `A118425.P11488403813007551376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A118425 (n : ℕ) : ℤ :=
  A118425.P11488403813007551376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A118425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118430.P1656725586426241276

`n*A134816(2*(n+1))-A228364(2*n+1)`
-/

namespace A118430.P1656725586426241276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134816 (2 * (n + 1)) - A228364 (2 * n + 1)

end

end A118430.P1656725586426241276

noncomputable section

/-- A118430: Number of binary sequences of length n containing exactly one subsequence 010.

Offset 0, canonical program `A118430.P1656725586426241276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A118430 (n : ℕ) : ℤ :=
  A118430.P1656725586426241276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A118430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118443.P2729383799526764967

`Δ[A139011(n)]*A087960(n)*(n+1)`
-/

namespace A118443.P2729383799526764967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087960 n * (n + 1 : ℤ)

end

end A118443.P2729383799526764967

noncomputable section

/-- A118443: Row sums of triangle A118441, which is the matrix log of triangle A118435.

Offset 0, canonical program `A118443.P2729383799526764967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A118443 (n : ℕ) : ℤ :=
  A118443.P2729383799526764967.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A118443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118538.P16184586288289674409

`A000040(n+2)-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118538.P16184586288289674409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - 6

end

end A118538.P16184586288289674409

noncomputable section

/-- A118538: a(n) = A000040(n+1) - 6.

Offset 1, canonical program `A118538.P16184586288289674409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118538 (n : ℕ) : ℤ :=
  A118538.P16184586288289674409.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118648.P15042325621871813191

`A020707(n+2)-A003269(n+8)`
-/

namespace A118648.P15042325621871813191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (n + 2) - A003269 (n + 8)

end

end A118648.P15042325621871813191

noncomputable section

/-- A118648: a(n) is the number of binary strings of length n+3 such that there exists a subsequence of length 4 with 2 ones in it.

Offset 4, canonical program `A118648.P15042325621871813191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A118648 (n : ℕ) : ℤ :=
  A118648.P15042325621871813191.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A118648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118667.P9513714402765321333

`record[A266664(n)-A271751(n)]`
-/

namespace A118667.P9513714402765321333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 n - A271751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118667.P9513714402765321333

noncomputable section

/-- A118667: a(n) = a(n-1)+ (abs(2^a(n-1)*a(n-1)) mod 10).

Offset 0, canonical program `A118667.P9513714402765321333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A118667 (n : ℕ) : ℤ :=
  A118667.P9513714402765321333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A118667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118732.P12855575041181134329

`eq[1, gcd(2, A004166(n))]`
-/

namespace A118732.P12855575041181134329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A004166 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118732.P12855575041181134329

noncomputable section

/-- A118732: Numbers k such that 3^k has odd digit sum.

Offset 1, canonical program `A118732.P12855575041181134329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A118732 (n : ℕ) : ℤ :=
  (A118732.P12855575041181134329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A118732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118733.P8706932286287417508

`lt[A004166(n)%2, 1]`
-/

namespace A118733.P8706932286287417508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004166 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118733.P8706932286287417508

noncomputable section

/-- A118733: Numbers k such that 3^k has even digit sum.

Offset 1, canonical program `A118733.P8706932286287417508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A118733 (n : ℕ) : ℤ :=
  (A118733.P8706932286287417508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A118733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118742.P10284877803935730397

`lt[A001414(n+1), n+1]`
-/

namespace A118742.P10284877803935730397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118742.P10284877803935730397

noncomputable section

/-- A118742: Numbers n for which the expression n!/(n+1) is an integer.

Offset 0, canonical program `A118742.P10284877803935730397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118742 (n : ℕ) : ℤ :=
  (A118742.P10284877803935730397.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118777.P17471600368289246204

`2*A086936(n+1)-(n+1)`
-/

namespace A118777.P17471600368289246204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086936 (n + 1) - (n + 1 : ℤ)

end

end A118777.P17471600368289246204

noncomputable section

/-- A118777: a(0) = 1; n > 0: a(n) = a(n-1) + d, d = +-1 if n is prime/nonprime.

Offset 0, canonical program `A118777.P17471600368289246204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118777 (n : ℕ) : ℤ :=
  A118777.P17471600368289246204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118952.P17357093969252730800

`char[eq[2, ∑{e}[1-A006257(n), #]]-1]`
-/

namespace A118952.P17357093969252730800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006257 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118952.P17357093969252730800

noncomputable section

/-- A118952: Characteristic function of numbers that can be written as p+2^k, where p is prime and p less than 2^k (A118957).

Offset 1, canonical program `A118952.P17357093969252730800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118952 (n : ℕ) : ℤ :=
  (A118952.P17357093969252730800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118974.P8447123743662257129

`∑[A000108(n)-A000957(n+1)]-A000957(n)`
-/

namespace A118974.P8447123743662257129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A000957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000957 n

end

end A118974.P8447123743662257129

noncomputable section

/-- A118974: Sum of the lengths of the first descents in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A118974.P8447123743662257129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A118974 (n : ℕ) : ℤ :=
  A118974.P8447123743662257129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A118974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119283.P13203872640390937685

`∑[(-1)^n*A007598(n)]`
-/

namespace A119283.P13203872640390937685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P13203872640390937685

noncomputable section

/-- A119283: Alternating sum of the squares of the first n Fibonacci numbers.

Offset 0, canonical program `A119283.P13203872640390937685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A119283 (n : ℕ) : ℤ :=
  A119283.P13203872640390937685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A119283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119285.P16234836750788060480

`∑[(1-A001611(n))²²*(-1)^n]`
-/

namespace A119285.P16234836750788060480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A001611 n) ^ 2) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119285.P16234836750788060480

noncomputable section

/-- A119285: Alternating sum of the fourth powers of the first n Fibonacci numbers.

Offset 0, canonical program `A119285.P16234836750788060480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A119285 (n : ℕ) : ℤ :=
  A119285.P16234836750788060480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A119285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119432.P2492859987505692241

`lt[1, A062356(n+1)]+1`
-/

namespace A119432.P2492859987505692241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119432.P2492859987505692241

noncomputable section

/-- A119432: Numbers k such that 2*phi(k) <= k.

Offset 1, canonical program `A119432.P2492859987505692241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. -/
def A119432 (n : ℕ) : ℤ :=
  (A119432.P2492859987505692241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. -/
def A119432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119515.P15306216086998357068

`(A161680(n)+A001296(n))*A033999(n)`
-/

namespace A119515.P15306216086998357068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + A001296 n) * A033999 n

end

end A119515.P15306216086998357068

noncomputable section

/-- A119515: Expansion of x*(x^3+2*x^2+3*x-1)/(x+1)^5.

Offset 0, canonical program `A119515.P15306216086998357068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119515 (n : ℕ) : ℤ :=
  A119515.P15306216086998357068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119575.P17905336988431938056

`(n+3)²*A000108(n)`
-/

namespace A119575.P17905336988431938056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) * A000108 n

end

end A119575.P17905336988431938056

noncomputable section

/-- A119575: a(n) = binomial(2*n,n)*(n+3)^2/(n+1).

Offset 0, canonical program `A119575.P17905336988431938056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119575 (n : ℕ) : ℤ :=
  A119575.P17905336988431938056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A119575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119737.P16586167656667184699

`∑[∑{d}[n+1, A000045(abs(2-#))]]`
-/

namespace A119737.P16586167656667184699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000045 |2 - (d : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119737.P16586167656667184699

noncomputable section

/-- A119737: a(n) = Sum_{k=1..n} Fibonacci(floor(n/k)).

Offset 1, canonical program `A119737.P16586167656667184699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A119737 (n : ℕ) : ℤ :=
  A119737.P16586167656667184699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A119737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119749.P8910904632272446904

`A101400(n)-A092886(n)`
-/

namespace A119749.P8910904632272446904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 n - A092886 n

end

end A119749.P8910904632272446904

noncomputable section

/-- A119749: Number of compositions of n into odd blocks with one element in each block distinguished.

Offset 1, canonical program `A119749.P8910904632272446904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A119749 (n : ℕ) : ℤ :=
  A119749.P8910904632272446904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A119749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119911.P4672350782965020361

`eq[0, A102460(A032741(n)+1)]`
-/

namespace A119911.P4672350782965020361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119911.P4672350782965020361

noncomputable section

/-- A119911: Natural numbers with number of divisors not equal to a Lucas number.

Offset 1, canonical program `A119911.P4672350782965020361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5975 terms. -/
def A119911 (n : ℕ) : ℤ :=
  (A119911.P4672350782965020361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5975 terms. -/
def A119911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119915.P7571024474425089576

`A331321(n)-A052542(n)`
-/

namespace A119915.P7571024474425089576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331321 n - A052542 n

end

end A119915.P7571024474425089576

noncomputable section

/-- A119915: Number of ternary words of length n and having exactly one run of 0's of odd length.

Offset 0, canonical program `A119915.P7571024474425089576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A119915 (n : ℕ) : ℤ :=
  A119915.P7571024474425089576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A119915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119968.P124219824570650553

`∑{d}[A000079(A086520(n+3)), C(n, #-1)]`
-/

namespace A119968.P124219824570650553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A086520 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose n ((d : ℤ) - 1).toNat

end

end A119968.P124219824570650553

noncomputable section

/-- A119968: Binomial transform of Fredholm-Rueppel sequence.

Offset 0, canonical program `A119968.P124219824570650553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A119968 (n : ℕ) : ℤ :=
  (A119968.P124219824570650553.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A119968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119979.P3742151129110419223

`A000079(a(n-1))%(n+1)+1` with `a(0)=1`
-/

namespace A119979.P3742151129110419223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000079 (a (n - 1)).toNat) (n + 1 : ℤ) + 1

end

end A119979.P3742151129110419223

noncomputable section

/-- A119979: a(n+1)=(2^a(n) mod n)+1, with a(0)=1.

Offset 0, canonical program `A119979.P3742151129110419223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A119979 (n : ℕ) : ℤ :=
  A119979.P3742151129110419223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A119979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120068.P10133728377091870438

`eq[1, A054024(3*∏{e}[A000040(n+1)+1, #])]+1`
-/

namespace A120068.P10133728377091870438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (3 * (∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120068.P10133728377091870438

noncomputable section

/-- A120068: Numbers n such that n-th prime + 1 is squarefree.

Offset 1, canonical program `A120068.P10133728377091870438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A120068 (n : ℕ) : ℤ :=
  (A120068.P10133728377091870438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A120068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120112.P14661727368300187479

`1-A020500(n+1)`
-/

namespace A120112.P14661727368300187479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A020500 (n + 1)

end

end A120112.P14661727368300187479

noncomputable section

/-- A120112: Row sums of number triangle A120111.

Offset 0, canonical program `A120112.P14661727368300187479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120112 (n : ℕ) : ℤ :=
  A120112.P14661727368300187479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120114.P382930504862310490

`A099996(n+2)/A099996(n+1)`
-/

namespace A120114.P382930504862310490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 (n + 2) : ℚ) / (A099996 (n + 1) : ℚ)

end

end A120114.P382930504862310490

noncomputable section

/-- A120114: a(n) = lcm(1, ..., 2n+4)/lcm(1, ..., 2n+2).

Offset 0, canonical program `A120114.P382930504862310490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120114.P382930504862310490.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120173.P5816523446729280124

`Δ[round(6/5*a(n-1))]%A120164(n+1)` with `a(0)=21`
-/

namespace A120173.P5816523446729280124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21] fun n f1 =>
  SequenceMachineLib.roundAway ((6 : ℚ) / 5 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A120164 (n + 1))

end

end A120173.P5816523446729280124

noncomputable section

/-- A120173: a(n) = 4 + floor((3 + Sum_{j=1..n-1} a(j))/5).

Offset 1, canonical program `A120173.P5816523446729280124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A120173 (n : ℕ) : ℤ :=
  A120173.P5816523446729280124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A120173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120227.P17218014583784792360

`p?[A024894(n+1)+5]-5`
-/

namespace A120227.P17218014583784792360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5

end

end A120227.P17218014583784792360

noncomputable section

/-- A120227: Numbers k such that 5+k and 5*k+1 are prime.

Offset 1, canonical program `A120227.P17218014583784792360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. -/
def A120227 (n : ℕ) : ℤ :=
  A120227.P17218014583784792360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. -/
def A120227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120305.P7501613952261659235

`ceil(A026638(n)/3)`
-/

namespace A120305.P7501613952261659235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026638 n : ℚ) / 3⌉

end

end A120305.P7501613952261659235

noncomputable section

/-- A120305: a(n) = Sum_{i=0..n} Sum_{j=0..n} (-1)^(i+j) * (i+j)!/(i!j!).

Offset 0, canonical program `A120305.P7501613952261659235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A120305 (n : ℕ) : ℤ :=
  A120305.P7501613952261659235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A120305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120433.P11483961287416046233

`eq[0, A089898(n)%5]`
-/

namespace A120433.P11483961287416046233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089898 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120433.P11483961287416046233

noncomputable section

/-- A120433: Numbers whose Roman numeral representation uses the subtractive notation.

Offset 1, canonical program `A120433.P11483961287416046233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A120433 (n : ℕ) : ℤ :=
  (A120433.P11483961287416046233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A120433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120435.P10240398656846760236

`A003418(∑[char[∑[n]]])/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A120435.P10240398656846760236
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A120435.P10240398656846760236

noncomputable section

/-- A120435: Triangle read by rows: T(n,k) = lcm(1,2,3,4,...,n)/k (1 <= k <= n).

Offset 1, canonical program `A120435.P10240398656846760236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A120435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120435.P10240398656846760236.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A120435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120437.P11021873601031036809

`A066443(val(n+1, 3))`
-/

namespace A120437.P11021873601031036809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066443 (SequenceMachineLib.valuation (n + 1) 3)

end

end A120437.P11021873601031036809

noncomputable section

/-- A120437: Differences of A037314 (sum of base-3 digits of n = sum of base-9 digits of n).

Offset 1, canonical program `A120437.P11021873601031036809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120437 (n : ℕ) : ℤ :=
  A120437.P11021873601031036809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120439.P4767351886391421295

`A105825(p?[A000040(n+1)+2])-2`
-/

namespace A120439.P4767351886391421295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105825 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A120439.P4767351886391421295

noncomputable section

/-- A120439: Average of twin-prime pairs modulo 5.

Offset 1, canonical program `A120439.P4767351886391421295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120439 (n : ℕ) : ℤ :=
  A120439.P4767351886391421295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120533.P10358607324598335575

`p?[A065530(n+8)]`
-/

namespace A120533.P10358607324598335575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120533.P10358607324598335575

noncomputable section

/-- A120533: Primes having a prime number of digits.

Offset 1, canonical program `A120533.P10358607324598335575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A120533 (n : ℕ) : ℤ :=
  A120533.P10358607324598335575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A120533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120582.P131286747964255095

`2^n*A309970(n)`
-/

namespace A120582.P131286747964255095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A309970 n

end

end A120582.P131286747964255095

noncomputable section

/-- A120582: Hankel transform of Sum_{k=0..floor(n/2)} binomial(2*k, k).

Offset 0, canonical program `A120582.P131286747964255095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A120582 (n : ℕ) : ℤ :=
  A120582.P131286747964255095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A120582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120589.P7693857463884301680

`3*A000108(n-a(C(2, n)))` with `a(0)=1, a(1)=2`
-/

namespace A120589.P7693857463884301680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A000108 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A120589.P7693857463884301680

noncomputable section

/-- A120589: Self-convolution of A120588, such that a(n) = 3*A120588(n) for n >= 2.

Offset 0, canonical program `A120589.P7693857463884301680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A120589 (n : ℕ) : ℤ :=
  A120589.P7693857463884301680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A120589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120614.P9863577410631039700

`Δ[A120613(n+1)]`
-/

namespace A120614.P9863577410631039700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P9863577410631039700

noncomputable section

/-- A120614: a(n) = g(n+1) - g(n) where g(k) = floor(phi*floor(k/phi)) and phi = (1+sqrt(5))/2.

Offset 1, canonical program `A120614.P9863577410631039700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120614 (n : ℕ) : ℤ :=
  A120614.P9863577410631039700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120640.P2112450133369881442

`p?[comp[floor((A000040(n+1)/2+1)/2)]]`
-/

namespace A120640.P2112450133369881442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000040 (n + 1) : ℚ) / 2 + 1) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120640.P2112450133369881442

noncomputable section

/-- A120640: Primes such that their quadruple is not 1 away from a prime number.

Offset 1, canonical program `A120640.P2112450133369881442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A120640 (n : ℕ) : ℤ :=
  (A120640.P2112450133369881442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. -/
def A120640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120701.P7189344048740639039

`A022844(n+1)-A000007(n)`
-/

namespace A120701.P7189344048740639039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) - A000007 n

end

end A120701.P7189344048740639039

noncomputable section

/-- A120701: Number of unit circles which fit touching a circle of radius n-1, i.e., with their centers on a circle of radius n.

Offset 1, canonical program `A120701.P7189344048740639039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120701 (n : ℕ) : ℤ :=
  A120701.P7189344048740639039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120749.P1339787007737446380

`eq[1, gcd(2, A195119(2*n))]`
-/

namespace A120749.P1339787007737446380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A195119 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120749.P1339787007737446380

noncomputable section

/-- A120749: Numbers k such that {k* sqrt(2)} > 1/2, where { } = fractional part.

Offset 1, canonical program `A120749.P1339787007737446380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120749 (n : ℕ) : ℤ :=
  (A120749.P1339787007737446380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120771.P3899375979631753214

`A187068(∑[gcd(3, n)!]-1-Δ[n²])`
-/

namespace A120771.P3899375979631753214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A120771.P3899375979631753214

noncomputable section

/-- A120771: Expansion of ( 1-x^3+x^4+x^5-x^8 ) / ( 1-2*x^3-x^6+x^9 ).

Offset 0, canonical program `A120771.P3899375979631753214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 858 terms. -/
def A120771 (n : ℕ) : ℤ :=
  A120771.P3899375979631753214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 858 terms. -/
def A120771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120865.P2031921682378064138

`(n+1)²%(A003512(n+1)+1)`
-/

namespace A120865.P2031921682378064138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A003512 (n + 1) + 1)

end

end A120865.P2031921682378064138

noncomputable section

/-- A120865: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 12*n^2.

Offset 1, canonical program `A120865.P2031921682378064138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120865 (n : ℕ) : ℤ :=
  A120865.P2031921682378064138.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120867.P17303152158714817452

`A005843(n+1)²%(A001962(n+1)+1)`
-/

namespace A120867.P17303152158714817452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1) ^ 2) (A001962 (n + 1) + 1)

end

end A120867.P17303152158714817452

noncomputable section

/-- A120867: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 20*n^2.

Offset 1, canonical program `A120867.P17303152158714817452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120867 (n : ℕ) : ℤ :=
  A120867.P17303152158714817452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120962.P14779563592514611130

`A056849(A022998(n)+20)`
-/

namespace A120962.P14779563592514611130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A022998 n + 20).toNat

end

end A120962.P14779563592514611130

noncomputable section

/-- A120962: Final digit (in decimal system) of n^(n^n), i.e., n^(n^n) mod 10.

Offset 0, canonical program `A120962.P14779563592514611130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A120962 (n : ℕ) : ℤ :=
  A120962.P14779563592514611130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A120962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120989.P9429380718523382807

`∑[A070859(n+1)]`
-/

namespace A120989.P9429380718523382807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120989.P9429380718523382807

noncomputable section

/-- A120989: Level of the first leaf (in preorder traversal) of a binary tree, summed over all binary trees with n edges. A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

Offset 1, canonical program `A120989.P9429380718523382807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A120989 (n : ℕ) : ℤ :=
  A120989.P9429380718523382807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A120989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121023.P11383018328225784367

`A011533(3*n+1)`
-/

namespace A121023.P11383018328225784367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (3 * n + 1)

end

end A121023.P11383018328225784367

noncomputable section

/-- A121023: Multiples of 3 containing a 3 in their decimal representation.

Offset 1, canonical program `A121023.P11383018328225784367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A121023 (n : ℕ) : ℤ :=
  A121023.P11383018328225784367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A121023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121104.P7697072616591891120

`A000045(n+1)%p?[2*n+1]`
-/

namespace A121104.P7697072616591891120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A121104.P7697072616591891120

noncomputable section

/-- A121104: a(n) = Fibonacci(n - 1) modulo the n-th prime number.

Offset 2, canonical program `A121104.P7697072616591891120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A121104 (n : ℕ) : ℤ :=
  A121104.P7697072616591891120.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A121104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121149.P18402369660270908208

`abs(A036496(n)+Δ[n²])`
-/

namespace A121149.P18402369660270908208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A121149.P18402369660270908208

noncomputable section

/-- A121149: Minimal number of vertices in a planar connected n-polyhex.

Offset 0, canonical program `A121149.P18402369660270908208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A121149 (n : ℕ) : ℤ :=
  A121149.P18402369660270908208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A121149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121238.P4056181645974606047

`(-1)^(1+n+A088585(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121238.P4056181645974606047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (1 + ((n : ℤ) + A088585 n) : ℤ)

end

end A121238.P4056181645974606047

noncomputable section

/-- A121238: a(n) = (-1)^(1+n+A088585(n)).

Offset 0, canonical program `A121238.P4056181645974606047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121238.P4056181645974606047.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121241.P15878834596494796512

`(-1)^(1+A088567(n))`
-/

namespace A121241.P15878834596494796512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (1 + A088567 n : ℤ)

end

end A121241.P15878834596494796512

noncomputable section

/-- A121241: Change 0 to -1 in A090678.

Offset 0, canonical program `A121241.P15878834596494796512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088567, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121241 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121241.P15878834596494796512.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088567, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121246.P2636457287280973120

`A062541(n+1)+1`
-/

namespace A121246.P2636457287280973120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062541 (n + 1) + 1

end

end A121246.P2636457287280973120

noncomputable section

/-- A121246: a(n) = ceiling((Pi^n)*(e^n)).

Offset 1, canonical program `A121246.P2636457287280973120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A121246 (n : ℕ) : ℤ :=
  A121246.P2636457287280973120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A121246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121254.P16208038616091930799

`4*A117202(n+1)`
-/

namespace A121254.P16208038616091930799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A117202 (n + 1)

end

end A121254.P16208038616091930799

noncomputable section

/-- A121254: Number of conjugated cycles composed of six carbons in (n,n)-nanotubes in terms of the number of naphthalene units.

Offset 1, canonical program `A121254.P16208038616091930799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A121254 (n : ℕ) : ℤ :=
  A121254.P16208038616091930799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A121254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121302.P2926939976869836642

`A122367(n)-A106803(n)`
-/

namespace A121302.P2926939976869836642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A106803 n

end

end A121302.P2926939976869836642

noncomputable section

/-- A121302: Number of directed column-convex polyominoes having at least one 1-cell column.

Offset 1, canonical program `A121302.P2926939976869836642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A121302 (n : ℕ) : ℤ :=
  A121302.P2926939976869836642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A121302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121349.P15763248953113553043

`A155996((n+1)%(2*n+1))`
-/

namespace A121349.P15763248953113553043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 ((n + 1) % (2 * n + 1))

end

end A121349.P15763248953113553043

noncomputable section

/-- A121349: a(n) = round(Pi*2^(n-1)) for n >= 1, a(0) = 1.

Offset 0, canonical program `A121349.P15763248953113553043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A121349 (n : ℕ) : ℤ :=
  A121349.P15763248953113553043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A121349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121364.P8196647731655511100

`A000045(n+1)-A103609(n+2)`
-/

namespace A121364.P8196647731655511100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A103609 (n + 2)

end

end A121364.P8196647731655511100

noncomputable section

/-- A121364: Convolution of A066983 with the double Fibonacci sequence A103609.

Offset 1, canonical program `A121364.P8196647731655511100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A121364 (n : ℕ) : ℤ :=
  A121364.P8196647731655511100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A121364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121458.P8085228022822558792

`Δ[A215492(n)/3]`
-/

namespace A121458.P8085228022822558792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215492 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121458.P8085228022822558792

noncomputable section

/-- A121458: Expansion of (1+x-2*x^2)/(1-21*x^2-7*x^3).

Offset 0, canonical program `A121458.P8085228022822558792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A121458 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121458.P8085228022822558792.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A121458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121488.P122503888271819747

`8*(n+1)²-A022842(n+1)²`
-/

namespace A121488.P122503888271819747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) ^ 2 : ℤ) - A022842 (n + 1) ^ 2

end

end A121488.P122503888271819747

noncomputable section

/-- A121488: a(n) = 8*n^2 - floor(n*sqrt(8))^2.

Offset 1, canonical program `A121488.P122503888271819747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121488 (n : ℕ) : ℤ :=
  A121488.P122503888271819747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121489.P12798281435474896578

`A077121(n+1)²-A000578(n+1)`
-/

namespace A121489.P12798281435474896578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (n + 1) ^ 2 - A000578 (n + 1)

end

end A121489.P12798281435474896578

noncomputable section

/-- A121489: Diagonal of array A121490.

Offset 1, canonical program `A121489.P12798281435474896578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121489 (n : ℕ) : ℤ :=
  A121489.P12798281435474896578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121568.P4227926827138898866

`A103609(p?[2*n+1])`
-/

namespace A121568.P4227926827138898866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121568.P4227926827138898866

noncomputable section

/-- A121568: a(n) = Fibonacci((prime(n)-1)/2), n>1.

Offset 2, canonical program `A121568.P4227926827138898866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A121568 (n : ℕ) : ℤ :=
  A121568.P4227926827138898866.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A121568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121569.P15915441709861159405

`A000045((p?[2*n+1]+3)/2)-1`
-/

namespace A121569.P15915441709861159405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2)).toNat - 1

end

end A121569.P15915441709861159405

noncomputable section

/-- A121569: a(n) = Fibonacci((prime(n)+3)/2) - 1.

Offset 2, canonical program `A121569.P15915441709861159405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A121569 (n : ℕ) : ℤ :=
  A121569.P15915441709861159405.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A121569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121646.P14075488146765142285

`-A226205(n+1)`
-/

namespace A121646.P14075488146765142285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226205 (n + 1)

end

end A121646.P14075488146765142285

noncomputable section

/-- A121646: a(n) = Fibonacci(n-1)^2 - Fibonacci(n)^2.

Offset 1, canonical program `A121646.P14075488146765142285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A121646 (n : ℕ) : ℤ :=
  A121646.P14075488146765142285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A121646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121686.P6471584685073129166

`2*A344191(n+1)`
-/

namespace A121686.P6471584685073129166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344191 (n + 1)

end

end A121686.P6471584685073129166

noncomputable section

/-- A121686: Number of branches in all binary trees with n edges. A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

Offset 1, canonical program `A121686.P6471584685073129166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A121686 (n : ℕ) : ℤ :=
  A121686.P6471584685073129166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A121686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121718.P14571265844613409242

`∑[A024635(2*n)/2]`
-/

namespace A121718.P14571265844613409242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024635 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P14571265844613409242

noncomputable section

/-- A121718: Write 0, 1, ..., n in base 3 and add as if they were decimal numbers.

Offset 0, canonical program `A121718.P14571265844613409242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A121718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121718.P14571265844613409242.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A121718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121838.P16436035567511670183

`A121831(n+1)+1`
-/

namespace A121838.P16436035567511670183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121831 (n + 1) + 1

end

end A121838.P16436035567511670183

noncomputable section

/-- A121838: Ceiling((Pi+e)^n).

Offset 1, canonical program `A121838.P16436035567511670183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A121838 (n : ℕ) : ℤ :=
  A121838.P16436035567511670183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A121838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122155.P17533266698539878574

`or(A035327(abs(1-n)), A053644(n))`
-/

namespace A122155.P17533266698539878574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 |1 - (n : ℤ)|.toNat) (A053644 n)

end

end A122155.P17533266698539878574

noncomputable section

/-- A122155: Simple involution of natural numbers: List each block of (2^k)-1 numbers (from (2^k)+1 to 2^(k+1) - 1) in reverse order and fix the powers of 2.

Offset 0, canonical program `A122155.P17533266698539878574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155 (n : ℕ) : ℤ :=
  A122155.P17533266698539878574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122162.P5902055598394030594

`∑{d}[n+1, #*A185505(#)]`
-/

namespace A122162.P5902055598394030594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A185505 d

end

end A122162.P5902055598394030594

noncomputable section

/-- A122162: Coefficient of q-series for constant term of Tate curve.

Offset 1, canonical program `A122162.P5902055598394030594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122162 (n : ℕ) : ℤ :=
  A122162.P5902055598394030594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122181.P3473842249069912040

`lt[5, A032741(n)]`
-/

namespace A122181.P3473842249069912040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A122181.P3473842249069912040

noncomputable section

/-- A122181: Numbers k that can be written as k = x*y*z with 1 < x < y < z (A122180(k) > 0).

Offset 1, canonical program `A122181.P3473842249069912040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. -/
def A122181 (n : ℕ) : ℤ :=
  (A122181.P3473842249069912040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. -/
def A122181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122248.P3723099654744921739

`A122247(n)-C(n, 2)`
-/

namespace A122248.P3723099654744921739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n - (Nat.choose n 2 : ℤ)

end

end A122248.P3723099654744921739

noncomputable section

/-- A122248: a(n) - a(n-1) = A113474(n).

Offset 0, canonical program `A122248.P3723099654744921739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122248 (n : ℕ) : ℤ :=
  A122248.P3723099654744921739.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122249.P11506506410736040305

`4^A122247(n)`
-/

namespace A122249.P11506506410736040305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A122247 n : ℤ)

end

end A122249.P11506506410736040305

noncomputable section

/-- A122249: Numerators of Hankel transform of 1/(2n+1).

Offset 0, canonical program `A122249.P11506506410736040305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122249.P11506506410736040305.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122251.P8285076149538175054

`9^A122250(n)`
-/

namespace A122251.P8285076149538175054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A122250 n : ℤ)

end

end A122251.P8285076149538175054

noncomputable section

/-- A122251: Numerators of Hankel transform of 1/(3n+1) (conjecture).

Offset 0, canonical program `A122251.P8285076149538175054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122251.P8285076149538175054.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122264.P4329901969960442374

`A001749(n+2)-(3*n+10)`
-/

namespace A122264.P4329901969960442374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 2) - (3 * n + 10 : ℤ)

end

end A122264.P4329901969960442374

noncomputable section

/-- A122264: a(n) = n + 1 + 2*Sum_{j=0..n-2} (j*prime(n-j+2) - (2*j-1)*prime(n-j+1) + (j-1)*prime(n-j)).

Offset 1, canonical program `A122264.P4329901969960442374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122264 (n : ℕ) : ℤ :=
  A122264.P4329901969960442374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122276.P10869181094470073014

`floor((A096535(n+1)+A096535(n))/(n+2))`
-/

namespace A122276.P10869181094470073014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096535 (n + 1) + A096535 n : ℚ) / (n + 2 : ℚ)⌋

end

end A122276.P10869181094470073014

noncomputable section

/-- A122276: If b(n-1) + b(n-2) < n then a(n) = 0, otherwise a(n) = 1, where b(i) = A096535(i).

Offset 2, canonical program `A122276.P10869181094470073014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122276 (n : ℕ) : ℤ :=
  A122276.P10869181094470073014.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096535, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122368.P5676242027812293193

`Δ[Δ[A124292(n+1)]]`
-/

namespace A122368.P5676242027812293193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122368.P5676242027812293193

noncomputable section

/-- A122368: Dimension of 4-variable non-commutative harmonics (twisted derivative). The dimension of the space of non-commutative polynomials in 4 variables which are killed by all symmetric differential operators (where for a monomial w, d_{xi} ( xi w ) = w and d_{xi} ( xj w ) = 0 for i/=j).

Offset 1, canonical program `A122368.P5676242027812293193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A122368 (n : ℕ) : ℤ :=
  A122368.P5676242027812293193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A122368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122439.P7332562686488176912

`∑[A134270(n)]`
-/

namespace A122439.P7332562686488176912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122439.P7332562686488176912

noncomputable section

/-- A122439: Expansion of 1/(1-2x-x^2+4x^4).

Offset 0, canonical program `A122439.P7332562686488176912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A122439 (n : ℕ) : ℤ :=
  A122439.P7332562686488176912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A122439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122588.P13030422920720481771

`∑[A370568(n)]`
-/

namespace A122588.P13030422920720481771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122588.P13030422920720481771

noncomputable section

/-- A122588: Expansion of x/(1 - 9*x + 28*x^2 - 35*x^3 + 15*x^4 - x^5).

Offset 1, canonical program `A122588.P13030422920720481771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A122588 (n : ℕ) : ℤ :=
  A122588.P13030422920720481771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A122588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122667.P6559643357923191415

`A083292(∑{d}[n+1, (n+1)/lcm(#, n+1)])`
-/

namespace A122667.P6559643357923191415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (Nat.lcm d (n + 1) : ℚ))).toNat

end

end A122667.P6559643357923191415

noncomputable section

/-- A122667: a(n) = d(n)_d(n) = A122618(d(n)), where d = A000005, and A122618 = "n read in base n".

Offset 1, canonical program `A122667.P6559643357923191415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122667 (n : ℕ) : ℤ :=
  A122667.P6559643357923191415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122751.P10125038466054384336

`A105636(floor((n+1)/2))+A002817(A008619(n))`
-/

namespace A122751.P10125038466054384336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 ⌊(n + 1 : ℚ) / 2⌋.toNat + A002817 (A008619 n).toNat

end

end A122751.P10125038466054384336

noncomputable section

/-- A122751: Number of essentially different semi-magic squares of order 3 with semimagic sum n.

Offset 3, canonical program `A122751.P10125038466054384336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122751 (n : ℕ) : ℤ :=
  A122751.P10125038466054384336.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122793.P1326162538501970736

`(n+1)²-∑[A003056(n)]`
-/

namespace A122793.P1326162538501970736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122793.P1326162538501970736

noncomputable section

/-- A122793: Connell sum sequence (partial sums of the Connell sequence).

Offset 1, canonical program `A122793.P1326162538501970736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122793 (n : ℕ) : ℤ :=
  A122793.P1326162538501970736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122795.P9852274582566200938

`∑[A045929(n+1)]`
-/

namespace A122795.P9852274582566200938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P9852274582566200938

noncomputable section

/-- A122795: Connell (5,3)-sum sequence (partial sums of the (5,3)-Connell sequence).

Offset 1, canonical program `A122795.P9852274582566200938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122795 (n : ℕ) : ℤ :=
  A122795.P9852274582566200938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122796.P14610223443420944346

`∑[A045930(n+1)]`
-/

namespace A122796.P14610223443420944346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P14610223443420944346

noncomputable section

/-- A122796: Connell (3,5)-sum sequence (partial sums of the (3,5)-Connell sequence).

Offset 1, canonical program `A122796.P14610223443420944346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122796 (n : ℕ) : ℤ :=
  A122796.P14610223443420944346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122860.P11540737575163240451

`∑{d}[n+1, A033999(#-1)*A049347((n+1)/#-1)]`
-/

namespace A122860.P11540737575163240451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A049347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A122860.P11540737575163240451

noncomputable section

/-- A122860: Expansion of (1 - phi(-q)^3 / phi(-q^3)) / 6 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A122860.P11540737575163240451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122860 (n : ℕ) : ℤ :=
  A122860.P11540737575163240451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122884.P16035355748851742792

`A122886(3*n+4)`
-/

namespace A122884.P16035355748851742792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (3 * n + 4)

end

end A122884.P16035355748851742792

noncomputable section

/-- A122884: a(n+1) = 4*a(n) + 11*a(n-1) - 2*a(n-3).

Offset 1, canonical program `A122884.P16035355748851742792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A122884 (n : ℕ) : ℤ :=
  A122884.P16035355748851742792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A122884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122885.P14866467728575968621

`A122886(3*n+5)`
-/

namespace A122885.P14866467728575968621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (3 * n + 5)

end

end A122885.P14866467728575968621

noncomputable section

/-- A122885: a(n+1) = 4*a(n) + 11*a(n-1) - 2*a(n-2).

Offset 1, canonical program `A122885.P14866467728575968621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A122885 (n : ℕ) : ℤ :=
  A122885.P14866467728575968621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A122885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122918.P204401987377678618

`A008611(n)*A061347(n+1)`
-/

namespace A122918.P204401987377678618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A061347 (n + 1)

end

end A122918.P204401987377678618

noncomputable section

/-- A122918: Expansion of (1+x)^2/(1+x+x^2)^2.

Offset 0, canonical program `A122918.P204401987377678618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122918 (n : ℕ) : ℤ :=
  A122918.P204401987377678618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122920.P14462649340630122191

`Δ[record[A000957(n)]]`
-/

namespace A122920.P14462649340630122191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P14462649340630122191

noncomputable section

/-- A122920: Diagonal sums of number triangle A122919.

Offset 0, canonical program `A122920.P14462649340630122191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A122920 (n : ℕ) : ℤ :=
  A122920.P14462649340630122191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A122920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123020.P2408456225088030561

`A099780(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A123020.P2408456225088030561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A099780 (n - 2) + a (n - 1)

end

end A123020.P2408456225088030561

noncomputable section

/-- A123020: Expansion of (1 -5*x +5*x^2)/((1 -2*x)*(1 -4*x +x^2)).

Offset 0, canonical program `A123020.P2408456225088030561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A123020 (n : ℕ) : ℤ :=
  A123020.P2408456225088030561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A123020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123123.P9221843181498262709

`A052147(n+1)+C(n, n²)`
-/

namespace A123123.P9221843181498262709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A123123.P9221843181498262709

noncomputable section

/-- A123123: Numbers m such that m mod k = 2 for only one integer k in 2..m.

Offset 1, canonical program `A123123.P9221843181498262709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123123 (n : ℕ) : ℤ :=
  A123123.P9221843181498262709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123251.P6076525704975524843

`A034856(n+1)%(A321220(n)+3)`
-/

namespace A123251.P6076525704975524843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034856 (n + 1)) (A321220 n + 3)

end

end A123251.P6076525704975524843

noncomputable section

/-- A123251: Continued fraction for sqrt(2)*tan(1/sqrt(2)).

Offset 1, canonical program `A123251.P6076525704975524843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123251 (n : ℕ) : ℤ :=
  A123251.P6076525704975524843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123365.P2124579279966647089

`or(1, A045375(n+1)-1)`
-/

namespace A123365.P2124579279966647089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045375 (n + 1) - 1)

end

end A123365.P2124579279966647089

noncomputable section

/-- A123365: Values of k such that A046530(k) = (k+2)/3, where A046530(k) is the number of distinct residues of cubes mod k.

Offset 1, canonical program `A123365.P2124579279966647089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123365 (n : ℕ) : ℤ :=
  A123365.P2124579279966647089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123384.P4754925365740744026

`xor(A000007(n), A067497(n))`
-/

namespace A123384.P4754925365740744026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A067497 n)

end

end A123384.P4754925365740744026

noncomputable section

/-- A123384: Number of bits in binary expansion of 10^n.

Offset 0, canonical program `A123384.P4754925365740744026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A123384 (n : ℕ) : ℤ :=
  A123384.P4754925365740744026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A123384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123387.P17623723668972283392

`A002024(A000040(n+1)+1)`
-/

namespace A123387.P17623723668972283392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000040 (n + 1) + 1).toNat

end

end A123387.P17623723668972283392

noncomputable section

/-- A123387: Number of triangular numbers <= n-th prime.

Offset 1, canonical program `A123387.P17623723668972283392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123387 (n : ℕ) : ℤ :=
  A123387.P17623723668972283392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123389.P3133180307451027921

`round(∏[A000040(n+1)/(n+1)])`
-/

namespace A123389.P3133180307451027921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A123389.P3133180307451027921

noncomputable section

/-- A123389: Ratio of each term of the primorial function to the corresponding term of the factorial function (rounded to nearest integer).

Offset 1, canonical program `A123389.P3133180307451027921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A123389 (n : ℕ) : ℤ :=
  A123389.P3133180307451027921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A123389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123520.P2885948307093487100

`2*Δ[A317451(n)]`
-/

namespace A123520.P2885948307093487100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A123520.P2885948307093487100

noncomputable section

/-- A123520: Number of vertical dominoes in all possible tilings of a 2n X 3 grid by dominoes.

Offset 1, canonical program `A123520.P2885948307093487100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A123520 (n : ℕ) : ℤ :=
  A123520.P2885948307093487100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A123520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123533.P16758832796833403602

`p?[A083652(n)-1]`
-/

namespace A123533.P16758832796833403602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123533.P16758832796833403602

noncomputable section

/-- A123533: Primes in A001855.

Offset 1, canonical program `A123533.P16758832796833403602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1125 terms. -/
def A123533 (n : ℕ) : ℤ :=
  A123533.P16758832796833403602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1125 terms. -/
def A123533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123724.P532567778762810147

`n+1-A005843(∑[A038129(n+1)%2])`
-/

namespace A123724.P532567778762810147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038129 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123724.P532567778762810147

noncomputable section

/-- A123724: Partial sums of (-1)^floor(n*2^(1/3)).

Offset 1, canonical program `A123724.P532567778762810147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123724 (n : ℕ) : ℤ :=
  A123724.P532567778762810147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123740.P12817292357351340269

`A003849(A319433(n))`
-/

namespace A123740.P12817292357351340269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A319433 n).toNat

end

end A123740.P12817292357351340269

noncomputable section

/-- A123740: Characteristic sequence for Wythoff AB-numbers A003623.

Offset 1, canonical program `A123740.P12817292357351340269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123740 (n : ℕ) : ℤ :=
  A123740.P12817292357351340269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123914.P8963059744305604548

`A000290(A000040(n+1))-A000040(A000290(n+1))`
-/

namespace A123914.P8963059744305604548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000040 (n + 1)).toNat - A000040 (A000290 (n + 1)).toNat

end

end A123914.P8963059744305604548

noncomputable section

/-- A123914: a(n) = prime(n)^2 - prime(n^2). Commutator of (primes, squares) at n.

Offset 1, canonical program `A123914.P8963059744305604548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123914 (n : ℕ) : ℤ :=
  A123914.P8963059744305604548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123976.P17596081695645912205

`eq[1, A000007(A002752(n+1))]+1`
-/

namespace A123976.P17596081695645912205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002752 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123976.P17596081695645912205

noncomputable section

/-- A123976: Numbers k such that Fibonacci(k-1) is divisible by k.

Offset 1, canonical program `A123976.P17596081695645912205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A123976 (n : ℕ) : ℤ :=
  (A123976.P17596081695645912205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A123976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124023.P7075286621203498317

`2*(A003480(n)-a(n-1))` with `a(0)=1`
-/

namespace A124023.P7075286621203498317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A003480 n - a (n - 1))

end

end A124023.P7075286621203498317

noncomputable section

/-- A124023: G.f.: 1/(1-2*x-6*x^2+4*x^3).

Offset 0, canonical program `A124023.P7075286621203498317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A124023 (n : ℕ) : ℤ :=
  A124023.P7075286621203498317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A124023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124171.P12265873392764522970

`a(n-1)*A014306(n)+1` with `a(0)=1`
-/

namespace A124171.P12265873392764522970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014306 n + 1

end

end A124171.P12265873392764522970

noncomputable section

/-- A124171: Sequence obtained by reading the triangles shown below by rows.

Offset 1, canonical program `A124171.P12265873392764522970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124171 (n : ℕ) : ℤ :=
  A124171.P12265873392764522970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124230.P12948993916857171241

`A124229(A065033(n))`
-/

namespace A124230.P12948993916857171241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (A065033 n).toNat

end

end A124230.P12948993916857171241

noncomputable section

/-- A124230: Denominator of g(n) defined by g(1)=1, g(2n)=1/g(n)+1, g(2n+1)=g(2n).

Offset 1, canonical program `A124230.P12948993916857171241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124230 (n : ℕ) : ℤ :=
  A124230.P12948993916857171241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124316.P3020769793756547275

`∑{d}[n+1, A000203(gcd(#, (n+1)/#))]`
-/

namespace A124316.P3020769793756547275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

end

end A124316.P3020769793756547275

noncomputable section

/-- A124316: a(n) = Sum_{d|n} sigma(gcd(d,n/d)), where sigma is the sum of divisors function, A000203.

Offset 1, canonical program `A124316.P3020769793756547275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124316 (n : ℕ) : ℤ :=
  A124316.P3020769793756547275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124502.P14764511879974694041

`round(A020695(n)/(4-ϕ))`
-/

namespace A124502.P14764511879974694041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020695 n : ℝ) / (4 - Real.goldenRatio))

end

end A124502.P14764511879974694041

noncomputable section

/-- A124502: a(1)=a(2)=1; thereafter, a(n+1) = a(n) + a(n-1) + 1 if n is a multiple of 5, otherwise a(n+1) = a(n) + a(n-1).

Offset 1, canonical program `A124502.P14764511879974694041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A124502 (n : ℕ) : ℤ :=
  A124502.P14764511879974694041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A124502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124697.P1766019780813868087

`record[A302126(n)+A061084(n)]`
-/

namespace A124697.P1766019780813868087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 n + A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124697.P1766019780813868087

noncomputable section

/-- A124697: Number of base 4 circular n-digit numbers with adjacent digits differing by 1 or less.

Offset 0, canonical program `A124697.P1766019780813868087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A124697 (n : ℕ) : ℤ :=
  A124697.P1766019780813868087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A124697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124751.P5051064926766341288

`∑[A033999(n)*A103374(n+1)]`
-/

namespace A124751.P5051064926766341288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A103374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124751.P5051064926766341288

noncomputable section

/-- A124751: Expansion of (1+x^2+x^4)/(1-x^6+x^7).

Offset 0, canonical program `A124751.P5051064926766341288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2144 terms. -/
def A124751 (n : ℕ) : ℤ :=
  A124751.P5051064926766341288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2144 terms. -/
def A124751.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124820.P3957814083853428060

`∑[A052544(n)]`
-/

namespace A124820.P3957814083853428060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124820.P3957814083853428060

noncomputable section

/-- A124820: Expansion of (1-x)/(1-4*x+3*x^2-x^3).

Offset 0, canonical program `A124820.P3957814083853428060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A124820 (n : ℕ) : ℤ :=
  A124820.P3957814083853428060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A124820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125029.P11221732944019236443

`∑{e}[n+1, A080339(#)]`
-/

namespace A125029.P11221732944019236443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A080339 (Nat.factorization (f1 n) p)

end

end A125029.P11221732944019236443

noncomputable section

/-- A125029: a(n) = number of exponents in the prime factorization of n that are noncomposite.

Offset 1, canonical program `A125029.P11221732944019236443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125029 (n : ℕ) : ℤ :=
  A125029.P11221732944019236443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125059.P17901942141546187300

`∑{digits}[A006882(n), A055642(#)]`
-/

namespace A125059.P17901942141546187300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A125059.P17901942141546187300

noncomputable section

/-- A125059: Number of digits in n!!.

Offset 0, canonical program `A125059.P17901942141546187300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A125059 (n : ℕ) : ℤ :=
  A125059.P17901942141546187300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A125059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125095.P8995398085527209207

`(-1)^n*A113411(n)`
-/

namespace A125095.P8995398085527209207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113411 n

end

end A125095.P8995398085527209207

noncomputable section

/-- A125095: Expansion of phi(-x) * psi(x^4) in powers of x where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A125095.P8995398085527209207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125095 (n : ℕ) : ℤ :=
  A125095.P8995398085527209207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125122.P12366772529962582986

`char[A054965(n+1)-1]`
-/

namespace A125122.P12366772529962582986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A125122.P12366772529962582986

noncomputable section

/-- A125122: First differences of A034888.

Offset 0, canonical program `A125122.P12366772529962582986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125122 (n : ℕ) : ℤ :=
  (A125122.P12366772529962582986.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125168.P75422063822245844

`gcd(n+1, A032741(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125168.P75422063822245844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A032741 (n + 1))

end

end A125168.P75422063822245844

noncomputable section

/-- A125168: a(n) = gcd(n, A032741(n)) where A032741(n) is the number of proper divisors of n.

Offset 1, canonical program `A125168.P75422063822245844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125168 (n : ℕ) : ℤ :=
  (A125168.P75422063822245844.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125168.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125196.P720524230895024461

`∑[∑[∑[A195142(n)+2]-1]]`
-/

namespace A125196.P720524230895024461
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125196.P720524230895024461

noncomputable section

/-- A125196: Number of magic labelings of the Petersen graph with magic sum n.

Offset 0, canonical program `A125196.P720524230895024461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125196 (n : ℕ) : ℤ :=
  A125196.P720524230895024461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125292.P473886197961113192

`∪[2*A005836(n+2), A005836(n+2)]`
-/

namespace A125292.P473886197961113192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125292.P473886197961113192

noncomputable section

/-- A125292: Numbers having either no ones or no twos in their ternary representation.

Offset 1, canonical program `A125292.P473886197961113192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A125292 (n : ℕ) : ℤ :=
  (A125292.P473886197961113192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A125292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125494.P18071949956906500659

`filter[A001969(n+2), A066247(#)]`
-/

namespace A125494.P18071949956906500659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A125494.P18071949956906500659

noncomputable section

/-- A125494: Composite evil numbers.

Offset 1, canonical program `A125494.P18071949956906500659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9020 terms. -/
def A125494 (n : ℕ) : ℤ :=
  A125494.P18071949956906500659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9020 terms. -/
def A125494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125518.P13782331751493634703

`∑{d}[n+1, A000040(lcm(#, n+1))]`
-/

namespace A125518.P13782331751493634703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 (Nat.lcm d (n + 1))

end

end A125518.P13782331751493634703

noncomputable section

/-- A125518: a(n) = tau(n) * prime(n).

Offset 1, canonical program `A125518.P13782331751493634703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125518 (n : ℕ) : ℤ :=
  A125518.P13782331751493634703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125550.P15741989387128445011

`C(A000040(n+3), A000040(n+1))`
-/

namespace A125550.P15741989387128445011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 3)).toNat (A000040 (n + 1)).toNat

end

end A125550.P15741989387128445011

noncomputable section

/-- A125550: a(n) = C(prime(n+2), prime(n)).

Offset 1, canonical program `A125550.P15741989387128445011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. -/
def A125550 (n : ℕ) : ℤ :=
  (A125550.P15741989387128445011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. -/
def A125550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125811.P7529763177045100215

`∑[C(2, n+2)-(A123578(n)-n)]`
-/

namespace A125811.P7529763177045100215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - (A123578 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125811.P7529763177045100215

noncomputable section

/-- A125811: Number of coefficients in the n-th q-Bell number as a polynomial in q.

Offset 0, canonical program `A125811.P7529763177045100215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125811 (n : ℕ) : ℤ :=
  A125811.P7529763177045100215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125895.P7718260025286219249

`floor(record[A080040(n)/A000051(n)])`
-/

namespace A125895.P7718260025286219249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) / (A000051 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A125895.P7718260025286219249

noncomputable section

/-- A125895: a(n) = floor(((1+sqrt(3))/2)^n).

Offset 1, canonical program `A125895.P7718260025286219249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A125895 (n : ℕ) : ℤ :=
  A125895.P7718260025286219249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A125895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126084.P6224162469092176404

`xor(a(n-1), A000040(n))` with `a(0)=0`
-/

namespace A126084.P6224162469092176404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A000040 n)

end

end A126084.P6224162469092176404

noncomputable section

/-- A126084: a(n) = XOR of first n primes.

Offset 0, canonical program `A126084.P6224162469092176404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126084 (n : ℕ) : ℤ :=
  A126084.P6224162469092176404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126221.P15938254534647312088

`Δ[2^n-A158499(n)]`
-/

namespace A126221.P15938254534647312088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126221.P15938254534647312088

noncomputable section

/-- A126221: a(n)=c(n)+c(n-1)+2*c(n-2)+4*c(n-3)+8*c(n-4)+...+2^(n-2)*c(1)+2^(n-1)*c(0), where c(k) are the Catalan numbers (A000108).

Offset 0, canonical program `A126221.P15938254534647312088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A126221 (n : ℕ) : ℤ :=
  A126221.P15938254534647312088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A126221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126223.P12893294602299240153

`A182027(2*n)-A000108(n)`
-/

namespace A126223.P12893294602299240153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * n) - A000108 n

end

end A126223.P12893294602299240153

noncomputable section

/-- A126223: Number of level steps in all 2-Motzkin paths (i.e., Motzkin paths with blue and red level steps) of length n, without red level steps on the x-axis.

Offset 0, canonical program `A126223.P12893294602299240153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A126223 (n : ℕ) : ℤ :=
  A126223.P12893294602299240153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A126223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126237.P15877421361932700042

`a(A004525(n)-2)+1` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A126237.P15877421361932700042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n a =>
  a (A004525 n - 2).toNat + 1

end

end A126237.P15877421361932700042

noncomputable section

/-- A126237: Length of row n in table A126014.

Offset 3, canonical program `A126237.P15877421361932700042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A126237 (n : ℕ) : ℤ :=
  (A126237.P15877421361932700042.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A126237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126276.P2995708737197852384

`A008911(n+2)*A027441(n+2)`
-/

namespace A126276.P2995708737197852384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 2) * A027441 (n + 2)

end

end A126276.P2995708737197852384

noncomputable section

/-- A126276: Moment of inertia of all magic cubes of order n.

Offset 2, canonical program `A126276.P2995708737197852384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126276 (n : ℕ) : ℤ :=
  A126276.P2995708737197852384.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126567.P4001307750954268195

`(A126566(n)+A007051(n))/2`
-/

namespace A126567.P4001307750954268195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126566 n + A007051 n : ℚ) / 2

end

end A126567.P4001307750954268195

noncomputable section

/-- A126567: Sequence generated from the E6 Cartan matrix.

Offset 0, canonical program `A126567.P4001307750954268195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A126567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126567.P4001307750954268195.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A126567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126588.P7358379373479227655

`A001749(A008595(n+1))/4`
-/

namespace A126588.P7358379373479227655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A008595 (n + 1)).toNat : ℚ) / 4

end

end A126588.P7358379373479227655

noncomputable section

/-- A126588: a(n) = prime(13*n).

Offset 1, canonical program `A126588.P7358379373479227655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A126588 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126588.P7358379373479227655.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A126588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126614.P6069604956422702047

`A001045(A000040(n+2))`
-/

namespace A126614.P6069604956422702047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A000040 (n + 2)).toNat

end

end A126614.P6069604956422702047

noncomputable section

/-- A126614: a(n) = (2^prime(n) + 1)/3.

Offset 2, canonical program `A126614.P6069604956422702047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126614 (n : ℕ) : ℤ :=
  A126614.P6069604956422702047.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126702.P10490105464819873889

`A000040(A000166(n+2))`
-/

namespace A126702.P10490105464819873889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000166 (n + 2)).toNat

end

end A126702.P10490105464819873889

noncomputable section

/-- A126702: a(n) = prime(!n), where !n is subfactorial n.

Offset 2, canonical program `A126702.P10490105464819873889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126702 (n : ℕ) : ℤ :=
  A126702.P10490105464819873889.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126702.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126726.P1979793542192437975

`char[1]+Δ[A116601(n+1)]`
-/

namespace A126726.P1979793542192437975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A126726.P1979793542192437975

noncomputable section

/-- A126726: Number of squares (of nonnegative integers) that require n binary (base-2) digits.

Offset 0, canonical program `A126726.P1979793542192437975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A126726 (n : ℕ) : ℤ :=
  A126726.P1979793542192437975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A126726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126785.P45359050336835554

`A014682(A024894(n+1))-1`
-/

namespace A126785.P45359050336835554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024894 (n + 1)).toNat - 1

end

end A126785.P45359050336835554

noncomputable section

/-- A126785: Numbers k such that 10*k + 11 is prime.

Offset 1, canonical program `A126785.P45359050336835554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126785 (n : ℕ) : ℤ :=
  A126785.P45359050336835554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126792.P15384401414342231186

`a(A004523(A038502(n)))+1` with `a(0)=0`
-/

namespace A126792.P15384401414342231186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A004523 (A038502 n).toNat).toNat + 1

end

end A126792.P15384401414342231186

noncomputable section

/-- A126792: Removing the first, fourth, seventh, tenth ... term of the sequence yields the original sequence, augmented by 1.

Offset 0, canonical program `A126792.P15384401414342231186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A126792 (n : ℕ) : ℤ :=
  (A126792.P15384401414342231186.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A126792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126814.P1485272226615088206

`A007331(n+1)%16`
-/

namespace A126814.P1485272226615088206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007331 (n + 1)) 16

end

end A126814.P1485272226615088206

noncomputable section

/-- A126814: Ramanujan numbers (A000594) read mod 16.

Offset 1, canonical program `A126814.P1485272226615088206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126814 (n : ℕ) : ℤ :=
  A126814.P1485272226615088206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126815.P8310984535950292792

`A007331(n+1)%32`
-/

namespace A126815.P8310984535950292792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007331 (n + 1)) 32

end

end A126815.P8310984535950292792

noncomputable section

/-- A126815: Ramanujan numbers (A000594) read mod 32.

Offset 1, canonical program `A126815.P8310984535950292792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126815 (n : ℕ) : ℤ :=
  A126815.P8310984535950292792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126833.P17050375034510127289

`((n+1)*A013957(n+1))%25`
-/

namespace A126833.P17050375034510127289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A013957 (n + 1)) 25

end

end A126833.P17050375034510127289

noncomputable section

/-- A126833: Ramanujan numbers (A000594) read mod 25.

Offset 1, canonical program `A126833.P17050375034510127289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126833 (n : ℕ) : ℤ :=
  A126833.P17050375034510127289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126900.P10599716807792776889

`A000007(n)+18*A060446(n)`
-/

namespace A126900.P10599716807792776889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 18 * A060446 n

end

end A126900.P10599716807792776889

noncomputable section

/-- A126900: Coordination sequence for 6-dimensional cyclotomic lattice Z[zeta_18].

Offset 0, canonical program `A126900.P10599716807792776889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126900 (n : ℕ) : ℤ :=
  A126900.P10599716807792776889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126983.P5512643725349819796

`A000007(n)-A000957(n)`
-/

namespace A126983.P5512643725349819796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A000957 n

end

end A126983.P5512643725349819796

noncomputable section

/-- A126983: Expansion of 1/(1+x*c(x)), c(x) the g.f. of Catalan numbers A000108.

Offset 0, canonical program `A126983.P5512643725349819796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A126983 (n : ℕ) : ℤ :=
  A126983.P5512643725349819796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A126983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126993.P13603353054685926985

`C(A000040(n+4), A000040(n+1))`
-/

namespace A126993.P13603353054685926985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 4)).toNat (A000040 (n + 1)).toNat

end

end A126993.P13603353054685926985

noncomputable section

/-- A126993: a(n) = binomial(prime(n+3), prime(n)).

Offset 1, canonical program `A126993.P13603353054685926985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A126993 (n : ℕ) : ℤ :=
  (A126993.P13603353054685926985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A126993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127002.P12072637799414476474

`A161680(A004526(n))-A230128(n+1)`
-/

namespace A127002.P12072637799414476474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004526 n).toNat - A230128 (n + 1)

end

end A127002.P12072637799414476474

noncomputable section

/-- A127002: Number of partitions of n that have the form a+a+b+c where a,b,c are distinct.

Offset 1, canonical program `A127002.P12072637799414476474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127002 (n : ℕ) : ℤ :=
  A127002.P12072637799414476474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127220.P3789298513524943245

`3^(n+1)*A001648(n+1)`
-/

namespace A127220.P3789298513524943245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A001648 (n + 1)

end

end A127220.P3789298513524943245

noncomputable section

/-- A127220: a(n) = 3^n*tetranacci(n) or (2^n)*A001648(n).

Offset 1, canonical program `A127220.P3789298513524943245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A127220 (n : ℕ) : ℤ :=
  A127220.P3789298513524943245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A127220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127221.P17885748224761537627

`2^(n+1)*A023424(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127221.P17885748224761537627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A023424 n

end

end A127221.P17885748224761537627

noncomputable section

/-- A127221: a(n) = 2^n*pentanacci(n) or (2^n)*A023424(n-1).

Offset 1, canonical program `A127221.P17885748224761537627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127221 (n : ℕ) : ℤ :=
  A127221.P17885748224761537627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127222.P7118341410658629518

`3^(n+1)*A023424(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127222.P7118341410658629518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A023424 n

end

end A127222.P7118341410658629518

noncomputable section

/-- A127222: a(n) = 3^n*pentanacci(n) or (3^n)*A023424(n-1).

Offset 1, canonical program `A127222.P7118341410658629518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127222 (n : ℕ) : ℤ :=
  A127222.P7118341410658629518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127245.P10214430626137893152

`(1-A101671(n))²`
-/

namespace A127245.P10214430626137893152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A101671 n) ^ 2

end

end A127245.P10214430626137893152

noncomputable section

/-- A127245: Row sums of a signed Thue-Morse related triangle.

Offset 0, canonical program `A127245.P10214430626137893152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A127245 (n : ℕ) : ℤ :=
  A127245.P10214430626137893152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. -/
def A127245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127254.P8491110763917439245

`2-A101671(n)!`
-/

namespace A127254.P8491110763917439245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (A101671 n).toNat : ℤ)

end

end A127254.P8491110763917439245

noncomputable section

/-- A127254: (0,1) sequence whose zero positions are indexed by twice the odious numbers given by A091855.

Offset 0, canonical program `A127254.P8491110763917439245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127254 (n : ℕ) : ℤ :=
  A127254.P8491110763917439245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127330.P16633446527090742344

`A084634(A003056(n))-1+n`
-/

namespace A127330.P16633446527090742344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084634 (A003056 n).toNat - 1 + (n : ℤ)

end

end A127330.P16633446527090742344

noncomputable section

/-- A127330: Begin with the empty sequence and a starting number s = 0. At step k (k >= 1) append the k consecutive numbers s to s+k-1 and change the starting number (for the next step) to 2s+2.

Offset 0, canonical program `A127330.P16633446527090742344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A127330 (n : ℕ) : ℤ :=
  A127330.P16633446527090742344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A127330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127332.P16514336127862808940

`∑{d}[n+1, #*A002321((n+1)/#)]`
-/

namespace A127332.P16514336127862808940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002321 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127332.P16514336127862808940

noncomputable section

/-- A127332: A126988 * A002321.

Offset 1, canonical program `A127332.P16514336127862808940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127332 (n : ℕ) : ℤ :=
  A127332.P16514336127862808940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127366.P8947721637193413628

`abs(A038608(A000196(n))+A038608(n))`
-/

namespace A127366.P8947721637193413628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038608 (A000196 n).toNat + A038608 n|

end

end A127366.P8947721637193413628

noncomputable section

/-- A127366: Let m = floor(sqrt(n)); if n and m have the same parity, a(n) = n + m, otherwise a(n) = n - m.

Offset 0, canonical program `A127366.P8947721637193413628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127366 (n : ℕ) : ℤ :=
  A127366.P8947721637193413628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127594.P10174064817014405205

`floor(A127593(n+1)/256)`
-/

namespace A127594.P10174064817014405205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127593 (n + 1) : ℚ) / 256⌋

end

end A127594.P10174064817014405205

noncomputable section

/-- A127594: Numbers k such that 256 k + 85 is prime.

Offset 1, canonical program `A127594.P10174064817014405205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127594 (n : ℕ) : ℤ :=
  A127594.P10174064817014405205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127602.P2171243829068660252

`floor(∏[root(A000040(n+1), 5)])`
-/

namespace A127602.P2171243829068660252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) ^ (1 / (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127602.P2171243829068660252

noncomputable section

/-- A127602: Integer part of 5th root of product of first n primes.

Offset 1, canonical program `A127602.P2171243829068660252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A127602 (n : ℕ) : ℤ :=
  A127602.P2171243829068660252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A127602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127603.P13681282639560671348

`floor(∏[root(A000040(n+1), 6)])`
-/

namespace A127603.P13681282639560671348
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) ^ (1 / (6 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127603.P13681282639560671348

noncomputable section

/-- A127603: Integer part of 6th root of product of first n primes.

Offset 1, canonical program `A127603.P13681282639560671348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A127603 (n : ℕ) : ℤ :=
  A127603.P13681282639560671348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A127603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127775.P8714129053454180162

`abs(Δ[A003056(n)²])`
-/

namespace A127775.P8714129053454180162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A127775.P8714129053454180162

noncomputable section

/-- A127775: Triangle read by rows: row n consists of n-1 zeros followed by 2n-1.

Offset 1, canonical program `A127775.P8714129053454180162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127775 (n : ℕ) : ℤ :=
  A127775.P8714129053454180162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127848.P7432483440862649154

`A078009(n)-(2^n)%2`
-/

namespace A127848.P7432483440862649154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n - ((2 ^ n % 2 : ℕ) : ℤ)

end

end A127848.P7432483440862649154

noncomputable section

/-- A127848: Series reversion of x/(1+6x+5x^2).

Offset 0, canonical program `A127848.P7432483440862649154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A127848 (n : ℕ) : ℤ :=
  A127848.P7432483440862649154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A127848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127917.P4502626296132180412

`6*C(A000040(n+1)+1, 3)`
-/

namespace A127917.P4502626296132180412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (A000040 (n + 1) + 1).toNat 3

end

end A127917.P4502626296132180412

noncomputable section

/-- A127917: Product of three numbers: n-th prime, previous number, and following number.

Offset 1, canonical program `A127917.P4502626296132180412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127917 (n : ℕ) : ℤ :=
  (A127917.P4502626296132180412.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127922.P7742617181907590982

`A000330((A000040(n+2)-1)/2)`
-/

namespace A127922.P7742617181907590982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.roundAway ((A000040 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A127922.P7742617181907590982

noncomputable section

/-- A127922: 1/24 of product of three numbers: n-th prime, previous and following number.

Offset 2, canonical program `A127922.P7742617181907590982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127922 (n : ℕ) : ℤ :=
  A127922.P7742617181907590982.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128023.P1388865192342252309

`A128022(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128023.P1388865192342252309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128022 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128023.P1388865192342252309

noncomputable section

/-- A128023: a(n) = A128022(n)/n.

Offset 1, canonical program `A128023.P1388865192342252309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128023.P1388865192342252309.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128058.P8782829189957341793

`∑[A098331(n)]`
-/

namespace A128058.P8782829189957341793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128058.P8782829189957341793

noncomputable section

/-- A128058: Expansion of 1/((1-x)sqrt(1-2x+5x^2)).

Offset 0, canonical program `A128058.P8782829189957341793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A128058 (n : ℕ) : ℤ :=
  A128058.P8782829189957341793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A128058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128131.P13813260551128197255

`2^(n*(n+3)/2)*A128130(n)`
-/

namespace A128131.P13813260551128197255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n : ℚ) * ((n + 3 : ℚ) / 2) : ℝ) * (A128130 n : ℝ)

end

end A128131.P13813260551128197255

noncomputable section

/-- A128131: a(n) = 2^A000096(n)*A128130(n).

Offset 0, canonical program `A128131.P13813260551128197255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128131.P13813260551128197255.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128162.P13483672336227845714

`(3^(n+1))%A000045(n+1)`
-/

namespace A128162.P13483672336227845714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 ^ (n + 1) : ℤ) (A000045 (n + 1))

end

end A128162.P13483672336227845714

noncomputable section

/-- A128162: a(n) = 3^n modulo Fibonacci(n).

Offset 1, canonical program `A128162.P13483672336227845714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A128162 (n : ℕ) : ℤ :=
  A128162.P13483672336227845714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A128162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128213.P13790773796663311292

`∑[abs(1-n)*A010892(n)]`
-/

namespace A128213.P13790773796663311292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128213.P13790773796663311292

noncomputable section

/-- A128213: Expansion of (1-x+2x^2-2x^3)/(1-x+x^2)^2.

Offset 0, canonical program `A128213.P13790773796663311292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128213 (n : ℕ) : ℤ :=
  A128213.P13790773796663311292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128217.P3498553532010773377

`2*A002620(A123578(n))+n`
-/

namespace A128217.P3498553532010773377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002620 (A123578 n).toNat + (n : ℤ)

end

end A128217.P3498553532010773377

noncomputable section

/-- A128217: Nonnegative integers n such that the square-root of n differs from its nearest integer by less than 1/4.

Offset 1, canonical program `A128217.P3498553532010773377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128217 (n : ℕ) : ℤ :=
  A128217.P3498553532010773377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128415.P9541622155865260801

`or(1, A002249(2*n)-1)`
-/

namespace A128415.P9541622155865260801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002249 (2 * n) - 1)

end

end A128415.P9541622155865260801

noncomputable section

/-- A128415: Expansion of (1-4x^2)/(1+3x+4x^2).

Offset 0, canonical program `A128415.P9541622155865260801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A128415 (n : ℕ) : ℤ :=
  A128415.P9541622155865260801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A128415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128498.P1028460976792090380

`∑[A008804(n)*A056594(n)]`
-/

namespace A128498.P1028460976792090380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128498.P1028460976792090380

noncomputable section

/-- A128498: Fourth column (m=3) of triangle A128494.

Offset 0, canonical program `A128498.P1028460976792090380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128498 (n : ℕ) : ℤ :=
  A128498.P1028460976792090380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128504.P3896867054553103699

`A165202(n)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A128504.P3896867054553103699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  A165202 n - a (n - 3)

end

end A128504.P3896867054553103699

noncomputable section

/-- A128504: Row sums of array A128503 (second convolution of Chebyshev's S(n,x) = U(n,x/2) polynomials).

Offset 0, canonical program `A128504.P3896867054553103699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128504 (n : ℕ) : ℤ :=
  A128504.P3896867054553103699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128714.P13217542877390641147

`Δ[A033321(abs(1-n))]`
-/

namespace A128714.P13217542877390641147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128714.P13217542877390641147

noncomputable section

/-- A128714: Number of skew Dyck paths of semilength n ending with a left step.

Offset 0, canonical program `A128714.P13217542877390641147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A128714 (n : ℕ) : ℤ :=
  A128714.P13217542877390641147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A128714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128863.P8012791891336178982

`A032741(a(n-1)+n)+1` with `a(0)=1`
-/

namespace A128863.P8012791891336178982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032741 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A128863.P8012791891336178982

noncomputable section

/-- A128863: a(0)=1. For n >= 1, a(n) = number of positive divisors of (n+a(n-1)).

Offset 0, canonical program `A128863.P8012791891336178982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A128863 (n : ℕ) : ℤ :=
  A128863.P8012791891336178982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A128863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128880.P6039307139623609588

`18*A074378(n)+1`
-/

namespace A128880.P6039307139623609588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A074378 n + 1

end

end A128880.P6039307139623609588

noncomputable section

/-- A128880: Triangular numbers congruent to 1 or 5 mod 6.

Offset 1, canonical program `A128880.P6039307139623609588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128880 (n : ℕ) : ℤ :=
  A128880.P6039307139623609588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128930.P2282588821497152883

`∑[∑{p}[n+1, val(#, n+1)]]*A000040(n+1)`
-/

namespace A128930.P2282588821497152883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000040 (n + 1)

end

end A128930.P2282588821497152883

noncomputable section

/-- A128930: a(n) = prime(n) * pi(n).

Offset 1, canonical program `A128930.P2282588821497152883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128930 (n : ℕ) : ℤ :=
  A128930.P2282588821497152883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128971.P8661958015488978352

`2^(n-C(∑[char[∑[n]]], 2))*A000975(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A128971.P8661958015488978352
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
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A000975 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ)

end

end A128971.P8661958015488978352

noncomputable section

/-- A128971: A130125 * A000012.

Offset 0, canonical program `A128971.P8661958015488978352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128971 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128971.P8661958015488978352.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129074.P15010075502388195749

`2*A129070(n+1)-1`
-/

namespace A129074.P15010075502388195749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129070 (n + 1) - 1

end

end A129074.P15010075502388195749

noncomputable section

/-- A129074: Numbers k such that (k-9)/8 is prime.

Offset 1, canonical program `A129074.P15010075502388195749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129074 (n : ℕ) : ℤ :=
  A129074.P15010075502388195749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129160.P1319237836063940696

`A026378(n+1)+A026378(n+1)%A085362(n)`
-/

namespace A129160.P1319237836063940696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) + Int.tmod (A026378 (n + 1)) (A085362 n)

end

end A129160.P1319237836063940696

noncomputable section

/-- A129160: Sum of the semi-abscissae of the first returns to the axis over all skew Dyck paths of semilength n.

Offset 1, canonical program `A129160.P1319237836063940696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129160 (n : ℕ) : ℤ :=
  A129160.P1319237836063940696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129164.P7832225125447669697

`∑[A026378(n+1)]`
-/

namespace A129164.P7832225125447669697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P7832225125447669697

noncomputable section

/-- A129164: Sum of pyramid weights in all skew Dyck paths of semilength n.

Offset 1, canonical program `A129164.P7832225125447669697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129164 (n : ℕ) : ℤ :=
  A129164.P7832225125447669697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129167.P2551358773714472388

`∑[A033321(n)]-1`
-/

namespace A129167.P2551358773714472388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A129167.P2551358773714472388

noncomputable section

/-- A129167: Number of base pyramids in all skew Dyck paths of semilength n.

Offset 0, canonical program `A129167.P2551358773714472388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A129167 (n : ℕ) : ℤ :=
  A129167.P2551358773714472388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A129167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129480.P12919160068811475760

`A000040(17*(n+1))`
-/

namespace A129480.P12919160068811475760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (17 * (n + 1))

end

end A129480.P12919160068811475760

noncomputable section

/-- A129480: a(n) = Prime(17*n).

Offset 1, canonical program `A129480.P12919160068811475760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A129480 (n : ℕ) : ℤ :=
  A129480.P12919160068811475760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A129480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129502.P17986608590404691632

`C(A100995(2*(n+1))+1, 2)`
-/

namespace A129502.P17986608590404691632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100995 (2 * (n + 1)) + 1).toNat 2

end

end A129502.P17986608590404691632

noncomputable section

/-- A129502: For n=2^k, a(n) = binomial(k + 2, 2), else 0.

Offset 1, canonical program `A129502.P17986608590404691632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129502 (n : ℕ) : ℤ :=
  (A129502.P17986608590404691632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129543.P9396367169730864309

`A000040(1+A003188(n))`
-/

namespace A129543.P9396367169730864309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A003188 n).toNat

end

end A129543.P9396367169730864309

noncomputable section

/-- A129543: Gray code ordering of the prime numbers.

Offset 0, canonical program `A129543.P9396367169730864309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129543 (n : ℕ) : ℤ :=
  A129543.P9396367169730864309.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129565.P15275435627333648511

`A183301(n+1)+1-A183300(n+1)`
-/

namespace A129565.P15275435627333648511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) + (1 - A183300 (n + 1))

end

end A129565.P15275435627333648511

noncomputable section

/-- A129565: A115359 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A129565.P15275435627333648511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129565 (n : ℕ) : ℤ :=
  A129565.P15275435627333648511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129639.P5937670592414867916

`2*(a(n-1)-A030436(n))` with `a(0)=12`
-/

namespace A129639.P5937670592414867916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  2 * (a (n - 1) - A030436 n)

end

end A129639.P5937670592414867916

noncomputable section

/-- A129639: Number of meaningful differential operations of the k-th order on the space R^12.

Offset 12, canonical program `A129639.P5937670592414867916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A129639 (n : ℕ) : ℤ :=
  A129639.P5937670592414867916.a (n - 12)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A129639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129647.P64381371946848490

`A116921(n+1)*A116922(n+1)`
-/

namespace A129647.P64381371946848490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (n + 1) * A116922 (n + 1)

end

end A129647.P64381371946848490

noncomputable section

/-- A129647: Largest order of a permutation of n elements with exactly 2 cycles. Also the largest LCM of a 2-partition of n.

Offset 1, canonical program `A129647.P64381371946848490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129647 (n : ℕ) : ℤ :=
  A129647.P64381371946848490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129704.P9024700291421447973

`Δ[A122582(n+5)/2]`
-/

namespace A129704.P9024700291421447973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122582 (n + 5) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129704.P9024700291421447973

noncomputable section

/-- A129704: Expansion of 1/(x^5 - 2*x^4 + x^3 - 2*x^2 + x - 1).

Offset 0, canonical program `A129704.P9024700291421447973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. -/
def A129704 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129704.P9024700291421447973.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. -/
def A129704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129715.P9130381007623836916

`A320947(n+1)-Δ[A020695(n)]`
-/

namespace A129715.P9130381007623836916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320947 (n + 1) - (f1 (n + 1) - f1 n)

end

end A129715.P9130381007623836916

noncomputable section

/-- A129715: Number of runs in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword. A run is a maximal sequence of consecutive identical letters.

Offset 0, canonical program `A129715.P9130381007623836916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A129715 (n : ℕ) : ℤ :=
  A129715.P9130381007623836916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A129715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129869.P14571244715897988627

`floor(((n-1)/2+n)*A000108(n))`
-/

namespace A129869.P14571244715897988627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 1 : ℚ) / 2 + (n : ℚ)) * (A000108 n : ℚ)⌋

end

end A129869.P14571244715897988627

noncomputable section

/-- A129869: Number of positive clusters of type D_n.

Offset 1, canonical program `A129869.P14571244715897988627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129869 (n : ℕ) : ℤ :=
  A129869.P14571244715897988627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129891.P17659601998160518947

`Δ[A021008(n)]-A021008(n)`
-/

namespace A129891.P17659601998160518947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A021008 n

end

end A129891.P17659601998160518947

noncomputable section

/-- A129891: Sum of coefficients of polynomials defined in comments lines.

Offset 0, canonical program `A129891.P17659601998160518947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A129891 (n : ℕ) : ℤ :=
  A129891.P17659601998160518947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A129891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129929.P16773512358274300600

`abs(A138112(n)-2*a(n-1))` with `a(0)=1`
-/

namespace A129929.P16773512358274300600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A138112 n - 2 * a (n - 1)|

end

end A129929.P16773512358274300600

noncomputable section

/-- A129929: Binomial transform of the periodic sequence with periodic pattern 1,1,1,0,0.

Offset 0, canonical program `A129929.P16773512358274300600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A129929 (n : ℕ) : ℤ :=
  A129929.P16773512358274300600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A129929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129953.P2036751280986642059

`A129952(n+1)-A129952(n)`
-/

namespace A129953.P2036751280986642059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 1) - A129952 n

end

end A129953.P2036751280986642059

noncomputable section

/-- A129953: First differences of A129952.

Offset 0, canonical program `A129953.P2036751280986642059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129953 (n : ℕ) : ℤ :=
  A129953.P2036751280986642059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129955.P16073970261024358546

`A129954(n+1)-A129954(n)`
-/

namespace A129955.P16073970261024358546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 (n + 1) - A129954 n

end

end A129955.P16073970261024358546

noncomputable section

/-- A129955: Third differences of A129952.

Offset 0, canonical program `A129955.P16073970261024358546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129955 (n : ℕ) : ℤ :=
  A129955.P16073970261024358546.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129966.P17854025744578487545

`C(A162699(n+1)-n, 2)`
-/

namespace A129966.P17854025744578487545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A162699 (n + 1) - (n : ℤ)).toNat 2

end

end A129966.P17854025744578487545

noncomputable section

/-- A129966: Triangular numbers which are differences of squares.

Offset 1, canonical program `A129966.P17854025744578487545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129966 (n : ℕ) : ℤ :=
  (A129966.P17854025744578487545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129984.P17242023915517901134

`A131577(n)+A101890(n)`
-/

namespace A129984.P17242023915517901134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A101890 n

end

end A129984.P17242023915517901134

noncomputable section

/-- A129984: First differences of A129983.

Offset 0, canonical program `A129984.P17242023915517901134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129984 (n : ℕ) : ℤ :=
  A129984.P17242023915517901134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129985.P8901878146702470410

`A031346(A000040(n+1))`
-/

namespace A129985.P8901878146702470410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A000040 (n + 1)).toNat

end

end A129985.P8901878146702470410

noncomputable section

/-- A129985: Multiplicative persistence of the prime numbers.

Offset 1, canonical program `A129985.P8901878146702470410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A031346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129985 (n : ℕ) : ℤ :=
  A129985.P8901878146702470410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A031346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129987.P1378896886703514554

`A131577(n)+A101891(n)`
-/

namespace A129987.P1378896886703514554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A101891 n

end

end A129987.P1378896886703514554

noncomputable section

/-- A129987: Third differences of A129983.

Offset 0, canonical program `A129987.P1378896886703514554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A129987 (n : ℕ) : ℤ :=
  A129987.P1378896886703514554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A129987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129988.P17125705088209517440

`A290990(n)+A011782(n)`
-/

namespace A129988.P17125705088209517440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 n + A011782 n

end

end A129988.P17125705088209517440

noncomputable section

/-- A129988: Fourth differences of A129983.

Offset 0, canonical program `A129988.P17125705088209517440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A129988 (n : ℕ) : ℤ :=
  A129988.P17125705088209517440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A129988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130095.P8079388257448104826

`∑{d}[n+1, A001519(#)]`
-/

namespace A130095.P8079388257448104826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001519 d

end

end A130095.P8079388257448104826

noncomputable section

/-- A130095: Inverse Möbius transform of odd-indexed Fibonacci numbers.

Offset 1, canonical program `A130095.P8079388257448104826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A130095 (n : ℕ) : ℤ :=
  A130095.P8079388257448104826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A130095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130103.P14855528586207028289

`A130102(n+1)/2`
-/

namespace A130103.P14855528586207028289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130102 (n + 1) : ℚ) / 2

end

end A130103.P14855528586207028289

noncomputable section

/-- A130103: Expansion of e.g.f. e^(2x)-(1+x)*e^x+x.

Offset 0, canonical program `A130103.P14855528586207028289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130103 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130103.P14855528586207028289.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130145.P14923829588217701246

`∑[A115266(n)]`
-/

namespace A130145.P14923829588217701246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130145.P14923829588217701246

noncomputable section

/-- A130145: Number of nonisomorphic orthogonal arrays OA(8*n+4,4,2,2).

Offset 1, canonical program `A130145.P14923829588217701246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130145 (n : ℕ) : ℤ :=
  A130145.P14923829588217701246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130174.P14029234356887490653

`a(n-1)+1+A055642(a(n-1))` with `a(0)=0`
-/

namespace A130174.P14029234356887490653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 + A055642 (a (n - 1)).toNat)

end

end A130174.P14029234356887490653

noncomputable section

/-- A130174: a(n) = n-1 + (total number of digits in a(1), ..., a(n-1)).

Offset 1, canonical program `A130174.P14029234356887490653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130174 (n : ℕ) : ℤ :=
  A130174.P14029234356887490653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130238.P6749736305914255638

`∑[A130237(n)]`
-/

namespace A130238.P6749736305914255638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130238.P6749736305914255638

noncomputable section

/-- A130238: Partial sums of A130237.

Offset 0, canonical program `A130238.P6749736305914255638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130238 (n : ℕ) : ℤ :=
  A130238.P6749736305914255638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130240.P11723708068982059309

`∑[∑[char[A007598(n)]]]-1`
-/

namespace A130240.P11723708068982059309
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A130240.P11723708068982059309

noncomputable section

/-- A130240: Partial sums of A130239.

Offset 0, canonical program `A130240.P11723708068982059309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130240 (n : ℕ) : ℤ :=
  A130240.P11723708068982059309.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130241.P12226389910119591791

`a(n-1)+C(n+1, A000032(a(n-1)+1))` with `a(0)=1`
-/

namespace A130241.P12226389910119591791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 1) (A000032 (a (n - 1) + 1)).toNat

end

end A130241.P12226389910119591791

noncomputable section

/-- A130241: Maximal index k of a Lucas number such that Lucas(k) <= n (the 'lower' Lucas (A000032) Inverse).

Offset 1, canonical program `A130241.P12226389910119591791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130241 (n : ℕ) : ℤ :=
  (A130241.P12226389910119591791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130242.P16587187217365240079

`∑[char[A001612(n)]]-char[2]`
-/

namespace A130242.P16587187217365240079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130242.P16587187217365240079

noncomputable section

/-- A130242: Minimal index k of a Lucas number such that Lucas(k)>=n (the 'upper' Lucas (A000032) Inverse).

Offset 0, canonical program `A130242.P16587187217365240079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130242 (n : ℕ) : ℤ :=
  A130242.P16587187217365240079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130245.P8933862901285200477

`∑[A102460(n)]%35`
-/

namespace A130245.P8933862901285200477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 35

end

end A130245.P8933862901285200477

noncomputable section

/-- A130245: Number of Lucas numbers (A000032) <= n.

Offset 0, canonical program `A130245.P8933862901285200477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130245 (n : ℕ) : ℤ :=
  A130245.P8933862901285200477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130257.P5155922807624854480

`∑[A130259(A005206(n))+1]`
-/

namespace A130257.P5155922807624854480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A005206 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130257.P5155922807624854480

noncomputable section

/-- A130257: Partial sums of the 'lower' odd Fibonacci Inverse A130255.

Offset 1, canonical program `A130257.P5155922807624854480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130257 (n : ℕ) : ℤ :=
  A130257.P5155922807624854480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130260.P9951914605164643883

`a(A189663(n))+1` with `a(0)=0`
-/

namespace A130260.P9951914605164643883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A189663 n).toNat + 1

end

end A130260.P9951914605164643883

noncomputable section

/-- A130260: Minimal index k of an even Fibonacci number A001906 such that A001906(k) = Fib(2k) >= n (the 'upper' even Fibonacci Inverse).

Offset 0, canonical program `A130260.P9951914605164643883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130260 (n : ℕ) : ℤ :=
  (A130260.P9951914605164643883.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130290.P12006832031725450867

`floor(A000040(n+1)/2)`
-/

namespace A130290.P12006832031725450867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

end

end A130290.P12006832031725450867

noncomputable section

/-- A130290: Number of nonzero quadratic residues modulo the n-th prime.

Offset 1, canonical program `A130290.P12006832031725450867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130290 (n : ℕ) : ℤ :=
  A130290.P12006832031725450867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130291.P14568566917462971400

`floor(A000040(n+1)/2)+1`
-/

namespace A130291.P14568566917462971400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋ + 1

end

end A130291.P14568566917462971400

noncomputable section

/-- A130291: Number of quadratic residues (including 0) modulo the n-th prime.

Offset 1, canonical program `A130291.P14568566917462971400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130291 (n : ℕ) : ℤ :=
  A130291.P14568566917462971400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130329.P9894356119202970907

`2^(n-C(∑[char[∑[n]]], 2))*A002450(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A130329.P9894356119202970907
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
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A002450 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ)

end

end A130329.P9894356119202970907

noncomputable section

/-- A130329: A059268 * A130321.

Offset 0, canonical program `A130329.P9894356119202970907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130329 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130329.P9894356119202970907.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130631.P1421686005410955082

`A031346(A000045(n))`
-/

namespace A130631.P1421686005410955082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A000045 n).toNat

end

end A130631.P1421686005410955082

noncomputable section

/-- A130631: Multiplicative persistence of Fibonacci numbers.

Offset 0, canonical program `A130631.P1421686005410955082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130631 (n : ℕ) : ℤ :=
  A130631.P1421686005410955082.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130711.P3365278622554452030

`∑{d}[n+1, A099036(#-1)]`
-/

namespace A130711.P3365278622554452030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099036 (d - 1)

end

end A130711.P3365278622554452030

noncomputable section

/-- A130711: Number of compositions of n such that the smallest part divides every part.

Offset 1, canonical program `A130711.P3365278622554452030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A130711 (n : ℕ) : ℤ :=
  A130711.P3365278622554452030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A130711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130732.P11785332401039935677

`floor(A000045(n+1)/A000040(n+1))`
-/

namespace A130732.P11785332401039935677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A130732.P11785332401039935677

noncomputable section

/-- A130732: a(n) = floor(Fibonacci(n)/prime(n)).

Offset 1, canonical program `A130732.P11785332401039935677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A130732 (n : ℕ) : ℤ :=
  A130732.P11785332401039935677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A130732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130759.P3835187196836942526

`∑[A130707(n)]`
-/

namespace A130759.P3835187196836942526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130759.P3835187196836942526

noncomputable section

/-- A130759: Partial sums of A130707.

Offset 0, canonical program `A130759.P3835187196836942526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A130759 (n : ℕ) : ℤ :=
  A130759.P3835187196836942526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A130759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130763.P5899014126795405265

`eq[0, A078027(A032741(n))]`
-/

namespace A130763.P5899014126795405265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130763.P5899014126795405265

noncomputable section

/-- A130763: Natural numbers such that d(n)!+ 1 is a square, where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A130763.P5899014126795405265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A130763 (n : ℕ) : ℤ :=
  (A130763.P5899014126795405265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A130763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130819.P5334675930455341645

`A001650(n+1)+1`
-/

namespace A130819.P5334675930455341645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 1) + 1

end

end A130819.P5334675930455341645

noncomputable section

/-- A130819: 2*k appears 2*k-1 times.

Offset 1, canonical program `A130819.P5334675930455341645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130819 (n : ℕ) : ℤ :=
  A130819.P5334675930455341645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130851.P13848340763517523934

`A004095(n)%9`
-/

namespace A130851.P13848340763517523934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004095 n) 9

end

end A130851.P13848340763517523934

noncomputable section

/-- A130851: Catalan numbers A000108(n) modulo 9.

Offset 0, canonical program `A130851.P13848340763517523934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130851 (n : ℕ) : ℤ :=
  A130851.P13848340763517523934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130856.P714069976236224100

`dr(A004095(n))`
-/

namespace A130856.P714069976236224100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004095 n)

end

end A130856.P714069976236224100

noncomputable section

/-- A130856: The digital root (A010888) of the Catalan numbers A000108.

Offset 0, canonical program `A130856.P714069976236224100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130856 (n : ℕ) : ℤ :=
  (A130856.P714069976236224100.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130871.P6796833549983646184

`eq[n+2, lcm(n+2, A001414(n+1))]+1`
-/

namespace A130871.P6796833549983646184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A001414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A130871.P6796833549983646184

noncomputable section

/-- A130871: Numbers k such that the sum of the prime factors with multiplicity of k divides k+1.

Offset 1, canonical program `A130871.P6796833549983646184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A130871 (n : ℕ) : ℤ :=
  (A130871.P6796833549983646184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A130871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130902.P6544811352786063406

`2^(n+1)-A125513(n+1)`
-/

namespace A130902.P6544811352786063406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A125513 (n + 1)

end

end A130902.P6544811352786063406

noncomputable section

/-- A130902: a(n) is the number of binary strings of length n such that there exist 4 or more ones in a subsequence of length 5 or less.

Offset 0, canonical program `A130902.P6544811352786063406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A130902 (n : ℕ) : ℤ :=
  A130902.P6544811352786063406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A130902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131024.P16739476726878507052

`A129339(n+2)-A088911(n+1)`
-/

namespace A131024.P16739476726878507052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 2) - A088911 (n + 1)

end

end A131024.P16739476726878507052

noncomputable section

/-- A131024: Row sums of triangular array T: T(j,1) = 1 for ((j-1) mod 6) < 3, else 0; T(j,k) = T(j-1,k-1) + T(j-1,k) for 2 <= k <= j.

Offset 1, canonical program `A131024.P16739476726878507052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A131024 (n : ℕ) : ℤ :=
  A131024.P16739476726878507052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A131024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131075.P7164680010094258311

`A129961(n+1)-A099589(n)`
-/

namespace A131075.P7164680010094258311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 1) - A099589 n

end

end A131075.P7164680010094258311

noncomputable section

/-- A131075: First subdiagonal of triangular array T: T(j,1) = 1 for ((j-1) mod 8) < 4, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

Offset 1, canonical program `A131075.P7164680010094258311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A131075 (n : ℕ) : ℤ :=
  A131075.P7164680010094258311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A131075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131076.P9798162400045555933

`A129961(n+2)-A131078(n+2)`
-/

namespace A131076.P9798162400045555933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129961 (n + 2) - A131078 (n + 2)

end

end A131076.P9798162400045555933

noncomputable section

/-- A131076: Row sums of triangular array T: T(j,1) = 1 for ((j-1) mod 8) < 4, else 0; T(j,k) = T(j-1,k-1) + T(j,k-1) for 2 <= k <= j.

Offset 1, canonical program `A131076.P9798162400045555933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A131076 (n : ℕ) : ℤ :=
  A131076.P9798162400045555933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A131076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131118.P1045819778877883350

`(A029579(n)-A130766(n))*A059169(n+1)`
-/

namespace A131118.P1045819778877883350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029579 n - A130766 n) * A059169 (n + 1)

end

end A131118.P1045819778877883350

noncomputable section

/-- A131118: a(4n) = -n^2, a(4n+1) = n^2, a(4n+2) = 1-n^2, a(4n+3) = n*(n+1).

Offset 0, canonical program `A131118.P1045819778877883350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131118 (n : ℕ) : ℤ :=
  A131118.P1045819778877883350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131132.P1020012601955757558

`A293553(n+4)`
-/

namespace A131132.P1020012601955757558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (n + 4)

end

end A131132.P1020012601955757558

noncomputable section

/-- A131132: a(n) = a(n-1) + a(n-2) + 1 if n is a multiple of 6, otherwise a(n) = a(n-1) + a(n-2).

Offset 0, canonical program `A131132.P1020012601955757558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A131132 (n : ℕ) : ℤ :=
  A131132.P1020012601955757558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A131132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131135.P2342393495251408866

`A134401(n)/gcd(n, A132074(n))`
-/

namespace A131135.P2342393495251408866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134401 n : ℚ) / (Int.gcd (n : ℤ) (A132074 n) : ℚ)

end

end A131135.P2342393495251408866

noncomputable section

/-- A131135: Denominator of (ordinary) expansion of log((x/2-1)/(x-1)).

Offset 0, canonical program `A131135.P2342393495251408866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A131135 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131135.P2342393495251408866.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A131135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131234.P8251461808421970846

`∑[A010056(n)]`
-/

namespace A131234.P8251461808421970846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131234.P8251461808421970846

noncomputable section

/-- A131234: Starts with 1, then n appears Fibonacci(n-1) times.

Offset 1, canonical program `A131234.P8251461808421970846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131234 (n : ℕ) : ℤ :=
  A131234.P8251461808421970846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131244.P13782327788003367786

`Δ[record[A192922(n)]]`
-/

namespace A131244.P13782327788003367786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131244.P13782327788003367786

noncomputable section

/-- A131244: Row sums of triangle A131243.

Offset 0, canonical program `A131244.P13782327788003367786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A131244 (n : ℕ) : ℤ :=
  A131244.P13782327788003367786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A131244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131298.P2879006245003999352

`a(n-2)+A000045(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A131298.P2879006245003999352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + (A000045 n + a (n - 3))

end

end A131298.P2879006245003999352

noncomputable section

/-- A131298: Diagonal sums of A104730.

Offset 0, canonical program `A131298.P2879006245003999352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A131298 (n : ℕ) : ℤ :=
  A131298.P2879006245003999352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A131298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131309.P376387322321656178

`Δ[A005379(n)]^n`
-/

namespace A131309.P376387322321656178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A131309.P376387322321656178

noncomputable section

/-- A131309: Irregular triangle: rows are iterates of the morphism with maps 1 -> 110, 0 -> 10.

Offset 0, canonical program `A131309.P376387322321656178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131309 (n : ℕ) : ℤ :=
  A131309.P376387322321656178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131337.P10555352174447344944

`A066983(n+1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A131337.P10555352174447344944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A066983 (n + 1) + (a (n - 1) + a (n - 2))

end

end A131337.P10555352174447344944

noncomputable section

/-- A131337: Row sums of triangle A131336.

Offset 1, canonical program `A131337.P10555352174447344944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A131337 (n : ℕ) : ℤ :=
  A131337.P10555352174447344944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A131337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131410.P12777045382077232831

`A123231(A131507(n))`
-/

namespace A131410.P12777045382077232831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A131507 n).toNat

end

end A131410.P12777045382077232831

noncomputable section

/-- A131410: A127647 * A000012.

Offset 1, canonical program `A131410.P12777045382077232831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131410 (n : ℕ) : ℤ :=
  A131410.P12777045382077232831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131426.P1992533446428371945

`2*A000040(n+1)-3`
-/

namespace A131426.P1992533446428371945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 3

end

end A131426.P1992533446428371945

noncomputable section

/-- A131426: a(n) = 2*prime(n) - 3.

Offset 1, canonical program `A131426.P1992533446428371945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131426 (n : ℕ) : ℤ :=
  A131426.P1992533446428371945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131431.P7984083110409422878

`Δ[A000326(A003056(n))]`
-/

namespace A131431.P7984083110409422878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131431.P7984083110409422878

noncomputable section

/-- A131431: 3n + 1 preceded by n zeros.

Offset 0, canonical program `A131431.P7984083110409422878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131431 (n : ℕ) : ℤ :=
  A131431.P7984083110409422878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131589.P12249426416656891938

`(A001519(n)-4)*A033999(n)`
-/

namespace A131589.P12249426416656891938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 n - 4) * A033999 n

end

end A131589.P12249426416656891938

noncomputable section

/-- A131589: Expansion of -(3+9*x+2*x^2)/((x+1)*(x^2+3*x+1)).

Offset 0, canonical program `A131589.P12249426416656891938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A131589 (n : ℕ) : ℤ :=
  A131589.P12249426416656891938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A131589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131644.P7995300456950499496

`A000079(a(n-1))%(n+1)` with `a(0)=0`
-/

namespace A131644.P7995300456950499496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000079 (a (n - 1)).toNat) (n + 1 : ℤ)

end

end A131644.P7995300456950499496

noncomputable section

/-- A131644: a(n) = 2^a(n-1) mod n.

Offset 1, canonical program `A131644.P7995300456950499496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A131644 (n : ℕ) : ℤ :=
  A131644.P7995300456950499496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A131644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131664.P12941882996310743922

`A287468(A279891(n))`
-/

namespace A131664.P12941882996310743922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A279891 n).toNat

end

end A131664.P12941882996310743922

noncomputable section

/-- A131664: A string of n 1's repeated n times.

Offset 1, canonical program `A131664.P12941882996310743922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A131664 (n : ℕ) : ℤ :=
  A131664.P12941882996310743922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A131664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131682.P8964864825238360789

`A131509(n)+A064808(n)`
-/

namespace A131682.P8964864825238360789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131509 n + A064808 n

end

end A131682.P8964864825238360789

noncomputable section

/-- A131682: a(n) = (n + 1!)*(n^2 + 2!)*(n^3 + 3!)/3!.

Offset 0, canonical program `A131682.P8964864825238360789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131682 (n : ℕ) : ℤ :=
  A131682.P8964864825238360789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131715.P6327802127651957379

`A131707(n+1)-A131707(n)`
-/

namespace A131715.P6327802127651957379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131707 (n + 1) - A131707 n

end

end A131715.P6327802127651957379

noncomputable section

/-- A131715: Period 12: repeat 0,2,4,0,-6,8,0,-2,-4,0,6,-8.

Offset 0, canonical program `A131715.P6327802127651957379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131715 (n : ℕ) : ℤ :=
  A131715.P6327802127651957379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131721.P13343220242422525208

`Δ[A131710(n)]`
-/

namespace A131721.P13343220242422525208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131721.P13343220242422525208

noncomputable section

/-- A131721: Overlay of Pell companion numbers: a(n) = A001333(n) + A001333(n-6).

Offset 0, canonical program `A131721.P13343220242422525208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A131721 (n : ℕ) : ℤ :=
  A131721.P13343220242422525208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A131721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131726.P11238477700155309960

`10*floor(A000129(n)/10)`
-/

namespace A131726.P11238477700155309960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(A000129 n : ℚ) / 10⌋

end

end A131726.P11238477700155309960

noncomputable section

/-- A131726: Pell numbers A000129 with 0 instead of last digit.

Offset 0, canonical program `A131726.P11238477700155309960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A131726 (n : ℕ) : ℤ :=
  A131726.P11238477700155309960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A131726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131728.P3488711437183404180

`A077814(n+1)`
-/

namespace A131728.P3488711437183404180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (n + 1)

end

end A131728.P3488711437183404180

noncomputable section

/-- A131728: a(4n) = n, a(4n+1) = 2n+1, a(4n+2) = n+1, a(4n+3) = 0.

Offset 0, canonical program `A131728.P3488711437183404180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131728 (n : ℕ) : ℤ :=
  A131728.P3488711437183404180.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131733.P2209471722626615476

`A000040(n+1)-2*(n+1)+1`
-/

namespace A131733.P2209471722626615476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (2 * (n + 1) : ℤ) + 1

end

end A131733.P2209471722626615476

noncomputable section

/-- A131733: Primes (A000040) - odds (A005408).

Offset 1, canonical program `A131733.P2209471722626615476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131733 (n : ℕ) : ℤ :=
  A131733.P2209471722626615476.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131742.P6233355253360140700

`A057353(and(n, 1-and(2, n)))`
-/

namespace A131742.P6233355253360140700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.land (n : ℤ) (1 - (Nat.land 2 n : ℤ))).toNat

end

end A131742.P6233355253360140700

noncomputable section

/-- A131742: a(4n) = a(4n+1) = 0, a(4n+2) = 3n+1, a(4n+3) = 3n+2.

Offset 0, canonical program `A131742.P6233355253360140700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131742 (n : ℕ) : ℤ :=
  A131742.P6233355253360140700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131757.P13180496036936591287

`A131579(n+1)-A131579(n)`
-/

namespace A131757.P13180496036936591287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131579 (n + 1) - A131579 n

end

end A131757.P13180496036936591287

noncomputable section

/-- A131757: Period 10: repeat 3, 3, 3, -7, 3, 3, -7, 3, 3, -7.

Offset 0, canonical program `A131757.P13180496036936591287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131757 (n : ℕ) : ℤ :=
  A131757.P13180496036936591287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131804.P17602890700223811981

`∑[A131505(abs(1-n))]+1`
-/

namespace A131804.P17602890700223811981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131804.P17602890700223811981

noncomputable section

/-- A131804: Antidiagonal sums of triangular array T: T(j,k) = -(k+1)/2 for odd k, T(j,k) = 0 for k = 0, T(j,k) = j+1-k/2 for even k > 0; 0 <= k <= j.

Offset 0, canonical program `A131804.P17602890700223811981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131804 (n : ℕ) : ℤ :=
  A131804.P17602890700223811981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131852.P12166633739623928702

`A131851(floor(n/2))`
-/

namespace A131852.P12166633739623928702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 ⌊(n : ℚ) / 2⌋.toNat

end

end A131852.P12166633739623928702

noncomputable section

/-- A131852: Imaginary part of the function z defined in A131851.

Offset 0, canonical program `A131852.P12166633739623928702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131852 (n : ℕ) : ℤ :=
  A131852.P12166633739623928702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131855.P13915583757753673603

`eq[0, abs(A131851(floor(n/2)))]`
-/

namespace A131855.P13915583757753673603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131851 ⌊(n : ℚ) / 2⌋.toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P13915583757753673603

noncomputable section

/-- A131855: Numbers m such that A131852(m) = 0.

Offset 1, canonical program `A131855.P13915583757753673603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5584 terms. -/
def A131855 (n : ℕ) : ℤ :=
  (A131855.P13915583757753673603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5584 terms. -/
def A131855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131857.P16455021157410317938

`eq[0, A131851(floor(n/2))-1]`
-/

namespace A131857.P16455021157410317938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 ⌊(n : ℚ) / 2⌋.toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P16455021157410317938

noncomputable section

/-- A131857: Numbers m such that A131852(m) = 1.

Offset 1, canonical program `A131857.P16455021157410317938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A131857 (n : ℕ) : ℤ :=
  (A131857.P16455021157410317938.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A131857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131887.P13103123280659706922

`2*∑[A002530(n+1)]+1`
-/

namespace A131887.P13103123280659706922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A131887.P13103123280659706922

noncomputable section

/-- A131887: Number of Khalimsky-continuous functions with a three-point codomain.

Offset 1, canonical program `A131887.P13103123280659706922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A131887 (n : ℕ) : ℤ :=
  A131887.P13103123280659706922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A131887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131944.P10815908969414178060

`∑{d}[n+1, #*A117188(#-1)]`
-/

namespace A131944.P10815908969414178060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A117188 (d - 1)

end

end A131944.P10815908969414178060

noncomputable section

/-- A131944: Expansion of (1 - b(q)*b(q^2)) / 3 where b() is a cubic AGM function. Expansion of (1 - eta(q)^3 * eta(q^2)^3 / (eta(q^3) * eta(q^6))) / 3 in powers of q.

Offset 1, canonical program `A131944.P10815908969414178060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131944 (n : ℕ) : ℤ :=
  A131944.P10815908969414178060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132001.P4609221565505308167

`∑{d}[n+1, #*A100050(#)]`
-/

namespace A132001.P4609221565505308167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A100050 d

end

end A132001.P4609221565505308167

noncomputable section

/-- A132001: Expansion of 1 - (1/3) * b(q) * b(q^2) * c(q)^2 / c(q^2) in powers of q where b(), c() are cubic AGM functions.

Offset 1, canonical program `A132001.P4609221565505308167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A132001 (n : ℕ) : ℤ :=
  A132001.P4609221565505308167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A132001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132158.P8478849005407785948

`A133335(n)-A010892(n)`
-/

namespace A132158.P8478849005407785948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n - A010892 n

end

end A132158.P8478849005407785948

noncomputable section

/-- A132158: a(3n+k) = 3a(3n+k-1)-3a(3n+k-2)+2a(3n+k-3) for k = 0,1; a(3n+2) = 3a(3n-1)-3a(3n-2), with a(0) = 0,a(1) = 1,a(2) = 3.

Offset 0, canonical program `A132158.P8478849005407785948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A132158 (n : ℕ) : ℤ :=
  A132158.P8478849005407785948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A132158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132194.P14895513087867125861

`1-A099618(n+1)`
-/

namespace A132194.P14895513087867125861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A099618 (n + 1)

end

end A132194.P14895513087867125861

noncomputable section

/-- A132194: a(n) = 1 if n-th prime is 0 or 2 mod 3, otherwise 0.

Offset 1, canonical program `A132194.P14895513087867125861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132194 (n : ℕ) : ℤ :=
  A132194.P14895513087867125861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132272.P13181892007694707197

`A132271(n)/(1+n)`
-/

namespace A132272.P13181892007694707197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132271 n : ℚ) / (1 + n : ℚ)

end

end A132272.P13181892007694707197

noncomputable section

/-- A132272: a(n) = Product_{k>0} (1 + floor(n/10^k)).

Offset 0, canonical program `A132272.P13181892007694707197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132271, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132272.P13181892007694707197.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132271, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132336.P476842048346136768

`∑[(n+1)*(1-char[A258807(n+1)])]`
-/

namespace A132336.P476842048346136768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258807 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132336.P476842048346136768

noncomputable section

/-- A132336: Sum of the integers from 1 to n, excluding perfect fifth powers.

Offset 1, canonical program `A132336.P476842048346136768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132336 (n : ℕ) : ℤ :=
  A132336.P476842048346136768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132337.P8651020091429480329

`∑[(n+1)*(A135660(n+1)-A135661(n+1))]`
-/

namespace A132337.P8651020091429480329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A135660 (n + 1) - A135661 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P8651020091429480329

noncomputable section

/-- A132337: Sum of the integers from 1 to n, excluding the perfect sixth powers.

Offset 1, canonical program `A132337.P8651020091429480329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132337 (n : ℕ) : ℤ :=
  A132337.P8651020091429480329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132650.P7902314145472011192

`A110138(A131089(n+1))`
-/

namespace A132650.P7902314145472011192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (A131089 (n + 1)).toNat

end

end A132650.P7902314145472011192

noncomputable section

/-- A132650: a(n) = d(n)^d(n), where d(n) = A000005(n).

Offset 1, canonical program `A132650.P7902314145472011192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A132650 (n : ℕ) : ℤ :=
  A132650.P7902314145472011192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A132650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132665.P1454855667398800133

`∑[(n+2)*A010056(n+2)]-(n+1)`
-/

namespace A132665.P1454855667398800133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A010056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A132665.P1454855667398800133

noncomputable section

/-- A132665: a(1)=1, a(2)=3, a(n) = a(n-1) + n if the minimal positive integer not yet in the sequence is greater than a(n-1), else a(n) = a(n-1)-1.

Offset 1, canonical program `A132665.P1454855667398800133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132665 (n : ℕ) : ℤ :=
  A132665.P1454855667398800133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132679.P4652173713272160077

`record[or(A004514(n), A004761(n+2))]`
-/

namespace A132679.P4652173713272160077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004514 n) (A004761 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132679.P4652173713272160077

noncomputable section

/-- A132679: Starting with a(1)=1 and a(2)=2: if m is a term then also 4*m and 4*m+3.

Offset 1, canonical program `A132679.P4652173713272160077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A132679 (n : ℕ) : ℤ :=
  A132679.P4652173713272160077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A132679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132780.P2635886526740143656

`or(1, ∑[A113405(n)])`
-/

namespace A132780.P2635886526740143656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132780.P2635886526740143656

noncomputable section

/-- A132780: a(0)=1. a(n+1)=2*a(n)-A130151(n).

Offset 0, canonical program `A132780.P2635886526740143656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A132780 (n : ℕ) : ℤ :=
  A132780.P2635886526740143656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A132780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132820.P14560168823165977584

`(∑[n+2]-1)*A000108(n)`
-/

namespace A132820.P14560168823165977584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A000108 n

end

end A132820.P14560168823165977584

noncomputable section

/-- A132820: Row sums of triangle A132819.

Offset 1, canonical program `A132820.P14560168823165977584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A132820 (n : ℕ) : ℤ :=
  A132820.P14560168823165977584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A132820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132920.P11594785840234655789

`∑[Δ[A045925(n)]+n]`
-/

namespace A132920.P11594785840234655789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132920.P11594785840234655789

noncomputable section

/-- A132920: a(n) = n*Fibonacci(n) + binomial(n, 2).

Offset 1, canonical program `A132920.P11594785840234655789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A132920 (n : ℕ) : ℤ :=
  A132920.P11594785840234655789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A132920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133179.P3707293303286959824

`A087745(A006257(n))`
-/

namespace A133179.P3707293303286959824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (A006257 n).toNat

end

end A133179.P3707293303286959824

noncomputable section

/-- A133179: A modular binomial sum transform of 2^n .

Offset 0, canonical program `A133179.P3707293303286959824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A133179 (n : ℕ) : ℤ :=
  A133179.P3707293303286959824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A133179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133180.P1160309223263378042

`A000540(A047380(n+1))/A000330(A047380(n+1))`
-/

namespace A133180.P1160309223263378042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000540 (A047380 (n + 1)).toNat : ℚ) / (A000330 (A047380 (n + 1)).toNat : ℚ)

end

end A133180.P1160309223263378042

noncomputable section

/-- A133180: a(n) = (Sum_{k=1..A047380(n)} k^6) / (Sum_{k=1..A047380(n)} k^2).

Offset 1, canonical program `A133180.P1160309223263378042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133180 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133180.P1160309223263378042.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133326.P14584573323275426035

`2*A276599(n+1)`
-/

namespace A133326.P14584573323275426035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276599 (n + 1)

end

end A133326.P14584573323275426035

noncomputable section

/-- A133326: Numbers n such that 2*n^2 + 41 is a square.

Offset 1, canonical program `A133326.P14584573323275426035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A133326 (n : ℕ) : ℤ :=
  A133326.P14584573323275426035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A133326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133350.P16447093411726909432

`A114242(2*n)`
-/

namespace A133350.P16447093411726909432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114242 (2 * n)

end

end A133350.P16447093411726909432

noncomputable section

/-- A133350: Dimensions of certain Lie algebra (see reference for precise definition).

Offset 0, canonical program `A133350.P16447093411726909432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A133350 (n : ℕ) : ℤ :=
  A133350.P16447093411726909432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A133350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133351.P1951894631463149761

`A006414(n)*A107970(n)`
-/

namespace A133351.P1951894631463149761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n * A107970 n

end

end A133351.P1951894631463149761

noncomputable section

/-- A133351: Dimensions of certain Lie algebra (see reference for precise definition).

Offset 0, canonical program `A133351.P1951894631463149761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133351 (n : ℕ) : ℤ :=
  A133351.P1951894631463149761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133369.P17422713360217008587

`(A106434(n+1)/2)%37`
-/

namespace A133369.P17422713360217008587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A106434 (n + 1) : ℚ) / 2)) 37

end

end A133369.P17422713360217008587

noncomputable section

/-- A133369: a(n+1) = (3*a(n) + 2*a(n-1)) mod 37; a(0) = 0, a(1) = 1.

Offset 0, canonical program `A133369.P17422713360217008587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A133369 (n : ℕ) : ℤ :=
  A133369.P17422713360217008587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A133369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133386.P6930243779866747404

`(n²-n)*A000392(abs(1-n))`
-/

namespace A133386.P6930243779866747404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A000392 |1 - (n : ℤ)|.toNat

end

end A133386.P6930243779866747404

noncomputable section

/-- A133386: Number of forests of labeled rooted trees with n nodes, containing exactly 2 trees of height one, all others having height zero.

Offset 0, canonical program `A133386.P6930243779866747404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A133386 (n : ℕ) : ℤ :=
  A133386.P6930243779866747404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A133386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133546.P9136569791128566154

`∑[∑[A111297(n)]]`
-/

namespace A133546.P9136569791128566154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P9136569791128566154

noncomputable section

/-- A133546: Binomial transform of [1,3,5,6,7,8,9,10,11,...] (i.e., positive integers except 2 and 4).

Offset 1, canonical program `A133546.P9136569791128566154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A133546 (n : ℕ) : ℤ :=
  A133546.P9136569791128566154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A133546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133603.P9831826494828177728

`A000108(n)+a(n-1)*char[2*n]` with `a(0)=1`
-/

namespace A133603.P9831826494828177728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n + a (n - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133603.P9831826494828177728

noncomputable section

/-- A133603: The matrix-vector product A133566 * A000108.

Offset 0, canonical program `A133603.P9831826494828177728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A133603 (n : ℕ) : ℤ :=
  A133603.P9831826494828177728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A133603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133621.P5217006610656802497

`eq[1, A133620(n+1)]+1`
-/

namespace A133621.P5217006610656802497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133621.P5217006610656802497

noncomputable section

/-- A133621: Numbers k such that binomial(k+p,k) mod k = 1, where p=10.

Offset 1, canonical program `A133621.P5217006610656802497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2831 terms. -/
def A133621 (n : ℕ) : ℤ :=
  (A133621.P5217006610656802497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2831 terms. -/
def A133621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133641.P13929604108559388108

`∑[C(2, n²)+A000032(n+1)-1]`
-/

namespace A133641.P13929604108559388108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℤ) + (A000032 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133641.P13929604108559388108

noncomputable section

/-- A133641: a(n) = 2*L(n) + L(n-1) - n, L(n) = n-th Lucas number A000204(n).

Offset 1, canonical program `A133641.P13929604108559388108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A133641 (n : ℕ) : ℤ :=
  A133641.P13929604108559388108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A133641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133645.P15216977758075111983

`A008822(p?[A007494(n)]-1)`
-/

namespace A133645.P15216977758075111983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A133645.P15216977758075111983

noncomputable section

/-- A133645: Integers arising in A133677.

Offset 1, canonical program `A133645.P15216977758075111983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. -/
def A133645 (n : ℕ) : ℤ :=
  A133645.P15216977758075111983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. -/
def A133645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133695.P14090460044357670883

`2*A080847(n+1)-5`
-/

namespace A133695.P14090460044357670883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080847 (n + 1) - 5

end

end A133695.P14090460044357670883

noncomputable section

/-- A133695: a(n) = 2*A008683 - 1.

Offset 1, canonical program `A133695.P14090460044357670883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133695 (n : ℕ) : ℤ :=
  A133695.P14090460044357670883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133710.P17090845274663533758

`Δ[A059585(n)]-3*(∑[n+2]-2)`
-/

namespace A133710.P17090845274663533758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059585 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

end

end A133710.P17090845274663533758

noncomputable section

/-- A133710: Column l=3 of irregular triangle in A133709.

Offset 1, canonical program `A133710.P17090845274663533758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133710 (n : ℕ) : ℤ :=
  A133710.P17090845274663533758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133730.P13989920916846744840

`A133684(n+1)-A133684(n)`
-/

namespace A133730.P13989920916846744840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (n + 1) - A133684 n

end

end A133730.P13989920916846744840

noncomputable section

/-- A133730: Alternating sign sequence A033999 interleaved with Jacobsthal sequence A001045.

Offset 0, canonical program `A133730.P13989920916846744840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133730 (n : ℕ) : ℤ :=
  A133730.P13989920916846744840.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133806.P9687229716002277301

`Δ[A024495(A065033(n))+A016116(n)]`
-/

namespace A133806.P9687229716002277301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (A065033 n).toNat + A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133806.P9687229716002277301

noncomputable section

/-- A133806: Alternate terms of A131708 and A000079.

Offset 0, canonical program `A133806.P9687229716002277301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A133806 (n : ℕ) : ℤ :=
  A133806.P9687229716002277301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A133806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133882.P11179811721505944776

`A105198(n+1)`
-/

namespace A133882.P11179811721505944776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105198 (n + 1)

end

end A133882.P11179811721505944776

noncomputable section

/-- A133882: a(n) = binomial(n+2,n) mod 2^2.

Offset 0, canonical program `A133882.P11179811721505944776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133882 (n : ℕ) : ℤ :=
  A133882.P11179811721505944776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133899.P5836067810427085228

`eq[n, A133879(n)+n]`
-/

namespace A133899.P5836067810427085228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133879 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133899.P5836067810427085228

noncomputable section

/-- A133899: Numbers m such that binomial(m+9,m) mod 9 = 0.

Offset 0, canonical program `A133899.P5836067810427085228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A133899 (n : ℕ) : ℤ :=
  (A133899.P5836067810427085228.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A133899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134010.P17267097740225297527

`n^A000030(n)`
-/

namespace A134010.P17267097740225297527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A000030 n : ℤ)

end

end A134010.P17267097740225297527

noncomputable section

/-- A134010: a(n) = n^(initial digit of n).

Offset 0, canonical program `A134010.P17267097740225297527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134010.P17267097740225297527.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134288.P8662374364375988062

`a(n-1)*A000217(n+6)/A000217(n)` with `a(0)=1`
-/

namespace A134288.P8662374364375988062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A000217 (n + 6) : ℚ) / (A000217 n : ℚ)

end

end A134288.P8662374364375988062

noncomputable section

/-- A134288: a(n) = binomial(n+7,7)*binomial(n+7,6)/(n+7).

Offset 0, canonical program `A134288.P8662374364375988062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134288.P8662374364375988062.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134289.P12569014532748764136

`A000580(n+7)/(n+1)*∑[A000580(n+7)]`
-/

namespace A134289.P12569014532748764136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A134289.P12569014532748764136

noncomputable section

/-- A134289: Eighth column (and diagonal) of Narayana triangle A001263.

Offset 0, canonical program `A134289.P12569014532748764136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134289 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134289.P12569014532748764136.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134290.P5564593056642632445

`A000581(n+8)/(n+1)*∑[A000581(n+8)]`
-/

namespace A134290.P5564593056642632445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A134290.P5564593056642632445

noncomputable section

/-- A134290: Ninth column (and diagonal) of Narayana triangle A001263.

Offset 0, canonical program `A134290.P5564593056642632445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134290.P5564593056642632445.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134291.P17166489784812942013

`∑[A000581(n+8)]/(n+1)*A001287(n)`
-/

namespace A134291.P17166489784812942013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A001287 (n + 10) : ℚ)

end

end A134291.P17166489784812942013

noncomputable section

/-- A134291: Tenth column (and diagonal) of Narayana triangle A001263.

Offset 0, canonical program `A134291.P17166489784812942013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134291.P17166489784812942013.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134327.P1662695527958705813

`or(1, A054620(n)-(n+1))`
-/

namespace A134327.P1662695527958705813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054620 n - (n + 1 : ℤ))

end

end A134327.P1662695527958705813

noncomputable section

/-- A134327: a(n) = (n^5-n-5)/5.

Offset 0, canonical program `A134327.P1662695527958705813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134327 (n : ℕ) : ℤ :=
  A134327.P1662695527958705813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134410.P16621139043671013706

`A000032(n+1)+5*A006490(n+1)`
-/

namespace A134410.P16621139043671013706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 5 * A006490 (n + 1)

end

end A134410.P16621139043671013706

noncomputable section

/-- A134410: Second-order Lucas numbers; a(n) = (2n+3)*Lucas(n) - n*Lucas(n-1).

Offset 0, canonical program `A134410.P16621139043671013706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A134410 (n : ℕ) : ℤ :=
  A134410.P16621139043671013706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A134410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134567.P10821418209061694962

`A000045(val(record[xor(n, 2*n)+1], 2)+2)`
-/

namespace A134567.P10821418209061694962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 + 2)

end

end A134567.P10821418209061694962

noncomputable section

/-- A134567: a(n) = least m such that {-m*tau} < {n*tau}, where { } denotes fractional part and tau = (1 + sqrt(5))/2.

Offset 1, canonical program `A134567.P10821418209061694962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134567 (n : ℕ) : ℤ :=
  A134567.P10821418209061694962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134681.P3582013729530348155

`∑{d}[n+1, A055642(#)]`
-/

namespace A134681.P3582013729530348155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055642 d

end

end A134681.P3582013729530348155

noncomputable section

/-- A134681: Number of digits of all the divisors of n.

Offset 1, canonical program `A134681.P3582013729530348155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134681 (n : ℕ) : ℤ :=
  A134681.P3582013729530348155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134718.P7894386797613415673

`A001006(A081706(n+1))`
-/

namespace A134718.P7894386797613415673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A081706 (n + 1)).toNat

end

end A134718.P7894386797613415673

noncomputable section

/-- A134718: Even Motzkin numbers.

Offset 1, canonical program `A134718.P7894386797613415673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134718 (n : ℕ) : ℤ :=
  A134718.P7894386797613415673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134719.P13112211751660439804

`A000931(A047328(n+1))`
-/

namespace A134719.P13112211751660439804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A047328 (n + 1)).toNat

end

end A134719.P13112211751660439804

noncomputable section

/-- A134719: Odd Padovan numbers.

Offset 1, canonical program `A134719.P13112211751660439804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A134719 (n : ℕ) : ℤ :=
  A134719.P13112211751660439804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A134719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134860.P10022107940659207837

`abs(xor(-1, A035337(n)))`
-/

namespace A134860.P10022107940659207837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A035337 n)|

end

end A134860.P10022107940659207837

noncomputable section

/-- A134860: Wythoff AAB numbers; also, Fib101 numbers: those n for which the Zeckendorf expansion A014417(n) ends with 1,0,1.

Offset 1, canonical program `A134860.P10022107940659207837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134860 (n : ℕ) : ℤ :=
  A134860.P10022107940659207837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134863.P11100616616193240304

`abs(6-A101870(n+1))`
-/

namespace A134863.P11100616616193240304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A101870 (n + 1)|

end

end A134863.P11100616616193240304

noncomputable section

/-- A134863: Wythoff BAB numbers.

Offset 1, canonical program `A134863.P11100616616193240304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134863 (n : ℕ) : ℤ :=
  A134863.P11100616616193240304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134864.P10998116107234469360

`A101870(A000201(n+1))`
-/

namespace A134864.P10998116107234469360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (A000201 (n + 1)).toNat

end

end A134864.P10998116107234469360

noncomputable section

/-- A134864: Wythoff BBB numbers.

Offset 1, canonical program `A134864.P10998116107234469360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A134864 (n : ℕ) : ℤ :=
  A134864.P10998116107234469360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A134864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134871.P9338139683703064561

`A070824(n+1)+1+n`
-/

namespace A134871.P9338139683703064561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + 1 + (n : ℤ)

end

end A134871.P9338139683703064561

noncomputable section

/-- A134871: a(1) = 1, a(n) = tau(n) + n - 2 for n > 1.

Offset 1, canonical program `A134871.P9338139683703064561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134871 (n : ℕ) : ℤ :=
  A134871.P9338139683703064561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134901.P11339671350657562159

`A134900(n+1)-1`
-/

namespace A134901.P11339671350657562159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134900 (n + 1) - 1

end

end A134901.P11339671350657562159

noncomputable section

/-- A134901: a(n) = floor(n*exp(csc(n))).

Offset 1, canonical program `A134901.P11339671350657562159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A134901 (n : ℕ) : ℤ :=
  A134901.P11339671350657562159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A134901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134920.P13300017598810764662

`∑[∑[A100223(n)]]-n`
-/

namespace A134920.P13300017598810764662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A134920.P13300017598810764662

noncomputable section

/-- A134920: Expansion of (1-x+sqrt(1-2x+5x^2))/(2(1-x)^2).

Offset 0, canonical program `A134920.P13300017598810764662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A134920 (n : ℕ) : ℤ :=
  A134920.P13300017598810764662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A134920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134942.P6092889629128080292

`lt[char[A070565(n)], 1]`
-/

namespace A134942.P6092889629128080292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A134942.P6092889629128080292

noncomputable section

/-- A134942: Numbers m such that there exists no number k with k-P(k) = m, where P(k) is the product of digits of k written in base 10.

Offset 1, canonical program `A134942.P6092889629128080292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3858 terms. -/
def A134942 (n : ℕ) : ℤ :=
  (A134942.P6092889629128080292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3858 terms. -/
def A134942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135035.P17855894899510383413

`A132402(n)-A038505(n)`
-/

namespace A135035.P17855894899510383413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132402 n - A038505 n

end

end A135035.P17855894899510383413

noncomputable section

/-- A135035: Binomial transform of abs(A134967).

Offset 0, canonical program `A135035.P17855894899510383413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A135035 (n : ℕ) : ℤ :=
  A135035.P17855894899510383413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A135035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135038.P9469269575299568111

`∑[4*n*A001505(n)]`
-/

namespace A135038.P9469269575299568111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A001505 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P9469269575299568111

noncomputable section

/-- A135038: Sums of the products of n consecutive quadruples of numbers.

Offset 1, canonical program `A135038.P9469269575299568111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135038 (n : ℕ) : ℤ :=
  A135038.P9469269575299568111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135051.P7821119163887232741

`(6*n+3)²-A060626(A052928(n))`
-/

namespace A135051.P7821119163887232741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 3) ^ 2 : ℤ) - A060626 (A052928 n).toNat

end

end A135051.P7821119163887232741

noncomputable section

/-- A135051: Pyramid game person numbers that have integer solutions.

Offset 1, canonical program `A135051.P7821119163887232741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135051 (n : ℕ) : ℤ :=
  A135051.P7821119163887232741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135172.P17366594049466022931

`3^A000040(n+1)+2^A000040(n+1)`
-/

namespace A135172.P17366594049466022931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000040 (n + 1) : ℤ) + (2 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A135172.P17366594049466022931

noncomputable section

/-- A135172: a(n) = 3^prime(n) + 2^prime(n).

Offset 1, canonical program `A135172.P17366594049466022931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135172.P17366594049466022931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135174.P17089642035438683001

`5^A000040(n+1)-3^A000040(n+1)+2^A000040(n+1)`
-/

namespace A135174.P17089642035438683001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000040 (n + 1) : ℤ) - (3 : ℚ) ^ (A000040 (n + 1) : ℤ) + (2 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A135174.P17089642035438683001

noncomputable section

/-- A135174: a(n) = 5^prime(n) - 3^prime(n) + 2^prime(n).

Offset 1, canonical program `A135174.P17089642035438683001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135174 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135174.P17089642035438683001.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135266.P14515893951908388375

`A132353(n)-1`
-/

namespace A135266.P14515893951908388375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n - 1

end

end A135266.P14515893951908388375

noncomputable section

/-- A135266: Partial sums of A132357.

Offset 0, canonical program `A135266.P14515893951908388375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A135266 (n : ℕ) : ℤ :=
  A135266.P14515893951908388375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A135266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135295.P7575543575562511418

`n^A055642(n)`
-/

namespace A135295.P7575543575562511418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A055642 n : ℤ)

end

end A135295.P7575543575562511418

noncomputable section

/-- A135295: a(n) = n^(number of decimal digits of n).

Offset 0, canonical program `A135295.P7575543575562511418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135295.P7575543575562511418.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135336.P8279202122990715746

`∑[A000957(n+1)]`
-/

namespace A135336.P8279202122990715746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P8279202122990715746

noncomputable section

/-- A135336: Number of Dyck paths of semilength n with no UUDU's starting at level 0.

Offset 0, canonical program `A135336.P8279202122990715746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A135336 (n : ℕ) : ℤ :=
  A135336.P8279202122990715746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A135336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135364.P6982887750509220026

`∑[A159347(n)]`
-/

namespace A135364.P6982887750509220026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135364.P6982887750509220026

noncomputable section

/-- A135364: First column of a triangle - see Comments lines.

Offset 0, canonical program `A135364.P6982887750509220026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A135364 (n : ℕ) : ℤ :=
  A135364.P6982887750509220026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A135364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135483.P6807936109355004994

`∑[A000040(n+1)*A131577(n)]+1`
-/

namespace A135483.P6807936109355004994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135483.P6807936109355004994

noncomputable section

/-- A135483: a(n) = Sum_{j=1..n} prime(j)*2^(j-2).

Offset 1, canonical program `A135483.P6807936109355004994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A135483 (n : ℕ) : ℤ :=
  A135483.P6807936109355004994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A135483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135500.P16863113817817893017

`(A198265(7*n+13)%2)²`
-/

namespace A135500.P16863113817817893017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198265 (7 * n + 13)) 2 ^ 2

end

end A135500.P16863113817817893017

noncomputable section

/-- A135500: Generating function for Viswanath's constant, using the golden string.

Offset 0, canonical program `A135500.P16863113817817893017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A135500 (n : ℕ) : ℤ :=
  A135500.P16863113817817893017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A135500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135506.P8225812204699964301

`A135504(n+2)/A135504(n+1)-1`
-/

namespace A135506.P8225812204699964301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135504 (n + 2) : ℚ) / (A135504 (n + 1) : ℚ) - 1

end

end A135506.P8225812204699964301

noncomputable section

/-- A135506: a(n) = x(n+1)/x(n) - 1 where x(1)=1 and x(k) = x(k-1) + lcm(x(k-1),k). Here x(n) = A135504(n).

Offset 1, canonical program `A135506.P8225812204699964301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135506.P8225812204699964301.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135554.P16521209771622638480

`eq[1, A032741(A055565(n))]²²`
-/

namespace A135554.P16521209771622638480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A055565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A135554.P16521209771622638480

noncomputable section

/-- A135554: Numbers k such that k is the fourth power of an integer and the sum of digits of k is prime.

Offset 1, canonical program `A135554.P16521209771622638480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A135554 (n : ℕ) : ℤ :=
  (A135554.P16521209771622638480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A135554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135593.P15696147614674031841

`A000085(n+2)+n*A001475(n+2)`
-/

namespace A135593.P15696147614674031841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 2) + (n : ℤ) * A001475 (n + 2)

end

end A135593.P15696147614674031841

noncomputable section

/-- A135593: Number of n X n symmetric (0,1)-matrices with exactly n+1 entries equal to 1 and no zero rows or columns.

Offset 2, canonical program `A135593.P15696147614674031841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A135593 (n : ℕ) : ℤ :=
  A135593.P15696147614674031841.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A135593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135675.P1986900746660072486

`A134917(n+1)-(n+1)`
-/

namespace A135675.P1986900746660072486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1) - (n + 1 : ℤ)

end

end A135675.P1986900746660072486

noncomputable section

/-- A135675: a(n) = ceiling(n^(4/3) - n).

Offset 1, canonical program `A135675.P1986900746660072486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135675 (n : ℕ) : ℤ :=
  A135675.P1986900746660072486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135677.P5883823209111760434

`A134917(n+1)+1+n`
-/

namespace A135677.P5883823209111760434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1) + 1 + (n : ℤ)

end

end A135677.P5883823209111760434

noncomputable section

/-- A135677: a(n) = ceiling(n^(4/3)+n).

Offset 1, canonical program `A135677.P5883823209111760434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135677 (n : ℕ) : ℤ :=
  A135677.P5883823209111760434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135687.P11082366657890201219

`a(n-1)-a(n-2)*A004001(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A135687.P11082366657890201219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) * A004001 (n + 1)

end

end A135687.P11082366657890201219

noncomputable section

/-- A135687: a(n) = a(n-1) - A004001(n)*a(n-2), a(1) = 1, a(2) = 1.

Offset 1, canonical program `A135687.P11082366657890201219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A135687 (n : ℕ) : ℤ :=
  A135687.P11082366657890201219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A135687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135736.P1249499101217788511

`round(∑[∑[n/A103505(n)]])`
-/

namespace A135736.P1249499101217788511
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A103505 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135736.P1249499101217788511

noncomputable section

/-- A135736: Nearest integer to n*Sum_{k=1..n} 1/k = rounded expected coupon collection numbers.

Offset 0, canonical program `A135736.P1249499101217788511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135736 (n : ℕ) : ℤ :=
  A135736.P1249499101217788511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135772.P4044123108069799030

`eq[A032741(n)+1, A029837(n+1)]`
-/

namespace A135772.P4044123108069799030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135772.P4044123108069799030

noncomputable section

/-- A135772: Numbers having equal number of divisors and binary digits.

Offset 1, canonical program `A135772.P4044123108069799030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A135772 (n : ℕ) : ℤ :=
  (A135772.P4044123108069799030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A135772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135773.P10227162081772110256

`eq[A032741(n)+1, A080342(n+1)]`
-/

namespace A135773.P10227162081772110256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135773.P10227162081772110256

noncomputable section

/-- A135773: Numbers having number of divisors equal to number of digits in base 3.

Offset 1, canonical program `A135773.P10227162081772110256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A135773 (n : ℕ) : ℤ :=
  (A135773.P10227162081772110256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A135773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135774.P8782741782115960523

`eq[A032741(n)+1, A000523(A000267(n))]`
-/

namespace A135774.P8782741782115960523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000267 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135774.P8782741782115960523

noncomputable section

/-- A135774: Numbers having number of divisors equal to number of digits in base 4.

Offset 1, canonical program `A135774.P8782741782115960523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A135774 (n : ℕ) : ℤ :=
  (A135774.P8782741782115960523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A135774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135908.P10742750767115336838

`A000792(n)-(char[2]+1)`
-/

namespace A135908.P10742750767115336838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A135908.P10742750767115336838

noncomputable section

/-- A135908: Clique number of commuting graph of symmetric group S_n.

Offset 0, canonical program `A135908.P10742750767115336838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A135908 (n : ℕ) : ℤ :=
  A135908.P10742750767115336838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A135908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135984.P11973225380063024695

`24*A000040(n+1)+7`
-/

namespace A135984.P11973225380063024695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000040 (n + 1) + 7

end

end A135984.P11973225380063024695

noncomputable section

/-- A135984: a(n) = 24(prime(n))+7.

Offset 1, canonical program `A135984.P11973225380063024695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135984 (n : ℕ) : ℤ :=
  A135984.P11973225380063024695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135996.P8145447889010572868

`2^n-A048764(2^n)`
-/

namespace A135996.P8145447889010572868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A048764 (2 ^ n)

end

end A135996.P8145447889010572868

noncomputable section

/-- A135996: Difference between 2^n and the largest factorial <= 2^n.

Offset 0, canonical program `A135996.P8145447889010572868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135996 (n : ℕ) : ℤ :=
  A135996.P8145447889010572868.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136059.P5455195698059956745

`p?[A124198(n+1)+1]`
-/

namespace A136059.P5455195698059956745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124198 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136059.P5455195698059956745

noncomputable section

/-- A136059: Daughter primes of order 10.

Offset 1, canonical program `A136059.P5455195698059956745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A136059 (n : ℕ) : ℤ :=
  A136059.P5455195698059956745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A136059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136066.P1749446073161886874

`p?[15*A000040(n+1)-14]`
-/

namespace A136066.P1749446073161886874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000040 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P1749446073161886874

noncomputable section

/-- A136066: Mother primes of order 7.

Offset 1, canonical program `A136066.P1749446073161886874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A136066 (n : ℕ) : ℤ :=
  A136066.P1749446073161886874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A136066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136073.P3838515583161840043

`p?[9*A000040(n+1)+8]`
-/

namespace A136073.P3838515583161840043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000040 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P3838515583161840043

noncomputable section

/-- A136073: Primes of the form 9*p + 8 with p prime.

Offset 1, canonical program `A136073.P3838515583161840043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A136073 (n : ℕ) : ℤ :=
  A136073.P3838515583161840043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A136073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136075.P14833966361891239066

`p?[13*A000040(n+1)+12]`
-/

namespace A136075.P14833966361891239066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000040 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P14833966361891239066

noncomputable section

/-- A136075: Primes of the form 13*p + 12 with p prime.

Offset 1, canonical program `A136075.P14833966361891239066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1763 terms. -/
def A136075 (n : ℕ) : ℤ :=
  A136075.P14833966361891239066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1763 terms. -/
def A136075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136080.P3495924471063362038

`p?[23*(A000040(n+1)+1)-1]`
-/

namespace A136080.P3495924471063362038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (A000040 (n + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P3495924471063362038

noncomputable section

/-- A136080: Primes of the form 23*p + 22 with p prime.

Offset 1, canonical program `A136080.P3495924471063362038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 555 terms. -/
def A136080 (n : ℕ) : ℤ :=
  A136080.P3495924471063362038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 555 terms. -/
def A136080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136138.P12917044871717773093

`A100005(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A136138.P12917044871717773093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100005 (2 * a (n - 1) + 1).toNat

end

end A136138.P12917044871717773093

noncomputable section

/-- A136138: a(n+1)=sopfr(4a(n)+1), with sopfr=A001414. Finishes with the cycle (34, 137, 67, 269, 362, 36).

Offset 0, canonical program `A136138.P12917044871717773093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136138 (n : ℕ) : ℤ :=
  A136138.P12917044871717773093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136139.P10237362881799138396

`A001414(5*a(n-1)+1)` with `a(0)=1`
-/

namespace A136139.P10237362881799138396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001414 (5 * a (n - 1) + 1).toNat

end

end A136139.P10237362881799138396

noncomputable section

/-- A136139: a(n+1)=sopfr(5a(n)+1), with sopfr=A001414. Finishes with a cycle with length 16.

Offset 1, canonical program `A136139.P10237362881799138396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136139 (n : ℕ) : ℤ :=
  A136139.P10237362881799138396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136185.P10286674294395953972

`∑[A103221(n+1)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A136185.P10286674294395953972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A136185.P10286674294395953972

noncomputable section

/-- A136185: Number of metacyclic groups of order p^n, prime p >= 3.

Offset 1, canonical program `A136185.P10286674294395953972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136185 (n : ℕ) : ℤ :=
  A136185.P10286674294395953972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136185.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A136251.P2724709432083116831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070635, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136251 (n : ℕ) : ℤ :=
  A136251.P2724709432083116831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070635, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136302.P9008239984659550942

`A141038(3*n+4)`
-/

namespace A136302.P9008239984659550942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (3 * n + 4)

end

end A136302.P9008239984659550942

noncomputable section

/-- A136302: Transform of A000027 by the T_{1,1} transformation (see link).

Offset 1, canonical program `A136302.P9008239984659550942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A136302 (n : ℕ) : ℤ :=
  A136302.P9008239984659550942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A136302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136303.P9616166969485110794

`∑[∑[A097550(n)]]`
-/

namespace A136303.P9616166969485110794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136303.P9616166969485110794

noncomputable section

/-- A136303: Expansion of g.f. (1 +x^2)/((1-x)^2*(1 -3*x +2*x^2 -x^3)).

Offset 0, canonical program `A136303.P9616166969485110794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A136303 (n : ℕ) : ℤ :=
  A136303.P9616166969485110794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A136303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136305.P15382937166975531667

`A276477(3*n+4)`
-/

namespace A136305.P15382937166975531667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (3 * n + 4)

end

end A136305.P15382937166975531667

noncomputable section

/-- A136305: Expansion of g.f. (3 -x +2*x^2)/(1 -3*x +2*x^2 -x^3).

Offset 0, canonical program `A136305.P15382937166975531667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A136305 (n : ℕ) : ℤ :=
  A136305.P15382937166975531667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A136305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136409.P5109166096281271109

`A020915(n)-1`
-/

namespace A136409.P5109166096281271109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n - 1

end

end A136409.P5109166096281271109

noncomputable section

/-- A136409: a(n) = floor(n*log_3(2)).

Offset 0, canonical program `A136409.P5109166096281271109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136409 (n : ℕ) : ℤ :=
  A136409.P5109166096281271109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136421.P11968398401948559083

`round(∑[A001333(n)]/A000079(n))`
-/

namespace A136421.P11968398401948559083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 n : ℚ))

end

end A136421.P11968398401948559083

noncomputable section

/-- A136421: a(n) = floor((x^n - (1-x)^n)/sqrt(2)+ 1/2) where x = (sqrt(2)+1)/2.

Offset 1, canonical program `A136421.P11968398401948559083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A136421 (n : ℕ) : ℤ :=
  A136421.P11968398401948559083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A136421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136422.P2914212242137417225

`round(A002530(n+1)/A016116(n))`
-/

namespace A136422.P2914212242137417225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002530 (n + 1) : ℚ) / (A016116 n : ℚ))

end

end A136422.P2914212242137417225

noncomputable section

/-- A136422: Floor((x^n - (1-x)^n)/sqrt(3)+.5) where x = (sqrt(3)+1)/2.

Offset 1, canonical program `A136422.P2914212242137417225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A136422 (n : ℕ) : ℤ :=
  A136422.P2914212242137417225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A136422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136424.P6325635514495236307

`round(∑[A002533(n)]/A000079(n))`
-/

namespace A136424.P6325635514495236307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 n : ℚ))

end

end A136424.P6325635514495236307

noncomputable section

/-- A136424: a(n) = floor((x^n - (1-x)^n) / (2x-1) +.5) where x = (sqrt(6)+1)/2 (and hence 2x-1 = sqrt(6)).

Offset 1, canonical program `A136424.P6325635514495236307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A136424 (n : ℕ) : ℤ :=
  A136424.P6325635514495236307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A136424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136425.P6286989724802641672

`round(A002536(n+1)/A016116(n))`
-/

namespace A136425.P6286989724802641672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002536 (n + 1) : ℚ) / (A016116 n : ℚ))

end

end A136425.P6286989724802641672

noncomputable section

/-- A136425: a(n) = floor((x^n-(1-x)^n)/sqrt(7)+1/2) where x = (sqrt(7)+1)/2.

Offset 1, canonical program `A136425.P6286989724802641672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A136425 (n : ℕ) : ℤ :=
  A136425.P6286989724802641672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A136425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136429.P4842593081704791646

`Δ[A350787(n+1)]`
-/

namespace A136429.P4842593081704791646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136429.P4842593081704791646

noncomputable section

/-- A136429: a(n) = Sum_{k=0..n} F(k+1)^2*F(n-k+1)^2 where F = Fibonacci numbers (A000045).

Offset 0, canonical program `A136429.P4842593081704791646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A136429 (n : ℕ) : ℤ :=
  A136429.P4842593081704791646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A136429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136437.P8810575506771486403

`A086801(n+1)+3-A048764(A086801(n+1)+3)`
-/

namespace A136437.P8810575506771486403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 3 - A048764 (A086801 (n + 1) + 3).toNat

end

end A136437.P8810575506771486403

noncomputable section

/-- A136437: a(n) = prime(n) - k! where k is the greatest number such that k! <= prime(n).

Offset 1, canonical program `A136437.P8810575506771486403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A136437 (n : ℕ) : ℤ :=
  A136437.P8810575506771486403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A136437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136572.P3186163325720509380

`Δ[A003422(A003056(n))]`
-/

namespace A136572.P3186163325720509380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136572.P3186163325720509380

noncomputable section

/-- A136572: Triangle read by rows: row n consists of n zeros followed by n!.

Offset 0, canonical program `A136572.P3186163325720509380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136572 (n : ℕ) : ℤ :=
  A136572.P3186163325720509380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136690.P4459734737890142272

`((n-val(A006047(n), 2))%4)!`
-/

namespace A136690.P4459734737890142272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n : ℤ) - (SequenceMachineLib.valuation (A006047 n).toNat 2 : ℤ)) 4).toNat

end

end A136690.P4459734737890142272

noncomputable section

/-- A136690: Final nonzero digit of n! in base 3.

Offset 0, canonical program `A136690.P4459734737890142272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136690 (n : ℕ) : ℤ :=
  (A136690.P4459734737890142272.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136692.P3604268324122598631

`A132739(n*a(n-1))%5` with `a(0)=1`
-/

namespace A136692.P3604268324122598631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A132739 ((n : ℤ) * a (n - 1)).toNat) 5

end

end A136692.P3604268324122598631

noncomputable section

/-- A136692: Final nonzero digit of n! in base 5.

Offset 0, canonical program `A136692.P3604268324122598631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A136692 (n : ℕ) : ℤ :=
  A136692.P3604268324122598631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A136692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136694.P15990081866710796202

`A277545(n*a(n-1))` with `a(0)=1`
-/

namespace A136694.P15990081866710796202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277545 ((n : ℤ) * a (n - 1)).toNat

end

end A136694.P15990081866710796202

noncomputable section

/-- A136694: Final nonzero digit of n! in base 7.

Offset 0, canonical program `A136694.P15990081866710796202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A136694 (n : ℕ) : ℤ :=
  A136694.P15990081866710796202.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A136694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136748.P10554759567997370342

`∑{d}[n+1, A010892(#-1)*A230074((n+1)/#)]`
-/

namespace A136748.P10554759567997370342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010892 (d - 1) * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A136748.P10554759567997370342

noncomputable section

/-- A136748: Expansion of (a(q) - a(q^2) - 4*a(q^4) + 4*a(q^8)) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A136748.P10554759567997370342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136748 (n : ℕ) : ℤ :=
  A136748.P10554759567997370342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137229.P7711672415012255701

`∑[∑[A052921(n)]]`
-/

namespace A137229.P7711672415012255701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P7711672415012255701

noncomputable section

/-- A137229: Expansion of g.f. x/((1-x)*(1-3*x+2*x^2-x^3)).

Offset 1, canonical program `A137229.P7711672415012255701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A137229 (n : ℕ) : ℤ :=
  A137229.P7711672415012255701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A137229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137249.P3206101480216285297

`A000931(3*n+1)+2*A003520(3*n)`
-/

namespace A137249.P3206101480216285297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n + 1) + 2 * A003520 (3 * n)

end

end A137249.P3206101480216285297

noncomputable section

/-- A137249: Expansion of g.f. z*(2-2*z+z^2+z^3)/((1+z)*(1-3*z+2*z^2-z^3)).

Offset 1, canonical program `A137249.P3206101480216285297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A137249 (n : ℕ) : ℤ :=
  A137249.P3206101480216285297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A137249.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A137282.P2016201665392545808

`A136408(n)%10`
-/

namespace A137282.P2016201665392545808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136408 n) 10

end

end A137282.P2016201665392545808

noncomputable section

/-- A137282: Final digit of A136408(n).

Offset 0, canonical program `A137282.P2016201665392545808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A137282 (n : ℕ) : ℤ :=
  A137282.P2016201665392545808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A137282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137323.P7439224015646553123

`∑{d}[n+1, A011782(#%(n+1))-1]`
-/

namespace A137323.P7439224015646553123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A011782 (d % (n + 1)) - 1)

end

end A137323.P7439224015646553123

noncomputable section

/-- A137323: a(n) = sum(d divides n, 2^(n/d-1) - 1 ), omitting d=1 and d=n.

Offset 1, canonical program `A137323.P7439224015646553123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A137323 (n : ℕ) : ℤ :=
  A137323.P7439224015646553123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A137323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137357.P8010613889612940067

`A052920(3*n+2)`
-/

namespace A137357.P8010613889612940067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (3 * n + 2)

end

end A137357.P8010613889612940067

noncomputable section

/-- A137357: a(n) = Sum_{k <= n/2} binomial(n-2k, 3k+1).

Offset 0, canonical program `A137357.P8010613889612940067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A137357 (n : ℕ) : ℤ :=
  A137357.P8010613889612940067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A137357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137377.P2996303202796642299

`∑[abs(Δ[A032741(n)])]`
-/

namespace A137377.P2996303202796642299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137377.P2996303202796642299

noncomputable section

/-- A137377: a(1)=0; for n >= 2, a(n) = a(n-1) + |d(n)-d(n-1)|, where d(n) is the number of positive divisors of n.

Offset 1, canonical program `A137377.P2996303202796642299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137377 (n : ℕ) : ℤ :=
  A137377.P2996303202796642299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137392.P9525613505829589852

`(9-n)*A000045(n+1)`
-/

namespace A137392.P9525613505829589852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - (n : ℤ)) * A000045 (n + 1)

end

end A137392.P9525613505829589852

noncomputable section

/-- A137392: (10-n) * Fibonacci(n).

Offset 1, canonical program `A137392.P9525613505829589852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A137392 (n : ℕ) : ℤ :=
  A137392.P9525613505829589852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A137392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137397.P9485766455204679455

`A070939(n)+A010052(A057979(n)²)`
-/

namespace A137397.P9485766455204679455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + A010052 (A057979 n ^ 2).toNat

end

end A137397.P9485766455204679455

noncomputable section

/-- A137397: Number of distinct palindromic subwords in the binary representation of n.

Offset 0, canonical program `A137397.P9485766455204679455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A137397 (n : ℕ) : ℤ :=
  A137397.P9485766455204679455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A137397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137424.P13893967941999792407

`C(Δ[A037123(n)], (n+1)%∑{digits}[n+1, #])`
-/

namespace A137424.P13893967941999792407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat ((n + 1) % ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

end

end A137424.P13893967941999792407

noncomputable section

/-- A137424: a(n) = binomial(digsum(n), n mod digsum(n)).

Offset 1, canonical program `A137424.P13893967941999792407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137424 (n : ℕ) : ℤ :=
  (A137424.P13893967941999792407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137669.P17129941573586355176

`A000040(floor(2*n/(n+3)+n+3)+2)`
-/

namespace A137669.P17129941573586355176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌊(2 * n : ℚ) / (n + 3 : ℚ) + (n + 3 : ℚ)⌋ + 2).toNat

end

end A137669.P17129941573586355176

noncomputable section

/-- A137669: Prime numbers p such that p +- a and p +- b are prime numbers where a and b are distinct positive integers with a < b < p.

Offset 1, canonical program `A137669.P17129941573586355176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A137669 (n : ℕ) : ℤ :=
  A137669.P17129941573586355176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A137669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137776.P16278498535273104316

`A138569(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A137776.P16278498535273104316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A138569 (n - 1) + a (n - 1)

end

end A137776.P16278498535273104316

noncomputable section

/-- A137776: Interleave A038504 with A131577.

Offset 0, canonical program `A137776.P16278498535273104316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A137776 (n : ℕ) : ℤ :=
  A137776.P16278498535273104316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A137776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137822.P4516574351647527238

`Δ[floor(A005836(2*n+1)/2)]`
-/

namespace A137822.P4516574351647527238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005836 (2 * n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137822.P4516574351647527238

noncomputable section

/-- A137822: First differences of A137821.

Offset 1, canonical program `A137822.P4516574351647527238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A137822 (n : ℕ) : ℤ :=
  A137822.P4516574351647527238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A137822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137951.P11331642743113292686

`∑[A061393(A053646(n+1))]-1`
-/

namespace A137951.P11331642743113292686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A053646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137951.P11331642743113292686

noncomputable section

/-- A137951: Redundant binary representation (A089591) of n interpreted as ternary number.

Offset 0, canonical program `A137951.P11331642743113292686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137951 (n : ℕ) : ℤ :=
  A137951.P11331642743113292686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138031.P314039487929949151

`A000040(n+1)^13`
-/

namespace A138031.P314039487929949151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 13

end

end A138031.P314039487929949151

noncomputable section

/-- A138031: a(n) = prime(n)^13.

Offset 1, canonical program `A138031.P314039487929949151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138031 (n : ℕ) : ℤ :=
  A138031.P314039487929949151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138041.P13167624330706923966

`A085939(n+1)+6*A085939(n)`
-/

namespace A138041.P13167624330706923966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085939 (n + 1) + 6 * A085939 n

end

end A138041.P13167624330706923966

noncomputable section

/-- A138041: a(1) = 1, a(2) = 10; for n>2, a(n+1) = 4*a(n) + 6*a(n-1). Also a(n) = upper left term in the 2 X 2 matrix [1,3; 3,3].

Offset 1, canonical program `A138041.P13167624330706923966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138041 (n : ℕ) : ℤ :=
  A138041.P13167624330706923966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138055.P2413489479582491722

`A141518(a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A138055.P2413489479582491722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A141518 (a (n - 2) + 1).toNat

end

end A138055.P2413489479582491722

noncomputable section

/-- A138055: Period 8: repeat 1, 3, 5, 9, 3, 1, 9, 5.

Offset 0, canonical program `A138055.P2413489479582491722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138055 (n : ℕ) : ℤ :=
  A138055.P2413489479582491722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138105.P2646176102833531750

`∑[A001690(n+1)]`
-/

namespace A138105.P2646176102833531750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P2646176102833531750

noncomputable section

/-- A138105: Partial sums of non-Fibonacci numbers A001690.

Offset 1, canonical program `A138105.P2646176102833531750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138105 (n : ℕ) : ℤ :=
  A138105.P2646176102833531750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138114.P8216364394645200314

`A011545(n-C(∑[char[∑[n]]], 2))%10`
-/

namespace A138114.P8216364394645200314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011545 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)) 10

end

end A138114.P8216364394645200314

noncomputable section

/-- A138114: Triangle read by rows: row n lists the first n digits of the decimal expansion of Pi.

Offset 1, canonical program `A138114.P8216364394645200314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A138114 (n : ℕ) : ℤ :=
  A138114.P8216364394645200314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A138114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138115.P4961606915047794437

`A011543(n-C(∑[char[∑[n]]], 2))%10`
-/

namespace A138115.P4961606915047794437
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011543 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)) 10

end

end A138115.P4961606915047794437

noncomputable section

/-- A138115: Triangle read by rows: row n lists the first n digits of the decimal expansion of e.

Offset 1, canonical program `A138115.P4961606915047794437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A138115 (n : ℕ) : ℤ :=
  A138115.P4961606915047794437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A138115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138144.P8705806710994065630

`A003953(n)+11%A015448(n)`
-/

namespace A138144.P8705806710994065630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 n + Int.tmod 11 (A015448 n)

end

end A138144.P8705806710994065630

noncomputable section

/-- A138144: Palindromes formed from the reflected decimal expansion of the concatenation of 1, 1 and infinite 0's.

Offset 1, canonical program `A138144.P8705806710994065630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138144 (n : ℕ) : ℤ :=
  A138144.P8705806710994065630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138149.P13595705331882650538

`A083375(n+1)%2`
-/

namespace A138149.P13595705331882650538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083375 (n + 1)) 2

end

end A138149.P13595705331882650538

noncomputable section

/-- A138149: n-th run has length n-th prime, with values 0 and 1 only, starting with 1.

Offset 1, canonical program `A138149.P13595705331882650538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138149 (n : ℕ) : ℤ :=
  A138149.P13595705331882650538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138187.P9933759919011647207

`A099254(2*(n+1))`
-/

namespace A138187.P9933759919011647207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (2 * (n + 1))

end

end A138187.P9933759919011647207

noncomputable section

/-- A138187: Hankel transform of binomial(2*n+3, n).

Offset 0, canonical program `A138187.P9933759919011647207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138187 (n : ℕ) : ℤ :=
  A138187.P9933759919011647207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138189.P7218943394307261532

`∑[A138188(n)]`
-/

namespace A138189.P7218943394307261532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138189.P7218943394307261532

noncomputable section

/-- A138189: Sequence built on pattern (1,-even,-even) beginning 1,-2,-2.

Offset 0, canonical program `A138189.P7218943394307261532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138189 (n : ℕ) : ℤ :=
  A138189.P7218943394307261532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138238.P5979147474928506645

`A084639(n)-4*a(n-1)` with `a(0)=0`
-/

namespace A138238.P5979147474928506645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084639 n - 4 * a (n - 1)

end

end A138238.P5979147474928506645

noncomputable section

/-- A138238: Alternating sum of the squares of the first n Jacobsthal numbers.

Offset 0, canonical program `A138238.P5979147474928506645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A138238 (n : ℕ) : ℤ :=
  A138238.P5979147474928506645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A138238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138332.P6845023293412119408

`(-1)^(n+1)*64*A053347(n)`
-/

namespace A138332.P6845023293412119408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (64 * A053347 n)

end

end A138332.P6845023293412119408

noncomputable section

/-- A138332: C(n+7, 7)*(n+4)*(-1)^(n+1)*16.

Offset 0, canonical program `A138332.P6845023293412119408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138332 (n : ℕ) : ℤ :=
  A138332.P6845023293412119408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138333.P7699813710887045586

`(-1)^(n+1)*256*A054334(n)`
-/

namespace A138333.P7699813710887045586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (256 * A054334 n)

end

end A138333.P7699813710887045586

noncomputable section

/-- A138333: C(n+9, 9)*(n+5)*(-1)^(n+1)*256/5.

Offset 0, canonical program `A138333.P7699813710887045586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054334, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138333 (n : ℕ) : ℤ :=
  A138333.P7699813710887045586.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054334, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138415.P3566733532317934836

`∑[A033321(abs(1-n))]-1`
-/

namespace A138415.P3566733532317934836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A138415.P3566733532317934836

noncomputable section

/-- A138415: Binomial transform of A000957.

Offset 0, canonical program `A138415.P3566733532317934836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A138415 (n : ℕ) : ℤ :=
  A138415.P3566733532317934836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A138415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138468.P4815621809690206900

`∑{digits}[A000045(n), (#+1)%2]`
-/

namespace A138468.P4815621809690206900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x + 1) % 2).sum

end

end A138468.P4815621809690206900

noncomputable section

/-- A138468: Number of even digits in Fibonacci numbers.

Offset 0, canonical program `A138468.P4815621809690206900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A138468 (n : ℕ) : ℤ :=
  (A138468.P4815621809690206900.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A138468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138587.P5508617581687332512

`record[A000975(A002265(n))+A000035(n)]`
-/

namespace A138587.P5508617581687332512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A002265 n).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138587.P5508617581687332512

noncomputable section

/-- A138587: The union of all entries of A024495, A131708 and A024493 sorted into natural order.

Offset 0, canonical program `A138587.P5508617581687332512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A138587 (n : ℕ) : ℤ :=
  A138587.P5508617581687332512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A138587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138620.P9967393734829156767

`round(A068231(n+1)/12)`
-/

namespace A138620.P9967393734829156767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A068231 (n + 1) : ℚ) / 12)

end

end A138620.P9967393734829156767

noncomputable section

/-- A138620: Nonnegative integers n such that 12*n-1 is prime.

Offset 1, canonical program `A138620.P9967393734829156767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138620 (n : ℕ) : ℤ :=
  A138620.P9967393734829156767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138676.P15800436432943780900

`A086874(n+1)%A000040(n+1)`
-/

namespace A138676.P15800436432943780900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086874 (n + 1)) (A000040 (n + 1))

end

end A138676.P15800436432943780900

noncomputable section

/-- A138676: a(n) = prime(n)^7 mod prime(n-1).

Offset 2, canonical program `A138676.P15800436432943780900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138676 (n : ℕ) : ℤ :=
  A138676.P15800436432943780900.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138708.P12330278295550734717

`eq[1, gcd(n, 2*A051801(n))]`
-/

namespace A138708.P12330278295550734717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (2 * A051801 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138708.P12330278295550734717

noncomputable section

/-- A138708: Numbers m such that A138707(m) = 1.

Offset 1, canonical program `A138708.P12330278295550734717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138708 (n : ℕ) : ℤ :=
  (A138708.P12330278295550734717.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138902.P6278283737230094535

`A055642(n)!`
-/

namespace A138902.P6278283737230094535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A055642 n).toNat

end

end A138902.P6278283737230094535

noncomputable section

/-- A138902: a(n) = d!, where d is the number of digits in n.

Offset 0, canonical program `A138902.P6278283737230094535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138902 (n : ℕ) : ℤ :=
  (A138902.P6278283737230094535.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138908.P3143620244841362508

`A055642(n)^A055642(n)`
-/

namespace A138908.P3143620244841362508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 n : ℚ) ^ (A055642 n : ℤ)

end

end A138908.P3143620244841362508

noncomputable section

/-- A138908: a(n) = d^d, where d is the number of digits in n.

Offset 0, canonical program `A138908.P3143620244841362508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138908.P3143620244841362508.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138950.P17312000599504240579

`∑{d}[n+1, A056594(#-1)*A061347((n+1)/#)]`
-/

namespace A138950.P17312000599504240579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A061347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138950.P17312000599504240579

noncomputable section

/-- A138950: Expansion of (2 - 3 * phi(q^3)^2 + phi(q)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A138950.P17312000599504240579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138950 (n : ℕ) : ℤ :=
  A138950.P17312000599504240579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138976.P18288275394208342510

`3-A136331(n+1)`
-/

namespace A138976.P18288275394208342510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A136331 (n + 1)

end

end A138976.P18288275394208342510

noncomputable section

/-- A138976: The discriminant of the characteristic polynomial of the O+ and O- submatrix for spin 3 of the nuclear electric quadrupole Hamiltonian is a perfect square for these values.

Offset 0, canonical program `A138976.P18288275394208342510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A138976 (n : ℕ) : ℤ :=
  A138976.P18288275394208342510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A138976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138999.P3567067932637558928

`A138988(n+2)-A138988(n+1)`
-/

namespace A138999.P3567067932637558928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 2) - A138988 (n + 1)

end

end A138999.P3567067932637558928

noncomputable section

/-- A138999: First differences of Frobenius numbers for 8 successive numbers A138988.

Offset 1, canonical program `A138999.P3567067932637558928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138999 (n : ℕ) : ℤ :=
  A138999.P3567067932637558928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139261.P3950349203648259578

`A139260(n-C(∑[char[∑[n]]], 2))%10`
-/

namespace A139261.P3950349203648259578
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139260 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)) 10

end

end A139261.P3950349203648259578

noncomputable section

/-- A139261: Triangle read by rows: row n lists the first n digits of the decimal expansion of Euler's constant (or Euler-Mascheroni constant) gamma.

Offset 1, canonical program `A139261.P3950349203648259578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A139261 (n : ℕ) : ℤ :=
  A139261.P3950349203648259578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A139261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139405.P15348069204411684963

`floor(p?[xor(6, A045382(n+1))]/8)`
-/

namespace A139405.P15348069204411684963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A045382 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A139405.P15348069204411684963

noncomputable section

/-- A139405: Numbers k such that 8*k+1 and 8*k+7 are primes.

Offset 1, canonical program `A139405.P15348069204411684963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A139405 (n : ℕ) : ℤ :=
  A139405.P15348069204411684963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A139405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139527.P8948728843495673632

`floor(A107003(n+1)/24)`
-/

namespace A139527.P8948728843495673632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107003 (n + 1) : ℚ) / 24⌋

end

end A139527.P8948728843495673632

noncomputable section

/-- A139527: Numbers n such that numbers 24n+5 are primes.

Offset 1, canonical program `A139527.P8948728843495673632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139527 (n : ℕ) : ℤ :=
  A139527.P8948728843495673632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139545.P2279821964139428983

`Δ[n/2*A130707(n)]`
-/

namespace A139545.P2279821964139428983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A130707 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139545.P2279821964139428983

noncomputable section

/-- A139545: Binomial transform of [1, 0, 0, 4, 0, 0, 7, 0, 0, 10, ...].

Offset 1, canonical program `A139545.P2279821964139428983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A139545 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139545.P2279821964139428983.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A139545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139554.P10411335472978282588

`A003418(floor(n/4))`
-/

namespace A139554.P10411335472978282588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ⌊(n : ℚ) / 4⌋.toNat

end

end A139554.P10411335472978282588

noncomputable section

/-- A139554: a(n) = lcm(1..floor(n/4)).

Offset 0, canonical program `A139554.P10411335472978282588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 932 terms. -/
def A139554 (n : ℕ) : ℤ :=
  A139554.P10411335472978282588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 932 terms. -/
def A139554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139566.P7906999163141125478

`A003132(a(n-1))` with `a(0)=15`
-/

namespace A139566.P7906999163141125478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A139566.P7906999163141125478

noncomputable section

/-- A139566: a(n) is the sum of squares of digits of a(n-1); a(1)=15.

Offset 1, canonical program `A139566.P7906999163141125478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139566 (n : ℕ) : ℤ :=
  A139566.P7906999163141125478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139706.P6502965109858456263

`A053644(n+1)+floor(n/(xor(n, n+1)+1))`
-/

namespace A139706.P6502965109858456263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A139706.P6502965109858456263

noncomputable section

/-- A139706: Take n in binary. Rotate the binary digits to the right until a 1 once again appears as the leftmost digit. Convert back into decimal for a(n).

Offset 1, canonical program `A139706.P6502965109858456263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139706 (n : ℕ) : ℤ :=
  A139706.P6502965109858456263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139734.P2831800765796272256

`--A139736(n)%A000244(n)`
-/

namespace A139734.P2831800765796272256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A139736 n) (A000244 n)

end

end A139734.P2831800765796272256

noncomputable section

/-- A139734: a(n) = 10^n mod 3^n.

Offset 0, canonical program `A139734.P2831800765796272256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A139734 (n : ℕ) : ℤ :=
  A139734.P2831800765796272256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A139734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139753.P8486612340875185975

`∪[A077121(n+2)², A000578(n+1)]`
-/

namespace A139753.P8486612340875185975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139753.P8486612340875185975

noncomputable section

/-- A139753: a(2n) = next cube after a(2n-1), a(2n+1) = next square after a(2n).

Offset 1, canonical program `A139753.P8486612340875185975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139753 (n : ℕ) : ℤ :=
  (A139753.P8486612340875185975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A139753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139797.P5447272706688979556

`A328284(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A139797.P5447272706688979556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A328284 n - a (n - 3)

end

end A139797.P5447272706688979556

noncomputable section

/-- A139797: Inverse binomial transform of [0, A133474].

Offset 0, canonical program `A139797.P5447272706688979556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A139797 (n : ℕ) : ℤ :=
  A139797.P5447272706688979556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A139797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139817.P1238485157427704906

`A000079(n)-A055642(A000079(n))`
-/

namespace A139817.P1238485157427704906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A055642 (A000079 n).toNat

end

end A139817.P1238485157427704906

noncomputable section

/-- A139817: 2^n - number of digits of 2^n.

Offset 0, canonical program `A139817.P1238485157427704906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139817 (n : ℕ) : ℤ :=
  A139817.P1238485157427704906.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139819.P4370490591155329698

`comp[A010785(n)]`
-/

namespace A139819.P4370490591155329698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139819.P4370490591155329698

noncomputable section

/-- A139819: Complement of repdigit numbers A010785.

Offset 1, canonical program `A139819.P4370490591155329698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139819 (n : ℕ) : ℤ :=
  (A139819.P4370490591155329698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139829.P13665928787856766008

`∩[A007520(n+1), A033201(n+1)]`
-/

namespace A139829.P13665928787856766008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P13665928787856766008

noncomputable section

/-- A139829: Primes of the form 4x^2+4xy+11y^2.

Offset 1, canonical program `A139829.P13665928787856766008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5027 terms. -/
def A139829 (n : ℕ) : ℤ :=
  (A139829.P13665928787856766008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5027 terms. -/
def A139829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139832.P1996384632668856702

`p?[A106865(n+1)%3*A106865(n+1)]`
-/

namespace A139832.P1996384632668856702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106865 (n + 1)) 3 * A106865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139832.P1996384632668856702

noncomputable section

/-- A139832: Primes of the form 7x^2+4xy+7y^2.

Offset 1, canonical program `A139832.P1996384632668856702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139832 (n : ℕ) : ℤ :=
  A139832.P1996384632668856702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139849.P14846005431646973738

`∩[A068228(n+1), A106878(n+1)]`
-/

namespace A139849.P14846005431646973738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P14846005431646973738

noncomputable section

/-- A139849: Primes of the form 10x^2 + 10xy + 13y^2.

Offset 1, canonical program `A139849.P14846005431646973738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A139849 (n : ℕ) : ℤ :=
  (A139849.P14846005431646973738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A139849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139851.P5862559983598853458

`∩[A007521(n+1), A033207(n+1)]`
-/

namespace A139851.P5862559983598853458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P5862559983598853458

noncomputable section

/-- A139851: Primes of the form 4x^2+4xy+29y^2.

Offset 1, canonical program `A139851.P5862559983598853458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A139851 (n : ℕ) : ℤ :=
  (A139851.P5862559983598853458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A139851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139856.P14634130966757054836

`p?[or(4, A107151(n+1))]`
-/

namespace A139856.P14634130966757054836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107151 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139856.P14634130966757054836

noncomputable section

/-- A139856: Primes of the form 5x^2 + 24y^2.

Offset 1, canonical program `A139856.P14634130966757054836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A139856 (n : ℕ) : ℤ :=
  A139856.P14634130966757054836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A139856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139859.P14800139496592021057

`p?[A227863(n+1)+10]`
-/

namespace A139859.P14800139496592021057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139859.P14800139496592021057

noncomputable section

/-- A139859: Primes of the form 11x^2+2xy+11y^2.

Offset 1, canonical program `A139859.P14800139496592021057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A139859 (n : ℕ) : ℤ :=
  A139859.P14800139496592021057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A139859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139897.P9665404664417300047

`∩[A106859(n+1), A107007(n+1)]`
-/

namespace A139897.P9665404664417300047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P9665404664417300047

noncomputable section

/-- A139897: Primes of the form 3*x^2+80*y^2.

Offset 1, canonical program `A139897.P9665404664417300047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A139897 (n : ℕ) : ℤ :=
  (A139897.P9665404664417300047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A139897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139898.P6708034355655365874

`∩[A007521(n+1), A033212(n+1)]`
-/

namespace A139898.P6708034355655365874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P6708034355655365874

noncomputable section

/-- A139898: Primes of the form 4x^2+4xy+61y^2.

Offset 1, canonical program `A139898.P6708034355655365874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139898 (n : ℕ) : ℤ :=
  (A139898.P6708034355655365874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140145.P3233202726742133382

`A135332(n+1)+A110660(n)`
-/

namespace A140145.P3233202726742133382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135332 (n + 1) + A110660 n

end

end A140145.P3233202726742133382

noncomputable section

/-- A140145: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^3 if n is even.

Offset 1, canonical program `A140145.P3233202726742133382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140145 (n : ℕ) : ℤ :=
  A140145.P3233202726742133382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140146.P11502840702865608134

`A140142(n+1)+A110660(n)`
-/

namespace A140146.P11502840702865608134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140142 (n + 1) + A110660 n

end

end A140146.P11502840702865608134

noncomputable section

/-- A140146: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^4 if n is even.

Offset 1, canonical program `A140146.P11502840702865608134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140146 (n : ℕ) : ℤ :=
  A140146.P11502840702865608134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140147.P9455521243256040217

`A140143(n+1)+A110660(n)`
-/

namespace A140147.P9455521243256040217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140143 (n + 1) + A110660 n

end

end A140147.P9455521243256040217

noncomputable section

/-- A140147: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^5 if n is even.

Offset 1, canonical program `A140147.P9455521243256040217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140147 (n : ℕ) : ℤ :=
  A140147.P9455521243256040217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140156.P9934868189419082312

`A140143(n+1)+A140152(n+1)-(n+1)`
-/

namespace A140156.P9934868189419082312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140143 (n + 1) + (A140152 (n + 1) - (n + 1 : ℤ))

end

end A140156.P9934868189419082312

noncomputable section

/-- A140156: a(1)=1, a(n) = a(n-1) + n^3 if n odd, a(n) = a(n-1) + n^5 if n is even.

Offset 1, canonical program `A140156.P9934868189419082312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140156 (n : ℕ) : ℤ :=
  A140156.P9934868189419082312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140158.P8893262957230173320

`A140157(n+1)+(n-A004526(n))²`
-/

namespace A140158.P8893262957230173320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140157 (n + 1) + ((n : ℤ) - A004526 n) ^ 2

end

end A140158.P8893262957230173320

noncomputable section

/-- A140158: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^1 if n is even.

Offset 1, canonical program `A140158.P8893262957230173320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140158 (n : ℕ) : ℤ :=
  A140158.P8893262957230173320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140163.P3928435907292493701

`A135095(n+1)+A136047(n+1)-A000330(n+1)`
-/

namespace A140163.P3928435907292493701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135095 (n + 1) + (A136047 (n + 1) - A000330 (n + 1))

end

end A140163.P3928435907292493701

noncomputable section

/-- A140163: a(1)=1, a(n) = a(n-1) + n^5 if n odd, a(n) = a(n-1) + n if n is even.

Offset 1, canonical program `A140163.P3928435907292493701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140163 (n : ℕ) : ℤ :=
  A140163.P3928435907292493701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140227.P15039973297700042189

`A005918(n)+A002415(n)`
-/

namespace A140227.P15039973297700042189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n + A002415 n

end

end A140227.P15039973297700042189

noncomputable section

/-- A140227: Binomial transform of [1, 4, 6, 4, 1, 1, -1, 1, -1, 1, ...].

Offset 1, canonical program `A140227.P15039973297700042189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140227 (n : ℕ) : ℤ :=
  A140227.P15039973297700042189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140313.P14708941762040753786

`A232801(xor(1, A102899(n)))`
-/

namespace A140313.P14708941762040753786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (Int.xor 1 (A102899 n)).toNat

end

end A140313.P14708941762040753786

noncomputable section

/-- A140313: First differences of A140298.

Offset 0, canonical program `A140313.P14708941762040753786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A140313 (n : ℕ) : ℤ :=
  A140313.P14708941762040753786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A140313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140341.P3573548250837569440

`A005843(A000523(A000523(n+1)+1))+A000523(n+1)+1`
-/

namespace A140341.P3573548250837569440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000523 (A000523 (n + 1) + 1).toNat).toNat + (A000523 (n + 1) + 1)

end

end A140341.P3573548250837569440

noncomputable section

/-- A140341: The number of bits needed to write the universal code for an Elias delta coding, the simplest asymptotically optimal code.

Offset 1, canonical program `A140341.P3573548250837569440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140341 (n : ℕ) : ℤ :=
  A140341.P3573548250837569440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140354.P14697721720665533389

`2*a(n-1)+A140325(n)` with `a(0)=1`
-/

namespace A140354.P14697721720665533389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A140325 n

end

end A140354.P14697721720665533389

noncomputable section

/-- A140354: a(n) = binomial(n+9,9)*2^n.

Offset 0, canonical program `A140354.P14697721720665533389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140354 (n : ℕ) : ℤ :=
  A140354.P14697721720665533389.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140358.P7154466592656904482

`a(2-A131507(n)+n)+2` with `a(0)=0, a(1)=1`
-/

namespace A140358.P7154466592656904482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (2 - A131507 n + (n : ℤ)).toNat + 2

end

end A140358.P7154466592656904482

noncomputable section

/-- A140358: Smallest nonnegative integer k such that n = +-1+-2+-...+-k for some choice of +'s and -'s.

Offset 0, canonical program `A140358.P7154466592656904482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140358 (n : ℕ) : ℤ :=
  (A140358.P7154466592656904482.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140367.P5913392187003139529

`filter[A154609(2*n), A066247(#)]`
-/

namespace A140367.P5913392187003139529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140367.P5913392187003139529

noncomputable section

/-- A140367: Composites of the form 26k + 5.

Offset 1, canonical program `A140367.P5913392187003139529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1969 terms. -/
def A140367 (n : ℕ) : ℤ :=
  A140367.P5913392187003139529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1969 terms. -/
def A140367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140368.P7551118825088624686

`filter[A127547(2*n+1), A066247(#)]`
-/

namespace A140368.P7551118825088624686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140368.P7551118825088624686

noncomputable section

/-- A140368: Composites of the form 26k + 17.

Offset 1, canonical program `A140368.P7551118825088624686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A140368 (n : ℕ) : ℤ :=
  A140368.P7551118825088624686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A140368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140402.P13075886914447659763

`∑[A057355(n)]+1-A001399(n)`
-/

namespace A140402.P13075886914447659763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A001399 n)

end

end A140402.P13075886914447659763

noncomputable section

/-- A140402: Expansion of x^4/((1-x)^2*(1-x^3)) + x^5/((1-x)*(1-x^2)*(1-x^5)).

Offset 0, canonical program `A140402.P13075886914447659763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140402 (n : ℕ) : ℤ :=
  A140402.P13075886914447659763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140462.P12425142477791766870

`∑[∑[A009947(n)]]-A000212(n)`
-/

namespace A140462.P12425142477791766870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000212 n

end

end A140462.P12425142477791766870

noncomputable section

/-- A140462: Turan's upper bound on the number of triangles of a simplicial complex of dimension two for which every minimal non-face has three vertices.

Offset 0, canonical program `A140462.P12425142477791766870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140462 (n : ℕ) : ℤ :=
  A140462.P12425142477791766870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140479.P6310217121719682251

`abs(∑{digits}[n², dr(10^#)]-A253909(n))`
-/

namespace A140479.P6310217121719682251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum : ℕ) : ℤ) - A253909 n|

end

end A140479.P6310217121719682251

noncomputable section

/-- A140479: n^2 - number of digits of n^2.

Offset 0, canonical program `A140479.P6310217121719682251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140479 (n : ℕ) : ℤ :=
  A140479.P6310217121719682251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140535.P2681751241068162484

`∩[A111092(n+1), A132240(n+1)]`
-/

namespace A140535.P2681751241068162484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140535.P2681751241068162484

noncomputable section

/-- A140535: Primes congruent to 1 or 209 mod 210.

Offset 1, canonical program `A140535.P2681751241068162484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A140535 (n : ℕ) : ℤ :=
  (A140535.P2681751241068162484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A140535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140536.P4269880682316229653

`p?[A154266(n)+1-A057353(n)]`
-/

namespace A140536.P4269880682316229653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + (1 - A057353 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140536.P4269880682316229653

noncomputable section

/-- A140536: Primes congruent to 13 or 197 mod 210.

Offset 1, canonical program `A140536.P4269880682316229653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A140536 (n : ℕ) : ℤ :=
  A140536.P4269880682316229653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A140536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140554.P8177830334213448867

`Δ[A066841(n+1)]`
-/

namespace A140554.P8177830334213448867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140554.P8177830334213448867

noncomputable section

/-- A140554: First differences of A066841.

Offset 1, canonical program `A140554.P8177830334213448867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A140554 (n : ℕ) : ℤ :=
  A140554.P8177830334213448867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A140554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140562.P5085066410064209920

`p?[(n+3)%A000203(n+1)-28]`
-/

namespace A140562.P5085066410064209920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A000203 (n + 1)) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140562.P5085066410064209920

noncomputable section

/-- A140562: Primes p such that p + 26 is not a prime.

Offset 1, canonical program `A140562.P5085066410064209920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A140562 (n : ℕ) : ℤ :=
  A140562.P5085066410064209920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A140562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140569.P1939269064577882757

`p?[A047209(n+1)+2*A159754(n+1)]`
-/

namespace A140569.P1939269064577882757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) + 2 * A159754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140569.P1939269064577882757

noncomputable section

/-- A140569: Primes congruent to 19 or 191 mod 210.

Offset 1, canonical program `A140569.P1939269064577882757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1805 terms. -/
def A140569 (n : ℕ) : ℤ :=
  A140569.P1939269064577882757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1805 terms. -/
def A140569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140572.P14395771021435114242

`p?[A241521(n+1)+A047522(n+1)]`
-/

namespace A140572.P14395771021435114242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241521 (n + 1) + A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140572.P14395771021435114242

noncomputable section

/-- A140572: Primes congruent to 23 or 187 mod 210.

Offset 1, canonical program `A140572.P14395771021435114242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A140572 (n : ℕ) : ℤ :=
  A140572.P14395771021435114242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A140572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140573.P2976857677726739981

`p?[A057539(A007310(n+1)+n+1)]`
-/

namespace A140573.P2976857677726739981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (A007310 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140573.P2976857677726739981

noncomputable section

/-- A140573: Primes congruent to 29 or 181 mod 210.

Offset 1, canonical program `A140573.P2976857677726739981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. -/
def A140573 (n : ℕ) : ℤ :=
  A140573.P2976857677726739981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. -/
def A140573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140587.P15814081933764653476

`p?[A249674(n)+A238470(2*n)]`
-/

namespace A140587.P15814081933764653476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A238470 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140587.P15814081933764653476

noncomputable section

/-- A140587: Primes congruent to 31 or 179 mod 210.

Offset 1, canonical program `A140587.P15814081933764653476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A140587 (n : ℕ) : ℤ :=
  A140587.P15814081933764653476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A140587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140592.P9802847602468291615

`A001969(n+1)+2`
-/

namespace A140592.P9802847602468291615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + 2

end

end A140592.P9802847602468291615

noncomputable section

/-- A140592: a(n) = 2n if A010060(n-1) is 0, and a(n) = 2n+1 if A010060(n-1) is 1.

Offset 1, canonical program `A140592.P9802847602468291615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140592 (n : ℕ) : ℤ :=
  A140592.P9802847602468291615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140593.P10671109267607141112

`p?[A053741(n)+A017581(A032793(n+1))]`
-/

namespace A140593.P10671109267607141112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017581 (A032793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140593.P10671109267607141112

noncomputable section

/-- A140593: Primes congruent to 37 or 173 mod 210.

Offset 1, canonical program `A140593.P10671109267607141112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1478 terms. -/
def A140593 (n : ℕ) : ℤ :=
  A140593.P10671109267607141112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1478 terms. -/
def A140593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140640.P18207931973337898726

`p?[5*A247128(n+1)-(n+1)]`
-/

namespace A140640.P18207931973337898726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A247128 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P18207931973337898726

noncomputable section

/-- A140640: Primes congruent to 43 or 167 mod 210.

Offset 1, canonical program `A140640.P18207931973337898726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A140640 (n : ℕ) : ℤ :=
  A140640.P18207931973337898726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A140640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140641.P4247190238463387378

`p?[A248474(A017029(n))]`
-/

namespace A140641.P4247190238463387378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A017029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140641.P4247190238463387378

noncomputable section

/-- A140641: Primes congruent to 47 or 163 mod 210.

Offset 1, canonical program `A140641.P4247190238463387378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A140641 (n : ℕ) : ℤ :=
  A140641.P4247190238463387378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A140641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140655.P7745099200111804392

`p?[A304840(2*n+1)+A109613(n+2)]`
-/

namespace A140655.P7745099200111804392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (2 * n + 1) + A109613 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P7745099200111804392

noncomputable section

/-- A140655: Primes congruent to 53 or 157 mod 210.

Offset 1, canonical program `A140655.P7745099200111804392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1809 terms. -/
def A140655 (n : ℕ) : ℤ :=
  A140655.P7745099200111804392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1809 terms. -/
def A140655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140687.P11626312443094119930

`p?[2*A155107(n+1)-A065033(n)]`
-/

namespace A140687.P11626312443094119930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155107 (n + 1) - A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P11626312443094119930

noncomputable section

/-- A140687: Primes congruent to 59 or 151 mod 210.

Offset 1, canonical program `A140687.P11626312443094119930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A140687 (n : ℕ) : ℤ :=
  A140687.P11626312443094119930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A140687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140726.P14915820974214834436

`p?[A249674(n)+A238470(n)]`
-/

namespace A140726.P14915820974214834436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A238470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P14915820974214834436

noncomputable section

/-- A140726: Primes congruent to 61 or 149 mod 210.

Offset 1, canonical program `A140726.P14915820974214834436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A140726 (n : ℕ) : ℤ :=
  A140726.P14915820974214834436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A140726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140731.P14119832605904871914

`p?[A241520(n+1)+A017113(n)]`
-/

namespace A140731.P14119832605904871914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241520 (n + 1) + A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P14119832605904871914

noncomputable section

/-- A140731: Primes congruent to 67 or 143 mod 210.

Offset 1, canonical program `A140731.P14119832605904871914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A140731 (n : ℕ) : ℤ :=
  A140731.P14119832605904871914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A140731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140732.P10377411480655812818

`∩[A111092(n+1), A140506(n+1)]`
-/

namespace A140732.P10377411480655812818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140732.P10377411480655812818

noncomputable section

/-- A140732: Primes congruent to 71 or 139 mod 210.

Offset 1, canonical program `A140732.P10377411480655812818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A140732 (n : ℕ) : ℤ :=
  (A140732.P10377411480655812818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A140732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140742.P11985771280274507556

`p?[A241521(n+1)+A206525(n+1)]`
-/

namespace A140742.P11985771280274507556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241521 (n + 1) + A206525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P11985771280274507556

noncomputable section

/-- A140742: Primes congruent to 73 or 137 mod 210.

Offset 1, canonical program `A140742.P11985771280274507556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3290 terms. -/
def A140742 (n : ℕ) : ℤ :=
  A140742.P11985771280274507556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3290 terms. -/
def A140742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140743.P10125303616789807518

`p?[A053742(n)+A047209(n+1)]`
-/

namespace A140743.P10125303616789807518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A047209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P10125303616789807518

noncomputable section

/-- A140743: Primes congruent to 79 or 131 mod 210.

Offset 1, canonical program `A140743.P10125303616789807518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A140743 (n : ℕ) : ℤ :=
  A140743.P10125303616789807518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A140743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140751.P16826418069839501853

`C(floor(sqrt(n)), A088226(n+1))`
-/

namespace A140751.P16826418069839501853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.sqrt n) (A088226 (n + 1)).toNat

end

end A140751.P16826418069839501853

noncomputable section

/-- A140751: Triangle read by rows, X^n * [1,0,0,0,...] where X = an infinite tridiagonal matrix with (1,0,1,0,1,...) in the main and subdiagonals and (1,1,1,...) in the subsubdiagonal.

Offset 0, canonical program `A140751.P16826418069839501853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A140751 (n : ℕ) : ℤ :=
  (A140751.P16826418069839501853.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A140751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140771.P5669248433578580930

`p?[9*A008458(n)-A008706(A072154(n))]`
-/

namespace A140771.P5669248433578580930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A008458 n - A008706 (A072154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P5669248433578580930

noncomputable section

/-- A140771: Primes congruent to 83 or 127 mod 210.

Offset 1, canonical program `A140771.P5669248433578580930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 656 terms. -/
def A140771 (n : ℕ) : ℤ :=
  A140771.P5669248433578580930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 656 terms. -/
def A140771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140772.P16304119335175969558

`p?[A176010(n+1)+A016825(n)]`
-/

namespace A140772.P16304119335175969558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176010 (n + 1) + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P16304119335175969558

noncomputable section

/-- A140772: Primes congruent to 89 or 121 mod 210.

Offset 1, canonical program `A140772.P16304119335175969558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1807 terms. -/
def A140772 (n : ℕ) : ℤ :=
  A140772.P16304119335175969558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1807 terms. -/
def A140772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140782.P1653428901956576105

`A000203(n+1)*A011583(n+1)`
-/

namespace A140782.P1653428901956576105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A011583 (n + 1)

end

end A140782.P1653428901956576105

noncomputable section

/-- A140782: a(n) = sigma(n) * Kronecker(13, n).

Offset 1, canonical program `A140782.P1653428901956576105`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140782 (n : ℕ) : ℤ :=
  A140782.P1653428901956576105.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140782.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140787.P17984123096991948922

`A199572(n)+A045883(n)`
-/

namespace A140787.P17984123096991948922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199572 n + A045883 n

end

end A140787.P17984123096991948922

noncomputable section

/-- A140787: Expansion of 1 / ( (1+x)*(2*x+1)*(-1+2*x)^2 ).

Offset 0, canonical program `A140787.P17984123096991948922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A140787 (n : ℕ) : ℤ :=
  A140787.P17984123096991948922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A140787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140828.P8834970046235719719

`ceil(A000040(n)/a(n-1))` with `a(0)=1`
-/

namespace A140828.P8834970046235719719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A000040 n : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140828.P8834970046235719719

noncomputable section

/-- A140828: a(0)=1, a(n) = ceiling(prime(n)/a(n-1)), where prime(n) is the n-th prime.

Offset 0, canonical program `A140828.P8834970046235719719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140828 (n : ℕ) : ℤ :=
  A140828.P8834970046235719719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140829.P7126162964414764134

`ceil(A000045(n)/a(n-1))` with `a(0)=1`
-/

namespace A140829.P7126162964414764134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A000045 n : ℚ) / (a (n - 1) : ℚ)⌉

end

end A140829.P7126162964414764134

noncomputable section

/-- A140829: a(0)=1; for n >= 1, a(n) = ceiling(Fibonacci(n)/a(n-1)).

Offset 0, canonical program `A140829.P7126162964414764134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A140829 (n : ℕ) : ℤ :=
  A140829.P7126162964414764134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A140829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140925.P14377165461745035040

`A001287(n)/(n+1)*A001288(n)`
-/

namespace A140925.P14377165461745035040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001287 (n + 10) : ℚ) / (n + 1 : ℚ) * (A001288 (n + 11) : ℚ)

end

end A140925.P14377165461745035040

noncomputable section

/-- A140925: a(n) = binomial(m+n-1,n)^2 - binomial(m+n,n+1)*binomial(m+n-2,n-1) with m=12.

Offset 0, canonical program `A140925.P14377165461745035040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140925.P14377165461745035040.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140934.P2309246815187819334

`C(n+11, 10)/11*∑[A001288(n)]`
-/

namespace A140934.P2309246815187819334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 11) 10 : ℚ) / 11 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A140934.P2309246815187819334

noncomputable section

/-- A140934: Number of 2 X 11 matrices with elements in 0..n with each row and each column in nondecreasing order. 2,11,n can be permuted, see formula.

Offset 0, canonical program `A140934.P2309246815187819334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140934.P2309246815187819334.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141035.P5034196932230057115

`A140684(n)-n%10`
-/

namespace A141035.P5034196932230057115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140684 n - ((n % 10 : ℕ) : ℤ)

end

end A141035.P5034196932230057115

noncomputable section

/-- A141035: Period 10: repeat 0, 0, 4, 2, -2, 4, 2, -4, -4, -2.

Offset 0, canonical program `A141035.P5034196932230057115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141035 (n : ℕ) : ℤ :=
  A141035.P5034196932230057115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141071.P9905720833505795311

`A000040(n+1)%∑{digits}[n+1, #]`
-/

namespace A141071.P9905720833505795311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P9905720833505795311

noncomputable section

/-- A141071: a(n) = prime(n) mod (sum of base-10 digits of n) where prime(n) is the n-th prime.

Offset 1, canonical program `A141071.P9905720833505795311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141071 (n : ℕ) : ℤ :=
  A141071.P9905720833505795311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141072.P18295250080811504403

`ceil(record[∑[A122997(n)/2]])`
-/

namespace A141072.P18295250080811504403
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122997 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A141072.P18295250080811504403

noncomputable section

/-- A141072: Sum of diagonal numbers in a Pascal-like triangle with index of asymmetry y = 3 and index of obliquity z = 0 (going upwards, left to right).

Offset 1, canonical program `A141072.P18295250080811504403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A141072 (n : ℕ) : ℤ :=
  A141072.P18295250080811504403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A141072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141124.P120687196524492228

`(A009001(n)*A016813(n))%A004767(n)`
-/

namespace A141124.P120687196524492228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009001 n * A016813 n) (A004767 n)

end

end A141124.P120687196524492228

noncomputable section

/-- A141124: Hankel transform of a transform of Jacobsthal numbers.

Offset 0, canonical program `A141124.P120687196524492228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141124 (n : ℕ) : ℤ :=
  A141124.P120687196524492228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141134.P11216613699486305974

`Δ[Δ[A000096(n)%(2*n+3)]]`
-/

namespace A141134.P11216613699486305974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (2 * n + 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141134.P11216613699486305974

noncomputable section

/-- A141134: Hankel transform of C(2n+4,n+4).

Offset 0, canonical program `A141134.P11216613699486305974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141134 (n : ℕ) : ℤ :=
  A141134.P11216613699486305974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141160.P1294984761903642852

`∩[A003625(n+1), A045309(n+1)]`
-/

namespace A141160.P1294984761903642852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P1294984761903642852

noncomputable section

/-- A141160: Primes of the form -x^2 + 3*x*y + 3*y^2 (as well as of the form 5*x^2 + 9*x*y + 3*y^2).

Offset 1, canonical program `A141160.P1294984761903642852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A141160 (n : ℕ) : ℤ :=
  (A141160.P1294984761903642852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A141160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141173.P1291796232190447647

`∩[A002145(n+1), A045399(n+1)]`
-/

namespace A141173.P1291796232190447647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P1291796232190447647

noncomputable section

/-- A141173: Primes of the form -2*x^2+2*x*y+3*y^2 (as well as of the form 6*x^2+10*x*y+3*y^2).

Offset 1, canonical program `A141173.P1291796232190447647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A141173 (n : ℕ) : ℤ :=
  (A141173.P1291796232190447647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A141173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141179.P8753015154346743664

`∩[A042993(n+1), A042999(n+1)]`
-/

namespace A141179.P8753015154346743664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P8753015154346743664

noncomputable section

/-- A141179: Primes of the form 3*x^2 + 2*x*y - 3*y^2 (as well as of the form 3*x^2 + 8*x*y + 2*y^2).

Offset 1, canonical program `A141179.P8753015154346743664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A141179 (n : ℕ) : ℤ :=
  (A141179.P8753015154346743664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A141179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141190.P11090339652137459371

`∩[A033203(n+1), A045373(n+1)]`
-/

namespace A141190.P11090339652137459371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P11090339652137459371

noncomputable section

/-- A141190: Primes of the form 2*x^2+4*x*y-5*y^2 (as well as of the form 2*x^2+8*x*y+y^2).

Offset 1, canonical program `A141190.P11090339652137459371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A141190 (n : ℕ) : ℤ :=
  (A141190.P11090339652137459371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A141190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141191.P4676343676224680577

`∩[A003628(n+1), A045399(n+1)]`
-/

namespace A141191.P4676343676224680577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P4676343676224680577

noncomputable section

/-- A141191: Primes of the form -2*x^2+4*x*y+5*y^2 (as well as of the form 10*x^2+16*x*y+5*y^2).

Offset 1, canonical program `A141191.P4676343676224680577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A141191 (n : ℕ) : ℤ :=
  (A141191.P4676343676224680577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A141191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141197.P14685996120928120634

`∑{d}[n+1, A069513(#+1)]`
-/

namespace A141197.P14685996120928120634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069513 (d + 1)

end

end A141197.P14685996120928120634

noncomputable section

/-- A141197: a(n) = the number of divisors of n that are each one less than a power of a prime.

Offset 1, canonical program `A141197.P14685996120928120634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141197 (n : ℕ) : ℤ :=
  A141197.P14685996120928120634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141222.P6622102791973433572

`((n+1)²+n)*A000108(n)`
-/

namespace A141222.P6622102791973433572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * A000108 n

end

end A141222.P6622102791973433572

noncomputable section

/-- A141222: Expansion of -1/(2*x) + (2*x-1)^2/(2*x*(1-4x)^(3/2)).

Offset 0, canonical program `A141222.P6622102791973433572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A141222 (n : ℕ) : ℤ :=
  A141222.P6622102791973433572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A141222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141304.P8572251151139138538

`p?[or(2, A106952(n+1))]`
-/

namespace A141304.P8572251151139138538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A106952 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141304.P8572251151139138538

noncomputable section

/-- A141304: Primes of the form -2*x^2+6*x*y+3*y^2 (as well as of the form 7*x^2+12*x*y+3*y^2).

Offset 1, canonical program `A141304.P8572251151139138538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A141304 (n : ℕ) : ℤ :=
  A141304.P8572251151139138538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A141304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141324.P18346700993173569424

`∑{digits}[A002452(n), #]`
-/

namespace A141324.P18346700993173569424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A141324.P18346700993173569424

noncomputable section

/-- A141324: Sum of digits of A002452(n).

Offset 0, canonical program `A141324.P18346700993173569424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A141324 (n : ℕ) : ℤ :=
  (A141324.P18346700993173569424.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A141324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141352.P8696672908802726674

`A141365(n)-A302402(n)`
-/

namespace A141352.P8696672908802726674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141365 n - A302402 n

end

end A141352.P8696672908802726674

noncomputable section

/-- A141352: Expansion of (1-2x-5x^2-7x^3+x^6)/((1-x)(1-x^3)^2).

Offset 0, canonical program `A141352.P8696672908802726674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141352 (n : ℕ) : ℤ :=
  A141352.P8696672908802726674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141353.P17856277860238671307

`and(-2, 2^n)+A000108(n)`
-/

namespace A141353.P17856277860238671307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ) + A000108 n

end

end A141353.P17856277860238671307

noncomputable section

/-- A141353: a(n) = Catalan(n) + 2^n - 0^n.

Offset 0, canonical program `A141353.P17856277860238671307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A141353 (n : ℕ) : ℤ :=
  A141353.P17856277860238671307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A141353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141519.P1085458204072581816

`Δ[A000567(xor(1, n))]%10`
-/

namespace A141519.P1085458204072581816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A141519.P1085458204072581816

noncomputable section

/-- A141519: Period 10: repeat [-1, 1, -3, 7, -5, 3, -7, 9, -9, 5].

Offset 0, canonical program `A141519.P1085458204072581816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141519 (n : ℕ) : ℤ :=
  A141519.P1085458204072581816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141582.P13202688551417230151

`A011863(n)+∑[A029578(n)]`
-/

namespace A141582.P13202688551417230151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141582.P13202688551417230151

noncomputable section

/-- A141582: a(n) = number of ways to dispose two pawns on a chessboard of size n X n (two dispositions are equivalent if one can be rotated or reflected to give the other one).

Offset 0, canonical program `A141582.P13202688551417230151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141582 (n : ℕ) : ℤ :=
  A141582.P13202688551417230151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142072.P2788559626094725930

`A140544(n+2)`
-/

namespace A142072.P2788559626094725930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 2)

end

end A142072.P2788559626094725930

noncomputable section

/-- A142072: Primes congruent to 19 mod 34.

Offset 1, canonical program `A142072.P2788559626094725930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142072 (n : ℕ) : ℤ :=
  A142072.P2788559626094725930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142152.P16073057327435580899

`A141869(n+2)`
-/

namespace A142152.P16073057327435580899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141869 (n + 2)

end

end A142152.P16073057327435580899

noncomputable section

/-- A142152: Primes congruent to 21 mod 38.

Offset 1, canonical program `A142152.P16073057327435580899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142152 (n : ℕ) : ℤ :=
  A142152.P16073057327435580899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142168.P8355987088283848788

`A100202(eq[1, A100202(n+1)%3]+1)`
-/

namespace A142168.P8355987088283848788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100202 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142168.P8355987088283848788

noncomputable section

/-- A142168: Primes congruent to 16 mod 39.

Offset 1, canonical program `A142168.P8355987088283848788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A142168 (n : ℕ) : ℤ :=
  A142168.P8355987088283848788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A142168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142176.P10933006531157663640

`A100202(eq[2, A100202(n+1)%3]+1)`
-/

namespace A142176.P10933006531157663640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100202 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142176.P10933006531157663640

noncomputable section

/-- A142176: Primes congruent to 29 mod 39.

Offset 1, canonical program `A142176.P10933006531157663640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5023 terms. -/
def A142176 (n : ℕ) : ℤ :=
  A142176.P10933006531157663640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5023 terms. -/
def A142176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142183.P16426145862585851646

`∩[A107145(n+1), A141881(n+1)]`
-/

namespace A142183.P16426145862585851646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P16426145862585851646

noncomputable section

/-- A142183: Primes congruent to 1 mod 40.

Offset 1, canonical program `A142183.P16426145862585851646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A142183 (n : ℕ) : ℤ :=
  (A142183.P16426145862585851646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A142183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142185.P9581591015941482446

`∩[A139830(n+1), A141882(n+1)]`
-/

namespace A142185.P9581591015941482446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P9581591015941482446

noncomputable section

/-- A142185: Primes congruent to 7 mod 40.

Offset 1, canonical program `A142185.P9581591015941482446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142185 (n : ℕ) : ℤ :=
  (A142185.P9581591015941482446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A142185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142186.P9454557174782430913

`∩[A107145(n+1), A141883(n+1)]`
-/

namespace A142186.P9454557174782430913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P9454557174782430913

noncomputable section

/-- A142186: Primes congruent to 9 mod 40.

Offset 1, canonical program `A142186.P9454557174782430913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4972 terms. -/
def A142186 (n : ℕ) : ℤ :=
  (A142186.P9454557174782430913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4972 terms. -/
def A142186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142192.P10851158806898131788

`∩[A105854(n+1), A139830(n+1)]`
-/

namespace A142192.P10851158806898131788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P10851158806898131788

noncomputable section

/-- A142192: Primes congruent to 23 mod 40.

Offset 1, canonical program `A142192.P10851158806898131788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A142192 (n : ℕ) : ℤ :=
  (A142192.P10851158806898131788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A142192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142238.P15564133595584364678

`A041007(n+1)-A142239(n)`
-/

namespace A142238.P15564133595584364678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (n + 1) - A142239 n

end

end A142238.P15564133595584364678

noncomputable section

/-- A142238: Numerators of continued fraction convergents to sqrt(3/2).

Offset 0, canonical program `A142238.P15564133595584364678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A142238 (n : ℕ) : ℤ :=
  A142238.P15564133595584364678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A142238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142244.P2650008043261147922

`A141888(n+2)`
-/

namespace A142244.P2650008043261147922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 2)

end

end A142244.P2650008043261147922

noncomputable section

/-- A142244: Primes congruent to 23 mod 42.

Offset 1, canonical program `A142244.P2650008043261147922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142244 (n : ℕ) : ℤ :=
  A142244.P2650008043261147922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142303.P17998901484285474109

`A141850(eq[1, A141850(n+1)%4]+1)`
-/

namespace A142303.P17998901484285474109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141850 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142303.P17998901484285474109

noncomputable section

/-- A142303: Primes congruent to 25 mod 44.

Offset 1, canonical program `A142303.P17998901484285474109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A142303 (n : ℕ) : ℤ :=
  A142303.P17998901484285474109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A142303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142342.P2788825699773340349

`2*A001750(n+1)`
-/

namespace A142342.P2788825699773340349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001750 (n + 1)

end

end A142342.P2788825699773340349

noncomputable section

/-- A142342: a(n) = 10*prime(n).

Offset 1, canonical program `A142342.P2788825699773340349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142342 (n : ℕ) : ℤ :=
  A142342.P2788825699773340349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142398.P17690431213871584159

`∩[A094407(n+1), A107008(n+1)]`
-/

namespace A142398.P17690431213871584159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P17690431213871584159

noncomputable section

/-- A142398: Primes congruent to 1 mod 48.

Offset 1, canonical program `A142398.P17690431213871584159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4966 terms. -/
def A142398 (n : ℕ) : ℤ :=
  (A142398.P17690431213871584159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4966 terms. -/
def A142398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142407.P15500163210538704829

`∩[A107003(n+1), A141196(n+1)]`
-/

namespace A142407.P15500163210538704829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P15500163210538704829

noncomputable section

/-- A142407: Primes congruent to 29 mod 48.

Offset 1, canonical program `A142407.P15500163210538704829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4984 terms. -/
def A142407 (n : ℕ) : ℤ :=
  (A142407.P15500163210538704829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4984 terms. -/
def A142407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142412.P13689373659218253707

`∩[A141195(n+1), A141373(n+1)]`
-/

namespace A142412.P13689373659218253707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P13689373659218253707

noncomputable section

/-- A142412: Primes congruent to 43 mod 48.

Offset 1, canonical program `A142412.P13689373659218253707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4979 terms. -/
def A142412 (n : ℕ) : ℤ :=
  (A142412.P13689373659218253707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4979 terms. -/
def A142412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142509.P10142410434751017720

`A100202(eq[3, A100202(n+1)%4]+1)`
-/

namespace A142509.P10142410434751017720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100202 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142509.P10142410434751017720

noncomputable section

/-- A142509: Primes congruent to 3 mod 52.

Offset 1, canonical program `A142509.P10142410434751017720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A142509 (n : ℕ) : ℤ :=
  A142509.P10142410434751017720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A142509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142521.P10270196445697213261

`A100202(eq[1, A100202(n+1)%4]+1)`
-/

namespace A142521.P10270196445697213261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100202 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142521.P10270196445697213261

noncomputable section

/-- A142521: Primes congruent to 29 mod 52.

Offset 1, canonical program `A142521.P10270196445697213261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A142521 (n : ℕ) : ℤ :=
  A142521.P10270196445697213261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A142521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142585.P4790948912570679400

`(A303427(2*n)-A011782(n))*(-1)^n`
-/

namespace A142585.P4790948912570679400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A303427 (2 * n) - A011782 n) * (-1) ^ n

end

end A142585.P4790948912570679400

noncomputable section

/-- A142585: Inverse binomial transform of A014217.

Offset 0, canonical program `A142585.P4790948912570679400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A142585 (n : ℕ) : ℤ :=
  A142585.P4790948912570679400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A142585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142599.P10304847295712391913

`A176672(n)*A302773(n+1)`
-/

namespace A142599.P10304847295712391913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 n * A302773 (n + 1)

end

end A142599.P10304847295712391913

noncomputable section

/-- A142599: Second trisection of A061037.

Offset 1, canonical program `A142599.P10304847295712391913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142599 (n : ℕ) : ℤ :=
  A142599.P10304847295712391913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A142599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142718.P13977445098999172436

`A014217(∑[and(5, dr(3*n))])`
-/

namespace A142718.P13977445098999172436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (SequenceMachineLib.digitalRoot (3 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A142718.P13977445098999172436

noncomputable section

/-- A142718: Odd terms in A014217.

Offset 1, canonical program `A142718.P13977445098999172436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A142718 (n : ℕ) : ℤ :=
  A142718.P13977445098999172436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A142718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142791.P5434173776646440451

`∩[A107151(n+1), A141883(n+1)]`
-/

namespace A142791.P5434173776646440451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P5434173776646440451

noncomputable section

/-- A142791: Primes congruent to 29 mod 60.

Offset 1, canonical program `A142791.P5434173776646440451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A142791 (n : ℕ) : ℤ :=
  (A142791.P5434173776646440451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A142791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142794.P5382271562591606959

`∩[A141881(n+1), A107151(n+1)]`
-/

namespace A142794.P5382271562591606959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P5382271562591606959

noncomputable section

/-- A142794: Primes congruent to 41 mod 60.

Offset 1, canonical program `A142794.P5382271562591606959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A142794 (n : ℕ) : ℤ :=
  (A142794.P5382271562591606959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A142794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142975.P10502756567082669567

`2*A051450(n)-a(n-1)` with `a(0)=1`
-/

namespace A142975.P10502756567082669567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A051450 n - a (n - 1)

end

end A142975.P10502756567082669567

noncomputable section

/-- A142975: n-th term of the Fibonacci-type sequence x(1)=1, x(2)=Fibonacci(n), x(k+1)=x(k)+x(k-1) for k>1.

Offset 1, canonical program `A142975.P10502756567082669567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A142975 (n : ℕ) : ℤ :=
  A142975.P10502756567082669567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A142975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143051.P11266558245887559525

`Δ[A068527(abs(1-n))]+n`
-/

namespace A143051.P11266558245887559525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143051.P11266558245887559525

noncomputable section

/-- A143051: Smallest number not occurring earlier and smaller than the largest square so far, the next square if no such number exists.

Offset 0, canonical program `A143051.P11266558245887559525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143051 (n : ℕ) : ℤ :=
  A143051.P11266558245887559525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143075.P1012112356552670888

`∑[∑[A173434(n+4)]]`
-/

namespace A143075.P1012112356552670888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143075.P1012112356552670888

noncomputable section

/-- A143075: Polynomial expansion sequence: p(x)=1/(1 - 4x + 5x^2 - 6x^4 + 6x^5 - x^6 - 2x^7 + x^8).

Offset 0, canonical program `A143075.P1012112356552670888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A143075 (n : ℕ) : ℤ :=
  A143075.P1012112356552670888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A143075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143268.P18032262183029284941

`A023896(n+1)*A065475(n+1)`
-/

namespace A143268.P18032262183029284941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) * A065475 (n + 1)

end

end A143268.P18032262183029284941

noncomputable section

/-- A143268: a(n) = phi(n)*T(n), where phi(n) is Euler's totient function (A000010) and T(n) = n*(n+1)/2 is the n-th triangular number (A000217).

Offset 1, canonical program `A143268.P18032262183029284941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143268 (n : ℕ) : ℤ :=
  A143268.P18032262183029284941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143288.P2093284263421101681

`A005711(n+7)-A017904(n+19)`
-/

namespace A143288.P2093284263421101681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (n + 7) - A017904 (n + 19)

end

end A143288.P2093284263421101681

noncomputable section

/-- A143288: Number of binary words of length n containing at least one subword 10^{8}1 and no subwords 10^{i}1 with i

Offset 0, canonical program `A143288.P2093284263421101681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143288 (n : ℕ) : ℤ :=
  A143288.P2093284263421101681.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143292.P9561529969644033132

`A003188(A000040(n+1))`
-/

namespace A143292.P9561529969644033132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000040 (n + 1)).toNat

end

end A143292.P9561529969644033132

noncomputable section

/-- A143292: Gray code of prime(n) (decimal representation).

Offset 1, canonical program `A143292.P9561529969644033132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143292 (n : ℕ) : ℤ :=
  A143292.P9561529969644033132.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143443.P11189518760645188625

`(n+1)*A002321(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143443.P11189518760645188625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002321 (n + 1)

end

end A143443.P11189518760645188625

noncomputable section

/-- A143443: a(n) = n * A002321(n).

Offset 1, canonical program `A143443.P11189518760645188625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143443 (n : ℕ) : ℤ :=
  A143443.P11189518760645188625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143462.P14315216617971000723

`A146559(3*n+1)`
-/

namespace A143462.P14315216617971000723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (3 * n + 1)

end

end A143462.P14315216617971000723

noncomputable section

/-- A143462: Expansion of 1/(1 + 4*x + 8*x^2).

Offset 0, canonical program `A143462.P14315216617971000723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A143462 (n : ℕ) : ℤ :=
  A143462.P14315216617971000723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A143462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143712.P3954997393582699458

`A024657(2*n+11)`
-/

namespace A143712.P3954997393582699458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n + 11)

end

end A143712.P3954997393582699458

noncomputable section

/-- A143712: Numbers with at least two digits in which all digits except the rightmost are even and the rightmost is odd.

Offset 1, canonical program `A143712.P3954997393582699458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143712 (n : ℕ) : ℤ :=
  A143712.P3954997393582699458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143954.P7218840039139452048

`∑[∑[floor((A323230(n)-1)/2)]]`
-/

namespace A143954.P7218840039139452048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323230 n - 1 : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143954.P7218840039139452048

noncomputable section

/-- A143954: Number of peaks in the peak plateaux of all Dyck paths of semilength n.

Offset 0, canonical program `A143954.P7218840039139452048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A143954 (n : ℕ) : ℤ :=
  A143954.P7218840039139452048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A143954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144126.P18416010669362228227

`record[A160739(xor(1, n))/16]`
-/

namespace A144126.P18416010669362228227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160739 (Nat.xor 1 n) : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144126.P18416010669362228227

noncomputable section

/-- A144126: P_6(2n+1), the Legendre polynomial of order 6 at 2n+1.

Offset 0, canonical program `A144126.P18416010669362228227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144126.P18416010669362228227.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A144126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144133.P5405219613341887405

`∑[∑[∑[A054447(2*n)]]]`
-/

namespace A144133.P5405219613341887405
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144133.P5405219613341887405

noncomputable section

/-- A144133: a(n) = Gegenbauer polynomial C_n^2(3).

Offset 0, canonical program `A144133.P5405219613341887405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A144133 (n : ℕ) : ℤ :=
  A144133.P5405219613341887405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A144133.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144162.P6968795893743913607

`A024660(A047201(n+9))`
-/

namespace A144162.P6968795893743913607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024660 (A047201 (n + 9)).toNat

end

end A144162.P6968795893743913607

noncomputable section

/-- A144162: Numbers with at least two digits in which all digits except the rightmost are 0 or 5 and the rightmost is neither 0 nor 5.

Offset 1, canonical program `A144162.P6968795893743913607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144162 (n : ℕ) : ℤ :=
  A144162.P6968795893743913607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144257.P7095601649401816149

`A128076(n+1)-A123578(n)`
-/

namespace A144257.P7095601649401816149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) - A123578 n

end

end A144257.P7095601649401816149

noncomputable section

/-- A144257: Weight array of A086270.

Offset 1, canonical program `A144257.P7095601649401816149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144257 (n : ℕ) : ℤ :=
  A144257.P7095601649401816149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144338.P10879318598833394857

`eq[0, A087049(n)]`
-/

namespace A144338.P10879318598833394857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144338.P10879318598833394857

noncomputable section

/-- A144338: Squarefree numbers > 1.

Offset 1, canonical program `A144338.P10879318598833394857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144338 (n : ℕ) : ℤ :=
  (A144338.P10879318598833394857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144413.P11029616263859765889

`A050935(record[lcm(2, n)+1])`
-/

namespace A144413.P11029616263859765889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A144413.P11029616263859765889

noncomputable section

/-- A144413: a(n) = Sum_{k=0..n} (-1)^k * binomial(n, k) * A000931(n-k+4).

Offset 0, canonical program `A144413.P11029616263859765889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A144413 (n : ℕ) : ℤ :=
  A144413.P11029616263859765889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A144413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144483.P3915174990611328427

`A144481(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144483.P3915174990611328427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144481 (4 * n + 1)

end

end A144483.P3915174990611328427

noncomputable section

/-- A144483: A144481(4n-3).

Offset 1, canonical program `A144483.P3915174990611328427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144483 (n : ℕ) : ℤ :=
  A144483.P3915174990611328427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144494.P11108585045372272003

`∑{e}[A005451(n+1), #]`
-/

namespace A144494.P11108585045372272003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A144494.P11108585045372272003

noncomputable section

/-- A144494: a(n) = 0 if n is prime, otherwise A001222(n).

Offset 1, canonical program `A144494.P11108585045372272003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144494 (n : ℕ) : ℤ :=
  (A144494.P11108585045372272003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144516.P11636001752541148876

`A000332(∑[n+1])-A000910(n+4)`
-/

namespace A144516.P11636001752541148876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) - A000910 (n + 4)

end

end A144516.P11636001752541148876

noncomputable section

/-- A144516: a(n) = (15*n^2+45*n-70)*binomial(n+4,6)/8.

Offset 0, canonical program `A144516.P11636001752541148876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A144516 (n : ℕ) : ℤ :=
  A144516.P11636001752541148876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A144516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144604.P7985712841209999567

`char[A008586(n)-comp[7*n]]`
-/

namespace A144604.P7985712841209999567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144604.P7985712841209999567

noncomputable section

/-- A144604: Christoffel word of slope 6/11.

Offset 0, canonical program `A144604.P7985712841209999567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144604 (n : ℕ) : ℤ :=
  (A144604.P7985712841209999567.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144611.P4502785910793771792

`and(1, A006337(C(n, a(n-1))))` with `a(0)=0`
-/

namespace A144611.P4502785910793771792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (A006337 (Nat.choose n (a (n - 1)).toNat))

end

end A144611.P4502785910793771792

noncomputable section

/-- A144611: Sturmian word of slope 2-sqrt(2).

Offset 0, canonical program `A144611.P4502785910793771792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144611 (n : ℕ) : ℤ :=
  A144611.P4502785910793771792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144657.P3830659986233417830

`2*(A010763(n)-n)`
-/

namespace A144657.P3830659986233417830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010763 n - (n : ℤ))

end

end A144657.P3830659986233417830

noncomputable section

/-- A144657: a(n) = Sum_{j = 1..n} Sum_{i = 1..n} (i + j)! / (i! * j!).

Offset 0, canonical program `A144657.P3830659986233417830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A144657 (n : ℕ) : ℤ :=
  A144657.P3830659986233417830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A144657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144678.P18296757162163024716

`A009531(n+5)/16+(n+5)*(2*n²+20*n+33+3*(-1)^n)/192`
-/

namespace A144678.P18296757162163024716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009531 (n + 5) : ℚ) / 16 + (n + 5 : ℚ) * (((2 * n ^ 2 + 20 * n : ℤ) + (33 + 3 * (-1) ^ n) : ℚ) / 192)

end

end A144678.P18296757162163024716

noncomputable section

/-- A144678: Related to enumeration of quantum states (see reference for precise definition).

Offset 0, canonical program `A144678.P18296757162163024716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144678 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144678.P18296757162163024716.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144769.P5896699175257808564

`floor(A000040(n+1)/3)`
-/

namespace A144769.P5896699175257808564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 3⌋

end

end A144769.P5896699175257808564

noncomputable section

/-- A144769: a(n) = floor(prime(n)/3).

Offset 1, canonical program `A144769.P5896699175257808564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144769 (n : ℕ) : ℤ :=
  A144769.P5896699175257808564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144795.P9662738190861548983

`A163617(A004742(n+2))`
-/

namespace A144795.P9662738190861548983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A004742 (n + 2)).toNat

end

end A144795.P9662738190861548983

noncomputable section

/-- A144795: A positive integer n is included if every 1 in binary n is next to at least one other 1.

Offset 1, canonical program `A144795.P9662738190861548983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A144795 (n : ℕ) : ℤ :=
  A144795.P9662738190861548983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A144795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144901.P207161123667045027

`∑[A144900(n)]`
-/

namespace A144901.P207161123667045027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144901.P207161123667045027

noncomputable section

/-- A144901: Expansion of x/((1-x-x^3)*(1-x)^7).

Offset 0, canonical program `A144901.P207161123667045027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A144901 (n : ℕ) : ℤ :=
  A144901.P207161123667045027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A144901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144969.P15158922341314194968

`∑[n*∑[n*A001298(n)]]`
-/

namespace A144969.P15158922341314194968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144969.P15158922341314194968

noncomputable section

/-- A144969: Stirling numbers of second kind S(n,n-6).

Offset 6, canonical program `A144969.P15158922341314194968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144969 (n : ℕ) : ℤ :=
  A144969.P15158922341314194968.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145011.P14480014548098344672

`record[lcm(60, n+7)/60]-A007775(n+1)`
-/

namespace A145011.P14480014548098344672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 60 (n + 7) : ℚ) / 60

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A007775 (n + 1) : ℚ)

end

end A145011.P14480014548098344672

noncomputable section

/-- A145011: First differences of A007775.

Offset 1, canonical program `A145011.P14480014548098344672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145011.P14480014548098344672.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145063.P12247543923868809551

`Δ[A133872(n)-A083392(A110654(n))]`
-/

namespace A145063.P12247543923868809551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n - A083392 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145063.P12247543923868809551

noncomputable section

/-- A145063: Hankel transform of A145062.

Offset 0, canonical program `A145063.P12247543923868809551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145063 (n : ℕ) : ℤ :=
  A145063.P12247543923868809551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115731.P6675874321101004067

`A133259(A116551(n+1))`
-/

namespace A115731.P6675874321101004067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A116551 (n + 1)).toNat

end

end A115731.P6675874321101004067

noncomputable section

/-- A115731: Permutation of natural numbers generated by 3-rowed array shown below.

Offset 1, canonical program `A115731.P6675874321101004067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115731 (n : ℕ) : ℤ :=
  A115731.P6675874321101004067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115805.P17491870474035783323

`∩[A115767(n), A115823(n)]`
-/

namespace A115805.P17491870474035783323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P17491870474035783323

noncomputable section

/-- A115805: Numbers k such that 13*k = A048720(29,k), where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A115805.P17491870474035783323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A115805 (n : ℕ) : ℤ :=
  (A115805.P17491870474035783323.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A115805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115853.P14934770177720905592

`lt[A320485(n), 0]`
-/

namespace A115853.P14934770177720905592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115853.P14934770177720905592

noncomputable section

/-- A115853: Numbers where every digit that is present occurs more than once (not necessarily consecutively).

Offset 1, canonical program `A115853.P14934770177720905592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A115853 (n : ℕ) : ℤ :=
  (A115853.P14934770177720905592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A115853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116524.P7829747049837187458

`∑[A033048(A004526(A131136(n)))]`
-/

namespace A116524.P7829747049837187458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (A004526 (A131136 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116524.P7829747049837187458

noncomputable section

/-- A116524: a(0)=1, a(1)=1, a(n) = 13*a(n/2) for n=2,4,6,..., a(n) = 12*a((n-1)/2) + a((n+1)/2) for n=3,5,7,....

Offset 0, canonical program `A116524.P7829747049837187458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A116524 (n : ℕ) : ℤ :=
  A116524.P7829747049837187458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A116524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116617.P13087541354123377326

`eq[2, gcd(36, A156037(2*n+1))]`
-/

namespace A116617.P13087541354123377326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 36 (A156037 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116617.P13087541354123377326

noncomputable section

/-- A116617: Values of n such that prime(2n+1) mod 12 = 11.

Offset 1, canonical program `A116617.P13087541354123377326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A116617 (n : ℕ) : ℤ :=
  (A116617.P13087541354123377326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A116617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116671.P8030541470076909074

`p?[A224796(n+1)]`
-/

namespace A116671.P8030541470076909074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116671.P8030541470076909074

noncomputable section

/-- A116671: Primes p such that the nearest integer to p * Pi is prime.

Offset 1, canonical program `A116671.P8030541470076909074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 979 terms. -/
def A116671 (n : ℕ) : ℤ :=
  A116671.P8030541470076909074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 979 terms. -/
def A116671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118391.P1499686261987189515

`gcd(3, n+1)*A160050(n+2)`
-/

namespace A118391.P1499686261987189515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (n + 1) : ℤ) * A160050 (n + 2)

end

end A118391.P1499686261987189515

noncomputable section

/-- A118391: Numerator of sum of reciprocals of first n tetrahedral numbers A000292.

Offset 1, canonical program `A118391.P1499686261987189515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118391 (n : ℕ) : ℤ :=
  A118391.P1499686261987189515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118408.P7991888673922869917

`A137505(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A118408.P7991888673922869917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A137505 n - a (n - 2)

end

end A118408.P7991888673922869917

noncomputable section

/-- A118408: Row sums of triangle A118407.

Offset 0, canonical program `A118408.P7991888673922869917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A118408 (n : ℕ) : ℤ :=
  A118408.P7991888673922869917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A118408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119688.P6709024081567022364

`A126868(n+2)`
-/

namespace A119688.P6709024081567022364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126868 (n + 2)

end

end A119688.P6709024081567022364

noncomputable section

/-- A119688: a(n) = n!! mod (n+1).

Offset 1, canonical program `A119688.P6709024081567022364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A119688 (n : ℕ) : ℤ :=
  A119688.P6709024081567022364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A119688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120630.P3167750905745517866

`∑{d}[n+1, A007427(#)*A374366((n+1)/#)]`
-/

namespace A120630.P3167750905745517866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120630.P3167750905745517866

noncomputable section

/-- A120630: Dirichlet inverse of A002654.

Offset 1, canonical program `A120630.P3167750905745517866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120630 (n : ℕ) : ℤ :=
  A120630.P3167750905745517866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120936.P11581610779573346111

`A230980(A212445(n+1))-A230980(n)`
-/

namespace A120936.P11581610779573346111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A212445 (n + 1)).toNat - A230980 n

end

end A120936.P11581610779573346111

noncomputable section

/-- A120936: Number of primes in the interval [n,n+log(n)].

Offset 1, canonical program `A120936.P11581610779573346111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A120936 (n : ℕ) : ℤ :=
  A120936.P11581610779573346111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A120936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122196.P6220823696756244258

`2*(1-A122197(n+1))+A000267(n)`
-/

namespace A122196.P6220823696756244258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A122197 (n + 1)) + A000267 n

end

end A122196.P6220823696756244258

noncomputable section

/-- A122196: Fractal sequence: count down by 2's from successive integers.

Offset 1, canonical program `A122196.P6220823696756244258`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122196 (n : ℕ) : ℤ :=
  A122196.P6220823696756244258.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122742.P1240298282008171584

`A121133(n+1)-A077957(A289207(n))`
-/

namespace A122742.P1240298282008171584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121133 (n + 1) - A077957 (A289207 n).toNat

end

end A122742.P1240298282008171584

noncomputable section

/-- A122742: Numbers of polypentagons with two connected internal vertices (see Cyvin et al. for precise definition).

Offset 4, canonical program `A122742.P1240298282008171584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A122742 (n : ℕ) : ℤ :=
  A122742.P1240298282008171584.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A122742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123066.P9872390040853213859

`1-A174863(n+1)`
-/

namespace A123066.P9872390040853213859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A174863 (n + 1)

end

end A123066.P9872390040853213859

noncomputable section

/-- A123066: (Number of numbers <= n with an odd number of distinct prime factors) - (number of numbers <= n with an even number of distinct prime factors).

Offset 1, canonical program `A123066.P9872390040853213859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123066 (n : ℕ) : ℤ :=
  A123066.P9872390040853213859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A123066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123074.P16939100474265153792

`A101605(n+1)*A168324(n+1)`
-/

namespace A123074.P16939100474265153792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A168324 (n + 1)

end

end A123074.P16939100474265153792

noncomputable section

/-- A123074: Number of ordered triples of primes (p,q,r) such that pqr = n.

Offset 1, canonical program `A123074.P16939100474265153792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123074 (n : ℕ) : ℤ :=
  A123074.P16939100474265153792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123074.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124184.P7724869670540839885

`eq[0, A136176(n+1)]+1`
-/

namespace A124184.P7724869670540839885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124184.P7724869670540839885

noncomputable section

/-- A124184: Positive integers not divisible by any of their own prime-factorization exponents.

Offset 1, canonical program `A124184.P7724869670540839885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A124184 (n : ℕ) : ℤ :=
  (A124184.P7724869670540839885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A124184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124672.P824390092964618405

`filter[A180291(n+4), A378550(#)]`
-/

namespace A124672.P824390092964618405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180291 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A124672.P824390092964618405

noncomputable section

/-- A124672: Oblong (promic) abundant numbers = abundant numbers of the form k(k+1).

Offset 1, canonical program `A124672.P824390092964618405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A124672 (n : ℕ) : ℤ :=
  A124672.P824390092964618405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A124672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125070.P10041483971528832156

`∑{e}[n+1, A167746(#)]`
-/

namespace A125070.P10041483971528832156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A167746 (Nat.factorization (f1 n) p)

end

end A125070.P10041483971528832156

noncomputable section

/-- A125070: a(n) = number of nonzero exponents in the prime factorization of n which are not primes.

Offset 1, canonical program `A125070.P10041483971528832156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125070 (n : ℕ) : ℤ :=
  A125070.P10041483971528832156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126207.P3966340680454473781

`∑{digits}[A000351(n), A316866(#)]`
-/

namespace A126207.P3966340680454473781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316866 x).sum

end

end A126207.P3966340680454473781

noncomputable section

/-- A126207: Number of 5's in decimal expansion of 5^n.

Offset 0, canonical program `A126207.P3966340680454473781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126207 (n : ℕ) : ℤ :=
  A126207.P3966340680454473781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126827.P13956827893392718434

`A282753(n+1)%27`
-/

namespace A126827.P13956827893392718434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282753 (n + 1)) 27

end

end A126827.P13956827893392718434

noncomputable section

/-- A126827: Ramanujan numbers (A000594) read mod 27.

Offset 1, canonical program `A126827.P13956827893392718434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126827 (n : ℕ) : ℤ :=
  A126827.P13956827893392718434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126836.P13753276342524753575

`A280025(n+1)%7`
-/

namespace A126836.P13753276342524753575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280025 (n + 1)) 7

end

end A126836.P13753276342524753575

noncomputable section

/-- A126836: Ramanujan numbers (A000594) read mod 7.

Offset 1, canonical program `A126836.P13753276342524753575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126836 (n : ℕ) : ℤ :=
  A126836.P13753276342524753575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A126836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126858.P11063396335751095604

`(A281372(n)-A282097(n))/6`
-/

namespace A126858.P11063396335751095604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281372 n - A282097 n : ℚ) / 6

end

end A126858.P11063396335751095604

noncomputable section

/-- A126858: Coefficients in quasimodular form F_2(q) of level 1 and weight 6.

Offset 0, canonical program `A126858.P11063396335751095604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A281372, A282097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126858 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126858.P11063396335751095604.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A281372, A282097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126858.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127319.P15269089589835204550

`A128936(n+1)%(n+1)`
-/

namespace A127319.P15269089589835204550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128936 (n + 1)) (n + 1 : ℤ)

end

end A127319.P15269089589835204550

noncomputable section

/-- A127319: a(n) = binomial(n, sd) mod n, with sd = sum of decimal digits of n.

Offset 1, canonical program `A127319.P15269089589835204550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A127319 (n : ℕ) : ℤ :=
  A127319.P15269089589835204550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A127319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127513.P3682238697581112364

`1-∑[A000079(n)*A157658(n+1)]`
-/

namespace A127513.P3682238697581112364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P3682238697581112364

noncomputable section

/-- A127513: Partial sums of A127511.

Offset 1, canonical program `A127513.P3682238697581112364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A127513 (n : ℕ) : ℤ :=
  A127513.P3682238697581112364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A127513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127575.P17578973089902924162

`eq[2*(n+1), A258835(2*n+1)]`
-/

namespace A127575.P17578973089902924162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P17578973089902924162

noncomputable section

/-- A127575: Numbers n such that 16n+15 is prime.

Offset 1, canonical program `A127575.P17578973089902924162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A127575 (n : ℕ) : ℤ :=
  (A127575.P17578973089902924162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A127575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127578.P2000685220388056324

`∪[A127579(n+1), A142939(n+1)]`
-/

namespace A127578.P2000685220388056324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P2000685220388056324

noncomputable section

/-- A127578: Primes congruent to 31 mod 32.

Offset 1, canonical program `A127578.P2000685220388056324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127578 (n : ℕ) : ℤ :=
  (A127578.P2000685220388056324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127591.P6759506411526991371

`floor(A127592(n+1)/64)`
-/

namespace A127591.P6759506411526991371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127592 (n + 1) : ℚ) / 64⌋

end

end A127591.P6759506411526991371

noncomputable section

/-- A127591: Numbers k such that 64k+21 is prime.

Offset 1, canonical program `A127591.P6759506411526991371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127591 (n : ℕ) : ℤ :=
  A127591.P6759506411526991371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127692.P7090629106890667422

`A195198(2*n+1)`
-/

namespace A127692.P7090629106890667422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195198 (2 * n + 1)

end

end A127692.P7090629106890667422

noncomputable section

/-- A127692: Expansion of psi(x^4) + x * psi(x^12) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A127692.P7090629106890667422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127692 (n : ℕ) : ℤ :=
  A127692.P7090629106890667422.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127692.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127971.P6246049584962585344

`Δ[A174868(n)]+n%2`
-/

namespace A127971.P6246049584962585344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n % 2 : ℕ) : ℤ)

end

end A127971.P6246049584962585344

noncomputable section

/-- A127971: a(n) = fusc(n+1) + (1-(-1)^n)/2, fusc = A002487.

Offset 0, canonical program `A127971.P6246049584962585344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127971 (n : ℕ) : ℤ :=
  A127971.P6246049584962585344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129383.P9614778073819376212

`∑{d}[n+1, A001405(#-1)*A154955((n+1)/#)]`
-/

namespace A129383.P9614778073819376212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001405 (d - 1) * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129383.P9614778073819376212

noncomputable section

/-- A129383: Expansion of g(x) - x*g(x^2), where g(x) is the g.f. of A001405.

Offset 0, canonical program `A129383.P9614778073819376212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A129383 (n : ℕ) : ℤ :=
  A129383.P9614778073819376212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A129383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129484.P11226626540148171832

`∪[A142476(n+1), A142497(n+1)]`
-/

namespace A129484.P11226626540148171832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129484.P11226626540148171832

noncomputable section

/-- A129484: Primes of the form 17k + 1.

Offset 1, canonical program `A129484.P11226626540148171832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129484 (n : ℕ) : ℤ :=
  (A129484.P11226626540148171832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130233.P4547566433330299438

`A130234(n+1)-1`
-/

namespace A130233.P4547566433330299438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (n + 1) - 1

end

end A130233.P4547566433330299438

noncomputable section

/-- A130233: a(n) is the maximal k such that Fibonacci(k) <= n (the "lower" Fibonacci Inverse).

Offset 0, canonical program `A130233.P4547566433330299438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130233 (n : ℕ) : ℤ :=
  A130233.P4547566433330299438.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130543.P1727106374851024527

`A185115(n+1)`
-/

namespace A130543.P1727106374851024527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (n + 1)

end

end A130543.P1727106374851024527

noncomputable section

/-- A130543: Multiplicative persistence of n!.

Offset 0, canonical program `A130543.P1727106374851024527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130543 (n : ℕ) : ℤ :=
  A130543.P1727106374851024527.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130717.P13372029454541461089

`Δ[A131358(A057353(n))]`
-/

namespace A130717.P13372029454541461089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A057353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P13372029454541461089

noncomputable section

/-- A130717: Second differences of A130845.

Offset 0, canonical program `A130717.P13372029454541461089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130717 (n : ℕ) : ℤ :=
  A130717.P13372029454541461089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131017.P5754187726822427039

`A131717(n+2)-A131717(n+1)`
-/

namespace A131017.P5754187726822427039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 2) - A131717 (n + 1)

end

end A131017.P5754187726822427039

noncomputable section

/-- A131017: Period 6: repeat [1, 1, 2, -1, 2, 1].

Offset 0, canonical program `A131017.P5754187726822427039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131017 (n : ℕ) : ℤ :=
  A131017.P5754187726822427039.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131017.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131193.P4767151081242458878

`A132951(n)-A156283(n)`
-/

namespace A131193.P4767151081242458878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132951 n - A156283 n

end

end A131193.P4767151081242458878

noncomputable section

/-- A131193: Period 6: repeat [0, 1, -3, 3, -1, 0].

Offset 0, canonical program `A131193.P4767151081242458878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131193 (n : ℕ) : ℤ :=
  A131193.P4767151081242458878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131292.P3627661166533495756

`A133331(round(acot(n)+n))/3`
-/

namespace A131292.P3627661166533495756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133331 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 3

end

end A131292.P3627661166533495756

noncomputable section

/-- A131292: a(2n+1)=3a(2n)-3a(2n-1)+2a(2n-2), a(2n+2)=3a(2n+1)-3a(2n), a(0)=a(1)=a(2)=1.

Offset 0, canonical program `A131292.P3627661166533495756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A131292 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131292.P3627661166533495756.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A131292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131858.P9447570660414659243

`∩[A131859(n+1), A016861(n)]`
-/

namespace A131858.P9447570660414659243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131858.P9447570660414659243

noncomputable section

/-- A131858: Numbers m such that z(m)=(1,0) with z as defined in A131851.

Offset 1, canonical program `A131858.P9447570660414659243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. -/
def A131858 (n : ℕ) : ℤ :=
  (A131858.P9447570660414659243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. -/
def A131858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132141.P14786770210645261491

`A157671(n+1)-A132171(n)`
-/

namespace A132141.P14786770210645261491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 1) - A132171 n

end

end A132141.P14786770210645261491

noncomputable section

/-- A132141: Numbers whose ternary representation begins with 1.

Offset 1, canonical program `A132141.P14786770210645261491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132141 (n : ℕ) : ℤ :=
  A132141.P14786770210645261491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132162.P10655536448635448789

`A132171(A014682(n))+A052928(n)`
-/

namespace A132162.P10655536448635448789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A014682 n).toNat + A052928 n

end

end A132162.P10655536448635448789

noncomputable section

/-- A132162: a(2n+1) = 3*a(2*n) - 4*n with a(0) = 1, a(1) = 3.

Offset 0, canonical program `A132162.P10655536448635448789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A132162 (n : ℕ) : ℤ :=
  A132162.P10655536448635448789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A132162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132231.P11772431074694670776

`∪[A142786(n+1), A142793(n+1)]`
-/

namespace A132231.P11772431074694670776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132231.P11772431074694670776

noncomputable section

/-- A132231: Primes congruent to 7 (mod 30).

Offset 1, canonical program `A132231.P11772431074694670776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132231 (n : ℕ) : ℤ :=
  (A132231.P11772431074694670776.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132634.P13227898559569153105

`A132636(n+1)%A085960(n+1)`
-/

namespace A132634.P13227898559569153105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132636 (n + 1)) (A085960 (n + 1))

end

end A132634.P13227898559569153105

noncomputable section

/-- A132634: a(n) = Fibonacci(n) mod n^2.

Offset 1, canonical program `A132634.P13227898559569153105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132634 (n : ℕ) : ℤ :=
  A132634.P13227898559569153105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133313.P17662725132781942349

`p?[ceil(A289353(n+1)/3)]`
-/

namespace A133313.P17662725132781942349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289353 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133313.P17662725132781942349

noncomputable section

/-- A133313: Primes p such that 3p-2 and 3p+2 are primes (see A125272) and its decimal representation finishes with 3.

Offset 1, canonical program `A133313.P17662725132781942349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A133313 (n : ℕ) : ℤ :=
  A133313.P17662725132781942349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. -/
def A133313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133634.P8398308076930619958

`filter[A259749(n+1), A066247(#)]`
-/

namespace A133634.P8398308076930619958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A133634.P8398308076930619958

noncomputable section

/-- A133634: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=4.

Offset 1, canonical program `A133634.P8398308076930619958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133634 (n : ℕ) : ℤ :=
  A133634.P8398308076930619958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133677.P14859646299872134020

`record[(n+1)*A156037(n+1)%3]`
-/

namespace A133677.P14859646299872134020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A156037 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133677.P14859646299872134020

noncomputable section

/-- A133677: Integers k such that prime(k)*(2*prime(k)-1)/3 is an integer.

Offset 1, canonical program `A133677.P14859646299872134020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5235 terms. -/
def A133677 (n : ℕ) : ℤ :=
  A133677.P14859646299872134020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5235 terms. -/
def A133677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133689.P964104427748120378

`gcd(n+2, A158851(n+1))+n+2`
-/

namespace A133689.P964104427748120378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A158851 (n + 1)) + (n + 2)

end

end A133689.P964104427748120378

noncomputable section

/-- A133689: a(n) = smallest integer that is > n and is a multiple of every proper divisor of n.

Offset 2, canonical program `A133689.P964104427748120378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133689 (n : ℕ) : ℤ :=
  (A133689.P964104427748120378.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133870.P10221949335420814383

`A209554(n+2)`
-/

namespace A133870.P10221949335420814383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

end

end A133870.P10221949335420814383

noncomputable section

/-- A133870: Primes of the form 32*n + 1.

Offset 1, canonical program `A133870.P10221949335420814383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133870 (n : ℕ) : ℤ :=
  A133870.P10221949335420814383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134314.P16775477535399717095

`A134429(n+1)-A134429(n)`
-/

namespace A134314.P16775477535399717095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 (n + 1) - A134429 n

end

end A134314.P16775477535399717095

noncomputable section

/-- A134314: First differences of A134429.

Offset 0, canonical program `A134314.P16775477535399717095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134314 (n : ℕ) : ℤ :=
  A134314.P16775477535399717095.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134717.P9837690411213750985

`A001006(A161674(n+1))`
-/

namespace A134717.P9837690411213750985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A161674 (n + 1)).toNat

end

end A134717.P9837690411213750985

noncomputable section

/-- A134717: Odd Motzkin numbers.

Offset 1, canonical program `A134717.P9837690411213750985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134717 (n : ℕ) : ℤ :=
  A134717.P9837690411213750985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135099.P2545427094916164131

`A135095(n+1)+A135332(n+1)-A135301(n+1)`
-/

namespace A135099.P2545427094916164131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135095 (n + 1) + (A135332 (n + 1) - A135301 (n + 1))

end

end A135099.P2545427094916164131

noncomputable section

/-- A135099: a(1)=1, a(n) = a(n-1) + n^5 if n odd, a(n) = a(n-1) + n^3 if n is even.

Offset 1, canonical program `A135099.P2545427094916164131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135099 (n : ℕ) : ℤ :=
  A135099.P2545427094916164131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135600.P14986103063977304718

`A233583(A233583(n+5)+97)`
-/

namespace A135600.P14986103063977304718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A233583 (n + 5) + 97).toNat

end

end A135600.P14986103063977304718

noncomputable section

/-- A135600: Angled numbers with an internal digit as the vertex.

Offset 1, canonical program `A135600.P14986103063977304718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 900 terms. -/
def A135600 (n : ℕ) : ℤ :=
  A135600.P14986103063977304718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 900 terms. -/
def A135600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135732.P13218147584689488694

`Δ[A156037(n+2)]-1`
-/

namespace A135732.P13218147584689488694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135732.P13218147584689488694

noncomputable section

/-- A135732: Distances to next prime associated with A135731.

Offset 1, canonical program `A135732.P13218147584689488694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135732 (n : ℕ) : ℤ :=
  A135732.P13218147584689488694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136052.P17672628109573547256

`ceil(A136062(n+1)/7)`
-/

namespace A136052.P17672628109573547256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136062 (n + 1) : ℚ) / 7⌉

end

end A136052.P17672628109573547256

noncomputable section

/-- A136052: Daughter primes of order 3.

Offset 1, canonical program `A136052.P17672628109573547256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136052 (n : ℕ) : ℤ :=
  A136052.P17672628109573547256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136090.P14818986857721816505

`p?[A006369(A138918(n+1))-1]`
-/

namespace A136090.P14818986857721816505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A138918 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136090.P14818986857721816505

noncomputable section

/-- A136090: Son primes of order 13.

Offset 1, canonical program `A136090.P14818986857721816505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A136090 (n : ℕ) : ℤ :=
  A136090.P14818986857721816505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A136090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136610.P9162835627362272791

`A196564(A000045(n))`
-/

namespace A136610.P9162835627362272791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A000045 n).toNat

end

end A136610.P9162835627362272791

noncomputable section

/-- A136610: Number of odd digits in Fibonacci numbers.

Offset 0, canonical program `A136610.P9162835627362272791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136610 (n : ℕ) : ℤ :=
  A136610.P9162835627362272791.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136610.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137457.P14249740043583660257

`val(A289443(2*n), 6)`
-/

namespace A137457.P14249740043583660257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289443 (2 * n)).toNat 6

end

end A137457.P14249740043583660257

noncomputable section

/-- A137457: Consider a row of standard dice as a counter. This sequence enumerates the number of changes (one face rotated over an edge to an adjacent face) from n-1 to n.

Offset 0, canonical program `A137457.P14249740043583660257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A137457 (n : ℕ) : ℤ :=
  (A137457.P14249740043583660257.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A137457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137883.P12504292286667318474

`8*A246695(n+2)`
-/

namespace A137883.P12504292286667318474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A246695 (n + 2)

end

end A137883.P12504292286667318474

noncomputable section

/-- A137883: Number of (directed) Hamiltonian paths in the n-Möbius ladder graph.

Offset 3, canonical program `A137883.P12504292286667318474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A137883 (n : ℕ) : ℤ :=
  A137883.P12504292286667318474.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A137883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138122.P10225849521028141504

`∪[A289353(n+1)+4, A289353(n+1)]`
-/

namespace A138122.P10225849521028141504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289353 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138122.P10225849521028141504

noncomputable section

/-- A138122: Cousin primes, the lower of which is 7 (mod 10).

Offset 1, canonical program `A138122.P10225849521028141504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138122 (n : ℕ) : ℤ :=
  (A138122.P10225849521028141504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138616.P5732187192065374334

`A138654(n)%(2^n)`
-/

namespace A138616.P5732187192065374334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138654 n) (2 ^ n : ℤ)

end

end A138616.P5732187192065374334

noncomputable section

/-- A138616: a(n) = 7^n mod 2^n.

Offset 0, canonical program `A138616.P5732187192065374334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A138616 (n : ℕ) : ℤ :=
  A138616.P5732187192065374334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A138616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138623.P14695164853864982315

`∪[A142479(n+1), A142489(n+1)]`
-/

namespace A138623.P14695164853864982315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138623.P14695164853864982315

noncomputable section

/-- A138623: Primes congruent to 5 mod 17.

Offset 1, canonical program `A138623.P14695164853864982315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138623 (n : ℕ) : ℤ :=
  (A138623.P14695164853864982315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138625.P13957777743230489249

`∪[A142494(n+1), A142504(n+1)]`
-/

namespace A138625.P13957777743230489249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138625.P13957777743230489249

noncomputable section

/-- A138625: Primes congruent to 12 mod 17.

Offset 1, canonical program `A138625.P13957777743230489249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138625 (n : ℕ) : ℤ :=
  (A138625.P13957777743230489249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138627.P4252768369542355220

`∪[A142482(n+1), A142503(n+1)]`
-/

namespace A138627.P4252768369542355220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138627.P4252768369542355220

noncomputable section

/-- A138627: Primes congruent to 10 mod 17.

Offset 1, canonical program `A138627.P4252768369542355220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138627 (n : ℕ) : ℤ :=
  (A138627.P4252768369542355220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138629.P1510362924462901834

`∪[A142480(n+1), A142501(n+1)]`
-/

namespace A138629.P1510362924462901834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138629.P1510362924462901834

noncomputable section

/-- A138629: Primes of form 17*n+7.

Offset 1, canonical program `A138629.P1510362924462901834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138629 (n : ℕ) : ℤ :=
  (A138629.P1510362924462901834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138631.P2121086656400073767

`∪[A142492(n+1), A142502(n+1)]`
-/

namespace A138631.P2121086656400073767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138631.P2121086656400073767

noncomputable section

/-- A138631: Primes of the form 17*k + 9.

Offset 1, canonical program `A138631.P2121086656400073767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138631 (n : ℕ) : ℤ :=
  (A138631.P2121086656400073767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138633.P16398703878555134908

`∪[A142481(n+1), A142491(n+1)]`
-/

namespace A138633.P16398703878555134908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138633.P16398703878555134908

noncomputable section

/-- A138633: Primes of the form 17*k - 9.

Offset 1, canonical program `A138633.P16398703878555134908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138633 (n : ℕ) : ℤ :=
  (A138633.P16398703878555134908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138638.P12754287615835535040

`∪[A142688(n+1), A142700(n+1)]`
-/

namespace A138638.P12754287615835535040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138638.P12754287615835535040

noncomputable section

/-- A138638: Primes of form 19*n-1.

Offset 1, canonical program `A138638.P12754287615835535040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138638 (n : ℕ) : ℤ :=
  (A138638.P12754287615835535040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138640.P14203383669018237772

`∪[A142676(n+1), A142699(n+1)]`
-/

namespace A138640.P14203383669018237772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138640.P14203383669018237772

noncomputable section

/-- A138640: Primes of form 19*n-2.

Offset 1, canonical program `A138640.P14203383669018237772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138640 (n : ℕ) : ℤ :=
  (A138640.P14203383669018237772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138642.P13385308254066036135

`∪[A142675(n+1), A142687(n+1)]`
-/

namespace A138642.P13385308254066036135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138642.P13385308254066036135

noncomputable section

/-- A138642: Primes of form 19*n-3.

Offset 1, canonical program `A138642.P13385308254066036135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138642 (n : ℕ) : ℤ :=
  (A138642.P13385308254066036135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138810.P12069746356700581126

`∑{d}[n+1, #²*A175629(#)]`
-/

namespace A138810.P12069746356700581126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A175629 d

end

end A138810.P12069746356700581126

noncomputable section

/-- A138810: Expansion of (8 / 7) * (1 - eta(q)^7 / eta(q^7)) - 7 * (eta(q) * eta(q^7))^3 in powers of q.

Offset 1, canonical program `A138810.P12069746356700581126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A138810 (n : ℕ) : ℤ :=
  A138810.P12069746356700581126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A138810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138967.P1165295429631890852

`A343180(record[xor(n, 2*n)/3])`
-/

namespace A138967.P1165295429631890852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A138967.P1165295429631890852

noncomputable section

/-- A138967: Infinite Fibonacci word on the alphabet {1,2,3,4}.

Offset 1, canonical program `A138967.P1165295429631890852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138967 (n : ℕ) : ℤ :=
  A138967.P1165295429631890852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139529.P12100689754848944619

`(A139530(n+1)-13)/24`
-/

namespace A139529.P12100689754848944619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139530 (n + 1) - 13 : ℚ) / 24

end

end A139529.P12100689754848944619

noncomputable section

/-- A139529: Numbers k such that 24*k + 13 is prime.

Offset 1, canonical program `A139529.P12100689754848944619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139529.P12100689754848944619.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139845.P2271381271058616580

`∩[A106878(n+1), A141123(n+1)]`
-/

namespace A139845.P2271381271058616580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P2271381271058616580

noncomputable section

/-- A139845: Primes of the form 3x^2 + 35y^2.

Offset 1, canonical program `A139845.P2271381271058616580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A139845 (n : ℕ) : ℤ :=
  (A139845.P2271381271058616580.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A139845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139854.P1258541534408213979

`∩[A141170(n+1), A106865(n+1)]`
-/

namespace A139854.P1258541534408213979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P1258541534408213979

noncomputable section

/-- A139854: Primes of the form 3x^2 + 40y^2.

Offset 1, canonical program `A139854.P1258541534408213979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A139854 (n : ℕ) : ℤ :=
  (A139854.P1258541534408213979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A139854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139875.P12664250096370971666

`∩[A139492(n+1), A141373(n+1)]`
-/

namespace A139875.P12664250096370971666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P12664250096370971666

noncomputable section

/-- A139875: Primes of the form 4x^2 + 4xy + 43y^2.

Offset 1, canonical program `A139875.P12664250096370971666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A139875 (n : ℕ) : ℤ :=
  (A139875.P12664250096370971666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A139875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140371.P8695306409615514492

`∪[A142163(n+1), A142171(n+1)]`
-/

namespace A140371.P8695306409615514492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P8695306409615514492

noncomputable section

/-- A140371: Primes of the form 26k + 7.

Offset 1, canonical program `A140371.P8695306409615514492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140371 (n : ℕ) : ℤ :=
  (A140371.P8695306409615514492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140372.P4605066223831443741

`∪[A142172(n+1), A142180(n+1)]`
-/

namespace A140372.P4605066223831443741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P4605066223831443741

noncomputable section

/-- A140372: Primes of the form 26k + 9.

Offset 1, canonical program `A140372.P4605066223831443741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140372 (n : ℕ) : ℤ :=
  (A140372.P4605066223831443741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140373.P1707321820406862748

`∪[A142166(n+1), A142181(n+1)]`
-/

namespace A140373.P1707321820406862748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P1707321820406862748

noncomputable section

/-- A140373: Primes of the form 26*n+11.

Offset 1, canonical program `A140373.P1707321820406862748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140373 (n : ℕ) : ℤ :=
  (A140373.P1707321820406862748.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140374.P8397756464974821000

`∪[A142514(n+1), A142526(n+1)]`
-/

namespace A140374.P8397756464974821000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P8397756464974821000

noncomputable section

/-- A140374: Primes of the form 26k + 15.

Offset 1, canonical program `A140374.P8397756464974821000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140374 (n : ℕ) : ℤ :=
  (A140374.P8397756464974821000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140375.P5255106742283819564

`∪[A142165(n+1), A142173(n+1)]`
-/

namespace A140375.P5255106742283819564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P5255106742283819564

noncomputable section

/-- A140375: Primes of the form 26n+23.

Offset 1, canonical program `A140375.P5255106742283819564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140375 (n : ℕ) : ℤ :=
  (A140375.P5255106742283819564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140541.P7773721513779311830

`∪[A142486(n+1), A142507(n+1)]`
-/

namespace A140541.P7773721513779311830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140541.P7773721513779311830

noncomputable section

/-- A140541: Primes of the form 17*k - 1.

Offset 1, canonical program `A140541.P7773721513779311830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140541 (n : ℕ) : ℤ :=
  (A140541.P7773721513779311830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140542.P8517154036007489647

`∪[A142483(n+1), A142493(n+1)]`
-/

namespace A140542.P8517154036007489647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140542.P8517154036007489647

noncomputable section

/-- A140542: Primes of form 17*n - 6.

Offset 1, canonical program `A140542.P8517154036007489647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140542 (n : ℕ) : ℤ :=
  (A140542.P8517154036007489647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140543.P10748940186390529509

`∪[A142496(n+1), A142506(n+1)]`
-/

namespace A140543.P10748940186390529509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140543.P10748940186390529509

noncomputable section

/-- A140543: Primes congruent to 15 mod 17.

Offset 1, canonical program `A140543.P10748940186390529509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140543 (n : ℕ) : ℤ :=
  (A140543.P10748940186390529509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140545.P7683708236450502896

`∪[A142490(n+1), A142500(n+1)]`
-/

namespace A140545.P7683708236450502896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140545.P7683708236450502896

noncomputable section

/-- A140545: Primes of form 17n + 6.

Offset 1, canonical program `A140545.P7683708236450502896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140545 (n : ℕ) : ℤ :=
  (A140545.P7683708236450502896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140619.P10258335897419128005

`∩[A107201(n+1), A141373(n+1)]`
-/

namespace A140619.P10258335897419128005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P10258335897419128005

noncomputable section

/-- A140619: Primes of the form 19x^2+4xy+28y^2.

Offset 1, canonical program `A140619.P10258335897419128005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140619 (n : ℕ) : ℤ :=
  (A140619.P10258335897419128005.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140840.P7071296738797076077

`∩[A140534(n+1), A142083(n+1)]`
-/

namespace A140840.P7071296738797076077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140840.P7071296738797076077

noncomputable section

/-- A140840: Primes of the form 210n+11.

Offset 1, canonical program `A140840.P7071296738797076077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A140840 (n : ℕ) : ℤ :=
  (A140840.P7071296738797076077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A140840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140842.P4312162986771692173

`∩[A140537(n+1), A142087(n+1)]`
-/

namespace A140842.P4312162986771692173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140842.P4312162986771692173

noncomputable section

/-- A140842: Primes of the form 210k + 17.

Offset 1, canonical program `A140842.P4312162986771692173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A140842 (n : ℕ) : ℤ :=
  (A140842.P4312162986771692173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. -/
def A140842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140848.P9126836863826732284

`∩[A140634(n+1), A142080(n+1)]`
-/

namespace A140848.P9126836863826732284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140848.P9126836863826732284

noncomputable section

/-- A140848: Primes of the form 210k + 41.

Offset 1, canonical program `A140848.P9126836863826732284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A140848 (n : ℕ) : ℤ :=
  (A140848.P9126836863826732284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A140848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141849.P13731461525299827843

`∪[A142049(n+1), A142062(n+1)]`
-/

namespace A141849.P13731461525299827843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141849.P13731461525299827843

noncomputable section

/-- A141849: Primes congruent to 1 mod 11.

Offset 1, canonical program `A141849.P13731461525299827843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141849 (n : ℕ) : ℤ :=
  (A141849.P13731461525299827843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141851.P13840469523401039223

`∪[A142051(n+1), A142064(n+1)]`
-/

namespace A141851.P13840469523401039223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141851.P13840469523401039223

noncomputable section

/-- A141851: Primes congruent to 4 mod 11.

Offset 1, canonical program `A141851.P13840469523401039223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141851 (n : ℕ) : ℤ :=
  (A141851.P13840469523401039223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141852.P969054118036773322

`∪[A142052(n+1), A142058(n+1)]`
-/

namespace A141852.P969054118036773322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141852.P969054118036773322

noncomputable section

/-- A141852: Primes congruent to 5 mod 11.

Offset 1, canonical program `A141852.P969054118036773322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141852 (n : ℕ) : ℤ :=
  (A141852.P969054118036773322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141853.P13627504790590527624

`∪[A142059(n+1), A142065(n+1)]`
-/

namespace A141853.P13627504790590527624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141853.P13627504790590527624

noncomputable section

/-- A141853: Primes congruent to 6 mod 11.

Offset 1, canonical program `A141853.P13627504790590527624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141853 (n : ℕ) : ℤ :=
  (A141853.P13627504790590527624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141854.P11562721378020299308

`∪[A142053(n+1), A142066(n+1)]`
-/

namespace A141854.P11562721378020299308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141854.P11562721378020299308

noncomputable section

/-- A141854: Primes congruent to 7 mod 11.

Offset 1, canonical program `A141854.P11562721378020299308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141854 (n : ℕ) : ℤ :=
  (A141854.P11562721378020299308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141855.P9683596149606445885

`∪[A142054(n+1), A142060(n+1)]`
-/

namespace A141855.P9683596149606445885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141855.P9683596149606445885

noncomputable section

/-- A141855: Primes congruent to 8 mod 11.

Offset 1, canonical program `A141855.P9683596149606445885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141855 (n : ℕ) : ℤ :=
  (A141855.P9683596149606445885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141856.P2432058376377571299

`∪[A142061(n+1), A142067(n+1)]`
-/

namespace A141856.P2432058376377571299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141856.P2432058376377571299

noncomputable section

/-- A141856: Primes congruent to 9 mod 11.

Offset 1, canonical program `A141856.P2432058376377571299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141856 (n : ℕ) : ℤ :=
  (A141856.P2432058376377571299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141857.P5337679499641645178

`∪[A142055(n+1), A142068(n+1)]`
-/

namespace A141857.P5337679499641645178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141857.P5337679499641645178

noncomputable section

/-- A141857: Primes congruent to 10 mod 11.

Offset 1, canonical program `A141857.P5337679499641645178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141857 (n : ℕ) : ℤ :=
  (A141857.P5337679499641645178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141859.P3356521200775517715

`∪[A142174(n+1), A142182(n+1)]`
-/

namespace A141859.P3356521200775517715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141859.P3356521200775517715

noncomputable section

/-- A141859: Primes congruent to 12 mod 13.

Offset 1, canonical program `A141859.P3356521200775517715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141859 (n : ℕ) : ℤ :=
  (A141859.P3356521200775517715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141865.P3984768350664210329

`∪[A142484(n+1), A142505(n+1)]`
-/

namespace A141865.P3984768350664210329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141865.P3984768350664210329

noncomputable section

/-- A141865: Primes congruent to 13 mod 17.

Offset 1, canonical program `A141865.P3984768350664210329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141865 (n : ℕ) : ℤ :=
  (A141865.P3984768350664210329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141868.P7330579957627233495

`∪[A142665(n+1), A142677(n+1)]`
-/

namespace A141868.P7330579957627233495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141868.P7330579957627233495

noncomputable section

/-- A141868: Primes congruent to 1 mod 19.

Offset 1, canonical program `A141868.P7330579957627233495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141868 (n : ℕ) : ℤ :=
  (A141868.P7330579957627233495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141870.P17902096079942132044

`∪[A142667(n+1), A142679(n+1)]`
-/

namespace A141870.P17902096079942132044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141870.P17902096079942132044

noncomputable section

/-- A141870: Primes congruent to 4 mod 19.

Offset 1, canonical program `A141870.P17902096079942132044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141870 (n : ℕ) : ℤ :=
  (A141870.P17902096079942132044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141871.P14193724808016586424

`∪[A142680(n+1), A142692(n+1)]`
-/

namespace A141871.P14193724808016586424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141871.P14193724808016586424

noncomputable section

/-- A141871: Primes congruent to 6 mod 19.

Offset 1, canonical program `A141871.P14193724808016586424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141871 (n : ℕ) : ℤ :=
  (A141871.P14193724808016586424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141872.P11289759829138120049

`∪[A142669(n+1), A142681(n+1)]`
-/

namespace A141872.P11289759829138120049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141872.P11289759829138120049

noncomputable section

/-- A141872: Primes congruent to 7 mod 19.

Offset 1, canonical program `A141872.P11289759829138120049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141872 (n : ℕ) : ℤ :=
  (A141872.P11289759829138120049.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141873.P12016974891057872690

`∪[A142670(n+1), A142693(n+1)]`
-/

namespace A141873.P12016974891057872690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141873.P12016974891057872690

noncomputable section

/-- A141873: Primes congruent to 8 mod 19.

Offset 1, canonical program `A141873.P12016974891057872690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141873 (n : ℕ) : ℤ :=
  (A141873.P12016974891057872690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141874.P3041446288535104640

`∪[A142682(n+1), A142694(n+1)]`
-/

namespace A141874.P3041446288535104640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141874.P3041446288535104640

noncomputable section

/-- A141874: Primes congruent to 9 mod 19.

Offset 1, canonical program `A141874.P3041446288535104640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141874 (n : ℕ) : ℤ :=
  (A141874.P3041446288535104640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141875.P17846897363976418073

`∪[A142671(n+1), A142683(n+1)]`
-/

namespace A141875.P17846897363976418073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141875.P17846897363976418073

noncomputable section

/-- A141875: Primes congruent to 10 mod 19.

Offset 1, canonical program `A141875.P17846897363976418073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141875 (n : ℕ) : ℤ :=
  (A141875.P17846897363976418073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141876.P16106882412085691642

`∪[A142672(n+1), A142695(n+1)]`
-/

namespace A141876.P16106882412085691642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141876.P16106882412085691642

noncomputable section

/-- A141876: Primes congruent to 11 mod 19.

Offset 1, canonical program `A141876.P16106882412085691642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141876 (n : ℕ) : ℤ :=
  (A141876.P16106882412085691642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141877.P14383995808257274838

`∪[A142684(n+1), A142696(n+1)]`
-/

namespace A141877.P14383995808257274838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141877.P14383995808257274838

noncomputable section

/-- A141877: Primes congruent to 12 mod 19.

Offset 1, canonical program `A141877.P14383995808257274838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141877 (n : ℕ) : ℤ :=
  (A141877.P14383995808257274838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141878.P5470322527267451908

`∪[A142673(n+1), A142685(n+1)]`
-/

namespace A141878.P5470322527267451908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141878.P5470322527267451908

noncomputable section

/-- A141878: Primes congruent to 13 mod 19.

Offset 1, canonical program `A141878.P5470322527267451908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141878 (n : ℕ) : ℤ :=
  (A141878.P5470322527267451908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141879.P14350241755533721815

`∪[A142674(n+1), A142697(n+1)]`
-/

namespace A141879.P14350241755533721815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141879.P14350241755533721815

noncomputable section

/-- A141879: Primes congruent to 14 mod 19.

Offset 1, canonical program `A141879.P14350241755533721815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141879 (n : ℕ) : ℤ :=
  (A141879.P14350241755533721815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141880.P5030940355029022725

`∪[A142686(n+1), A142698(n+1)]`
-/

namespace A141880.P5030940355029022725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141880.P5030940355029022725

noncomputable section

/-- A141880: Primes congruent to 15 mod 19.

Offset 1, canonical program `A141880.P5030940355029022725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141880 (n : ℕ) : ℤ :=
  (A141880.P5030940355029022725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141899.P2904525394632325117

`∩[A140830(n+1), A142094(n+1)]`
-/

namespace A141899.P2904525394632325117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141899.P2904525394632325117

noncomputable section

/-- A141899: Primes of the form 2*3*5*7*k + 97.

Offset 1, canonical program `A141899.P2904525394632325117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A141899 (n : ℕ) : ℤ :=
  (A141899.P2904525394632325117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A141899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141929.P6837495591170091727

`∪[A101780(n+1), A244771(n+1)]`
-/

namespace A141929.P6837495591170091727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141929.P6837495591170091727

noncomputable section

/-- A141929: Primes congruent to 3 mod 25.

Offset 1, canonical program `A141929.P6837495591170091727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141929 (n : ℕ) : ℤ :=
  (A141929.P6837495591170091727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141930.P709686753532459887

`∪[A244767(n+1), A244775(n+1)]`
-/

namespace A141930.P709686753532459887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141930.P709686753532459887

noncomputable section

/-- A141930: Primes congruent to 4 mod 25.

Offset 1, canonical program `A141930.P709686753532459887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141930 (n : ℕ) : ℤ :=
  (A141930.P709686753532459887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141935.P8548039102918466505

`∪[A167442(n+1), A167445(n+1)]`
-/

namespace A141935.P8548039102918466505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141935.P8548039102918466505

noncomputable section

/-- A141935: Primes congruent to 11 mod 25.

Offset 1, canonical program `A141935.P8548039102918466505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141935 (n : ℕ) : ℤ :=
  (A141935.P8548039102918466505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141938.P12111399359062417829

`∪[A244777(n+1), A268858(n+1)]`
-/

namespace A141938.P12111399359062417829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141938.P12111399359062417829

noncomputable section

/-- A141938: Primes congruent to 14 mod 25.

Offset 1, canonical program `A141938.P12111399359062417829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141938 (n : ℕ) : ℤ :=
  (A141938.P12111399359062417829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141940.P9481968464007872320

`∪[A244764(n+1), A244773(n+1)]`
-/

namespace A141940.P9481968464007872320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141940.P9481968464007872320

noncomputable section

/-- A141940: Primes congruent to 17 mod 25.

Offset 1, canonical program `A141940.P9481968464007872320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141940 (n : ℕ) : ℤ :=
  (A141940.P9481968464007872320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141943.P15457058075200521897

`∪[A167441(n+1), A268859(n+1)]`
-/

namespace A141943.P15457058075200521897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141943.P15457058075200521897

noncomputable section

/-- A141943: Primes congruent to 21 mod 25.

Offset 1, canonical program `A141943.P15457058075200521897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141943 (n : ℕ) : ℤ :=
  (A141943.P15457058075200521897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141944.P14622568476246597123

`∪[A244770(n+1), A244778(n+1)]`
-/

namespace A141944.P14622568476246597123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141944.P14622568476246597123

noncomputable section

/-- A141944: Primes congruent to 22 mod 25.

Offset 1, canonical program `A141944.P14622568476246597123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141944 (n : ℕ) : ℤ :=
  (A141944.P14622568476246597123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141945.P2046616628177584808

`∪[A244766(n+1), A244774(n+1)]`
-/

namespace A141945.P2046616628177584808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141945.P2046616628177584808

noncomputable section

/-- A141945: Primes congruent to 23 mod 25.

Offset 1, canonical program `A141945.P2046616628177584808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141945 (n : ℕ) : ℤ :=
  (A141945.P2046616628177584808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141966.P398058488216796074

`∪[A142642(n+1), A142654(n+1)]`
-/

namespace A141966.P398058488216796074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141966.P398058488216796074

noncomputable section

/-- A141966: Primes congruent to 3 mod 28.

Offset 1, canonical program `A141966.P398058488216796074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141966 (n : ℕ) : ℤ :=
  (A141966.P398058488216796074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141967.P6021039340754533921

`∪[A142643(n+1), A142655(n+1)]`
-/

namespace A141967.P6021039340754533921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141967.P6021039340754533921

noncomputable section

/-- A141967: Primes congruent to 5 mod 28.

Offset 1, canonical program `A141967.P6021039340754533921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141967 (n : ℕ) : ℤ :=
  (A141967.P6021039340754533921.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141970.P8007402777737645315

`∪[A142646(n+1), A142658(n+1)]`
-/

namespace A141970.P8007402777737645315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141970.P8007402777737645315

noncomputable section

/-- A141970: Primes congruent to 13 mod 28.

Offset 1, canonical program `A141970.P8007402777737645315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141970 (n : ℕ) : ℤ :=
  (A141970.P8007402777737645315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141972.P12459213782653938679

`∪[A142648(n+1), A142660(n+1)]`
-/

namespace A141972.P12459213782653938679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141972.P12459213782653938679

noncomputable section

/-- A141972: Primes congruent to 17 mod 28.

Offset 1, canonical program `A141972.P12459213782653938679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141972 (n : ℕ) : ℤ :=
  (A141972.P12459213782653938679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141973.P5553029766086306265

`∪[A142649(n+1), A142661(n+1)]`
-/

namespace A141973.P5553029766086306265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141973.P5553029766086306265

noncomputable section

/-- A141973: Primes congruent to 19 mod 28.

Offset 1, canonical program `A141973.P5553029766086306265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141973 (n : ℕ) : ℤ :=
  (A141973.P5553029766086306265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141976.P1655957076475741110

`∪[A142652(n+1), A142664(n+1)]`
-/

namespace A141976.P1655957076475741110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141976.P1655957076475741110

noncomputable section

/-- A141976: Primes congruent to 27 mod 28.

Offset 1, canonical program `A141976.P1655957076475741110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141976 (n : ℕ) : ℤ :=
  (A141976.P1655957076475741110.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142036.P18024300388264956067

`∪[A142927(n+1), A142941(n+1)]`
-/

namespace A142036.P18024300388264956067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P18024300388264956067

noncomputable section

/-- A142036: Primes congruent to 5 mod 32.

Offset 1, canonical program `A142036.P18024300388264956067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142036 (n : ℕ) : ℤ :=
  (A142036.P18024300388264956067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142037.P2683542611358419371

`∪[A142928(n+1), A142942(n+1)]`
-/

namespace A142037.P2683542611358419371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P2683542611358419371

noncomputable section

/-- A142037: Primes congruent to 7 mod 32.

Offset 1, canonical program `A142037.P2683542611358419371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142037 (n : ℕ) : ℤ :=
  (A142037.P2683542611358419371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142038.P4402446302083685320

`∪[A142929(n+1), A142943(n+1)]`
-/

namespace A142038.P4402446302083685320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P4402446302083685320

noncomputable section

/-- A142038: Primes congruent to 9 mod 32.

Offset 1, canonical program `A142038.P4402446302083685320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142038 (n : ℕ) : ℤ :=
  (A142038.P4402446302083685320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142039.P4379301169805079559

`∪[A142930(n+1), A142944(n+1)]`
-/

namespace A142039.P4379301169805079559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P4379301169805079559

noncomputable section

/-- A142039: Primes congruent to 11 mod 32.

Offset 1, canonical program `A142039.P4379301169805079559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142039 (n : ℕ) : ℤ :=
  (A142039.P4379301169805079559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142040.P11145662148218653823

`∪[A142931(n+1), A142945(n+1)]`
-/

namespace A142040.P11145662148218653823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P11145662148218653823

noncomputable section

/-- A142040: Primes congruent to 13 mod 32.

Offset 1, canonical program `A142040.P11145662148218653823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142040 (n : ℕ) : ℤ :=
  (A142040.P11145662148218653823.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142041.P16073640399214139543

`∪[A142932(n+1), A142946(n+1)]`
-/

namespace A142041.P16073640399214139543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P16073640399214139543

noncomputable section

/-- A142041: Primes congruent to 15 mod 32.

Offset 1, canonical program `A142041.P16073640399214139543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142041 (n : ℕ) : ℤ :=
  (A142041.P16073640399214139543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142043.P5205622206172157271

`∪[A127592(n+1), A142949(n+1)]`
-/

namespace A142043.P5205622206172157271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P5205622206172157271

noncomputable section

/-- A142043: Primes congruent to 21 mod 32.

Offset 1, canonical program `A142043.P5205622206172157271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142043 (n : ℕ) : ℤ :=
  (A142043.P5205622206172157271.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142044.P5022247538457653579

`∪[A142935(n+1), A142950(n+1)]`
-/

namespace A142044.P5022247538457653579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P5022247538457653579

noncomputable section

/-- A142044: Primes congruent to 23 mod 32.

Offset 1, canonical program `A142044.P5022247538457653579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142044 (n : ℕ) : ℤ :=
  (A142044.P5022247538457653579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142045.P17621399904502160490

`∪[A142936(n+1), A142951(n+1)]`
-/

namespace A142045.P17621399904502160490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P17621399904502160490

noncomputable section

/-- A142045: Primes congruent to 25 mod 32.

Offset 1, canonical program `A142045.P17621399904502160490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142045 (n : ℕ) : ℤ :=
  (A142045.P17621399904502160490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142046.P13470369612893551844

`∪[A142937(n+1), A142952(n+1)]`
-/

namespace A142046.P13470369612893551844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P13470369612893551844

noncomputable section

/-- A142046: Primes congruent to 27 mod 32.

Offset 1, canonical program `A142046.P13470369612893551844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142046 (n : ℕ) : ℤ :=
  (A142046.P13470369612893551844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142047.P5700770285790569133

`∪[A142938(n+1), A142953(n+1)]`
-/

namespace A142047.P5700770285790569133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P5700770285790569133

noncomputable section

/-- A142047: Primes congruent to 29 mod 32.

Offset 1, canonical program `A142047.P5700770285790569133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142047 (n : ℕ) : ℤ :=
  (A142047.P5700770285790569133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143099.P16262607495362422146

`2*a(n-1)+A143100(n)` with `a(0)=1`
-/

namespace A143099.P16262607495362422146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A143100 n

end

end A143099.P16262607495362422146

noncomputable section

/-- A143099: A007318 * A143097.

Offset 1, canonical program `A143099.P16262607495362422146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143099 (n : ℕ) : ℤ :=
  A143099.P16262607495362422146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143827.P12553254748441384964

`eq[2, A359438(2*n)]`
-/

namespace A143827.P12553254748441384964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359438 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143827.P12553254748441384964

noncomputable section

/-- A143827: Numbers k such that 8*k^2 - 1 is prime.

Offset 1, canonical program `A143827.P12553254748441384964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1105 terms. -/
def A143827 (n : ℕ) : ℤ :=
  (A143827.P12553254748441384964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1105 terms. -/
def A143827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145094.P15187296884426791891

`5*6*8*A281372(n+1)`
-/

namespace A145094.P15187296884426791891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (6 * (8 * A281372 (n + 1)))

end

end A145094.P15187296884426791891

noncomputable section

/-- A145094: Coefficients in expansion of Eisenstein series q*E'_4.

Offset 1, canonical program `A145094.P15187296884426791891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A145094 (n : ℕ) : ℤ :=
  A145094.P15187296884426791891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A145094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118140.P16544364364209257436

`A000720(p?[n²+41+n])`
-/

namespace A118140.P16544364364209257436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 41 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A118140.P16544364364209257436

noncomputable section

/-- A118140: Index of A005846(n) in the primes.

Offset 1, canonical program `A118140.P16544364364209257436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A118140 (n : ℕ) : ℤ :=
  A118140.P16544364364209257436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A118140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118480.P8343590674994203720

`(A002144(n+1)-A002145(n+1)-2)/4`
-/

namespace A118480.P8343590674994203720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) - A002145 (n + 1) - 2 : ℚ) / 4

end

end A118480.P8343590674994203720

noncomputable section

/-- A118480: (n-th 4k+1 prime minus n-th 4k+3 prime minus two)/4.

Offset 1, canonical program `A118480.P8343590674994203720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A118480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118480.P8343590674994203720.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A118480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119681.P12750816001809644194

`(A002144(n+1)+1)/2`
-/

namespace A119681.P12750816001809644194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) + 1 : ℚ) / 2

end

end A119681.P12750816001809644194

noncomputable section

/-- A119681: Odd numbers n such that 2n-1 is prime.

Offset 1, canonical program `A119681.P12750816001809644194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119681 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119681.P12750816001809644194.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120309.P4479937271549243067

`eq[0, A000720(n+1)%4]+1`
-/

namespace A120309.P4479937271549243067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120309.P4479937271549243067

noncomputable section

/-- A120309: Numbers k such that pi(k) == 0 (mod 4), where pi() = A000720.

Offset 1, canonical program `A120309.P4479937271549243067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120309 (n : ℕ) : ℤ :=
  (A120309.P4479937271549243067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121367.P2179851518222068180

`a(n-1)+A007947(a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121367.P2179851518222068180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A007947 (a (n - 2)).toNat

end

end A121367.P2179851518222068180

noncomputable section

/-- A121367: a(1) = a(2) = 1, a(n) = a(n-1) + A007947(a(n-2)) for n >= 3, i.e., a(n) = a(n-1) plus the largest squarefree divisor of a(n-2).

Offset 1, canonical program `A121367.P2179851518222068180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121367 (n : ℕ) : ℤ :=
  A121367.P2179851518222068180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121368.P15912026071733467497

`A007947(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121368.P15912026071733467497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007947 (a (n - 1)).toNat + a (n - 2)

end

end A121368.P15912026071733467497

noncomputable section

/-- A121368: a(1) = a(2) = 1, a(n) = A007947(a(n-1)) + a(n-2), for n >= 3, i.e., a(n) = a(n-2) plus the largest squarefree divisor of a(n-1).

Offset 1, canonical program `A121368.P15912026071733467497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121368 (n : ℕ) : ℤ :=
  A121368.P15912026071733467497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121369.P7456332223395737425

`A007947(a(n-1))+A007947(a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121369.P7456332223395737425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007947 (a (n - 1)).toNat + A007947 (a (n - 2)).toNat

end

end A121369.P7456332223395737425

noncomputable section

/-- A121369: a(1) = a(2) = 1, a(n) = A007947(a(n-1)) + A007947(a(n-2)) for n >= 3, i.e., a(n) is the largest squarefree divisor of a(n-1) plus the largest squarefree divisor of a(n-2).

Offset 1, canonical program `A121369.P7456332223395737425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121369 (n : ℕ) : ℤ :=
  A121369.P7456332223395737425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121539.P12871047316155438586

`A003159(n+1)-1`
-/

namespace A121539.P12871047316155438586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) - 1

end

end A121539.P12871047316155438586

noncomputable section

/-- A121539: Numbers whose binary expansion ends in an even number of 1's.

Offset 1, canonical program `A121539.P12871047316155438586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121539 (n : ℕ) : ℤ :=
  A121539.P12871047316155438586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A124789.P3048365902660940800

`(-1)^n*A124746(n)`
-/

namespace A124789.P3048365902660940800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124746 n

end

end A124789.P3048365902660940800

noncomputable section

/-- A124789: Expansion of (1+x^2)/(1-x^4-x^5).

Offset 0, canonical program `A124789.P3048365902660940800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124746, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124789 (n : ℕ) : ℤ :=
  A124789.P3048365902660940800.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124746, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A124789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128913.P17301333717528200460

`(n+1)*A000720(n+1)`
-/

namespace A128913.P17301333717528200460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (n + 1)

end

end A128913.P17301333717528200460

noncomputable section

/-- A128913: a(n) = n*pi(n).

Offset 1, canonical program `A128913.P17301333717528200460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128913 (n : ℕ) : ℤ :=
  A128913.P17301333717528200460.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132188.P7469144520474104274

`2*A120486(n+1)-(n+1)`
-/

namespace A132188.P7469144520474104274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120486 (n + 1) - (n + 1 : ℤ)

end

end A132188.P7469144520474104274

noncomputable section

/-- A132188: Number of 3-term geometric progressions with no term exceeding n.

Offset 1, canonical program `A132188.P7469144520474104274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132188 (n : ℕ) : ℤ :=
  A132188.P7469144520474104274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132345.P9558372219206818084

`A120486(n+1)-(n+1)`
-/

namespace A132345.P9558372219206818084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120486 (n + 1) - (n + 1 : ℤ)

end

end A132345.P9558372219206818084

noncomputable section

/-- A132345: Number of increasing three-term geometric sequences from the integers {1,2,...,n}.

Offset 1, canonical program `A132345.P9558372219206818084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120486, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132345 (n : ℕ) : ℤ :=
  A132345.P9558372219206818084.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120486, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132377.P12114512545845087021

`A000720(n+1)^(n+1)`
-/

namespace A132377.P12114512545845087021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) ^ (n + 1)

end

end A132377.P12114512545845087021

noncomputable section

/-- A132377: a(n) = PrimePi(n)^n.

Offset 1, canonical program `A132377.P12114512545845087021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132377 (n : ℕ) : ℤ :=
  A132377.P12114512545845087021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134720.P14885746599945397126

`A000931(A047350(n+1))`
-/

namespace A134720.P14885746599945397126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A047350 (n + 1)).toNat

end

end A134720.P14885746599945397126

noncomputable section

/-- A134720: Even Padovan numbers.

Offset 1, canonical program `A134720.P14885746599945397126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A134720 (n : ℕ) : ℤ :=
  A134720.P14885746599945397126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A134720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138241.P9154013233846997930

`Δ[A000720(A000093(A000040(n+1)))]`
-/

namespace A138241.P9154013233846997930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000093 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138241.P9154013233846997930

noncomputable section

/-- A138241: Number of squares of primes between cubes of successive primes.

Offset 1, canonical program `A138241.P9154013233846997930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A138241 (n : ℕ) : ℤ :=
  A138241.P9154013233846997930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A138241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139131.P15139585479701718835

`A007947(A000217(n+1))`
-/

namespace A139131.P15139585479701718835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000217 (n + 1)).toNat

end

end A139131.P15139585479701718835

noncomputable section

/-- A139131: Squarefree kernel of n*(n+1)/2.

Offset 1, canonical program `A139131.P15139585479701718835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139131 (n : ℕ) : ℤ :=
  A139131.P15139585479701718835.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139487.P1787232498596544969

`(A007522(n+1)-7)/8`
-/

namespace A139487.P1787232498596544969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007522 (n + 1) - 7 : ℚ) / 8

end

end A139487.P1787232498596544969

noncomputable section

/-- A139487: Numbers k such that 8k + 7 is prime.

Offset 1, canonical program `A139487.P1787232498596544969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139487.P1787232498596544969.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143321.P7852709358253310021

`eq[n+2, lcm(n+2, A008472(n+1))]+1`
-/

namespace A143321.P7852709358253310021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A008472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143321.P7852709358253310021

noncomputable section

/-- A143321: Positive integers k whose sum of distinct prime divisors divides k+1.

Offset 1, canonical program `A143321.P7852709358253310021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A143321 (n : ℕ) : ℤ :=
  (A143321.P7852709358253310021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A143321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143322.P3083203462530843430

`lt[(n+1)%A008472(n+2), 1]+2`
-/

namespace A143322.P3083203462530843430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A008472 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A143322.P3083203462530843430

noncomputable section

/-- A143322: Positive integers k whose sum of distinct prime divisors divides k-1.

Offset 1, canonical program `A143322.P3083203462530843430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A143322 (n : ℕ) : ℤ :=
  (A143322.P3083203462530843430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A143322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117966.P11599160912576478646

`n-3*A005836(A289814(n)+1)`
-/

namespace A117966.P11599160912576478646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A005836 (A289814 n + 1).toNat

end

end A117966.P11599160912576478646

noncomputable section

/-- A117966: Balanced ternary enumeration (based on balanced ternary representation) of integers; write n in ternary and then replace 2's with (-1)'s.

Offset 0, canonical program `A117966.P11599160912576478646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117966 (n : ℕ) : ℤ :=
  A117966.P11599160912576478646.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141164.P6885543074851642575

`eq[1, A188172(n+1)]+1`
-/

namespace A141164.P6885543074851642575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141164.P6885543074851642575

noncomputable section

/-- A141164: Numbers having exactly 1 divisor of the form 8*k + 7.

Offset 1, canonical program `A141164.P6885543074851642575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2878 terms. -/
def A141164 (n : ℕ) : ℤ :=
  (A141164.P6885543074851642575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2878 terms. -/
def A141164.provenance : SequenceMachineLib.Provenance := .conjectured

