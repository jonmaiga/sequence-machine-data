import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C019
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A392599.P2829318639345328643

`A276087(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392599.P2829318639345328643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276087 n) 360

end

end A392599.P2829318639345328643

noncomputable section

/-- A392599: a(n) = A276087(n) mod 360, where A276087 is the primorial base exp-function applied twice.

Offset 0, canonical program `A392599.P2829318639345328643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392599 (n : ℕ) : ℤ :=
  A392599.P2829318639345328643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392608.P7410428666246538221

`A001221(A324198(n))`
-/

namespace A392608.P7410428666246538221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324198 n).toNat

end

end A392608.P7410428666246538221

noncomputable section

/-- A392608: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime divides n.

Offset 0, canonical program `A392608.P7410428666246538221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392608 (n : ℕ) : ℤ :=
  A392608.P7410428666246538221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392600.P6052840119253966993

`A327860(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392600.P6052840119253966993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327860 n) 360

end

end A392600.P6052840119253966993

noncomputable section

/-- A392600: a(n) = A327860(n) mod 360, where A327860 is the arithmetic derivative of the primorial base exp-function.

Offset 0, canonical program `A392600.P6052840119253966993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392600 (n : ℕ) : ℤ :=
  A392600.P6052840119253966993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393435.P12847349373595133276

`(-1)^A033264(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393435.P12847349373595133276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A033264 n : ℤ)

end

end A393435.P12847349373595133276

noncomputable section

/-- A393435: a(n) = (-1)^A033264(n).

