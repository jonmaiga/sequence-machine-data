import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A377563.P16938085652731499524

`lt[1, A372332(n+1)]+1`
-/

namespace A377563.P16938085652731499524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377563.P16938085652731499524

noncomputable section

/-- A377563: Numbers that have fewer infinitary divisors than noninfinitary divisors.

Offset 1, canonical program `A377563.P16938085652731499524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A377563 (n : ℕ) : ℤ :=
  (A377563.P16938085652731499524.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A377563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364293.P11641041435075088768

`∩[2*n+1, A364292(n+1)]`
-/

namespace A364293.P11641041435075088768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P11641041435075088768

noncomputable section

/-- A364293: Odd numbers k for which A163511(k) <= k.

Offset 1, canonical program `A364293.P11641041435075088768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A364293 (n : ℕ) : ℤ :=
  (A364293.P11641041435075088768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A364293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370706.P10819961141183438908

`A008279(n)*A059481(n)`
-/

namespace A370706.P10819961141183438908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A059481 n

end

end A370706.P10819961141183438908

noncomputable section

/-- A370706: Triangle read by rows: T(n, k) = binomial(n, k) * Pochhammer(n, k).

Offset 0, canonical program `A370706.P10819961141183438908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706 (n : ℕ) : ℤ :=
  A370706.P10819961141183438908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373275.P16695684761285881899

`∑{d}[n+1, A288571(#)*A296302((n+1)/#)]`
-/

namespace A373275.P16695684761285881899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373275.P16695684761285881899

noncomputable section

/-- A373275: a(n) = Sum_{d|n} (-1)^(d-1) * 2^(n/d-1).

Offset 1, canonical program `A373275.P16695684761285881899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A373275 (n : ℕ) : ℤ :=
  A373275.P16695684761285881899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A373275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383784.P16897109203414652711

`∪[A001481(n+1), A003136(n+1)]`
-/

namespace A383784.P16897109203414652711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P16897109203414652711

noncomputable section

/-- A383784: Norms of vectors in any regular planar tiling (square or A2 lattice).

Offset 1, canonical program `A383784.P16897109203414652711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784 (n : ℕ) : ℤ :=
  (A383784.P16897109203414652711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366444.P3140154605378599213

`A054523(n+1)*A231425(n+1)`
-/

namespace A366444.P3140154605378599213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A231425 (n + 1)

end

end A366444.P3140154605378599213

noncomputable section

/-- A366444: Triangle read by rows: T(n,k) = phi(n/k)*A023900(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A366444.P3140154605378599213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366444 (n : ℕ) : ℤ :=
  A366444.P3140154605378599213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373448.P738136565750743419

`A006995(10^n)`
-/

namespace A373448.P738136565750743419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (10 ^ n)

end

end A373448.P738136565750743419

noncomputable section

/-- A373448: 10^n-th binary palindrome.

Offset 0, canonical program `A373448.P738136565750743419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373448 (n : ℕ) : ℤ :=
  A373448.P738136565750743419.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374047.P15202425446373321383

`filter[A374109(n+1), A166486(#)]`
-/

namespace A374047.P15202425446373321383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A374047.P15202425446373321383

noncomputable section

/-- A374047: Numbers k for which A328845(k) is odd, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 1, canonical program `A374047.P15202425446373321383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7998 terms. -/
def A374047 (n : ℕ) : ℤ :=
  A374047.P15202425446373321383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7998 terms. -/
def A374047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380281.P6966654181893979849

`A103327(n)*A173424(n)`
-/

namespace A380281.P6966654181893979849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n * A173424 n

end

end A380281.P6966654181893979849

noncomputable section

/-- A380281: Triangle T(n, k) read by rows: T(n, k) = 2^n*binomial(2*n + 1, 2*k + 1) * Pochhammer(1/2, n - k) * Pochhammer(1/2, k).

Offset 0, canonical program `A380281.P6966654181893979849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281 (n : ℕ) : ℤ :=
  A380281.P6966654181893979849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392262.P13598658566703554878

`filter[A388427(n+1), A373252(#)]`
-/

namespace A392262.P13598658566703554878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A392262.P13598658566703554878

noncomputable section

/-- A392262: Even composite numbers that are squarefree or powers of 2.

Offset 1, canonical program `A392262.P13598658566703554878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262 (n : ℕ) : ℤ :=
  A392262.P13598658566703554878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373947.P8857403306256119126

`A037201(n+2)/2`
-/

namespace A373947.P8857403306256119126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037201 (n + 2) : ℚ) / 2

end

end A373947.P8857403306256119126

noncomputable section

/-- A373947: Halved and run-compressed first differences of consecutive odd primes.

Offset 1, canonical program `A373947.P8857403306256119126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373947.P8857403306256119126.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379822.P7224189513868805994

`A094527(n)+A122366(n)-A062344(n)`
-/

namespace A379822.P7224189513868805994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n + (A122366 n - A062344 n)

end

end A379822.P7224189513868805994

noncomputable section

/-- A379822: Triangle read by rows: T(n, k) is the number of walks of length n on the Z X Z grid with unit steps in all four directions (NSWE) starting at (0, 0), and ending on the vertical line x = 0 if k = 0, or on the line x = k or x = -(n + 1 - k) if k > 0.

Offset 0, canonical program `A379822.P7224189513868805994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822 (n : ℕ) : ℤ :=
  A379822.P7224189513868805994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385434.P12615426485299971603

`A051159(n)%3`
-/

namespace A385434.P12615426485299971603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051159 n) 3

end

end A385434.P12615426485299971603

noncomputable section

/-- A385434: Triangle of Gaussian binomial coefficients (or q-binomial coefficients) [n,k] for q = 2, reduced mod 3.

Offset 0, canonical program `A385434.P12615426485299971603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385434 (n : ℕ) : ℤ :=
  A385434.P12615426485299971603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386037.P2879438106275982146

`∩[A038616(n+1), A057770(n+1)]`
-/

namespace A386037.P2879438106275982146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386037.P2879438106275982146

noncomputable section

/-- A386037: Primes having only {0, 1, 6, 9} as digits.

Offset 1, canonical program `A386037.P2879438106275982146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A386037 (n : ℕ) : ℤ :=
  (A386037.P2879438106275982146.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A386037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386137.P14303488587727508822

`∩[A057770(n+1), A152313(n+1)]`
-/

namespace A386137.P14303488587727508822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386137.P14303488587727508822

noncomputable section

/-- A386137: Primes having only {1, 6, 8, 9} as digits.

Offset 1, canonical program `A386137.P14303488587727508822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2695 terms. -/
def A386137 (n : ℕ) : ℤ :=
  (A386137.P14303488587727508822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2695 terms. -/
def A386137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385047.P12539771583859150340

`A034448(n+1)/A192066(n+1)`
-/

namespace A385047.P12539771583859150340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A192066 (n + 1) : ℚ)

end

end A385047.P12539771583859150340

noncomputable section

/-- A385047: The sum of the unitary divisors of n that are powers of 2.

Offset 1, canonical program `A385047.P12539771583859150340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385047 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385047.P12539771583859150340.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385773.P2392214569970667758

`∩[A386018(n+1), A386096(n+1)]`
-/

namespace A385773.P2392214569970667758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P2392214569970667758

noncomputable section

/-- A385773: Primes having only {1, 2, 5} as digits.

Offset 1, canonical program `A385773.P2392214569970667758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A385773 (n : ℕ) : ℤ :=
  (A385773.P2392214569970667758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A385773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386034.P2766143906307460608

`∩[A155055(n+1), A386342(n+1)]`
-/

namespace A386034.P2766143906307460608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386034.P2766143906307460608

noncomputable section

/-- A386034: Primes having only {0, 1, 5, 9} as digits.

Offset 1, canonical program `A386034.P2766143906307460608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A386034 (n : ℕ) : ℤ :=
  (A386034.P2766143906307460608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A386034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386039.P75601870519274112

`∩[A155055(n+1), A380906(n+1)]`
-/

namespace A386039.P75601870519274112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386039.P75601870519274112

noncomputable section

/-- A386039: Primes having only {0, 1, 7, 9} as digits.

Offset 1, canonical program `A386039.P75601870519274112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A386039 (n : ℕ) : ℤ :=
  (A386039.P75601870519274112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A386039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388985.P8034458182954578089

`lt[A325977(n+1), 1]+1`
-/

namespace A388985.P8034458182954578089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388985.P8034458182954578089

noncomputable section

/-- A388985: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} does not exceed 2*k.

Offset 1, canonical program `A388985.P8034458182954578089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3970 terms. -/
def A388985 (n : ℕ) : ℤ :=
  (A388985.P8034458182954578089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3970 terms. -/
def A388985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389459.P8033824692858736196

`filter[A389458(n+1), A353814(#)]`
-/

namespace A389459.P8033824692858736196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389459.P8033824692858736196

noncomputable section

/-- A389459: Numbers whose sum of nonsquarefree divisors (A162296) is congruent to 2 modulo 4.

Offset 1, canonical program `A389459.P8033824692858736196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3496 terms. -/
def A389459 (n : ℕ) : ℤ :=
  A389459.P8033824692858736196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3496 terms. -/
def A389459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392008.P17754512782616058179

`filter[A216918(n+1), A323154(#)]`
-/

namespace A392008.P17754512782616058179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A392008.P17754512782616058179

noncomputable section

/-- A392008: Odd squarefree integers with at least 3 prime factors.

Offset 1, canonical program `A392008.P17754512782616058179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A392008 (n : ℕ) : ℤ :=
  A392008.P17754512782616058179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A392008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372502.P4800145136073142797

`A064547(n+1)+A372332(n+1)`
-/

namespace A372502.P4800145136073142797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) + A372332 (n + 1)

end

end A372502.P4800145136073142797

noncomputable section

/-- A372502: The number of "Fermi-Dirac primes" (A050376) that divide n.

Offset 1, canonical program `A372502.P4800145136073142797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A372332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372502 (n : ℕ) : ℤ :=
  A372502.P4800145136073142797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A372332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371056.P7401130399935352017

`A004488(A371054(n+1))`
-/

namespace A371056.P7401130399935352017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A371054 (n + 1)).toNat

end

end A371056.P7401130399935352017

noncomputable section

/-- A371056: Numbers whose ternary representation consists of a run of 2's, then a run of 0's, then a run of 1's.

Offset 1, canonical program `A371056.P7401130399935352017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A371056 (n : ℕ) : ℤ :=
  A371056.P7401130399935352017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A371056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379342.P3691008895860038562

`A378684(A378684(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379342.P3691008895860038562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A378684 (n + 1)).toNat

end

end A379342.P3691008895860038562

noncomputable section

/-- A379342: a(n) = A378684(A378684(n)).

Offset 1, canonical program `A379342.P3691008895860038562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379342 (n : ℕ) : ℤ :=
  A379342.P3691008895860038562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379343.P2690974883127903731

`A056023(A378684(A056023(n+1)))`
-/

namespace A379343.P2690974883127903731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378684 (A056023 (n + 1)).toNat).toNat

end

end A379343.P2690974883127903731

noncomputable section

/-- A379343: Square array read by upward antidiagonals: T(n,k) = (2*(k+n-1)^2 + 2*k - 2*n + 3 + (-2*k - 2*n + 3)*(-1)^n - (-1)^k + (-2*k - 2*n + 1)*(-1)^(k+n))/4.

Offset 1, canonical program `A379343.P2690974883127903731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A379343 (n : ℕ) : ℤ :=
  A379343.P2690974883127903731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A379343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383034.P16762733124447717769

`A306156(n+1)-A209229(n+1)`
-/

namespace A383034.P16762733124447717769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 1) - A209229 (n + 1)

end

end A383034.P16762733124447717769

noncomputable section

/-- A383034: Inverse Weigh transform of 2^(n-1).

Offset 1, canonical program `A383034.P16762733124447717769`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A306156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383034 (n : ℕ) : ℤ :=
  A383034.P16762733124447717769.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A306156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388261.P13160057128574407376

`∩[A066039(n+1), A237589(n+1)]`
-/

namespace A388261.P13160057128574407376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388261.P13160057128574407376

noncomputable section

/-- A388261: Primes that are the sum of some first primes minus one.

Offset 1, canonical program `A388261.P13160057128574407376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A388261 (n : ℕ) : ℤ :=
  (A388261.P13160057128574407376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A388261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389204.P15149027481728119098

`A325973(n+1)-A325974(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389204.P15149027481728119098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A325974 (n + 1)

end

end A389204.P15149027481728119098

noncomputable section

/-- A389204: a(n) = A325973(n) - A325974(n), where A325973 and A325974 are arithmetic means of {sum of unitary divisors and sum of squarefree divisors} and of {sum of non-unitary divisors and sum of nonsquarefree divisors}, respectively.

Offset 1, canonical program `A389204.P15149027481728119098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A325974, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389204 (n : ℕ) : ℤ :=
  A389204.P15149027481728119098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A325974, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389213.P6416796511962036448

`lt[A325974(n+1), n+1]+1`
-/

namespace A389213.P6416796511962036448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A389213.P6416796511962036448

noncomputable section

/-- A389213: Numbers k such that A048146(k)+A162296(k) < 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

Offset 1, canonical program `A389213.P6416796511962036448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389213 (n : ℕ) : ℤ :=
  (A389213.P6416796511962036448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389216.P2522826427568100889

`filter[A389215(n+2), A087049(#)]`
-/

namespace A389216.P2522826427568100889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A389216.P2522826427568100889

noncomputable section

/-- A389216: Nonsquarefree numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

Offset 1, canonical program `A389216.P2522826427568100889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. -/
def A389216 (n : ℕ) : ℤ :=
  A389216.P2522826427568100889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. -/
def A389216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364232.P3353364334386472060

`∑{d}[n+1, A001817(#)*A325596((n+1)/#)]`
-/

namespace A364232.P3353364334386472060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001817 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364232.P3353364334386472060

noncomputable section

/-- A364232: Expansion of Sum_{k>=0} x^(3*k+1) / (1 + x^(3*k+1))^2.

Offset 1, canonical program `A364232.P3353364334386472060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364232 (n : ℕ) : ℤ :=
  A364232.P3353364334386472060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364235.P979171957751888080

`∑{d}[n+1, A001822(#)*A325596((n+1)/#)]`
-/

namespace A364235.P979171957751888080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001822 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364235.P979171957751888080

noncomputable section

/-- A364235: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2))^2.

Offset 1, canonical program `A364235.P979171957751888080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364235 (n : ℕ) : ℤ :=
  A364235.P979171957751888080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364251.P5010928249471816249

`A340373(n+1)*A340375(n+1)`
-/

namespace A364251.P5010928249471816249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (n + 1) * A340375 (n + 1)

end

end A364251.P5010928249471816249

noncomputable section

/-- A364251: a(n) = 1 if n is of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0, otherwise a(n) = 0.

Offset 1, canonical program `A364251.P5010928249471816249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251 (n : ℕ) : ℤ :=
  A364251.P5010928249471816249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364542.P8346645904742885432

`lt[n, A324394(n)*A324395(n)]+1`
-/

namespace A364542.P8346645904742885432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 n * A324395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364542.P8346645904742885432

noncomputable section

/-- A364542: Numbers k for which A005940(k) >= k.

Offset 1, canonical program `A364542.P8346645904742885432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364542 (n : ℕ) : ℤ :=
  (A364542.P8346645904742885432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364558.P4794245862484388362

`A364557(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364558.P4794245862484388362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364557 (n + 1) - A000010 (n + 1)

end

end A364558.P4794245862484388362

noncomputable section

/-- A364558: a(n) = A364557(n) - A000010(n), where A364557 is the Möbius transform of A005941, and A000010 (Euler phi) is the Möbius transform of A000027.

Offset 1, canonical program `A364558.P4794245862484388362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A364557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364558 (n : ℕ) : ℤ :=
  A364558.P4794245862484388362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A364557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364566.P8108627064955290039

`lt[A364557(n+1), A000010(n+1)]+1`
-/

namespace A364566.P8108627064955290039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364566.P8108627064955290039

noncomputable section

/-- A364566: Numbers k such that A364557(k) < A000010(k), where A364557 is the Möbius transform of A005941, and A000010 is Euler totient function phi.

Offset 1, canonical program `A364566.P8108627064955290039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A364566 (n : ℕ) : ℤ :=
  (A364566.P8108627064955290039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A364566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365538.P13640182443914891217

`A048896(n)*A085357(n)`
-/

namespace A365538.P13640182443914891217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A085357 n

end

end A365538.P13640182443914891217

noncomputable section

/-- A365538: a(0) = 1; otherwise, for i >= 0, a(4i+0) = a(4i+1) = a(2i), a(4i+2) = 2*a(2i+1), a(4i+3) = 0.

Offset 0, canonical program `A365538.P13640182443914891217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365538 (n : ℕ) : ℤ :=
  A365538.P13640182443914891217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366385.P9857088472437292857

`A052126(n+1)*A061395(n+1)`
-/

namespace A366385.P9857088472437292857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A061395 (n + 1)

end

end A366385.P9857088472437292857

noncomputable section

/-- A366385: Divide n by its largest prime factor, then multiply with the index of that same prime; a(1) = 0 by convention.

Offset 1, canonical program `A366385.P9857088472437292857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366385 (n : ℕ) : ℤ :=
  A366385.P9857088472437292857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366510.P4604043811337782235

`A217581(A048671(n+1))`
-/

namespace A366510.P4604043811337782235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A048671 (n + 1)).toNat

end

end A366510.P4604043811337782235

noncomputable section

/-- A366510: Largest prime divisor of n which is < sqrt(n), 1 if n is prime, square of prime or 1.

Offset 1, canonical program `A366510.P4604043811337782235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366510 (n : ℕ) : ℤ :=
  A366510.P4604043811337782235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368780.P14908881115909762671

`filter[A195212(n+1), A212793(#)]`
-/

namespace A368780.P14908881115909762671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A368780.P14908881115909762671

noncomputable section

/-- A368780: Cubefree numbers divisible by the square of their largest prime factor.

Offset 1, canonical program `A368780.P14908881115909762671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A368780 (n : ℕ) : ℤ :=
  A368780.P14908881115909762671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A368780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368991.P7436517708181029196

`a(n-1)+A368990(n)` with `a(0)=0, a(1)=0`
-/

namespace A368991.P7436517708181029196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A368990 n

end

end A368991.P7436517708181029196

noncomputable section

/-- A368991: Doudna-gram for nondeficient numbers; Partial sums of A368990.

Offset 0, canonical program `A368991.P7436517708181029196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368991 (n : ℕ) : ℤ :=
  A368991.P7436517708181029196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371492.P8329581871496110581

`∑{d}[n+1, A053191(#)*A084218((n+1)/#)]`
-/

namespace A371492.P8329581871496110581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371492.P8329581871496110581

noncomputable section

/-- A371492: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A371492.P8329581871496110581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492 (n : ℕ) : ℤ :=
  A371492.P8329581871496110581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372673.P8325753504502278728

`A000010(A003991(n+1))/A106476(n)`
-/

namespace A372673.P8325753504502278728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A003991 (n + 1)).toNat : ℚ) / (A106476 n : ℚ)

end

end A372673.P8325753504502278728

noncomputable section

/-- A372673: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = phi(k*n) / phi(k).

Offset 1, canonical program `A372673.P8325753504502278728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372673.P8325753504502278728.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372724.P703388709923667032

`record[(n+1)²*A340373(n+1)]`
-/

namespace A372724.P703388709923667032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A340373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372724.P703388709923667032

noncomputable section

/-- A372724: Numbers k such that k = Sum_{j=2..k+2} L(k/prime(j)) where L(n/p) is the Legendre symbol. Fixed points of A372725.

Offset 1, canonical program `A372724.P703388709923667032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372724 (n : ℕ) : ℤ :=
  A372724.P703388709923667032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372885.P14839180436812864898

`A000040(A372886(n+1))`
-/

namespace A372885.P14839180436812864898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372886 (n + 1)).toNat

end

end A372885.P14839180436812864898

noncomputable section

/-- A372885: Prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372885.P14839180436812864898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885 (n : ℕ) : ℤ :=
  A372885.P14839180436812864898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372931.P12025526412560099198

`∑{d}[n+1, A189393(#)*A372929((n+1)/#)]`
-/

namespace A372931.P12025526412560099198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372929 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372931.P12025526412560099198

noncomputable section

/-- A372931: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^4.

Offset 1, canonical program `A372931.P12025526412560099198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372931 (n : ℕ) : ℤ :=
  A372931.P12025526412560099198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372950.P9193589771118210262

`∑{d}[n+1, A068970(#)*A238533((n+1)/#)]`
-/

namespace A372950.P9193589771118210262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P9193589771118210262

noncomputable section

/-- A372950: a(n) = Sum_{1 <= x_1, x_2 <= n} ( n/gcd(x_1, x_2, n) )^3.

Offset 1, canonical program `A372950.P9193589771118210262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950 (n : ℕ) : ℤ :=
  A372950.P9193589771118210262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372962.P14331124591361525302

`∑{d}[n+1, A084218(#)*A238533((n+1)/#)]`
-/

namespace A372962.P14331124591361525302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372962.P14331124591361525302

noncomputable section

/-- A372962: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( n/gcd(x_1, x_2, x_3, n) )^2.

Offset 1, canonical program `A372962.P14331124591361525302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962 (n : ℕ) : ℤ :=
  A372962.P14331124591361525302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372965.P15064860381763423356

`∑{d}[n+1, A238533(#)]`
-/

namespace A372965.P15064860381763423356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d

end

end A372965.P15064860381763423356

noncomputable section

/-- A372965: a(n) = Sum_{k = 1..n} ( n/gcd(k, n) )^4.

Offset 1, canonical program `A372965.P15064860381763423356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372965 (n : ℕ) : ℤ :=
  A372965.P15064860381763423356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373040.P10623131507799743519

`(A084218(n+1)-1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373040.P10623131507799743519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084218 (n + 1) - 1 : ℚ) / 12

end

end A373040.P10623131507799743519

noncomputable section

/-- A373040: a(n) = (A084218(n) - 1)/12.

Offset 1, canonical program `A373040.P10623131507799743519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373040.P10623131507799743519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373041.P17794873688395257527

`(A123323(n+5)-3*A023022(n+5))/2`
-/

namespace A373041.P17794873688395257527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123323 (n + 5) - 3 * A023022 (n + 5) : ℚ) / 2

end

end A373041.P17794873688395257527

noncomputable section

/-- A373041: 2*a(n) is the number of triangles with integer sides (x, y, n), x < y < n, and gcd(x, y, n) = 1.

Offset 5, canonical program `A373041.P17794873688395257527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, A123323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373041 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373041.P17794873688395257527.a (n - 5))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, A123323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375136.P12794075087779853218

`∑{e}[A217434(n+1), #]`
-/

namespace A375136.P12794075087779853218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375136.P12794075087779853218

noncomputable section

/-- A375136: Number of maximal strictly increasing runs in the weakly increasing prime factors of n.

Offset 1, canonical program `A375136.P12794075087779853218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375136 (n : ℕ) : ℤ :=
  (A375136.P12794075087779853218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378514.P11161419943088938583

`floor((A155559(n)-(A092589(n)+1))/2)+1`
-/

namespace A378514.P11161419943088938583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155559 n - (A092589 n + 1) : ℚ) / 2⌋ + 1

end

end A378514.P11161419943088938583

noncomputable section

/-- A378514: Number of partitions of 2^n-1 into two summands >= 0 having a common divisor > 1.

Offset 1, canonical program `A378514.P11161419943088938583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A378514 (n : ℕ) : ℤ :=
  A378514.P11161419943088938583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A378514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379005.P12563333980607204090

`A071520(A355582(n+1))`
-/

namespace A379005.P12563333980607204090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071520 (A355582 (n + 1)).toNat

end

end A379005.P12563333980607204090

noncomputable section

/-- A379005: Lexicographically earliest infinite sequence such that a(i) = a(j) => v_2(i) = v_2(j), v_3(i) = v_3(j) and v_5(i) = v_5(j), for all i, j, where v_2 (A007814), v_3 (A007949) and v_5 (A112765) give the 2-, 3- and 5-adic valuations of n respectively.

Offset 1, canonical program `A379005.P12563333980607204090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379005 (n : ℕ) : ℤ :=
  A379005.P12563333980607204090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379445.P2489030206191324611

`A023503(n+2)*A023509(n+2)`
-/

namespace A379445.P2489030206191324611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2) * A023509 (n + 2)

end

end A379445.P2489030206191324611

noncomputable section

/-- A379445: a(n) = gpf(prime(n)-1)*gpf(prime(n)+1), where gpf is A006530.

Offset 2, canonical program `A379445.P2489030206191324611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023503, A023509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379445 (n : ℕ) : ℤ :=
  A379445.P2489030206191324611.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023503, A023509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382720.P11103476103859492823

`∏{digits}[A007094(A037474(n)), #+1]`
-/

namespace A382720.P11103476103859492823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A382720.P11103476103859492823

noncomputable section

/-- A382720: Number of entries in the n-th row of Pascal's triangle not divisible by 7.

Offset 0, canonical program `A382720.P11103476103859492823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A382720 (n : ℕ) : ℤ :=
  (A382720.P11103476103859492823.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A382720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382873.P3118827444732228492

`A277006(A179243(n+1))`
-/

namespace A382873.P3118827444732228492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A179243 (n + 1)).toNat

end

end A382873.P3118827444732228492

noncomputable section

/-- A382873: a(n) = A019565(A014311(n)).

Offset 1, canonical program `A382873.P3118827444732228492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A382873 (n : ℕ) : ℤ :=
  A382873.P3118827444732228492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A382873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384231.P10287591200021798730

`gcd(A062878(n), A087133(n+1))`
-/

namespace A384231.P10287591200021798730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062878 n) (A087133 (n + 1))

end

end A384231.P10287591200021798730

noncomputable section

/-- A384231: Index of the largest odd noncomposite divisor in the list of divisors of n.

Offset 1, canonical program `A384231.P10287591200021798730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A384231 (n : ℕ) : ℤ :=
  (A384231.P10287591200021798730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A384231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384715.P8943317397622989256

`A001316(n)*(A033264(n)-A085357(n)+2)`
-/

namespace A384715.P8943317397622989256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * (A033264 n - A085357 n + 2)

end

end A384715.P8943317397622989256

noncomputable section

/-- A384715: a(n) = Sum_{k=0..n} (binomial(n, k) mod 4).

Offset 0, canonical program `A384715.P8943317397622989256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, A085357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384715 (n : ℕ) : ℤ :=
  A384715.P8943317397622989256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, A085357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385934.P15917893729798165172

`∩[A000040(n+1), A073491(n+1)+1]`
-/

namespace A385934.P15917893729798165172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385934.P15917893729798165172

noncomputable section

/-- A385934: Numbers that are one greater than terms of A055932, and also prime.

Offset 1, canonical program `A385934.P15917893729798165172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A385934 (n : ℕ) : ℤ :=
  (A385934.P15917893729798165172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A385934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388274.P18350149075822119324

`A071190(n+1)^A071178(A000203(n+1))`
-/

namespace A388274.P18350149075822119324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071190 (n + 1) : ℚ) ^ (A071178 (A000203 (n + 1)).toNat : ℤ)

end

end A388274.P18350149075822119324

noncomputable section

/-- A388274: a(n) = A053585(sigma(n)).

Offset 1, canonical program `A388274.P18350149075822119324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, A071190, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388274.P18350149075822119324.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, A071190, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392109.P12073788639795556872

`∑{p}[A249740(n+1), #]`
-/

namespace A392109.P12073788639795556872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P12073788639795556872

noncomputable section

/-- A392109: a(n) = largest prime with exponent > 1 in the prime factorization of n, or 0 if no such prime exists.

Offset 1, canonical program `A392109.P12073788639795556872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109 (n : ℕ) : ℤ :=
  (A392109.P12073788639795556872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392871.P11237529172868183968

`eq[1, A392865(n+1)]+1`
-/

namespace A392871.P11237529172868183968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392871.P11237529172868183968

noncomputable section

/-- A392871: Numbers k such that k == 1 mod A117366(k), where A117366(n) gives the smallest prime greater than the largest prime dividing n.

Offset 1, canonical program `A392871.P11237529172868183968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871 (n : ℕ) : ℤ :=
  (A392871.P11237529172868183968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392874.P4881717719182176863

`A392865(A005940(1+n))`
-/

namespace A392874.P4881717719182176863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (A005940 (1 + n)).toNat

end

end A392874.P4881717719182176863

noncomputable section

/-- A392874: a(n) = A005940(1+n) mod A117366(A005940(1+n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A005940 is Doudna-sequence.

Offset 0, canonical program `A392874.P4881717719182176863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A392865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392874 (n : ℕ) : ℤ :=
  A392874.P4881717719182176863.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A392865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392874.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394383.P17827104241650237715

`A006530(n+1)^A052126(n+1)`
-/

namespace A394383.P17827104241650237715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P17827104241650237715

noncomputable section

/-- A394383: a(n) = f^(n/f), where f is the largest prime factor of n.

Offset 1, canonical program `A394383.P17827104241650237715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394383 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394383.P17827104241650237715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365427.P1911992435203789611

`A336467(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365427.P1911992435203789611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (A163511 n).toNat

end

end A365427.P1911992435203789611

noncomputable section

/-- A365427: a(n) = A336467(A163511(n)).

Offset 0, canonical program `A365427.P1911992435203789611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365427 (n : ℕ) : ℤ :=
  A365427.P1911992435203789611.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366146.P17064204824048131682

`A000203(A360540(n+1))`
-/

namespace A366146.P17064204824048131682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A360540 (n + 1)).toNat

end

end A366146.P17064204824048131682

noncomputable section

/-- A366146: The sum of divisors of the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A366146.P17064204824048131682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366146 (n : ℕ) : ℤ :=
  A366146.P17064204824048131682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368247.P6979336993255888350

`A073184(A360540(n+1))`
-/

namespace A368247.P6979336993255888350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (A360540 (n + 1)).toNat

end

end A368247.P6979336993255888350

noncomputable section

/-- A368247: The number of cubefree divisors of the cubefull part of n (A360540).

Offset 1, canonical program `A368247.P6979336993255888350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073184, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368247 (n : ℕ) : ℤ :=
  A368247.P6979336993255888350.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073184, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368886.P14991200523902703916

`(n+1)/A368884(n+1)`
-/

namespace A368886.P14991200523902703916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368884 (n + 1) : ℚ)

end

end A368886.P14991200523902703916

noncomputable section

/-- A368886: The largest unitary divisor of n without an exponent 2 in its prime factorization (A337050).

Offset 1, canonical program `A368886.P14991200523902703916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368886 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368886.P14991200523902703916.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368978.P8301569034531244745

`A365171((n+1)/∏{p}[n+1, #])`
-/

namespace A368978.P8301569034531244745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A368978.P8301569034531244745

noncomputable section

/-- A368978: The number of bi-unitary divisors of n that are squares (A000290).

Offset 1, canonical program `A368978.P8301569034531244745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368978 (n : ℕ) : ℤ :=
  A368978.P8301569034531244745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384049.P5600847465475785129

`A047994(A360540(n+1))*A360539(n+1)`
-/

namespace A384049.P5600847465475785129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360540 (n + 1)).toNat * A360539 (n + 1)

end

end A384049.P5600847465475785129

noncomputable section

/-- A384049: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is cubefree.

Offset 1, canonical program `A384049.P5600847465475785129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049 (n : ℕ) : ℤ :=
  A384049.P5600847465475785129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384051.P18231078601636617959

`A047994(A360539(n+1))*A360540(n+1)`
-/

namespace A384051.P18231078601636617959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360539 (n + 1)).toNat * A360540 (n + 1)

end

end A384051.P18231078601636617959

noncomputable section

/-- A384051: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a cubefull number.

Offset 1, canonical program `A384051.P18231078601636617959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051 (n : ℕ) : ℤ :=
  A384051.P18231078601636617959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385048.P15337767966192426689

`A034448(n+1)/A371242(n+1)`
-/

namespace A385048.P15337767966192426689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A371242 (n + 1) : ℚ)

end

end A385048.P15337767966192426689

noncomputable section

/-- A385048: The sum of the unitary divisors of n that are cubefull numbers (A036966).

Offset 1, canonical program `A385048.P15337767966192426689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385048.P15337767966192426689.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391701.P8288495755813871528

`A062354(n+1)-A062355(n+1)`
-/

namespace A391701.P8288495755813871528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - A062355 (n + 1)

end

end A391701.P8288495755813871528

noncomputable section

/-- A391701: a(n) = phi(n) * (sigma(n) - tau(n)).

Offset 1, canonical program `A391701.P8288495755813871528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, A062355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391701 (n : ℕ) : ℤ :=
  A391701.P8288495755813871528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, A062355, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365489.P10175361733768043480

`A000005(A053149(n+1))`
-/

namespace A365489.P10175361733768043480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053149 (n + 1)).toNat

end

end A365489.P10175361733768043480

noncomputable section

/-- A365489: The number of divisors of the smallest cube divisible by n.

Offset 1, canonical program `A365489.P10175361733768043480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365489 (n : ℕ) : ℤ :=
  A365489.P10175361733768043480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366145.P15841595300471254035

`A000005(n+1)/A366147(n+1)`
-/

namespace A366145.P15841595300471254035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A366147 (n + 1) : ℚ)

end

end A366145.P15841595300471254035

noncomputable section

/-- A366145: The number of divisors of the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A366145.P15841595300471254035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A366147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366145 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366145.P15841595300471254035.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A366147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366765.P15880116743142061800

`(n+1)/A329376(n+1)`
-/

namespace A366765.P15880116743142061800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329376 (n + 1) : ℚ)

end

end A366765.P15880116743142061800

noncomputable section

/-- A366765: The largest divisor of n that have no exponent 2 in their prime factorization.

Offset 1, canonical program `A366765.P15880116743142061800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366765 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366765.P15880116743142061800.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368998.P17822232149440979523

`eq[1, A368997(n+1)]+1`
-/

namespace A368998.P17822232149440979523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368998.P17822232149440979523

noncomputable section

/-- A368998: Numbers k such that A003415(k) and A276085(k) are both even, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function; Numbers k for which A342001(k) is even.

Offset 1, canonical program `A368998.P17822232149440979523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368998 (n : ℕ) : ℤ :=
  (A368998.P17822232149440979523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368999.P12334488890265234210

`lt[A368997(n+1), 1]+1`
-/

namespace A368999.P12334488890265234210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368997 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A368999.P12334488890265234210

noncomputable section

/-- A368999: Numbers k for which A342001(k) is odd.

Offset 1, canonical program `A368999.P12334488890265234210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368999 (n : ℕ) : ℤ :=
  (A368999.P12334488890265234210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369070.P15963165301272738747

`A008379(n)%A369008(n+1)`
-/

namespace A369070.P15963165301272738747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A369008 (n + 1))

end

end A369070.P15963165301272738747

noncomputable section

/-- A369070: a(n) = 1 if there is at least one prime power p^e in the prime factorization of n such that p|e, otherwise 0.

Offset 1, canonical program `A369070.P15963165301272738747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369070 (n : ℕ) : ℤ :=
  A369070.P15963165301272738747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370119.P13163184009623574713

`lt[0, A370118(n)]`
-/

namespace A370119.P13163184009623574713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370119.P13163184009623574713

noncomputable section

/-- A370119: Numbers whose arithmetic derivative is a multiple of 9.

Offset 1, canonical program `A370119.P13163184009623574713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119 (n : ℕ) : ℤ :=
  (A370119.P13163184009623574713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373373.P12422209471877162310

`record[(n+1)*A373372(n+1)]`
-/

namespace A373373.P12422209471877162310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373373.P12422209471877162310

noncomputable section

/-- A373373: Numbers k for which both A001414(k) and A276085(k) are multiples of 3, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

Offset 1, canonical program `A373373.P12422209471877162310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373373 (n : ℕ) : ℤ :=
  A373373.P12422209471877162310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373473.P12116904307053985547

`eq[1, A373472(n+1)]+1`
-/

namespace A373473.P12116904307053985547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373473.P12116904307053985547

noncomputable section

/-- A373473: Numbers k such that A001414(k) and A059975(k) are both multiples of 3, where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

Offset 1, canonical program `A373473.P12116904307053985547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5648 terms. -/
def A373473 (n : ℕ) : ℤ :=
  (A373473.P12116904307053985547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5648 terms. -/
def A373473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373474.P9005453665869377393

`char[A369659(n+1)-1]`
-/

namespace A373474.P9005453665869377393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373474.P9005453665869377393

noncomputable section

/-- A373474: a(n) = 1 if A001414(n) and A083345(n) are both multiples of 3, otherwise 0, where A001414 is fully additive with a(p) = p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373474.P9005453665869377393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474 (n : ℕ) : ℤ :=
  (A373474.P9005453665869377393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373479.P13766568938091345809

`filter[A373478(n+1), A079978(#)]`
-/

namespace A373479.P13766568938091345809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A373479.P13766568938091345809

noncomputable section

/-- A373479: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, but A083345(k) is not, where A001414 is the sum of prime factors with repetition, A003415 is the arithmetic derivative, and A083345(n) = A003415(n)/gcd(n,A003415(n)).

Offset 1, canonical program `A373479.P13766568938091345809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A373479 (n : ℕ) : ℤ :=
  A373479.P13766568938091345809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A373479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374042.P11089643045131829268

`eq[1, A374041(n+1)]+1`
-/

namespace A374042.P11089643045131829268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374042.P11089643045131829268

noncomputable section

/-- A374042: Numbers k such that A276085(k) and A328768(k) are both multiples of 3, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A374042.P11089643045131829268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374042 (n : ℕ) : ℤ :=
  (A374042.P11089643045131829268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385049.P4314546345996774465

`A034448(A385007(n+1))`
-/

namespace A385049.P4314546345996774465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A385007 (n + 1)).toNat

end

end A385049.P4314546345996774465

noncomputable section

/-- A385049: The sum of the unitary divisors of n that are biquadratefree numbers (A046100).

Offset 1, canonical program `A385049.P4314546345996774465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049 (n : ℕ) : ℤ :=
  A385049.P4314546345996774465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390663.P5509345383207779074

`A000203(A053149(n+1))`
-/

namespace A390663.P5509345383207779074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053149 (n + 1)).toNat

end

end A390663.P5509345383207779074

noncomputable section

/-- A390663: The sum of the divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390663.P5509345383207779074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663 (n : ℕ) : ℤ :=
  A390663.P5509345383207779074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390665.P2218711322630550871

`A034448(A053149(n+1))`
-/

namespace A390665.P2218711322630550871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A053149 (n + 1)).toNat

end

end A390665.P2218711322630550871

noncomputable section

/-- A390665: The sum of the unitary divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390665.P2218711322630550871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665 (n : ℕ) : ℤ :=
  A390665.P2218711322630550871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390754.P7808372230478735667

`A000010(A053149(n+1))`
-/

namespace A390754.P7808372230478735667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053149 (n + 1)).toNat

end

end A390754.P7808372230478735667

noncomputable section

/-- A390754: The Euler totient of the smallest cube divisible by n.

Offset 1, canonical program `A390754.P7808372230478735667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P7808372230478735667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392088.P2713772725741587424

`A047994(A053149(n+1))`
-/

namespace A392088.P2713772725741587424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053149 (n + 1)).toNat

end

end A392088.P2713772725741587424

noncomputable section

/-- A392088: The unitary totient of the smallest cube divisible by n.

Offset 1, canonical program `A392088.P2713772725741587424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392088 (n : ℕ) : ℤ :=
  A392088.P2713772725741587424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392169.P12898871919302007808

`A001615(A053149(n+1))`
-/

namespace A392169.P12898871919302007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053149 (n + 1)).toNat

end

end A392169.P12898871919302007808

noncomputable section

/-- A392169: The Dedekind psi function value of the smallest cube divisible by n.

Offset 1, canonical program `A392169.P12898871919302007808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392169 (n : ℕ) : ℤ :=
  A392169.P12898871919302007808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365490.P10530064324092144185

`A000005(A008835(n+1))`
-/

namespace A365490.P10530064324092144185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008835 (n + 1)).toNat

end

end A365490.P10530064324092144185

noncomputable section

/-- A365490: The number of divisors of the largest 4th power dividing n.

Offset 1, canonical program `A365490.P10530064324092144185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A008835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365490 (n : ℕ) : ℤ :=
  A365490.P10530064324092144185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A008835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365680.P3625310981199113847

`∑{d}[n+1, A370598(#)]`
-/

namespace A365680.P3625310981199113847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A370598 d

end

end A365680.P3625310981199113847

noncomputable section

/-- A365680: The number of exponentially squarefree divisors of n.

Offset 1, canonical program `A365680.P3625310981199113847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365680 (n : ℕ) : ℤ :=
  A365680.P3625310981199113847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365682.P17785449757438465592

`∑{d}[n+1, #*A370598(#)]`
-/

namespace A365682.P17785449757438465592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A370598 d

end

end A365682.P17785449757438465592

noncomputable section

/-- A365682: The sum of exponentially squarefree divisors of n.

Offset 1, canonical program `A365682.P17785449757438465592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365682 (n : ℕ) : ℤ :=
  A365682.P17785449757438465592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368909.P13853718524711062460

`A165560(A324054(n))`
-/

namespace A368909.P13853718524711062460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A324054 n).toNat

end

end A368909.P13853718524711062460

noncomputable section

/-- A368909: a(n) = A003415(sigma(A005940(1+n))) mod 2, where A003415 is the arithmetic derivative, sigma is the sum of divisors function, and A005940 is the Doudna sequence.

Offset 0, canonical program `A368909.P13853718524711062460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A324054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368909 (n : ℕ) : ℤ :=
  A368909.P13853718524711062460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A324054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369001.P2904300838152435751

`A059841(A083345(n+1))`
-/

namespace A369001.P2904300838152435751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A083345 (n + 1)).toNat

end

end A369001.P2904300838152435751

noncomputable section

/-- A369001: a(n) = 1 if n' / gcd(n,n') is even, otherwise 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369001.P2904300838152435751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369001 (n : ℕ) : ℤ :=
  A369001.P2904300838152435751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369004.P12527556560787931006

`A121262(A083345(n+1))`
-/

namespace A369004.P12527556560787931006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A083345 (n + 1)).toNat

end

end A369004.P12527556560787931006

noncomputable section

/-- A369004: a(n) = 1 if n' / gcd(n,n') is a multiple of 4, otherwise 0, where n' stands for the arithmetic derivative of n, A003415(n).

Offset 1, canonical program `A369004.P12527556560787931006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369004 (n : ℕ) : ℤ :=
  A369004.P12527556560787931006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369009.P4673910545614244830

`A342001(n+1)-A083345(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369009.P4673910545614244830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) - A083345 (n + 1)

end

end A369009.P4673910545614244830

noncomputable section

/-- A369009: a(n) = A342001(n) - A083345(n).

Offset 1, canonical program `A369009.P4673910545614244830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369009 (n : ℕ) : ℤ :=
  A369009.P4673910545614244830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369456.P1336314732339854060

`A083345(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369456.P1336314732339854060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A005940 (1 + n)).toNat

end

end A369456.P1336314732339854060

noncomputable section

/-- A369456: a(n) = A083345(A005940(1+n)), where A083345(n) = (n'/gcd(n,n')), n' means the arithmetic derivative of n (A003415), and A005940 is the Doudna-sequence.

Offset 0, canonical program `A369456.P1336314732339854060`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369456 (n : ℕ) : ℤ :=
  A369456.P1336314732339854060.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369643.P13743877449333020422

`A079978(A083345(n+1))`
-/

namespace A369643.P13743877449333020422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A083345 (n + 1)).toNat

end

end A369643.P13743877449333020422

noncomputable section

/-- A369643: a(n) = 1 if n' / gcd(n,n') is a multiple of 3, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369643.P13743877449333020422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369643 (n : ℕ) : ℤ :=
  A369643.P13743877449333020422.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369655.P9734755882445867410

`A165560(n)*A165560(A003415(n))`
-/

namespace A369655.P9734755882445867410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n * A165560 (A003415 n).toNat

end

end A369655.P9734755882445867410

noncomputable section

/-- A369655: a(n) = 1 if n' is odd and also n'' is odd, otherwise 0, where n' stands for the arithmetic derivative, A003415.

Offset 0, canonical program `A369655.P9734755882445867410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A165560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369655 (n : ℕ) : ℤ :=
  A369655.P9734755882445867410.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A165560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369663.P9662238559183058676

`∩[A359163(n+1), A369661(n+1)]`
-/

namespace A369663.P9662238559183058676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369663.P9662238559183058676

noncomputable section

/-- A369663: Numbers k of the form 4m+3, whose arithmetic derivative k' is of the form 4u+2, and k' has an even number of prime factors.

Offset 1, canonical program `A369663.P9662238559183058676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A369663 (n : ℕ) : ℤ :=
  (A369663.P9662238559183058676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A369663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369757.P5287777437790964755

`A000005(A356192(n+1))`
-/

namespace A369757.P5287777437790964755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356192 (n + 1)).toNat

end

end A369757.P5287777437790964755

noncomputable section

/-- A369757: The number of divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369757.P5287777437790964755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369757 (n : ℕ) : ℤ :=
  A369757.P5287777437790964755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369758.P236084488663508184

`A000203(A356192(n+1))`
-/

namespace A369758.P236084488663508184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356192 (n + 1)).toNat

end

end A369758.P236084488663508184

noncomputable section

/-- A369758: The sum of divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369758.P236084488663508184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369758 (n : ℕ) : ℤ :=
  A369758.P236084488663508184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369759.P9544556233329631005

`A034448(A356192(n+1))`
-/

namespace A369759.P9544556233329631005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A356192 (n + 1)).toNat

end

end A369759.P9544556233329631005

noncomputable section

/-- A369759: The sum of unitary divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369759.P9544556233329631005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369759 (n : ℕ) : ℤ :=
  A369759.P9544556233329631005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356192, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373363.P15575351710331824762

`gcd(A001414(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373363.P15575351710331824762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A083345 (n + 1))

end

end A373363.P15575351710331824762

noncomputable section

/-- A373363: a(n) = gcd(A001414(n), A083345(n)), where A001414 is the sum of prime factors with repetition, and A083345 is the numerator of the sum of the inverses of prime factors with repetition.

Offset 1, canonical program `A373363.P15575351710331824762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373363 (n : ℕ) : ℤ :=
  (A373363.P15575351710331824762.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373363.provenance : SequenceMachineLib.Provenance := .conditional