Offset 0, canonical program `A393435.P12847349373595133276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393435.P12847349373595133276.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397887.P4753864704729239179

`n+1+a(A026238(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397887.P4753864704729239179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A026238 (n + 1) - 1).toNat

end

end A397887.P4753864704729239179

noncomputable section

/-- A397887: a(1) = 1; a(n) = n + a(A026238(n)) for n > 1.

Offset 1, canonical program `A397887.P4753864704729239179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397887 (n : ℕ) : ℤ :=
  (A397887.P4753864704729239179.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400151.P12638623928893939596

`A328571(A003415(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400151.P12638623928893939596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A003415 n).toNat

end

end A400151.P12638623928893939596

noncomputable section

/-- A400151: a(n) = A328571(A003415(n)).

Offset 0, canonical program `A400151.P12638623928893939596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400151 (n : ℕ) : ℤ :=
  A400151.P12638623928893939596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400248.P4403918635695598036

`∑{d}[n+1, A055615((n+1)/#)*A085731(#)]`
-/

namespace A400248.P4403918635695598036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A085731 d

end

end A400248.P4403918635695598036

noncomputable section

/-- A400248: Dirichlet convolution of A085731 with A055615 (Dirichlet inverse of n), where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

Offset 1, canonical program `A400248.P4403918635695598036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400248 (n : ℕ) : ℤ :=
  A400248.P4403918635695598036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400249.P16858583021599629

`∑{d}[n+1, A008683((n+1)/#)*A085731(#)]`
-/

namespace A400249.P16858583021599629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A085731 d

end

end A400249.P16858583021599629

noncomputable section

/-- A400249: Möbius transform of A085731, where A085731(n) = gcd(n,n'), and n' is the arithmetic derivative of n.

Offset 1, canonical program `A400249.P16858583021599629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400249 (n : ℕ) : ℤ :=
  A400249.P16858583021599629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400260.P9972269683842690862

`val(A327859(col(n)), A000040(1+row(n)-col(n)))`
-/

namespace A400260.P9972269683842690862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327859 (SequenceMachineLib.triCol n)).toNat (A000040 (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat).toNat

end

end A400260.P9972269683842690862

noncomputable section

/-- A400260: Square array read by falling antidiagonals: A(n,k) = the (k+1)-th least significant digit of arithmetic derivative of n when it is read in primorial base, A049345.

Offset 0, canonical program `A400260.P9972269683842690862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400260 (n : ℕ) : ℤ :=
  (A400260.P9972269683842690862.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400263.P12527445212695226061

`A007949(A327859(n))`
-/

namespace A400263.P12527445212695226061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A327859 n).toNat

end

end A400263.P12527445212695226061

noncomputable section

/-- A400263: The second least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400263.P12527445212695226061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400263 (n : ℕ) : ℤ :=
  A400263.P12527445212695226061.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400265.P327864196285606398

`A112765(A327859(n))`
-/

namespace A400265.P327864196285606398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A327859 n).toNat

end

end A400265.P327864196285606398

noncomputable section

/-- A400265: The third least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400265.P327864196285606398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400265 (n : ℕ) : ℤ :=
  A400265.P327864196285606398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400267.P15255632653224418353

`A214411(A327859(n))`
-/

namespace A400267.P15255632653224418353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A327859 n).toNat

end

end A400267.P15255632653224418353

noncomputable section

/-- A400267: The fourth least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400267.P15255632653224418353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400267 (n : ℕ) : ℤ :=
  A400267.P15255632653224418353.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401911.P1278241965479012

`gcd(n+1, A342001(n+1))`
-/

namespace A401911.P1278241965479012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A342001 (n + 1))

end

end A401911.P1278241965479012

noncomputable section

/-- A401911: The greatest common divisor of n and A342001(n), where A342001(n) = A003415(n)/A003557(n).

Offset 1, canonical program `A401911.P1278241965479012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401911 (n : ℕ) : ℤ :=
  (A401911.P1278241965479012.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391900.P11135445181283333301

`A001222(A005361(n+1))`
-/

namespace A391900.P11135445181283333301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005361 (n + 1)).toNat

end

end A391900.P11135445181283333301

noncomputable section

/-- A391900: The total number of prime factors (counted with multiplicity) of the prime factorization exponents of n.

Offset 1, canonical program `A391900.P11135445181283333301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391900 (n : ℕ) : ℤ :=
  A391900.P11135445181283333301.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395301.P11832353311031738574

`A033273(n+1)+A345266(n+1)`
-/

namespace A395301.P11832353311031738574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A345266 (n + 1)

end

end A395301.P11832353311031738574

noncomputable section

/-- A395301: a(n) = tau(n) - omega(n) + Sum_{p|n, p prime} gcd(p,n/p).

Offset 1, canonical program `A395301.P11832353311031738574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395301 (n : ℕ) : ℤ :=
  A395301.P11832353311031738574.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395990.P6546272165125092159

`A000005(n+1)+A076752(n+1)-A046951(n+1)`
-/

namespace A395990.P6546272165125092159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A076752 (n + 1) - A046951 (n + 1)

end

end A395990.P6546272165125092159

noncomputable section

/-- A395990: a(n) = Sum_{d|n} d^(tau(n/d) mod 2).

Offset 1, canonical program `A395990.P6546272165125092159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395990 (n : ℕ) : ℤ :=
  A395990.P6546272165125092159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396701.P6362032344804532156

`∑{d}[n+1, A007430(#)]`
-/

namespace A396701.P6362032344804532156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d

end

end A396701.P6362032344804532156

noncomputable section

/-- A396701: a(n) = Sum_{d|n} tau_3(d) * sigma(n/d).

Offset 1, canonical program `A396701.P6362032344804532156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396701 (n : ℕ) : ℤ :=
  A396701.P6362032344804532156.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396702.P8488418173161308459

`∑{d}[n+1, A000005(#)*A007430((n+1)/#)]`
-/

namespace A396702.P8488418173161308459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396702.P8488418173161308459

noncomputable section

/-- A396702: a(n) = Sum_{d|n} tau_4(d) * sigma(n/d).

Offset 1, canonical program `A396702.P8488418173161308459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396702 (n : ℕ) : ℤ :=
  A396702.P8488418173161308459.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397071.P3539504569464205153

`n²+6*n+3+2*A006218(n)`
-/

namespace A397071.P3539504569464205153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 6 * n + 3 : ℤ) + 2 * A006218 n

end

end A397071.P3539504569464205153

noncomputable section

/-- A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

Offset 0, canonical program `A397071.P3539504569464205153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397071 (n : ℕ) : ℤ :=
  A397071.P3539504569464205153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397549.P9260473788895763969

`∑{d}[n+1, A061391(#)]`
-/

namespace A397549.P9260473788895763969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061391 d

end

end A397549.P9260473788895763969

noncomputable section

/-- A397549: Multiplicative with a(p^e) = (e+1)^2*(e+2)/2.

Offset 1, canonical program `A397549.P9260473788895763969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397549 (n : ℕ) : ℤ :=
  A397549.P9260473788895763969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397645.P309890179960751511

`∑{d}[n+1, A358380(#)]`
-/

namespace A397645.P309890179960751511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358380 d

end

end A397645.P309890179960751511

noncomputable section

/-- A397645: Multiplicative with a(p^e) = (e+1)*(e+2)*(5*e+3)/6.

Offset 1, canonical program `A397645.P309890179960751511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397645 (n : ℕ) : ℤ :=
  A397645.P309890179960751511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397686.P10496162093996895226

`∑{d}[n+1, A359037(#)]`
-/

namespace A397686.P10496162093996895226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359037 d

end

end A397686.P10496162093996895226

noncomputable section

/-- A397686: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+1)/2.

Offset 1, canonical program `A397686.P10496162093996895226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397686 (n : ℕ) : ℤ :=
  A397686.P10496162093996895226.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397779.P3478401780238339042

`a(n-3)+A007814(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A397779.P3478401780238339042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + A007814 n

end

end A397779.P3478401780238339042

noncomputable section

/-- A397779: 2-adic valuation of the triple factorial of n.

Offset 0, canonical program `A397779.P3478401780238339042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779 (n : ℕ) : ℤ :=
  A397779.P3478401780238339042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400142.P15885049014009625684

`A000005(n+1)*A001316(A007814(n+1))/(A007814(n+1)+1)`
-/

namespace A400142.P15885049014009625684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A001316 (A007814 (n + 1)).toNat : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A400142.P15885049014009625684

noncomputable section

/-- A400142: The number of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400142.P15885049014009625684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400142 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400142.P15885049014009625684.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400413.P13849645286402086857

`∑{#}[n, 2^A007814(floor((n+1)/(#+1)))-1]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400413.P13849645286402086857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((2 : ℚ) ^ (A007814 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat : ℤ) - 1)

end

end A400413.P13849645286402086857

noncomputable section

/-- A400413: a(n) = Sum_{k=1..n} (2^A007814(floor(n/k)) - 1).

Offset 1, canonical program `A400413.P13849645286402086857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400413 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400413.P13849645286402086857.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400524.P13401482131933218640

`A007814(A005117(n+1)+1)`
-/

namespace A400524.P13401482131933218640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005117 (n + 1) + 1).toNat

end

end A400524.P13401482131933218640

noncomputable section

/-- A400524: The exponent of the highest power of 2 dividing the number following the n-th squarefree number.

Offset 1, canonical program `A400524.P13401482131933218640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400524 (n : ℕ) : ℤ :=
  A400524.P13401482131933218640.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400525.P4597029500458234892

`A007814(A005117(n+2)-1)`
-/

namespace A400525.P4597029500458234892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005117 (n + 2) - 1).toNat

end

end A400525.P4597029500458234892

noncomputable section

/-- A400525: The exponent of the highest power of 2 dividing the number preceding the n-th squarefree number.

Offset 2, canonical program `A400525.P4597029500458234892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400525 (n : ℕ) : ℤ :=
  A400525.P4597029500458234892.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401009.P808647470638771537

`A049820(n+1)-A401008(n+1)`
-/

namespace A401009.P808647470638771537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A401008 (n + 1)

end

end A401009.P808647470638771537

noncomputable section

/-- A401009: a(n) = the number of even non-divisors of n in 1..n.

Offset 1, canonical program `A401009.P808647470638771537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401009 (n : ℕ) : ℤ :=
  A401009.P808647470638771537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391802.P17174835192210781463

`A000040(A391799(n+1))`
-/

namespace A391802.P17174835192210781463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391799 (n + 1)).toNat

end

end A391802.P17174835192210781463

noncomputable section

/-- A391802: Primes indexed by A391799.

Offset 1, canonical program `A391802.P17174835192210781463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391802 (n : ℕ) : ℤ :=
  A391802.P17174835192210781463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392024.P5035804302326905048

`eq[1, A001222(A009191(n+1))]+1`
-/

namespace A392024.P5035804302326905048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009191 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392024.P5035804302326905048

noncomputable section

/-- A392024: Positive integers k such that gcd(k, tau(k)) is prime.

Offset 1, canonical program `A392024.P5035804302326905048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392024 (n : ℕ) : ℤ :=
  (A392024.P5035804302326905048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392450.P8569133511518808190

`∏{e}[1+n, A056671(#)]`
-/

namespace A392450.P8569133511518808190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056671 (Nat.factorization (f1 n) p)

end

end A392450.P8569133511518808190

noncomputable section

/-- A392450: The number of exponential unitary (or e-unitary) divisors of n that are exponentially squarefree numbers (A209061).

Offset 1, canonical program `A392450.P8569133511518808190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450 (n : ℕ) : ℤ :=
  A392450.P8569133511518808190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392564.P9319350472348829098

`A332785(n+1)^3`
-/

namespace A392564.P9319350472348829098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) ^ 3

end

end A392564.P9319350472348829098

noncomputable section

/-- A392564: Cubes of numbers that are neither squarefree nor squareful.

Offset 1, canonical program `A392564.P9319350472348829098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564 (n : ℕ) : ℤ :=
  A392564.P9319350472348829098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392605.P11942273638687541516

`lt[A327860(n)², A027693(n)]`
-/

namespace A392605.P11942273638687541516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P11942273638687541516

noncomputable section

/-- A392605: Numbers k such that A327860(k) <= k, where A327860 is the arithmetic derivative of the primorial base exp-function.

Offset 1, canonical program `A392605.P11942273638687541516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A392605 (n : ℕ) : ℤ :=
  (A392605.P11942273638687541516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A392605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392842.P10202073856946613228

`A007814(record[A109168(3*n+2)])`
-/

namespace A392842.P10202073856946613228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A392842.P10202073856946613228

noncomputable section

/-- A392842: Number of trailing zeros in a type of Zeckendorf expansion based on Fibonacci numbers of even index.

Offset 1, canonical program `A392842.P10202073856946613228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842 (n : ℕ) : ℤ :=
  A392842.P10202073856946613228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A392842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393045.P1074575809197221546

`eq[2, A393041(n+2)]+2`
-/

namespace A393045.P1074575809197221546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393041 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A393045.P1074575809197221546

noncomputable section

/-- A393045: Numbers such that the least prime not dividing their arithmetic derivative is 5.

Offset 1, canonical program `A393045.P1074575809197221546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A393045 (n : ℕ) : ℤ :=
  (A393045.P1074575809197221546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. -/
def A393045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393067.P2703239075443570268

`char[lt[A327859(n), n+1]-1]`
-/

namespace A393067.P2703239075443570268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A393067.P2703239075443570268

noncomputable section

/-- A393067: a(n) = 1 if A276086(A003415(n)) <= n, otherwise 0, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 1, canonical program `A393067.P2703239075443570268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A393067 (n : ℕ) : ℤ :=
  (A393067.P2703239075443570268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A393067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394247.P15100105498780897883

`A328806(n)-1`
-/

namespace A394247.P15100105498780897883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 n - 1

end

end A394247.P15100105498780897883

noncomputable section

/-- A394247: Maximum number of parts i with multiplicity i possible in a partition of n.

Offset 0, canonical program `A394247.P15100105498780897883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394247 (n : ℕ) : ℤ :=
  A394247.P15100105498780897883.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394380.P12740966740896101419

`A264810(2^(n+1)-1)`
-/

namespace A394380.P12740966740896101419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (2 ^ (n + 1) - 1)

end

end A394380.P12740966740896101419

noncomputable section

/-- A394380: Number of totients below 2^n.

Offset 1, canonical program `A394380.P12740966740896101419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380 (n : ℕ) : ℤ :=
  A394380.P12740966740896101419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394381.P15980332945039088340

`A264810(A000149(n+1))`
-/

namespace A394381.P15980332945039088340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A000149 (n + 1)).toNat

end

end A394381.P15980332945039088340

noncomputable section

/-- A394381: Number of totients below exp(n).

Offset 1, canonical program `A394381.P15980332945039088340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381 (n : ℕ) : ℤ :=
  A394381.P15980332945039088340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394426.P7725940493784829555

`A049419(A197680(n+1))`
-/

namespace A394426.P7725940493784829555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A197680 (n + 1)).toNat

end

end A394426.P7725940493784829555

noncomputable section

/-- A394426: The number of exponential divisors of the numbers whose exponents in their prime factorization are squares (A197680).

Offset 1, canonical program `A394426.P7725940493784829555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426 (n : ℕ) : ℤ :=
  A394426.P7725940493784829555.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394433.P11188259402985535920

`eq[2, A073811(1+n)]+1`
-/

namespace A394433.P11188259402985535920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A394433.P11188259402985535920

noncomputable section

/-- A394433: Numbers k such that gcd(k, phi(k)) is prime.

Offset 1, canonical program `A394433.P11188259402985535920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4568 terms. -/
def A394433 (n : ℕ) : ℤ :=
  (A394433.P11188259402985535920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4568 terms. -/
def A394433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394747.P2470656169310210325

`∩[A087680(n+1), A392199(n+1)]`
-/

namespace A394747.P2470656169310210325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394747.P2470656169310210325

noncomputable section

/-- A394747: Numbers k such that k-4 and k+4 are prime and gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A394747.P2470656169310210325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747 (n : ℕ) : ℤ :=
  (A394747.P2470656169310210325.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396072.P11544927877256094205

`comp[∑[A046951(n+1)]-1]+1`
-/

namespace A396072.P11544927877256094205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396072.P11544927877256094205

noncomputable section

/-- A396072: Numbers not of the form Sum_{k=1..m} floor(m/k^2).

Offset 1, canonical program `A396072.P11544927877256094205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6307 terms. -/
def A396072 (n : ℕ) : ℤ :=
  (A396072.P11544927877256094205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6307 terms. -/
def A396072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396521.P1047001817467315688

`lt[3, A200810(A035004(n+2))]+1`
-/

namespace A396521.P1047001817467315688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A035004 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A396521.P1047001817467315688

noncomputable section

/-- A396521: Positions of terms > 3 in A200811.

Offset 1, canonical program `A396521.P1047001817467315688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 953 terms. -/
def A396521 (n : ℕ) : ℤ :=
  (A396521.P1047001817467315688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 953 terms. -/
def A396521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396543.P10005515851274933396

`A005361(n+1)-A049419(n+1)`
-/

namespace A396543.P10005515851274933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A049419 (n + 1)

end

end A396543.P10005515851274933396

noncomputable section

/-- A396543: The number of coreful divisors of n that are not exponential divisors of n.

Offset 1, canonical program `A396543.P10005515851274933396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396543 (n : ℕ) : ℤ :=
  A396543.P10005515851274933396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396548.P9291011898899936861

`A005361(n+1)-A278908(n+1)`
-/

namespace A396548.P9291011898899936861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A278908 (n + 1)

end

end A396548.P9291011898899936861

noncomputable section

/-- A396548: The number of coreful divisors of n that are not exponential unitary divisors of n.

Offset 1, canonical program `A396548.P9291011898899936861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396548 (n : ℕ) : ℤ :=
  A396548.P9291011898899936861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398166.P1860804899348792232

`∩[A023443(A197680(n+1)), A197680(n+1)]`
-/

namespace A398166.P1860804899348792232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A197680 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398166.P1860804899348792232

noncomputable section

/-- A398166: Numbers k such that all the exponents in the prime factorizations of k and k+1 are squares.

Offset 1, canonical program `A398166.P1860804899348792232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A398166 (n : ℕ) : ℤ :=
  (A398166.P1860804899348792232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3739 terms. -/
def A398166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398547.P9174656088477173349

`A056558(n)^A056557(n)^A056556(n)`
-/

namespace A398547.P9174656088477173349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056558 n : ℝ) ^ ((A056557 n : ℚ) ^ (A056556 n : ℤ) : ℝ)

end

end A398547.P9174656088477173349

noncomputable section

/-- A398547: d^c^b, where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A398547.P9174656088477173349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398547.P9174656088477173349.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398922.P11315198121938335182

`A346759(n+1)-A065608(n+1)`
-/

namespace A398922.P11315198121938335182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346759 (n + 1) - A065608 (n + 1)

end

end A398922.P11315198121938335182

noncomputable section

/-- A398922: Number of distinct acute lattice trapezia of area n/2 with horizontal base.

Offset 1, canonical program `A398922.P11315198121938335182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398922 (n : ℕ) : ℤ :=
  A398922.P11315198121938335182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399430.P14427685385738939723

`A056556(n)*A056557(n)*A056558(n)`
-/

namespace A399430.P14427685385738939723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n * A056557 n * A056558 n

end

end A399430.P14427685385738939723

noncomputable section

/-- A399430: b * c * d where b >= c >= d >= 0 ordered by b then c then d.

Offset 1, canonical program `A399430.P14427685385738939723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399430 (n : ℕ) : ℤ :=
  A399430.P14427685385738939723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399504.P3432684880369202973

`A056556(n)-A056557(n)-A056558(n)`
-/

namespace A399504.P3432684880369202973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n - A056557 n - A056558 n

end

end A399504.P3432684880369202973

noncomputable section

/-- A399504: b - c - d where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A399504.P3432684880369202973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399504 (n : ℕ) : ℤ :=
  A399504.P3432684880369202973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399831.P4033865291944484204

`A000005(A003557(n+1)*A056554(n+1))`
-/

namespace A399831.P4033865291944484204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1) * A056554 (n + 1)).toNat

end

end A399831.P4033865291944484204

noncomputable section

/-- A399831: The number of divisors d of n such that gcud(d, n/d) is an exponentially odd number (A268335), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399831.P4033865291944484204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399831 (n : ℕ) : ℤ :=
  A399831.P4033865291944484204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399832.P9867324930414141992

`A001227(n+1)*A286324(2^val(n+1, 2))`
-/

namespace A399832.P9867324930414141992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A286324 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A399832.P9867324930414141992

noncomputable section

/-- A399832: The number of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399832.P9867324930414141992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399832 (n : ℕ) : ℤ :=
  A399832.P9867324930414141992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399833.P5824088692699989258

`(val(n+1, 2)+1)*A286324((n+1)/2^val(n+1, 2))`
-/

namespace A399833.P5824088692699989258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A286324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A399833.P5824088692699989258

noncomputable section

/-- A399833: The number of divisors d of n such that gcud(d, n/d) is a power of 2, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399833.P5824088692699989258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399833 (n : ℕ) : ℤ :=
  A399833.P5824088692699989258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400198.P10752574168841274575

`A056556(n)^A056557(n)^A056558(n)`
-/

namespace A400198.P10752574168841274575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056556 n : ℝ) ^ ((A056557 n : ℚ) ^ (A056558 n : ℤ) : ℝ)

end

end A400198.P10752574168841274575

noncomputable section

/-- A400198: b^c^d, where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A400198.P10752574168841274575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400198.P10752574168841274575.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400252.P11412868992192274508

`∑{d}[n+1, A319684(#)*A359484((n+1)/#)]`
-/

namespace A400252.P11412868992192274508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400252.P11412868992192274508

noncomputable section

/-- A400252: The exponent of the highest power of 2 dividing A380459(n).

Offset 1, canonical program `A400252.P11412868992192274508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400252 (n : ℕ) : ℤ :=
  A400252.P11412868992192274508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400450.P6566241445451218318

`∑{d}[n+1, A008966(#)*A056170((n+1)/#)]`
-/

namespace A400450.P6566241445451218318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A056170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400450.P6566241445451218318

noncomputable section

/-- A400450: The number of divisors d of n such that gcd(d, n/d) is prime.

Offset 1, canonical program `A400450.P6566241445451218318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400450 (n : ℕ) : ℤ :=
  A400450.P6566241445451218318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400522.P3523999780646105483

`A007814(A036537(n+1))`
-/

namespace A400522.P3523999780646105483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A036537 (n + 1)).toNat

end

end A400522.P3523999780646105483

noncomputable section

/-- A400522: The exponent of the highest power of 2 dividing the n-th number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A400522.P3523999780646105483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400522 (n : ℕ) : ℤ :=
  A400522.P3523999780646105483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400523.P6739092181508487678

`A007814(A197680(n+1))`
-/

namespace A400523.P6739092181508487678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A197680 (n + 1)).toNat

end

end A400523.P6739092181508487678

noncomputable section

/-- A400523: The exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are squares (A197680).

Offset 1, canonical program `A400523.P6739092181508487678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400523 (n : ℕ) : ℤ :=
  A400523.P6739092181508487678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400722.P4243337347417651789

`A366771(2*(n+1))`
-/

namespace A400722.P4243337347417651789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366771 (2 * (n + 1))

end

end A400722.P4243337347417651789

noncomputable section

/-- A400722: Number of divisors of (4^n - 1)/3.

Offset 1, canonical program `A400722.P4243337347417651789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A400722 (n : ℕ) : ℤ :=
  A400722.P4243337347417651789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A400722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400872.P1320321163544664813

`∏{e}[1+n, A007425(#)]`
-/

namespace A400872.P1320321163544664813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007425 (Nat.factorization (f1 n) p)

end

end A400872.P1320321163544664813

noncomputable section

/-- A400872: The total number of exponential divisors of the exponential divisors of n.

Offset 1, canonical program `A400872.P1320321163544664813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400872 (n : ℕ) : ℤ :=
  A400872.P1320321163544664813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400930.P9795398723456261995

`A326195(∏{p}[1+n, #])`
-/

namespace A400930.P9795398723456261995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A400930.P9795398723456261995

noncomputable section

/-- A400930: Maximum length of a strictly increasing sequence of distinct prime divisors p_1, ..., p_k of n such that p_i divides p_{i+1} - 1 for 1 <= i < k.

Offset 1, canonical program `A400930.P9795398723456261995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400930 (n : ℕ) : ℤ :=
  A400930.P9795398723456261995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400955.P5010137716607798832

`A264802(n+1)-A057728(n+1)`
-/

namespace A400955.P5010137716607798832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A057728 (n + 1)

end

end A400955.P5010137716607798832

noncomputable section

/-- A400955: Triangle read by rows: T(n,k) is the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

Offset 1, canonical program `A400955.P5010137716607798832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400955 (n : ℕ) : ℤ :=
  A400955.P5010137716607798832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401241.P16677631895232613569

`∑{d}[n+1, A069513(#)*A359473(#)]`
-/

namespace A401241.P16677631895232613569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069513 d * A359473 d

end

end A401241.P16677631895232613569

noncomputable section

/-- A401241: The number of divisors of n that are prime powers (A246655) whose number of divisors is a power of 2.

Offset 1, canonical program `A401241.P16677631895232613569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401241 (n : ℕ) : ℤ :=
  A401241.P16677631895232613569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401404.P11769500404623702126

`A048989(2*(n+1))/2`
-/

namespace A401404.P11769500404623702126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048989 (2 * (n + 1)) : ℚ) / 2

end

end A401404.P11769500404623702126

noncomputable section

/-- A401404: Numbers m such that pi(2*m) is prime, where pi is A000720.

Offset 1, canonical program `A401404.P11769500404623702126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A401404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401404.P11769500404623702126.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A401404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401468.P2834647900088656958

`∑[A046801(n+1)]`
-/

namespace A401468.P2834647900088656958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401468.P2834647900088656958

noncomputable section

/-- A401468: a(n) = Sum_{k=1..n} A046801(k).

Offset 1, canonical program `A401468.P2834647900088656958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. -/
def A401468 (n : ℕ) : ℤ :=
  A401468.P2834647900088656958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. -/
def A401468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401625.P497457721285298481

`A005599(A004514(n))`
-/

namespace A401625.P497457721285298481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A004514 n).toNat

end

end A401625.P497457721285298481

noncomputable section

/-- A401625: Image of 0 under repeated application of the map k -> (3k, 3k+2, 3k, 3k+2).

Offset 0, canonical program `A401625.P497457721285298481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A401625 (n : ℕ) : ℤ :=
  A401625.P497457721285298481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A401625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401710.P3001725798875368537

`A401709(n+1)/A009194(n+1)`
-/

namespace A401710.P3001725798875368537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401709 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A401710.P3001725798875368537

noncomputable section

/-- A401710: a(n) = A017665(n) / A401375(n), where A017665(n) = sigma(n)/gcd(n,sigma(n)), A401375(n) is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

Offset 1, canonical program `A401710.P3001725798875368537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401710 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401710.P3001725798875368537.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401717.P2595911180210568003

`A355447(n+1)-A401716(n+1)`
-/

namespace A401717.P2595911180210568003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1) - A401716 (n + 1)

end

end A401717.P2595911180210568003

noncomputable section

/-- A401717: a(n) = 1 if A003557(n) > A053669(n) and n is neither squarefree nor prime power, otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

Offset 1, canonical program `A401717.P2595911180210568003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401717 (n : ℕ) : ℤ :=
  A401717.P2595911180210568003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355447, A401716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401921.P16439554682903368677

`fo[A342001(n+1)]+1`
-/

namespace A401921.P16439554682903368677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A401921.P16439554682903368677

noncomputable section

/-- A401921: Position of the first occurrence of n in A342001.

Offset 0, canonical program `A401921.P16439554682903368677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A401921 (n : ℕ) : ℤ :=
  (A401921.P16439554682903368677.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A401921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402244.P15937437709523457238

`A008835(n+1)*A056554(n+1)`
-/

namespace A402244.P15937437709523457238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A056554 (n + 1)

end

end A402244.P15937437709523457238

noncomputable section

/-- A402244: Largest divisor of n that is a term in A252895.

Offset 1, canonical program `A402244.P15937437709523457238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402244 (n : ℕ) : ℤ :=
  A402244.P15937437709523457238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402245.P13887350206260039043

`A007814(A122132(n+1))`
-/

namespace A402245.P13887350206260039043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A122132 (n + 1)).toNat

end

end A402245.P13887350206260039043

noncomputable section

/-- A402245: Exponent of highest power of 2 dividing A122132(n).

Offset 1, canonical program `A402245.P13887350206260039043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402245 (n : ℕ) : ℤ :=
  A402245.P13887350206260039043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391988.P2363059144124611115

`A049419(A209061(n+1))`
-/

namespace A391988.P2363059144124611115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A209061 (n + 1)).toNat

end

end A391988.P2363059144124611115

noncomputable section

/-- A391988: The number of exponential divisors of the exponentially squarefree numbers.

Offset 1, canonical program `A391988.P2363059144124611115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391988 (n : ℕ) : ℤ :=
  A391988.P2363059144124611115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393697.P7831953345102612304

`A393562(n)-A172471(n)`
-/

namespace A393697.P7831953345102612304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393562 n - A172471 n

end

end A393697.P7831953345102612304

noncomputable section

/-- A393697: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393697.P7831953345102612304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697 (n : ℕ) : ℤ :=
  A393697.P7831953345102612304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396895.P7912046450592316273

`A396869(A027883(1+n))`
-/

namespace A396895.P7912046450592316273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396869 (A027883 (1 + n)).toNat

end

end A396895.P7912046450592316273

noncomputable section

/-- A396895: a(n) = 4*p - floor(2*sqrt(p))^2, where p = prime(n).

Offset 1, canonical program `A396895.P7912046450592316273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A396895 (n : ℕ) : ℤ :=
  A396895.P7912046450592316273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A396895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397623.P16201342378175094011

`A000040(A005652(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397623.P16201342378175094011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005652 (n + 1)).toNat

end

end A397623.P16201342378175094011

noncomputable section

/-- A397623: a(n) = prime(A005652(n)).

Offset 1, canonical program `A397623.P16201342378175094011`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397623 (n : ℕ) : ℤ :=
  A397623.P16201342378175094011.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398164.P2146957604628113734

`∩[A209061(n+1)-1, A209061(n+1)]`
-/

namespace A398164.P2146957604628113734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398164.P2146957604628113734

noncomputable section

/-- A398164: Numbers k such that both k and k+1 are both exponentially squarefree numbers.

Offset 1, canonical program `A398164.P2146957604628113734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A398164 (n : ℕ) : ℤ :=
  (A398164.P2146957604628113734.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A398164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400144.P1155357798941404441

`A035316(n+1)*A367991(n+1)`
-/

namespace A400144.P1155357798941404441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) * A367991 (n + 1)

end

end A400144.P1155357798941404441

noncomputable section

/-- A400144: The sum of divisors d of n such that gcid(d, n/d) is a square, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400144.P1155357798941404441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400144 (n : ℕ) : ℤ :=
  A400144.P1155357798941404441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400521.P1868779038590815743

`A007814(A209061(n+1))`
-/

namespace A400521.P1868779038590815743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A209061 (n + 1)).toNat

end

end A400521.P1868779038590815743

noncomputable section

/-- A400521: The exponent of the highest power of 2 dividing the n-th exponentially squarefree number (A209061).

Offset 1, canonical program `A400521.P1868779038590815743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400521 (n : ℕ) : ℤ :=
  A400521.P1868779038590815743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401375.P4355950383220751313

`A000203(n+1)/A401709(n+1)`
-/

namespace A401375.P4355950383220751313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A401709 (n + 1) : ℚ)

end

end A401375.P4355950383220751313

noncomputable section

/-- A401375: Largest divisor of sigma(n) coprime with n, where sigma is the sum of divisors function.

Offset 1, canonical program `A401375.P4355950383220751313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401375 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401375.P4355950383220751313.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399705.P7439880869776146323

`((A008846(n+1)-1)/4)%2`
-/

namespace A399705.P7439880869776146323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A008846 (n + 1) - 1 : ℚ) / 4)) 2

end

end A399705.P7439880869776146323

noncomputable section

/-- A399705: a(n) is 1 if A008846(n) is congruent to 5 modulo 8, and 0 if A008846(n) is congruent to 1 modulo 8.

Offset 1, canonical program `A399705.P7439880869776146323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399705 (n : ℕ) : ℤ :=
  A399705.P7439880869776146323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400145.P3159819875312283188

`A000593(n+1)*A193231(A006519(n+1))`
-/

namespace A400145.P3159819875312283188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A193231 (A006519 (n + 1)).toNat

end

end A400145.P3159819875312283188

noncomputable section

/-- A400145: The sum of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400145.P3159819875312283188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400145 (n : ℕ) : ℤ :=
  A400145.P3159819875312283188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392369.P11373997461859742718

`A000120(A341916(n))`
-/

namespace A392369.P11373997461859742718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341916 n).toNat

end

end A392369.P11373997461859742718

noncomputable section

/-- A392369: Sum of odd-indexed parts of the reversed n-th composition in standard order.

Offset 0, canonical program `A392369.P11373997461859742718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A392369 (n : ℕ) : ℤ :=
  A392369.P11373997461859742718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A392369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392876.P5668583680203552813

`A276076(n)%A000040(1+A084558(n))`
-/

namespace A392876.P5668583680203552813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276076 n) (A000040 (1 + A084558 n).toNat)

end

end A392876.P5668583680203552813

noncomputable section

/-- A392876: a(n) = A276076(n) mod A117366(A276076(n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A276076 is the factorial base exp-function.

Offset 0, canonical program `A392876.P5668583680203552813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084558, A276076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392876 (n : ℕ) : ℤ :=
  A392876.P5668583680203552813.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084558, A276076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393212.P8608727344683158324

`or(A005843(A007814(3*n+5)), A073575(3*n+5))`
-/

namespace A393212.P8608727344683158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 (A007814 (3 * n + 5)).toNat) (A073575 (3 * n + 5))

end

end A393212.P8608727344683158324

noncomputable section

/-- A393212: Halting time for Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393212.P8608727344683158324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212 (n : ℕ) : ℤ :=
  A393212.P8608727344683158324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A393212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397100.P2153576112342565242

`A007814(n+1)-A396409(n)`
-/

namespace A397100.P2153576112342565242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A396409 n

end

end A397100.P2153576112342565242

noncomputable section

/-- A397100: a(n) is the number of steps by which n's trajectory under f is ahead of 0's; i.e., f^k(0) = f^(k-a(n))(n) for all sufficiently large k, where f(n) = n XOR 2^A000120(n).

Offset 0, canonical program `A397100.P2153576112342565242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100 (n : ℕ) : ℤ :=
  A397100.P2153576112342565242.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398950.P7122882423077720818

`eq[A335341(n+4), A379971(n+1)]`
-/

namespace A398950.P7122882423077720818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398950.P7122882423077720818

noncomputable section

/-- A398950: Numbers k such that k, k+2, and k+4 are all squarefree.

Offset 1, canonical program `A398950.P7122882423077720818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4103 terms. -/
def A398950 (n : ℕ) : ℤ :=
  (A398950.P7122882423077720818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4103 terms. -/
def A398950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392980.P15181118893878896143

`A392236(2*(n+1))/2`
-/

namespace A392980.P15181118893878896143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392236 (2 * (n + 1)) : ℚ) / 2

end

end A392980.P15181118893878896143

noncomputable section

/-- A392980: Positions of zeros in A393336.

Offset 1, canonical program `A392980.P15181118893878896143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392980.P15181118893878896143.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392980.provenance : SequenceMachineLib.Provenance := .conditional

