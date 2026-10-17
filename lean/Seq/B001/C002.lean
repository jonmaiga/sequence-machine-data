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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A077043.P527302642051147366

`n²-A002620(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077043.P527302642051147366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A002620 n

end

end A077043.P527302642051147366

noncomputable section

/-- A077043: "Three-quarter squares": a(n) = n^2 - A002620(n).

Offset 0, canonical program `A077043.P527302642051147366`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-A002620(n)` (program `A077043.P527302642051147366`, by `A077043.P527302642051147366.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077043 (n : ℕ) : ℤ :=
  A077043.P527302642051147366.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-A002620(n)` (program `A077043.P527302642051147366`, by `A077043.P527302642051147366.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077043.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A081660.P3609957473961011549

`n+A001045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081660.P3609957473961011549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A001045 (n + 1)

end

end A081660.P3609957473961011549

noncomputable section

/-- A081660: n+A001045(n+1).

Offset 0, canonical program `A081660.P3609957473961011549`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+A001045(n+1)` (program `A081660.P3609957473961011549`, by `A081660.P3609957473961011549.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081660 (n : ℕ) : ℤ :=
  A081660.P3609957473961011549.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+A001045(n+1)` (program `A081660.P3609957473961011549`, by `A081660.P3609957473961011549.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081660.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083694.P8538574103418569436

`2*A002532(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083694.P8538574103418569436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002532 n

end

end A083694.P8538574103418569436

noncomputable section

/-- A083694: a(n) = 2*A002532(n).

Offset 0, canonical program `A083694.P8538574103418569436`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A002532(n)` (program `A083694.P8538574103418569436`, by `A083694.P8538574103418569436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083694 (n : ℕ) : ℤ :=
  A083694.P8538574103418569436.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A002532(n)` (program `A083694.P8538574103418569436`, by `A083694.P8538574103418569436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083694.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A056944.P3868356885353376859

`n-A056943(n)`
-/

namespace A056944.P3868356885353376859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056943 n

end

end A056944.P3868356885353376859

noncomputable section

/-- A056944: Amount by which used area of rectangle needed to enclose a non-touching spiral of length n on a square lattice exceeds unused area.

Offset 0, canonical program `A056944.P3868356885353376859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056944 (n : ℕ) : ℤ :=
  A056944.P3868356885353376859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056982.P17508739079274575033

`4^A005187(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056982.P17508739079274575033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A005187 n : ℤ)

end

end A056982.P17508739079274575033

noncomputable section

/-- A056982: a(n) = 4^A005187(n). The denominators of the Landau constants.

Offset 0, canonical program `A056982.P17508739079274575033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056982.P17508739079274575033.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057045.P8533816772793938656

`round(sqrt(2*A000032(n)))`
-/

namespace A057045.P8533816772793938656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A000032 n : ℝ))

end

end A057045.P8533816772793938656

noncomputable section

/-- A057045: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; the n-th Lucas number is in antidiagonal a(n).

Offset 1, canonical program `A057045.P8533816772793938656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057045 (n : ℕ) : ℤ :=
  A057045.P8533816772793938656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057211.P13662060525465798747

`A000035(A002024(n+1))`
-/

namespace A057211.P13662060525465798747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002024 (n + 1)).toNat

end

end A057211.P13662060525465798747

noncomputable section

/-- A057211: Alternating runs of ones and zeros, where the n-th run has length n.

Offset 1, canonical program `A057211.P13662060525465798747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057211 (n : ℕ) : ℤ :=
  A057211.P13662060525465798747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057427.P3058147525557661423

`1-A000007(n)`
-/

namespace A057427.P3058147525557661423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 n

end

end A057427.P3058147525557661423

noncomputable section

/-- A057427: a(n) = 1 if n > 0, a(n) = 0 if n = 0; series expansion of x/(1-x).

Offset 0, canonical program `A057427.P3058147525557661423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057427 (n : ℕ) : ℤ :=
  A057427.P3058147525557661423.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057599.P2314703557819511826

`A034841(n)/A000142(n)`
-/

namespace A057599.P2314703557819511826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034841 n : ℚ) / (A000142 n : ℚ)

end

end A057599.P2314703557819511826

noncomputable section

/-- A057599: a(n) = (n^2)!/(n!)^(n+1); number of ways of dividing n^2 labeled items into n unlabeled boxes of n items each.

Offset 0, canonical program `A057599.P2314703557819511826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057599 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057599.P2314703557819511826.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057813.P13879157937402332304

`2*A050533(n)+1`
-/

namespace A057813.P13879157937402332304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050533 n + 1

end

end A057813.P13879157937402332304

noncomputable section

/-- A057813: a(n) = (2*n+1)*(4*n^2+4*n+3)/3.

Offset 0, canonical program `A057813.P13879157937402332304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057813 (n : ℕ) : ℤ :=
  A057813.P13879157937402332304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057944.P16851463738746886639

`A000217(A003056(n))`
-/

namespace A057944.P16851463738746886639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n).toNat

end

end A057944.P16851463738746886639

noncomputable section

/-- A057944: Largest triangular number less than or equal to n; write m-th triangular number m+1 times.

Offset 0, canonical program `A057944.P16851463738746886639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057944 (n : ℕ) : ℤ :=
  A057944.P16851463738746886639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058187.P11225617256787788162

`A000292(A008619(n))`
-/

namespace A058187.P11225617256787788162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A008619 n).toNat

end

end A058187.P11225617256787788162

noncomputable section

/-- A058187: Expansion of (1+x)/(1-x^2)^4: duplicated tetrahedral numbers.

Offset 0, canonical program `A058187.P11225617256787788162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058187 (n : ℕ) : ℤ :=
  A058187.P11225617256787788162.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058582.P8022887645033031847

`A032766(n+1)*A016116(n)`
-/

namespace A058582.P8022887645033031847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) * A016116 n

end

end A058582.P8022887645033031847

noncomputable section

/-- A058582: Expansion of (1+3*x+4*x^2)/(1-4*x^2+4*x^4).

Offset 0, canonical program `A058582.P8022887645033031847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058582 (n : ℕ) : ℤ :=
  A058582.P8022887645033031847.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058635.P11783534453267586822

`a(n-1)*A001566(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A058635.P11783534453267586822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A001566 (n - 2)

end

end A058635.P11783534453267586822

noncomputable section

/-- A058635: a(n) = Fibonacci(2^n).

Offset 0, canonical program `A058635.P11783534453267586822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058635 (n : ℕ) : ℤ :=
  A058635.P11783534453267586822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058877.P1034710005829432116

`A048493(n)-1`
-/

namespace A058877.P1034710005829432116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 n - 1

end

end A058877.P1034710005829432116

noncomputable section

/-- A058877: Number of labeled acyclic digraphs with n nodes containing exactly n-1 points of in-degree zero.

Offset 1, canonical program `A058877.P1034710005829432116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058877 (n : ℕ) : ℤ :=
  A058877.P1034710005829432116.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058877.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058891.P396574589421117617

`2^A000225(n)`
-/

namespace A058891.P396574589421117617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000225 n : ℤ)

end

end A058891.P396574589421117617

noncomputable section

/-- A058891: a(n) = 2^(2^(n-1) - 1).

Offset 1, canonical program `A058891.P396574589421117617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058891.P396574589421117617.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059204.P17151573816621482727

`A000142(n)-A011782(n)`
-/

namespace A059204.P17151573816621482727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A011782 n

end

end A059204.P17151573816621482727

noncomputable section

/-- A059204: Number of non-unimodal permutations of n items (i.e., those which do not simply go up for the first part and then down for the rest, but at some point go down then up).

Offset 0, canonical program `A059204.P17151573816621482727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059204 (n : ℕ) : ℤ :=
  A059204.P17151573816621482727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059255.P3301445240807100974

`A000330(A014106(n))-A000330(A046092(n))`
-/

namespace A059255.P3301445240807100974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A014106 n).toNat - A000330 (A046092 n).toNat

end

end A059255.P3301445240807100974

noncomputable section

/-- A059255: Both sum of n+1 consecutive squares and sum of the immediately following n consecutive squares.

Offset 0, canonical program `A059255.P3301445240807100974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059255 (n : ℕ) : ℤ :=
  A059255.P3301445240807100974.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059406.P872725532946479068

`A005449(a(n-1))` with `a(0)=1`
-/

namespace A059406.P872725532946479068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005449 (a (n - 1)).toNat

end

end A059406.P872725532946479068

noncomputable section

/-- A059406: a(n) = a(n-1)*(3a(n-1) + 1)/2 with a(1) = 1.

Offset 1, canonical program `A059406.P872725532946479068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059406 (n : ℕ) : ℤ :=
  A059406.P872725532946479068.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059929.P8456040648123541286

`A000045(n+1)²-A033999(n)`
-/

namespace A059929.P8456040648123541286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 - A033999 n

end

end A059929.P8456040648123541286

noncomputable section

/-- A059929: a(n) = Fibonacci(n)*Fibonacci(n+2).

Offset 0, canonical program `A059929.P8456040648123541286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059929 (n : ℕ) : ℤ :=
  A059929.P8456040648123541286.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059989.P4306678296345226909

`(A001570(n+1)²-1)/3`
-/

namespace A059989.P4306678296345226909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001570 (n + 1) ^ 2 - 1 : ℚ) / 3

end

end A059989.P4306678296345226909

noncomputable section

/-- A059989: Numbers k such that 3*k+1 and 4*k+1 are both squares.

Offset 1, canonical program `A059989.P4306678296345226909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059989.P4306678296345226909.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060458.P4175634444508677456

`8*A016134(n)`
-/

namespace A060458.P4175634444508677456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016134 n

end

end A060458.P4175634444508677456

noncomputable section

/-- A060458: Maximum value seen in the final n decimal digits of 2^j for all values of j.

Offset 1, canonical program `A060458.P4175634444508677456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060458 (n : ℕ) : ℤ :=
  A060458.P4175634444508677456.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060546.P1654444225821562750

`A016116(n+1)`
-/

namespace A060546.P1654444225821562750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

end

end A060546.P1654444225821562750

noncomputable section

/-- A060546: a(n) = 2^ceiling(n/2).

Offset 0, canonical program `A060546.P1654444225821562750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060546 (n : ℕ) : ℤ :=
  A060546.P1654444225821562750.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060547.P16635624753728141466

`2^A008611(n)`
-/

namespace A060547.P16635624753728141466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008611 n : ℤ)

end

end A060547.P16635624753728141466

noncomputable section

/-- A060547: a(n) = 2^(floor(n/3) + ((n mod 3) mod 2)).

Offset 1, canonical program `A060547.P16635624753728141466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060547.P16635624753728141466.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060585.P14714864189265894970

`2*a(floor(n/3))+A060584(n)` with `a(0)=0`
-/

namespace A060585.P14714864189265894970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 3⌋.toNat + A060584 n

end

end A060585.P14714864189265894970

noncomputable section

/-- A060585: Write n in base 3, then (working from left to right) if the k-th digit of n is not equal to the digit to its left then the k-th digit of a(n) is 1, otherwise it is 0, and finally read the result as a base-2 number.

Offset 0, canonical program `A060585.P14714864189265894970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060585 (n : ℕ) : ℤ :=
  A060585.P14714864189265894970.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060589.P18011316872635690004

`6*a(n-1)+A008776(n-1)` with `a(0)=0`
-/

namespace A060589.P18011316872635690004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  6 * a (n - 1) + A008776 (n - 1)

end

end A060589.P18011316872635690004

noncomputable section

/-- A060589: a(n) = 2*(2^n-1)*3^(n-1).

Offset 0, canonical program `A060589.P18011316872635690004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060589 (n : ℕ) : ℤ :=
  A060589.P18011316872635690004.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060589.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A060827.P15751382796492742172

`2*A038196(n)`
-/

namespace A060827.P15751382796492742172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038196 n

end

end A060827.P15751382796492742172

noncomputable section

/-- A060827: 3-wave sequence beginning with 2's.

Offset 0, canonical program `A060827.P15751382796492742172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060827 (n : ℕ) : ℤ :=
  A060827.P15751382796492742172.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060851.P18442704857643501017

`3*A155988(n)`
-/

namespace A060851.P18442704857643501017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155988 n

end

end A060851.P18442704857643501017

noncomputable section

/-- A060851: a(n) = (2n-1) * 3^(2n-1).

Offset 1, canonical program `A060851.P18442704857643501017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060851 (n : ℕ) : ℤ :=
  A060851.P18442704857643501017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060919.P7052190204261958881

`4*A007581(n)`
-/

namespace A060919.P7052190204261958881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007581 n

end

end A060919.P7052190204261958881

noncomputable section

/-- A060919: Number of corners in a 4-sided fractal.

Offset 1, canonical program `A060919.P7052190204261958881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060919 (n : ℕ) : ℤ :=
  A060919.P7052190204261958881.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061349.P12457628590911601560

`a(n-1)+A001844(n-1)-A002378(A004526(n-1))` with `a(0)=0`
-/

namespace A061349.P12457628590911601560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001844 (n - 1) - A002378 (A004526 (n - 1)).toNat

end

end A061349.P12457628590911601560

noncomputable section

/-- A061349: Sum of antidiagonals of A060736.

Offset 0, canonical program `A061349.P12457628590911601560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061349 (n : ℕ) : ℤ :=
  A061349.P12457628590911601560.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061418.P14625307847613039065

`A061419(n+1)+1`
-/

namespace A061418.P14625307847613039065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) + 1

end

end A061418.P14625307847613039065

noncomputable section

/-- A061418: a(n) = floor(a(n-1)*3/2) with a(1) = 2.

Offset 1, canonical program `A061418.P14625307847613039065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061418 (n : ℕ) : ℤ :=
  A061418.P14625307847613039065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061640.P12760700799484753330

`A000142(n)*A003422(n)`
-/

namespace A061640.P12760700799484753330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003422 n

end

end A061640.P12760700799484753330

noncomputable section

/-- A061640: a(n) = !n*n!.

Offset 0, canonical program `A061640.P12760700799484753330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061640 (n : ℕ) : ℤ :=
  A061640.P12760700799484753330.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061667.P6698465324237973844

`2*A001906(n+1)-A001906(n)-A000079(n)`
-/

namespace A061667.P6698465324237973844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 (n + 1) - A001906 n - A000079 n

end

end A061667.P6698465324237973844

noncomputable section

/-- A061667: a(n) = Fibonacci(2*n+1) - 2^(n-1).

Offset 1, canonical program `A061667.P6698465324237973844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061667 (n : ℕ) : ℤ :=
  A061667.P6698465324237973844.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061719.P17348919647334143380

`A000178(n)^3`
-/

namespace A061719.P17348919647334143380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n ^ 3

end

end A061719.P17348919647334143380

noncomputable section

/-- A061719: a(n) = Product_{k=0...n} (k!^3).

Offset 0, canonical program `A061719.P17348919647334143380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061719 (n : ℕ) : ℤ :=
  A061719.P17348919647334143380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062108.P1540959847004753283

`A061054(n)-n`
-/

namespace A062108.P1540959847004753283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061054 n - (n : ℤ)

end

end A062108.P1540959847004753283

noncomputable section

/-- A062108: a(n) = floor(n^(3/4)).

Offset 0, canonical program `A062108.P1540959847004753283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062108 (n : ℕ) : ℤ :=
  A062108.P1540959847004753283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062109.P17511835628620694378

`2*a(n-1)+A058396(n)-A058396(n-1)` with `a(0)=1`
-/

namespace A062109.P17511835628620694378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A058396 n - A058396 (n - 1)

end

end A062109.P17511835628620694378

noncomputable section

/-- A062109: Expansion of ((1-x)/(1-2*x))^4.

Offset 0, canonical program `A062109.P17511835628620694378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062109 (n : ℕ) : ℤ :=
  A062109.P17511835628620694378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062157.P11174747228682245844

`A000007(n)-A033999(n)`
-/

namespace A062157.P11174747228682245844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A033999 n

end

end A062157.P11174747228682245844

noncomputable section

/-- A062157: a(n) = 0^n - (-1)^n.

Offset 0, canonical program `A062157.P11174747228682245844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062157 (n : ℕ) : ℤ :=
  A062157.P11174747228682245844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062159.P10708687390836092523

`(n-1)*A002061(n)*A002061(n+1)`
-/

namespace A062159.P10708687390836092523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A002061 n * A002061 (n + 1)

end

end A062159.P10708687390836092523

noncomputable section

/-- A062159: a(n) = n^5 - n^4 + n^3 - n^2 + n - 1.

Offset 0, canonical program `A062159.P10708687390836092523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062159 (n : ℕ) : ℤ :=
  A062159.P10708687390836092523.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062569.P5415659174355555500

`A000203(A000142(n))`
-/

namespace A062569.P5415659174355555500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000142 n).toNat

end

end A062569.P5415659174355555500

noncomputable section

/-- A062569: a(n) = sigma(n!).

Offset 0, canonical program `A062569.P5415659174355555500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062569 (n : ℕ) : ℤ :=
  A062569.P5415659174355555500.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062727.P11139965182496471587

`A000203(A000312(n))`
-/

namespace A062727.P11139965182496471587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000312 n).toNat

end

end A062727.P11139965182496471587

noncomputable section

/-- A062727: Sum of the divisors of n^n (A000312).

Offset 0, canonical program `A062727.P11139965182496471587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062727 (n : ℕ) : ℤ :=
  A062727.P11139965182496471587.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062748.P14956383250975312494

`A000292(n+2)-1`
-/

namespace A062748.P14956383250975312494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) - 1

end

end A062748.P14956383250975312494

noncomputable section

/-- A062748: Fourth column (r=3) of FS(3) staircase array A062745.

Offset 0, canonical program `A062748.P14956383250975312494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062748 (n : ℕ) : ℤ :=
  A062748.P14956383250975312494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063016.P3883579534976481320

`A000108(n)*A126646(n)`
-/

namespace A063016.P3883579534976481320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A126646 n

end

end A063016.P3883579534976481320

noncomputable section

/-- A063016: a(n) is the product of Catalan(n) and (2^(n+1) - 1).

Offset 0, canonical program `A063016.P3883579534976481320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063016 (n : ℕ) : ℤ :=
  A063016.P3883579534976481320.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063258.P2123925811815869963

`A000332(n+5)-1`
-/

namespace A063258.P2123925811815869963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 5) - 1

end

end A063258.P2123925811815869963

noncomputable section

/-- A063258: a(n) = binomial(n+5,4) - 1.

Offset 0, canonical program `A063258.P2123925811815869963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063258 (n : ℕ) : ℤ :=
  A063258.P2123925811815869963.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063374.P5532301294767683893

`A000045(A000142(n))`
-/

namespace A063374.P5532301294767683893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000142 n).toNat

end

end A063374.P5532301294767683893

noncomputable section

/-- A063374: a(n) = Fibonacci(n!).

Offset 0, canonical program `A063374.P5532301294767683893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063374 (n : ℕ) : ℤ :=
  A063374.P5532301294767683893.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063459.P17423234819915296512

`A022844(n)-n`
-/

namespace A063459.P17423234819915296512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n - (n : ℤ)

end

end A063459.P17423234819915296512

noncomputable section

/-- A063459: A Beatty sequence: a(n) = floor(n*(Pi - 1)).

Offset 0, canonical program `A063459.P17423234819915296512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063459 (n : ℕ) : ℤ :=
  A063459.P17423234819915296512.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063524.P5631347671191003537

`A000007(abs(n-1))`
-/

namespace A063524.P5631347671191003537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |(n : ℤ) - 1|.toNat

end

end A063524.P5631347671191003537

noncomputable section

/-- A063524: Characteristic function of 1.

Offset 0, canonical program `A063524.P5631347671191003537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063524 (n : ℕ) : ℤ :=
  A063524.P5631347671191003537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064322.P5777157630167942361

`A000217(A000217(A000217(n)))`
-/

namespace A064322.P5777157630167942361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 (A000217 n).toNat).toNat

end

end A064322.P5777157630167942361

noncomputable section

/-- A064322: Triply triangular numbers.

Offset 0, canonical program `A064322.P5777157630167942361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064322 (n : ℕ) : ℤ :=
  A064322.P5777157630167942361.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064672.P697421993905647124

`a(A000196(n))+a(A053186(n))` with `a(0)=0, a(1)=1`
-/

namespace A064672.P697421993905647124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A000196 n).toNat + a (A053186 n).toNat

end

end A064672.P697421993905647124

noncomputable section

/-- A064672: a(0) = 0, a(1) = 1; for a(n), n >= 2, write n = x^2 + y with y >= 0 as small as possible, then a(n) = a(x) + a(y).

Offset 0, canonical program `A064672.P697421993905647124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064672 (n : ℕ) : ℤ :=
  (A064672.P697421993905647124.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064706.P11682189123624134312

`A003188(A003188(n))`
-/

namespace A064706.P11682189123624134312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 n).toNat

end

end A064706.P11682189123624134312

noncomputable section

/-- A064706: Square of permutation defined by A003188.

Offset 0, canonical program `A064706.P11682189123624134312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064706 (n : ℕ) : ℤ :=
  A064706.P11682189123624134312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064836.P12935499272681872198

`A064835(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064836.P12935499272681872198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064835 n : ℚ) / 2

end

end A064836.P12935499272681872198

noncomputable section

/-- A064836: a(n) = A064835(n)/2.

Offset 0, canonical program `A064836.P12935499272681872198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064836.P12935499272681872198.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064838.P8528437837125848175

`A064837(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064838.P8528437837125848175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064837 n : ℚ) / 2

end

end A064838.P8528437837125848175

noncomputable section

/-- A064838: a(n) = A064837(n)/2.

Offset 0, canonical program `A064838.P8528437837125848175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064838.P8528437837125848175.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065039.P4788194488470715228

`n+A054899(n)`
-/

namespace A065039.P4788194488470715228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A054899 n

end

end A065039.P4788194488470715228

noncomputable section

/-- A065039: If n in base 10 is d_1 d_2 ... d_k then a(n) = d_1 + d_1d_2 + d_1d_2d_3 + ... + d_1...d_k.

Offset 0, canonical program `A065039.P4788194488470715228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065039 (n : ℕ) : ℤ :=
  A065039.P4788194488470715228.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065088.P18194710171340571273

`A000166(n)*C(n, 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065088.P18194710171340571273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * (Nat.choose n 2 : ℤ)

end

end A065088.P18194710171340571273

noncomputable section

/-- A065088: a(n) = A000166(n)*binomial(n,2).

Offset 0, canonical program `A065088.P18194710171340571273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065088 (n : ℕ) : ℤ :=
  A065088.P18194710171340571273.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065101.P10088104874058875924

`2*A004191(n)`
-/

namespace A065101.P10088104874058875924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004191 n

end

end A065101.P10088104874058875924

noncomputable section

/-- A065101: a(0) = c, a(1) = p*c^3; a(n+2) = p*c^2*a(n+1) - a(n), for p = 3, c = 2.

Offset 0, canonical program `A065101.P10088104874058875924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065101 (n : ℕ) : ℤ :=
  A065101.P10088104874058875924.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065102.P4376375145198812071

`3*A049660(n+1)`
-/

namespace A065102.P4376375145198812071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049660 (n + 1)

end

end A065102.P4376375145198812071

noncomputable section

/-- A065102: a(0) = c, a(1) = p*c^3; a(n+2) = p*c^2*a(n+1) - a(n), for p = 2, c = 3.

Offset 0, canonical program `A065102.P4376375145198812071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065102 (n : ℕ) : ℤ :=
  A065102.P4376375145198812071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065355.P6179604654936762676

`A000142(n)-A003422(n)`
-/

namespace A065355.P6179604654936762676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A003422 n

end

end A065355.P6179604654936762676

noncomputable section

/-- A065355: a(n) = n! - Sum_{k=0..n-1} k!.

Offset 0, canonical program `A065355.P6179604654936762676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065355 (n : ℕ) : ℤ :=
  A065355.P6179604654936762676.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065654.P18056448944285858251

`(A065653(n)+A065653(n+1)-1)/2`
-/

namespace A065654.P18056448944285858251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065653 n + A065653 (n + 1) - 1 : ℚ) / 2

end

end A065654.P18056448944285858251

noncomputable section

/-- A065654: Fixed points for A065652, a permutation of the natural numbers.

Offset 0, canonical program `A065654.P18056448944285858251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065654 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065654.P18056448944285858251.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065733.P3623888993656221851

`A000093(n)²`
-/

namespace A065733.P3623888993656221851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n ^ 2

end

end A065733.P3623888993656221851

noncomputable section

/-- A065733: Largest square <= n^3.

Offset 0, canonical program `A065733.P3623888993656221851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065733 (n : ℕ) : ℤ :=
  A065733.P3623888993656221851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066096.P2651506377198414293

`A026351(n)-1`
-/

namespace A066096.P2651506377198414293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n - 1

end

end A066096.P2651506377198414293

noncomputable section

/-- A066096: a(n) = floor(n*phi), where phi = (1 + sqrt(5))/2.

Offset 0, canonical program `A066096.P2651506377198414293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066096 (n : ℕ) : ℤ :=
  A066096.P2651506377198414293.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066096.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066318.P3631376829345142844

`2*A000165(n)`
-/

namespace A066318.P3631376829345142844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000165 n

end

end A066318.P3631376829345142844

noncomputable section

/-- A066318: Number of necklaces with n labeled beads of 2 colors.

Offset 1, canonical program `A066318.P3631376829345142844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066318 (n : ℕ) : ℤ :=
  A066318.P3631376829345142844.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066370.P15573265195693973332

`A000217(A000217(A000217(A000217(n))))`
-/

namespace A066370.P15573265195693973332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 (A000217 (A000217 n).toNat).toNat).toNat

end

end A066370.P15573265195693973332

noncomputable section

/-- A066370: Quadruply triangular numbers.

Offset 0, canonical program `A066370.P15573265195693973332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066370 (n : ℕ) : ℤ :=
  A066370.P15573265195693973332.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066534.P11849088704617755458

`A010842(n)-2^n`
-/

namespace A066534.P11849088704617755458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 n - (2 ^ n : ℤ)

end

end A066534.P11849088704617755458

noncomputable section

/-- A066534: Total number of walks with length > 0 in the Hasse diagram of a Boolean algebra of order n.

Offset 0, canonical program `A066534.P11849088704617755458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066534 (n : ℕ) : ℤ :=
  A066534.P11849088704617755458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066643.P17762996301981300215

`A022844(n²)`
-/

namespace A066643.P17762996301981300215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n ^ 2)

end

end A066643.P17762996301981300215

noncomputable section

/-- A066643: a(n) = floor(Pi*n^2).

Offset 0, canonical program `A066643.P17762996301981300215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066643 (n : ℕ) : ℤ :=
  A066643.P17762996301981300215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067078.P13209061874876352852

`1+A003422(n)`
-/

namespace A067078.P13209061874876352852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003422 n

end

end A067078.P13209061874876352852

noncomputable section

/-- A067078: a(1) = 1, a(2) = 2, a(n) = (n-1)*a(n-1) - (n-2)*a(n-2).

Offset 1, canonical program `A067078.P13209061874876352852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067078 (n : ℕ) : ℤ :=
  A067078.P13209061874876352852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067962.P6906518905069184204

`a(n-1)*A001654(n+1)` with `a(0)=1`
-/

namespace A067962.P6906518905069184204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001654 (n + 1)

end

end A067962.P6906518905069184204

noncomputable section

/-- A067962: a(n) = F(n+2)*(Product_{i=1..n+1} F(i))^2 where F(i)=A000045(i) is the i-th Fibonacci number.

Offset 0, canonical program `A067962.P6906518905069184204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067962 (n : ℕ) : ℤ :=
  A067962.P6906518905069184204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068073.P13340883488754094545

`2-A056594(n)`
-/

namespace A068073.P13340883488754094545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A056594 n

end

end A068073.P13340883488754094545

noncomputable section

/-- A068073: Period 4 sequence [ 1, 2, 3, 2, ...].

Offset 0, canonical program `A068073.P13340883488754094545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068073 (n : ℕ) : ℤ :=
  A068073.P13340883488754094545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068181.P6110322210593194977

`A007661(6*n)`
-/

namespace A068181.P6110322210593194977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (6 * n)

end

end A068181.P6110322210593194977

noncomputable section

/-- A068181: a(n)=-1/b(2n) where 1/(e^y-e^(y/3))= sum(i=-1,inf,b(i)*y^i).

Offset 0, canonical program `A068181.P6110322210593194977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068181 (n : ℕ) : ℤ :=
  A068181.P6110322210593194977.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068219.P5528515115272368905

`3*A060819(n+1)`
-/

namespace A068219.P5528515115272368905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060819 (n + 1)

end

end A068219.P5528515115272368905

noncomputable section

/-- A068219: Denominators of coefficients in log(1+x)*(1+x)^(1/3) power series.

Offset 1, canonical program `A068219.P5528515115272368905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068219 (n : ℕ) : ℤ :=
  A068219.P5528515115272368905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068550.P11016822675318453931

`A003418(2*n)/A001405(2*n)`
-/

namespace A068550.P11016822675318453931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A001405 (2 * n) : ℚ)

end

end A068550.P11016822675318453931

noncomputable section

/-- A068550: a(n) = lcm{1, ..., 2n} / binomial(2n, n).

Offset 0, canonical program `A068550.P11016822675318453931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068550.P11016822675318453931.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068551.P17972203638214812081

`A045621(2*n)`
-/

namespace A068551.P17972203638214812081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n)

end

end A068551.P17972203638214812081

noncomputable section

/-- A068551: a(n) = 4^n - binomial(2*n,n).

Offset 0, canonical program `A068551.P17972203638214812081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068551 (n : ℕ) : ℤ :=
  A068551.P17972203638214812081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069038.P10199192467200808584

`a(n-1)+A014820(n-1)+A014820(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A069038.P10199192467200808584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A014820 (n - 1) + A014820 (n - 2)

end

end A069038.P10199192467200808584

noncomputable section

/-- A069038: Expansion of g.f. x*(1+x)^4/(1-x)^6.

Offset 0, canonical program `A069038.P10199192467200808584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069038 (n : ℕ) : ℤ :=
  A069038.P10199192467200808584.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069475.P16115383178570612089

`120*A056107(n+2)`
-/

namespace A069475.P16115383178570612089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  120 * A056107 (n + 2)

end

end A069475.P16115383178570612089

noncomputable section

/-- A069475: First differences of A069474, successive differences of (n+1)^6-n^6.

Offset 0, canonical program `A069475.P16115383178570612089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069475 (n : ℕ) : ℤ :=
  A069475.P16115383178570612089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070004.P1855053541036505447

`5*A029744(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070004.P1855053541036505447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A029744 (n + 1)

end

end A070004.P1855053541036505447

noncomputable section

/-- A070004: Numbers of the form 5*2^n or 5*3*2^n; a(n) = 5*A029744(n).

Offset 1, canonical program `A070004.P1855053541036505447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070004 (n : ℕ) : ℤ :=
  A070004.P1855053541036505447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070198.P18115024891889206898

`A003418(n+1)-1`
-/

namespace A070198.P18115024891889206898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - 1

end

end A070198.P18115024891889206898

noncomputable section

/-- A070198: Smallest nonnegative number m such that m == i (mod i+1) for all 1 <= i <= n.

Offset 0, canonical program `A070198.P18115024891889206898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070198 (n : ℕ) : ℤ :=
  A070198.P18115024891889206898.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070813.P9164513717850686324

`A000215(n)-3`
-/

namespace A070813.P9164513717850686324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000215 n - 3

end

end A070813.P9164513717850686324

noncomputable section

/-- A070813: Fermat primes minus 3.

Offset 1, canonical program `A070813.P9164513717850686324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070813 (n : ℕ) : ℤ :=
  A070813.P9164513717850686324.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071007.P3643576512482097279

`A057693(n)-A000085(n)`
-/

namespace A071007.P3643576512482097279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057693 n - A000085 n

end

end A071007.P3643576512482097279

noncomputable section

/-- A071007: Number of permutations in the symmetric group S_n such that the maximal cycle has length exactly 3.

Offset 0, canonical program `A071007.P3643576512482097279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071007 (n : ℕ) : ℤ :=
  A071007.P3643576512482097279.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071028.P9767808195763007383

`(1+(-1)^A028392(n))/2`
-/

namespace A071028.P9767808195763007383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1 : ℚ) ^ (A028392 n : ℤ)) / 2

end

end A071028.P9767808195763007383

noncomputable section

/-- A071028: Triangle read by rows giving successive states of cellular automaton generated by "Rule 50".

Offset 0, canonical program `A071028.P9767808195763007383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071028 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071028.P9767808195763007383.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071232.P17086031509511629369

`A000217(n^3)`
-/

namespace A071232.P17086031509511629369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 3)

end

end A071232.P17086031509511629369

noncomputable section

/-- A071232: a(n) = (n^6 + n^3)/2.

Offset 0, canonical program `A071232.P17086031509511629369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071232 (n : ℕ) : ℤ :=
  A071232.P17086031509511629369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071579.P14686585245428644465

`A001353(2^n)`
-/

namespace A071579.P14686585245428644465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (2 ^ n)

end

end A071579.P14686585245428644465

noncomputable section

/-- A071579: a(n) = 2*a(n-1)*A002812(n-1), starting a(0)=1.

Offset 0, canonical program `A071579.P14686585245428644465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071579 (n : ℕ) : ℤ :=
  A071579.P14686585245428644465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071725.P14742020930531540904

`6*(n²+1)/((n+2)*(n+3))*A000108(n)`
-/

namespace A071725.P14742020930531540904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n ^ 2 + 1 : ℚ) / ((n + 2) * (n + 3) : ℚ) * (A000108 n : ℚ))

end

end A071725.P14742020930531540904

noncomputable section

/-- A071725: Expansion of (1+x^2*C^4)*C, where C = (1 - sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071725.P14742020930531540904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071725.P14742020930531540904.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071797.P11056123776626041658

`1+A053186(n)`
-/

namespace A071797.P11056123776626041658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053186 n

end

end A071797.P11056123776626041658

noncomputable section

/-- A071797: Restart counting after each new odd integer (a fractal sequence).

Offset 1, canonical program `A071797.P11056123776626041658`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071797 (n : ℕ) : ℤ :=
  A071797.P11056123776626041658.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071930.P4567808858666721799

`2*A003674(n)`
-/

namespace A071930.P4567808858666721799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003674 n

end

end A071930.P4567808858666721799

noncomputable section

/-- A071930: Number of words of length 2n in the two letters s and t that reduce to the identity 1 by using the relations ssTT=1, ststSS=1 and ststTT=1, where S and T are the inverses of s and t, respectively (i.e., sS=1 and tT=1). The generators s and t and the three stated relations generate the quaternion group Q4.

Offset 1, canonical program `A071930.P4567808858666721799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071930 (n : ℕ) : ℤ :=
  A071930.P4567808858666721799.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072290.P3902387421664433821

`n+1+A053541(n+1)-A002275(n+1)`
-/

namespace A072290.P3902387421664433821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 + A053541 (n + 1)) - A002275 (n + 1)

end

end A072290.P3902387421664433821

noncomputable section

/-- A072290: Number of digits in the decimal expansion of the Champernowne constant that must be scanned to encounter all n-digit strings.

Offset 0, canonical program `A072290.P3902387421664433821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072290 (n : ℕ) : ℤ :=
  A072290.P3902387421664433821.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073446.P4818483135559375804

`A000032(n)*A001644(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073446.P4818483135559375804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A001644 n

end

end A073446.P4818483135559375804

noncomputable section

/-- A073446: Product L(n)*S(n), where L(n) are Lucas numbers and S(n) are Lucas 3-step numbers = A000032(n) * A001644(n).

Offset 0, canonical program `A073446.P4818483135559375804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073446 (n : ℕ) : ℤ :=
  A073446.P4818483135559375804.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073591.P4345016296114240383

`A000522(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073591.P4345016296114240383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + 1

end

end A073591.P4345016296114240383

noncomputable section

/-- A073591: a(n) = A000522(n) + 1.

Offset 0, canonical program `A073591.P4345016296114240383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073591 (n : ℕ) : ℤ :=
  A073591.P4345016296114240383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073702.P9028840457225624416

`2*A001644(n)+A073496(n)`
-/

namespace A073702.P9028840457225624416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001644 n + A073496 n

end

end A073702.P9028840457225624416

noncomputable section

/-- A073702: a(n) = A073145(n)^2.

Offset 0, canonical program `A073702.P9028840457225624416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073702 (n : ℕ) : ℤ :=
  A073702.P9028840457225624416.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073888.P14403131331629854041

`2^A058798(n)`
-/

namespace A073888.P14403131331629854041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A058798 n : ℤ)

end

end A073888.P14403131331629854041

noncomputable section

/-- A073888: a(1) = 1, a(2) = 2; a(n+1) = a(n)^n/a(n-1).

Offset 1, canonical program `A073888.P14403131331629854041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073888.P14403131331629854041.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074058.P13514722203274937124

`(-1)^n*A073937(n)`
-/

namespace A074058.P13514722203274937124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A073937 n

end

end A074058.P13514722203274937124

noncomputable section

/-- A074058: Reflected tetranacci numbers A073817.

Offset 0, canonical program `A074058.P13514722203274937124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074058 (n : ℕ) : ℤ :=
  A074058.P13514722203274937124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074400.P16312391460013478761

`2*A000203(n+1)`
-/

namespace A074400.P16312391460013478761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1)

end

end A074400.P16312391460013478761

noncomputable section

/-- A074400: Sum of the even divisors of 2n.

Offset 1, canonical program `A074400.P16312391460013478761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074400 (n : ℕ) : ℤ :=
  A074400.P16312391460013478761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074941.P8071064073902629458

`A010872(A000203(n+1))`
-/

namespace A074941.P8071064073902629458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000203 (n + 1)).toNat

end

end A074941.P8071064073902629458

noncomputable section

/-- A074941: a(n) = sigma(n) mod 3.

Offset 1, canonical program `A074941.P8071064073902629458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074941 (n : ℕ) : ℤ :=
  A074941.P8071064073902629458.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075059.P13005941669399506084

`1+A003418(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075059.P13005941669399506084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003418 n

end

end A075059.P13005941669399506084

noncomputable section

/-- A075059: a(n) = 1 + lcm(1, 2, ..., n) = 1 + A003418(n).

Offset 0, canonical program `A075059.P13005941669399506084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075059 (n : ℕ) : ℤ :=
  A075059.P13005941669399506084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075150.P6709441431228982623

`(-1)^n*A001254(n)`
-/

namespace A075150.P6709441431228982623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001254 n

end

end A075150.P6709441431228982623

noncomputable section

/-- A075150: a(n) = L(n)*C(n), L(n)=Lucas numbers (A000032), C(n)=reflected Lucas numbers (see comment to A061084).

Offset 0, canonical program `A075150.P6709441431228982623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075150 (n : ℕ) : ℤ :=
  A075150.P6709441431228982623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075411.P3946849046165392203

`A002276(n)²`
-/

namespace A075411.P3946849046165392203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n ^ 2

end

end A075411.P3946849046165392203

noncomputable section

/-- A075411: Squares of A002276.

Offset 0, canonical program `A075411.P3946849046165392203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075411 (n : ℕ) : ℤ :=
  A075411.P3946849046165392203.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075412.P250540107073247414

`A002277(n)²`
-/

namespace A075412.P250540107073247414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n ^ 2

end

end A075412.P250540107073247414

noncomputable section

/-- A075412: Squares of A002277.

Offset 0, canonical program `A075412.P250540107073247414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075412 (n : ℕ) : ℤ :=
  A075412.P250540107073247414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075413.P15256953375010345913

`A002278(n)²`
-/

namespace A075413.P15256953375010345913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n ^ 2

end

end A075413.P15256953375010345913

noncomputable section

/-- A075413: Squares of A002278.

Offset 0, canonical program `A075413.P15256953375010345913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075413 (n : ℕ) : ℤ :=
  A075413.P15256953375010345913.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075414.P18308230916955902644

`25*A002275(n)²`
-/

namespace A075414.P18308230916955902644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A002275 n ^ 2

end

end A075414.P18308230916955902644

noncomputable section

/-- A075414: Squares of A002279: a(n) = (5*(10^n - 1)/9)^2.

Offset 0, canonical program `A075414.P18308230916955902644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075414 (n : ℕ) : ℤ :=
  A075414.P18308230916955902644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075415.P11021567169670253529

`A002283(n)*A002278(n)`
-/

namespace A075415.P11021567169670253529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n * A002278 n

end

end A075415.P11021567169670253529

noncomputable section

/-- A075415: Squares of A002280 or numbers (666...6)^2.

Offset 0, canonical program `A075415.P11021567169670253529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075415 (n : ℕ) : ℤ :=
  A075415.P11021567169670253529.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075416.P12867209049900702389

`A002281(n)²`
-/

namespace A075416.P12867209049900702389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n ^ 2

end

end A075416.P12867209049900702389

noncomputable section

/-- A075416: Squares of A002281.

Offset 0, canonical program `A075416.P12867209049900702389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075416 (n : ℕ) : ℤ :=
  A075416.P12867209049900702389.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075417.P7598423870228793073

`64*A002275(n)²`
-/

namespace A075417.P7598423870228793073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A002275 n ^ 2

end

end A075417.P7598423870228793073

noncomputable section

/-- A075417: Squares of A002282: a(n) = (8*(10^n - 1)/9)^2.

Offset 0, canonical program `A075417.P7598423870228793073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075417 (n : ℕ) : ℤ :=
  A075417.P7598423870228793073.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076035.P12093958128708761214

`(16*a(n-1)-4*A000108(n-1))/3` with `a(0)=1`
-/

namespace A076035.P12093958128708761214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 * a (n - 1) - (4 * A000108 (n - 1) : ℚ)) / 3

end

end A076035.P12093958128708761214

noncomputable section

/-- A076035: Expansion of g.f. 1/(1-4*x*C) where C = (1/2-1/2*(1-4*x)^(1/2))/x = g.f. for Catalan numbers A000108.

Offset 0, canonical program `A076035.P12093958128708761214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076035.P12093958128708761214.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076036.P13911866391085704958

`(25*a(n-1)-5*A000108(n-1))/4` with `a(0)=1`
-/

namespace A076036.P13911866391085704958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (25 * a (n - 1) - (5 * A000108 (n - 1) : ℚ)) / 4

end

end A076036.P13911866391085704958

noncomputable section

/-- A076036: G.f.: 1/(1 - 5*x*C(x)), where C(x) = (1 - sqrt(1 - 4*x))/(2*x) = g.f. for the Catalan numbers A000108.

Offset 0, canonical program `A076036.P13911866391085704958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076036 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076036.P13911866391085704958.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076036.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076040.P12163343658986531048

`(-1)^n*A003462(n)`
-/

namespace A076040.P12163343658986531048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003462 n

end

end A076040.P12163343658986531048

noncomputable section

/-- A076040: a(n) = (-1)^n * (3^n - 1)/2.

Offset 0, canonical program `A076040.P12163343658986531048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076040 (n : ℕ) : ℤ :=
  A076040.P12163343658986531048.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076312.P9189460286517996944

`A059995(n)+2*A010879(n)`
-/

namespace A076312.P9189460286517996944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + 2 * A010879 n

end

end A076312.P9189460286517996944

noncomputable section

/-- A076312: a(n) = floor(n/10) + 2*(n mod 10).

Offset 0, canonical program `A076312.P9189460286517996944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076312 (n : ℕ) : ℤ :=
  A076312.P9189460286517996944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076448.P12521671601274369980

`A000051(A005126(n))`
-/

namespace A076448.P12521671601274369980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A005126 n).toNat

end

end A076448.P12521671601274369980

noncomputable section

/-- A076448: Numbers one more than a power of 2 which are the sum of n consecutive numbers one more than a power of 2.

Offset 2, canonical program `A076448.P12521671601274369980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076448 (n : ℕ) : ℤ :=
  A076448.P12521671601274369980.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076729.P4306103095739859432

`2^n*A034430(n)`
-/

namespace A076729.P4306103095739859432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034430 n

end

end A076729.P4306103095739859432

noncomputable section

/-- A076729: a(n) = A001147(n+1) * Integral_{x=0..1} (1 + x^2)^n dx.

Offset 0, canonical program `A076729.P4306103095739859432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076729 (n : ℕ) : ℤ :=
  A076729.P4306103095739859432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076936.P14071532336239768322

`2^A014682(n)`
-/

namespace A076936.P14071532336239768322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014682 n : ℤ)

end

end A076936.P14071532336239768322

noncomputable section

/-- A076936: a(1) = 1; then the smallest number different from its predecessor such that the n-th partial product is an n-th power.

Offset 1, canonical program `A076936.P14071532336239768322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076936.P14071532336239768322.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077115.P827730253123068802

`A048761(n^3)`
-/

namespace A077115.P827730253123068802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (n ^ 3)

end

end A077115.P827730253123068802

noncomputable section

/-- A077115: Least integer square >= n^3.

Offset 0, canonical program `A077115.P827730253123068802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077115 (n : ℕ) : ℤ :=
  A077115.P827730253123068802.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077120.P9632200324540338006

`A000578(n)*A077118(n)`
-/

namespace A077120.P9632200324540338006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A077118 n

end

end A077120.P9632200324540338006

noncomputable section

/-- A077120: n^3 times nearest integer square to n^3.

Offset 0, canonical program `A077120.P9632200324540338006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077120 (n : ℕ) : ℤ :=
  A077120.P9632200324540338006.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077261.P5826533451288904176

`5*A077260(n)`
-/

namespace A077261.P5826533451288904176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A077260 n

end

end A077261.P5826533451288904176

noncomputable section

/-- A077261: Triangular numbers that are 5 times another triangular number.

Offset 0, canonical program `A077261.P5826533451288904176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077261 (n : ℕ) : ℤ :=
  A077261.P5826533451288904176.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077855.P16978286041471467054

`A005251(n+4)-1`
-/

namespace A077855.P16978286041471467054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 4) - 1

end

end A077855.P16978286041471467054

noncomputable section

/-- A077855: Expansion of 1/((1-2*x+x^2-x^3)*(1-x)).

Offset 0, canonical program `A077855.P16978286041471467054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077855 (n : ℕ) : ℤ :=
  A077855.P16978286041471467054.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077916.P1009693199309509445

`((-1)^n*A001906(n+2)+n+2)/5`
-/

namespace A077916.P1009693199309509445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A001906 (n + 2) + (n + 2 : ℤ) : ℚ) / 5

end

end A077916.P1009693199309509445

noncomputable section

/-- A077916: Expansion of (1-x)^(-1)/(1 + 2*x - 2*x^2 - x^3).

Offset 0, canonical program `A077916.P1009693199309509445`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077916.P1009693199309509445.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077920.P17038449654152981386

`(-1)^n*A124400(n)`
-/

namespace A077920.P17038449654152981386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124400 n

end

end A077920.P17038449654152981386

noncomputable section

/-- A077920: Expansion of (1-x)^(-1)/(1+2*x-x^2-x^3).

Offset 0, canonical program `A077920.P17038449654152981386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077920 (n : ℕ) : ℤ :=
  A077920.P17038449654152981386.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077925.P7355982550096922997

`(-1)^n*A001045(n+1)`
-/

namespace A077925.P7355982550096922997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001045 (n + 1)

end

end A077925.P7355982550096922997

noncomputable section

/-- A077925: Expansion of 1/((1-x)*(1+2*x)).

Offset 0, canonical program `A077925.P7355982550096922997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077925 (n : ℕ) : ℤ :=
  A077925.P7355982550096922997.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077970.P18311979326043157804

`(-1)^n*A077946(n)`
-/

namespace A077970.P18311979326043157804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077946 n

end

end A077970.P18311979326043157804

noncomputable section

/-- A077970: Expansion of 1/(1+x-2*x^2+2*x^3).

Offset 0, canonical program `A077970.P18311979326043157804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077970 (n : ℕ) : ℤ :=
  A077970.P18311979326043157804.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077971.P621348120051302339

`(-1)^n*A077948(n)`
-/

namespace A077971.P621348120051302339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077948 n

end

end A077971.P621348120051302339

noncomputable section

/-- A077971: Expansion of 1/(1+x-x^2-2*x^3).

Offset 0, canonical program `A077971.P621348120051302339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077971 (n : ℕ) : ℤ :=
  A077971.P621348120051302339.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077971.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077972.P1034555635209073234

`(-1)^n*A077947(n)`
-/

namespace A077972.P1034555635209073234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077947 n

end

end A077972.P1034555635209073234

noncomputable section

/-- A077972: Expansion of 1/(1+x-x^2+2*x^3).

Offset 0, canonical program `A077972.P1034555635209073234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077972 (n : ℕ) : ℤ :=
  A077972.P1034555635209073234.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077973.P2916018792042832954

`(-1)^n*A077950(n)`
-/

namespace A077973.P2916018792042832954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077950 n

end

end A077973.P2916018792042832954

noncomputable section

/-- A077973: Expansion of 1/(1+x-2*x^3).

Offset 0, canonical program `A077973.P2916018792042832954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077973 (n : ℕ) : ℤ :=
  A077973.P2916018792042832954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077977.P9639422490575776743

`(-1)^n*A077956(n)`
-/

namespace A077977.P9639422490575776743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077956 n

end

end A077977.P9639422490575776743

noncomputable section

/-- A077977: Expansion of 1/(1+x+2*x^2-2*x^3).

Offset 0, canonical program `A077977.P9639422490575776743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077977 (n : ℕ) : ℤ :=
  A077977.P9639422490575776743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077978.P14287634323868294852

`(-1)^n*A077955(n)`
-/

namespace A077978.P14287634323868294852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077955 n

end

end A077978.P14287634323868294852

noncomputable section

/-- A077978: Expansion of 1/(1+x+2*x^2-x^3).

Offset 0, canonical program `A077978.P14287634323868294852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077978 (n : ℕ) : ℤ :=
  A077978.P14287634323868294852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077979.P13570993867329531252

`(-1)^n*A077954(n)`
-/

namespace A077979.P13570993867329531252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077954 n

end

end A077979.P13570993867329531252

noncomputable section

/-- A077979: Expansion of 1/(1+x+2*x^2+x^3).

Offset 0, canonical program `A077979.P13570993867329531252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077979 (n : ℕ) : ℤ :=
  A077979.P13570993867329531252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077979.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077981.P7271871498611132112

`(-1)^n*A077937(n)`
-/

namespace A077981.P7271871498611132112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077937 n

end

end A077981.P7271871498611132112

noncomputable section

/-- A077981: Expansion of 1/(1+2*x-2*x^2-2*x^3).

Offset 0, canonical program `A077981.P7271871498611132112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077981 (n : ℕ) : ℤ :=
  A077981.P7271871498611132112.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077983.P10993083338520518528

`(-1)^n*A077936(n)`
-/

namespace A077983.P10993083338520518528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077936 n

end

end A077983.P10993083338520518528

noncomputable section

/-- A077983: Expansion of 1/(1 + 2*x - 2*x^2 + x^3).

Offset 0, canonical program `A077983.P10993083338520518528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077983 (n : ℕ) : ℤ :=
  A077983.P10993083338520518528.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077984.P450009908893640569

`(-1)^n*A077835(n)`
-/

namespace A077984.P450009908893640569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077835 n

end

end A077984.P450009908893640569

noncomputable section

/-- A077984: Expansion of 1/(1+2*x-2*x^2+2*x^3).

Offset 0, canonical program `A077984.P450009908893640569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077984 (n : ℕ) : ℤ :=
  A077984.P450009908893640569.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077985.P770338361924418553

`(-1)^n*A000129(n+1)`
-/

namespace A077985.P770338361924418553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000129 (n + 1)

end

end A077985.P770338361924418553

noncomputable section

/-- A077985: Expansion of 1/(1 + 2*x - x^2).

Offset 0, canonical program `A077985.P770338361924418553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077985 (n : ℕ) : ℤ :=
  A077985.P770338361924418553.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077986.P14142602793932290537

`(-1)^n*A077939(n)`
-/

namespace A077986.P14142602793932290537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077939 n

end

end A077986.P14142602793932290537

noncomputable section

/-- A077986: Expansion of 1/(1 + 2*x - x^2 + x^3).

Offset 0, canonical program `A077986.P14142602793932290537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077986 (n : ℕ) : ℤ :=
  A077986.P14142602793932290537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077987.P15687928146739800731

`(-1)^n*A077938(n)`
-/

namespace A077987.P15687928146739800731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077938 n

end

end A077987.P15687928146739800731

noncomputable section

/-- A077987: Expansion of 1/(1+2*x-x^2+2*x^3).

Offset 0, canonical program `A077987.P15687928146739800731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077987 (n : ℕ) : ℤ :=
  A077987.P15687928146739800731.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077988.P7988391642770852298

`(-1)^n*A077940(n)`
-/

namespace A077988.P7988391642770852298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077940 n

end

end A077988.P7988391642770852298

noncomputable section

/-- A077988: Expansion of 1/(1+2*x-2*x^3).

Offset 0, canonical program `A077988.P7988391642770852298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077988 (n : ℕ) : ℤ :=
  A077988.P7988391642770852298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077989.P7459463835515139854

`(-1)^n*A077942(n)`
-/

namespace A077989.P7459463835515139854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077942 n

end

end A077989.P7459463835515139854

noncomputable section

/-- A077989: Expansion of 1/(1+2*x+x^2-2*x^3).

Offset 0, canonical program `A077989.P7459463835515139854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077989 (n : ℕ) : ℤ :=
  A077989.P7459463835515139854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077993.P10229765177360854973

`(-1)^n*A077943(n)`
-/

namespace A077993.P10229765177360854973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077943 n

end

end A077993.P10229765177360854973

noncomputable section

/-- A077993: Expansion of 1/(1+2*x+2*x^2+2*x^3).

Offset 0, canonical program `A077993.P10229765177360854973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077993 (n : ℕ) : ℤ :=
  A077993.P10229765177360854973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078038.P5798361417467064924

`(-1)^n*(A006053(n+1)+A006053(n+2))`
-/

namespace A078038.P5798361417467064924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A006053 (n + 1) + A006053 (n + 2))

end

end A078038.P5798361417467064924

noncomputable section

/-- A078038: Expansion of (1-x)/(1+x-2*x^2-x^3).

Offset 0, canonical program `A078038.P5798361417467064924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078038 (n : ℕ) : ℤ :=
  A078038.P5798361417467064924.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078039.P11673358759038158343

`(-1)^n*A141015(n+1)`
-/

namespace A078039.P11673358759038158343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A141015 (n + 1)

end

end A078039.P11673358759038158343

noncomputable section

/-- A078039: Expansion of (1 - x)/(1 + x - 2*x^2 + x^3).

Offset 0, canonical program `A078039.P11673358759038158343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078039 (n : ℕ) : ℤ :=
  A078039.P11673358759038158343.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078427.P12885231778869863992

`45*A053541(n+1)+1`
-/

namespace A078427.P12885231778869863992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A053541 (n + 1) + 1

end

end A078427.P12885231778869863992

noncomputable section

/-- A078427: Sum of all the decimal digits of numbers from 1 to 10^n.

Offset 1, canonical program `A078427.P12885231778869863992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078427 (n : ℕ) : ℤ :=
  A078427.P12885231778869863992.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078491.P15167737144172905274

`A003418(A000108(n))`
-/

namespace A078491.P15167737144172905274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000108 n).toNat

end

end A078491.P15167737144172905274

noncomputable section

/-- A078491: a(n) = lcm(1..Catalan(n)).

Offset 0, canonical program `A078491.P15167737144172905274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078491 (n : ℕ) : ℤ :=
  A078491.P15167737144172905274.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078705.P17275305234142086416

`A000196(A000203(n+1))`
-/

namespace A078705.P17275305234142086416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000203 (n + 1)).toNat

end

end A078705.P17275305234142086416

noncomputable section

/-- A078705: Integer part of the square root of sigma(n).

Offset 1, canonical program `A078705.P17275305234142086416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078705 (n : ℕ) : ℤ :=
  A078705.P17275305234142086416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079034.P6997679153751098089

`A002415(n)+1`
-/

namespace A079034.P6997679153751098089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + 1

end

end A079034.P6997679153751098089

noncomputable section

/-- A079034: Determinant of M(n), the n X n matrix defined by m(i,i) = 1, m(i,j) = i-j.

Offset 0, canonical program `A079034.P6997679153751098089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079034 (n : ℕ) : ℤ :=
  A079034.P6997679153751098089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079189.P14075942982392423378

`A002489(n)-A079186(n)`
-/

namespace A079189.P14075942982392423378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002489 n - A079186 n

end

end A079189.P14075942982392423378

noncomputable section

/-- A079189: Number of anti-commutative closed binary operations (groupoids) on a set of order n.

Offset 0, canonical program `A079189.P14075942982392423378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079189 (n : ℕ) : ℤ :=
  A079189.P14075942982392423378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079291.P10024746228279506186

`A000129(n)²`
-/

namespace A079291.P10024746228279506186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2

end

end A079291.P10024746228279506186

noncomputable section

/-- A079291: Squares of Pell numbers.

Offset 0, canonical program `A079291.P10024746228279506186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079291 (n : ℕ) : ℤ :=
  A079291.P10024746228279506186.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079472.P15749559243718195313

`2*A001654(n)`
-/

namespace A079472.P15749559243718195313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001654 n

end

end A079472.P15749559243718195313

noncomputable section

/-- A079472: Number of perfect matchings on an n X n L-shaped graph.

Offset 1, canonical program `A079472.P15749559243718195313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079472 (n : ℕ) : ℤ :=
  A079472.P15749559243718195313.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079613.P8290668010841187312

`A000045(A007283(n))`
-/

namespace A079613.P8290668010841187312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A007283 n).toNat

end

end A079613.P8290668010841187312

noncomputable section

/-- A079613: a(n) = F(3*2^n) where F(k) denotes the k-th Fibonacci number.

Offset 0, canonical program `A079613.P8290668010841187312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079613 (n : ℕ) : ℤ :=
  A079613.P8290668010841187312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079757.P11029413421237544602

`A057079(2*n+1)-(-1)^floor((2*n+1)/2)`
-/

namespace A079757.P11029413421237544602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) : ℚ) - (-1 : ℚ) ^ (⌊(2 * n + 1 : ℚ) / 2⌋ : ℤ)

end

end A079757.P11029413421237544602

noncomputable section

/-- A079757: Periodic sequence 1, 0, -2, 3, -2, 0, ...

Offset 0, canonical program `A079757.P11029413421237544602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079757.P11029413421237544602.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080041.P13302301843660589265

`A080040(n)-(1+(-1)^n)/2`
-/

namespace A080041.P13302301843660589265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A080041.P13302301843660589265

noncomputable section

/-- A080041: a(n) = floor((1+sqrt(3))^n).

Offset 0, canonical program `A080041.P13302301843660589265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080041 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080041.P13302301843660589265.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080043.P6690340171102988928

`A080042(n)-(1+(-1)^n)/2`
-/

namespace A080043.P6690340171102988928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080042 n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A080043.P6690340171102988928

noncomputable section

/-- A080043: a(n)=floor((2+sqrt(7))^n).

Offset 0, canonical program `A080043.P6690340171102988928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080043.P6690340171102988928.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080143.P15882219857944714637

`(3*A027941(n)+7*A001654(n))/2`
-/

namespace A080143.P15882219857944714637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A027941 n + 7 * A001654 n : ℚ) / 2

end

end A080143.P15882219857944714637

noncomputable section

/-- A080143: a(n) = F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 - F(4) if n even, F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 if n odd, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A080143.P15882219857944714637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080143.P15882219857944714637.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080144.P8666941854186962833

`(5*A027941(n)+11*A001654(n))/2`
-/

namespace A080144.P8666941854186962833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A027941 n + 11 * A001654 n : ℚ) / 2

end

end A080144.P8666941854186962833

noncomputable section

/-- A080144: a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 if n odd, a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 - F(5) if n even, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A080144.P8666941854186962833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080144.P8666941854186962833.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080275.P6619334903667207793

`(-1)^n*(1-A002378(n)-A002415(n))`
-/

namespace A080275.P6619334903667207793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (1 - A002378 n - A002415 n)

end

end A080275.P6619334903667207793

noncomputable section

/-- A080275: a(n)=(-1)^n(1 - (1/12)n(n + 1)(12 - n + n^2)).

Offset 0, canonical program `A080275.P6619334903667207793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080275 (n : ℕ) : ℤ :=
  A080275.P6619334903667207793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080343.P17491293385629431961

`A023969(2*n)`
-/

namespace A080343.P17491293385629431961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (2 * n)

end

end A080343.P17491293385629431961

noncomputable section

/-- A080343: a(n) = round(sqrt(2*n)) - floor(sqrt(2*n)).

Offset 0, canonical program `A080343.P17491293385629431961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080343 (n : ℕ) : ℤ :=
  A080343.P17491293385629431961.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080956.P12689175688767201437

`n+1-A000217(n)`
-/

namespace A080956.P12689175688767201437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 n

end

end A080956.P12689175688767201437

noncomputable section

/-- A080956: a(n) = (n+1)*(2-n)/2.

Offset 0, canonical program `A080956.P12689175688767201437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080956 (n : ℕ) : ℤ :=
  A080956.P12689175688767201437.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080978.P8726104547884348525

`2*A006046(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080978.P8726104547884348525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006046 n + 1

end

end A080978.P8726104547884348525

noncomputable section

/-- A080978: a(n) = 2*A006046(n) + 1.

Offset 0, canonical program `A080978.P8726104547884348525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080978 (n : ℕ) : ℤ :=
  A080978.P8726104547884348525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081072.P6725620215786614116

`3+A033888(n)`
-/

namespace A081072.P6725620215786614116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A033888 n

end

end A081072.P6725620215786614116

noncomputable section

/-- A081072: a(n) = Fibonacci(4*n) + 3, or Fibonacci(2*n+2)*Lucas(2*n-2).

Offset 0, canonical program `A081072.P6725620215786614116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081072 (n : ℕ) : ℤ :=
  A081072.P6725620215786614116.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081293.P4681464809512952339

`A000108(n)+A014137(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081293.P4681464809512952339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A014137 n

end

end A081293.P4681464809512952339

noncomputable section

/-- A081293: a(n) = A000108(n) + A014137(n).

Offset 0, canonical program `A081293.P4681464809512952339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081293 (n : ℕ) : ℤ :=
  A081293.P4681464809512952339.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081341.P1992776411308600874

`A000244(n)*A011782(n)`
-/

namespace A081341.P1992776411308600874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A011782 n

end

end A081341.P1992776411308600874

noncomputable section

/-- A081341: Expansion of exp(3*x)*cosh(3*x).

Offset 0, canonical program `A081341.P1992776411308600874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081341 (n : ℕ) : ℤ :=
  A081341.P1992776411308600874.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081459.P12265014281963210612

`A001077(2^n)`
-/

namespace A081459.P12265014281963210612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (2 ^ n)

end

end A081459.P12265014281963210612

noncomputable section

/-- A081459: Consider the mapping f(r) = (1/2)*(r + N/r) from rationals to rationals where N = 5. Starting with r = 2 and applying the mapping to each new (reduced) rational number gives 2, 9/4, 161/72, 51841/23184, ..., tending to N^(1/2). Sequence gives values of the numerators.

Offset 1, canonical program `A081459.P12265014281963210612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081459 (n : ℕ) : ℤ :=
  A081459.P12265014281963210612.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081460.P10333014637724632675

`A001076(2^n)`
-/

namespace A081460.P10333014637724632675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (2 ^ n)

end

end A081460.P10333014637724632675

noncomputable section

/-- A081460: Consider the mapping f(r) = (1/2)*(r + N/r) from rationals to rationals where N = 5. Starting with a = 2 and applying the mapping to each new (reduced) rational number gives 2, 9/4, 161/72, 51841/23184, ..., tending to N^(1/2). Sequence gives values of the denominators.

Offset 1, canonical program `A081460.P10333014637724632675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081460 (n : ℕ) : ℤ :=
  A081460.P10333014637724632675.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081601.P7694742959722061994

`3*A005836(n+1)`
-/

namespace A081601.P7694742959722061994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005836 (n + 1)

end

end A081601.P7694742959722061994

noncomputable section

/-- A081601: Numbers m such that 3 does not divide Sum_{k=0..m} binomial(2k,k) = A006134(m).

Offset 1, canonical program `A081601.P7694742959722061994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081601 (n : ℕ) : ℤ :=
  A081601.P7694742959722061994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081666.P9890842432522954687

`n*3^(n-1)+A081567(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081666.P9890842432522954687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (A081567 n : ℚ)

end

end A081666.P9890842432522954687

noncomputable section

/-- A081666: n*3^(n-1)+A081567(n).

Offset 0, canonical program `A081666.P9890842432522954687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081666.P9890842432522954687.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081667.P13582439689550870142

`A000045(A000217(n+1))`
-/

namespace A081667.P13582439689550870142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000217 (n + 1)).toNat

end

end A081667.P13582439689550870142

noncomputable section

/-- A081667: a(n) = Fibonacci(binomial(n+2,2)).

Offset 0, canonical program `A081667.P13582439689550870142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081667 (n : ℕ) : ℤ :=
  A081667.P13582439689550870142.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081827.P14419077917004219734

`A005185(n+2)-A005185(n+1)`
-/

namespace A081827.P14419077917004219734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 2) - A005185 (n + 1)

end

end A081827.P14419077917004219734

noncomputable section

/-- A081827: Successive differences of Hofstadter Q-sequence.

Offset 1, canonical program `A081827.P14419077917004219734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081827 (n : ℕ) : ℤ :=
  A081827.P14419077917004219734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082032.P9227803161975649599

`2^n*A000522(n)`
-/

namespace A082032.P9227803161975649599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000522 n

end

end A082032.P9227803161975649599

noncomputable section

/-- A082032: Expansion of e.g.f.: exp(2*x)/(1-2*x).

Offset 0, canonical program `A082032.P9227803161975649599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082032 (n : ℕ) : ℤ :=
  A082032.P9227803161975649599.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082365.P5652296555165269021

`4*A015565(n)+A015565(n+1)`
-/

namespace A082365.P5652296555165269021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A015565 n + A015565 (n + 1)

end

end A082365.P5652296555165269021

noncomputable section

/-- A082365: A Jacobsthal number sequence.

Offset 0, canonical program `A082365.P5652296555165269021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082365 (n : ℕ) : ℤ :=
  A082365.P5652296555165269021.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082412.P15403250840934277229

`2^n*A001045(2*n+1)`
-/

namespace A082412.P15403250840934277229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001045 (2 * n + 1)

end

end A082412.P15403250840934277229

noncomputable section

/-- A082412: a(n) = (2*8^n + 2^n)/3.

Offset 0, canonical program `A082412.P15403250840934277229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082412 (n : ℕ) : ℤ :=
  A082412.P15403250840934277229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082491.P14553396994209066988

`n!*A000166(n)`
-/

namespace A082491.P14553396994209066988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000166 n

end

end A082491.P14553396994209066988

noncomputable section

/-- A082491: a(n) = n! * d(n), where n! = factorial numbers (A000142), d(n) = subfactorial numbers (A000166).

Offset 0, canonical program `A082491.P14553396994209066988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082491 (n : ℕ) : ℤ :=
  A082491.P14553396994209066988.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082758.P14985198981559143875

`A002426(2*n)`
-/

namespace A082758.P14985198981559143875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (2 * n)

end

end A082758.P14985198981559143875

noncomputable section

/-- A082758: Sum of the squares of the trinomial coefficients (A027907).

Offset 0, canonical program `A082758.P14985198981559143875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082758 (n : ℕ) : ℤ :=
  A082758.P14985198981559143875.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082762.P2252837519886206108

`2^n*A002878(n)`
-/

namespace A082762.P2252837519886206108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002878 n

end

end A082762.P2252837519886206108

noncomputable section

/-- A082762: Trinomial transform of Lucas numbers (A000032).

Offset 0, canonical program `A082762.P2252837519886206108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082762 (n : ℕ) : ℤ :=
  A082762.P2252837519886206108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083086.P15318894095947502197

`(-1)^n*A000079(n)*A078008(n)`
-/

namespace A083086.P15318894095947502197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000079 n * A078008 n

end

end A083086.P15318894095947502197

noncomputable section

/-- A083086: a(n) = (2^(n+1) + (-4)^n)/3.

Offset 0, canonical program `A083086.P15318894095947502197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083086 (n : ℕ) : ℤ :=
  A083086.P15318894095947502197.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083697.P5603520656838925954

`2^(2^n-1)*A000045(2^n)`
-/

namespace A083697.P5603520656838925954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) * (A000045 (2 ^ n) : ℚ)

end

end A083697.P5603520656838925954

noncomputable section

/-- A083697: a(n) = 2^(2^n - 1) * Fibonacci(2^n).

Offset 0, canonical program `A083697.P5603520656838925954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083697 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083697.P5603520656838925954.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084084.P11655744217698943536

`A000931(4*n+6)`
-/

namespace A084084.P11655744217698943536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (4 * n + 6)

end

end A084084.P11655744217698943536

noncomputable section

/-- A084084: Length of lists created by n substitutions k -> Range[0,1+Mod[k+1,3]] starting with {0}.

Offset 0, canonical program `A084084.P11655744217698943536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084084 (n : ℕ) : ℤ :=
  A084084.P11655744217698943536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084136.P15723460493383535174

`(1+A084058(n))/2`
-/

namespace A084136.P15723460493383535174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A084058 n : ℚ) / 2

end

end A084136.P15723460493383535174

noncomputable section

/-- A084136: Binomial transform of cosh(sqrt(2)*x)^2.

Offset 0, canonical program `A084136.P15723460493383535174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084136.P15723460493383535174.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084151.P1065768061746022074

`(A001541(n)-3^n)/8`
-/

namespace A084151.P1065768061746022074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001541 n - (3 ^ n : ℤ) : ℚ) / 8

end

end A084151.P1065768061746022074

noncomputable section

/-- A084151: Binomial transform of a Pell convolution.

Offset 0, canonical program `A084151.P1065768061746022074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084151.P1065768061746022074.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084169.P7090051231565700772

`A001045(n)*A000129(n)`
-/

namespace A084169.P7090051231565700772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A000129 n

end

end A084169.P7090051231565700772

noncomputable section

/-- A084169: A Pell Jacobsthal product.

Offset 0, canonical program `A084169.P7090051231565700772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084169 (n : ℕ) : ℤ :=
  A084169.P7090051231565700772.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084188.P10075373482138290167

`A017910(2*n+1)`
-/

namespace A084188.P10075373482138290167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * n + 1)

end

end A084188.P10075373482138290167

noncomputable section

/-- A084188: a(0)=1, a(n+1) = 2*a(n) + b(n+2), where b(n)=A004539(n) is the n-th bit in the binary expansion of sqrt(2).

Offset 0, canonical program `A084188.P10075373482138290167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084188 (n : ℕ) : ℤ :=
  A084188.P10075373482138290167.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084240.P994393399022683913

`(-1)^(n+1)*(A002450(n)-1)`
-/

namespace A084240.P994393399022683913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A002450 n - 1)

end

end A084240.P994393399022683913

noncomputable section

/-- A084240: a(n) = -5*a(n-1) - 4*a(n-2), a(0)=1, a(1)=0.

Offset 0, canonical program `A084240.P994393399022683913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084240 (n : ℕ) : ℤ :=
  A084240.P994393399022683913.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084247.P12331234404023779996

`(-1)^(n+1)*(A078008(n+1)-A078008(n))`
-/

namespace A084247.P12331234404023779996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A078008 (n + 1) - A078008 n)

end

end A084247.P12331234404023779996

noncomputable section

/-- A084247: a(n) = -a(n-1) + 2*a(n-2), a(0)=1, a(1)=2.

Offset 0, canonical program `A084247.P12331234404023779996`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084247 (n : ℕ) : ℤ :=
  A084247.P12331234404023779996.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084301.P14730179483325713181

`A010875(A000203(n+1))`
-/

namespace A084301.P14730179483325713181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000203 (n + 1)).toNat

end

end A084301.P14730179483325713181

noncomputable section

/-- A084301: a(n) = sigma(n) mod 6.

Offset 1, canonical program `A084301.P14730179483325713181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084301 (n : ℕ) : ℤ :=
  A084301.P14730179483325713181.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084703.P2278992724606111080

`A001542(n)²`
-/

namespace A084703.P2278992724606111080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n ^ 2

end

end A084703.P2278992724606111080

noncomputable section

/-- A084703: Squares k such that 2*k+1 is also a square.

Offset 0, canonical program `A084703.P2278992724606111080`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084703 (n : ℕ) : ℤ :=
  A084703.P2278992724606111080.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084773.P8407391943603613454

`2^n*A001850(n)`
-/

namespace A084773.P8407391943603613454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001850 n

end

end A084773.P8407391943603613454

noncomputable section

/-- A084773: Coefficients of 1/sqrt(1-12*x+4*x^2); also, a(n) is the central coefficient of (1+6*x+8*x^2)^n.

Offset 0, canonical program `A084773.P8407391943603613454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084773 (n : ℕ) : ℤ :=
  A084773.P8407391943603613454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084939.P7029245499545971231

`A000142(n)/A000079(n)*A008544(n)`
-/

namespace A084939.P7029245499545971231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A008544 n : ℚ)

end

end A084939.P7029245499545971231

noncomputable section

/-- A084939: Pentagorials: n-th polygorial for k=5.

Offset 0, canonical program `A084939.P7029245499545971231`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084939.P7029245499545971231.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084948.P14514199610506259215

`A084943(n)/A000142(n)*A000079(n)`
-/

namespace A084948.P14514199610506259215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084943 n : ℚ) / (A000142 n : ℚ) * (A000079 n : ℚ)

end

end A084948.P14514199610506259215

noncomputable section

/-- A084948: a(n) = Product_{i=0..n-1} (8*i+2).

Offset 0, canonical program `A084948.P14514199610506259215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084948.P14514199610506259215.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084948.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084968.P14169194673112967548

`7*A007775(n+1)`
-/

namespace A084968.P14169194673112967548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007775 (n + 1)

end

end A084968.P14169194673112967548

noncomputable section

/-- A084968: Multiples of 7 coprime to 30.

Offset 1, canonical program `A084968.P14169194673112967548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084968 (n : ℕ) : ℤ :=
  A084968.P14169194673112967548.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058919.P2977155251623331247

`A080827(n²-n+1)`
-/

namespace A058919.P2977155251623331247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 ((n ^ 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A058919.P2977155251623331247

noncomputable section

/-- A058919: a(n) = n^4/2 - n^3 + 3*n^2/2 - n + 1 = (n^2 + 1)*(n^2 - 2*n + 2)/2.

Offset 0, canonical program `A058919.P2977155251623331247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058919 (n : ℕ) : ℤ :=
  A058919.P2977155251623331247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061714.P16193808572727617002

`(-1)^n+A120765(n)`
-/

namespace A061714.P16193808572727617002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A120765 n

end

end A061714.P16193808572727617002

noncomputable section

/-- A061714: Number of types of (n-1)-swap moves for traveling salesman problem. Number of circular permutations on elements 0,1,...,2n-1 where every two elements 2i,2i+1 and no two elements 2i-1,2i are adjacent.

Offset 0, canonical program `A061714.P16193808572727617002`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061714 (n : ℕ) : ℤ :=
  A061714.P16193808572727617002.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067488.P16674804422046183857

`2^A067497(n)`
-/

namespace A067488.P16674804422046183857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A067497 n : ℤ)

end

end A067488.P16674804422046183857

noncomputable section

/-- A067488: Powers of 2 with initial digit 1.

Offset 1, canonical program `A067488.P16674804422046183857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067488.P16674804422046183857.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069017.P17525612143297999373

`2*A124174(n+1)+1`
-/

namespace A069017.P17525612143297999373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124174 (n + 1) + 1

end

end A069017.P17525612143297999373

noncomputable section

/-- A069017: Triangular numbers of the form k^2 + k + 1.

Offset 1, canonical program `A069017.P17525612143297999373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069017 (n : ℕ) : ℤ :=
  A069017.P17525612143297999373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069497.P15301364343814933143

`A000217(A108752(n+1))`
-/

namespace A069497.P15301364343814933143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A108752 (n + 1)).toNat

end

end A069497.P15301364343814933143

noncomputable section

/-- A069497: Triangular numbers of the form 6*k.

Offset 1, canonical program `A069497.P15301364343814933143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069497 (n : ℕ) : ℤ :=
  A069497.P15301364343814933143.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077267.P10656974449840595018

`A079978(n)+a(floor(n/3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077267.P10656974449840595018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A079978 n + a ⌊(n : ℚ) / 3⌋.toNat

end

end A077267.P10656974449840595018

noncomputable section

/-- A077267: Number of zeros in base-3 expansion of n.

Offset 0, canonical program `A077267.P10656974449840595018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077267 (n : ℕ) : ℤ :=
  A077267.P10656974449840595018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077421.P11984468828011570067

`sqrt((A077422(n+1)²-1)/30)/2`
-/

namespace A077421.P11984468828011570067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A077422 (n + 1) ^ 2 - 1 : ℚ) / 30 : ℝ) / 2

end

end A077421.P11984468828011570067

noncomputable section

/-- A077421: Chebyshev sequence U(n,11)=S(n,22) with Diophantine property.

Offset 0, canonical program `A077421.P11984468828011570067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077421.P11984468828011570067.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077443.P9244369192480918975

`2*A124124(n+1)+1`
-/

namespace A077443.P9244369192480918975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124124 (n + 1) + 1

end

end A077443.P9244369192480918975

noncomputable section

/-- A077443: Numbers k such that (k^2 - 7)/2 is a square.

Offset 1, canonical program `A077443.P9244369192480918975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077443 (n : ℕ) : ℤ :=
  A077443.P9244369192480918975.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078024.P2293329166647580825

`(-1)^n*A112469(n)`
-/

namespace A078024.P2293329166647580825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112469 n

end

end A078024.P2293329166647580825

noncomputable section

/-- A078024: Expansion of (1-x)/(1-2*x^2-x^3).

Offset 0, canonical program `A078024.P2293329166647580825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078024 (n : ℕ) : ℤ :=
  A078024.P2293329166647580825.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078761.P3179630851408129267

`45*A081045(n)`
-/

namespace A078761.P3179630851408129267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A081045 n

end

end A078761.P3179630851408129267

noncomputable section

/-- A078761: Sum of the digits of all n-digit numbers.

Offset 1, canonical program `A078761.P3179630851408129267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078761 (n : ℕ) : ℤ :=
  A078761.P3179630851408129267.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079813.P993112594528176137

`1-A118175(n)`
-/

namespace A079813.P993112594528176137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A118175 n

end

end A079813.P993112594528176137

noncomputable section

/-- A079813: n 0's followed by n 1's.

Offset 1, canonical program `A079813.P993112594528176137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079813 (n : ℕ) : ℤ :=
  A079813.P993112594528176137.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081089.P13086445699553807984

`A081090(n+1)²+1`
-/

namespace A081089.P13086445699553807984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081090 (n + 1) ^ 2 + 1

end

end A081089.P13086445699553807984

noncomputable section

/-- A081089: Ratios of the terms of A081088: a(n) = A081088(n+1)/A081088(n); involves the partial quotients of a series of continued fractions that sum to unity.

Offset 1, canonical program `A081089.P13086445699553807984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081089 (n : ℕ) : ℤ :=
  A081089.P13086445699553807984.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081714.P7362606135924003935

`A122367(n)-(-1)^n`
-/

namespace A081714.P7362606135924003935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - (-1) ^ n

end

end A081714.P7362606135924003935

noncomputable section

/-- A081714: a(n) = F(n)*L(n+1) where F=Fibonacci and L=Lucas numbers.

Offset 0, canonical program `A081714.P7362606135924003935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081714 (n : ℕ) : ℤ :=
  A081714.P7362606135924003935.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083445.P10434029491111395614

`9*A083446(n+2)`
-/

namespace A083445.P10434029491111395614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A083446 (n + 2)

end

end A083445.P10434029491111395614

noncomputable section

/-- A083445: Largest n-digit number minus the product of its digits; i.e., a(n) = 99999... (n 9's) - 9^n.

Offset 2, canonical program `A083445.P10434029491111395614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083445 (n : ℕ) : ℤ :=
  A083445.P10434029491111395614.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084942.P4821313571364401220

`A000142(n)/A000079(n)*A084947(n)`
-/

namespace A084942.P4821313571364401220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A084947 n : ℚ)

end

end A084942.P4821313571364401220

noncomputable section

/-- A084942: Enneagorials: n-th polygorial for k=9.

Offset 0, canonical program `A084942.P4821313571364401220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084942.P4821313571364401220.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057000.P11374671352921709865

`2-Δ[A053158(n+1)]`
-/

namespace A057000.P11374671352921709865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A057000.P11374671352921709865

noncomputable section

/-- A057000: a(n) = phi(n+1) - phi(n).

Offset 1, canonical program `A057000.P11374671352921709865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057000 (n : ℕ) : ℤ :=
  A057000.P11374671352921709865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057038.P7025590189014035910

`(a(n-1)+1)%A000267(n)+1` with `a(0)=1`
-/

namespace A057038.P7025590189014035910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A000267 n) + 1

end

end A057038.P7025590189014035910

noncomputable section

/-- A057038: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057038(n)=i(2n).

Offset 1, canonical program `A057038.P7025590189014035910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057038 (n : ℕ) : ℤ :=
  A057038.P7025590189014035910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057049.P14476744536565979045

`(n+1)²-A000217(A022846(n+1)-1)`
-/

namespace A057049.P14476744536565979045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000217 (A022846 (n + 1) - 1).toNat

end

end A057049.P14476744536565979045

noncomputable section

/-- A057049: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057049(n) = i(n^2).

Offset 1, canonical program `A057049.P14476744536565979045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057049 (n : ℕ) : ℤ :=
  A057049.P14476744536565979045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057057.P12339094872845361904

`ceil(floor(sqrt(A130809(n+3)))/2)`
-/

namespace A057057.P12339094872845361904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.sqrt (A130809 (n + 3)) : ℚ) / 2⌉

end

end A057057.P12339094872845361904

noncomputable section

/-- A057057: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; C(n,3) is in antidiagonal a(n).

Offset 3, canonical program `A057057.P12339094872845361904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057057 (n : ℕ) : ℤ :=
  A057057.P12339094872845361904.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057138.P13906608961975884342

`∑[A010879(n)*A178501(n)]`
-/

namespace A057138.P13906608961975884342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n * A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057138.P13906608961975884342

noncomputable section

/-- A057138: Add (n mod 10)*10^(n-1) to the previous term, with a(0) = 0.

Offset 0, canonical program `A057138.P13906608961975884342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A057138 (n : ℕ) : ℤ :=
  A057138.P13906608961975884342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A057138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057540.P4839102166846045494

`∩[A057539(n+1), A227144(n+1)]`
-/

namespace A057540.P4839102166846045494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P4839102166846045494

noncomputable section

/-- A057540: Birthday set of order 8: i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6, 7 and 8.

Offset 1, canonical program `A057540.P4839102166846045494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 915 terms. -/
def A057540 (n : ℕ) : ℤ :=
  (A057540.P4839102166846045494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 915 terms. -/
def A057540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057590.P4961889276649306474

`∪[A027482(n+2), A027441(n)]`
-/

namespace A057590.P4961889276649306474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057590.P4961889276649306474

noncomputable section

/-- A057590: Numbers of the form k*(k^3 +- 1)/2.

Offset 1, canonical program `A057590.P4961889276649306474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057590 (n : ℕ) : ℤ :=
  (A057590.P4961889276649306474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057592.P11540212676059738396

`A022087(n)+Δ[A001654(n)]`
-/

namespace A057592.P11540212676059738396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (f1 (n + 1) - f1 n)

end

end A057592.P11540212676059738396

noncomputable section

/-- A057592: a(n) = Fibonacci(n+1)^2 + 4*Fibonacci(n).

Offset 0, canonical program `A057592.P11540212676059738396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A057592 (n : ℕ) : ℤ :=
  A057592.P11540212676059738396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A057592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057660.P9675754224677134609

`2*∑{d}[n+1, A023896(#)]-1`
-/

namespace A057660.P9675754224677134609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A023896 d) - 1

end

end A057660.P9675754224677134609

noncomputable section

/-- A057660: a(n) = Sum_{k=1..n} n/gcd(n,k).

Offset 1, canonical program `A057660.P9675754224677134609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057660 (n : ℕ) : ℤ :=
  A057660.P9675754224677134609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057861.P865201320953803533

`floor(2^n/Δ[∑[A000045(n)]/2])`
-/

namespace A057861.P865201320953803533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / (f1 (n + 1) - f1 n)⌋

end

end A057861.P865201320953803533

noncomputable section

/-- A057861: floor[2^n/Fibonacci(n)].

Offset 1, canonical program `A057861.P865201320953803533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A057861 (n : ℕ) : ℤ :=
  A057861.P865201320953803533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A057861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057862.P11332314005707958811

`(2^(n+1))%A000045(n+1)`
-/

namespace A057862.P11332314005707958811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ (n + 1) : ℤ) (A000045 (n + 1))

end

end A057862.P11332314005707958811

noncomputable section

/-- A057862: a(n) = 2^n mod Fibonacci(n).

Offset 1, canonical program `A057862.P11332314005707958811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A057862 (n : ℕ) : ℤ :=
  A057862.P11332314005707958811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A057862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057894.P10049549361745002982

`eq[1, ∑{e}[n-A004514(n), #]]`
-/

namespace A057894.P10049549361745002982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004514 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057894.P10049549361745002982

noncomputable section

/-- A057894: Negabinary numbral "primes".

Offset 0, canonical program `A057894.P10049549361745002982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A057894 (n : ℕ) : ℤ :=
  (A057894.P10049549361745002982.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A057894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057901.P13324023212543556702

`3^A000040(n+1)`
-/

namespace A057901.P13324023212543556702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A057901.P13324023212543556702

noncomputable section

/-- A057901: a(n) = 3^prime(n).

Offset 1, canonical program `A057901.P13324023212543556702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057901.P13324023212543556702.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057902.P13074004454325797661

`5^A000040(n+1)`
-/

namespace A057902.P13074004454325797661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A057902.P13074004454325797661

noncomputable section

/-- A057902: a(n) = 5^prime(n).

Offset 1, canonical program `A057902.P13074004454325797661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057902.P13074004454325797661.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057924.P17885427935178142664

`A057923(n+1)+A057923(n)`
-/

namespace A057924.P17885427935178142664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057923 (n + 1) + A057923 n

end

end A057924.P17885427935178142664

noncomputable section

/-- A057924: Sequence b(n) mentioned in A057923.

Offset 1, canonical program `A057924.P17885427935178142664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057924 (n : ℕ) : ℤ :=
  A057924.P17885427935178142664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057927.P12642065213747382486

`or(a(n-1)+1, A057926(n))` with `a(0)=3`
-/

namespace A057927.P12642065213747382486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (a (n - 1) + 1) (A057926 n)

end

end A057927.P12642065213747382486

noncomputable section

/-- A057927: Sequence b(n) mentioned in A057926.

Offset 1, canonical program `A057927.P12642065213747382486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057927 (n : ℕ) : ℤ :=
  A057927.P12642065213747382486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057929.P14549081968536918667

`A057923(n+4)`
-/

namespace A057929.P14549081968536918667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057923 (n + 4)

end

end A057929.P14549081968536918667

noncomputable section

/-- A057929: a(0)=2, a(1)=5, a(n) = smallest number such that sequence b(n) = a(n) OR a(n+1) is strictly monotonically increasing.

Offset 0, canonical program `A057929.P14549081968536918667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A057929 (n : ℕ) : ℤ :=
  A057929.P14549081968536918667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A057929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057933.P5489646380167776972

`A002283(n+1)-A057932(n)`
-/

namespace A057933.P5489646380167776972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - A057932 n

end

end A057933.P5489646380167776972

noncomputable section

/-- A057933: Floor[(80/81)*10^n].

Offset 1, canonical program `A057933.P5489646380167776972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A057933 (n : ℕ) : ℤ :=
  A057933.P5489646380167776972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A057933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058062.P17943124661839395441

`∑{e}[∏{p}[A000203(n+1), #], #]`
-/

namespace A058062.P17943124661839395441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A058062.P17943124661839395441

noncomputable section

/-- A058062: Number of distinct prime factors of sigma(n), the sum of the divisors of n.

Offset 1, canonical program `A058062.P17943124661839395441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058062 (n : ℕ) : ℤ :=
  (A058062.P17943124661839395441.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058075.P17438524686900330364

`record[(n+1)/gcd(A000203(n+1), A000203(n+2))]`
-/

namespace A058075.P17438524686900330364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000203 (n + 1)) (A000203 (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058075.P17438524686900330364

noncomputable section

/-- A058075: Numbers k such that gcd(sigma(k), sigma(k+1)) = 1, where sigma(k) is sum of positive divisors of k.

Offset 1, canonical program `A058075.P17438524686900330364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A058075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058075.P17438524686900330364.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A058075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058077.P5624321515049190518

`C(A000040(n+2), A000040(n+1))`
-/

namespace A058077.P5624321515049190518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 2)).toNat (A000040 (n + 1)).toNat

end

end A058077.P5624321515049190518

noncomputable section

/-- A058077: Binomial coefficients formed from consecutive primes: a(n) = binomial( prime(n+1), prime(n) ).

Offset 1, canonical program `A058077.P5624321515049190518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A058077 (n : ℕ) : ℤ :=
  (A058077.P5624321515049190518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A058077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058183.P4906920629226833825

`A055642(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A058183.P4906920629226833825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (n + 1) + a (n - 1)

end

end A058183.P4906920629226833825

noncomputable section

/-- A058183: Number of digits in concatenation of first n positive integers.

Offset 1, canonical program `A058183.P4906920629226833825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183 (n : ℕ) : ℤ :=
  A058183.P4906920629226833825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058208.P11143344036866898331

`A060903(n+1)-∑{d}[n+1, #]`
-/

namespace A058208.P11143344036866898331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A058208.P11143344036866898331

noncomputable section

/-- A058208: a(n) = floor(6*n*sqrt(n)/Pi^2) - sigma(n), where sigma(n) is the sum of the divisors of n (A000203).

Offset 1, canonical program `A058208.P11143344036866898331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058208 (n : ℕ) : ℤ :=
  A058208.P11143344036866898331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058268.P17499238582623554022

`A065475(A058266(n+1))`
-/

namespace A058268.P17499238582623554022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A058266 (n + 1)).toNat

end

end A058268.P17499238582623554022

noncomputable section

/-- A058268: An approximation to sigma_{1/2}(n): ceiling( sum_{d|n} sqrt(d) ).

Offset 1, canonical program `A058268.P17499238582623554022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058268 (n : ℕ) : ℤ :=
  A058268.P17499238582623554022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058333.P8325011116935619297

`(n+1)²²-A072819(n)`
-/

namespace A058333.P8325011116935619297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A072819 n

end

end A058333.P8325011116935619297

noncomputable section

/-- A058333: Number of 3 X 3 matrices with elements from [0,...,(n-1)] satisfying the condition that the middle element of each row or column is the difference of the two end elements (in absolute value).

Offset 1, canonical program `A058333.P8325011116935619297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A058333 (n : ℕ) : ℤ :=
  A058333.P8325011116935619297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A058333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058541.P10676030891438900090

`A033885(a(n-1))` with `a(0)=1`
-/

namespace A058541.P10676030891438900090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033885 (a (n - 1)).toNat

end

end A058541.P10676030891438900090

noncomputable section

/-- A058541: Trajectory of 1 under map that sends x to 3x - sigma(x).

Offset 0, canonical program `A058541.P10676030891438900090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058541 (n : ℕ) : ℤ :=
  A058541.P10676030891438900090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059011.P915381792524988000

`A059009(A053738(n+1))`
-/

namespace A059011.P915381792524988000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A053738 (n + 1)).toNat

end

end A059011.P915381792524988000

noncomputable section

/-- A059011: Odd number of 0's and 1's in binary expansion.

Offset 1, canonical program `A059011.P915381792524988000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059011 (n : ℕ) : ℤ :=
  A059011.P915381792524988000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059013.P9698162491277761355

`A059009(A053754(n+1))`
-/

namespace A059013.P9698162491277761355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A053754 (n + 1)).toNat

end

end A059013.P9698162491277761355

noncomputable section

/-- A059013: Odd number of 0's and even number of 1's in binary expansion.

Offset 1, canonical program `A059013.P9698162491277761355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059013 (n : ℕ) : ℤ :=
  A059013.P9698162491277761355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059111.P17113221363624731460

`A000040(n+1)-A050502(n+1)`
-/

namespace A059111.P17113221363624731460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A050502 (n + 1)

end

end A059111.P17113221363624731460

noncomputable section

/-- A059111: a(n) = floor(prime(n) - n*log(n)).

Offset 1, canonical program `A059111.P17113221363624731460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059111 (n : ℕ) : ℤ :=
  A059111.P17113221363624731460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059129.P3613843884237192219

`val(abs(A099254(n)), 2)+1`
-/

namespace A059129.P3613843884237192219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A099254 n|.toNat 2 + 1

end

end A059129.P3613843884237192219

noncomputable section

/-- A059129: A hierarchical sequence (W2{2}* - see A059126).

Offset 0, canonical program `A059129.P3613843884237192219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059129 (n : ℕ) : ℤ :=
  (A059129.P3613843884237192219.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059173.P6167581344001436890

`A046127(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A059173.P6167581344001436890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A046127 (n - 1) + a (n - 1)

end

end A059173.P6167581344001436890

noncomputable section

/-- A059173: Maximal number of regions into which 4-space can be divided by n hyperspheres.

Offset 0, canonical program `A059173.P6167581344001436890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059173 (n : ℕ) : ℤ :=
  A059173.P6167581344001436890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059247.P12274264004788898649

`(n+1)/gcd(n+1, A002541(n+1))`
-/

namespace A059247.P12274264004788898649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002541 (n + 1)) : ℚ)

end

end A059247.P12274264004788898649

noncomputable section

/-- A059247: Denominator of Sum_{j=1..n} d(j)/n, where d = number of divisors function (A000005).

Offset 1, canonical program `A059247.P12274264004788898649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059247 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059247.P12274264004788898649.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059338.P6991095594654460652

`(n+1)*Δ[A058649(n)]`
-/

namespace A059338.P6991095594654460652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A059338.P6991095594654460652

noncomputable section

/-- A059338: a(n) = Sum_{k=1..n} k^5 * binomial(n,k).

Offset 1, canonical program `A059338.P6991095594654460652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A059338 (n : ℕ) : ℤ :=
  A059338.P6991095594654460652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A059338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059376.P12656735072516275082

`∑{d}[n+1, A001158(#)*A007427((n+1)/#)]`
-/

namespace A059376.P12656735072516275082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P12656735072516275082

noncomputable section

/-- A059376: Jordan function J_3(n).

Offset 1, canonical program `A059376.P12656735072516275082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376 (n : ℕ) : ℤ :=
  A059376.P12656735072516275082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059377.P4346818254889849577

`∑{d}[n+1, A001159(#)*A007427((n+1)/#)]`
-/

namespace A059377.P4346818254889849577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P4346818254889849577

noncomputable section

/-- A059377: Jordan function J_4(n).

Offset 1, canonical program `A059377.P4346818254889849577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377 (n : ℕ) : ℤ :=
  A059377.P4346818254889849577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059378.P847336418425473705

`∑{d}[n+1, A001160(#)*A007427((n+1)/#)]`
-/

namespace A059378.P847336418425473705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P847336418425473705

noncomputable section

/-- A059378: Jordan function J_5(n).

Offset 1, canonical program `A059378.P847336418425473705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059378 (n : ℕ) : ℤ :=
  A059378.P847336418425473705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059502.P7300969934803314136

`Δ[A116845(C(2, n+2)+n)]`
-/

namespace A059502.P7300969934803314136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116845 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059502.P7300969934803314136

noncomputable section

/-- A059502: a(n) = (3*n*F(2n-1) + (3-n)*F(2n))/5 where F() = Fibonacci numbers A000045.

Offset 0, canonical program `A059502.P7300969934803314136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A059502 (n : ℕ) : ℤ :=
  A059502.P7300969934803314136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A059502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059512.P308334945108769757

`A001906(n-2)+1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A059512.P308334945108769757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001906 (n - 2) + (1 - (1 - a (n - 1) - a (n - 2)))

end

end A059512.P308334945108769757

noncomputable section

/-- A059512: For n>=2, the number of (s(0), s(1), ..., s(n-1)) such that 0 < s(i) < 5 and |s(i) - s(i-1)| <= 1 for i = 1,2,....,n-1, s(0) = 2, s(n-1) = 2.

Offset 0, canonical program `A059512.P308334945108769757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A059512 (n : ℕ) : ℤ :=
  A059512.P308334945108769757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A059512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059532.P904287867977283908

`∑[Δ[A022844(n)]+1]`
-/

namespace A059532.P904287867977283908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P904287867977283908

noncomputable section

/-- A059532: Beatty sequence for 1 + Pi.

Offset 1, canonical program `A059532.P904287867977283908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059532 (n : ℕ) : ℤ :=
  A059532.P904287867977283908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059539.P5693483721270638567

`∑[A081129(n)]`
-/

namespace A059539.P5693483721270638567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059539.P5693483721270638567

noncomputable section

/-- A059539: Beatty sequence for 3^(1/3).

Offset 1, canonical program `A059539.P5693483721270638567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059539 (n : ℕ) : ℤ :=
  A059539.P5693483721270638567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059541.P6631593962520287921

`∑[A022933(n)+1]`
-/

namespace A059541.P6631593962520287921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022933 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059541.P6631593962520287921

noncomputable section

/-- A059541: Beatty sequence for 1 + log(2).

Offset 1, canonical program `A059541.P6631593962520287921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059541 (n : ℕ) : ℤ :=
  A059541.P6631593962520287921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059542.P4160057478918893595

`∑[A022934(n)+1]`
-/

namespace A059542.P4160057478918893595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022934 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059542.P4160057478918893595

noncomputable section

/-- A059542: Beatty sequence for 1 + 1/log(2).

Offset 1, canonical program `A059542.P4160057478918893595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059542 (n : ℕ) : ℤ :=
  A059542.P4160057478918893595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059548.P14659020592617218728

`A059543(n+1)+1+n`
-/

namespace A059548.P14659020592617218728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059543 (n + 1) + 1 + (n : ℤ)

end

end A059548.P14659020592617218728

noncomputable section

/-- A059548: Beatty sequence for 1 + log(3).

Offset 1, canonical program `A059548.P14659020592617218728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059548 (n : ℕ) : ℤ :=
  A059548.P14659020592617218728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059550.P7944428284410734695

`A059545(n+1)+1+n`
-/

namespace A059550.P7944428284410734695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059545 (n + 1) + 1 + (n : ℤ)

end

end A059550.P7944428284410734695

noncomputable section

/-- A059550: Beatty sequence for 1 + log(10).

Offset 1, canonical program `A059550.P7944428284410734695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059550 (n : ℕ) : ℤ :=
  A059550.P7944428284410734695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059555.P11200941277565937909

`∑[Δ[A038128(n)]+1]`
-/

namespace A059555.P11200941277565937909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059555.P11200941277565937909

noncomputable section

/-- A059555: Beatty sequence for 1 + gamma A001620.

Offset 1, canonical program `A059555.P11200941277565937909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059555 (n : ℕ) : ℤ :=
  A059555.P11200941277565937909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059561.P15308738920989728191

`∑[A022931(n)]`
-/

namespace A059561.P15308738920989728191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059561.P15308738920989728191

noncomputable section

/-- A059561: Beatty sequence for log(Pi).

Offset 1, canonical program `A059561.P15308738920989728191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059561 (n : ℕ) : ℤ :=
  A059561.P15308738920989728191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059571.P5135965479004864575

`A000196(n+1)-abs(A002321(n+1))`
-/

namespace A059571.P5135965479004864575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - |A002321 (n + 1)|

end

end A059571.P5135965479004864575

noncomputable section

/-- A059571: From Mertens's conjecture (1): floor(sqrt(n)) - |M(n)|, where M is Mertens's function A002321.

Offset 1, canonical program `A059571.P5135965479004864575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059571 (n : ℕ) : ℤ :=
  A059571.P5135965479004864575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059572.P2225437894775727846

`A000196(n+1)-A002321(n+1)`
-/

namespace A059572.P2225437894775727846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A002321 (n + 1)

end

end A059572.P2225437894775727846

noncomputable section

/-- A059572: From Mertens's conjecture (2): floor(sqrt(n)) - Mertens's function A002321(n).

Offset 1, canonical program `A059572.P2225437894775727846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059572 (n : ℕ) : ℤ :=
  A059572.P2225437894775727846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059617.P11277497583377156099

`A146535(n+1)*A176895(floor(n/2))`
-/

namespace A059617.P11277497583377156099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 1) * A176895 ⌊(n : ℚ) / 2⌋.toNat

end

end A059617.P11277497583377156099

noncomputable section

/-- A059617: Denominator of n*(n-1)/(8*(2*n+1)).

Offset 0, canonical program `A059617.P11277497583377156099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059617 (n : ℕ) : ℤ :=
  A059617.P11277497583377156099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059650.P2634749567942594963

`Δ[A059649(n+1)]`
-/

namespace A059650.P2634749567942594963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059650.P2634749567942594963

noncomputable section

/-- A059650: First differences of A059649.

Offset 1, canonical program `A059650.P2634749567942594963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A059650 (n : ℕ) : ℤ :=
  A059650.P2634749567942594963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A059650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059727.P9881445159819085903

`2*C(A001611(n), 2)`
-/

namespace A059727.P9881445159819085903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A001611 n).toNat 2

end

end A059727.P9881445159819085903

noncomputable section

/-- A059727: a(n) = Fibonacci(n)*(Fibonacci(n) + 1).

Offset 0, canonical program `A059727.P9881445159819085903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059727 (n : ℕ) : ℤ :=
  (A059727.P9881445159819085903.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059840.P3631537578918260503

`A001654(n)-n%2`
-/

namespace A059840.P3631537578918260503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - ((n % 2 : ℕ) : ℤ)

end

end A059840.P3631537578918260503

noncomputable section

/-- A059840: a(n) = F(n)*F(n-1) if n odd otherwise F(n)*F(n-1)-1, where F = Fibonacci numbers A000045.

Offset 1, canonical program `A059840.P3631537578918260503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059840 (n : ℕ) : ℤ :=
  A059840.P3631537578918260503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059857.P4669686708820666510

`A034326(A073762(n+1)+A001057(n))`
-/

namespace A059857.P4669686708820666510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034326 (A073762 (n + 1) + A001057 n).toNat

end

end A059857.P4669686708820666510

noncomputable section

/-- A059857: Alternating clock-face numbers.

Offset 0, canonical program `A059857.P4669686708820666510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A059857 (n : ℕ) : ℤ :=
  A059857.P4669686708820666510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A059857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059909.P2458430778338620869

`A059907((n+1)²)`
-/

namespace A059909.P2458430778338620869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059907 ((n + 1) ^ 2)

end

end A059909.P2458430778338620869

noncomputable section

/-- A059909: a(n) = |{m : multiplicative order of n mod m = 4}|.

Offset 1, canonical program `A059909.P2458430778338620869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A059909 (n : ℕ) : ℤ :=
  A059909.P2458430778338620869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A059909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059974.P9604430135129621907

`A000045(∑[C(∑{p}[n, #], n)])`
-/

namespace A059974.P9604430135129621907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059974.P9604430135129621907

noncomputable section

/-- A059974: a(n)=a(p)+a(q) where p and q are the two primes less than n and closest to n; with a(1)=1, a(2)=1, a(3) = 1.

Offset 1, canonical program `A059974.P9604430135129621907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. -/
def A059974 (n : ℕ) : ℤ :=
  A059974.P9604430135129621907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. -/
def A059974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059991.P11154978934959331136

`A000079(and(n, n+1))`
-/

namespace A059991.P11154978934959331136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.land n (n + 1))

end

end A059991.P11154978934959331136

noncomputable section

/-- A059991: a(n) = 2^(n-2^ord_2(n)) (or 2^(n-A006519(n))).

Offset 1, canonical program `A059991.P11154978934959331136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A059991 (n : ℕ) : ℤ :=
  A059991.P11154978934959331136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A059991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060011.P16813881645005587022

`dr(A004095(3*n))`
-/

namespace A060011.P16813881645005587022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004095 (3 * n))

end

end A060011.P16813881645005587022

noncomputable section

/-- A060011: Schizophrenic sequence: these are the repeating digits in the decimal expansion of sqrt(f(2n+1)), where f(m) = A014824(m).

Offset 0, canonical program `A060011.P16813881645005587022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A060011 (n : ℕ) : ℤ :=
  (A060011.P16813881645005587022.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A060011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060019.P11572960328212097102

`floor(sqrt(A001749(n+1)-8))`
-/

namespace A060019.P11572960328212097102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001749 (n + 1) - 8)

end

end A060019.P11572960328212097102

noncomputable section

/-- A060019: a(n) = floor(2*sqrt(prime(n)-2)) where prime(n) = n-th prime.

Offset 1, canonical program `A060019.P11572960328212097102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060019 (n : ℕ) : ℤ :=
  A060019.P11572960328212097102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060061.P6398792366015292347

`∑[(n+1)²*A060060(n+1)]`
-/

namespace A060061.P6398792366015292347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060061.P6398792366015292347

noncomputable section

/-- A060061: Fourth column of triangle A060058.

Offset 0, canonical program `A060061.P6398792366015292347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060061 (n : ℕ) : ℤ :=
  A060061.P6398792366015292347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060101.P6144054388817537936

`∑[A038165(n)]`
-/

namespace A060101.P6144054388817537936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060101.P6144054388817537936

noncomputable section

/-- A060101: Sixth column (m=5) of triangle A060098.

Offset 0, canonical program `A060101.P6144054388817537936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060101 (n : ℕ) : ℤ :=
  A060101.P6144054388817537936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060145.P9806475002723103157

`abs(A004956(n)-A195121(n))`
-/

namespace A060145.P9806475002723103157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004956 n - A195121 n|

end

end A060145.P9806475002723103157

noncomputable section

/-- A060145: a(n) = floor(n/tau) - floor(n/(1 + tau)).

Offset 0, canonical program `A060145.P9806475002723103157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060145 (n : ℕ) : ℤ :=
  A060145.P9806475002723103157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060157.P3152578421519147225

`∑[A003063(n+3)-1]`
-/

namespace A060157.P3152578421519147225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P3152578421519147225

noncomputable section

/-- A060157: Number of permutations of [n] with 3 sequences.

Offset 3, canonical program `A060157.P3152578421519147225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A060157 (n : ℕ) : ℤ :=
  A060157.P3152578421519147225.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A060157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060197.P6380392400821796485

`a(A033270(n+1))+1` with `a(0)=2`
-/

namespace A060197.P6380392400821796485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A033270 (n + 1)).toNat + 1

end

end A060197.P6380392400821796485

noncomputable section

/-- A060197: Start at n, repeatedly apply pi(x) until reach 0; a(n) = number of steps to reach 0.

Offset 1, canonical program `A060197.P6380392400821796485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060197 (n : ℕ) : ℤ :=
  (A060197.P6380392400821796485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060337.P807181745929901436

`A000217(n+2)*A270222(n+1)`
-/

namespace A060337.P807181745929901436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A270222 (n + 1)

end

end A060337.P807181745929901436

noncomputable section

/-- A060337: Number of labeled acyclic digraphs with n nodes containing exactly n-2 points of in-degree zero.

Offset 3, canonical program `A060337.P807181745929901436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A060337 (n : ℕ) : ℤ :=
  A060337.P807181745929901436.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A060337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060469.P17771194765734652220

`∪[A003662(n+1), A038874(n+1)]`
-/

namespace A060469.P17771194765734652220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060469.P17771194765734652220

noncomputable section

/-- A060469: Smallest positive a(n) such that number of solutions to a(n) = a(j)+a(k) j

Offset 1, canonical program `A060469.P17771194765734652220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060469 (n : ℕ) : ℤ :=
  (A060469.P17771194765734652220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060473.P10331882386203944157

`lcm(A000217(n+1), A023896(n+1))/A000217(n+1)`
-/

namespace A060473.P10331882386203944157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000217 (n + 1)) (A023896 (n + 1)) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A060473.P10331882386203944157

noncomputable section

/-- A060473: a(n) = numerator of phi(n)/(n+1), where phi(n) is Euler's phi, A000010.

Offset 1, canonical program `A060473.P10331882386203944157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060473.P10331882386203944157.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060474.P1792175694855090900

`(n+2)/A058656(n+1)`
-/

namespace A060474.P1792175694855090900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A058656 (n + 1) : ℚ)

end

end A060474.P1792175694855090900

noncomputable section

/-- A060474: a(n) = denominator of phi(n)/(n+1), where phi(n) is Euler's phi, A000010.

Offset 1, canonical program `A060474.P1792175694855090900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060474.P1792175694855090900.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060483.P10332050572339520358

`∑[3*2^n*∑[A083421(n)]]`
-/

namespace A060483.P10332050572339520358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060483.P10332050572339520358

noncomputable section

/-- A060483: Number of 5-block tricoverings of an n-set.

Offset 3, canonical program `A060483.P10332050572339520358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A060483 (n : ℕ) : ℤ :=
  A060483.P10332050572339520358.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A060483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060511.P6613141027037058169

`n-A000384(A351846(n))`
-/

namespace A060511.P6613141027037058169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000384 (A351846 n).toNat

end

end A060511.P6613141027037058169

noncomputable section

/-- A060511: Hexagonal excess: smallest amount by which n exceeds a hexagonal number (2k^2-k, A000384).

Offset 0, canonical program `A060511.P6613141027037058169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060511 (n : ℕ) : ℤ :=
  A060511.P6613141027037058169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060553.P15459756570569610789

`A068010(n)+A016116(n)`
-/

namespace A060553.P15459756570569610789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 n + A016116 n

end

end A060553.P15459756570569610789

noncomputable section

/-- A060553: a(n) is the number of distinct (modulo geometric D3-operations) patterns which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

Offset 1, canonical program `A060553.P15459756570569610789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A060553 (n : ℕ) : ℤ :=
  A060553.P15459756570569610789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A060553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060558.P13865720469766591447

`A060100(Δ[n²])`
-/

namespace A060558.P13865720469766591447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060558.P13865720469766591447

noncomputable section

/-- A060558: Fifth column (m=4) of triangle A060556.

Offset 0, canonical program `A060558.P13865720469766591447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A060558 (n : ℕ) : ℤ :=
  A060558.P13865720469766591447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A060558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060569.P7759732019281529303

`A076294(∑[2-n%2])`
-/

namespace A060569.P7759732019281529303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060569.P7759732019281529303

noncomputable section

/-- A060569: Consider Pythagorean triples which satisfy X^2+(X+7)^2=Z^2; sequence gives increasing values of Z.

Offset 1, canonical program `A060569.P7759732019281529303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A060569 (n : ℕ) : ℤ :=
  A060569.P7759732019281529303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A060569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060583.P3294459721720643481

`3*a(floor(n/3))+A060582(n)` with `a(0)=0`
-/

namespace A060583.P3294459721720643481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a ⌊(n : ℚ) / 3⌋.toNat + A060582 n

end

end A060583.P3294459721720643481

noncomputable section

/-- A060583: A ternary code related to the Tower of Hanoi.

Offset 0, canonical program `A060583.P3294459721720643481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060583 (n : ℕ) : ℤ :=
  A060583.P3294459721720643481.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060606.P8446617235737320077

`A060605(n+1)-(n+1)`
-/

namespace A060606.P8446617235737320077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060605 (n + 1) - (n + 1 : ℤ)

end

end A060606.P8446617235737320077

noncomputable section

/-- A060606: The n-th term is the sum of lengths of iteration chains to get fixed points (=1) for the Euler totient function from 1 to n.

Offset 0, canonical program `A060606.P8446617235737320077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060606 (n : ℕ) : ℤ :=
  A060606.P8446617235737320077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060620.P6450036128253992703

`floor(∑[A000040(n+1)]/(n+1))`
-/

namespace A060620.P6450036128253992703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P6450036128253992703

noncomputable section

/-- A060620: Average of the first n primes rounded down.

Offset 1, canonical program `A060620.P6450036128253992703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060620 (n : ℕ) : ℤ :=
  A060620.P6450036128253992703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060635.P16632520074039494146

`2*Δ[A064831(n)]²`
-/

namespace A060635.P16632520074039494146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A060635.P16632520074039494146

noncomputable section

/-- A060635: a(n) is the number of 2 X 1 domino tilings of the set S in the plane R^2 consisting of the union of the following two rectangles: rectangle1: |x| <= n, |y| <= 1, rectangle2: |x| <= 1, |y| <= n.

Offset 1, canonical program `A060635.P16632520074039494146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A060635 (n : ℕ) : ℤ :=
  A060635.P16632520074039494146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A060635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060646.P4391028413269326424

`a(n-1)+C(n+2, A000040(a(n-1))+a(n-1))` with `a(0)=1`
-/

namespace A060646.P4391028413269326424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 2) (A000040 (a (n - 1)) + (a (n - 1) : ℤ)).toNat

end

end A060646.P4391028413269326424

noncomputable section

/-- A060646: Bonse sequence: a(n) = minimal j such that n-j+1 < prime(j).

Offset 1, canonical program `A060646.P4391028413269326424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060646 (n : ℕ) : ℤ :=
  (A060646.P4391028413269326424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060687.P13266842757816177506

`eq[2, A005361(n+1)]+1`
-/

namespace A060687.P13266842757816177506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P13266842757816177506

noncomputable section

/-- A060687: Numbers k such that there exist exactly 2 Abelian groups of order k, i.e., A000688(k) = 2.

Offset 1, canonical program `A060687.P13266842757816177506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687 (n : ℕ) : ℤ :=
  (A060687.P13266842757816177506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060755.P8092056796497788820

`log2(A060723(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060755.P8092056796497788820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060723 n : ℝ)

end

end A060755.P8092056796497788820

noncomputable section

/-- A060755: a(n) = log_2(A060723(n)).

Offset 0, canonical program `A060755.P8092056796497788820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060755 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060755.P8092056796497788820.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060778.P14283808286973634457

`gcd(A032741(n+1)+1, Δ[∏{e}[n+1, #+1]])`
-/

namespace A060778.P14283808286973634457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (n + 1) + 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A060778.P14283808286973634457

noncomputable section

/-- A060778: a(n) = gcd(tau(n+1), tau(n)), where tau = A000005.

Offset 1, canonical program `A060778.P14283808286973634457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060778 (n : ℕ) : ℤ :=
  (A060778.P14283808286973634457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060805.P1394850094581464072

`A008642(A014681(abs(1-n)))`
-/

namespace A060805.P1394850094581464072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A014681 |1 - (n : ℤ)|.toNat).toNat

end

end A060805.P1394850094581464072

noncomputable section

/-- A060805: Numerators of special continued fraction for 2*zeta(3).

Offset 1, canonical program `A060805.P1394850094581464072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060805 (n : ℕ) : ℤ :=
  A060805.P1394850094581464072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060822.P11802503559072820179

`A000040(n+1)+A007742(n+1)+A000578(n)`
-/

namespace A060822.P11802503559072820179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A007742 (n + 1) + A000578 n)

end

end A060822.P11802503559072820179

noncomputable section

/-- A060822: a(n) = prime(n) + n^3 + n^2 + 4n - 1.

Offset 1, canonical program `A060822.P11802503559072820179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060822 (n : ℕ) : ℤ :=
  A060822.P11802503559072820179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060889.P11187294476683647239

`A061167(n)*A100104(n)+1`
-/

namespace A060889.P11187294476683647239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 n * A100104 n + 1

end

end A060889.P11187294476683647239

noncomputable section

/-- A060889: a(n) = n^8 - n^7 + n^5 - n^4 + n^3 - n + 1.

Offset 0, canonical program `A060889.P11187294476683647239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060889 (n : ℕ) : ℤ :=
  A060889.P11187294476683647239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060900.P6418703585910364633

`A001318(2*n)/A001318(n)*a(n-1)` with `a(0)=1`
-/

namespace A060900.P6418703585910364633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001318 (2 * n) : ℚ) / (A001318 n : ℚ) * a (n - 1)

end

end A060900.P6418703585910364633

noncomputable section

/-- A060900: Number of walks of length n on square lattice, starting at origin, staying on points with x >= 0, y <= x.

Offset 0, canonical program `A060900.P6418703585910364633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A060900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060900.P6418703585910364633.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A060900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060929.P2101954034627007323

`A005408(n)*A136376(n+1)-A086926(n)`
-/

namespace A060929.P2101954034627007323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A136376 (n + 1) - A086926 n

end

end A060929.P2101954034627007323

noncomputable section

/-- A060929: Second convolution of Lucas numbers A000032(n+1), n >= 0.

Offset 0, canonical program `A060929.P2101954034627007323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A060929 (n : ℕ) : ℤ :=
  A060929.P2101954034627007323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A060929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060981.P12747927169127028284

`p?[A226097(xor(1, n))]`
-/

namespace A060981.P12747927169127028284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060981.P12747927169127028284

noncomputable section

/-- A060981: Primes of the form 4k^2 - 152k + 1487 + (6k - 114)*(-1)^k.

Offset 1, canonical program `A060981.P12747927169127028284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A060981 (n : ℕ) : ℤ :=
  A060981.P12747927169127028284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A060981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061006.P1909642855000031275

`n-floor(n/A014973(n+1))`
-/

namespace A061006.P1909642855000031275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A014973 (n + 1) : ℚ)⌋

end

end A061006.P1909642855000031275

noncomputable section

/-- A061006: a(n) = (n-1)! mod n.

Offset 1, canonical program `A061006.P1909642855000031275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061006 (n : ℕ) : ℤ :=
  A061006.P1909642855000031275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061020.P438561261790791314

`∑{d}[n+1, A061019(#)]`
-/

namespace A061020.P438561261790791314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d

end

end A061020.P438561261790791314

noncomputable section

/-- A061020: Negate primes in factorizations of divisors of n, then sum.

Offset 1, canonical program `A061020.P438561261790791314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020 (n : ℕ) : ℤ :=
  A061020.P438561261790791314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061037.P6323072911559429320

`A188134(n)+A181318(n)`
-/

namespace A061037.P6323072911559429320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 n + A181318 n

end

end A061037.P6323072911559429320

noncomputable section

/-- A061037: Numerator of 1/4 - 1/n^2.

Offset 2, canonical program `A061037.P6323072911559429320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061037 (n : ℕ) : ℤ :=
  A061037.P6323072911559429320.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061178.P13876543038960591901

`A001628(2*n)`
-/

namespace A061178.P13876543038960591901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (2 * n)

end

end A061178.P13876543038960591901

noncomputable section

/-- A061178: Third column (m=2) of triangle A060920 (bisection of Fibonacci triangle, even part).

Offset 0, canonical program `A061178.P13876543038960591901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A061178 (n : ℕ) : ℤ :=
  A061178.P13876543038960591901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A061178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061180.P6075713326514681743

`A001873(2*n)`
-/

namespace A061180.P6075713326514681743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (2 * n)

end

end A061180.P6075713326514681743

noncomputable section

/-- A061180: Fifth column (m=4) of triangle A060920 (bisection of Fibonacci triangle, even part).

Offset 0, canonical program `A061180.P6075713326514681743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061180 (n : ℕ) : ℤ :=
  A061180.P6075713326514681743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061182.P38621950411227390

`A001628(Δ[n²])`
-/

namespace A061182.P38621950411227390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061182.P38621950411227390

noncomputable section

/-- A061182: Third column (m=2) of triangle A060921 (bisection of Fibonacci triangle, odd part).

Offset 0, canonical program `A061182.P38621950411227390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A061182 (n : ℕ) : ℤ :=
  A061182.P38621950411227390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A061182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061184.P646427770272767009

`A001873(Δ[n²])`
-/

namespace A061184.P646427770272767009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061184.P646427770272767009

noncomputable section

/-- A061184: Fifth (m=4) column of triangle A060921 (bisection of Fibonacci triangle, odd part).

Offset 0, canonical program `A061184.P646427770272767009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061184 (n : ℕ) : ℤ :=
  A061184.P646427770272767009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061217.P10946344954140397278

`∑[A055641(n+1)]`
-/

namespace A061217.P10946344954140397278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P10946344954140397278

noncomputable section

/-- A061217: Number of zeros in the concatenation n(n-1)(n-2)(n-3)...321.

Offset 1, canonical program `A061217.P10946344954140397278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061217 (n : ℕ) : ℤ :=
  A061217.P10946344954140397278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061266.P14843991871974770698

`A144968(n+1)-Δ[A000196(n)]`
-/

namespace A061266.P14843991871974770698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (n + 1) - (f1 (n + 1) - f1 n)

end

end A061266.P14843991871974770698

noncomputable section

/-- A061266: Number of squares between n^3 and (n+1)^3.

Offset 1, canonical program `A061266.P14843991871974770698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061266 (n : ℕ) : ℤ :=
  A061266.P14843991871974770698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061285.P9271905633224100869

`A016116(p?[2*n+1])`
-/

namespace A061285.P9271905633224100869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061285.P9271905633224100869

noncomputable section

/-- A061285: a(n) = 2^((prime(n) - 1)/2).

Offset 2, canonical program `A061285.P9271905633224100869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A061285 (n : ℕ) : ℤ :=
  A061285.P9271905633224100869.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A061285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061287.P16595364071046665369

`floor(sqrt(A000045(n)))`
-/

namespace A061287.P16595364071046665369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000045 n)

end

end A061287.P16595364071046665369

noncomputable section

/-- A061287: Integer part of square root of n-th Fibonacci number.

Offset 0, canonical program `A061287.P16595364071046665369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A061287 (n : ℕ) : ℤ :=
  A061287.P16595364071046665369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A061287.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061391.P12752179287052150230

`∏{e}[n+1, A000326(#+1)]`
-/

namespace A061391.P12752179287052150230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000326 (Nat.factorization (f1 n) p + 1)

end

end A061391.P12752179287052150230

noncomputable section

/-- A061391: a(n) = t(n,3) = Sum_{d|n} tau(d^3), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A061391.P12752179287052150230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061391 (n : ℕ) : ℤ :=
  A061391.P12752179287052150230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061434.P4719792447556849223

`(A018003(n)+A011655(n))*(A018003(n)+A011655(n))²`
-/

namespace A061434.P4719792447556849223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018003 n + A011655 n) * (A018003 n + A011655 n) ^ 2

end

end A061434.P4719792447556849223

noncomputable section

/-- A061434: a(n) is the smallest n-digit cube.

Offset 1, canonical program `A061434.P4719792447556849223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A061434 (n : ℕ) : ℤ :=
  A061434.P4719792447556849223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A061434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061480.P16744061276491008882

`A060156(n+1)%10`
-/

namespace A061480.P16744061276491008882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060156 (n + 1)) 10

end

end A061480.P16744061276491008882

noncomputable section

/-- A061480: n-th digit in decimal expansion of 1/n.

Offset 1, canonical program `A061480.P16744061276491008882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A061480 (n : ℕ) : ℤ :=
  A061480.P16744061276491008882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A061480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061506.P12700610903727524690

`2*A061495(n)`
-/

namespace A061506.P12700610903727524690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061495 n

end

end A061506.P12700610903727524690

noncomputable section

/-- A061506: a(n) = lcm(6n+2, 6n+4, 6n+6).

Offset 0, canonical program `A061506.P12700610903727524690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061506 (n : ℕ) : ℤ :=
  A061506.P12700610903727524690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061536.P1966979558929038729

`1+A046992(n+1)`
-/

namespace A061536.P1966979558929038729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046992 (n + 1)

end

end A061536.P1966979558929038729

noncomputable section

/-- A061536: a(1) = 1 and a(n) = a(n-1) + (the number of primes <= n) for n > 1.

Offset 1, canonical program `A061536.P1966979558929038729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061536 (n : ℕ) : ℤ :=
  A061536.P1966979558929038729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061601.P16047037002631305352

`10^A055642(n)-(n+1)`
-/

namespace A061601.P16047037002631305352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) - (n + 1 : ℚ)

end

end A061601.P16047037002631305352

noncomputable section

/-- A061601: 9's complement of n: a(n) = 10^d - 1 - n where d is the number of digits in n. If a is a digit in n replace it with 9 - a.

Offset 0, canonical program `A061601.P16047037002631305352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061601 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061601.P16047037002631305352.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061605.P5287570905539050970

`(n+1)*∑[A059600(n)]`
-/

namespace A061605.P5287570905539050970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061605.P5287570905539050970

noncomputable section

/-- A061605: Ooguri-Vafa invariants of disk domain wall degeneracies for brane I in the O(K) -> P^1 X P^1 geometry.

Offset 0, canonical program `A061605.P5287570905539050970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061605 (n : ℕ) : ℤ :=
  A061605.P5287570905539050970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061818.P6164946506137872965

`ceil(A024635(3*n)/2)`
-/

namespace A061818.P6164946506137872965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024635 (3 * n) : ℚ) / 2⌉

end

end A061818.P6164946506137872965

noncomputable section

/-- A061818: Multiples of 2 containing only digits 0,1,2.

Offset 0, canonical program `A061818.P6164946506137872965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A061818 (n : ℕ) : ℤ :=
  A061818.P6164946506137872965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A061818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061826.P15676596452042369277

`∩[A008596(n), A024657(n)]`
-/

namespace A061826.P15676596452042369277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061826.P15676596452042369277

noncomputable section

/-- A061826: Multiples of 7 containing only even digits.

Offset 1, canonical program `A061826.P15676596452042369277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A061826 (n : ℕ) : ℤ :=
  (A061826.P15676596452042369277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A061826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061831.P6021332759442418635

`∩[A008600(n), A024657(n)]`
-/

namespace A061831.P6021332759442418635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P6021332759442418635

noncomputable section

/-- A061831: Multiples of 9 having only even digits.

Offset 1, canonical program `A061831.P6021332759442418635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A061831 (n : ℕ) : ℤ :=
  (A061831.P6021332759442418635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A061831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061832.P11543862401762568469

`∩[A008604(n), A024657(n)]`
-/

namespace A061832.P11543862401762568469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061832.P11543862401762568469

noncomputable section

/-- A061832: Multiples of 11 having only even digits.

Offset 1, canonical program `A061832.P11543862401762568469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A061832 (n : ℕ) : ℤ :=
  (A061832.P11543862401762568469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A061832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061870.P8822362641979285632

`∩[A054684(n+1), A175885(n+1)]`
-/

namespace A061870.P8822362641979285632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061870.P8822362641979285632

noncomputable section

/-- A061870: Numbers such that |first digit - second digit + third digit - fourth digit ...| = 1.

Offset 1, canonical program `A061870.P8822362641979285632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A061870 (n : ℕ) : ℤ :=
  (A061870.P8822362641979285632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A061870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062004.P2272493028344736594

`2*A055615(n+1)`
-/

namespace A062004.P2272493028344736594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055615 (n + 1)

end

end A062004.P2272493028344736594

noncomputable section

/-- A062004: a(n) = 2*n*mu(n).

Offset 1, canonical program `A062004.P2272493028344736594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062004 (n : ℕ) : ℤ :=
  A062004.P2272493028344736594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062009.P15091444349905616677

`floor(∑[sqrt(A000040(n+1))])`
-/

namespace A062009.P15091444349905616677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P15091444349905616677

noncomputable section

/-- A062009: a(n) = floor(Sum_{k=1..n} sqrt(prime(k))).

Offset 1, canonical program `A062009.P15091444349905616677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. -/
def A062009 (n : ℕ) : ℤ :=
  A062009.P15091444349905616677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. -/
def A062009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062048.P8616500315973901057

`∑[floor(sqrt(A000040(n+1)))]`
-/

namespace A062048.P8616500315973901057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P8616500315973901057

noncomputable section

/-- A062048: a(n) = Sum_{k=1..n} floor(sqrt(prime(k))).

Offset 1, canonical program `A062048.P8616500315973901057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062048 (n : ℕ) : ℤ :=
  A062048.P8616500315973901057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062121.P11377876297193387401

`floor(exp((n+1)/π))%A001612(n)`
-/

namespace A062121.P11377876297193387401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ (A001612 n)

end

end A062121.P11377876297193387401

noncomputable section

/-- A062121: a(n) = floor(exp(n/Pi)).

Offset 1, canonical program `A062121.P11377876297193387401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A062121 (n : ℕ) : ℤ :=
  A062121.P11377876297193387401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A062121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062234.P8592873382335253705

`2*A000040(n+1)-A000040(n+2)`
-/

namespace A062234.P8592873382335253705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A000040 (n + 2)

end

end A062234.P8592873382335253705

noncomputable section

/-- A062234: From Bertrand's postulate: a(n) = 2*prime(n) - prime(n+1).

Offset 1, canonical program `A062234.P8592873382335253705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062234 (n : ℕ) : ℤ :=
  A062234.P8592873382335253705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062289.P3760834885258552887

`A057716(n+1)-1`
-/

namespace A062289.P3760834885258552887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1) - 1

end

end A062289.P3760834885258552887

noncomputable section

/-- A062289: Numbers n such that n-th row in Pascal triangle contains an even number, i.e., A048967(n) > 0.

Offset 1, canonical program `A062289.P3760834885258552887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062289 (n : ℕ) : ℤ :=
  A062289.P3760834885258552887.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062289.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062296.P1311595272100863139

`n+1-A006047(n)`
-/

namespace A062296.P1311595272100863139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A006047 n)

end

end A062296.P1311595272100863139

noncomputable section

/-- A062296: a(n) = number of entries in n-th row of Pascal's triangle divisible by 3.

Offset 0, canonical program `A062296.P1311595272100863139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062296 (n : ℕ) : ℤ :=
  A062296.P1311595272100863139.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062367.P13182524450785977824

`∏{e}[n+1, A047732(#)+#]`
-/

namespace A062367.P13182524450785977824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A047732 (Nat.factorization (f1 n) p) + (Nat.factorization (f1 n) p : ℤ))

end

end A062367.P13182524450785977824

noncomputable section

/-- A062367: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+3)/6.

Offset 1, canonical program `A062367.P13182524450785977824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062367 (n : ℕ) : ℤ :=
  A062367.P13182524450785977824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062368.P7963604696117707024

`∏{e}[n+1, A002623(#+#)]`
-/

namespace A062368.P7963604696117707024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002623 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)

end

end A062368.P7963604696117707024

noncomputable section

/-- A062368: Multiplicative with a(p^e) = (e+1)*(e+2)*(4*e+3)/6.

Offset 1, canonical program `A062368.P7963604696117707024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062368 (n : ℕ) : ℤ :=
  A062368.P7963604696117707024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062389.P17215953124821351237

`A257984(n+1)-1`
-/

namespace A062389.P17215953124821351237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1) - 1

end

end A062389.P17215953124821351237

noncomputable section

/-- A062389: a(n) = floor( (2n-1)*Pi/2 ).

Offset 1, canonical program `A062389.P17215953124821351237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062389 (n : ℕ) : ℤ :=
  A062389.P17215953124821351237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062419.P6736394046924900958

`A061052(abs(1-n)+2)`
-/

namespace A062419.P6736394046924900958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061052 (|1 - (n : ℤ)| + 2).toNat

end

end A062419.P6736394046924900958

noncomputable section

/-- A062419: Integer part of log(n)^log(n).

Offset 1, canonical program `A062419.P6736394046924900958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062419 (n : ℕ) : ℤ :=
  A062419.P6736394046924900958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062439.P4549804686274560624

`A000040(A000142(n))`
-/

namespace A062439.P4549804686274560624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000142 n).toNat

end

end A062439.P4549804686274560624

noncomputable section

/-- A062439: Primes at large indices: a(n) = prime(n!).

Offset 0, canonical program `A062439.P4549804686274560624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062439 (n : ℕ) : ℤ :=
  A062439.P4549804686274560624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062448.P17857974854903580756

`A000040(A000312(n))`
-/

namespace A062448.P17857974854903580756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000312 n).toNat

end

end A062448.P17857974854903580756

noncomputable section

/-- A062448: Prime numbers at large subscripts: a(n) = prime(n^n).

Offset 0, canonical program `A062448.P17857974854903580756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062448 (n : ℕ) : ℤ :=
  A062448.P17857974854903580756.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062558.P497795809054125755

`A023645(n+1)+2`
-/

namespace A062558.P497795809054125755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + 2

end

end A062558.P497795809054125755

noncomputable section

/-- A062558: Number of nonisomorphic cyclic subgroups of dihedral group with 2n elements.

Offset 1, canonical program `A062558.P497795809054125755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062558 (n : ℕ) : ℤ :=
  A062558.P497795809054125755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062562.P16887642206633692389

`∑[∑{d}[n, A055615(n)/#]]`
-/

namespace A062562.P16887642206633692389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A055615 n : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062562.P16887642206633692389

noncomputable section

/-- A062562: a(n) = Sum_{k=1..n} mu(k)*sigma(k).

Offset 0, canonical program `A062562.P16887642206633692389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062562.P16887642206633692389.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062720.P5446721574008662633

`((A000040(n+1)-(n+2))*and(1, n)+n)*gcd(2, n)+2`
-/

namespace A062720.P5446721574008662633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) - (n + 2 : ℤ)) * (Nat.land 1 n : ℤ) + (n : ℤ)) * (Nat.gcd 2 n : ℤ) + 2

end

end A062720.P5446721574008662633

noncomputable section

/-- A062720: If n is odd then 2*n else prime(n).

Offset 1, canonical program `A062720.P5446721574008662633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062720 (n : ℕ) : ℤ :=
  A062720.P5446721574008662633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062737.P15537786315737208090

`(p?[A001749(n+1)-1]+1)/4`
-/

namespace A062737.P15537786315737208090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 4

end

end A062737.P15537786315737208090

noncomputable section

/-- A062737: Primes p such that 4p-1 is also prime.

Offset 1, canonical program `A062737.P15537786315737208090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A062737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062737.P15537786315737208090.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A062737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062756.P1690328074711592095

`val(A006047(n), 2)`
-/

namespace A062756.P1690328074711592095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

end

end A062756.P1690328074711592095

noncomputable section

/-- A062756: Number of 1's in ternary (base-3) expansion of n.

Offset 0, canonical program `A062756.P1690328074711592095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062756 (n : ℕ) : ℤ :=
  (A062756.P1690328074711592095.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062789.P13648497980355874832

`gcd(A000027(n+1), A002378(A016035(n+1)))`
-/

namespace A062789.P13648497980355874832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A002378 (A016035 (n + 1)).toNat)

end

end A062789.P13648497980355874832

noncomputable section

/-- A062789: a(n) = gcd(n, phi(n) * (phi(n) + 1)).

Offset 1, canonical program `A062789.P13648497980355874832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062789 (n : ℕ) : ℤ :=
  (A062789.P13648497980355874832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062790.P14201526699586204350

`∑{d}[n+1, A001065(#)*A007427((n+1)/#)]`
-/

namespace A062790.P14201526699586204350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P14201526699586204350

noncomputable section

/-- A062790: Moebius transform of the cototient function A051953.

Offset 1, canonical program `A062790.P14201526699586204350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062790 (n : ℕ) : ℤ :=
  A062790.P14201526699586204350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062798.P12478543067801712221

`∑{d}[n+1, A001405(#)]`
-/

namespace A062798.P12478543067801712221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001405 d

end

end A062798.P12478543067801712221

noncomputable section

/-- A062798: Inverse Moebius transform of A001405 (binomial(n, floor(n/2))).

Offset 1, canonical program `A062798.P12478543067801712221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A062798 (n : ℕ) : ℤ :=
  A062798.P12478543067801712221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A062798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062877.P13716015760311910933

`A036796(n)-1`
-/

namespace A062877.P13716015760311910933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 n - 1

end

end A062877.P13716015760311910933

noncomputable section

/-- A062877: 0 and numbers representable as a sum of distinct odd-indexed Fibonacci numbers.

Offset 0, canonical program `A062877.P13716015760311910933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062877 (n : ℕ) : ℤ :=
  A062877.P13716015760311910933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062883.P17430366782360753676

`A189235(n+1)`
-/

namespace A062883.P17430366782360753676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189235 (n + 1)

end

end A062883.P17430366782360753676

noncomputable section

/-- A062883: (1-2*cos(1/11*Pi))^n+(1+2*cos(2/11*Pi))^n+(1-2*cos(3/11*Pi))^n+(1+2*cos(4/11*Pi))^n+(1-2*cos(5/11*Pi))^n.

Offset 1, canonical program `A062883.P17430366782360753676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A062883 (n : ℕ) : ℤ :=
  A062883.P17430366782360753676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A062883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062890.P5257979174450164167

`A026810(n)-A181120(A004526(n))`
-/

namespace A062890.P5257979174450164167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A181120 (A004526 n).toNat

end

end A062890.P5257979174450164167

noncomputable section

/-- A062890: Number of quadrilaterals that can be formed with perimeter n. In other words, number of partitions of n into four parts such that the sum of any three is more than the fourth.

Offset 0, canonical program `A062890.P5257979174450164167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062890 (n : ℕ) : ℤ :=
  A062890.P5257979174450164167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062967.P4115088381061697299

`2*A001065(n+1)-1`
-/

namespace A062967.P4115088381061697299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - 1

end

end A062967.P4115088381061697299

noncomputable section

/-- A062967: a(n) = 2*(sigma(n)-n-1)+1, where sigma = A000203, sum of divisors of n.

Offset 1, canonical program `A062967.P4115088381061697299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062967 (n : ℕ) : ℤ :=
  A062967.P4115088381061697299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062998.P8525607989414604910

`lt[n*A062329(n), n]`
-/

namespace A062998.P8525607989414604910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062329 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062998.P8525607989414604910

noncomputable section

/-- A062998: Numbers whose sum of digits is less than or equal to its product of digits.

Offset 1, canonical program `A062998.P8525607989414604910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7284 terms. -/
def A062998 (n : ℕ) : ℤ :=
  (A062998.P8525607989414604910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7284 terms. -/
def A062998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063114.P17903674597302327657

`A051801(n+1)+1+n`
-/

namespace A063114.P17903674597302327657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (n + 1) + 1 + (n : ℤ)

end

end A063114.P17903674597302327657

noncomputable section

/-- A063114: a(n) = n + product of the nonzero digits of n.

Offset 1, canonical program `A063114.P17903674597302327657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063114 (n : ℕ) : ℤ :=
  A063114.P17903674597302327657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063129.P5998583005354371378

`A063135(n+1)-or(1, n)`
-/

namespace A063129.P5998583005354371378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A063129.P5998583005354371378

noncomputable section

/-- A063129: Dimension of the space of weight 2n cusp forms for Gamma_0( 61 ).

Offset 1, canonical program `A063129.P5998583005354371378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063129 (n : ℕ) : ℤ :=
  A063129.P5998583005354371378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063229.P2455044806351860707

`4*n+A063207(n+1)+2`
-/

namespace A063229.P2455044806351860707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063207 (n + 1) + 2)

end

end A063229.P2455044806351860707

noncomputable section

/-- A063229: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 69 ).

Offset 1, canonical program `A063229.P2455044806351860707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063229 (n : ℕ) : ℤ :=
  A063229.P2455044806351860707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063230.P14545759985604796724

`A063223(n+1)+Δ[n²]`
-/

namespace A063230.P14545759985604796724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063230.P14545759985604796724

noncomputable section

/-- A063230: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 71 ).

Offset 1, canonical program `A063230.P14545759985604796724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063230 (n : ℕ) : ℤ :=
  A063230.P14545759985604796724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063236.P5255982037722682345

`4*n+A063220(n+1)+2`
-/

namespace A063236.P5255982037722682345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063220 (n + 1) + 2)

end

end A063236.P5255982037722682345

noncomputable section

/-- A063236: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 85 ).

Offset 1, canonical program `A063236.P5255982037722682345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063236 (n : ℕ) : ℤ :=
  A063236.P5255982037722682345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063244.P3216975161231170830

`4*n+A063214(n+1)+2`
-/

namespace A063244.P3216975161231170830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063214 (n + 1) + 2)

end

end A063244.P3216975161231170830

noncomputable section

/-- A063244: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 94 ).

Offset 1, canonical program `A063244.P3216975161231170830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063244 (n : ℕ) : ℤ :=
  A063244.P3216975161231170830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063263.P3578646153030098628

`∑[∑[∑[A062988(n)-2]]]`
-/

namespace A063263.P3578646153030098628
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063263.P3578646153030098628

noncomputable section

/-- A063263: Ninth column (k=8) of sextinomial array A063260.

Offset 0, canonical program `A063263.P3578646153030098628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063263 (n : ℕ) : ℤ :=
  A063263.P3578646153030098628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063418.P3031915557263829765

`∑[A063417(n)-∑[n+1]]`
-/

namespace A063418.P3031915557263829765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063418.P3031915557263829765

noncomputable section

/-- A063418: Tenth column (k=9) of septinomial array A063265.

Offset 0, canonical program `A063418.P3031915557263829765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063418 (n : ℕ) : ℤ :=
  A063418.P3031915557263829765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063543.P9465539204223677482

`1-A051801(n+1)+n`
-/

namespace A063543.P9465539204223677482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051801 (n + 1) + (n : ℤ)

end

end A063543.P9465539204223677482

noncomputable section

/-- A063543: a(n) = n - product of the nonzero digits of n.

Offset 1, canonical program `A063543.P9465539204223677482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063543 (n : ℕ) : ℤ :=
  A063543.P9465539204223677482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063549.P3440238765990311944

`C(or(1, n), n)*A000108(∑[n%2])`
-/

namespace A063549.P3440238765990311944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) * A000108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063549.P3440238765990311944

noncomputable section

/-- A063549: Smallest number of crossing-free matchings on n points in the plane.

Offset 1, canonical program `A063549.P3440238765990311944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A063549 (n : ℕ) : ℤ :=
  A063549.P3440238765990311944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A063549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063595.P18202738297110492609

`floor(Δ[sqrt(A000045(n))])`
-/

namespace A063595.P18202738297110492609
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000045 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P18202738297110492609

noncomputable section

/-- A063595: a(n) = floor(sqrt(Fibonacci(n+1)) - sqrt(Fibonacci(n))).

Offset 0, canonical program `A063595.P18202738297110492609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A063595 (n : ℕ) : ℤ :=
  A063595.P18202738297110492609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A063595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063712.P7045674916285883197

`A023532(n-A023532(n))+A002024(n+1)`
-/

namespace A063712.P7045674916285883197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 ((n : ℤ) - A023532 n).toNat + A002024 (n + 1)

end

end A063712.P7045674916285883197

noncomputable section

/-- A063712: Table of bits required for product of n- and k-bit positive numbers read by antidiagonals.

Offset 1, canonical program `A063712.P7045674916285883197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063712 (n : ℕ) : ℤ :=
  A063712.P7045674916285883197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063772.P4913554057174759972

`A000196(n)+a(A053186(n))` with `a(0)=0`
-/

namespace A063772.P4913554057174759972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000196 n + a (A053186 n).toNat

end

end A063772.P4913554057174759972

noncomputable section

/-- A063772: a(k^2 + i) = k + a(i) for k >= 0 and 0 <= i <= k * 2; a(0) = 0.

Offset 0, canonical program `A063772.P4913554057174759972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063772 (n : ℕ) : ℤ :=
  A063772.P4913554057174759972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063842.P18276294030905061027

`∑[A100790(n)]+∑[n]²`
-/

namespace A063842.P18276294030905061027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100790 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A063842.P18276294030905061027

noncomputable section

/-- A063842: Number of colorings of K_4 using at most n colors.

Offset 0, canonical program `A063842.P18276294030905061027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063842 (n : ℕ) : ℤ :=
  A063842.P18276294030905061027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063946.P14831572246508618093

`xor(n, A053644(floor(n/2)))`
-/

namespace A063946.P14831572246508618093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053644 ⌊(n : ℚ) / 2⌋.toNat)

end

end A063946.P14831572246508618093

noncomputable section

/-- A063946: Write n in binary and complement second bit (from the left), with a(0)=0 and a(1)=1.

Offset 0, canonical program `A063946.P14831572246508618093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063946 (n : ℕ) : ℤ :=
  A063946.P14831572246508618093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063985.P14214563899391599211

`∑[A016035(n+1)]+n`
-/

namespace A063985.P14214563899391599211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063985.P14214563899391599211

noncomputable section

/-- A063985: Partial sums of cototient sequence A051953.

Offset 1, canonical program `A063985.P14214563899391599211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063985 (n : ℕ) : ℤ :=
  A063985.P14214563899391599211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064027.P11259258058536768787

`abs(2*A050999(n+1)-A001157(n+1))`
-/

namespace A064027.P11259258058536768787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A050999 (n + 1) - A001157 (n + 1)|

end

end A064027.P11259258058536768787

noncomputable section

/-- A064027: a(n) = (-1)^n*Sum_{d|n} (-1)^d*d^2.

Offset 1, canonical program `A064027.P11259258058536768787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064027 (n : ℕ) : ℤ :=
  A064027.P11259258058536768787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064055.P16541604894270962580

`∑[A001919(n+3)-A005718(n)]`
-/

namespace A064055.P16541604894270962580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - A005718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P16541604894270962580

noncomputable section

/-- A064055: Ninth column of quadrinomial coefficients.

Offset 0, canonical program `A064055.P16541604894270962580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064055 (n : ℕ) : ℤ :=
  A064055.P16541604894270962580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064059.P4413117397441082436

`∑[A005557(n+1)]`
-/

namespace A064059.P4413117397441082436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064059.P4413117397441082436

noncomputable section

/-- A064059: Seventh column of Catalan triangle A009766.

Offset 0, canonical program `A064059.P4413117397441082436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A064059 (n : ℕ) : ℤ :=
  A064059.P4413117397441082436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A064059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064198.P13986001191170404760

`12*(A236770(n)-A000326(n))`
-/

namespace A064198.P13986001191170404760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A236770 n - A000326 n)

end

end A064198.P13986001191170404760

noncomputable section

/-- A064198: a(n) = 3*(n-2)*(n-3)*(3*n^2-3*n-8)/2.

Offset 2, canonical program `A064198.P13986001191170404760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064198 (n : ℕ) : ℤ :=
  A064198.P13986001191170404760.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064412.P10500995238747171540

`A212967(n)+A008804(n)`
-/

namespace A064412.P10500995238747171540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + A008804 n

end

end A064412.P10500995238747171540

noncomputable section

/-- A064412: At stage 1, start with a unit equilateral equiangular triangle. At each successive stage add 3*(n-1) new triangles around outside with edge-to-edge contacts. Sequence gives number of triangles (regardless of size) at n-th stage.

Offset 1, canonical program `A064412.P10500995238747171540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064412 (n : ℕ) : ℤ :=
  A064412.P10500995238747171540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064497.P12690609797961739439

`A000045(n+1)*p?[A001057(n)]`
-/

namespace A064497.P12690609797961739439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064497.P12690609797961739439

noncomputable section

/-- A064497: a(n) = prime(n) * Fibonacci(n).

Offset 1, canonical program `A064497.P12690609797961739439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A064497 (n : ℕ) : ℤ :=
  A064497.P12690609797961739439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A064497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064520.P16522075484483722400

`∑[(n+1)*A033999(A003056(n))]`
-/

namespace A064520.P16522075484483722400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064520.P16522075484483722400

noncomputable section

/-- A064520: a(n) = + 1 - 2 - 3 + 4 + 5 + 6 - 7 - 8 - 9 - 10 + 11 + 12 + 13 + 14 + 15 - ... + (+-1)*n, where there is one plus, two minuses, three pluses, etc. (see A002024).

Offset 1, canonical program `A064520.P16522075484483722400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064520 (n : ℕ) : ℤ :=
  A064520.P16522075484483722400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064550.P4635487846824870834

`∑[2*A005185(n+1)]-A000124(n)`
-/

namespace A064550.P4635487846824870834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 n

end

end A064550.P4635487846824870834

noncomputable section

/-- A064550: a(1) = 2, a(n)=a(n-1)+2*Q(n)-n, n > 1 where Q = A005185.

Offset 0, canonical program `A064550.P4635487846824870834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064550 (n : ℕ) : ℤ :=
  A064550.P4635487846824870834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064600.P2132377139288008707

`A000040(a(n-1)-1)` with `a(0)=5`
-/

namespace A064600.P2132377139288008707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000040 (a (n - 1) - 1).toNat

end

end A064600.P2132377139288008707

noncomputable section

/-- A064600: a(n) indicates the position of 5 after n iterations of A064553.

Offset 0, canonical program `A064600.P2132377139288008707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064600 (n : ℕ) : ℤ :=
  A064600.P2132377139288008707.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064659.P6472487142109502257

`A000040(n+1)-A050503(n+1)`
-/

namespace A064659.P6472487142109502257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A050503 (n + 1)

end

end A064659.P6472487142109502257

noncomputable section

/-- A064659: a(n) = round(prime(n) - n*log(n)).

Offset 1, canonical program `A064659.P6472487142109502257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064659 (n : ℕ) : ℤ :=
  A064659.P6472487142109502257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064718.P6226458648572987889

`A057359(A016825(n)-1)+2`
-/

namespace A064718.P6226458648572987889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A016825 n - 1).toNat + 2

end

end A064718.P6226458648572987889

noncomputable section

/-- A064718: A Beatty sequence for 2^i + 2^-i where i = sqrt(-1).

Offset 1, canonical program `A064718.P6226458648572987889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A064718 (n : ℕ) : ℤ :=
  A064718.P6226458648572987889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A064718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064988.P936164228496250104

`∏{p}[n+1, A000040(#)^val(n+1, #)]`
-/

namespace A064988.P936164228496250104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 p ^ SequenceMachineLib.valuation (n + 1) p

end

end A064988.P936164228496250104

noncomputable section

/-- A064988: Multiplicative with a(p^e) = prime(p)^e.

Offset 1, canonical program `A064988.P936164228496250104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064988 (n : ℕ) : ℤ :=
  A064988.P936164228496250104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064997.P7944663439960374129

`A002266(A008587(2*(n+1))+A002265(3*n+2))`
-/

namespace A064997.P7944663439960374129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008587 (2 * (n + 1)) + A002265 (3 * n + 2)).toNat

end

end A064997.P7944663439960374129

noncomputable section

/-- A064997: A Beatty sequence: [Pi^2 -8].

Offset 1, canonical program `A064997.P7944663439960374129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A064997 (n : ℕ) : ℤ :=
  A064997.P7944663439960374129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A064997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065037.P9608909519015091916

`n+1+Δ[A161680(A068639(n))]`
-/

namespace A065037.P9608909519015091916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A068639 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (f1 (n + 1) - f1 n)

end

end A065037.P9608909519015091916

noncomputable section

/-- A065037: Inverse permutation to A036552.

Offset 1, canonical program `A065037.P9608909519015091916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065037 (n : ℕ) : ℤ :=
  A065037.P9608909519015091916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065091.P6971844946592549357

`A000040(n+2)`
-/

namespace A065091.P6971844946592549357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

end

end A065091.P6971844946592549357

noncomputable section

/-- A065091: Odd primes.

Offset 1, canonical program `A065091.P6971844946592549357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065091 (n : ℕ) : ℤ :=
  A065091.P6971844946592549357.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065166.P5421407723204175398

`ceil(abs(12-A157142(n))/2)`
-/

namespace A065166.P5421407723204175398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|12 - A157142 n| : ℚ) / 2⌉

end

end A065166.P5421407723204175398

noncomputable section

/-- A065166: Permutation t->t+3 of Z, folded to N.

Offset 1, canonical program `A065166.P5421407723204175398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065166 (n : ℕ) : ℤ :=
  A065166.P5421407723204175398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065172.P3713161606307680043

`lcm(4, n+1)-A065259(n+1)`
-/

namespace A065172.P3713161606307680043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℤ) - A065259 (n + 1)

end

end A065172.P3713161606307680043

noncomputable section

/-- A065172: Inverse permutation to A065171.

Offset 1, canonical program `A065172.P3713161606307680043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065172 (n : ℕ) : ℤ :=
  A065172.P3713161606307680043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065308.P10618243787799868121

`A000040(∑[∏{p}[n+1, C(#%n, #)]])`
-/

namespace A065308.P10618243787799868121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065308.P10618243787799868121

noncomputable section

/-- A065308: a(n) = prime(n - pi(n)).

Offset 1, canonical program `A065308.P10618243787799868121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065308 (n : ℕ) : ℤ :=
  A065308.P10618243787799868121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065346.P4756572142742502174

`A001405(2*(n+1))%(A002378(n+2)*A002378(n+4))`
-/

namespace A065346.P4756572142742502174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (2 * (n + 1))) (A002378 (n + 2) * A002378 (n + 4))

end

end A065346.P4756572142742502174

noncomputable section

/-- A065346: a(n) = binomial(2*n, n) mod ((n+1)*(n+2)*(n+3)*(n+4)).

Offset 1, canonical program `A065346.P4756572142742502174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A065346 (n : ℕ) : ℤ :=
  A065346.P4756572142742502174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A065346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065350.P8131813115170436845

`A000108(n+1)%(n+2)*(n+2)`
-/

namespace A065350.P8131813115170436845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1)) (n + 2 : ℤ) * (n + 2 : ℤ)

end

end A065350.P8131813115170436845

noncomputable section

/-- A065350: a(n) = binomial(2*n, n) mod (n+1)^2.

Offset 1, canonical program `A065350.P8131813115170436845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A065350 (n : ℕ) : ℤ :=
  A065350.P8131813115170436845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A065350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065386.P10145385021084767959

`record[A053158(n+1)-(n+1)]`
-/

namespace A065386.P10145385021084767959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P10145385021084767959

noncomputable section

/-- A065386: Successive record values of the cototient function (A051953).

Offset 1, canonical program `A065386.P10145385021084767959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A065386 (n : ℕ) : ℤ :=
  A065386.P10145385021084767959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A065386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065450.P6708041724933153573

`a(n-2)+A047883(n)` with `a(0)=1, a(1)=2`
-/

namespace A065450.P6708041724933153573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + A047883 n

end

end A065450.P6708041724933153573

noncomputable section

/-- A065450: Make an infinite chessboard from the squares in the first quadrant; sequence gives number of squares a knight can reach in n moves starting at the origin.

Offset 0, canonical program `A065450.P6708041724933153573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065450 (n : ℕ) : ℤ :=
  A065450.P6708041724933153573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065482.P1517657017870815367

`floor(A053639(n+1)/2)`
-/

namespace A065482.P1517657017870815367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053639 (n + 1) : ℚ) / 2⌋

end

end A065482.P1517657017870815367

noncomputable section

/-- A065482: a(n) = round( 2^n/n ).

Offset 1, canonical program `A065482.P1517657017870815367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A065482 (n : ℕ) : ℤ :=
  A065482.P1517657017870815367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A065482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065495.P5148753834428374219

`2^(n+2)-A061279(n+2)`
-/

namespace A065495.P5148753834428374219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A061279 (n + 2)

end

end A065495.P5148753834428374219

noncomputable section

/-- A065495: Number of (binary) bit strings of length n in which an odd length block of 0's is followed by an odd length block of 1's.

Offset 2, canonical program `A065495.P5148753834428374219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A065495 (n : ℕ) : ℤ :=
  A065495.P5148753834428374219.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A065495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065506.P12524710124335100545

`2^(n+3)-A065455(n+3)`
-/

namespace A065506.P12524710124335100545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A065455 (n + 3)

end

end A065506.P12524710124335100545

noncomputable section

/-- A065506: Number of (binary) bit strings of length n having an even length block of 0's followed by an odd length block of 1's.

Offset 3, canonical program `A065506.P12524710124335100545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A065506 (n : ℕ) : ℤ :=
  A065506.P12524710124335100545.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A065506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065554.P874369825482619796

`eq[0, A002379(n+1)%3]`
-/

namespace A065554.P874369825482619796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002379 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065554.P874369825482619796

noncomputable section

/-- A065554: Numbers k such that floor((3/2)^(k+1))/floor((3/2)^k) = 3/2.

Offset 1, canonical program `A065554.P874369825482619796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A065554 (n : ℕ) : ℤ :=
  (A065554.P874369825482619796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A065554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065564.P8392613647808291143

`eq[0, A064628(n+1)%4]`
-/

namespace A065564.P8392613647808291143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064628 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065564.P8392613647808291143

noncomputable section

/-- A065564: Numbers k such that floor((4/3)^(k+1))/floor((4/3)^k) = 4/3.

Offset 1, canonical program `A065564.P8392613647808291143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A065564 (n : ℕ) : ℤ :=
  (A065564.P8392613647808291143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A065564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065616.P13681093671127209557

`floor(log2(n+1)/(n+1)*A000079(n+1))`
-/

namespace A065616.P13681093671127209557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) / (n + 1 : ℝ) * (A000079 (n + 1) : ℝ)⌋

end

end A065616.P13681093671127209557

noncomputable section

/-- A065616: a(n) = floor(log_2(n)*2^n/n).

Offset 1, canonical program `A065616.P13681093671127209557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A065616 (n : ℕ) : ℤ :=
  A065616.P13681093671127209557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A065616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065764.P714845877274425629

`∑{d}[n+1, A000290(#)*A048250((n+1)/#)]`
-/

namespace A065764.P714845877274425629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P714845877274425629

noncomputable section

/-- A065764: Sum of divisors of square numbers.

Offset 1, canonical program `A065764.P714845877274425629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065764 (n : ℕ) : ℤ :=
  A065764.P714845877274425629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065801.P8989070980736403821

`A000027(A060508(n+2)+1)`
-/

namespace A065801.P8989070980736403821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A060508 (n + 2) + 1).toNat

end

end A065801.P8989070980736403821

noncomputable section

/-- A065801: Least k such that n^k > 2^n.

Offset 2, canonical program `A065801.P8989070980736403821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065801 (n : ℕ) : ℤ :=
  A065801.P8989070980736403821.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065863.P10840527793315109714

`A000040(n+1)%∑[∏{p}[n+1, C(#%n, #)]]`
-/

namespace A065863.P10840527793315109714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065863.P10840527793315109714

noncomputable section

/-- A065863: Remainder when n-th prime is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065863.P10840527793315109714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065863 (n : ℕ) : ℤ :=
  A065863.P10840527793315109714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065881.P10796324232144630153

`A004151(n+1)%10`
-/

namespace A065881.P10796324232144630153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004151 (n + 1)) 10

end

end A065881.P10796324232144630153

noncomputable section

/-- A065881: Ultimate modulo 10: right-hand nonzero digit of n.

Offset 1, canonical program `A065881.P10796324232144630153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065881 (n : ℕ) : ℤ :=
  A065881.P10796324232144630153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065942.P390798761674384840

`A051033(A032766(n))`
-/

namespace A065942.P390798761674384840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A032766 n).toNat

end

end A065942.P390798761674384840

noncomputable section

/-- A065942: Central column of triangle A065941.

Offset 0, canonical program `A065942.P390798761674384840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A065942 (n : ℕ) : ℤ :=
  A065942.P390798761674384840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A065942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065999.P18140349948238874302

`A004166(2*n)`
-/

namespace A065999.P18140349948238874302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 (2 * n)

end

end A065999.P18140349948238874302

noncomputable section

/-- A065999: Sum of digits of 9^n.

Offset 0, canonical program `A065999.P18140349948238874302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065999 (n : ℕ) : ℤ :=
  A065999.P18140349948238874302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066033.P9102555403782553375

`∑[A000040(n+1)*A165326(n)]`
-/

namespace A066033.P9102555403782553375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066033.P9102555403782553375

noncomputable section

/-- A066033: Alternating sum of primes: a(1) = A000040(1) = 2 and a(n) = a(n-1) + A000040(n)*(-1)^n for n > 1.

Offset 1, canonical program `A066033.P9102555403782553375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066033 (n : ℕ) : ℤ :=
  A066033.P9102555403782553375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066067.P14584696473161266079

`∑[A068928(n+1)-1]`
-/

namespace A066067.P14584696473161266079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068928 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066067.P14584696473161266079

noncomputable section

/-- A066067: Number of binary strings u of any length with property that length(u) + number of 0's in u <= n (only one of a string and its reversal are counted).

Offset 1, canonical program `A066067.P14584696473161266079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A066067 (n : ℕ) : ℤ :=
  A066067.P14584696473161266079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A066067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066148.P15850086910344057196

`p?[A059010(n)]`
-/

namespace A066148.P15850086910344057196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066148.P15850086910344057196

noncomputable section

/-- A066148: Primes with an even number of 0's in binary expansion.

Offset 1, canonical program `A066148.P15850086910344057196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A066148 (n : ℕ) : ℤ :=
  A066148.P15850086910344057196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A066148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066149.P805672905176407907

`p?[A059009(n)]`
-/

namespace A066149.P805672905176407907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066149.P805672905176407907

noncomputable section

/-- A066149: Primes with an odd number of 0's in binary expansion.

Offset 1, canonical program `A066149.P805672905176407907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. -/
def A066149 (n : ℕ) : ℤ :=
  A066149.P805672905176407907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. -/
def A066149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066209.P1765855322789560175

`A053041(n+1)-10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066209.P1765855322789560175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053041 (n + 1) - (10 ^ n : ℤ)

end

end A066209.P1765855322789560175

noncomputable section

/-- A066209: A053041(n)-10^(n-1).

Offset 1, canonical program `A066209.P1765855322789560175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066209 (n : ℕ) : ℤ :=
  A066209.P1765855322789560175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066209.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066293.P1248160133260108300

`A000203(n+1)²-A001157(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066293.P1248160133260108300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - A001157 (n + 1)

end

end A066293.P1248160133260108300

noncomputable section

/-- A066293: a(n) = A000203(n)^2 - A001157(n) = sigma(n)^2 - sigma_2(n).

Offset 1, canonical program `A066293.P1248160133260108300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066293 (n : ℕ) : ℤ :=
  A066293.P1248160133260108300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066309.P688434385079463632

`lt[A066308(abs(1-n)+1), n]`
-/

namespace A066309.P688434385079463632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066309.P688434385079463632

noncomputable section

/-- A066309: Numbers k such that k > (product of digits of k) * (sum of digits of k).

Offset 1, canonical program `A066309.P688434385079463632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A066309 (n : ℕ) : ℤ :=
  (A066309.P688434385079463632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A066309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066342.P15556581999171577946

`∪[A066368(n+1), A066374(n+2)]`
-/

namespace A066342.P15556581999171577946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066374 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066342.P15556581999171577946

noncomputable section

/-- A066342: Number of triangulations of the cyclic polytope C(n, n-4).

Offset 2, canonical program `A066342.P15556581999171577946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A066342 (n : ℕ) : ℤ :=
  (A066342.P15556581999171577946.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A066342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066345.P89557897596914136

`A166920(n+1)-A171647(n+1)`
-/

namespace A066345.P89557897596914136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1) - A171647 (n + 1)

end

end A066345.P89557897596914136

noncomputable section

/-- A066345: Winning binary "same game" templates of length n as defined below.

Offset 1, canonical program `A066345.P89557897596914136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066345 (n : ℕ) : ℤ :=
  A066345.P89557897596914136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066373.P4104071541998362309

`A170881(n+2)-1`
-/

namespace A066373.P4104071541998362309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170881 (n + 2) - 1

end

end A066373.P4104071541998362309

noncomputable section

/-- A066373: a(n) = (3*n-2)*2^(n-3).

Offset 2, canonical program `A066373.P4104071541998362309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A066373 (n : ℕ) : ℤ :=
  A066373.P4104071541998362309.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A066373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066438.P4806805632813582493

`A066429(n+1)%(n+1)`
-/

namespace A066438.P4806805632813582493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066429 (n + 1)) (n + 1 : ℤ)

end

end A066438.P4806805632813582493

noncomputable section

/-- A066438: a(n) = 7^n mod n.

Offset 1, canonical program `A066438.P4806805632813582493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066438 (n : ℕ) : ℤ :=
  A066438.P4806805632813582493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066439.P15596551957165423481

`A066430(n+1)%(n+1)`
-/

namespace A066439.P15596551957165423481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066430 (n + 1)) (n + 1 : ℤ)

end

end A066439.P15596551957165423481

noncomputable section

/-- A066439: a(n) = 8^n mod n.

Offset 1, canonical program `A066439.P15596551957165423481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066439 (n : ℕ) : ℤ :=
  A066439.P15596551957165423481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066440.P8418293446252948467

`A066431(n+1)%(n+1)`
-/

namespace A066440.P8418293446252948467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066431 (n + 1)) (n + 1 : ℤ)

end

end A066440.P8418293446252948467

noncomputable section

/-- A066440: a(n) = 9^n mod n.

Offset 1, canonical program `A066440.P8418293446252948467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066440 (n : ℕ) : ℤ :=
  A066440.P8418293446252948467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066456.P12786158551663519628

`A000124(n)+∑[A028724(n)]-n`
-/

namespace A066456.P12786158551663519628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A066456.P12786158551663519628

noncomputable section

/-- A066456: Upper bound on number of regular triangulations of cyclic polytope C(n, n-4).

Offset 1, canonical program `A066456.P12786158551663519628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066456 (n : ℕ) : ℤ :=
  A066456.P12786158551663519628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066577.P5294432664984290938

`floor((n+1)/A051801(n+1))`
-/

namespace A066577.P5294432664984290938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A051801 (n + 1) : ℚ)⌋

end

end A066577.P5294432664984290938

noncomputable section

/-- A066577: a(n) = floor(n/(product of nonzero digits of n)).

Offset 1, canonical program `A066577.P5294432664984290938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066577 (n : ℕ) : ℤ :=
  A066577.P5294432664984290938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066628.P4571683134443220888

`(a(n-1)+1)%∑[A003849(n)]` with `a(0)=0`
-/

namespace A066628.P4571683134443220888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066628.P4571683134443220888

noncomputable section

/-- A066628: a(n) = n - the largest Fibonacci number <= n.

Offset 0, canonical program `A066628.P4571683134443220888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066628 (n : ℕ) : ℤ :=
  A066628.P4571683134443220888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066636.P3666790557373503955

`A007947(n+1)^A051903(n+1)/(n+1)`
-/

namespace A066636.P3666790557373503955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ) / (n + 1 : ℚ)

end

end A066636.P3666790557373503955

noncomputable section

/-- A066636: a(n) = A066638(n)/n, where A066638(n) is the smallest power of a squarefree kernel of n that is a multiple of n.

Offset 1, canonical program `A066636.P3666790557373503955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066636.P3666790557373503955.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066638.P14790804401047416146

`A007947(n+1)^A051903(n+1)`
-/

namespace A066638.P14790804401047416146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A066638.P14790804401047416146

noncomputable section

/-- A066638: Smallest power of a squarefree number that is a multiple of n.

Offset 1, canonical program `A066638.P14790804401047416146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066638 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066638.P14790804401047416146.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066714.P4346487057166145415

`dr(A009946(n))*A099392(n+1)`
-/

namespace A066714.P4346487057166145415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A009946 n) : ℤ) * A099392 (n + 1)

end

end A066714.P4346487057166145415

noncomputable section

/-- A066714: Coordination sequence for ReO_3 net with respect to Re atom.

Offset 0, canonical program `A066714.P4346487057166145415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066714 (n : ℕ) : ℤ :=
  A066714.P4346487057166145415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066774.P15152739577050822243

`eq[4, A032741(n)+A023645(n+2)]`
-/

namespace A066774.P15152739577050822243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A023645 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066774.P15152739577050822243

noncomputable section

/-- A066774: A066728(a(n))=3.

Offset 1, canonical program `A066774.P15152739577050822243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774 (n : ℕ) : ℤ :=
  (A066774.P15152739577050822243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066803.P15453042505925625010

`gcd(∑[3^n]+1, A000079(n+1)+1)`
-/

namespace A066803.P15453042505925625010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A000079 (n + 1) + 1)

end

end A066803.P15453042505925625010

noncomputable section

/-- A066803: a(n) = gcd(2^n + 1, 3^n + 1).

Offset 1, canonical program `A066803.P15453042505925625010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A066803 (n : ℕ) : ℤ :=
  (A066803.P15453042505925625010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A066803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066929.P16442121695660913999

`eq[∑{e}[n+1, #], A000195(n+1)]+1`
-/

namespace A066929.P16442121695660913999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A066929.P16442121695660913999

noncomputable section

/-- A066929: Numbers n such that Omega(n) = floor(log(n)).

Offset 1, canonical program `A066929.P16442121695660913999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A066929 (n : ℕ) : ℤ :=
  (A066929.P16442121695660913999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A066929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067036.P9913651704098405117

`record[A061486(n)+1]`
-/

namespace A067036.P9913651704098405117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P9913651704098405117

noncomputable section

/-- A067036: Records for the number of integers k such that an integer is of the form k + reverse(k).

Offset 1, canonical program `A067036.P9913651704098405117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A067036 (n : ℕ) : ℤ :=
  A067036.P9913651704098405117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A067036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067057.P17424698232862678055

`round(2^(n-1)*∑[A006002(n)])`
-/

namespace A067057.P17424698232862678055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A067057.P17424698232862678055

noncomputable section

/-- A067057: Let A(n) = {1,2,3,...n}. Let B(r) and C(n-r) be two subsets of A(n) having r and n-r elements respectively, such that B(r) U C(n-r) = A(n) and B and C are disjoint; then a(n) = sum of the products of all combination sums of elements of B and C for r =1 to n-1.

Offset 1, canonical program `A067057.P17424698232862678055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A067057 (n : ℕ) : ℤ :=
  A067057.P17424698232862678055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A067057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067080.P5785557977291885649

`(n+1)*a(∑[char[A017377(n+1)]])` with `a(0)=1`
-/

namespace A067080.P5785557977291885649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067080.P5785557977291885649

noncomputable section

/-- A067080: If n = ab...def in decimal notation then the left digitorial function Ld(n) = ab...def*ab...de*ab...d*...*ab*a.

Offset 1, canonical program `A067080.P5785557977291885649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067080 (n : ℕ) : ℤ :=
  (A067080.P5785557977291885649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067132.P2149404699775634079

`A051903(n+1)+1`
-/

namespace A067132.P2149404699775634079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + 1

end

end A067132.P2149404699775634079

noncomputable section

/-- A067132: Number of elements in the largest set of divisors of n which are in geometric progression.

Offset 1, canonical program `A067132.P2149404699775634079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067132 (n : ℕ) : ℤ :=
  A067132.P2149404699775634079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067259.P11996182703076238055

`eq[2, A051903(n+1)]+1`
-/

namespace A067259.P11996182703076238055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067259.P11996182703076238055

noncomputable section

/-- A067259: Cubefree numbers which are not squarefree.

Offset 1, canonical program `A067259.P11996182703076238055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067259 (n : ℕ) : ℤ :=
  (A067259.P11996182703076238055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067283.P1833396838010038772

`eq[A032741(n+1)+1, A000195(n+1)]+1`
-/

namespace A067283.P1833396838010038772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067283.P1833396838010038772

noncomputable section

/-- A067283: Numbers n such that the number of divisors of n is floor(log(n)).

Offset 1, canonical program `A067283.P1833396838010038772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A067283 (n : ℕ) : ℤ :=
  (A067283.P1833396838010038772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A067283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067292.P16682329909841690686

`A000040(n+1)-∑{d}[n+1, lcm(#, n+1)]`
-/

namespace A067292.P16682329909841690686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℤ)

end

end A067292.P16682329909841690686

noncomputable section

/-- A067292: a(n) = prime(n)-n*tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A067292.P16682329909841690686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067292 (n : ℕ) : ℤ :=
  A067292.P16682329909841690686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067333.P9718857003289382618

`A067332(n)+A067331(n)`
-/

namespace A067333.P9718857003289382618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067332 n + A067331 n

end

end A067333.P9718857003289382618

noncomputable section

/-- A067333: Convolution of Fibonacci F(n+1), n>=0, with F(n+5), n>=0.

Offset 0, canonical program `A067333.P9718857003289382618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A067333 (n : ℕ) : ℤ :=
  A067333.P9718857003289382618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A067333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067431.P8250582183486252664

`A067430(n)+A067334(n)`
-/

namespace A067431.P8250582183486252664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067430 n + A067334 n

end

end A067431.P8250582183486252664

noncomputable section

/-- A067431: Convolution of Fibonacci F(n+1), n>=0, with F(n+8), n>=0.

Offset 0, canonical program `A067431.P8250582183486252664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A067431 (n : ℕ) : ℤ :=
  A067431.P8250582183486252664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A067431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067436.P3160659514685204136

`2*A004125(n+1)`
-/

namespace A067436.P3160659514685204136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004125 (n + 1)

end

end A067436.P3160659514685204136

noncomputable section

/-- A067436: a(n) = sum of all the remainders when n-th even number is divided by even numbers < 2n.

Offset 1, canonical program `A067436.P3160659514685204136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067436 (n : ℕ) : ℤ :=
  A067436.P3160659514685204136.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067439.P11811676257442922889

`∑{d}[n+1, A004125(#)*A055615((n+1)/#)]`
-/

namespace A067439.P11811676257442922889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004125 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067439.P11811676257442922889

noncomputable section

/-- A067439: a(n) = sum of all the remainders when n is divided by positive integers less than and coprime to n.

Offset 1, canonical program `A067439.P11811676257442922889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067439 (n : ℕ) : ℤ :=
  A067439.P11811676257442922889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067474.P3803383000154177606

`A035071(n)^2`
-/

namespace A067474.P3803383000154177606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 n ^ 2

end

end A067474.P3803383000154177606

noncomputable section

/-- A067474: Smallest n-digit square starting with 4.

Offset 1, canonical program `A067474.P3803383000154177606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A067474 (n : ℕ) : ℤ :=
  A067474.P3803383000154177606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A067474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067513.P5975190824510621615

`∑{d}[n+1, 1-A066247(#+1)]`
-/

namespace A067513.P5975190824510621615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A066247 (d + 1))

end

end A067513.P5975190824510621615

noncomputable section

/-- A067513: Number of divisors d of n such that d+1 is prime.

Offset 1, canonical program `A067513.P5975190824510621615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067513 (n : ℕ) : ℤ :=
  A067513.P5975190824510621615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067585.P1933781684501419981

`xor(2*(n-A053644(n)), floor(n/2))`
-/

namespace A067585.P1933781684501419981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * ((n : ℤ) - A053644 n)) ⌊(n : ℚ) / 2⌋

end

end A067585.P1933781684501419981

noncomputable section

/-- A067585: Binary representation of a(n) is obtained thus: replace every digit in the binary representation of n with "1" if the sum of its neighbors is 1 and with "0" otherwise.

Offset 0, canonical program `A067585.P1933781684501419981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067585 (n : ℕ) : ℤ :=
  A067585.P1933781684501419981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067766.P12496777605607687847

`lt[A001157(n+1), A002620(A000203(n+1))]+1`
-/

namespace A067766.P12496777605607687847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067766.P12496777605607687847

noncomputable section

/-- A067766: Numbers k such that sigma(k)^2 > 4*sigma_2(k) where sigma_2(k) is the sum of squares over the divisors of k.

Offset 1, canonical program `A067766.P12496777605607687847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A067766 (n : ℕ) : ℤ :=
  (A067766.P12496777605607687847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A067766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067850.P433127479858209906

`A072831(n)-1`
-/

namespace A067850.P433127479858209906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - 1

end

end A067850.P433127479858209906

noncomputable section

/-- A067850: Highest power of 2 not exceeding n!.

Offset 0, canonical program `A067850.P433127479858209906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067850 (n : ℕ) : ℤ :=
  A067850.P433127479858209906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067856.P11218736261645060229

`∑{d}[n+1, A007427(#)*A038712((n+1)/#)]`
-/

namespace A067856.P11218736261645060229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P11218736261645060229

noncomputable section

/-- A067856: Sum_{n >= 1} a(n)/n^s = 1/(Sum_{n >= 1} (-1)^(n + 1)/n^s).

Offset 1, canonical program `A067856.P11218736261645060229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856 (n : ℕ) : ℤ :=
  A067856.P11218736261645060229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067867.P15646068572859364086

`A067866(A017377(n))`
-/

namespace A067867.P15646068572859364086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067866 (A017377 n).toNat

end

end A067867.P15646068572859364086

noncomputable section

/-- A067867: Numbers n such that n and 2^n end with the same 4 digits.

Offset 1, canonical program `A067867.P15646068572859364086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067867 (n : ℕ) : ℤ :=
  A067867.P15646068572859364086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067897.P16427953332415347424

`∏[(n-1)/a(n-1)+1]%A245176(n)` with `a(0)=2`
-/

namespace A067897.P16427953332415347424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (A245176 n)

end

end A067897.P16427953332415347424

noncomputable section

/-- A067897: a(n) = A000085(n) - (1 + Sum_{j=1..n-1} A000085(j)).

Offset 0, canonical program `A067897.P16427953332415347424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A067897 (n : ℕ) : ℤ :=
  A067897.P16427953332415347424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A067897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067956.P18418777430934723321

`∑[A001845(A008619(n))]+2`
-/

namespace A067956.P18418777430934723321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067956.P18418777430934723321

noncomputable section

/-- A067956: Number of nodes in virtual, "optimal", chordal graphs of diameter 4 and degree n+1.

Offset 1, canonical program `A067956.P18418777430934723321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067956 (n : ℕ) : ℤ :=
  A067956.P18418777430934723321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067969.P16810876313038545020

`∑[A001846(round((n+1)/2))]+2`
-/

namespace A067969.P16810876313038545020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067969.P16810876313038545020

noncomputable section

/-- A067969: Number of nodes in virtual, "optimal", chordal graphs of diameter 5, degree =n+1.

Offset 1, canonical program `A067969.P16810876313038545020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067969 (n : ℕ) : ℤ :=
  A067969.P16810876313038545020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068012.P13088167695542469923

`ceil(A068010(n)/2)`
-/

namespace A068012.P13088167695542469923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068010 n : ℚ) / 2⌉

end

end A068012.P13088167695542469923

noncomputable section

/-- A068012: Number of subsets of {1,2,3,...,n} that sum to 0 mod 6.

Offset 0, canonical program `A068012.P13088167695542469923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A068012 (n : ℕ) : ℤ :=
  A068012.P13088167695542469923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A068012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068093.P11725195299041626924

`C(A068092(n+1)+1, 2)`
-/

namespace A068093.P11725195299041626924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068092 (n + 1) + 1).toNat 2

end

end A068093.P11725195299041626924

noncomputable section

/-- A068093: Smallest n-digit triangular number.

Offset 1, canonical program `A068093.P11725195299041626924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A068093 (n : ℕ) : ℤ :=
  (A068093.P11725195299041626924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A068093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068094.P8683545945666724130

`Δ[A068092(n+1)]`
-/

namespace A068094.P8683545945666724130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068094.P8683545945666724130

noncomputable section

/-- A068094: Number of n-digit triangular numbers.

Offset 1, canonical program `A068094.P8683545945666724130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A068094 (n : ℕ) : ℤ :=
  A068094.P8683545945666724130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A068094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068250.P12611916301328591034

`A027800(n)*A100019(n+1)`
-/

namespace A068250.P12611916301328591034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n * A100019 (n + 1)

end

end A068250.P12611916301328591034

noncomputable section

/-- A068250: 1/24 the number of colorings of a 3 X 3 octagonal array with n colors.

Offset 4, canonical program `A068250.P12611916301328591034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A068250 (n : ℕ) : ℤ :=
  A068250.P12611916301328591034.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A068250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068332.P3490794185837629796

`eq[A032741(n)+2, A070939(n)]`
-/

namespace A068332.P3490794185837629796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068332.P3490794185837629796

noncomputable section

/-- A068332: Numbers k such that 2^tau(k) <= k < 2*2^tau(k).

Offset 1, canonical program `A068332.P3490794185837629796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A068332 (n : ℕ) : ℤ :=
  (A068332.P3490794185837629796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A068332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068340.P6694413873176775995

`∑[A055615(n+1)]`
-/

namespace A068340.P6694413873176775995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068340.P6694413873176775995

noncomputable section

/-- A068340: a(n) = Sum_{k=1..n} mu(k)*k, where mu(k) is the Moebius function.

Offset 1, canonical program `A068340.P6694413873176775995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068340 (n : ℕ) : ℤ :=
  A068340.P6694413873176775995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068344.P56134880898199442

`A101688(n)-A101688(A061579(n))`
-/

namespace A068344.P56134880898199442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n - A101688 (A061579 n).toNat

end

end A068344.P56134880898199442

noncomputable section

/-- A068344: Square array read by antidiagonals of T(n,k) = sign(n-k).

Offset 0, canonical program `A068344.P56134880898199442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068344 (n : ℕ) : ℤ :=
  A068344.P56134880898199442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068518.P10058222252401921738

`∑[A027651(n)]`
-/

namespace A068518.P10058222252401921738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068518.P10058222252401921738

noncomputable section

/-- A068518: The sequence S(n,-3,1,1), where S(n,k,t,q) is defined by Sum_{j=0..n} binomial(n+q,j)^t * B(j,k) and B(j,k) is the j-th k-poly-Bernoulli number.

Offset 0, canonical program `A068518.P10058222252401921738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A068518 (n : ℕ) : ℤ :=
  A068518.P10058222252401921738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A068518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069005.P14880868784159828699

`A091024(A065475(n+1))`
-/

namespace A069005.P14880868784159828699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (A065475 (n + 1)).toNat

end

end A069005.P14880868784159828699

noncomputable section

/-- A069005: Let M = 4 X 4 matrix with rows /1,1,1,1/1,1,1,0/1,1,0,0/1,0,0,0/ and A(n) = vector (x(n),y(n),z(n),t(n)) = M^n*A where A is the vector (1,1,1,1); then a(n)=z(n).

Offset 1, canonical program `A069005.P14880868784159828699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A069005 (n : ℕ) : ℤ :=
  A069005.P14880868784159828699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A069005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069091.P1979038829960387113

`∑{d}[n+1, A007427(#)*A013954((n+1)/#)]`
-/

namespace A069091.P1979038829960387113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P1979038829960387113

noncomputable section

/-- A069091: Jordan function J_6(n).

Offset 1, canonical program `A069091.P1979038829960387113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091 (n : ℕ) : ℤ :=
  A069091.P1979038829960387113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069092.P6462397685710627288

`∑{d}[n+1, A007427(#)*A013955((n+1)/#)]`
-/

namespace A069092.P6462397685710627288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P6462397685710627288

noncomputable section

/-- A069092: Jordan function J_7(n).

Offset 1, canonical program `A069092.P6462397685710627288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069092 (n : ℕ) : ℤ :=
  A069092.P6462397685710627288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069093.P9664081380654551987

`∑{d}[n+1, A007427(#)*A013956((n+1)/#)]`
-/

namespace A069093.P9664081380654551987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013956 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P9664081380654551987

noncomputable section

/-- A069093: Jordan function J_8(n).

Offset 1, canonical program `A069093.P9664081380654551987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069093 (n : ℕ) : ℤ :=
  A069093.P9664081380654551987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069094.P5596882665967745649

`∑{d}[n+1, A007427(#)*A013957((n+1)/#)]`
-/

namespace A069094.P5596882665967745649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P5596882665967745649

noncomputable section

/-- A069094: Jordan function J_9(n).

Offset 1, canonical program `A069094.P5596882665967745649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069094 (n : ℕ) : ℤ :=
  A069094.P5596882665967745649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069095.P10263333998620390818

`∑{d}[n+1, A007427(#)*A013958((n+1)/#)]`
-/

namespace A069095.P10263333998620390818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069095.P10263333998620390818

noncomputable section

/-- A069095: Jordan function J_10(n).

Offset 1, canonical program `A069095.P10263333998620390818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069095 (n : ℕ) : ℤ :=
  A069095.P10263333998620390818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069177.P13745944220105453533

`2^A053574(n+1)`
-/

namespace A069177.P13745944220105453533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053574 (n + 1) : ℤ)

end

end A069177.P13745944220105453533

noncomputable section

/-- A069177: Maximal power of 2 that divides Phi(n), or the size of the Sylow 2-subgroup of the group of units mod n.

Offset 1, canonical program `A069177.P13745944220105453533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069177 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069177.P13745944220105453533.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069183.P8600418834679217743

`A029000(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A069183.P8600418834679217743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029000 n + a (n - 2)

end

end A069183.P8600418834679217743

noncomputable section

/-- A069183: Expansion of 1/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^6)).

Offset 0, canonical program `A069183.P8600418834679217743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069183 (n : ℕ) : ℤ :=
  A069183.P8600418834679217743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069184.P2731157817083231715

`∑{d}[n+1, A186646(#)]`
-/

namespace A069184.P2731157817083231715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186646 d

end

end A069184.P2731157817083231715

noncomputable section

/-- A069184: Sum of divisors d of n such that d or n/d is odd.

Offset 1, canonical program `A069184.P2731157817083231715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069184 (n : ℕ) : ℤ :=
  A069184.P2731157817083231715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069188.P2208894969599077251

`(n+1)*A000792(1-A001414(n+1)+n)`
-/

namespace A069188.P2208894969599077251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000792 (1 - A001414 (n + 1) + (n : ℤ)).toNat

end

end A069188.P2208894969599077251

noncomputable section

/-- A069188: Look at all numbers formed by multiplying the parts in a partition of n; a(n) = maximal such number which is divisible by n.

Offset 1, canonical program `A069188.P2208894969599077251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. -/
def A069188 (n : ℕ) : ℤ :=
  A069188.P2208894969599077251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. -/
def A069188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069210.P17992503597027194116

`n-A032615(a(n-1))` with `a(0)=1`
-/

namespace A069210.P17992503597027194116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A032615 (a (n - 1)).toNat

end

end A069210.P17992503597027194116

noncomputable section

/-- A069210: a(1)=a(2)=1, a(n+2) = a(n+1)+1 if sign(sin(a(n+1))) = sign(sin(a(n))), a(n+2) = a(n)+1 otherwise.

Offset 1, canonical program `A069210.P17992503597027194116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069210 (n : ℕ) : ℤ :=
  A069210.P17992503597027194116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069264.P9562559770750993337

`A064680(∑{e}[n+1, #]*∏{e}[n+1, #+1])`
-/

namespace A069264.P9562559770750993337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A069264.P9562559770750993337

noncomputable section

/-- A069264: Inverse Moebius transform of bigomega(n).

Offset 1, canonical program `A069264.P9562559770750993337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069264 (n : ℕ) : ℤ :=
  A069264.P9562559770750993337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069477.P4834611357039415217

`5*6*(A046092(n+2)+1)`
-/

namespace A069477.P4834611357039415217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (6 * (A046092 (n + 2) + 1))

end

end A069477.P4834611357039415217

noncomputable section

/-- A069477: a(n) = 60*n^2 + 180*n + 150.

Offset 1, canonical program `A069477.P4834611357039415217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069477 (n : ℕ) : ℤ :=
  A069477.P4834611357039415217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069498.P10537288817338327856

`C(A151980(n+2), 2)`
-/

namespace A069498.P10537288817338327856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151980 (n + 2)).toNat 2

end

end A069498.P10537288817338327856

noncomputable section

/-- A069498: Triangular numbers of the form 10*k.

Offset 1, canonical program `A069498.P10537288817338327856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069498 (n : ℕ) : ℤ :=
  (A069498.P10537288817338327856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069499.P4124095796989806507

`C(A151971(n+2), 2)`
-/

namespace A069499.P4124095796989806507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151971 (n + 2)).toNat 2

end

end A069499.P4124095796989806507

noncomputable section

/-- A069499: Triangular numbers of the form 21*k.

Offset 1, canonical program `A069499.P4124095796989806507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069499 (n : ℕ) : ℤ :=
  (A069499.P4124095796989806507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069533.P16176494315263745921

`A013940((n+1)²)`
-/

namespace A069533.P16176494315263745921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013940 ((n + 1) ^ 2)

end

end A069533.P16176494315263745921

noncomputable section

/-- A069533: a(n) = Sum_{p prime} floor(n^2/p^2) where the sum is over all the primes.

Offset 1, canonical program `A069533.P16176494315263745921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069533 (n : ℕ) : ℤ :=
  A069533.P16176494315263745921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069547.P11485668563936763600

`xor(n, -1)²%A000040(n+1)`
-/

namespace A069547.P11485668563936763600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (-1) ^ 2) (A000040 (n + 1))

end

end A069547.P11485668563936763600

noncomputable section

/-- A069547: a(n) = n^2 mod n-th prime.

Offset 1, canonical program `A069547.P11485668563936763600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069547 (n : ℕ) : ℤ :=
  A069547.P11485668563936763600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069549.P12446216248161832817

`A000040(∑[C(∑{p}[n, #], n)])²`
-/

namespace A069549.P12446216248161832817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A069549.P12446216248161832817

noncomputable section

/-- A069549: Smallest composite k such that phi(k) > k*(1-1/n).

Offset 1, canonical program `A069549.P12446216248161832817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069549 (n : ℕ) : ℤ :=
  A069549.P12446216248161832817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069731.P9577180906258767501

`record[A000108(n+1)*A034008(n)]`
-/

namespace A069731.P9577180906258767501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069731.P9577180906258767501

noncomputable section

/-- A069731: Number of unicursal planar maps with n edges rooted at a vertex of odd valency (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

Offset 1, canonical program `A069731.P9577180906258767501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A069731 (n : ℕ) : ℤ :=
  A069731.P9577180906258767501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A069731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069739.P7899335367046661581

`∏{e}[n+1, A000108(#)]`
-/

namespace A069739.P7899335367046661581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000108 (Nat.factorization (f1 n) p)

end

end A069739.P7899335367046661581

noncomputable section

/-- A069739: Size of the key space for isomorphism verification of circulant graphs of order n.

Offset 1, canonical program `A069739.P7899335367046661581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069739 (n : ℕ) : ℤ :=
  A069739.P7899335367046661581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069755.P3214116244876995295

`(A004526(n)+1)*A045943(n+3)-1`
-/

namespace A069755.P3214116244876995295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A045943 (n + 3) - 1

end

end A069755.P3214116244876995295

noncomputable section

/-- A069755: Frobenius number of the numerical semigroup generated by 3 consecutive triangular numbers.

Offset 2, canonical program `A069755.P3214116244876995295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069755 (n : ℕ) : ℤ :=
  A069755.P3214116244876995295.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069763.P14764223119449568783

`A068601(n+2)*A068601(n+3)-1`
-/

namespace A069763.P14764223119449568783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 2) * A068601 (n + 3) - 1

end

end A069763.P14764223119449568783

noncomputable section

/-- A069763: Frobenius number of the numerical semigroup generated by consecutive cubes.

Offset 2, canonical program `A069763.P14764223119449568783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A069763 (n : ℕ) : ℤ :=
  A069763.P14764223119449568783.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A069763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069764.P8811235578831581179

`A005900(n+2)*A005900(n+3)-A001845(n+2)`
-/

namespace A069764.P8811235578831581179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 2) * A005900 (n + 3) - A001845 (n + 2)

end

end A069764.P8811235578831581179

noncomputable section

/-- A069764: Frobenius number of the numerical semigroup generated by consecutive octahedral numbers.

Offset 2, canonical program `A069764.P8811235578831581179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069764 (n : ℕ) : ℤ :=
  A069764.P8811235578831581179.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069908.P3766769676983889095

`A047615(A008621(n))+2+n`
-/

namespace A069908.P3766769676983889095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (A008621 n).toNat + 2 + (n : ℤ)

end

end A069908.P3766769676983889095

noncomputable section

/-- A069908: Numbers congruent to +-2, +-3, +-4 or +-5 mod 16.

Offset 1, canonical program `A069908.P3766769676983889095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069908 (n : ℕ) : ℤ :=
  A069908.P3766769676983889095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069928.P1695334417311087564

`∑[A000007(A054025(n+1))]`
-/

namespace A069928.P1695334417311087564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P1695334417311087564

noncomputable section

/-- A069928: Number of integers k, 1<=k<=n, such that tau(k) divides sigma(k) where tau(k) is the number of divisors of k and sigma(k) the sum of divisors of k.

Offset 1, canonical program `A069928.P1695334417311087564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928 (n : ℕ) : ℤ :=
  A069928.P1695334417311087564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069965.P11980175962428664514

`A000584(∑{digits}[n, #])-∑{digits}[n, #^5]`
-/

namespace A069965.P11980175962428664514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 5).sum : ℕ) : ℤ)

end

end A069965.P11980175962428664514

noncomputable section

/-- A069965: (Sum of digits of n)^5 - (sum of digits^5 of n).

Offset 0, canonical program `A069965.P11980175962428664514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069965 (n : ℕ) : ℤ :=
  A069965.P11980175962428664514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069976.P16347883834057855961

`round(A066164(n+3)/(n+3))`
-/

namespace A069976.P16347883834057855961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A066164 (n + 3) : ℚ) / (n + 3 : ℚ))

end

end A069976.P16347883834057855961

noncomputable section

/-- A069976: Interior angle of a regular polygon of n sides, rounded to nearest integer.

Offset 3, canonical program `A069976.P16347883834057855961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069976 (n : ℕ) : ℤ :=
  A069976.P16347883834057855961.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070045.P5901825577952937955

`p?[A185549(n)]%A155014(n+2)`
-/

namespace A070045.P5901825577952937955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A155014 (n + 2))

end

end A070045.P5901825577952937955

noncomputable section

/-- A070045: Primes of the form ceiling(k^1.5) for some integer k.

Offset 1, canonical program `A070045.P5901825577952937955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A070045 (n : ℕ) : ℤ :=
  A070045.P5901825577952937955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A070045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070083.P13732470108553400898

`comp[∑[A005044(n)]+n]-n`
-/

namespace A070083.P13732470108553400898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A070083.P13732470108553400898

noncomputable section

/-- A070083: Perimeters of integer triangles, sorted by perimeter, sides lexicographically ordered.

Offset 1, canonical program `A070083.P13732470108553400898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070083 (n : ℕ) : ℤ :=
  A070083.P13732470108553400898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070162.P6067516089811518343

`eq[2, a(A016035(n))+1]` with `a(0)=0, a(1)=3`
-/

namespace A070162.P6067516089811518343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (A016035 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070162.P6067516089811518343

noncomputable section

/-- A070162: Numbers k such that k - phi(k) - 1 is a prime.

Offset 1, canonical program `A070162.P6067516089811518343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A070162 (n : ℕ) : ℤ :=
  (A070162.P6067516089811518343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A070162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070212.P830112465696645341

`∑[∑[∑[∑[A008498(n)]]]]`
-/

namespace A070212.P830112465696645341
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070212.P830112465696645341

noncomputable section

/-- A070212: Number of 5 X 5 pandiagonal magic squares with sum n.

Offset 0, canonical program `A070212.P830112465696645341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070212 (n : ℕ) : ℤ :=
  A070212.P830112465696645341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070286.P6129727372202463852

`lt[0, char[A051027(n+1)]]`
-/

namespace A070286.P6129727372202463852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070286.P6129727372202463852

noncomputable section

/-- A070286: Numbers k such that the equation sigma(sigma(x)) = k has solutions.

Offset 1, canonical program `A070286.P6129727372202463852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A070286 (n : ℕ) : ℤ :=
  (A070286.P6129727372202463852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A070286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070546.P6456143545485569330

`∑[A036987(A009191(n+1)²)]`
-/

namespace A070546.P6456143545485569330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A009191 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P6456143545485569330

noncomputable section

/-- A070546: a(n) = Card( k, 0

Offset 1, canonical program `A070546.P6456143545485569330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070546 (n : ℕ) : ℤ :=
  A070546.P6456143545485569330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070748.P9957700921087628630

`or(1, floor(sin(A000040(n+1))))`
-/

namespace A070748.P9957700921087628630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.sin (A000040 (n + 1) : ℝ)⌋

end

end A070748.P9957700921087628630

noncomputable section

/-- A070748: a(n) = signum(sin(prime(n))), where signum=A057427, prime=A000040.

Offset 1, canonical program `A070748.P9957700921087628630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070748 (n : ℕ) : ℤ :=
  A070748.P9957700921087628630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070749.P5792120864452831297

`round(sin(A000040(n+1)))`
-/

namespace A070749.P5792120864452831297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A000040 (n + 1) : ℝ))

end

end A070749.P5792120864452831297

noncomputable section

/-- A070749: Nearest integer to sin(prime(n)), prime=A000040.

Offset 1, canonical program `A070749.P5792120864452831297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070749 (n : ℕ) : ℤ :=
  A070749.P5792120864452831297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070883.P5422218626691008934

`xor(n+1, A000040(n+1))`
-/

namespace A070883.P5422218626691008934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000040 (n + 1))

end

end A070883.P5422218626691008934

noncomputable section

/-- A070883: Bitwise XOR of n and n-th prime.

Offset 1, canonical program `A070883.P5422218626691008934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070883 (n : ℕ) : ℤ :=
  A070883.P5422218626691008934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070919.P12544336825611404965

`∏{e}[n+1, A003215(#)]`
-/

namespace A070919.P12544336825611404965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003215 (Nat.factorization (f1 n) p)

end

end A070919.P12544336825611404965

noncomputable section

/-- A070919: a(n) = Card{ (x,y,z) | lcm(x,y,z)=n }.

Offset 1, canonical program `A070919.P12544336825611404965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070919 (n : ℕ) : ℤ :=
  A070919.P12544336825611404965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070920.P1109967768938964097

`∏{e}[n+1, A005917(#+1)]`
-/

namespace A070920.P1109967768938964097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005917 (Nat.factorization (f1 n) p + 1)

end

end A070920.P1109967768938964097

noncomputable section

/-- A070920: a(n) = Card{ (x,y,z,u) | lcm(x,y,z,u)=n }.

Offset 1, canonical program `A070920.P1109967768938964097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070920 (n : ℕ) : ℤ :=
  A070920.P1109967768938964097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070921.P11358675402838603622

`∏{e}[n+1, A022521(#)]`
-/

namespace A070921.P11358675402838603622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A022521 (Nat.factorization (f1 n) p)

end

end A070921.P11358675402838603622

noncomputable section

/-- A070921: a(n) = Card{ (x,y,z,u,v) | lcm(x,y,z,u,v)=n }.

Offset 1, canonical program `A070921.P11358675402838603622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070921 (n : ℕ) : ℤ :=
  A070921.P11358675402838603622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071030.P11714086120576198242

`(A000196(n)+∑[∑[n+1]])%2`
-/

namespace A071030.P11714086120576198242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 2

end

end A071030.P11714086120576198242

noncomputable section

/-- A071030: Triangle read by rows giving successive states of cellular automaton generated by "Rule 54".

Offset 0, canonical program `A071030.P11714086120576198242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071030 (n : ℕ) : ℤ :=
  A071030.P11714086120576198242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071047.P5402524198042241896

`A267453(n+2)-2`
-/

namespace A071047.P5402524198042241896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267453 (n + 2) - 2

end

end A071047.P5402524198042241896

noncomputable section

/-- A071047: Number of 1's in n-th row of triangle in A071031, cellular automaton "rule 62".

Offset 0, canonical program `A071047.P5402524198042241896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A071047 (n : ℕ) : ℤ :=
  A071047.P5402524198042241896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A071047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071168.P12914104181432432926

`A000040(n+1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A071168.P12914104181432432926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A071168.P12914104181432432926

noncomputable section

/-- A071168: n-th prime reduced modulo phi(n).

Offset 1, canonical program `A071168.P12914104181432432926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071168 (n : ℕ) : ℤ :=
  A071168.P12914104181432432926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071170.P8572508897049028403

`A000040(n+1)%∑{d}[n+1, #]`
-/

namespace A071170.P8572508897049028403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A071170.P8572508897049028403

noncomputable section

/-- A071170: n-th prime reduced modulo sigma(n).

Offset 1, canonical program `A071170.P8572508897049028403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071170 (n : ℕ) : ℤ :=
  A071170.P8572508897049028403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071171.P1924651091473247612

`∑[(A056105(n)-n²)*C(n, 2)²]`
-/

namespace A071171.P1924651091473247612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056105 n - (n ^ 2 : ℤ)) * (Nat.choose n 2 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071171.P1924651091473247612

noncomputable section

/-- A071171: L_2 norm of vertices of Permuto-Associahedron in R^n.

Offset 0, canonical program `A071171.P1924651091473247612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071171 (n : ℕ) : ℤ :=
  A071171.P1924651091473247612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071281.P6424107787387498205

`A009947(A266981(n)-1)`
-/

namespace A071281.P6424107787387498205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A266981 n - 1).toNat

end

end A071281.P6424107787387498205

noncomputable section

/-- A071281: Numerators of Peirce sequence of order 3.

Offset 0, canonical program `A071281.P6424107787387498205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A071281 (n : ℕ) : ℤ :=
  A071281.P6424107787387498205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A071281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071283.P11488286306628561676

`A002266(A004526(n)*A071284(n))`
-/

namespace A071283.P11488286306628561676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004526 n * A071284 n).toNat

end

end A071283.P11488286306628561676

noncomputable section

/-- A071283: Numerators of Peirce sequence of order 4.

Offset 0, canonical program `A071283.P11488286306628561676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A071283 (n : ℕ) : ℤ :=
  A071283.P11488286306628561676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A071283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071289.P14180527294717798309

`A228564(n)+A062158(n)`
-/

namespace A071289.P14180527294717798309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 n + A062158 n

end

end A071289.P14180527294717798309

noncomputable section

/-- A071289: a(n) = n*(n^2 + 1) if n is even, otherwise (n - 1/2)*(n^2 + 1).

Offset 0, canonical program `A071289.P14180527294717798309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071289 (n : ℕ) : ℤ :=
  A071289.P14180527294717798309.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071356.P4898186804671775641

`A374497(n)/A008805(2*n)`
-/

namespace A071356.P4898186804671775641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374497 n : ℚ) / (A008805 (2 * n) : ℚ)

end

end A071356.P4898186804671775641

noncomputable section

/-- A071356: Expansion of (1 - 2*x - sqrt(1 - 4*x - 4*x^2))/(4*x^2).

Offset 0, canonical program `A071356.P4898186804671775641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A071356 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071356.P4898186804671775641.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A071356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071418.P16881111361451450051

`A014682(a(n-1)+n)` with `a(0)=0`
-/

namespace A071418.P16881111361451450051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014682 (a (n - 1) + (n : ℤ)).toNat

end

end A071418.P16881111361451450051

noncomputable section

/-- A071418: a(1)=0, a(n+1)=(a(n)+n)/2 if a(n)+n is even, a(n+1)=(3*(a(n)+n)+1)/2 otherwise.

Offset 1, canonical program `A071418.P16881111361451450051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A071418 (n : ℕ) : ℤ :=
  A071418.P16881111361451450051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A071418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071419.P10901612576107053612

`A014682(a(n-1)+n)` with `a(0)=1`
-/

namespace A071419.P10901612576107053612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014682 (a (n - 1) + (n : ℤ)).toNat

end

end A071419.P10901612576107053612

noncomputable section

/-- A071419: a(1)=1, a(n+1)=(a(n)+n)/2 if a(n)+n is even, a(n+1)=(3*(a(n)+n)+1)/2 otherwise.

Offset 1, canonical program `A071419.P10901612576107053612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071419 (n : ℕ) : ℤ :=
  A071419.P10901612576107053612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071535.P8937540856175484874

`(A131577(n)+A082138(n))*A001792(n)`
-/

namespace A071535.P8937540856175484874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A082138 n) * A001792 n

end

end A071535.P8937540856175484874

noncomputable section

/-- A071535: (-1)^(n+1) * Determinant of n X n matrix of form [1^2 2^2 3^2 4^2 5^2 / 2^2 1^2 2^2 3^2 4^2 / 3^2 2^2 1^2 2^2 3^2 / 4^2 3^2 2^2 1^2 2^2 / 5^2 4^2 3^2 2^2 1^2].

Offset 1, canonical program `A071535.P8937540856175484874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A071535 (n : ℕ) : ℤ :=
  A071535.P8937540856175484874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A071535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071542.P757842115832045753

`1+a(A011371(n))` with `a(0)=0`
-/

namespace A071542.P757842115832045753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A011371 n).toNat

end

end A071542.P757842115832045753

noncomputable section

/-- A071542: Number of steps to reach 0 starting with n and using the iterated process : x -> x - (number of 1's in binary representation of x).

Offset 0, canonical program `A071542.P757842115832045753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071542 (n : ℕ) : ℤ :=
  (A071542.P757842115832045753.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071622.P8008605956966720733

`∑[A064628(n+1)-xor(1, A064628(n+1))]`
-/

namespace A071622.P8008605956966720733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1) - Int.xor 1 (A064628 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071622.P8008605956966720733

noncomputable section

/-- A071622: a(n) = (-1)*Sum_{k=1..n} (-1)^floor((4/3)^k).

Offset 1, canonical program `A071622.P8008605956966720733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A071622 (n : ℕ) : ℤ :=
  A071622.P8008605956966720733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A071622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071650.P17002798655539676693

`A071649(n+1)-A071648(n+1)`
-/

namespace A071650.P17002798655539676693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (n + 1) - A071648 (n + 1)

end

end A071650.P17002798655539676693

noncomputable section

/-- A071650: Difference between sums of odd and even digits of n.

Offset 1, canonical program `A071650.P17002798655539676693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071648, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071650 (n : ℕ) : ℤ :=
  A071650.P17002798655539676693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071648, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071716.P13302059539819957554

`A000108(n)+A000108((n-1)%a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A071716.P13302059539819957554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000108 n + A000108 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A071716.P13302059539819957554

noncomputable section

/-- A071716: Expansion of (1+x^2*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071716.P13302059539819957554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071716 (n : ℕ) : ℤ :=
  A071716.P13302059539819957554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071721.P8058538894146431473

`Δ[gcd(6, 2^n)*A000108(n)]`
-/

namespace A071721.P8058538894146431473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (2 ^ n) : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071721.P8058538894146431473

noncomputable section

/-- A071721: Expansion of (1+x^2*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071721.P8058538894146431473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071721 (n : ℕ) : ℤ :=
  A071721.P8058538894146431473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071726.P12729125227773311374

`A000108(n)+A000108(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071726.P12729125227773311374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000108 n + Int.tmod (A000108 (n - 2)) (a (n - 1))

end

end A071726.P12729125227773311374

noncomputable section

/-- A071726: Expansion of (1+x^3*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071726.P12729125227773311374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A071726 (n : ℕ) : ℤ :=
  A071726.P12729125227773311374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A071726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071731.P2765701597909956439

`Δ[record[abs(1-n)*A091712(n)]]`
-/

namespace A071731.P2765701597909956439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A091712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071731.P2765701597909956439

noncomputable section

/-- A071731: Expansion of (1+x^3*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071731.P2765701597909956439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071731 (n : ℕ) : ℤ :=
  A071731.P2765701597909956439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071902.P5604192582977936602

`A000292(n)*A056220(n+1)-(n+1)`
-/

namespace A071902.P5604192582977936602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A056220 (n + 1) - (n + 1 : ℤ)

end

end A071902.P5604192582977936602

noncomputable section

/-- A071902: Sum_{k=0..n^2} (k^2 - n^2)/n.

Offset 1, canonical program `A071902.P5604192582977936602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071902 (n : ℕ) : ℤ :=
  A071902.P5604192582977936602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072058.P6600289941903231817

`∏{p}[2*A000040(n+1)+1, #]`
-/

namespace A072058.P6600289941903231817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072058.P6600289941903231817

noncomputable section

/-- A072058: Squarefree kernel of 2*prime(n)+1.

Offset 1, canonical program `A072058.P6600289941903231817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072058 (n : ℕ) : ℤ :=
  (A072058.P6600289941903231817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072100.P14039858533410770621

`∑[A001405(abs(1-n))]`
-/

namespace A072100.P14039858533410770621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P14039858533410770621

noncomputable section

/-- A072100: Column 2 of the array m(i,1)=m(1,j)=1 m(i,j)=m(i-1,j-1)+m(i-1,j+1) (a(n)=m(n,2)).

Offset 1, canonical program `A072100.P14039858533410770621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A072100 (n : ℕ) : ℤ :=
  A072100.P14039858533410770621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A072100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072107.P18195778838886658705

`∑[A020500(n+1)]+1`
-/

namespace A072107.P18195778838886658705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072107.P18195778838886658705

noncomputable section

/-- A072107: a(n) = Sum_{k=1..n} A014963(k).

Offset 1, canonical program `A072107.P18195778838886658705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072107 (n : ℕ) : ℤ :=
  A072107.P18195778838886658705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072150.P7899580344826784914

`A008486(n)-A002264(A265667(n+1))`
-/

namespace A072150.P7899580344826784914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A002264 (A265667 (n + 1)).toNat

end

end A072150.P7899580344826784914

noncomputable section

/-- A072150: Coordination sequence for AlPO_4-11 structure with respect to node (Y) where decagon, hexagon and square meet and is adjacent to node of type (X).

Offset 0, canonical program `A072150.P7899580344826784914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A072150 (n : ℕ) : ℤ :=
  A072150.P7899580344826784914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A072150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072231.P5944342534428297672

`floor((n+1)²/A005185(n+1))`
-/

namespace A072231.P5944342534428297672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A005185 (n + 1) : ℚ)⌋

end

end A072231.P5944342534428297672

noncomputable section

/-- A072231: a(n) = floor(n^2/A005185(n-1)), where A005185 is Hofstadter's Q-sequence.

Offset 1, canonical program `A072231.P5944342534428297672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072231 (n : ℕ) : ℤ :=
  A072231.P5944342534428297672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072374.P5901401486414482009

`A122852(n+1)`
-/

namespace A072374.P5901401486414482009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (n + 1)

end

end A072374.P5901401486414482009

noncomputable section

/-- A072374: a(1) = 1; a(n) = 1 + Sum_{i=1..n} Product_{j=i..2*i-1} (n-j).

Offset 1, canonical program `A072374.P5901401486414482009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A072374 (n : ℕ) : ℤ :=
  A072374.P5901401486414482009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A072374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072388.P14205877717158669958

`floor((A000040(n+1)+A000040(n)+a(n-1))/3)` with `a(0)=1`
-/

namespace A072388.P14205877717158669958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A000040 (n + 1) + A000040 n + a (n - 1) : ℚ) / 3⌋

end

end A072388.P14205877717158669958

noncomputable section

/-- A072388: a(0) = 1; for n > 0, a(n) = floor((prime(n+1) + prime(n) + a(n-1))/3).

Offset 0, canonical program `A072388.P14205877717158669958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072388 (n : ℕ) : ℤ :=
  A072388.P14205877717158669958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072400.P6107365061276263182

`A065883(n+1)%8`
-/

namespace A072400.P6107365061276263182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065883 (n + 1)) 8

end

end A072400.P6107365061276263182

noncomputable section

/-- A072400: (Factors of 4 removed from n) modulo 8.

Offset 1, canonical program `A072400.P6107365061276263182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072400 (n : ℕ) : ℤ :=
  A072400.P6107365061276263182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072504.P15978785907571623922

`gcd(A003418(A000194(n)), n+1)`
-/

namespace A072504.P15978785907571623922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A000194 n).toNat) (n + 1 : ℤ)

end

end A072504.P15978785907571623922

noncomputable section

/-- A072504: a(n) = LCM of divisors of n which are <= sqrt(n).

Offset 1, canonical program `A072504.P15978785907571623922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072504 (n : ℕ) : ℤ :=
  (A072504.P15978785907571623922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072561.P15765092492089093831

`A047209(n+1)-A081598(n)`
-/

namespace A072561.P15765092492089093831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) - A081598 n

end

end A072561.P15765092492089093831

noncomputable section

/-- A072561: Denominators of w(n) equals 3 where w(1)=w(2)=w(3)=1, w(n)=(w(n-1)*w(n-2)+(w(n-1)+w(n-2))/3) / w(n-3).

Offset 1, canonical program `A072561.P15765092492089093831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072561 (n : ℕ) : ℤ :=
  A072561.P15765092492089093831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072587.P801725359986616698

`lt[1, gcd(2, A005361(n+1))]+1`
-/

namespace A072587.P801725359986616698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072587.P801725359986616698

noncomputable section

/-- A072587: Numbers having at least one prime factor with an even exponent.

Offset 1, canonical program `A072587.P801725359986616698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587 (n : ℕ) : ℤ :=
  (A072587.P801725359986616698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072625.P11221807616821932161

`∑{p}[A000040(n+1), #%ceil(log(#))]`
-/

namespace A072625.P11221807616821932161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (p : ℤ) ⌈Real.log (p : ℝ)⌉

end

end A072625.P11221807616821932161

noncomputable section

/-- A072625: a(n) = prime(n) mod ceiling(log(prime(n))).

Offset 1, canonical program `A072625.P11221807616821932161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072625 (n : ℕ) : ℤ :=
  A072625.P11221807616821932161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072626.P14153501150869386867

`A000035(A050500(n+2))`
-/

namespace A072626.P14153501150869386867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A050500 (n + 2)).toNat

end

end A072626.P14153501150869386867

noncomputable section

/-- A072626: Parity of floor(n/log(n)).

Offset 2, canonical program `A072626.P14153501150869386867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072626 (n : ℕ) : ℤ :=
  A072626.P14153501150869386867.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072630.P7738086415550469995

`2*A000495(n+1)-1`
-/

namespace A072630.P7738086415550469995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000495 (n + 1) - 1

end

end A072630.P7738086415550469995

noncomputable section

/-- A072630: Values of n where A072629 switches from 01010.. into 0000.. or back.

Offset 1, canonical program `A072630.P7738086415550469995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A072630 (n : ℕ) : ℤ :=
  A072630.P7738086415550469995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A072630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072643.P10513511673986297728

`∑[char[A014137(n)]]`
-/

namespace A072643.P10513511673986297728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P10513511673986297728

noncomputable section

/-- A072643: Half of the binary width of the terms of A014486, the number of digits in A063171(n)/2.

Offset 0, canonical program `A072643.P10513511673986297728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072643 (n : ℕ) : ℤ :=
  (A072643.P10513511673986297728.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072708.P18291931151110653187

`A072682(n+2)+A008597(n)-A008597(n+1)`
-/

namespace A072708.P18291931151110653187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072682 (n + 2) + (A008597 n - A008597 (n + 1))

end

end A072708.P18291931151110653187

noncomputable section

/-- A072708: Last digit of F(n) is 6 where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A072708.P18291931151110653187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072708 (n : ℕ) : ℤ :=
  A072708.P18291931151110653187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072748.P725762028645036703

`∑[val(eq[1, A005361(n+1)]+1, 3)]`
-/

namespace A072748.P725762028645036703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P725762028645036703

noncomputable section

/-- A072748: Counting factor 3 in the first n squarefree numbers.

Offset 1, canonical program `A072748.P725762028645036703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748 (n : ℕ) : ℤ :=
  (A072748.P725762028645036703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072749.P16362701567912148616

`∑[val(eq[1, A005361(n+1)]+1, 5)]`
-/

namespace A072749.P16362701567912148616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P16362701567912148616

noncomputable section

/-- A072749: Count of factors of 5 in the first n squarefree numbers.

Offset 1, canonical program `A072749.P16362701567912148616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749 (n : ℕ) : ℤ :=
  (A072749.P16362701567912148616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072785.P15503271718453110488

`-A056594(floor(sqrt(8*n+1)))`
-/

namespace A072785.P15503271718453110488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056594 (Nat.sqrt (8 * n + 1))

end

end A072785.P15503271718453110488

noncomputable section

/-- A072785: Differences between A072781 and A072738.

Offset 0, canonical program `A072785.P15503271718453110488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072785 (n : ℕ) : ℤ :=
  A072785.P15503271718453110488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072815.P16142886840254368994

`A001065(A016921(n))`
-/

namespace A072815.P16142886840254368994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A016921 n).toNat

end

end A072815.P16142886840254368994

noncomputable section

/-- A072815: Sum of proper divisors of 6n + 1.

Offset 0, canonical program `A072815.P16142886840254368994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072815 (n : ℕ) : ℤ :=
  A072815.P16142886840254368994.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072898.P3597929593974754705

`A000085(n)/∏[and(2, n^3)!]`
-/

namespace A072898.P3597929593974754705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n ^ 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A072898.P3597929593974754705

noncomputable section

/-- A072898: Numerator of c(n) where c(0)=1, c(n+1) = n/c(n) + 1.

Offset 0, canonical program `A072898.P3597929593974754705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A072898 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072898.P3597929593974754705.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A072898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073089.P6746371190418764077

`A382732(n)%2`
-/

namespace A073089.P6746371190418764077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382732 n) 2

end

end A073089.P6746371190418764077

noncomputable section

/-- A073089: a(n) = (1/2)*(4n - 3 - Sum_{k=1..n} A007400(k)).

Offset 1, canonical program `A073089.P6746371190418764077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073089 (n : ℕ) : ℤ :=
  A073089.P6746371190418764077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073122.P1582686684602990013

`A003188(A014707(n)+2*n+1)`
-/

namespace A073122.P1582686684602990013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A014707 n + (2 * n + 1 : ℤ)).toNat

end

end A073122.P1582686684602990013

noncomputable section

/-- A073122: Minimal reversing binary representation of n. Converting sum of powers of 2 in binary representation of a(n) to alternating sum gives n. See A072339.

Offset 1, canonical program `A073122.P1582686684602990013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073122 (n : ℕ) : ℤ :=
  A073122.P1582686684602990013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073145.P2471362848149951357

`3*A057597(n+2)+2*A057597(n+1)+A057597(n)`
-/

namespace A073145.P2471362848149951357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A057597 (n + 2) + 2 * A057597 (n + 1) + A057597 n

end

end A073145.P2471362848149951357

noncomputable section

/-- A073145: a(n) = -a(n-1) - a(n-2) + a(n-3), a(0)=3, a(1)=-1, a(2)=-1.

Offset 0, canonical program `A073145.P2471362848149951357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073145 (n : ℕ) : ℤ :=
  A073145.P2471362848149951357.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073169.P14887101725308823032

`eq[1, A066247(n+1)]-n`
-/

namespace A073169.P14887101725308823032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A073169.P14887101725308823032

noncomputable section

/-- A073169: a(n)=A002808(n)-n, difference between n-th composite and n.

Offset 1, canonical program `A073169.P14887101725308823032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073169 (n : ℕ) : ℤ :=
  A073169.P14887101725308823032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073189.P2936447101762913504

`n-A001840(A073188(n))`
-/

namespace A073189.P2936447101762913504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001840 (A073188 n).toNat

end

end A073189.P2936447101762913504

noncomputable section

/-- A073189: Integers 0..k three times, then 0..k+1 three times, etc.

Offset 0, canonical program `A073189.P2936447101762913504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073189 (n : ℕ) : ℤ :=
  A073189.P2936447101762913504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073301.P17524349592475400275

`record[Δ[A249576(A267186(n+1))]]`
-/

namespace A073301.P17524349592475400275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A267186 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073301.P17524349592475400275

noncomputable section

/-- A073301: a(n) is the n-th new record value in A073300.

Offset 1, canonical program `A073301.P17524349592475400275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A073301 (n : ℕ) : ℤ :=
  A073301.P17524349592475400275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A073301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073356.P10899107107544042872

`gcd(∏{p}[n+1, #], A073355(n+1))`
-/

namespace A073356.P10899107107544042872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A073355 (n + 1))

end

end A073356.P10899107107544042872

noncomputable section

/-- A073356: Greatest common divisor of squarefree kernel of n and sum of squarefree kernels of numbers <= n.

Offset 1, canonical program `A073356.P10899107107544042872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073356 (n : ℕ) : ℤ :=
  (A073356.P10899107107544042872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073388.P12142272651863392813

`∑[(n+2)*∑[A026150(n)/2]]`
-/

namespace A073388.P12142272651863392813
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073388.P12142272651863392813

noncomputable section

/-- A073388: Second column of the convolution triangle A073387(n+1, 1), for n >= 0.

Offset 0, canonical program `A073388.P12142272651863392813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A073388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073388.P12142272651863392813.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A073388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073497.P4382820423101221026

`(n+1)²-A000040(n+1)`
-/

namespace A073497.P4382820423101221026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000040 (n + 1)

end

end A073497.P4382820423101221026

noncomputable section

/-- A073497: a(n) = n^2 - prime(n).

Offset 1, canonical program `A073497.P4382820423101221026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073497 (n : ℕ) : ℤ :=
  A073497.P4382820423101221026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073518.P11821529336065083572

`round(cot(π/A000040(n+1)))`
-/

namespace A073518.P11821529336065083572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.pi / (A000040 (n + 1) : ℝ)))

end

end A073518.P11821529336065083572

noncomputable section

/-- A073518: Cotangent of Pi/prime(n), rounded to nearest integer.

Offset 1, canonical program `A073518.P11821529336065083572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073518 (n : ℕ) : ℤ :=
  A073518.P11821529336065083572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073736.P9525934929482745287

`A000040(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A073736.P9525934929482745287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A000040 n + a (n - 3)

end

end A073736.P9525934929482745287

noncomputable section

/-- A073736: Sum of primes whose index is congruent to n (mod 3); equals the partial sums of A073737 (in which sums of three successive terms form the primes).

Offset 0, canonical program `A073736.P9525934929482745287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073736 (n : ℕ) : ℤ :=
  A073736.P9525934929482745287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073778.P5763979950030979350

`∑[A393073(abs(1-n))]`
-/

namespace A073778.P5763979950030979350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393073 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073778.P5763979950030979350

noncomputable section

/-- A073778: a(n) = Sum_{k=0..n} T(k)*T(n-k), where T is A000073; convolution of A000073 with itself.

Offset 0, canonical program `A073778.P5763979950030979350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A073778 (n : ℕ) : ℤ :=
  A073778.P5763979950030979350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A073778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073795.P3953816640740393313

`xor(n, A249572(n))-A249572(n)`
-/

namespace A073795.P3953816640740393313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A249572 n) - A249572 n

end

end A073795.P3953816640740393313

noncomputable section

/-- A073795: Replace 8^k with (-8)^k in base 8 expansion of n.

Offset 0, canonical program `A073795.P3953816640740393313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A073795 (n : ℕ) : ℤ :=
  A073795.P3953816640740393313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A073795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073802.P14925039467087155795

`∑{d}[A009194(n+1), gcd(n, #)]`
-/

namespace A073802.P14925039467087155795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd n d

end

end A073802.P14925039467087155795

noncomputable section

/-- A073802: Number of common divisors of n and sigma(n).

Offset 1, canonical program `A073802.P14925039467087155795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073802 (n : ℕ) : ℤ :=
  (A073802.P14925039467087155795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073996.P17359561944595902144

`∑[A038504(n)]*A038503(n+1)`
-/

namespace A073996.P17359561944595902144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A038503 (n + 1)

end

end A073996.P17359561944595902144

noncomputable section

/-- A073996: Number of strings of length n over GF(4) with trace 0 and subtrace 1.

Offset 1, canonical program `A073996.P17359561944595902144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073996 (n : ℕ) : ℤ :=
  A073996.P17359561944595902144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074081.P10294358627982683923

`(-1)^n*A073817(n)`
-/

namespace A074081.P10294358627982683923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A073817 n

end

end A074081.P10294358627982683923

noncomputable section

/-- A074081: Sum of determinants of 3rd-order principal minors of powers of inverse of tetramatrix ((1,1,0,0),(1,0,1,0),(1,0,0,1),(1,0,0,0)).

Offset 0, canonical program `A074081.P10294358627982683923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A074081 (n : ℕ) : ℤ :=
  A074081.P10294358627982683923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A074081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074147.P16699189592433911745

`ceil(((2*n+1)/A002024(n+1))²/2)`
-/

namespace A074147.P16699189592433911745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℚ) / (A002024 (n + 1) : ℚ)) ^ 2 / 2⌉

end

end A074147.P16699189592433911745

noncomputable section

/-- A074147: (2n-1) odd numbers followed by 2n even numbers.

Offset 1, canonical program `A074147.P16699189592433911745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074147 (n : ℕ) : ℤ :=
  A074147.P16699189592433911745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074155.P15347540932136368247

`A000567(n)+lcm(A016921(n), A308196(n))`
-/

namespace A074155.P15347540932136368247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + (Int.lcm (A016921 n) (A308196 n) : ℤ)

end

end A074155.P15347540932136368247

noncomputable section

/-- A074155: Group the natural numbers so that the product of members of a group is a multiple of the sum: (1),(2,3,4,5,6),(7,8,9),(10,11,12),(13,14,15),(16,17,18),(19,20,21),(22,23,24),.... This is the sequence of the ratio of product /sum.

Offset 1, canonical program `A074155.P15347540932136368247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074155 (n : ℕ) : ℤ :=
  A074155.P15347540932136368247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074225.P6667458251005336292

`(n+1)*∑{d}[n+1, A001787(#)]`
-/

namespace A074225.P6667458251005336292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A001787 d)

end

end A074225.P6667458251005336292

noncomputable section

/-- A074225: a(n) = n * Sum_{d|n} d*2^(d-1).

Offset 1, canonical program `A074225.P6667458251005336292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A074225 (n : ℕ) : ℤ :=
  A074225.P6667458251005336292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A074225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074307.P15096553677735678095

`A074305(A074305(n))`
-/

namespace A074307.P15096553677735678095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 (A074305 n).toNat

end

end A074307.P15096553677735678095

noncomputable section

/-- A074307: Square of permutation in A074305.

Offset 0, canonical program `A074307.P15096553677735678095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A074307 (n : ℕ) : ℤ :=
  A074307.P15096553677735678095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A074307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074308.P12421467784667547018

`A074306(A074306(n))`
-/

namespace A074308.P12421467784667547018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A074306 n).toNat

end

end A074308.P12421467784667547018

noncomputable section

/-- A074308: Inverse of permutation in A074307.

Offset 0, canonical program `A074308.P12421467784667547018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A074308 (n : ℕ) : ℤ :=
  A074308.P12421467784667547018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A074308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074376.P14527099379225967427

`A000326(A001414(n+1))`
-/

namespace A074376.P14527099379225967427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A001414 (n + 1)).toNat

end

end A074376.P14527099379225967427

noncomputable section

/-- A074376: s(3s-1)/2 where s is the sum of the prime factors of n (with repetition).

Offset 1, canonical program `A074376.P14527099379225967427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074376 (n : ℕ) : ℤ :=
  A074376.P14527099379225967427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074389.P8050335013716147164

`gcd(n+1, A009223(n+1))`
-/

namespace A074389.P8050335013716147164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009223 (n + 1))

end

end A074389.P8050335013716147164

noncomputable section

/-- A074389: a(n) = gcd(n, sigma(n), phi(n)).

Offset 1, canonical program `A074389.P8050335013716147164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074389 (n : ℕ) : ℤ :=
  (A074389.P8050335013716147164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074627.P9456993586647811186

`eq[0, A000203(n+1)%6]+1`
-/

namespace A074627.P9456993586647811186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074627.P9456993586647811186

noncomputable section

/-- A074627: Numbers n such that sigma(n) is divisible by 6.

Offset 1, canonical program `A074627.P9456993586647811186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074627 (n : ℕ) : ℤ :=
  (A074627.P9456993586647811186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074628.P11886909399494549536

`eq[2, A000203(n+1)%6]+1`
-/

namespace A074628.P11886909399494549536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074628.P11886909399494549536

noncomputable section

/-- A074628: Numbers k such that sigma(k) == 2 mod 6.

Offset 1, canonical program `A074628.P11886909399494549536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6591 terms. -/
def A074628 (n : ℕ) : ℤ :=
  (A074628.P11886909399494549536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6591 terms. -/
def A074628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074630.P4310877530525918201

`eq[3, A039653(n)%6]`
-/

namespace A074630.P4310877530525918201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074630.P4310877530525918201

noncomputable section

/-- A074630: Numbers k such that sigma(k) == 4 mod 6.

Offset 1, canonical program `A074630.P4310877530525918201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A074630 (n : ℕ) : ℤ :=
  (A074630.P4310877530525918201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A074630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074752.P10712639327454673054

`A001399(n)+∑[A000217(A008615(n+1))]`
-/

namespace A074752.P10712639327454673054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074752.P10712639327454673054

noncomputable section

/-- A074752: Number of combinatorially inequivalent cyclic subgroups of S_n of order 6. Number of partitions of n of order 6.

Offset 5, canonical program `A074752.P10712639327454673054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074752 (n : ℕ) : ℤ :=
  A074752.P10712639327454673054.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074796.P12241950292265642730

`∑[val(A033120(∏{e}[n+1, #+1]), 2)]`
-/

namespace A074796.P12241950292265642730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033120 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P12241950292265642730

noncomputable section

/-- A074796: Number of numbers k <= n such that tau(k) == 2 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A074796.P12241950292265642730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074796 (n : ℕ) : ℤ :=
  (A074796.P12241950292265642730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074877.P16251501600652201359

`∑[A394960(n+3)]`
-/

namespace A074877.P16251501600652201359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074877.P16251501600652201359

noncomputable section

/-- A074877: Number of function calls required to compute ack(3,n), where ack denotes the Ackermann function.

Offset 0, canonical program `A074877.P16251501600652201359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A074877 (n : ℕ) : ℤ :=
  A074877.P16251501600652201359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A074877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074972.P802094365088414414

`(19*A000040(n+1))%20`
-/

namespace A074972.P802094365088414414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (19 * A000040 (n + 1)) 20

end

end A074972.P802094365088414414

noncomputable section

/-- A074972: a(n) == - prime(n) (modulo 20).

Offset 1, canonical program `A074972.P802094365088414414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074972 (n : ℕ) : ℤ :=
  A074972.P802094365088414414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074976.P8649258416445497239

`round(2/Δ[sqrt(A001749(n+1))])`
-/

namespace A074976.P8649258416445497239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n))

end

end A074976.P8649258416445497239

noncomputable section

/-- A074976: a(n) = round(1/(sqrt(prime(n+1)) - sqrt(prime(n)))).

Offset 1, canonical program `A074976.P8649258416445497239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074976 (n : ℕ) : ℤ :=
  A074976.P8649258416445497239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075052.P11734281029159209410

`A002760(n+2)-A002760(n+1)`
-/

namespace A075052.P11734281029159209410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 2) - A002760 (n + 1)

end

end A075052.P11734281029159209410

noncomputable section

/-- A075052: Write down squares and cubes in order, as in A002760. The sequence gives the first differences between terms.

Offset 1, canonical program `A075052.P11734281029159209410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075052 (n : ℕ) : ℤ :=
  A075052.P11734281029159209410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075105.P11919910157851516665

`(n+2)/A075104(n+2)`
-/

namespace A075105.P11919910157851516665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A075104 (n + 2) : ℚ)

end

end A075105.P11919910157851516665

noncomputable section

/-- A075105: Numerator of n/floor(log_2(n)); denominator is A075106(n).

Offset 2, canonical program `A075105.P11919910157851516665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075105.P11919910157851516665.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075151.P11861447919673689050

`(-1)^n*A075155(n)`
-/

namespace A075151.P11861447919673689050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A075155 n

end

end A075151.P11861447919673689050

noncomputable section

/-- A075151: a(n)=L(n)^2*C(n), L(n)=Lucas numbers (A000032), C(n)=reflected Lucas numbers (comment to A061084).

Offset 0, canonical program `A075151.P11861447919673689050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A075151 (n : ℕ) : ℤ :=
  A075151.P11861447919673689050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A075151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075311.P6686021265299365214

`lt[1, 2-a(n-A011371(n))]` with `a(0)=0, a(1)=21`
-/

namespace A075311.P6686021265299365214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 21] fun n f2 =>
  2 - f2 ((n : ℤ) - A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075311.P6686021265299365214

noncomputable section

/-- A075311: a(1) = 1; for n > 1, a(n) is the smallest number m > a(n-1) such that the number of 1's in the binary expansion of m is not already in the sequence.

Offset 1, canonical program `A075311.P6686021265299365214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A075311 (n : ℕ) : ℤ :=
  (A075311.P6686021265299365214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A075311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075359.P17779363624496189617

`Δ[A037123(∑[n])]`
-/

namespace A075359.P17779363624496189617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075359.P17779363624496189617

noncomputable section

/-- A075359: Sum of the digits of the next n numbers.

Offset 1, canonical program `A075359.P17779363624496189617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075359 (n : ℕ) : ℤ :=
  A075359.P17779363624496189617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075493.P5582353736651150310

`lt[0, A075491(n+1)]+1`
-/

namespace A075493.P5582353736651150310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A075493.P5582353736651150310

noncomputable section

/-- A075493: Numbers k such that (sum of digits of k) > (number of divisors of k).

Offset 1, canonical program `A075493.P5582353736651150310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8273 terms. -/
def A075493 (n : ℕ) : ℤ :=
  (A075493.P5582353736651150310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8273 terms. -/
def A075493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075495.P7130730270082164988

`A075298(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A075495.P7130730270082164988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A075298 n - a (n - 2)

end

end A075495.P7130730270082164988

noncomputable section

/-- A075495: Convolution of A075298 with A056594.

Offset 0, canonical program `A075495.P7130730270082164988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A075495 (n : ℕ) : ℤ :=
  A075495.P7130730270082164988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A075495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075518.P17044859685553142342

`floor(A000040(n+1)/4)`
-/

namespace A075518.P17044859685553142342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 4⌋

end

end A075518.P17044859685553142342

noncomputable section

/-- A075518: a(n) = floor(prime(n)/4).

Offset 1, canonical program `A075518.P17044859685553142342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075518 (n : ℕ) : ℤ :=
  A075518.P17044859685553142342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075665.P1061193580195464882

`Δ[A000538(∑[n])]`
-/

namespace A075665.P1061193580195464882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075665.P1061193580195464882

noncomputable section

/-- A075665: Sum of next n 4th powers.

Offset 1, canonical program `A075665.P1061193580195464882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075665 (n : ℕ) : ℤ :=
  A075665.P1061193580195464882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075666.P7923848154544666744

`Δ[A000539(∑[n])]`
-/

namespace A075666.P7923848154544666744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075666.P7923848154544666744

noncomputable section

/-- A075666: Sum of next n 5th powers.

Offset 1, canonical program `A075666.P7923848154544666744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075666 (n : ℕ) : ℤ :=
  A075666.P7923848154544666744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075667.P5473521888596357976

`Δ[A000540(∑[n])]`
-/

namespace A075667.P5473521888596357976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075667.P5473521888596357976

noncomputable section

/-- A075667: Sum of next n 6th powers.

Offset 1, canonical program `A075667.P5473521888596357976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075667 (n : ℕ) : ℤ :=
  A075667.P5473521888596357976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075668.P16031332990849962930

`Δ[A000541(∑[n])]`
-/

namespace A075668.P16031332990849962930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075668.P16031332990849962930

noncomputable section

/-- A075668: Sum of next n 7th powers.

Offset 1, canonical program `A075668.P16031332990849962930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075668 (n : ℕ) : ℤ :=
  A075668.P16031332990849962930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075669.P8418588109550603356

`Δ[A000542(∑[n])]`
-/

namespace A075669.P8418588109550603356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075669.P8418588109550603356

noncomputable section

/-- A075669: Sum of next n 8th powers.

Offset 1, canonical program `A075669.P8418588109550603356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075669 (n : ℕ) : ℤ :=
  A075669.P8418588109550603356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075670.P10395475035890779460

`Δ[A007487(∑[n])]`
-/

namespace A075670.P10395475035890779460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075670.P10395475035890779460

noncomputable section

/-- A075670: Sum of next n 9th powers.

Offset 1, canonical program `A075670.P10395475035890779460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075670 (n : ℕ) : ℤ :=
  A075670.P10395475035890779460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075671.P12647582429914079415

`Δ[A023002(∑[n])]`
-/

namespace A075671.P12647582429914079415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075671.P12647582429914079415

noncomputable section

/-- A075671: Sum of next n 10th powers.

Offset 1, canonical program `A075671.P12647582429914079415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075671 (n : ℕ) : ℤ :=
  A075671.P12647582429914079415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075701.P14381727279557985460

`A000203(abs(a(n-1)))-2*a(n-1)` with `a(0)=1`
-/

namespace A075701.P14381727279557985460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 |a (n - 1)|.toNat - 2 * a (n - 1)

end

end A075701.P14381727279557985460

noncomputable section

/-- A075701: a(1)=1, a(n+1)=sigma(a(n))-2*a(n).

Offset 1, canonical program `A075701.P14381727279557985460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075701 (n : ℕ) : ℤ :=
  A075701.P14381727279557985460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075728.P10269947681919127988

`record[abs(2*(n+1)-A000203(n+1))]`
-/

namespace A075728.P10269947681919127988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - A000203 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P10269947681919127988

noncomputable section

/-- A075728: Records in abs(sigma(n)-2*n) (absolute value of A033879).

Offset 1, canonical program `A075728.P10269947681919127988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A075728 (n : ℕ) : ℤ :=
  A075728.P10269947681919127988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A075728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075731.P10395991786095525384

`A000045(record[∏{p}[n, #]])`
-/

namespace A075731.P10395991786095525384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A075731.P10395991786095525384

noncomputable section

/-- A075731: Fibonacci numbers F(k) for k squarefree (A005117).

Offset 1, canonical program `A075731.P10395991786095525384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A075731 (n : ℕ) : ℤ :=
  A075731.P10395991786095525384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A075731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075732.P15581762830098997151

`A000045(lt[1, ∏{e}[n, #]])`
-/

namespace A075732.P15581762830098997151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075732.P15581762830098997151

noncomputable section

/-- A075732: Fibonacci numbers F(k) for k not squarefree (A013929).

Offset 0, canonical program `A075732.P15581762830098997151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A075732 (n : ℕ) : ℤ :=
  A075732.P15581762830098997151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A075732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075734.P17183931831588121213

`A000045(record[∏{p}[n, -#]])`
-/

namespace A075734.P17183931831588121213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075734.P17183931831588121213

noncomputable section

/-- A075734: Fibonacci numbers F(k) when k is a product of an even number of distinct primes A030229 (mu(k)=1).

Offset 1, canonical program `A075734.P17183931831588121213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A075734 (n : ℕ) : ℤ :=
  A075734.P17183931831588121213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A075734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075881.P2670765387011975184

`∑{p}[∑[A000040(n+1)], #]`
-/

namespace A075881.P2670765387011975184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A075881.P2670765387011975184

noncomputable section

/-- A075881: a(n) = the sum of the prime factors of Sum_{i=1..n} prime(i).

Offset 1, canonical program `A075881.P2670765387011975184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. -/
def A075881 (n : ℕ) : ℤ :=
  (A075881.P2670765387011975184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. -/
def A075881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075895.P13687500531108840947

`round((A000447(n+1)-1)/A000040(n+1))`
-/

namespace A075895.P13687500531108840947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000447 (n + 1) - 1 : ℚ) / (A000040 (n + 1) : ℚ))

end

end A075895.P13687500531108840947

noncomputable section

/-- A075895: Rounded sum of first n odd integers squared divided by n-th prime.

Offset 1, canonical program `A075895.P13687500531108840947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075895 (n : ℕ) : ℤ :=
  A075895.P13687500531108840947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076049.P2274041520882839645

`∑[A079496(n+1)]-1`
-/

namespace A076049.P2274041520882839645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A076049.P2274041520882839645

noncomputable section

/-- A076049: Numbers k such that the sum of the k-th triangular number and (k+2)-nd triangular number is a triangular number.

Offset 1, canonical program `A076049.P2274041520882839645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A076049 (n : ℕ) : ℤ :=
  A076049.P2274041520882839645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A076049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076160.P7190906262861791826

`∑{digits}[n, A060884(#)-1]`
-/

namespace A076160.P7190906262861791826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A060884 x - 1).sum

end

end A076160.P7190906262861791826

noncomputable section

/-- A076160: Sod_4 - sod_3 + sod_2 - sod_1, where sod_k is the sum of k-th powers of digits of n.

Offset 0, canonical program `A076160.P7190906262861791826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076160 (n : ℕ) : ℤ :=
  A076160.P7190906262861791826.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076162.P12378569391942512575

`p?[A076161(n+1)]`
-/

namespace A076162.P12378569391942512575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076162.P12378569391942512575

noncomputable section

/-- A076162: Primes p such that p + sum of squares of digits of p is also prime.

Offset 1, canonical program `A076162.P12378569391942512575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A076162 (n : ℕ) : ℤ :=
  A076162.P12378569391942512575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A076162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076206.P11566431045651896836

`eq[A032741(n)+1, dr(n)]`
-/

namespace A076206.P11566431045651896836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A076206.P11566431045651896836

noncomputable section

/-- A076206: Numbers with digital root equal to their number of divisors.

Offset 1, canonical program `A076206.P11566431045651896836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A076206 (n : ℕ) : ℤ :=
  (A076206.P11566431045651896836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A076206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076334.P17741654376477125512

`A007947(n+2)-A007947(n+1)`
-/

namespace A076334.P17741654376477125512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) - A007947 (n + 1)

end

end A076334.P17741654376477125512

noncomputable section

/-- A076334: Differences between successive squarefree kernels.

Offset 1, canonical program `A076334.P17741654376477125512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076334 (n : ℕ) : ℤ :=
  A076334.P17741654376477125512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076411.P17634982879801196163

`n-∑[char[A007916(n+1)]]`
-/

namespace A076411.P17634982879801196163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076411.P17634982879801196163

noncomputable section

/-- A076411: Number of perfect powers < n.

Offset 1, canonical program `A076411.P17634982879801196163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076411 (n : ℕ) : ℤ :=
  A076411.P17634982879801196163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076458.P16750475048626213456

`2*A076456(n+1)-A076454(n+1)`
-/

namespace A076458.P16750475048626213456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076456 (n + 1) - A076454 (n + 1)

end

end A076458.P16750475048626213456

noncomputable section

/-- A076458: Sum of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly five ways.

Offset 1, canonical program `A076458.P16750475048626213456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076458 (n : ℕ) : ℤ :=
  A076458.P16750475048626213456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076543.P14043142973784260755

`2*A066779(n+1)-∑[n+1]`
-/

namespace A076543.P14043142973784260755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066779 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076543.P14043142973784260755

noncomputable section

/-- A076543: a(n) = Sum_{k=1..n} k*sqf(k) where sqf(k)=1 if k is squarefree and sqf(k)=-1 otherwise.

Offset 1, canonical program `A076543.P14043142973784260755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076543 (n : ℕ) : ℤ :=
  A076543.P14043142973784260755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076618.P8099091245670450071

`A007947(n+1)+1`
-/

namespace A076618.P8099091245670450071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + 1

end

end A076618.P8099091245670450071

noncomputable section

/-- A076618: Least x>1 such that x^d == 1 (mod d) for each divisor d of n.

Offset 1, canonical program `A076618.P8099091245670450071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076618 (n : ℕ) : ℤ :=
  A076618.P8099091245670450071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076632.P14404458359531555987

`ceil(abs(∑[A078020(n)/2]))`
-/

namespace A076632.P14404458359531555987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078020 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|∑ j ∈ Finset.range (n + 1), f1 j|⌉

end

end A076632.P14404458359531555987

noncomputable section

/-- A076632: Solve 2^n - 2 = 7(x^2 - x) + (y^2 - y) for (x,y) with x>0, y>0; sequence gives value of x.

Offset 1, canonical program `A076632.P14404458359531555987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A076632 (n : ℕ) : ℤ :=
  A076632.P14404458359531555987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A076632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076792.P18377218725901081931

`∑{d}[n+1, #*A061019(#)]`
-/

namespace A076792.P18377218725901081931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A061019 d

end

end A076792.P18377218725901081931

noncomputable section

/-- A076792: Sum_{d divides n} d^2*(-1)^bigomega(d), where bigomega(n) = A001222(n).

Offset 1, canonical program `A076792.P18377218725901081931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076792 (n : ℕ) : ℤ :=
  A076792.P18377218725901081931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076816.P12064210013836610838

`n²-C(A214857(n), 2)`
-/

namespace A076816.P12064210013836610838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose (A214857 n).toNat 2 : ℤ)

end

end A076816.P12064210013836610838

noncomputable section

/-- A076816: Squares modulo triangular numbers: n^2 minus the greatest triangular number smaller than or equal to n^2.

Offset 0, canonical program `A076816.P12064210013836610838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076816 (n : ℕ) : ℤ :=
  A076816.P12064210013836610838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076874.P16396782865294518116

`n-A055086(a(n-1)+1)` with `a(0)=0`
-/

namespace A076874.P16396782865294518116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A055086 (a (n - 1) + 1).toNat

end

end A076874.P16396782865294518116

noncomputable section

/-- A076874: a(n) = n - floor ( ( 4*n + 1 )^(1/2) ).

Offset 3, canonical program `A076874.P16396782865294518116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076874 (n : ℕ) : ℤ :=
  A076874.P16396782865294518116.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076885.P12736356851806597047

`A221150(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A076885.P12736356851806597047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A221150 (n + 1) + a (n - 1)

end

end A076885.P12736356851806597047

noncomputable section

/-- A076885: Let u(0)=1, u(1)=1 u(n) = u(n-1) + u(n-2) - n*z where z = (5-sqrt(5))/10 =0.27..., then a(n)=floor(u(n)).

Offset 0, canonical program `A076885.P12736356851806597047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. -/
def A076885 (n : ℕ) : ℤ :=
  A076885.P12736356851806597047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. -/
def A076885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076899.P11870256552254514627

`A123231(Δ[A274583(n)])`
-/

namespace A076899.P11870256552254514627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (f1 (n + 1) - f1 n).toNat

end

end A076899.P11870256552254514627

noncomputable section

/-- A076899: Let u(1)=u(2)=u(3)=1, u(n)=sign(u(n-1)-u(n-2))/(u(n-3)+1); then a(n) is the denominator of u(n).

Offset 1, canonical program `A076899.P11870256552254514627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2872 terms. -/
def A076899 (n : ℕ) : ℤ :=
  A076899.P11870256552254514627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2872 terms. -/
def A076899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076968.P6330857276184368086

`sqrt(A076967(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076968.P6330857276184368086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076967 (n + 1) : ℝ)

end

end A076968.P6330857276184368086

noncomputable section

/-- A076968: a(n) = sqrt(A076967(n)).

Offset 1, canonical program `A076968.P6330857276184368086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076968.P6330857276184368086.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076984.P13104546406193990713

`A023645(n+1)+1`
-/

namespace A076984.P13104546406193990713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + 1

end

end A076984.P13104546406193990713

noncomputable section

/-- A076984: Number of Fibonacci numbers that are divisors of the n-th Fibonacci number.

Offset 1, canonical program `A076984.P13104546406193990713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076984 (n : ℕ) : ℤ :=
  A076984.P13104546406193990713.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077107.P2088776491079219285

`A048763(n²)`
-/

namespace A077107.P2088776491079219285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (n ^ 2)

end

end A077107.P2088776491079219285

noncomputable section

/-- A077107: Least integer cube >= n^2.

Offset 0, canonical program `A077107.P2088776491079219285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077107 (n : ℕ) : ℤ :=
  A077107.P2088776491079219285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077139.P17913429271787150258

`A008339(n+2)`
-/

namespace A077139.P17913429271787150258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008339 (n + 2)

end

end A077139.P17913429271787150258

noncomputable section

/-- A077139: a(1) = 1, a(n) = lcm(n, a(n-1)) / gcd(n, a(n-1)).

Offset 1, canonical program `A077139.P17913429271787150258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A077139 (n : ℕ) : ℤ :=
  A077139.P17913429271787150258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A077139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077241.P11340406433568583916

`A143609(n+1)-A006452(n)`
-/

namespace A077241.P11340406433568583916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1) - A006452 n

end

end A077241.P11340406433568583916

noncomputable section

/-- A077241: Combined Diophantine Chebyshev sequences A054488 and A077413.

Offset 0, canonical program `A077241.P11340406433568583916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A077241 (n : ℕ) : ℤ :=
  A077241.P11340406433568583916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A077241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077248.P14244209318349117416

`A237262(n+1)+A070997(A004526(n))`
-/

namespace A077248.P14244209318349117416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1) + A070997 (A004526 n).toNat

end

end A077248.P14244209318349117416

noncomputable section

/-- A077248: Combined Diophantine Chebyshev sequences A077246 and A077244.

Offset 0, canonical program `A077248.P14244209318349117416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A077248 (n : ℕ) : ℤ :=
  A077248.P14244209318349117416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A077248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077272.P386906752104334311

`∑{d}[n, (n-#)*A001787(#)]`
-/

namespace A077272.P386906752104334311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - (d : ℤ)) * A001787 d

end

end A077272.P386906752104334311

noncomputable section

/-- A077272: a(n) = Sum_{d|n} d^2*2^(d-1)*(n/d-1) for n > 0.

Offset 0, canonical program `A077272.P386906752104334311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A077272 (n : ℕ) : ℤ :=
  A077272.P386906752104334311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A077272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077353.P7669968731459567172

`1+10^A055642(5^n)/5*a(n-1)` with `a(0)=1`
-/

namespace A077353.P7669968731459567172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 + (10 : ℚ) ^ (A055642 (5 ^ n) : ℤ) / 5 * a (n - 1)

end

end A077353.P7669968731459567172

noncomputable section

/-- A077353: a(n) = (concatenation in ascending order of divisors of 5^n)/5^n.

Offset 0, canonical program `A077353.P7669968731459567172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077353.P7669968731459567172.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077425.P1482060704504981513

`∑[A000122(n)²+4]`
-/

namespace A077425.P1482060704504981513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077425.P1482060704504981513

noncomputable section

/-- A077425: a(n) == 1 (mod 4) (see A016813), but not a square (i.e., not in A000290).

Offset 1, canonical program `A077425.P1482060704504981513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077425 (n : ℕ) : ℤ :=
  A077425.P1482060704504981513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077433.P5984932603153973634

`floor(A077430(n+1)/2)`
-/

namespace A077433.P5984932603153973634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077430 (n + 1) : ℚ) / 2⌋

end

end A077433.P5984932603153973634

noncomputable section

/-- A077433: Number of separating zeros to represent A077431.

Offset 1, canonical program `A077433.P5984932603153973634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077433 (n : ℕ) : ℤ :=
  A077433.P5984932603153973634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077616.P14744037970299089908

`abs((n+1)*Δ[A027471(n+1)])`
-/

namespace A077616.P14744037970299089908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A077616.P14744037970299089908

noncomputable section

/-- A077616: Binomial transform of n^2*2^n/2.

Offset 1, canonical program `A077616.P14744037970299089908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A077616 (n : ℕ) : ℤ :=
  A077616.P14744037970299089908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A077616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077648.P9186107893677974913

`A000030(A000040(n+1))`
-/

namespace A077648.P9186107893677974913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000040 (n + 1)).toNat

end

end A077648.P9186107893677974913

noncomputable section

/-- A077648: Initial digits of prime numbers.

Offset 1, canonical program `A077648.P9186107893677974913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A000040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077648 (n : ℕ) : ℤ :=
  A077648.P9186107893677974913.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A000040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077650.P17565632628296498569

`A000030(A000203(n+1))`
-/

namespace A077650.P17565632628296498569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000203 (n + 1)).toNat

end

end A077650.P17565632628296498569

noncomputable section

/-- A077650: Initial decimal digit of sigma(n), the sum of divisors of n.

Offset 1, canonical program `A077650.P17565632628296498569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077650 (n : ℕ) : ℤ :=
  A077650.P17565632628296498569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077725.P13510070513711470878

`A000463(A005843(n+2)+Δ[A010052(n+2)])`
-/

namespace A077725.P13510070513711470878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A005843 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A077725.P13510070513711470878

noncomputable section

/-- A077725: a(n) = smallest square > 1 which can be expressed as a sum of distinct powers of n.

Offset 2, canonical program `A077725.P13510070513711470878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A077725 (n : ℕ) : ℤ :=
  A077725.P13510070513711470878.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A077725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077824.P3598495186949243638

`∑[∑[A077839(n)]]`
-/

namespace A077824.P3598495186949243638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077824.P3598495186949243638

noncomputable section

/-- A077824: Expansion of (1-x)^(-1)/(1-3*x-2*x^2-2*x^3).

Offset 0, canonical program `A077824.P3598495186949243638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A077824 (n : ℕ) : ℤ :=
  A077824.P3598495186949243638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A077824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077825.P1395023001075341724

`∑[∑[A077840(n)]]`
-/

namespace A077825.P1395023001075341724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077825.P1395023001075341724

noncomputable section

/-- A077825: Expansion of (1-x)^(-1)/(1-2*x-3*x^2-3*x^3).

Offset 0, canonical program `A077825.P1395023001075341724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A077825 (n : ℕ) : ℤ :=
  A077825.P1395023001075341724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A077825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077831.P5913645038759850823

`∑[A077839(n)]`
-/

namespace A077831.P5913645038759850823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077831.P5913645038759850823

noncomputable section

/-- A077831: Expansion of 1/(1-3*x-2*x^2-2*x^3).

Offset 0, canonical program `A077831.P5913645038759850823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A077831 (n : ℕ) : ℤ :=
  A077831.P5913645038759850823.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A077831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077832.P1918053625685314064

`∑[A077840(n)]`
-/

namespace A077832.P1918053625685314064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077832.P1918053625685314064

noncomputable section

/-- A077832: Expansion of 1/(1-2*x-3*x^2-3*x^3).

Offset 0, canonical program `A077832.P1918053625685314064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A077832 (n : ℕ) : ℤ :=
  A077832.P1918053625685314064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A077832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077837.P7848014182324253137

`floor(A077829(n)/A077822(n)*A077829(n))`
-/

namespace A077837.P7848014182324253137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077829 n : ℚ) / (A077822 n : ℚ) * (A077829 n : ℚ)⌋

end

end A077837.P7848014182324253137

noncomputable section

/-- A077837: Expansion of (1-x)/(1-3*x-3*x^2-2*x^3).

Offset 0, canonical program `A077837.P7848014182324253137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A077837 (n : ℕ) : ℤ :=
  A077837.P7848014182324253137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A077837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077897.P5742610270946222037

`∑[∑[A052547(n)]*A033999(n)]`
-/

namespace A077897.P5742610270946222037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077897.P5742610270946222037

noncomputable section

/-- A077897: Expansion of (1-x)^(-1)/(1+x-2*x^2-x^3).

Offset 0, canonical program `A077897.P5742610270946222037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A077897 (n : ℕ) : ℤ :=
  A077897.P5742610270946222037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A077897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077929.P10943363958898152486

`A077889(Δ[n²])`
-/

namespace A077929.P10943363958898152486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077929.P10943363958898152486

noncomputable section

/-- A077929: Expansion of (1-x)^(-1)/(1+2*x+x^2-x^3).

Offset 0, canonical program `A077929.P10943363958898152486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A077929 (n : ℕ) : ℤ :=
  A077929.P10943363958898152486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A077929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077932.P1096929856998977642

`∑[∑[A078005(n)]*A033999(n)]`
-/

namespace A077932.P1096929856998977642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077932.P1096929856998977642

noncomputable section

/-- A077932: Expansion of (1-x)^(-1)/(1+2*x+2*x^2-2*x^3).

Offset 0, canonical program `A077932.P1096929856998977642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A077932 (n : ℕ) : ℤ :=
  A077932.P1096929856998977642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A077932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077933.P11566963862505713801

`∑[(-1)^n*∑[A078004(n)]]`
-/

namespace A077933.P11566963862505713801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077933.P11566963862505713801

noncomputable section

/-- A077933: Expansion of (1-x)^(-1)/(1+2*x+2*x^2-x^3).

Offset 0, canonical program `A077933.P11566963862505713801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A077933 (n : ℕ) : ℤ :=
  A077933.P11566963862505713801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. -/
def A077933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077959.P1944326046796435668

`(-1)^n*A077958(n)`
-/

namespace A077959.P1944326046796435668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077958 n

end

end A077959.P1944326046796435668

noncomputable section

/-- A077959: Expansion of 1/(1+2*x^3).

Offset 0, canonical program `A077959.P1944326046796435668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077959 (n : ℕ) : ℤ :=
  A077959.P1944326046796435668.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077962.P1934911131189879445

`(-1)^n*A077961(n)`
-/

namespace A077962.P1934911131189879445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077961 n

end

end A077962.P1934911131189879445

noncomputable section

/-- A077962: Expansion of 1/(1+x^2+x^3).

Offset 0, canonical program `A077962.P1934911131189879445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077962 (n : ℕ) : ℤ :=
  A077962.P1934911131189879445.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077990.P13540541185978666042

`(-1)^n*A077941(n)`
-/

namespace A077990.P13540541185978666042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077941 n

end

end A077990.P13540541185978666042

noncomputable section

/-- A077990: Expansion of 1/(1 + 2*x + x^2 - x^3).

Offset 0, canonical program `A077990.P13540541185978666042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077941, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077990 (n : ℕ) : ℤ :=
  A077990.P13540541185978666042.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077941, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077991.P13837233782969198684

`(-1)^n*A077945(n)`
-/

namespace A077991.P13837233782969198684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077945 n

end

end A077991.P13837233782969198684

noncomputable section

/-- A077991: Expansion of 1/(1+2*x+2*x^2-2*x^3).

Offset 0, canonical program `A077991.P13837233782969198684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077991 (n : ℕ) : ℤ :=
  A077991.P13837233782969198684.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077992.P12964252821974633361

`(-1)^n*A077944(n)`
-/

namespace A077992.P12964252821974633361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077944 n

end

end A077992.P12964252821974633361

noncomputable section

/-- A077992: Expansion of 1/(1+2*x+2*x^2-x^3).

Offset 0, canonical program `A077992.P12964252821974633361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077992 (n : ℕ) : ℤ :=
  A077992.P12964252821974633361.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078050.P507074255280711547

`A001607(n+1)-A001607(n)`
-/

namespace A078050.P507074255280711547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) - A001607 n

end

end A078050.P507074255280711547

noncomputable section

/-- A078050: Expansion of (1-x)/(1+x+2*x^2).

Offset 0, canonical program `A078050.P507074255280711547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001607, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078050 (n : ℕ) : ℤ :=
  A078050.P507074255280711547.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001607, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078053.P8991688834272824755

`(-1)^n*∑[A118649(n)]`
-/

namespace A078053.P8991688834272824755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078053.P8991688834272824755

noncomputable section

/-- A078053: Expansion of (1-x)/(1+2*x-2*x^2-2*x^3).

Offset 0, canonical program `A078053.P8991688834272824755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A078053 (n : ℕ) : ℤ :=
  A078053.P8991688834272824755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A078053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078054.P7441599905738540623

`∑[(-1)^n*A077995(n+1)]`
-/

namespace A078054.P7441599905738540623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078054.P7441599905738540623

noncomputable section

/-- A078054: Expansion of (1-x)/(1+2*x-2*x^2+x^3).

Offset 0, canonical program `A078054.P7441599905738540623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A078054 (n : ℕ) : ℤ :=
  A078054.P7441599905738540623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A078054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078056.P8030881989833653482

`(-1)^n*∑[A052534(n)]`
-/

namespace A078056.P8030881989833653482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078056.P8030881989833653482

noncomputable section

/-- A078056: Expansion of (1-x)/(1+2*x-x^2-x^3).

Offset 0, canonical program `A078056.P8030881989833653482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A078056 (n : ℕ) : ℤ :=
  A078056.P8030881989833653482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A078056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078058.P5154695967304559288

`(-1)^n*A116413(n)`
-/

namespace A078058.P5154695967304559288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116413 n

end

end A078058.P5154695967304559288

noncomputable section

/-- A078058: Expansion of (1-x)/(1+2*x-x^2+x^3).

Offset 0, canonical program `A078058.P5154695967304559288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A078058 (n : ℕ) : ℤ :=
  A078058.P5154695967304559288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A078058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078061.P11890907714709484174

`Δ[Δ[A008998(n)]]*A033999(n)`
-/

namespace A078061.P11890907714709484174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A078061.P11890907714709484174

noncomputable section

/-- A078061: Expansion of (1-x)/(1+2*x+x^3).

Offset 0, canonical program `A078061.P11890907714709484174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A078061 (n : ℕ) : ℤ :=
  A078061.P11890907714709484174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A078061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078064.P8921023174228254607

`Δ[A077961(Δ[n²])]`
-/

namespace A078064.P8921023174228254607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078064.P8921023174228254607

noncomputable section

/-- A078064: Expansion of (1-x)/(1+2*x+x^2-x^3).

Offset 0, canonical program `A078064.P8921023174228254607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A078064 (n : ℕ) : ℤ :=
  A078064.P8921023174228254607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A078064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078065.P4687308080191368630

`(A004442(n)-n)*∑[A049853(n)]`
-/

namespace A078065.P4687308080191368630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078065.P4687308080191368630

noncomputable section

/-- A078065: Expansion of (1-x)/(1+2*x+x^2+x^3).

Offset 0, canonical program `A078065.P4687308080191368630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A078065 (n : ℕ) : ℤ :=
  A078065.P4687308080191368630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A078065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078068.P16138764956348676602

`Δ[A078004(n+1)]*A033999(n+1)`
-/

namespace A078068.P16138764956348676602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A078068.P16138764956348676602

noncomputable section

/-- A078068: Expansion of (1-x)/(1+2*x+2*x^2-x^3).

Offset 0, canonical program `A078068.P16138764956348676602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A078068 (n : ℕ) : ℤ :=
  A078068.P16138764956348676602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A078068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078152.P1878195341906731695

`A183869(n)-A062249(n+1)`
-/

namespace A078152.P1878195341906731695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n - A062249 (n + 1)

end

end A078152.P1878195341906731695

noncomputable section

/-- A078152: a(n) = A055086(n) - A000005(n).

Offset 1, canonical program `A078152.P1878195341906731695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078152 (n : ℕ) : ℤ :=
  A078152.P1878195341906731695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078157.P12162963235771276577

`record[A260196(n)+A017910(n)]-(n+2)`
-/

namespace A078157.P12162963235771276577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A017910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 2 : ℤ)

end

end A078157.P12162963235771276577

noncomputable section

/-- A078157: a(n) = A078152(2^n).

Offset 1, canonical program `A078157.P12162963235771276577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A078157 (n : ℕ) : ℤ :=
  A078157.P12162963235771276577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A078157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078171.P15097859120339114672

`A055086(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078171.P15097859120339114672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A000040 (n + 1)).toNat

end

end A078171.P15097859120339114672

noncomputable section

/-- A078171: a(n) = A055086(A000040(n)).

Offset 1, canonical program `A078171.P15097859120339114672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078171 (n : ℕ) : ℤ :=
  A078171.P15097859120339114672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078181.P9139865131225983786

`∑{d}[n+1, #*A079978(#-1)]`
-/

namespace A078181.P9139865131225983786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079978 (d - 1)

end

end A078181.P9139865131225983786

noncomputable section

/-- A078181: a(n) = Sum_{d|n, d == 1 (mod 3)} d.

Offset 1, canonical program `A078181.P9139865131225983786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078181 (n : ℕ) : ℤ :=
  A078181.P9139865131225983786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078307.P15856725681295439327

`∑{d}[n+1, A309337(#)]`
-/

namespace A078307.P15856725681295439327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309337 d

end

end A078307.P15856725681295439327

noncomputable section

/-- A078307: a(n) = Sum_{d divides n} (-1)^(n/d+1)*d^3.

Offset 1, canonical program `A078307.P15856725681295439327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078307 (n : ℕ) : ℤ :=
  A078307.P15856725681295439327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078316.P16668530890096208862

`A051903((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078316.P16668530890096208862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078316.P16668530890096208862

noncomputable section

/-- A078316: Maximum exponent in the prime factorization of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078316.P16668530890096208862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078316 (n : ℕ) : ℤ :=
  A078316.P16668530890096208862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078411.P194247880700260291

`A008769(n)+∑[A000217(A004526(n))]`
-/

namespace A078411.P194247880700260291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078411.P194247880700260291

noncomputable section

/-- A078411: Expansion of Molien series for a certain 4-D group of order 48.

Offset 0, canonical program `A078411.P194247880700260291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078411 (n : ℕ) : ℤ :=
  A078411.P194247880700260291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078422.P12376503140112654654

`A000040(n+2)^A000040(n+1)`
-/

namespace A078422.P12376503140112654654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A078422.P12376503140112654654

noncomputable section

/-- A078422: a(n) = prime(n+1)^prime(n).

Offset 1, canonical program `A078422.P12376503140112654654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078422 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078422.P12376503140112654654.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078573.P17813845103717106960

`A051903(p?[A000040(n+1)-2]+1)`
-/

namespace A078573.P17813845103717106960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A078573.P17813845103717106960

noncomputable section

/-- A078573: The maximum exponent in prime factorization of the average of n-th twin prime pair.

Offset 1, canonical program `A078573.P17813845103717106960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A078573 (n : ℕ) : ℤ :=
  A078573.P17813845103717106960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A078573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078636.P18176940711855110838

`A007947(n+1)*A007947(n+2)`
-/

namespace A078636.P18176940711855110838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007947 (n + 2)

end

end A078636.P18176940711855110838

noncomputable section

/-- A078636: a(n) = rad(n*(n+1)).

Offset 1, canonical program `A078636.P18176940711855110838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078636 (n : ℕ) : ℤ :=
  A078636.P18176940711855110838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078685.P14940977753041883889

`A053646(p?[abs(xor(n, -2))])`
-/

namespace A078685.P14940977753041883889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078685.P14940977753041883889

noncomputable section

/-- A078685: Minimum value of |prime(n) - 2^x|.

Offset 1, canonical program `A078685.P14940977753041883889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078685 (n : ℕ) : ℤ :=
  A078685.P14940977753041883889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078721.P3053392627358656708

`A000040(A000124(n))`
-/

namespace A078721.P3053392627358656708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000124 n).toNat

end

end A078721.P3053392627358656708

noncomputable section

/-- A078721: a(n) = prime(n*(n+1)/2 + 1).

Offset 0, canonical program `A078721.P3053392627358656708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078721 (n : ℕ) : ℤ :=
  A078721.P3053392627358656708.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078736.P8131664630174291717

`∏[A058281(n)+1/a(n-1)]` with `a(0)=1`
-/

namespace A078736.P8131664630174291717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A058281 n : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078736.P8131664630174291717

noncomputable section

/-- A078736: Numerators of convergents to sqrt(e).

Offset 1, canonical program `A078736.P8131664630174291717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078736 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078736.P8131664630174291717.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078737.P6563934209160110452

`∏[A058281(n)+1/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A078737.P6563934209160110452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (A058281 n : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078737.P6563934209160110452

noncomputable section

/-- A078737: Denominators of convergents to sqrt(e).

Offset 1, canonical program `A078737.P6563934209160110452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078737.P6563934209160110452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078746.P2444291317857137827

`A000040(A001844(n))`
-/

namespace A078746.P2444291317857137827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001844 n).toNat

end

end A078746.P2444291317857137827

noncomputable section

/-- A078746: a(n) = prime(2*n*(n+1)+1).

Offset 0, canonical program `A078746.P2444291317857137827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078746 (n : ℕ) : ℤ :=
  A078746.P2444291317857137827.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078763.P9836869021178763523

`p?[A002024(abs(1-n)+1)+2*n]`
-/

namespace A078763.P9836869021178763523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (|1 - (n : ℤ)| + 1).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P9836869021178763523

noncomputable section

/-- A078763: List primes between (2n-1)^2 and (2n)^2.

Offset 1, canonical program `A078763.P9836869021178763523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A078763 (n : ℕ) : ℤ :=
  A078763.P9836869021178763523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A078763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078881.P16027770372899334795

`A006165(n+2)`
-/

namespace A078881.P16027770372899334795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2)

end

end A078881.P16027770372899334795

noncomputable section

/-- A078881: Size of the largest subset S of {1,2,3,...,n} with the property that if i and j are distinct elements of S then i XOR j is not in S, where XOR is the bitwise exclusive-OR operator.

Offset 1, canonical program `A078881.P16027770372899334795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078881 (n : ℕ) : ℤ :=
  A078881.P16027770372899334795.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078912.P16565108003118510431

`a(n-1)+a(A029578(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A078912.P16565108003118510431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A029578 (n - 1)).toNat

end

end A078912.P16565108003118510431

noncomputable section

/-- A078912: a(1)=a(2)=1, a(n)=a(n-1)+a(n-2) if n is odd, a(n)=a(n-1)+a(n/2) if n is even.

Offset 1, canonical program `A078912.P16565108003118510431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A078912 (n : ℕ) : ℤ :=
  (A078912.P16565108003118510431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A078912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078978.P13672447014390308062

`dr(or(28, val(A003485(n), 2)))`
-/

namespace A078978.P13672447014390308062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lor 28 (SequenceMachineLib.valuation (A003485 n).toNat 2) : ℤ)

end

end A078978.P13672447014390308062

noncomputable section

/-- A078978: Sequence is S(oo), where S(1)={1,2,3,4}, S(n+1)=S(n)S'(n) and S'(n) is obtained from S(n) by changing its last term using the cyclic permutation 1->2->3->4->1.

Offset 1, canonical program `A078978.P13672447014390308062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078978 (n : ℕ) : ℤ :=
  (A078978.P13672447014390308062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078979.P9508410524524561952

`A078711(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078979.P9508410524524561952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078711 (n + 1) - 1

end

end A078979.P9508410524524561952

noncomputable section

/-- A078979: a(n) = A078711(n) - 1.

Offset 1, canonical program `A078979.P9508410524524561952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078979 (n : ℕ) : ℤ :=
  A078979.P9508410524524561952.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079248.P15294235973507137332

`∑{d}[n+1, A001318(#)]`
-/

namespace A079248.P15294235973507137332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001318 d

end

end A079248.P15294235973507137332

noncomputable section

/-- A079248: Sum of q in all pairs (p,q), 0 <= p < q, p+q divides n.

Offset 1, canonical program `A079248.P15294235973507137332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079248 (n : ℕ) : ℤ :=
  A079248.P15294235973507137332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079255.P4224529867862457493

`A026363(2*n+1)`
-/

namespace A079255.P4224529867862457493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (2 * n + 1)

end

end A079255.P4224529867862457493

noncomputable section

/-- A079255: a(n) is taken to be the smallest positive integer greater than a(n-1) such that the condition "n is in the sequence if and only if a(n) is odd and a(n+1) is even" can be satisfied.

Offset 1, canonical program `A079255.P4224529867862457493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079255 (n : ℕ) : ℤ :=
  A079255.P4224529867862457493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079260.P17131602053945993916

`C(A005078(n+1), n+1)`
-/

namespace A079260.P17131602053945993916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005078 (n + 1)).toNat (n + 1)

end

end A079260.P17131602053945993916

noncomputable section

/-- A079260: Characteristic function of primes of form 4n+1 (1 if n is prime of form 4n+1, 0 otherwise).

Offset 1, canonical program `A079260.P17131602053945993916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079260 (n : ℕ) : ℤ :=
  (A079260.P17131602053945993916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079282.P9213534698011007782

`(n-1)*2^n+A000045(n+3)`
-/

namespace A079282.P9213534698011007782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 ^ n : ℤ) + A000045 (n + 3)

end

end A079282.P9213534698011007782

noncomputable section

/-- A079282: Diagonal sums of triangle A055249.

Offset 0, canonical program `A079282.P9213534698011007782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A079282 (n : ℕ) : ℤ :=
  A079282.P9213534698011007782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A079282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079284.P3745513152013179624

`A000045(n)+2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A079284.P3745513152013179624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 n + 2 * a (n - 2)

end

end A079284.P3745513152013179624

noncomputable section

/-- A079284: Diagonal sums of triangle A008949.

Offset 0, canonical program `A079284.P3745513152013179624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A079284 (n : ℕ) : ℤ :=
  A079284.P3745513152013179624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A079284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079285.P1716111026875183716

`Δ[A000045(n)]+2*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A079285.P1716111026875183716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 2)

end

end A079285.P1716111026875183716

noncomputable section

/-- A079285: First differences of A079284.

Offset 0, canonical program `A079285.P1716111026875183716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A079285 (n : ℕ) : ℤ :=
  A079285.P1716111026875183716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A079285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079289.P14852316507333528184

`A000045(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A079289.P14852316507333528184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000045 (n - 1) + 2 * a (n - 2)

end

end A079289.P14852316507333528184

noncomputable section

/-- A079289: For even n, a(n) = a(n-2) + a(n-1) + 2^(n/2-2), n>2. For odd n, a(n) = a(n-2) + a(n-1).

Offset 0, canonical program `A079289.P14852316507333528184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A079289 (n : ℕ) : ℤ :=
  A079289.P14852316507333528184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A079289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079309.P2928815747845907027

`A066796(n+1)/2`
-/

namespace A079309.P2928815747845907027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066796 (n + 1) : ℚ) / 2

end

end A079309.P2928815747845907027

noncomputable section

/-- A079309: a(n) = C(1,1) + C(3,2) + C(5,3) + ... + C(2*n-1,n).

Offset 1, canonical program `A079309.P2928815747845907027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066796, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079309.P2928815747845907027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066796, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079316.P891099002037030476

`A079314(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A079316.P891099002037030476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A079314 n + a (n - 2)

end

end A079316.P891099002037030476

noncomputable section

/-- A079316: Number of first-quadrant cells (including the two boundaries) that are ON at stage n of the cellular automaton described in A079317.

Offset 0, canonical program `A079316.P891099002037030476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. -/
def A079316 (n : ℕ) : ℤ :=
  A079316.P891099002037030476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. -/
def A079316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079395.P17956439094879696764

`A000040(n+1)^11`
-/

namespace A079395.P17956439094879696764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 11

end

end A079395.P17956439094879696764

noncomputable section

/-- A079395: a(n) = prime(n)^11.

Offset 1, canonical program `A079395.P17956439094879696764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079395 (n : ℕ) : ℤ :=
  A079395.P17956439094879696764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079416.P13839535260029094473

`round(A000040(n+1)/(n+1))`
-/

namespace A079416.P13839535260029094473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A079416.P13839535260029094473

noncomputable section

/-- A079416: a(n) = round(prime(n)/n).

Offset 1, canonical program `A079416.P13839535260029094473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079416 (n : ℕ) : ℤ :=
  A079416.P13839535260029094473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079528.P452950104392790503

`A033880(n+1)+A028391(n)`
-/

namespace A079528.P452950104392790503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A028391 n

end

end A079528.P452950104392790503

noncomputable section

/-- A079528: a(n) = sigma(n) - ceiling(n + sqrt n).

Offset 1, canonical program `A079528.P452950104392790503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079528 (n : ℕ) : ℤ :=
  A079528.P452950104392790503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079536.P18436205178809017812

`A079535(n+1)-A001065(n+1)`
-/

namespace A079536.P18436205178809017812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - A001065 (n + 1)

end

end A079536.P18436205178809017812

noncomputable section

/-- A079536: a(n) = phi(n)*d(n) - sigma(n).

Offset 1, canonical program `A079536.P18436205178809017812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079536 (n : ℕ) : ℤ :=
  A079536.P18436205178809017812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079592.P15799637742897185009

`p?[A062408(n)]`
-/

namespace A079592.P15799637742897185009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079592.P15799637742897185009

noncomputable section

/-- A079592: Primes p such that floor(Pi*p) is prime.

Offset 1, canonical program `A079592.P15799637742897185009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079592 (n : ℕ) : ℤ :=
  A079592.P15799637742897185009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079593.P22308540367719002

`floor(π*p?[A062408(n)])`
-/

namespace A079593.P22308540367719002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌋

end

end A079593.P22308540367719002

noncomputable section

/-- A079593: Primes equal to floor(Pi*x) where x is prime.

Offset 1, canonical program `A079593.P22308540367719002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079593 (n : ℕ) : ℤ :=
  A079593.P22308540367719002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079675.P18407692208722494872

`A369837(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A079675.P18407692208722494872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A369837 n + a (n - 1)

end

end A079675.P18407692208722494872

noncomputable section

/-- A079675: a(1)=1; a(n)=sum(u=1,n-1,sum(v=1,u,sum(w=1,v,sum(x=1, w,sum(y=1,x,a(y)))))).

Offset 1, canonical program `A079675.P18407692208722494872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A079675 (n : ℕ) : ℤ :=
  A079675.P18407692208722494872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A079675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079821.P8748528471149396368

`ceil(10^n/A000040(n+1))*A000040(n+1)`
-/

namespace A079821.P8748528471149396368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / (A000040 (n + 1) : ℚ)⌉ * A000040 (n + 1)

end

end A079821.P8748528471149396368

noncomputable section

/-- A079821: Smallest n-digit multiple of the n-th prime.

Offset 1, canonical program `A079821.P8748528471149396368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A079821 (n : ℕ) : ℤ :=
  A079821.P8748528471149396368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A079821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079867.P4677279557966897648

`A079866(n+1)^∑{e}[n+1, #]`
-/

namespace A079867.P4677279557966897648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A079867.P4677279557966897648

noncomputable section

/-- A079867: a(1)=1 and for n>1: floor(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

Offset 1, canonical program `A079867.P4677279557966897648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079867 (n : ℕ) : ℤ :=
  A079867.P4677279557966897648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079869.P14772782790936458776

`A079868(n+1)^∑{e}[n+1, #]`
-/

namespace A079869.P14772782790936458776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079868 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A079869.P14772782790936458776

noncomputable section

/-- A079869: a(1)=1 and for n>1: round(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

Offset 1, canonical program `A079869.P14772782790936458776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079869 (n : ℕ) : ℤ :=
  A079869.P14772782790936458776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079878.P8509875506932410645

`A064434(n+1)+1`
-/

namespace A079878.P8509875506932410645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064434 (n + 1) + 1

end

end A079878.P8509875506932410645

noncomputable section

/-- A079878: a(1)=1, then a(n)=2*a(n-1) if 2*a(n-1)<=n, a(n)=2*a(n-1)-n otherwise.

Offset 1, canonical program `A079878.P8509875506932410645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079878 (n : ℕ) : ℤ :=
  A079878.P8509875506932410645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079951.P6304360274573669311

`∑{e}[∏{p}[floor(A000040(n+1)/2), #], #]`
-/

namespace A079951.P6304360274573669311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A079951.P6304360274573669311

noncomputable section

/-- A079951: Number of primes p with prime(n) == 1 (modulo 2*p).

Offset 1, canonical program `A079951.P6304360274573669311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079951 (n : ℕ) : ℤ :=
  (A079951.P6304360274573669311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079980.P7549614995282751113

`A000930(n)*A182097(n)`
-/

namespace A079980.P7549614995282751113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A182097 n

end

end A079980.P7549614995282751113

noncomputable section

/-- A079980: Number of permutations of length 2n satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..2n, with k=3, r=3, I={-2,0,1,2}. There is no one such permutation of length 2n+1.

Offset 0, canonical program `A079980.P7549614995282751113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A079980 (n : ℕ) : ℤ :=
  A079980.P7549614995282751113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A079980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079986.P17315729591086980002

`Δ[A008937(ceil(n/2))]²`
-/

namespace A079986.P17315729591086980002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A079986.P17315729591086980002

noncomputable section

/-- A079986: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-2,0,2}.

Offset 0, canonical program `A079986.P17315729591086980002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A079986 (n : ℕ) : ℤ :=
  A079986.P17315729591086980002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A079986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080066.P16360937105414831017

`A000966(n+2)-A000966(n+1)`
-/

namespace A080066.P16360937105414831017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 2) - A000966 (n + 1)

end

end A080066.P16360937105414831017

noncomputable section

/-- A080066: First differences of A000966 (number of zeros that n! will never end in).

Offset 1, canonical program `A080066.P16360937105414831017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080066 (n : ℕ) : ℤ :=
  A080066.P16360937105414831017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080081.P1633063888297492241

`A080600(n+1)-1`
-/

namespace A080081.P1633063888297492241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (n + 1) - 1

end

end A080081.P1633063888297492241

noncomputable section

/-- A080081: Beatty sequence for (3+sqrt(13))/2.

Offset 1, canonical program `A080081.P1633063888297492241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080081 (n : ℕ) : ℤ :=
  A080081.P1633063888297492241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080087.P17461455938318532576

`A027868(p?[xor(1, n)])`
-/

namespace A080087.P17461455938318532576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080087.P17461455938318532576

noncomputable section

/-- A080087: Number of factors of 5 in the factorial of the n-th prime, counted with multiplicity.

Offset 1, canonical program `A080087.P17461455938318532576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A080087 (n : ℕ) : ℤ :=
  A080087.P17461455938318532576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A080087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080165.P3889641676695789135

`p?[4*n+2-A006257(n)]`
-/

namespace A080165.P3889641676695789135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080165.P3889641676695789135

noncomputable section

/-- A080165: Primes having initial digits "10" in binary representation.

Offset 1, canonical program `A080165.P3889641676695789135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080165 (n : ℕ) : ℤ :=
  A080165.P3889641676695789135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080168.P14088762678047885577

`∩[A002145(n+1), A080166(n+1)]`
-/

namespace A080168.P14088762678047885577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P14088762678047885577

noncomputable section

/-- A080168: Primes beginning and ending with '11' in binary representation.

Offset 1, canonical program `A080168.P14088762678047885577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A080168 (n : ℕ) : ℤ :=
  (A080168.P14088762678047885577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A080168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080225.P3972253355863549371

`∑{d}[n+1, val(A000203(#), 2*#)]`
-/

namespace A080225.P3972253355863549371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A000203 d).toNat (2 * d)

end

end A080225.P3972253355863549371

noncomputable section

/-- A080225: Number of perfect divisors of n.

Offset 1, canonical program `A080225.P3972253355863549371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080225 (n : ℕ) : ℤ :=
  (A080225.P3972253355863549371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080261.P12885710306341528978

`xor(n, A003817(A000196(A004526(n))))`
-/

namespace A080261.P12885710306341528978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003817 (A000196 (A004526 n).toNat).toNat)

end

end A080261.P12885710306341528978

noncomputable section

/-- A080261: Simple involution of natural numbers: complement [binary_width(n)/2] least significant bits in the binary expansion of n.

Offset 0, canonical program `A080261.P12885710306341528978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080261 (n : ℕ) : ℤ :=
  A080261.P12885710306341528978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080267.P13654059577511968325

`∑{d}[n+1, A001787(n+1)/A001787(#)]`
-/

namespace A080267.P13654059577511968325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001787 (n + 1) : ℚ) / (A001787 d : ℚ)

end

end A080267.P13654059577511968325

noncomputable section

/-- A080267: a(n) = Sum_{d divides n} d*2^(n-n/d).

Offset 1, canonical program `A080267.P13654059577511968325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A080267 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080267.P13654059577511968325.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A080267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080304.P9910366703239988167

`n%(A055615(n+1)+1)+1`
-/

namespace A080304.P9910366703239988167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A055615 (n + 1) + 1) + 1

end

end A080304.P9910366703239988167

noncomputable section

/-- A080304: Numerator of n^mu(n), where mu is the Moebius function (A008683).

Offset 1, canonical program `A080304.P9910366703239988167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080304 (n : ℕ) : ℤ :=
  A080304.P9910366703239988167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080322.P5409884554699055352

`A010892(n+1)-(n+2)²*A010892(n)`
-/

namespace A080322.P5409884554699055352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) - ((n + 2) ^ 2 : ℤ) * A010892 n

end

end A080322.P5409884554699055352

noncomputable section

/-- A080322: Determinant of the n X n tridiagonal matrix M with the elements on the diagonals equal to 1, except M(n,n-1)=M(n-1,n)=n.

Offset 2, canonical program `A080322.P5409884554699055352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080322 (n : ℕ) : ℤ :=
  A080322.P5409884554699055352.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080401.P8518956413726012276

`lt[n², A080399(n+1)]+1`
-/

namespace A080401.P8518956413726012276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080401.P8518956413726012276

noncomputable section

/-- A080401: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is squarefree.

Offset 1, canonical program `A080401.P8518956413726012276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401 (n : ℕ) : ℤ :=
  (A080401.P8518956413726012276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080402.P17243358011621989898

`lt[A080399(n+1), n²]+1`
-/

namespace A080402.P17243358011621989898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080402.P17243358011621989898

noncomputable section

/-- A080402: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is not squarefree.

Offset 1, canonical program `A080402.P17243358011621989898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402 (n : ℕ) : ℤ :=
  (A080402.P17243358011621989898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080542.P9634742044237708567

`A038572(A038572(n+2)+A004526(n+1))`
-/

namespace A080542.P9634742044237708567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038572 (n + 2) + A004526 (n + 1)).toNat

end

end A080542.P9634742044237708567

noncomputable section

/-- A080542: In binary representation: keep the first digit and rotate right the others.

Offset 1, canonical program `A080542.P9634742044237708567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080542 (n : ℕ) : ℤ :=
  A080542.P9634742044237708567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080566.P4000903305215095310

`∑[A079948(n)+a(n-1)]` with `a(0)=1`
-/

namespace A080566.P4000903305215095310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A079948 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P4000903305215095310

noncomputable section

/-- A080566: Partial sums of A079000.

Offset 1, canonical program `A080566.P4000903305215095310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080566 (n : ℕ) : ℤ :=
  A080566.P4000903305215095310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080578.P12934935803733206973

`2*A046699(n+1)%(n+1)+n+1`
-/

namespace A080578.P12934935803733206973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A046699 (n + 1)) (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A080578.P12934935803733206973

noncomputable section

/-- A080578: a(1)=1; for n > 1, a(n) = a(n-1) + 1 if n is already in the sequence, a(n) = a(n-1) + 3 otherwise.

Offset 1, canonical program `A080578.P12934935803733206973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080578 (n : ℕ) : ℤ :=
  A080578.P12934935803733206973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080587.P7143752791802740174

`∑[A079882(floor(n/3))]`
-/

namespace A080587.P7143752791802740174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P7143752791802740174

noncomputable section

/-- A080587: Partial sums of A080586.

Offset 0, canonical program `A080587.P7143752791802740174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080587 (n : ℕ) : ℤ :=
  A080587.P7143752791802740174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080596.P10243355995937490864

`record[A079945(n)%(n²+2)]`
-/

namespace A080596.P10243355995937490864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079945 n) (n ^ 2 + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080596.P10243355995937490864

noncomputable section

/-- A080596: a(1)=1; for n >= 2, a(n) is smallest positive integer which is consistent with sequence being monotonically increasing and satisfying a(a(n)) = 2n+3.

Offset 1, canonical program `A080596.P10243355995937490864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080596 (n : ℕ) : ℤ :=
  A080596.P10243355995937490864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080639.P1103172142795349928

`A079948(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A080639.P1103172142795349928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079948 (n - 1) + a (n - 1)

end

end A080639.P1103172142795349928

noncomputable section

/-- A080639: a(1) = 1; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "for n>1, n is a member of the sequence if and only if a(n) is even".

Offset 1, canonical program `A080639.P1103172142795349928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080639 (n : ℕ) : ℤ :=
  A080639.P1103172142795349928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080647.P388224821477893215

`∑{p}[A080400(n+3), #]`
-/

namespace A080647.P388224821477893215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P388224821477893215

noncomputable section

/-- A080647: Sum of prime factors of phi(n).

Offset 3, canonical program `A080647.P388224821477893215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080647 (n : ℕ) : ℤ :=
  (A080647.P388224821477893215.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080672.P16756542385456588835

`∪[A080671(n+1), A147587(n)]`
-/

namespace A080672.P16756542385456588835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080672.P16756542385456588835

noncomputable section

/-- A080672: Numbers having divisors 2 or 3 or 5 or 7.

Offset 1, canonical program `A080672.P16756542385456588835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080672 (n : ℕ) : ℤ :=
  (A080672.P16756542385456588835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080678.P16778620546240237426

`∪[4*n, A053754(n+1)]-n`
-/

namespace A080678.P16778620546240237426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A080678.P16778620546240237426

noncomputable section

/-- A080678: Rooted at a(0)=0 and a(1)=a(2)=a(3)=1, 4 cases of index mod 4: a(4n)=4*a(n), a(4n+1)= 3*a(n)+a(n+1), a(4n+2) = 2*a(n)+2*a(n+1), and a(4n+3) = a(n)+3*a(n+1).

Offset 0, canonical program `A080678.P16778620546240237426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080678 (n : ℕ) : ℤ :=
  A080678.P16778620546240237426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080746.P1652591669284040234

`a(n-1)+A059426(n)` with `a(0)=1, a(1)=4`
-/

namespace A080746.P1652591669284040234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + A059426 n

end

end A080746.P1652591669284040234

noncomputable section

/-- A080746: Inverse Aronson transform of lower Wythoff sequence A000201.

Offset 1, canonical program `A080746.P1652591669284040234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080746 (n : ℕ) : ℤ :=
  A080746.P1652591669284040234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080763.P7533574351288554750

`abs(2-A159684(n))`
-/

namespace A080763.P7533574351288554750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A159684 n|

end

end A080763.P7533574351288554750

noncomputable section

/-- A080763: Exchange 1's and 2's in the eta-sequence A006337.

Offset 1, canonical program `A080763.P7533574351288554750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080763 (n : ℕ) : ℤ :=
  A080763.P7533574351288554750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080765.P11390877915773879858

`lt[0, A074591(n+1)]`
-/

namespace A080765.P11390877915773879858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080765.P11390877915773879858

noncomputable section

/-- A080765: Integers m such that m+1 divides lcm(1 through m).

Offset 1, canonical program `A080765.P11390877915773879858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080765 (n : ℕ) : ℤ :=
  (A080765.P11390877915773879858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080770.P12478988291535600979

`(A053698(n+3)+1)%A007531(2*(n+2))`
-/

namespace A080770.P12478988291535600979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053698 (n + 3) + 1) (A007531 (2 * (n + 2)))

end

end A080770.P12478988291535600979

noncomputable section

/-- A080770: a(n) = floor(e*(n+3)!) - (n+3)*(n+2)*(n+1)*n*floor(e*(n-1)!).

Offset 1, canonical program `A080770.P12478988291535600979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2750 terms. -/
def A080770 (n : ℕ) : ℤ :=
  A080770.P12478988291535600979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2750 terms. -/
def A080770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080817.P763396068734847068

`∑[Δ[A175032(n)]+1]`
-/

namespace A080817.P763396068734847068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080817.P763396068734847068

noncomputable section

/-- A080817: Leading diagonal of triangle in A080818.

Offset 1, canonical program `A080817.P763396068734847068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080817 (n : ℕ) : ℤ :=
  A080817.P763396068734847068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080848.P739722207543014438

`A061669(n+1)+1+n`
-/

namespace A080848.P739722207543014438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1) + 1 + (n : ℤ)

end

end A080848.P739722207543014438

noncomputable section

/-- A080848: a(n) = n*(mu(n)+2), where mu is the Moebius function (A008683).

Offset 1, canonical program `A080848.P739722207543014438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080848 (n : ℕ) : ℤ :=
  A080848.P739722207543014438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080883.P9881556766966149884

`abs(A048761(n+1)-n)`
-/

namespace A080883.P9881556766966149884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048761 (n + 1) - (n : ℤ)|

end

end A080883.P9881556766966149884

noncomputable section

/-- A080883: Distance of n to next square.

Offset 0, canonical program `A080883.P9881556766966149884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080883 (n : ℕ) : ℤ :=
  A080883.P9881556766966149884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081037.P705399685085553460

`(-1)^n*A045891(n)`
-/

namespace A081037.P705399685085553460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A045891 n

end

end A081037.P705399685085553460

noncomputable section

/-- A081037: Inverse binary transform of A027656.

Offset 0, canonical program `A081037.P705399685085553460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A081037 (n : ℕ) : ℤ :=
  A081037.P705399685085553460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A081037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081083.P9286022400125285609

`record[(n+1)/(A007947(n+2)-A007947(n+1))]`
-/

namespace A081083.P9286022400125285609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 2) - A007947 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081083.P9286022400125285609

noncomputable section

/-- A081083: Numbers n such that rad(n+1)=rad(n)+1, where rad(m)=A007947(m) is the squarefree kernel of m.

Offset 1, canonical program `A081083.P9286022400125285609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081083.P9286022400125285609.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081223.P12973320959175258762

`A059556(n+1)-n`
-/

namespace A081223.P12973320959175258762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059556 (n + 1) - (n : ℤ)

end

end A081223.P12973320959175258762

noncomputable section

/-- A081223: Smallest k such that floor(k*gamma) begins with n (gamma=0.5772156649...).

Offset 1, canonical program `A081223.P12973320959175258762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081223 (n : ℕ) : ℤ :=
  A081223.P12973320959175258762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081249.P17615615709827917834

`∑[A081134(n+1)]`
-/

namespace A081249.P17615615709827917834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P17615615709827917834

noncomputable section

/-- A081249: Partial sums of A081134.

Offset 1, canonical program `A081249.P17615615709827917834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081249 (n : ℕ) : ℤ :=
  A081249.P17615615709827917834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081252.P15153065248392608660

`∑[A053646(n+1)]`
-/

namespace A081252.P15153065248392608660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P15153065248392608660

noncomputable section

/-- A081252: Partial sums of A053646.

Offset 1, canonical program `A081252.P15153065248392608660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081252 (n : ℕ) : ℤ :=
  A081252.P15153065248392608660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081290.P17861651078763600075

`comp[A000108(comp[A000108(n)+n]-n)+n]-n`
-/

namespace A081290.P17861651078763600075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n - n) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A081290.P17861651078763600075

noncomputable section

/-- A081290: a(0) = 0, and for n >=1, a(n) = the largest Catalan number <= n.

Offset 0, canonical program `A081290.P17861651078763600075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081290 (n : ℕ) : ℤ :=
  A081290.P17861651078763600075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081396.P13817523370809477890

`∑{p}[A009223(n+1), A009223(A009223(#))]`
-/

namespace A081396.P13817523370809477890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A009223 (A009223 p).toNat

end

end A081396.P13817523370809477890

noncomputable section

/-- A081396: Number of common prime factors (ignoring multiplicity) of sigma(n) = A000203(n) and phi(n) = A000010(n).

Offset 1, canonical program `A081396.P13817523370809477890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081396 (n : ℕ) : ℤ :=
  A081396.P13817523370809477890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081477.P392372473796327645

`∑[A104521(n)+1]`
-/

namespace A081477.P392372473796327645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081477.P392372473796327645

noncomputable section

/-- A081477: Complement of A086377.

Offset 1, canonical program `A081477.P392372473796327645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081477 (n : ℕ) : ℤ :=
  A081477.P392372473796327645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081534.P18284178302565562629

`eq[A036987(n), A069513(n+1)]`
-/

namespace A081534.P18284178302565562629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P18284178302565562629

noncomputable section

/-- A081534: Numbers k such that 1 + 2 ... + k divides lcm(1,2,...,k), or, in other words, lcm(1,2,...,k) is a multiple of the k-th triangular number.

Offset 1, canonical program `A081534.P18284178302565562629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081534 (n : ℕ) : ℤ :=
  (A081534.P18284178302565562629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081605.P3535045395729995710

`comp[A032924(n+1)]`
-/

namespace A081605.P3535045395729995710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081605.P3535045395729995710

noncomputable section

/-- A081605: Numbers having at least one 0 in their ternary representation.

Offset 1, canonical program `A081605.P3535045395729995710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081605 (n : ℕ) : ℤ :=
  (A081605.P3535045395729995710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081610.P55257795083380857

`∑[1-A039966(n)]`
-/

namespace A081610.P55257795083380857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P55257795083380857

noncomputable section

/-- A081610: Number of numbers <= n having at least one 2 in their ternary representation.

Offset 0, canonical program `A081610.P55257795083380857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081610 (n : ℕ) : ℤ :=
  A081610.P55257795083380857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081611.P15437231046551581943

`a(n-1)+A039966(n)` with `a(0)=1`
-/

namespace A081611.P15437231046551581943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A039966 n

end

end A081611.P15437231046551581943

noncomputable section

/-- A081611: Number of numbers <= n having no 2 in their ternary representation.

Offset 0, canonical program `A081611.P15437231046551581943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081611 (n : ℕ) : ℤ :=
  A081611.P15437231046551581943.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081611.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081642.P13471767013185929231

`filter[A028837(n+1), A049240(#)]`
-/

namespace A081642.P13471767013185929231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A081642.P13471767013185929231

noncomputable section

/-- A081642: Integers congruent to 0, 1 or 4 (mod 9) which are not squares.

Offset 1, canonical program `A081642.P13471767013185929231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9865 terms. -/
def A081642 (n : ℕ) : ℤ :=
  A081642.P13471767013185929231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9865 terms. -/
def A081642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081643.P14889491825710240957

`eq[and(10, A323724(n)), A000122(n)]`
-/

namespace A081643.P14889491825710240957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 (A323724 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081643.P14889491825710240957

noncomputable section

/-- A081643: Integers congruent to 0, 1, 4 or 9 (mod 16) which are not squares.

Offset 1, canonical program `A081643.P14889491825710240957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A081643 (n : ℕ) : ℤ :=
  (A081643.P14889491825710240957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A081643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081669.P7664105217993223069

`A002426(n)+and(-2, 2^n)`
-/

namespace A081669.P7664105217993223069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + Int.land (-2) (2 ^ n : ℤ)

end

end A081669.P7664105217993223069

noncomputable section

/-- A081669: Expansion of exp(2x)+exp(x)BesselI_0(2x).

Offset 0, canonical program `A081669.P7664105217993223069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A081669 (n : ℕ) : ℤ :=
  A081669.P7664105217993223069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A081669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081758.P13222533557675849893

`A001414(A001414(n+2))`
-/

namespace A081758.P13222533557675849893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001414 (n + 2)).toNat

end

end A081758.P13222533557675849893

noncomputable section

/-- A081758: Sum of prime factors (with repetition) of sum of prime factors (with repetition) of n.

Offset 2, canonical program `A081758.P13222533557675849893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081758 (n : ℕ) : ℤ :=
  A081758.P13222533557675849893.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081841.P2164666565118837986

`comp[A001954(n)+2]+n`
-/

namespace A081841.P2164666565118837986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A081841.P2164666565118837986

noncomputable section

/-- A081841: a(1)=0, a(n)=a(n-1)+3 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

Offset 1, canonical program `A081841.P2164666565118837986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081841 (n : ℕ) : ℤ :=
  (A081841.P2164666565118837986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081861.P15139232812757351489

`∑{d}[2*n+1, A000330(n%#)]`
-/

namespace A081861.P15139232812757351489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000330 (n % d)

end

end A081861.P15139232812757351489

noncomputable section

/-- A081861: a(n) = (1/24)*(sigma_3(2*n-1) - sigma_1(2*n-1)).

Offset 1, canonical program `A081861.P15139232812757351489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081861 (n : ℕ) : ℤ :=
  A081861.P15139232812757351489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081909.P10929517941132100434

`A027471(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A081909.P10929517941132100434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027471 n + 3 * a (n - 1)

end

end A081909.P10929517941132100434

noncomputable section

/-- A081909: a(n) = 3^n(n^2 - n + 18)/18.

Offset 0, canonical program `A081909.P10929517941132100434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A081909 (n : ℕ) : ℤ :=
  A081909.P10929517941132100434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A081909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082023.P820682903743471019

`ceil(A016035(abs(1-n)+1)/2)`
-/

namespace A082023.P820682903743471019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016035 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌉

end

end A082023.P820682903743471019

noncomputable section

/-- A082023: Number of partitions of n into 2 parts which are not relatively prime.

Offset 0, canonical program `A082023.P820682903743471019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082023 (n : ℕ) : ℤ :=
  A082023.P820682903743471019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082050.P7404403862460474574

`∑{d}[n+1, #*A011655(#-1)]`
-/

namespace A082050.P7404403862460474574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011655 (d - 1)

end

end A082050.P7404403862460474574

noncomputable section

/-- A082050: Sum of divisors of n that are not of the form 3k+1.

Offset 1, canonical program `A082050.P7404403862460474574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082050 (n : ℕ) : ℤ :=
  A082050.P7404403862460474574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082051.P2858432596118488346

`∑{d}[n+1, #*A017450(#)%3]`
-/

namespace A082051.P2858432596118488346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A017450 d) 3

end

end A082051.P2858432596118488346

noncomputable section

/-- A082051: Sum of divisors of n that are not of the form 3k+2.

Offset 1, canonical program `A082051.P2858432596118488346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082051 (n : ℕ) : ℤ :=
  A082051.P2858432596118488346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082052.P17956952017327585217

`∑{d}[n+1, #*A166486(#-1)]`
-/

namespace A082052.P17956952017327585217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A166486 (d - 1)

end

end A082052.P17956952017327585217

noncomputable section

/-- A082052: Sum of divisors of n that are not of the form 4k+1.

Offset 1, canonical program `A082052.P17956952017327585217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082052 (n : ℕ) : ℤ :=
  A082052.P17956952017327585217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082054.P6093246751857331740

`∑{p}[A009223(n+1), #]`
-/

namespace A082054.P6093246751857331740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A082054.P6093246751857331740

noncomputable section

/-- A082054: Sum of common prime divisors (without multiplicity) of sigma(n) and phi(n).

Offset 1, canonical program `A082054.P6093246751857331740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082054 (n : ℕ) : ℤ :=
  (A082054.P6093246751857331740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082055.P4790882321797565828

`∏{p}[A009223(n+1), #]`
-/

namespace A082055.P4790882321797565828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A082055.P4790882321797565828

noncomputable section

/-- A082055: Product of common prime-divisors (without multiplicity) of sigma(n) and phi(n).

Offset 1, canonical program `A082055.P4790882321797565828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082055 (n : ℕ) : ℤ :=
  (A082055.P4790882321797565828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082075.P3357822425675514285

`A002145(n+2)-A002145(n+1)`
-/

namespace A082075.P3357822425675514285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2) - A002145 (n + 1)

end

end A082075.P3357822425675514285

noncomputable section

/-- A082075: First differences of primes of the form 4*k+3 (A002145).

Offset 1, canonical program `A082075.P3357822425675514285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082075 (n : ℕ) : ℤ :=
  A082075.P3357822425675514285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082076.P46094791616447460

`(A002145(n+2)-A002145(n+1))/4`
-/

namespace A082076.P46094791616447460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 2) - A002145 (n + 1) : ℚ) / 4

end

end A082076.P46094791616447460

noncomputable section

/-- A082076: First differences of primes of the form 4*k+3 (A002145), divided by 4.

Offset 1, canonical program `A082076.P46094791616447460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082076.P46094791616447460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082096.P9035175122493942486

`A000040(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082096.P9035175122493942486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 2) + a (n - 1)).toNat

end

end A082096.P9035175122493942486

noncomputable section

/-- A082096: A 2nd order recursion: a(1)=a(2)=1; a(n) = prime(a(n-2)+a(n-1)) = A000040(a(n-2)+a(n-1)).

Offset 1, canonical program `A082096.P9035175122493942486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082096 (n : ℕ) : ℤ :=
  A082096.P9035175122493942486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082139.P14105566406766235082

`C(n+5, 5)*A011782(n)`
-/

namespace A082139.P14105566406766235082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A011782 n

end

end A082139.P14105566406766235082

noncomputable section

/-- A082139: A transform of binomial(n,5).

Offset 0, canonical program `A082139.P14105566406766235082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A082139 (n : ℕ) : ℤ :=
  A082139.P14105566406766235082.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A082139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082145.P2096171870735177110

`C(2*n+3, n)*A011782(n)`
-/

namespace A082145.P2096171870735177110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) n : ℤ) * A011782 n

end

end A082145.P2096171870735177110

noncomputable section

/-- A082145: A subdiagonal of number array A082137.

Offset 0, canonical program `A082145.P2096171870735177110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A082145 (n : ℕ) : ℤ :=
  A082145.P2096171870735177110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A082145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082287.P8276136193256728625

`∑[char[A082186(n+1)]]+1`
-/

namespace A082287.P8276136193256728625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082287.P8276136193256728625

noncomputable section

/-- A082287: a(1) = 1; for n > 1, n appears omega(n) times, where omega(n)=A001221(n) is the number of distinct prime factors of n, a(1)=1.

Offset 1, canonical program `A082287.P8276136193256728625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082287 (n : ℕ) : ℤ :=
  (A082287.P8276136193256728625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082290.P3886473488227927312

`∑[A008804(n)/A000034(n)]`
-/

namespace A082290.P3886473488227927312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008804 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082290.P3886473488227927312

noncomputable section

/-- A082290: Expansion of (1+x+x^2)/((1+x^2)*(1+x)^4*(1-x)^5).

Offset 0, canonical program `A082290.P3886473488227927312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082290.P3886473488227927312.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082300.P16424528380583114676

`eq[1, A082299(n+1)]+1`
-/

namespace A082300.P16424528380583114676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082300.P16424528380583114676

noncomputable section

/-- A082300: Numbers relatively prime to the sum of their prime factors (with repetition).

Offset 1, canonical program `A082300.P16424528380583114676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082300 (n : ℕ) : ℤ :=
  (A082300.P16424528380583114676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082343.P11638302062825757021

`A001414(n+1)/A082299(n+1)`
-/

namespace A082343.P11638302062825757021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) : ℚ) / (A082299 (n + 1) : ℚ)

end

end A082343.P11638302062825757021

noncomputable section

/-- A082343: Numerator of sopfr(n)/n, where sopfr=A001414 is the sum of prime factors (with repetition).

Offset 1, canonical program `A082343.P11638302062825757021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A082299, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082343.P11638302062825757021.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A082299, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082344.P3644648653846769299

`(n+1)/A082299(n+1)`
-/

namespace A082344.P3644648653846769299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082299 (n + 1) : ℚ)

end

end A082344.P3644648653846769299

noncomputable section

/-- A082344: Denominator of sopfr(n)/n, where sopfr=A001414 is the sum of prime factors (with repetition).

Offset 1, canonical program `A082344.P3644648653846769299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082344.P3644648653846769299.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082375.P10619414030953908215

`A055086(n)-2*A055087(n)`
-/

namespace A082375.P10619414030953908215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n - 2 * A055087 n

end

end A082375.P10619414030953908215

noncomputable section

/-- A082375: Irregular triangle read by rows: row n begins with n and decreases by 2 until 0 or 1 is reached, for n >= 0.

Offset 0, canonical program `A082375.P10619414030953908215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082375 (n : ℕ) : ℤ :=
  A082375.P10619414030953908215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082388.P15289165366183734569

`A006012(val(n+1, 2))`
-/

namespace A082388.P15289165366183734569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (SequenceMachineLib.valuation (n + 1) 2)

end

end A082388.P15289165366183734569

noncomputable section

/-- A082388: a(1) = 1, a(2) = 2; further terms are defined by rules that for k >= 2, a(2^k-i) = a(2^k+i) for 1 <= i <= 2^k-1 and a(2^k) = a(2^(k-1)) + Sum_{i < 2^k} a(i).

Offset 1, canonical program `A082388.P15289165366183734569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082388 (n : ℕ) : ℤ :=
  A082388.P15289165366183734569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082397.P14776032934976419240

`∑[A342912(n)]`
-/

namespace A082397.P14776032934976419240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P14776032934976419240

noncomputable section

/-- A082397: Number of directed aggregates of height <= 2 with n cells.

Offset 1, canonical program `A082397.P14776032934976419240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A082397 (n : ℕ) : ℤ :=
  A082397.P14776032934976419240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A082397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082398.P13732524671903596160

`1-char[1]-n*A152163(2*n)`
-/

namespace A082398.P13732524671903596160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ) * A152163 (2 * n)

end

end A082398.P13732524671903596160

noncomputable section

/-- A082398: Number of directed, diagonally convex polyominoes with n cells.

Offset 1, canonical program `A082398.P13732524671903596160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A082398 (n : ℕ) : ℤ :=
  A082398.P13732524671903596160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A082398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082458.P9280145308101820266

`lcm(ceil(n/2), A007526(floor(n/2)))`
-/

namespace A082458.P9280145308101820266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℚ) / 2⌉ (A007526 ⌊(n : ℚ) / 2⌋.toNat)

end

end A082458.P9280145308101820266

noncomputable section

/-- A082458: Multiply by 1, add 1, multiply by 2, add 2, etc., starting with 0.

Offset 0, canonical program `A082458.P9280145308101820266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A082458 (n : ℕ) : ℤ :=
  (A082458.P9280145308101820266.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A082458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082530.P17575170684115903491

`A004151(5*a(n-1))+1` with `a(0)=1`
-/

namespace A082530.P17575170684115903491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004151 (5 * a (n - 1)).toNat + 1

end

end A082530.P17575170684115903491

noncomputable section

/-- A082530: a(1)=1, a(n)=5*a(n-1)+1 if a(n-1) is odd, a(n)=a(n-1)/2+1 otherwise.

Offset 1, canonical program `A082530.P17575170684115903491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082530 (n : ℕ) : ℤ :=
  A082530.P17575170684115903491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082532.P2197777854874376093

`(n+1)²-2*A049472(n+1)²`
-/

namespace A082532.P2197777854874376093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 2 * A049472 (n + 1) ^ 2

end

end A082532.P2197777854874376093

noncomputable section

/-- A082532: a(n) = n^2 - 2*floor(n/sqrt(2))^2.

Offset 1, canonical program `A082532.P2197777854874376093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082532 (n : ℕ) : ℤ :=
  A082532.P2197777854874376093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082560.P3511378537859311582

`A059841(n)+gcd(2, n)*a(floor((n+1)/2)-1)+1` with `a(0)=1`
-/

namespace A082560.P3511378537859311582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059841 n + ((Nat.gcd 2 n : ℤ) * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1)

end

end A082560.P3511378537859311582

noncomputable section

/-- A082560: a(1)=1, a(n)=2*a(n-1) if n is odd, or a(n)=a(n/2)+1 if n is even.

Offset 1, canonical program `A082560.P3511378537859311582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082560 (n : ℕ) : ℤ :=
  A082560.P3511378537859311582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082662.P8548728967217920194

`∑[a(n-1)*A000045(floor((n+1)/a(n-1)))]` with `a(0)=1`
-/

namespace A082662.P8548728967217920194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A000045 ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P8548728967217920194

noncomputable section

/-- A082662: Numbers k such that the odd part of k is less than sqrt(2k).

Offset 1, canonical program `A082662.P8548728967217920194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082662 (n : ℕ) : ℤ :=
  A082662.P8548728967217920194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082693.P2141410081354610043

`A000079(A053615(n))`
-/

namespace A082693.P2141410081354610043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053615 n).toNat

end

end A082693.P2141410081354610043

noncomputable section

/-- A082693: Pyramidal sequence built with powers of 2.

Offset 0, canonical program `A082693.P2141410081354610043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082693 (n : ℕ) : ℤ :=
  A082693.P2141410081354610043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082844.P7916212969445809144

`A159684(n+1)+2`
-/

namespace A082844.P7916212969445809144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (n + 1) + 2

end

end A082844.P7916212969445809144

noncomputable section

/-- A082844: Start with 3,2 and apply the rule a(a(1)+a(2)+...+a(n)) = a(n), fill in any undefined terms with a(t) = 2 if a(t-1) = 3 and a(t) = 3 if a(t-1) = 2.

Offset 1, canonical program `A082844.P7916212969445809144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082844 (n : ℕ) : ℤ :=
  A082844.P7916212969445809144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082845.P7483676990711501125

`∑[A159684(n)+2]`
-/

namespace A082845.P7483676990711501125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082845.P7483676990711501125

noncomputable section

/-- A082845: Partial sums of A082844.

Offset 1, canonical program `A082845.P7483676990711501125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082845 (n : ℕ) : ℤ :=
  A082845.P7483676990711501125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082901.P13729791713076633821

`A082895(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082901.P13729791713076633821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - A000203 (n + 1)

end

end A082901.P13729791713076633821

noncomputable section

/-- A082901: a(n) = A082895(n)-A000203(n); the distance from sigma(n) to that multiple of n which is closest to sigma(n), positive terms for cases where the closest multiple is after sigma(n), and negative terms where it is before sigma(n). In case of ties, a positive term is selected.

Offset 1, canonical program `A082901.P13729791713076633821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082901 (n : ℕ) : ℤ :=
  A082901.P13729791713076633821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082913.P7963033786630401460

`A002387(2^n)`
-/

namespace A082913.P7963033786630401460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 ^ n)

end

end A082913.P7963033786630401460

noncomputable section

/-- A082913: Least k such that H(k) > 2^n, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

Offset 0, canonical program `A082913.P7963033786630401460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082913 (n : ℕ) : ℤ :=
  A082913.P7963033786630401460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082928.P3722669598215508231

`gcd(A014683(n+1), A027480(n))`
-/

namespace A082928.P3722669598215508231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A027480 n)

end

end A082928.P3722669598215508231

noncomputable section

/-- A082928: If n is prime, a(n) = n+1; if n is even, a(n) = n/2; otherwise a(n) = n.

Offset 1, canonical program `A082928.P3722669598215508231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082928 (n : ℕ) : ℤ :=
  (A082928.P3722669598215508231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082974.P7990936776049434385

`(A000040(n+1)+a(n-1))%A000040(n+2)` with `a(0)=2`
-/

namespace A082974.P7990936776049434385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A000040 (n + 1) + a (n - 1)) (A000040 (n + 2))

end

end A082974.P7990936776049434385

noncomputable section

/-- A082974: a(n) = (a(n-1) + p(n)) mod p(n+1).

Offset 1, canonical program `A082974.P7990936776049434385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082974 (n : ℕ) : ℤ :=
  A082974.P7990936776049434385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083174.P3712066604536312936

`p?[xor(1, n)+1]*A080512(n+1)`
-/

namespace A083174.P3712066604536312936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A080512 (n + 1)

end

end A083174.P3712066604536312936

noncomputable section

/-- A083174: Leading diagonal of A083173.

Offset 1, canonical program `A083174.P3712066604536312936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7255 terms. -/
def A083174 (n : ℕ) : ℤ :=
  A083174.P3712066604536312936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7255 terms. -/
def A083174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083198.P17915299577347371668

`A061419(n+5)-A002379(n+5)`
-/

namespace A083198.P17915299577347371668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 5) - A002379 (n + 5)

end

end A083198.P17915299577347371668

noncomputable section

/-- A083198: a(n) = A061419(n) - A002379(n).

Offset 5, canonical program `A083198.P17915299577347371668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 563 terms. -/
def A083198 (n : ℕ) : ℤ :=
  A083198.P17915299577347371668.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 563 terms. -/
def A083198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083200.P16211326419769314640

`∑[A160747(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A083200.P16211326419769314640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A160747 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083200.P16211326419769314640

noncomputable section

/-- A083200: Polynexus numbers of order 7.

Offset 1, canonical program `A083200.P16211326419769314640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083200 (n : ℕ) : ℤ :=
  A083200.P16211326419769314640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083236.P16899612719890715469

`A000040(n)-a(n-1)` with `a(0)=2`
-/

namespace A083236.P16899612719890715469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 n - a (n - 1)

end

end A083236.P16899612719890715469

noncomputable section

/-- A083236: First order recursion: a(0)=2; a(n) = prime(n) - a(n-1).

Offset 0, canonical program `A083236.P16899612719890715469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083236 (n : ℕ) : ℤ :=
  A083236.P16899612719890715469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083237.P3865752581450416523

`A000040(n)-a(n-1)` with `a(0)=5`
-/

namespace A083237.P3865752581450416523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000040 n - a (n - 1)

end

end A083237.P3865752581450416523

noncomputable section

/-- A083237: First order recursion: a(0)=5; a(n)=prime(n)-a(n-1).

Offset 0, canonical program `A083237.P3865752581450416523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083237 (n : ℕ) : ℤ :=
  A083237.P3865752581450416523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083241.P84878704181718384

`Δ[A000040(n-1)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A083241.P84878704181718384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  A000040 (n - 1) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083241.P84878704181718384

noncomputable section

/-- A083241: a(n) + a(n-1) + a(n-2) + a(n-3) = prime(n), n>2, a(0)=a(1)=a(2)=0;.

Offset 0, canonical program `A083241.P84878704181718384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083241 (n : ℕ) : ℤ :=
  A083241.P84878704181718384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083266.P13941034721229126041

`A000203(n+1)+A023896(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083266.P13941034721229126041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A023896 (n + 1) - 1

end

end A083266.P13941034721229126041

noncomputable section

/-- A083266: Sum of related numbers (counted in A073757) belonging to n: a(n) = A000203(n) + A023896(n) - 1; related = {divisor-set, RRS}.

Offset 1, canonical program `A083266.P13941034721229126041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083266 (n : ℕ) : ℤ :=
  A083266.P13941034721229126041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083277.P7169970387501368059

`A002264(A000703(n))`
-/

namespace A083277.P7169970387501368059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000703 n).toNat

end

end A083277.P7169970387501368059

noncomputable section

/-- A083277: k appears 3k-2 times.

Offset 1, canonical program `A083277.P7169970387501368059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083277 (n : ℕ) : ℤ :=
  A083277.P7169970387501368059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083356.P17116603988832538437

`A060872(n)+a(n-1)` with `a(0)=0`
-/

namespace A083356.P17116603988832538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A060872 n + a (n - 1)

end

end A083356.P17116603988832538437

noncomputable section

/-- A083356: Total area of all incongruent integer-sided rectangles of area <= n.

Offset 0, canonical program `A083356.P17116603988832538437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356 (n : ℕ) : ℤ :=
  A083356.P17116603988832538437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083364.P1998433297147206427

`∑[A181900(n)+∑[gcd(2, n+1)]]`
-/

namespace A083364.P1998433297147206427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083364.P1998433297147206427

noncomputable section

/-- A083364: Antidiagonal sums of table A083362.

Offset 0, canonical program `A083364.P1998433297147206427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083364 (n : ℕ) : ℤ :=
  A083364.P1998433297147206427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083379.P11455418921540216668

`∑[A083377(n+1)+1-A017936(n+1)]`
-/

namespace A083379.P11455418921540216668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (n + 1) + (1 - A017936 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083379.P11455418921540216668

noncomputable section

/-- A083379: a(n) = the number of squares with at most n digits and first digit 1.

Offset 1, canonical program `A083379.P11455418921540216668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A083379 (n : ℕ) : ℤ :=
  A083379.P11455418921540216668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A083379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083413.P1377370701522611795

`and(-3, ∑{d}[n, #*A011782(#)])`
-/

namespace A083413.P1377370701522611795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011782 d)

end

end A083413.P1377370701522611795

noncomputable section

/-- A083413: a(n) = Sum_{d|n} d*2^(d-1) for n > 0.

Offset 0, canonical program `A083413.P1377370701522611795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A083413 (n : ℕ) : ℤ :=
  A083413.P1377370701522611795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A083413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083416.P8386739781111369066

`A081026(n+2)-1`
-/

namespace A083416.P8386739781111369066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081026 (n + 2) - 1

end

end A083416.P8386739781111369066

noncomputable section

/-- A083416: Add 1, double, add 1, double, etc.

Offset 1, canonical program `A083416.P8386739781111369066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083416 (n : ℕ) : ℤ :=
  A083416.P8386739781111369066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083460.P3601567770532971070

`A083456(n+1)^(n+1)+1`
-/

namespace A083460.P3601567770532971070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083456 (n + 1) ^ (n + 1) + 1

end

end A083460.P3601567770532971070

noncomputable section

/-- A083460: Palindromes arising in A083456.

Offset 1, canonical program `A083460.P3601567770532971070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083460 (n : ℕ) : ℤ :=
  A083460.P3601567770532971070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083461.P7183069756666971818

`A083457(n+1)^(n+1)-1`
-/

namespace A083461.P7183069756666971818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083457 (n + 1) ^ (n + 1) - 1

end

end A083461.P7183069756666971818

noncomputable section

/-- A083461: Palindromes arising in A083457.

Offset 1, canonical program `A083461.P7183069756666971818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083461 (n : ℕ) : ℤ :=
  A083461.P7183069756666971818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083511.P12398400288618322435

`11*A195313(n)+11`
-/

namespace A083511.P12398400288618322435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A195313 n + 11

end

end A083511.P12398400288618322435

noncomputable section

/-- A083511: Members of A000124 which are multiples of 11.

Offset 0, canonical program `A083511.P12398400288618322435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083511 (n : ℕ) : ℤ :=
  A083511.P12398400288618322435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083515.P15738582638108618042

`ceil(sqrt(A000042(n+1)))²-A000042(n+1)`
-/

namespace A083515.P15738582638108618042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000042 (n + 1) : ℝ)⌉ ^ 2 - A000042 (n + 1)

end

end A083515.P15738582638108618042

noncomputable section

/-- A083515: Smallest number k such that R(n) + k is a square, where R(n) = A002275.

Offset 1, canonical program `A083515.P15738582638108618042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083515 (n : ℕ) : ℤ :=
  A083515.P15738582638108618042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083537.P9698171235928535448

`char[A109043(n)]+a(A028242(n)-1)` with `a(0)=0, a(1)=0`
-/

namespace A083537.P9698171235928535448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (A028242 n - 1).toNat

end

end A083537.P9698171235928535448

noncomputable section

/-- A083537: a(0) = a(1) = 0, a(2n) = a(n)+1, a(2n+1) = a(n-1).

Offset 0, canonical program `A083537.P9698171235928535448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083537 (n : ℕ) : ℤ :=
  (A083537.P9698171235928535448.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083586.P154397260113613439

`A020988(n)-A392266(n)`
-/

namespace A083586.P154397260113613439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n - A392266 n

end

end A083586.P154397260113613439

noncomputable section

/-- A083586: Binomial transform of A083580.

Offset 0, canonical program `A083586.P154397260113613439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A083586 (n : ℕ) : ℤ :=
  A083586.P154397260113613439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A083586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083587.P10397820145560401887

`A003946(n)-2*A139756(n)`
-/

namespace A083587.P10397820145560401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - 2 * A139756 n

end

end A083587.P10397820145560401887

noncomputable section

/-- A083587: a(n) = 4*3^n/3 - 5*0^n/6 - (n-1)2^(n-1).

Offset 0, canonical program `A083587.P10397820145560401887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A083587 (n : ℕ) : ℤ :=
  A083587.P10397820145560401887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A083587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083707.P10638826215811034503

`A213389(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A083707.P10638826215811034503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A213389 n + a (n - 3)

end

end A083707.P10638826215811034503

noncomputable section

/-- A083707: G.f.: (x+4*x^3+x^5)/((1-x)^2*(1-x^2)^2*(1-x^3)).

Offset 0, canonical program `A083707.P10638826215811034503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083707 (n : ℕ) : ℤ :=
  A083707.P10638826215811034503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083709.P18036757815071533500

`∑[Δ[A004396(n)]-A317300(n)]`
-/

namespace A083709.P18036757815071533500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A317300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083709.P18036757815071533500

noncomputable section

/-- A083709: G.f.: (1-x+2*x^2+2*x^3+2*x^4-x^5+x^6)/((1-x)*(1-x^2)^2*(1-x^3)).

Offset 0, canonical program `A083709.P18036757815071533500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083709 (n : ℕ) : ℤ :=
  A083709.P18036757815071533500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084052.P15896097742026339928

`A000030(ceil((n+1)/5))%2`
-/

namespace A084052.P15896097742026339928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000030 ⌈(n + 1 : ℚ) / 5⌉.toNat) 2

end

end A084052.P15896097742026339928

noncomputable section

/-- A084052: 2*n digit-reversed mod 2.

Offset 5, canonical program `A084052.P15896097742026339928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084052 (n : ℕ) : ℤ :=
  A084052.P15896097742026339928.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084178.P6429780068064385169

`A000045(n+1)-2*a(n-1)` with `a(0)=0`
-/

namespace A084178.P6429780068064385169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (n + 1) - 2 * a (n - 1)

end

end A084178.P6429780068064385169

noncomputable section

/-- A084178: Inverse binomial transform of Fibonacci oblongs.

Offset 0, canonical program `A084178.P6429780068064385169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084178 (n : ℕ) : ℤ :=
  A084178.P6429780068064385169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084179.P11079212147406468819

`A000045(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A084179.P11079212147406468819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 n - 2 * a (n - 1)

end

end A084179.P11079212147406468819

noncomputable section

/-- A084179: Expansion of the g.f. x/((1+2x)(1-x-x^2)).

Offset 0, canonical program `A084179.P11079212147406468819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A084179 (n : ℕ) : ℤ :=
  A084179.P11079212147406468819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A084179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084183.P9988908318949352096

`round(A154383(n+1)/3)`
-/

namespace A084183.P9988908318949352096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154383 (n + 1) : ℚ) / 3)

end

end A084183.P9988908318949352096

noncomputable section

/-- A084183: Jacobsthal reverse-pair sequence.

Offset 0, canonical program `A084183.P9988908318949352096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084183 (n : ℕ) : ℤ :=
  A084183.P9988908318949352096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084236.P206726255755332926

`A002321(2^n)`
-/

namespace A084236.P206726255755332926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 ^ n)

end

end A084236.P206726255755332926

noncomputable section

/-- A084236: a(n) = M(2^n), where M(n) is Mertens's function, A002321.

Offset 0, canonical program `A084236.P206726255755332926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084236 (n : ℕ) : ℤ :=
  A084236.P206726255755332926.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084266.P5090138000761302846

`A084264(n)+A001787(n)`
-/

namespace A084266.P5090138000761302846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084264 n + A001787 n

end

end A084266.P5090138000761302846

noncomputable section

/-- A084266: Binomial transform of A084265.

Offset 0, canonical program `A084266.P5090138000761302846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A084266 (n : ℕ) : ℤ :=
  A084266.P5090138000761302846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A084266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084351.P16633846142287889478

`lcm(2*n+1-n, A000032(C(2, n+2))²)`
-/

namespace A084351.P16633846142287889478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n + 1 : ℤ) - (n : ℤ)) (A000032 (Nat.choose 2 (n + 2)) ^ 2)

end

end A084351.P16633846142287889478

noncomputable section

/-- A084351: Length of period of sequences r(k,n)=floor(sin(1)*k!)-n*floor(sin(1)*k!/n) when n is fixed.

Offset 1, canonical program `A084351.P16633846142287889478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084351 (n : ℕ) : ℤ :=
  (A084351.P16633846142287889478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084354.P18237609210739072839

`p?[n*(A066247(A051801(n)+1)+1)]`
-/

namespace A084354.P18237609210739072839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A066247 (A051801 n + 1).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084354.P18237609210739072839

noncomputable section

/-- A084354: Primes whose product of nonzero digits + 1 is prime.

Offset 1, canonical program `A084354.P18237609210739072839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A084354 (n : ℕ) : ℤ :=
  A084354.P18237609210739072839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A084354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084359.P13508041457539725378

`A080513(n)-A008619(A028391(n))`
-/

namespace A084359.P13508041457539725378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A008619 (A028391 n).toNat

end

end A084359.P13508041457539725378

noncomputable section

/-- A084359: a(n) = number of partitions of n into pair of parts n=p+q, p>=q>=1, with p-q equal to a square >= 0.

Offset 1, canonical program `A084359.P13508041457539725378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084359 (n : ℕ) : ℤ :=
  A084359.P13508041457539725378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084421.P15852507782448595974

`A005187(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084421.P15852507782448595974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A000040 (n + 1)).toNat

end

end A084421.P15852507782448595974

noncomputable section

/-- A084421: a(n) = A005187(A000040(n)).

Offset 1, canonical program `A084421.P15852507782448595974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084421 (n : ℕ) : ℤ :=
  A084421.P15852507782448595974.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084636.P12201687113205627878

`A084635(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A084636.P12201687113205627878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A084635 (n - 1) + a (n - 1)

end

end A084636.P12201687113205627878

noncomputable section

/-- A084636: Binomial transform of (1,0,1,0,1,0,2,0,2,0,2,0,...).

Offset 0, canonical program `A084636.P12201687113205627878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084636 (n : ℕ) : ℤ :=
  A084636.P12201687113205627878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084638.P12399577324000291172

`A084637(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A084638.P12399577324000291172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A084637 (n - 1) + a (n - 1)

end

end A084638.P12399577324000291172

noncomputable section

/-- A084638: Binomial transform of (1,0,1,0,1,0,1,0,2,0,2,0,2,....).

Offset 0, canonical program `A084638.P12399577324000291172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084638 (n : ℕ) : ℤ :=
  A084638.P12399577324000291172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084847.P13907072421175022019

`A002699(n)-A002250(n)`
-/

namespace A084847.P13907072421175022019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n - A002250 n

end

end A084847.P13907072421175022019

noncomputable section

/-- A084847: a(n) = 2*3^n+2^(2n-1)*(n-2).

Offset 0, canonical program `A084847.P13907072421175022019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A084847 (n : ℕ) : ℤ :=
  A084847.P13907072421175022019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A084847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084861.P14316594233501983757

`A034007(n)+A045891(n)-A034008(n)`
-/

namespace A084861.P14316594233501983757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n + (A045891 n - A034008 n)

end

end A084861.P14316594233501983757

noncomputable section

/-- A084861: Expansion of (1-3*x+4*x^2-3*x^3+x^4)/(1-2*x)^2.

Offset 0, canonical program `A084861.P14316594233501983757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A084861 (n : ℕ) : ℤ :=
  A084861.P14316594233501983757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A084861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084921.P1239694025551201532

`xor(1, ceil(A000040(n+1)²/2))`
-/

namespace A084921.P1239694025551201532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(A000040 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A084921.P1239694025551201532

noncomputable section

/-- A084921: a(n) = lcm(p-1, p+1) where p is the n-th prime.

Offset 1, canonical program `A084921.P1239694025551201532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084921 (n : ℕ) : ℤ :=
  A084921.P1239694025551201532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085003.P369311427931601851

`∑[A000035(∑[2-A001468(n)])]`
-/

namespace A085003.P369311427931601851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P369311427931601851

noncomputable section

/-- A085003: Partial sums of A085002.

Offset 1, canonical program `A085003.P369311427931601851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085003 (n : ℕ) : ℤ :=
  A085003.P369311427931601851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085010.P14056434388180856817

`A074854(2^n)`
-/

namespace A085010.P14056434388180856817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074854 (2 ^ n)

end

end A085010.P14056434388180856817

noncomputable section

/-- A085010: a(n)=2^(2^n)*sum(k=0,n,1/2^(2^k)).

Offset 0, canonical program `A085010.P14056434388180856817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085010 (n : ℕ) : ℤ :=
  A085010.P14056434388180856817.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085056.P12262074645316044709

`∏[1-A010848(n+1)+n]`
-/

namespace A085056.P12262074645316044709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010848 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P12262074645316044709

noncomputable section

/-- A085056: (Product of all composite numbers from 1 to n)/ ( product of the prime divisors of all composite numbers up to n). More precisely, denominator = product of the largest squarefree divisors of composite numbers up to n.

Offset 1, canonical program `A085056.P12262074645316044709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A085056 (n : ℕ) : ℤ :=
  A085056.P12262074645316044709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A085056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085111.P5442241482945459638

`A037223(n)+A009531(n)`
-/

namespace A085111.P5442241482945459638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 n + A009531 n

end

end A085111.P5442241482945459638

noncomputable section

/-- A085111: a(1) = 1; then add 1, multiply by 2, subtract 3, multiply by 4, add 5, multiply by 6, subtract 7, multiply by 8 and so on.

Offset 1, canonical program `A085111.P5442241482945459638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A085111 (n : ℕ) : ℤ :=
  A085111.P5442241482945459638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A085111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056969.P15588602888756750233

`A066432(n+1)%(n+1)`
-/

namespace A056969.P15588602888756750233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066432 (n + 1)) (n + 1 : ℤ)

end

end A056969.P15588602888756750233

noncomputable section

/-- A056969: a(n) = 10^n modulo n.

Offset 1, canonical program `A056969.P15588602888756750233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056969 (n : ℕ) : ℤ :=
  A056969.P15588602888756750233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057854.P3516327272515158544

`A090946(n+3)`
-/

namespace A057854.P3516327272515158544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 3)

end

end A057854.P3516327272515158544

noncomputable section

/-- A057854: Non-Lucas numbers: the complement of A000032.

Offset 1, canonical program `A057854.P3516327272515158544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057854 (n : ℕ) : ℤ :=
  A057854.P3516327272515158544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058060.P6722072494669887363

`∑{e}[A152235(n+1), #]`
-/

namespace A058060.P6722072494669887363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058060.P6722072494669887363

noncomputable section

/-- A058060: Number of distinct prime factors of d(n), the number of divisors of n.

Offset 1, canonical program `A058060.P6722072494669887363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058060 (n : ℕ) : ℤ :=
  (A058060.P6722072494669887363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058080.P7483339280694489428

`lt[9, A226602(n)]`
-/

namespace A058080.P7483339280694489428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P7483339280694489428

noncomputable section

/-- A058080: Numbers whose product of divisors exceeds their square.

Offset 1, canonical program `A058080.P7483339280694489428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058080 (n : ℕ) : ℤ :=
  (A058080.P7483339280694489428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058840.P13313517790522568928

`val(A079450(n+1), 3)^n`
-/

namespace A058840.P13313517790522568928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079450 (n + 1)).toNat 3 ^ n

end

end A058840.P13313517790522568928

noncomputable section

/-- A058840: From Renyi's "beta expansion of 1 in base 3/2": sequence gives y(0), y(1), ...

Offset 0, canonical program `A058840.P13313517790522568928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A058840 (n : ℕ) : ℤ :=
  (A058840.P13313517790522568928.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A058840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059258.P11658451383634834992

`p?[A146509(A087445(n+1))-n]`
-/

namespace A059258.P11658451383634834992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (A087445 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P11658451383634834992

noncomputable section

/-- A059258: Primes p such that x^53 = 2 has no solution mod p.

Offset 1, canonical program `A059258.P11658451383634834992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A059258 (n : ℕ) : ℤ :=
  A059258.P11658451383634834992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A059258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059269.P6274107585826422028

`eq[1, A353470(n+1)]+1`
-/

namespace A059269.P6274107585826422028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059269.P6274107585826422028

noncomputable section

/-- A059269: Numbers m for which the number of divisors, tau(m), is divisible by 3.

Offset 1, canonical program `A059269.P6274107585826422028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059269 (n : ℕ) : ℤ :=
  (A059269.P6274107585826422028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059479.P17464652159649958448

`A355264(n+1)²`
-/

namespace A059479.P17464652159649958448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1) ^ 2

end

end A059479.P17464652159649958448

noncomputable section

/-- A059479: Number of 3 X 3 matrices with elements from {0,...,n-1} such that the middle element of each of the eight lines of three (rows, columns and diagonals) is the square (mod n) of the difference of the end elements.

Offset 1, canonical program `A059479.P17464652159649958448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059479 (n : ℕ) : ℤ :=
  A059479.P17464652159649958448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059851.P8165731397206128111

`(A271860(n)+n)/2`
-/

namespace A059851.P8165731397206128111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271860 n + (n : ℤ) : ℚ) / 2

end

end A059851.P8165731397206128111

noncomputable section

/-- A059851: a(n) = n - floor(n/2) + floor(n/3) - floor(n/4) + ... (this is a finite sum).

Offset 0, canonical program `A059851.P8165731397206128111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059851 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059851.P8165731397206128111.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060462.P1796479077200654701

`lt[2, A349213(n+1)]`
-/

namespace A060462.P1796479077200654701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060462.P1796479077200654701

noncomputable section

/-- A060462: Integers k such that k! is divisible by k*(k+1)/2.

Offset 1, canonical program `A060462.P1796479077200654701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060462 (n : ℕ) : ℤ :=
  (A060462.P1796479077200654701.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060521.P8646143590663438384

`2*A238649(n+1)`
-/

namespace A060521.P8646143590663438384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238649 (n + 1)

end

end A060521.P8646143590663438384

noncomputable section

/-- A060521: Number of 3 X n grids of black and white cells, no 3 of same color vertically or horizontally contiguous.

Offset 1, canonical program `A060521.P8646143590663438384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A060521 (n : ℕ) : ℤ :=
  A060521.P8646143590663438384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A060521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060690.P9738587138365564248

`A163767(2^n)`
-/

namespace A060690.P9738587138365564248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163767 (2 ^ n)

end

end A060690.P9738587138365564248

noncomputable section

/-- A060690: a(n) = binomial(2^n + n - 1, n).

Offset 0, canonical program `A060690.P9738587138365564248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060690 (n : ℕ) : ℤ :=
  A060690.P9738587138365564248.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163767, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060779.P1940765969426374116

`lcm(A320111(2*(n+1)), A320111(A103517(n+1)))`
-/

namespace A060779.P1940765969426374116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A320111 (2 * (n + 1))) (A320111 (A103517 (n + 1)).toNat)

end

end A060779.P1940765969426374116

noncomputable section

/-- A060779: a(n) = lcm(tau(n+1), tau(n)), where tau = A000005.

Offset 1, canonical program `A060779.P1940765969426374116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060779 (n : ℕ) : ℤ :=
  (A060779.P1940765969426374116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060780.P10373163620500831352

`gcd(A000203(n+1), A092403(n+1))`
-/

namespace A060780.P10373163620500831352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A092403 (n + 1))

end

end A060780.P10373163620500831352

noncomputable section

/-- A060780: a(n) = gcd(sigma(n+1), sigma(n)), where sigma = A000203.

Offset 1, canonical program `A060780.P10373163620500831352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060780 (n : ℕ) : ℤ :=
  (A060780.P10373163620500831352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060866.P9667756286911027450

`2*A000203(n+1)-A337177(n+1)`
-/

namespace A060866.P9667756286911027450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A337177 (n + 1)

end

end A060866.P9667756286911027450

noncomputable section

/-- A060866: Sum of (d+d') over all unordered pairs (d,d') with d*d' = n.

Offset 1, canonical program `A060866.P9667756286911027450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060866 (n : ℕ) : ℤ :=
  A060866.P9667756286911027450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060904.P2539972540385605862

`5^A112765(n+1)`
-/

namespace A060904.P2539972540385605862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A060904.P2539972540385605862

noncomputable section

/-- A060904: Largest power of 5 that divides n.

Offset 1, canonical program `A060904.P2539972540385605862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060904.P2539972540385605862.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061017.P3381662168248992728

`A143502(n+1)-1`
-/

namespace A061017.P3381662168248992728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143502 (n + 1) - 1

end

end A061017.P3381662168248992728

noncomputable section

/-- A061017: List in which n appears d(n) times, where d(n) [A000005] is the number of divisors of n.

Offset 1, canonical program `A061017.P3381662168248992728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061017 (n : ℕ) : ℤ :=
  A061017.P3381662168248992728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061408.P4570989241539993166

`2*(∑[char[A211264(n+1)]]+1)`
-/

namespace A061408.P4570989241539993166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061408.P4570989241539993166

noncomputable section

/-- A061408: For each y >= 1 there are only finitely many values of x >= 1 such that x-y and x+y are both positive squares; list all such pairs (x,y) ordered by values of y; sequence gives y values.

Offset 0, canonical program `A061408.P4570989241539993166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061408 (n : ℕ) : ℤ :=
  (A061408.P4570989241539993166.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061603.P7123521768897570186

`A000142(n)/A066459(n)`
-/

namespace A061603.P7123521768897570186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A066459 n : ℚ)

end

end A061603.P7123521768897570186

noncomputable section

/-- A061603: a(n) = n! / {product of factorials of the digits of n}.

Offset 0, canonical program `A061603.P7123521768897570186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061603.P7123521768897570186.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062173.P12803886350549463179

`A220105(n+1)%(n+1)`
-/

namespace A062173.P12803886350549463179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220105 (n + 1)) (n + 1 : ℤ)

end

end A062173.P12803886350549463179

noncomputable section

/-- A062173: a(n) = 2^(n-1) mod n.

Offset 1, canonical program `A062173.P12803886350549463179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062173 (n : ℕ) : ℤ :=
  A062173.P12803886350549463179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062327.P9291018550595819418

`∑{d}[n+1, A069733(#)*A091400((n+1)/#)]`
-/

namespace A062327.P9291018550595819418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069733 d * A091400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P9291018550595819418

noncomputable section

/-- A062327: Number of divisors of n over the Gaussian integers.

Offset 1, canonical program `A062327.P9291018550595819418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062327 (n : ℕ) : ℤ :=
  A062327.P9291018550595819418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062340.P12344509097868839965

`p?[A227793(n+1)]`
-/

namespace A062340.P12344509097868839965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062340.P12344509097868839965

noncomputable section

/-- A062340: Primes whose sum of digits is a multiple of 5.

Offset 1, canonical program `A062340.P12344509097868839965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A062340 (n : ℕ) : ℤ :=
  A062340.P12344509097868839965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A062340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062380.P3842940140059394528

`∑{d}[n+1, #*A333557((n+1)/#)]`
-/

namespace A062380.P3842940140059394528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A333557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062380.P3842940140059394528

noncomputable section

/-- A062380: a(n) = Sum_{i|n,j|n} phi(i)*phi(j)/phi(gcd(i,j)), where phi is Euler totient function.

Offset 1, canonical program `A062380.P3842940140059394528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062380 (n : ℕ) : ℤ :=
  A062380.P3842940140059394528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062774.P18360295498494493866

`∑{d}[n+1, A230980(#)]`
-/

namespace A062774.P18360295498494493866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230980 d

end

end A062774.P18360295498494493866

noncomputable section

/-- A062774: Inverse Moebius transform of PrimePi function.

Offset 1, canonical program `A062774.P18360295498494493866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062774 (n : ℕ) : ℤ :=
  A062774.P18360295498494493866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062800.P7485131151254025437

`∩[A141881(n+1), A141927(n+1)]`
-/

namespace A062800.P7485131151254025437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P7485131151254025437

noncomputable section

/-- A062800: Primes of form 100*k + 1.

Offset 1, canonical program `A062800.P7485131151254025437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2020 terms. -/
def A062800 (n : ℕ) : ℤ :=
  (A062800.P7485131151254025437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2020 terms. -/
def A062800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062816.P7435490589567714136

`A079535(n+1)-(n+1)`
-/

namespace A062816.P7435490589567714136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (n + 1 : ℤ)

end

end A062816.P7435490589567714136

noncomputable section

/-- A062816: a(n) = phi(n)*tau(n) - 2n = A000010(n)*A000005(n) - 2*n.

Offset 1, canonical program `A062816.P7435490589567714136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062816 (n : ℕ) : ℤ :=
  A062816.P7435490589567714136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063038.P9690354763106774815

`A186146(n+1)-A062249(n+1)`
-/

namespace A063038.P9690354763106774815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186146 (n + 1) - A062249 (n + 1)

end

end A063038.P9690354763106774815

noncomputable section

/-- A063038: a(n) = floor(n*sqrt(n)) - d(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A063038.P9690354763106774815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063038 (n : ℕ) : ℤ :=
  A063038.P9690354763106774815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063084.P11297547496359058065

`A005451(n+1)-A086936(n+1)`
-/

namespace A063084.P11297547496359058065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) - A086936 (n + 1)

end

end A063084.P11297547496359058065

noncomputable section

/-- A063084: a(n) = pi(n-1)*n - pi(n)*(n-1), where pi() = A000720().

Offset 1, canonical program `A063084.P11297547496359058065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063084 (n : ℕ) : ℤ :=
  A063084.P11297547496359058065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063440.P2914289714026151303

`A320111(n+1)*A320111(n+2)`
-/

namespace A063440.P2914289714026151303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) * A320111 (n + 2)

end

end A063440.P2914289714026151303

noncomputable section

/-- A063440: Number of divisors of n-th triangular number.

Offset 1, canonical program `A063440.P2914289714026151303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063440 (n : ℕ) : ℤ :=
  A063440.P2914289714026151303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063450.P12247619196585758918

`lt[A070824(n+1), A319410(n)]`
-/

namespace A063450.P12247619196585758918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P12247619196585758918

noncomputable section

/-- A063450: Numbers k such that d(k+1) < 2*d(k), where d() is the number of divisors function A000005.

Offset 1, canonical program `A063450.P12247619196585758918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6349 terms. -/
def A063450 (n : ℕ) : ℤ :=
  (A063450.P12247619196585758918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6349 terms. -/
def A063450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063659.P8030400348371096999

`∑{d}[n+1, #*A271102((n+1)/#)]`
-/

namespace A063659.P8030400348371096999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P8030400348371096999

noncomputable section

/-- A063659: The number of integers m in [1..n] for which gcd(m,n) is not divisible by a square greater than 1.

Offset 1, canonical program `A063659.P8030400348371096999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063659 (n : ℕ) : ℤ :=
  A063659.P8030400348371096999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063726.P9833521846343974685

`gcd(A001611(n), A212804(n))`
-/

namespace A063726.P9833521846343974685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001611 n) (A212804 n)

end

end A063726.P9833521846343974685

noncomputable section

/-- A063726: a(n) = gcd(1 + Fibonacci(n+1), 1 + Fibonacci(n)).

Offset 0, canonical program `A063726.P9833521846343974685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A063726 (n : ℕ) : ℤ :=
  (A063726.P9833521846343974685.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A063726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064235.P9847577287596558339

`3^A080342(n+1)`
-/

namespace A064235.P9847577287596558339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A080342 (n + 1) : ℤ)

end

end A064235.P9847577287596558339

noncomputable section

/-- A064235: The smallest power of 3 that is greater than or equal to n.

Offset 1, canonical program `A064235.P9847577287596558339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064235.P9847577287596558339.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064536.P15550771298834793474

`and(A064629(n+1), A126646(n))`
-/

namespace A064536.P15550771298834793474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064629 (n + 1)) (A126646 n)

end

end A064536.P15550771298834793474

noncomputable section

/-- A064536: a(n) = (4^n mod 3^n) mod 2^n.

Offset 1, canonical program `A064536.P15550771298834793474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A064536 (n : ℕ) : ℤ :=
  A064536.P15550771298834793474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A064536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064557.P3776744572660076995

`A230980(∑[A080339(n+1)])`
-/

namespace A064557.P3776744572660076995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064557.P3776744572660076995

noncomputable section

/-- A064557: a(n) = # { p | A064553(k) = p prime and k <= n}.

Offset 1, canonical program `A064557.P3776744572660076995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064557 (n : ℕ) : ℤ :=
  A064557.P3776744572660076995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064857.P14259746257036142487

`A120109(n)/gcd(A003418(n), A120109(n))`
-/

namespace A064857.P14259746257036142487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120109 n : ℚ) / (Int.gcd (A003418 n) (A120109 n) : ℚ)

end

end A064857.P14259746257036142487

noncomputable section

/-- A064857: Numerators of partial sums of reciprocals of lcm(1..n) = A003418(n).

Offset 1, canonical program `A064857.P14259746257036142487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064857.P14259746257036142487.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064919.P171974603176685664

`n*A066247(n+2)+n+2`
-/

namespace A064919.P171974603176685664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066247 (n + 2) + (n + 2 : ℤ)

end

end A064919.P171974603176685664

noncomputable section

/-- A064919: a(n) = Min { k | A064916(k) = n }.

Offset 2, canonical program `A064919.P171974603176685664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064919 (n : ℕ) : ℤ :=
  A064919.P171974603176685664.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065018.P12289181754646712942

`∑{d}[n+1, A072861(#)]`
-/

namespace A065018.P12289181754646712942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d

end

end A065018.P12289181754646712942

noncomputable section

/-- A065018: a(n) = Sum_{d|n} sigma(d)^2.

Offset 1, canonical program `A065018.P12289181754646712942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065018 (n : ℕ) : ℤ :=
  A065018.P12289181754646712942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065357.P5981080689720192330

`1-2*A131378(n)`
-/

namespace A065357.P5981080689720192330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A131378 n

end

end A065357.P5981080689720192330

noncomputable section

/-- A065357: a(n) = (-1)^pi(n) where pi(n) is the number of primes <= n.

Offset 0, canonical program `A065357.P5981080689720192330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065357 (n : ℕ) : ℤ :=
  A065357.P5981080689720192330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065358.P6265050914822267748

`n-2*A131808(n)`
-/

namespace A065358.P6265050914822267748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A131808 n

end

end A065358.P6265050914822267748

noncomputable section

/-- A065358: The Jacob's Ladder sequence: a(n) = Sum_{k=1..n} (-1)^pi(k), where pi = A000720.

Offset 0, canonical program `A065358.P6265050914822267748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065358 (n : ℕ) : ℤ :=
  A065358.P6265050914822267748.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065369.P17665126162398518660

`2*A105186(n)-n`
-/

namespace A065369.P17665126162398518660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105186 n - (n : ℤ)

end

end A065369.P17665126162398518660

noncomputable section

/-- A065369: Replace 3^k with (-3)^k in ternary expansion of n.

Offset 0, canonical program `A065369.P17665126162398518660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065369 (n : ℕ) : ℤ :=
  A065369.P17665126162398518660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065494.P4483697362935118258

`∑[∑[A247355(abs(1-n))]]`
-/

namespace A065494.P4483697362935118258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065494.P4483697362935118258

noncomputable section

/-- A065494: Number of (binary) bit strings in which no even length block of 0's is followed by an even length block of 1's.

Offset 0, canonical program `A065494.P4483697362935118258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A065494 (n : ℕ) : ℤ :=
  A065494.P4483697362935118258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A065494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065882.P16314406174134105996

`A065883(n+1)%4`
-/

namespace A065882.P16314406174134105996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065883 (n + 1)) 4

end

end A065882.P16314406174134105996

noncomputable section

/-- A065882: Ultimate modulo 4: right-hand nonzero digit of n when written in base 4.

Offset 1, canonical program `A065882.P16314406174134105996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065882 (n : ℕ) : ℤ :=
  A065882.P16314406174134105996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065896.P8722596109035714303

`A210469(n+1)+n`
-/

namespace A065896.P8722596109035714303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + (n : ℤ)

end

end A065896.P8722596109035714303

noncomputable section

/-- A065896: Number of composites <= 2*n.

Offset 1, canonical program `A065896.P8722596109035714303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065896 (n : ℕ) : ℤ :=
  A065896.P8722596109035714303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065970.P13115613865623270676

`A065969(n+1)-2*A322078(n+1)`
-/

namespace A065970.P13115613865623270676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065969 (n + 1) - 2 * A322078 (n + 1)

end

end A065970.P13115613865623270676

noncomputable section

/-- A065970: a(n) = n^2 * Sum_{primes p dividing n} (1 - 1/p^2).

Offset 1, canonical program `A065970.P13115613865623270676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065970 (n : ℕ) : ℤ :=
  A065970.P13115613865623270676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066088.P15854574234992455139

`∑{e}[A080399(n+1), #]`
-/

namespace A066088.P15854574234992455139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A066088.P15854574234992455139

noncomputable section

/-- A066088: Number of distinct prime factors of sigma_2(n), where sigma_2(n) = A001157(n).

Offset 1, canonical program `A066088.P15854574234992455139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A066088 (n : ℕ) : ℤ :=
  (A066088.P15854574234992455139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A066088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066566.P279150373663098236

`eq[1, A053186(A066568(n))+1]`
-/

namespace A066566.P279150373663098236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A066568 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066566.P279150373663098236

noncomputable section

/-- A066566: Numbers that when decremented by the sum of their digits produce a square.

Offset 1, canonical program `A066566.P279150373663098236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A066566 (n : ℕ) : ℤ :=
  (A066566.P279150373663098236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A066566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066601.P273108272121947781

`A066607(n+1)%(n+1)`
-/

namespace A066601.P273108272121947781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066607 (n + 1)) (n + 1 : ℤ)

end

end A066601.P273108272121947781

noncomputable section

/-- A066601: a(n) = 3^n mod n.

Offset 1, canonical program `A066601.P273108272121947781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066601 (n : ℕ) : ℤ :=
  A066601.P273108272121947781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066602.P15017815964599118024

`A066608(n+1)%(n+1)`
-/

namespace A066602.P15017815964599118024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066608 (n + 1)) (n + 1 : ℤ)

end

end A066602.P15017815964599118024

noncomputable section

/-- A066602: a(n) = 4^n mod n.

Offset 1, canonical program `A066602.P15017815964599118024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066602 (n : ℕ) : ℤ :=
  A066602.P15017815964599118024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066603.P5756785611430650469

`A066609(n+1)%(n+1)`
-/

namespace A066603.P5756785611430650469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066609 (n + 1)) (n + 1 : ℤ)

end

end A066603.P5756785611430650469

noncomputable section

/-- A066603: a(n) = 5^n mod n.

Offset 1, canonical program `A066603.P5756785611430650469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066603 (n : ℕ) : ℤ :=
  A066603.P5756785611430650469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066604.P13718169227305272568

`A066610(n+1)%(n+1)`
-/

namespace A066604.P13718169227305272568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066610 (n + 1)) (n + 1 : ℤ)

end

end A066604.P13718169227305272568

noncomputable section

/-- A066604: a(n) = 6^n mod n.

Offset 1, canonical program `A066604.P13718169227305272568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066604 (n : ℕ) : ℤ :=
  A066604.P13718169227305272568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066606.P6520458400013291076

`A233442(n+1)%A162395(n+1)`
-/

namespace A066606.P6520458400013291076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233442 (n + 1)) (A162395 (n + 1))

end

end A066606.P6520458400013291076

noncomputable section

/-- A066606: a(n) = 2^n mod n^2.

Offset 1, canonical program `A066606.P6520458400013291076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066606 (n : ℕ) : ℤ :=
  A066606.P6520458400013291076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066728.P5246203842492218540

`A129296(n+2)-1`
-/

namespace A066728.P5246203842492218540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 2) - 1

end

end A066728.P5246203842492218540

noncomputable section

/-- A066728: a(n) is the number of integers of the form (n+k+n*k)/(n-k) for k = 1,2,...,n-1.

Offset 1, canonical program `A066728.P5246203842492218540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A066728 (n : ℕ) : ℤ :=
  A066728.P5246203842492218540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A066728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066910.P10239878416308779692

`A073117(n+1)+A000007(n)-A073117(A233583(n+1))`
-/

namespace A066910.P10239878416308779692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073117 (n + 1) + (A000007 n - A073117 (A233583 (n + 1)).toNat)

end

end A066910.P10239878416308779692

noncomputable section

/-- A066910: a(1) = 1; a(n+1) = (sum{k=1 to n} a(k) ) (mod n).

Offset 1, canonical program `A066910.P10239878416308779692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A066910 (n : ℕ) : ℤ :=
  A066910.P10239878416308779692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A066910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066911.P6571933624612694988

`∑[∑{p}[n, #]-A105221(n+1)]`
-/

namespace A066911.P6571933624612694988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - A105221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066911.P6571933624612694988

noncomputable section

/-- A066911: Sum of primes < n that do not divide n.

Offset 1, canonical program `A066911.P6571933624612694988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066911 (n : ℕ) : ℤ :=
  A066911.P6571933624612694988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067047.P11301032730929694730

`gcd(A154286(n), A291288(n))`
-/

namespace A067047.P11301032730929694730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154286 n) (A291288 n)

end

end A067047.P11301032730929694730

noncomputable section

/-- A067047: a(n) = lcm(n, n+1, n+2, n+3)/12.

Offset 1, canonical program `A067047.P11301032730929694730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067047 (n : ℕ) : ℤ :=
  (A067047.P11301032730929694730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067187.P4381605707725789093

`A373789(n+2)+2`
-/

namespace A067187.P4381605707725789093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 2) + 2

end

end A067187.P4381605707725789093

noncomputable section

/-- A067187: Numbers that can be expressed as the sum of two primes in exactly one way.

Offset 1, canonical program `A067187.P4381605707725789093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067187 (n : ℕ) : ℤ :=
  A067187.P4381605707725789093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067777.P5898996878864800961

`eq[A080339(2*n+1)+A080339(3*n+1), A085090(3*n+1)]`
-/

namespace A067777.P5898996878864800961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * n + 1) + A080339 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P5898996878864800961

noncomputable section

/-- A067777: Numbers k such that (2*k)! * B(6*k) is an integer where B(k) are the Bernoulli numbers B(1)=-1/2 B(2)=1/6 B(4)=-1/30... B(2*m+1)=0 m>1.

Offset 1, canonical program `A067777.P5898996878864800961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A067777 (n : ℕ) : ℤ :=
  (A067777.P5898996878864800961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A067777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067946.P8604927095954536120

`record[gcd(n+1, A094920(n+1))]`
-/

namespace A067946.P8604927095954536120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A094920 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067946.P8604927095954536120

noncomputable section

/-- A067946: Numbers k that divide 5^k - 1.

Offset 1, canonical program `A067946.P8604927095954536120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A067946 (n : ℕ) : ℤ :=
  (A067946.P8604927095954536120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A067946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068067.P8429999717288911896

`A068068(n+1)-n%2`
-/

namespace A068067.P8429999717288911896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A068067.P8429999717288911896

noncomputable section

/-- A068067: Number of integers m, 0 < m <= n, such that n divides m(m+1)/2.

Offset 1, canonical program `A068067.P8429999717288911896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068067 (n : ℕ) : ℤ :=
  A068067.P8429999717288911896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068426.P10437059448932842721

`A293364(n)-A293362(n)`
-/

namespace A068426.P10437059448932842721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 n - A293362 n

end

end A068426.P10437059448932842721

noncomputable section

/-- A068426: Expansion of log(2) in base 2.

Offset 0, canonical program `A068426.P10437059448932842721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A068426 (n : ℕ) : ℤ :=
  A068426.P10437059448932842721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A068426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068510.P11721145475733360069

`A059794(n+1)-A068511(n+1)`
-/

namespace A068510.P11721145475733360069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059794 (n + 1) - A068511 (n + 1)

end

end A068510.P11721145475733360069

noncomputable section

/-- A068510: a(n) = lcm(1,...,n) - (product of primes <= n).

Offset 1, canonical program `A068510.P11721145475733360069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068510 (n : ℕ) : ℤ :=
  A068510.P11721145475733360069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068577.P762481586230944513

`A020725(lt[A279507(n+1), ∏{e}[n+1, #+1]])`
-/

namespace A068577.P762481586230944513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068577.P762481586230944513

noncomputable section

/-- A068577: Numbers k such that tau(k)^2 > phi(k).

Offset 1, canonical program `A068577.P762481586230944513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577 (n : ℕ) : ℤ :=
  A068577.P762481586230944513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069208.P5783639011279016630

`∑{d}[n+1, #*A112526((n+1)/#)]`
-/

namespace A069208.P5783639011279016630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069208.P5783639011279016630

noncomputable section

/-- A069208: a(n) = Sum_{ d divides n } phi(n)/phi(d).

Offset 1, canonical program `A069208.P5783639011279016630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069208 (n : ℕ) : ℤ :=
  A069208.P5783639011279016630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069209.P1495088304037464611

`lt[1, A126864(n+1)]+1`
-/

namespace A069209.P1495088304037464611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069209.P1495088304037464611

noncomputable section

/-- A069209: Orders of non-Abelian Z-groups.

Offset 1, canonical program `A069209.P1495088304037464611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069209 (n : ℕ) : ℤ :=
  (A069209.P1495088304037464611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069348.P4647406691888658330

`p?[A337455(n+1)]`
-/

namespace A069348.P4647406691888658330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069348.P4647406691888658330

noncomputable section

/-- A069348: Primes of the form k + Omega(k), where Omega(k) is the number of prime factors of k, A001222(k).

Offset 1, canonical program `A069348.P4647406691888658330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A069348 (n : ℕ) : ℤ :=
  A069348.P4647406691888658330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A069348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069519.P10621805273375888792

`eq[1, A353687(n+1)]+1`
-/

namespace A069519.P10621805273375888792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069519.P10621805273375888792

noncomputable section

/-- A069519: Numbers k such that 1/(Sum_{d|k} (-1)^d/d) is an integer.

Offset 1, canonical program `A069519.P10621805273375888792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A069519 (n : ℕ) : ℤ :=
  (A069519.P10621805273375888792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A069519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069924.P1533727129138465007

`A071521(n+1)-A062153(n+1)`
-/

namespace A069924.P1533727129138465007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (n + 1) - A062153 (n + 1)

end

end A069924.P1533727129138465007

noncomputable section

/-- A069924: Number of k, 1<=k<=n, such that phi(k) divides k.

Offset 1, canonical program `A069924.P1533727129138465007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062153, A071521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069924 (n : ℕ) : ℤ :=
  A069924.P1533727129138465007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062153, A071521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069924.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069933.P8410770447695468430

`∑{d}[n+1, A086671(#)*A271102((n+1)/#)]`
-/

namespace A069933.P8410770447695468430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086671 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069933.P8410770447695468430

noncomputable section

/-- A069933: Number of k, 1<=k<=n, such that core(k) divides n, where core(x) is the squarefree part of x, the smallest integer such that x*core(x) is a square.

Offset 1, canonical program `A069933.P8410770447695468430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069933 (n : ℕ) : ℤ :=
  A069933.P8410770447695468430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070348.P12949094517838521028

`A070387(3*n)`
-/

namespace A070348.P12949094517838521028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070387 (3 * n)

end

end A070348.P12949094517838521028

noncomputable section

/-- A070348: a(n) = 2^n mod 41.

Offset 0, canonical program `A070348.P12949094517838521028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A070348 (n : ℕ) : ℤ :=
  A070348.P12949094517838521028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A070348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070351.P12962646093972245574

`A070429(2*n)`
-/

namespace A070351.P12962646093972245574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070429 (2 * n)

end

end A070351.P12962646093972245574

noncomputable section

/-- A070351: a(n) = 2^n mod 47.

Offset 0, canonical program `A070351.P12962646093972245574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A070351 (n : ℕ) : ℤ :=
  A070351.P12962646093972245574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A070351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070537.P519828097946199931

`record[C(n+1, A340363(n+1)+n)]`
-/

namespace A070537.P519828097946199931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A340363 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070537.P519828097946199931

noncomputable section

/-- A070537: Numbers k such that the k-th cyclotomic polynomial has more terms than the largest prime factor of k.

Offset 1, canonical program `A070537.P519828097946199931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070537 (n : ℕ) : ℤ :=
  (A070537.P519828097946199931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070776.P10943609566453861141

`eq[1, A340363(n+2)]+2`
-/

namespace A070776.P10943609566453861141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070776.P10943609566453861141

noncomputable section

/-- A070776: Numbers k such that number of terms in the k-th cyclotomic polynomial is equal to the largest prime factor of k.

Offset 1, canonical program `A070776.P10943609566453861141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070776 (n : ℕ) : ℤ :=
  (A070776.P10943609566453861141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070799.P17110375673296894115

`eq[0, A091393(6*n+1)]`
-/

namespace A070799.P17110375673296894115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070799.P17110375673296894115

noncomputable section

/-- A070799: Numbers of the form 6jk-j-k.

Offset 1, canonical program `A070799.P17110375673296894115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A070799 (n : ℕ) : ℤ :=
  (A070799.P17110375673296894115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A070799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071247.P7398568559144745585

`eq[A078142(n+1), A078142(n+2)]+1`
-/

namespace A071247.P7398568559144745585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071247.P7398568559144745585

noncomputable section

/-- A071247: Numbers n such that A078142(n) = A078142(n+1), where A078142(n) is the sum of the differences of the distinct prime factors p of n and the next square larger than p.

Offset 1, canonical program `A071247.P7398568559144745585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A071247 (n : ℕ) : ℤ :=
  (A071247.P7398568559144745585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A071247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071415.P1186602952399303221

`A033638(A083479(n)+1+n)+n`
-/

namespace A071415.P1186602952399303221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 n + 1 + (n : ℤ)).toNat + (n : ℤ)

end

end A071415.P1186602952399303221

noncomputable section

/-- A071415: Maximal m such that all numbers in [0,m] are expressible as a*b + c with a + c <= n, b <= n and a,b,c nonnegative integers.

Offset 1, canonical program `A071415.P1186602952399303221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4513 terms. -/
def A071415 (n : ℕ) : ℤ :=
  A071415.P1186602952399303221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4513 terms. -/
def A071415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071440.P12289870813246919657

`A077253(a(n-1))` with `a(0)=1`
-/

namespace A071440.P12289870813246919657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077253 (a (n - 1)).toNat

end

end A071440.P12289870813246919657

noncomputable section

/-- A071440: Start with 1; add the digits of the previous term and the squares of the digits of the previous term.

Offset 0, canonical program `A071440.P12289870813246919657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071440 (n : ℕ) : ℤ :=
  A071440.P12289870813246919657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071570.P16050349158961801199

`A004526(∑{d}[n+1, A080847(#)*A080847(#)])`
-/

namespace A071570.P16050349158961801199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A080847 d * A080847 d).toNat

end

end A071570.P16050349158961801199

noncomputable section

/-- A071570: a(n) = 2 * Sum_{d|n} 2^mu(d).

Offset 1, canonical program `A071570.P16050349158961801199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071570 (n : ℕ) : ℤ :=
  A071570.P16050349158961801199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071621.P6497078535451825457

`A004139(A074764(n+2))`
-/

namespace A071621.P6497078535451825457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A074764 (n + 2)).toNat

end

end A071621.P6497078535451825457

noncomputable section

/-- A071621: Primes that can be written as "a * b + c * d", where a, b, c and d are also primes.

Offset 1, canonical program `A071621.P6497078535451825457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A071621 (n : ℕ) : ℤ :=
  A071621.P6497078535451825457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A071621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071683.P4804736648095859902

`A001076(A326178(n+1))`
-/

namespace A071683.P4804736648095859902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (A326178 (n + 1)).toNat

end

end A071683.P4804736648095859902

noncomputable section

/-- A071683: Nonprimes which are the average of two consecutive Fibonacci numbers.

Offset 1, canonical program `A071683.P4804736648095859902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A071683 (n : ℕ) : ℤ :=
  A071683.P4804736648095859902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A071683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071992.P9612405317653658171

`∑[2*A071993(n+1)-1]`
-/

namespace A071992.P9612405317653658171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071993 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071992.P9612405317653658171

noncomputable section

/-- A071992: a(n) = 3*n^2 + 2*n - 4 * Sum_{k=1..n} A003159(k).

Offset 1, canonical program `A071992.P9612405317653658171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071992 (n : ℕ) : ℤ :=
  A071992.P9612405317653658171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072330.P15179746371977386479

`filter[A057125(n+1), A187074(#)]`
-/

namespace A072330.P15179746371977386479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A072330.P15179746371977386479

noncomputable section

/-- A072330: Common difference n such that primitive triangles exist which are n-arithmetic (i.e., primitive Heronian triangles whose sides in arithmetic progression have common difference n).

Offset 1, canonical program `A072330.P15179746371977386479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. -/
def A072330 (n : ℕ) : ℤ :=
  A072330.P15179746371977386479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. -/
def A072330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072464.P9450388406469305649

`A292046(ceil(log2(n+2)))`
-/

namespace A072464.P9450388406469305649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat

end

end A072464.P9450388406469305649

noncomputable section

/-- A072464: Code word lengths for non-redundant MML code for positive integers.

Offset 1, canonical program `A072464.P9450388406469305649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072464 (n : ℕ) : ℤ :=
  A072464.P9450388406469305649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072544.P3283143156771516929

`eq[val(A348783(n), 5), A000030(n)]`
-/

namespace A072544.P3283143156771516929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072544.P3283143156771516929

noncomputable section

/-- A072544: Numbers whose smallest decimal digit is also the initial digit.

Offset 1, canonical program `A072544.P3283143156771516929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2365 terms. -/
def A072544 (n : ℕ) : ℤ :=
  (A072544.P3283143156771516929.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2365 terms. -/
def A072544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073059.P7440096197096325997

`1/2*(A073504(n+2)-A073504(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073059.P7440096197096325997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A073504 (n + 2) - A073504 (n + 1) : ℚ)

end

end A073059.P7440096197096325997

noncomputable section

/-- A073059: a(n) = (1/2)*(A073504(n+1) - A073504(n)).

Offset 1, canonical program `A073059.P7440096197096325997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073059.P7440096197096325997.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073368.P9300098000594742605

`A074764(n+1)%∑[A066247(n+4)]`
-/

namespace A073368.P9300098000594742605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074764 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073368.P9300098000594742605

noncomputable section

/-- A073368: Remainder when n is divided by number of composites not exceeding n.

Offset 4, canonical program `A073368.P9300098000594742605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073368 (n : ℕ) : ℤ :=
  A073368.P9300098000594742605.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073763.P15953634689084529443

`A234902(A072703(n+1))`
-/

namespace A073763.P15953634689084529443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234902 (A072703 (n + 1)).toNat

end

end A073763.P15953634689084529443

noncomputable section

/-- A073763: Least number of unrelated set belonging to these numbers is odd.

Offset 1, canonical program `A073763.P15953634689084529443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A073763 (n : ℕ) : ℤ :=
  A073763.P15953634689084529443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A073763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073797.P2043127665268211522

`A020707(n)%A230980(n+2)`
-/

namespace A073797.P2043127665268211522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020707 n) (A230980 (n + 2))

end

end A073797.P2043127665268211522

noncomputable section

/-- A073797: a(n) = 2^n mod pi(n).

Offset 2, canonical program `A073797.P2043127665268211522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A073797 (n : ℕ) : ℤ :=
  A073797.P2043127665268211522.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A073797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074132.P6295191419457740670

`(n+1)*∑[A003188(A171960(n))%2+n]`
-/

namespace A074132.P6295191419457740670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A171960 n).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074132.P6295191419457740670

noncomputable section

/-- A074132: Row sums of triangle A074135.

Offset 1, canonical program `A074132.P6295191419457740670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074132 (n : ℕ) : ℤ :=
  A074132.P6295191419457740670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074133.P2611701329226154818

`∑[A003188(A171960(n))%2+n]`
-/

namespace A074133.P2611701329226154818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A171960 n).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074133.P2611701329226154818

noncomputable section

/-- A074133: Average of the n-th group, if positive integers are rearranged in groups of k=1,2,3,... numbers whose sum is a multiple of k.

Offset 1, canonical program `A074133.P2611701329226154818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074133 (n : ℕ) : ℤ :=
  A074133.P2611701329226154818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074134.P14482655219537014998

`A113047(A008619(n))+∑[n]`
-/

namespace A074134.P14482655219537014998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 (A008619 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074134.P14482655219537014998

noncomputable section

/-- A074134: First column of triangle A074135.

Offset 1, canonical program `A074134.P14482655219537014998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074134 (n : ℕ) : ℤ :=
  A074134.P14482655219537014998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074239.P15542470158088435368

`∑[A106002(n+1)]`
-/

namespace A074239.P15542470158088435368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P15542470158088435368

noncomputable section

/-- A074239: Related to cumulative number of non-twin primes.

Offset 0, canonical program `A074239.P15542470158088435368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074239 (n : ℕ) : ℤ :=
  A074239.P15542470158088435368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074315.P17848923822781647351

`record[A000217(n+8)%A152989(n+8)]`
-/

namespace A074315.P17848923822781647351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 8)) (A152989 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074315.P17848923822781647351

noncomputable section

/-- A074315: Abundant triangular numbers.

Offset 1, canonical program `A074315.P17848923822781647351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315 (n : ℕ) : ℤ :=
  A074315.P17848923822781647351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074795.P1379753408512257015

`∑[A353470(n+1)]`
-/

namespace A074795.P1379753408512257015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P1379753408512257015

noncomputable section

/-- A074795: Number of numbers k <= n such that tau(k) == 0 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A074795.P1379753408512257015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074795 (n : ℕ) : ℤ :=
  A074795.P1379753408512257015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075254.P9638240427792623168

`2*A001414(n+1)+A075255(n+1)`
-/

namespace A075254.P9638240427792623168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001414 (n + 1) + A075255 (n + 1)

end

end A075254.P9638240427792623168

noncomputable section

/-- A075254: a(n) = n + (sum of prime factors of n taken with repetition).

Offset 1, canonical program `A075254.P9638240427792623168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A075255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075254 (n : ℕ) : ℤ :=
  A075254.P9638240427792623168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A075255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075425.P11313490393567044434

`A110157(n+1)-1`
-/

namespace A075425.P11313490393567044434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110157 (n + 1) - 1

end

end A075425.P11313490393567044434

noncomputable section

/-- A075425: Number of steps to reach 1 starting with n and iterating the map n ->rad(n)-1, where rad(n) is the squarefree kernel of n (A007947).

Offset 1, canonical program `A075425.P11313490393567044434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075425 (n : ℕ) : ℤ :=
  A075425.P11313490393567044434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076156.P12126611222985155867

`eq[A086436(2*(n+1)), A086436(n+2)]+1`
-/

namespace A076156.P12126611222985155867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P12126611222985155867

noncomputable section

/-- A076156: Numbers n such that Omega(n+1) = Omega(n)+1, where Omega(m) (A001222) denotes the number of prime factors of m, counting multiplicity.

Offset 1, canonical program `A076156.P12126611222985155867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A076156 (n : ℕ) : ℤ :=
  (A076156.P12126611222985155867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A076156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076178.P4076835337858509169

`2*n²-A077071(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076178.P4076835337858509169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - A077071 n

end

end A076178.P4076835337858509169

noncomputable section

/-- A076178: a(n) = 2*n^2 - A077071(n).

Offset 0, canonical program `A076178.P4076835337858509169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076178 (n : ℕ) : ℤ :=
  A076178.P4076835337858509169.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076290.P10407532045046765191

`∑{d}[n+1, #*A101605(2*#)]`
-/

namespace A076290.P10407532045046765191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101605 (2 * d)

end

end A076290.P10407532045046765191

noncomputable section

/-- A076290: Sum of the semiprime divisors of n.

Offset 1, canonical program `A076290.P10407532045046765191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A076290 (n : ℕ) : ℤ :=
  A076290.P10407532045046765191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A076290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076737.P4754763807282475927

`gcd(A124303(A233583(n+1)), A133140(n))`
-/

namespace A076737.P4754763807282475927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124303 (A233583 (n + 1)).toNat) (A133140 n)

end

end A076737.P4754763807282475927

noncomputable section

/-- A076737: Let u(1)=u(2)=u(3)=2, u(n)=(1+u(n-1)u(n-2))/u(n-3); then a(n) is the numerator of u(n).

Offset 1, canonical program `A076737.P4754763807282475927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A076737 (n : ℕ) : ℤ :=
  (A076737.P4754763807282475927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A076737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076764.P2673609182765345381

`∩[A322840(n+1)+1, A322840(n+1)]`
-/

namespace A076764.P2673609182765345381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076764.P2673609182765345381

noncomputable section

/-- A076764: n such that Omega(n-1) < Omega(n) < Omega(n+1), where Omega(m) = the number of prime factors of m, counting multiplicity.

Offset 1, canonical program `A076764.P2673609182765345381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A076764 (n : ℕ) : ℤ :=
  (A076764.P2673609182765345381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A076764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076898.P2074698076264924769

`A053602(A008620(n))*A163806(n)`
-/

namespace A076898.P2074698076264924769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A008620 n).toNat * A163806 n

end

end A076898.P2074698076264924769

noncomputable section

/-- A076898: Let u(1)=u(2)=u(3)=1, u(n)=sign(u(n-1)-u(n-2))/(u(n-3)+1); then a(n) is the numerator of u(n).

Offset 1, canonical program `A076898.P2074698076264924769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2855 terms. -/
def A076898 (n : ℕ) : ℤ :=
  A076898.P2074698076264924769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2855 terms. -/
def A076898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077677.P6147157833111245039

`eq[1, A105570(n)+A000030(n)]`
-/

namespace A077677.P6147157833111245039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077677.P6147157833111245039

noncomputable section

/-- A077677: Squarefree numbers beginning with 1.

Offset 1, canonical program `A077677.P6147157833111245039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A077677 (n : ℕ) : ℤ :=
  (A077677.P6147157833111245039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A077677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078037.P13936996706236331033

`Δ[A123958(n+2)]`
-/

namespace A078037.P13936996706236331033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078037.P13936996706236331033

noncomputable section

/-- A078037: Expansion of (1-x)/(1+2*x^2+2*x^3).

Offset 0, canonical program `A078037.P13936996706236331033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A078037 (n : ℕ) : ℤ :=
  A078037.P13936996706236331033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A078037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078414.P9815211639586840057

`A242603(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A078414.P9815211639586840057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242603 (a (n - 1) + a (n - 2)).toNat

end

end A078414.P9815211639586840057

noncomputable section

/-- A078414: a(n) = (a(n-1)+a(n-2))/7^k, where 7^k is the highest power of 7 dividing a(n-1)+a(n-2).

Offset 1, canonical program `A078414.P9815211639586840057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078414 (n : ℕ) : ℤ :=
  A078414.P9815211639586840057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078429.P3517718782682471896

`∑{d}[n+1, #*A210826((n+1)/#)]`
-/

namespace A078429.P3517718782682471896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P3517718782682471896

noncomputable section

/-- A078429: Number of integers k among 1..n for which gcd(k,n) is a cube.

Offset 1, canonical program `A078429.P3517718782682471896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078429 (n : ℕ) : ℤ :=
  A078429.P3517718782682471896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079000.P1314353409810898066

`A079948(n)+a(n-1)` with `a(0)=1`
-/

namespace A079000.P1314353409810898066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079948 n + a (n - 1)

end

end A079000.P1314353409810898066

noncomputable section

/-- A079000: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is odd".

Offset 1, canonical program `A079000.P1314353409810898066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079000 (n : ℕ) : ℤ :=
  A079000.P1314353409810898066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079523.P16371928625451652770

`1/2*A081706(2*n+1)`
-/

namespace A079523.P16371928625451652770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A081706 (2 * n + 1) : ℚ)

end

end A079523.P16371928625451652770

noncomputable section

/-- A079523: Utterly odd numbers: numbers whose binary representation ends in an odd number of ones.

Offset 1, canonical program `A079523.P16371928625451652770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079523 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079523.P16371928625451652770.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079726.P14487602782044974592

`2*(n+1)-A156253(n+1)`
-/

namespace A079726.P14487602782044974592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A156253 (n + 1)

end

end A079726.P14487602782044974592

noncomputable section

/-- A079726: a(1)=1, a(n) is the smallest integer > a(n-1) such that a(n) is even if k(n)=1, a(n) is odd if k(n)=2, where k(n) denotes the n-th term of the Kolakoski sequence (A000002).

Offset 1, canonical program `A079726.P14487602782044974592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079726 (n : ℕ) : ℤ :=
  A079726.P14487602782044974592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079898.P5535237545047287973

`∏{e}[n+1, #+1]-a(n-1)*A322483(n²)` with `a(0)=1`
-/

namespace A079898.P5535237545047287973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - a (n - 1) * A322483 (n ^ 2)

end

end A079898.P5535237545047287973

noncomputable section

/-- A079898: a(1) = 1; a(n) = tau(n) - tau(n-1)* a(n-1) if n > 1.

Offset 1, canonical program `A079898.P5535237545047287973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A079898 (n : ℕ) : ℤ :=
  A079898.P5535237545047287973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A079898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080075.P5494454134783611628

`A116882(n+2)+1`
-/

namespace A080075.P5494454134783611628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 2) + 1

end

end A080075.P5494454134783611628

noncomputable section

/-- A080075: Proth numbers: of the form k*2^m + 1 for k odd, m >= 1 and 2^m > k.

Offset 1, canonical program `A080075.P5494454134783611628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080075 (n : ℕ) : ℤ :=
  A080075.P5494454134783611628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080257.P6699646768947114599

`lt[6, A226602(n)]`
-/

namespace A080257.P6699646768947114599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P6699646768947114599

noncomputable section

/-- A080257: Numbers having at least two distinct or a total of at least three prime factors.

Offset 1, canonical program `A080257.P6699646768947114599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080257 (n : ℕ) : ℤ :=
  (A080257.P6699646768947114599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080541.P3733174913370519765

`A162751(A346301(n+2))`
-/

namespace A080541.P3733174913370519765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162751 (A346301 (n + 2)).toNat

end

end A080541.P3733174913370519765

noncomputable section

/-- A080541: In binary representation: keep the first digit and left-rotate the others.

Offset 1, canonical program `A080541.P3733174913370519765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080541 (n : ℕ) : ℤ :=
  A080541.P3733174913370519765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A080541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080702.P6276148619349041055

`A166079(n+6)+n`
-/

namespace A080702.P6276148619349041055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 6) + (n : ℤ)

end

end A080702.P6276148619349041055

noncomputable section

/-- A080702: a(1)=3; for n>1, a(n) = smallest number > a(n-1) such that the condition "if n is in the sequence then a(n) is even" is satisfied.

Offset 1, canonical program `A080702.P6276148619349041055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080702 (n : ℕ) : ℤ :=
  A080702.P6276148619349041055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080703.P3176310097382570726

`A353651(n+4)-3`
-/

namespace A080703.P3176310097382570726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353651 (n + 4) - 3

end

end A080703.P3176310097382570726

noncomputable section

/-- A080703: a(1)=5; for n>1, a(n) = smallest number > a(n-1) such that the condition "if n is in the sequence then a(n) is a multiple of 4" is satisfied.

Offset 1, canonical program `A080703.P3176310097382570726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A080703 (n : ℕ) : ℤ :=
  A080703.P3176310097382570726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A080703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080724.P3228021590566063094

`A080726(n+1)-1`
-/

namespace A080724.P3228021590566063094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080726 (n + 1) - 1

end

end A080724.P3228021590566063094

noncomputable section

/-- A080724: a(0) = 2; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 1 mod 3".

Offset 0, canonical program `A080724.P3228021590566063094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080724 (n : ℕ) : ℤ :=
  A080724.P3228021590566063094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081295.P4102932837393743060

`abs(∑{d}[n+1, A123344(#)])`
-/

namespace A081295.P4102932837393743060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A123344 d|

end

end A081295.P4102932837393743060

noncomputable section

/-- A081295: a(n) = (-1)^(n+1) * coefficient of x^n in Sum_{k>=1} x^k/(1+2*x^k).

Offset 1, canonical program `A081295.P4102932837393743060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081295 (n : ℕ) : ℤ :=
  A081295.P4102932837393743060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081399.P317381506345155066

`∑[A252736(A111284(n+1))-A252736(n+1)]`
-/

namespace A081399.P317381506345155066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A111284 (n + 1)).toNat - A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081399.P317381506345155066

noncomputable section

/-- A081399: Bigomega of the n-th Catalan number: a(n) = A001222(A000108(n)).

Offset 0, canonical program `A081399.P317381506345155066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A081399 (n : ℕ) : ℤ :=
  A081399.P317381506345155066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A081399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081607.P12536140067758024536

`1-A081608(n)+n`
-/

namespace A081607.P12536140067758024536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081608 n + (n : ℤ)

end

end A081607.P12536140067758024536

noncomputable section

/-- A081607: Number of numbers <= n having at least one 0 in their ternary representation.

Offset 0, canonical program `A081607.P12536140067758024536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081607 (n : ℕ) : ℤ :=
  A081607.P12536140067758024536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081690.P12557663006376812885

`comp[A081691(n+1)]`
-/

namespace A081690.P12557663006376812885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081690.P12557663006376812885

noncomputable section

/-- A081690: From P-positions in a certain game.

Offset 0, canonical program `A081690.P12557663006376812885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081690 (n : ℕ) : ℤ :=
  (A081690.P12557663006376812885.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081729.P13956299838836808291

`A209229(n)+A033999(n)`
-/

namespace A081729.P13956299838836808291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n + A033999 n

end

end A081729.P13956299838836808291

noncomputable section

/-- A081729: Expansion of Sum(k>=0, x^(2^k)) + 1/(1+x). First differences of A007456 (gossip sequence) for n>1.

Offset 0, canonical program `A081729.P13956299838836808291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081729 (n : ℕ) : ℤ :=
  A081729.P13956299838836808291.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082019.P8023442530786272007

`∑[4*n]+1-A157671(n+1)%2`
-/

namespace A082019.P8023442530786272007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - Int.tmod (A157671 (n + 1)) 2

end

end A082019.P8023442530786272007

noncomputable section

/-- A082019: Diagonal of square array T(n,k) with T(1,1) = 1 where antidiagonals are filled alternating upwards and downwards with the smallest number not already used such that the n-th antidiagonal sum is a multiple of n.

Offset 1, canonical program `A082019.P8023442530786272007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082019 (n : ℕ) : ℤ :=
  A082019.P8023442530786272007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082742.P3759816296504135577

`2*A134519(n+1)`
-/

namespace A082742.P3759816296504135577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134519 (n + 1)

end

end A082742.P3759816296504135577

noncomputable section

/-- A082742: Indices of occurrences of 2 in A004738.

Offset 1, canonical program `A082742.P3759816296504135577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082742 (n : ℕ) : ℤ :=
  A082742.P3759816296504135577.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082873.P13323215949670490727

`xor(A121262(n), A194273(n))`
-/

namespace A082873.P13323215949670490727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121262 n) (A194273 n)

end

end A082873.P13323215949670490727

noncomputable section

/-- A082873: Independence number of king KG_2 on triangle board B_n.

Offset 1, canonical program `A082873.P13323215949670490727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082873 (n : ℕ) : ℤ :=
  A082873.P13323215949670490727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083528.P17588683822829383858

`A016813(A094920(n+1))%Δ[A027691(n)]`
-/

namespace A083528.P17588683822829383858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 (A094920 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A083528.P17588683822829383858

noncomputable section

/-- A083528: a(n) = 5^n mod 2*n.

Offset 1, canonical program `A083528.P17588683822829383858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083528 (n : ℕ) : ℤ :=
  A083528.P17588683822829383858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083741.P6552315304162526779

`A245788(n)-A298011(n)`
-/

namespace A083741.P6552315304162526779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A298011 n

end

end A083741.P6552315304162526779

noncomputable section

/-- A083741: a(n) = L(n) + a(L(n)), where L(n) = n - 2^floor(log_2(n)) (A053645).

Offset 0, canonical program `A083741.P6552315304162526779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083741 (n : ℕ) : ℤ :=
  A083741.P6552315304162526779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084088.P9034609164511326196

`eq[(n+1)%3+1, A000035(A123726(n))]`
-/

namespace A084088.P9034609164511326196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A123726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084088.P9034609164511326196

noncomputable section

/-- A084088: Numbers k such that k == 2 (mod 3) and the exponent of the highest power of 2 dividing k is even.

Offset 1, canonical program `A084088.P9034609164511326196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084088 (n : ℕ) : ℤ :=
  (A084088.P9034609164511326196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084091.P3642473428871494014

`(A129527(n)+1)%3-1`
-/

namespace A084091.P3642473428871494014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129527 n + 1) 3 - 1

end

end A084091.P3642473428871494014

noncomputable section

/-- A084091: Expansion of Sum_{k>=0} x^2^k/(1+x^2^k+x^2^(k+1)).

Offset 0, canonical program `A084091.P3642473428871494014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084091 (n : ℕ) : ℤ :=
  A084091.P3642473428871494014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084116.P2149557461537845173

`eq[1, A353788(n+1)]+1`
-/

namespace A084116.P2149557461537845173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084116.P2149557461537845173

noncomputable section

/-- A084116: Numbers m such that A084115(m) = 1.

Offset 1, canonical program `A084116.P2149557461537845173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084116 (n : ℕ) : ℤ :=
  (A084116.P2149557461537845173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084220.P3476602202439273006

`∑{d}[n+1, A013954(#)*A334659((n+1)/#)]`
-/

namespace A084220.P3476602202439273006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084220.P3476602202439273006

noncomputable section

/-- A084220: a(n) = sigma_6(n^2)/sigma_3(n^2).

Offset 1, canonical program `A084220.P3476602202439273006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084220 (n : ℕ) : ℤ :=
  A084220.P3476602202439273006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084360.P16112422958158698758

`A230980(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A084360.P16112422958158698758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A230980 (n - 1) - a (n - 1)

end

end A084360.P16112422958158698758

noncomputable section

/-- A084360: Number of partitions of n into pair of parts whose difference is a prime.

Offset 1, canonical program `A084360.P16112422958158698758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084360 (n : ℕ) : ℤ :=
  A084360.P16112422958158698758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084471.P2112546054661529381

`A088697(n+1)-A124108(A035327(n+1))`
-/

namespace A084471.P2112546054661529381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088697 (n + 1) - A124108 (A035327 (n + 1)).toNat

end

end A084471.P2112546054661529381

noncomputable section

/-- A084471: Change 0 to 00 in binary representation of n.

Offset 1, canonical program `A084471.P2112546054661529381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A084471 (n : ℕ) : ℤ :=
  A084471.P2112546054661529381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A084471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084505.P12495345020168809625

`A084506(n)+a(n-1)` with `a(0)=0`
-/

namespace A084505.P12495345020168809625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084506 n + a (n - 1)

end

end A084505.P12495345020168809625

noncomputable section

/-- A084505: Partial sums of A084506.

Offset 0, canonical program `A084505.P12495345020168809625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084505 (n : ℕ) : ℤ :=
  A084505.P12495345020168809625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084518.P6007664406315500494

`∑[A084519(n+1)]`
-/

namespace A084518.P6007664406315500494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084518.P6007664406315500494

noncomputable section

/-- A084518: Partial sums of A084519. Positions of ones in the first differences of A084516.

Offset 1, canonical program `A084518.P6007664406315500494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A084518 (n : ℕ) : ℤ :=
  A084518.P6007664406315500494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A084518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085259.P130799474644936207

`A029925(n)-floor(A177154(n)/5)`
-/

namespace A085259.P130799474644936207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029925 n - ⌊(A177154 n : ℚ) / 5⌋

end

end A085259.P130799474644936207

noncomputable section

/-- A085259: Integer part of the conversion from Celsius to Fahrenheit.

Offset 0, canonical program `A085259.P130799474644936207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085259 (n : ℕ) : ℤ :=
  A085259.P130799474644936207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057020.P17158263776737705447

`A000203(n+1)/A009205(n+1)`
-/

namespace A057020.P17158263776737705447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057020.P17158263776737705447

noncomputable section

/-- A057020: Numerator of (sum of divisors of n / number of divisors of n).

Offset 1, canonical program `A057020.P17158263776737705447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057020 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057020.P17158263776737705447.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057494.P2374338064675521297

`A006218(10^n)`
-/

namespace A057494.P2374338064675521297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (10 ^ n)

end

end A057494.P2374338064675521297

noncomputable section

/-- A057494: a(n) = Sum_{k = 1..10^n} d(k) where d(n) = number of divisors of n (A000005).

Offset 0, canonical program `A057494.P2374338064675521297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057494 (n : ℕ) : ℤ :=
  A057494.P2374338064675521297.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059246.P1456171731783157114

`lcm(n+1, A006218(n+1))/(n+1)`
-/

namespace A059246.P1456171731783157114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006218 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A059246.P1456171731783157114

noncomputable section

/-- A059246: Numerator of Sum_{j=1..n} d(j)/n, where d = number of divisors function (A000005).

Offset 1, canonical program `A059246.P1456171731783157114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059246.P1456171731783157114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059867.P8537332789711510249

`A029930(ceil(n/2))`
-/

namespace A059867.P8537332789711510249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 ⌈(n : ℚ) / 2⌉.toNat

end

end A059867.P8537332789711510249

noncomputable section

/-- A059867: Number of irreducible representations of the symmetric group S_n that have odd degree.

Offset 1, canonical program `A059867.P8537332789711510249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059867 (n : ℕ) : ℤ :=
  A059867.P8537332789711510249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059957.P9254252331213831727

`A001221(n+1)+A001221(n+2)`
-/

namespace A059957.P9254252331213831727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001221 (n + 2)

end

end A059957.P9254252331213831727

noncomputable section

/-- A059957: Sum of number of distinct prime factors of n and n+1, or number of distinct prime factors of n(n+1) or of lcm(n,n+1).

Offset 1, canonical program `A059957.P9254252331213831727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059957 (n : ℕ) : ℤ :=
  A059957.P9254252331213831727.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060108.P5431568237961309099

`(A007522(n+1)²-1)/24`
-/

namespace A060108.P5431568237961309099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007522 (n + 1) ^ 2 - 1 : ℚ) / 24

end

end A060108.P5431568237961309099

noncomputable section

/-- A060108: Sequence of sums based on primes = 7 mod 8.

Offset 1, canonical program `A060108.P5431568237961309099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060108 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060108.P5431568237961309099.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060967.P12225233603475588556

`A000720(A017910(n))`
-/

namespace A060967.P12225233603475588556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A017910 n).toNat

end

end A060967.P12225233603475588556

noncomputable section

/-- A060967: Number of squared primes <= 2^n.

Offset 0, canonical program `A060967.P12225233603475588556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060967 (n : ℕ) : ℤ :=
  A060967.P12225233603475588556.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060970.P18394782073799357360

`A000720(A018048(n))`
-/

namespace A060970.P18394782073799357360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018048 n).toNat

end

end A060970.P18394782073799357360

noncomputable section

/-- A060970: Number of fourth powers of primes <= 2^n.

Offset 0, canonical program `A060970.P18394782073799357360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060970 (n : ℕ) : ℤ :=
  A060970.P18394782073799357360.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061009.P3866037910941706690

`A061008(n+1)-2`
-/

namespace A061009.P3866037910941706690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (n + 1) - 2

end

end A061009.P3866037910941706690

noncomputable section

/-- A061009: a(n) = -2 + Sum_{j=1..n} (-(n-1)!) mod n.

Offset 1, canonical program `A061009.P3866037910941706690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061008, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061009 (n : ℕ) : ℤ :=
  A061009.P3866037910941706690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061008, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061318.P13431789142385319177

`A061316(n)+A006007(n)²`
-/

namespace A061318.P13431789142385319177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n + A006007 n ^ 2

end

end A061318.P13431789142385319177

noncomputable section

/-- A061318: Column 3 of A061314.

Offset 0, canonical program `A061318.P13431789142385319177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061318 (n : ℕ) : ℤ :=
  A061318.P13431789142385319177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061398.P7322607248845730333

`A013928(A000040(n+2)+1)-A013928(A000040(n+1)+1)-1`
-/

namespace A061398.P7322607248845730333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000040 (n + 2) + 1).toNat - A013928 (A000040 (n + 1) + 1).toNat - 1

end

end A061398.P7322607248845730333

noncomputable section

/-- A061398: Number of squarefree integers between prime(n) and prime(n+1).

Offset 1, canonical program `A061398.P7322607248845730333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061398 (n : ℕ) : ℤ :=
  A061398.P7322607248845730333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062050.P11990110437481547125

`A053645(n+1)+1`
-/

namespace A062050.P11990110437481547125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) + 1

end

end A062050.P11990110437481547125

noncomputable section

/-- A062050: n-th chunk consists of the numbers 1, ..., 2^n.

Offset 1, canonical program `A062050.P11990110437481547125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062050 (n : ℕ) : ℤ :=
  A062050.P11990110437481547125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062550.P429279295105592696

`A006218(2*n)`
-/

namespace A062550.P429279295105592696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n)

end

end A062550.P429279295105592696

noncomputable section

/-- A062550: a(n) = Sum_{k = 1..2n} floor(2n/k).

Offset 0, canonical program `A062550.P429279295105592696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062550 (n : ℕ) : ℤ :=
  A062550.P429279295105592696.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062758.P10816466318006647829

`A007955(n+1)²`
-/

namespace A062758.P10816466318006647829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) ^ 2

end

end A062758.P10816466318006647829

noncomputable section

/-- A062758: Product of squares of divisors of n.

Offset 1, canonical program `A062758.P10816466318006647829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062758 (n : ℕ) : ℤ :=
  A062758.P10816466318006647829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062953.P16423185383085465747

`A007947(n+1)*(-1)^A001221(n+1)`
-/

namespace A062953.P16423185383085465747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) * (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A062953.P16423185383085465747

noncomputable section

/-- A062953: Multiplicative with a(p^e) = -p.

Offset 1, canonical program `A062953.P16423185383085465747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062953.P16423185383085465747.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063464.P10174242227482092936

`eq[A001221(n+1), A001221(n+3)]+1`
-/

namespace A063464.P10174242227482092936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063464.P10174242227482092936

noncomputable section

/-- A063464: Numbers k such that omega(k) = omega(k+2), where omega(k) is the number of distinct prime divisors of k.

Offset 1, canonical program `A063464.P10174242227482092936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063464 (n : ℕ) : ℤ :=
  (A063464.P10174242227482092936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063465.P9723463034351895648

`eq[A001221(n+1), A001221(n+4)]+1`
-/

namespace A063465.P9723463034351895648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063465.P9723463034351895648

noncomputable section

/-- A063465: Number k such that omega(k) = omega(k+3), where omega(k) is the number of distinct prime divisors of k.

Offset 1, canonical program `A063465.P9723463034351895648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063465 (n : ℕ) : ℤ :=
  (A063465.P9723463034351895648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063958.P8283110959988242133

`A008472(n+1)-A063956(n+1)`
-/

namespace A063958.P8283110959988242133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A063956 (n + 1)

end

end A063958.P8283110959988242133

noncomputable section

/-- A063958: Sum of the non-unitary prime divisors of n: sum of those prime divisors for which the exponent in the prime factorization exceeds 1.

Offset 1, canonical program `A063958.P8283110959988242133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063958 (n : ℕ) : ℤ :=
  A063958.P8283110959988242133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064517.P16939115465743237855

`record[(n+1)*A010052(A000720(n+1))]`
-/

namespace A064517.P16939115465743237855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064517.P16939115465743237855

noncomputable section

/-- A064517: Numbers k such that pi(k) is a square.

Offset 1, canonical program `A064517.P16939115465743237855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A064517 (n : ℕ) : ℤ :=
  A064517.P16939115465743237855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A064517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064843.P4509885471937543371

`A064842(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064843.P4509885471937543371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064842 (n + 1) : ℚ) / 2

end

end A064843.P4509885471937543371

noncomputable section

/-- A064843: a(n) = A064842(n)/2.

Offset 1, canonical program `A064843.P4509885471937543371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064843 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064843.P4509885471937543371.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064987.P15308919020374608347

`A009194(n+1)*A009242(n+1)`
-/

namespace A064987.P15308919020374608347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) * A009242 (n + 1)

end

end A064987.P15308919020374608347

noncomputable section

/-- A064987: a(n) = n*sigma(n).

Offset 1, canonical program `A064987.P15308919020374608347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A009242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064987 (n : ℕ) : ℤ :=
  A064987.P15308919020374608347.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A009242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065043.P15027714353296076488

`A007421(n+1)-1`
-/

namespace A065043.P15027714353296076488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1) - 1

end

end A065043.P15027714353296076488

noncomputable section

/-- A065043: Characteristic function of the numbers with an even number of prime factors (counted with multiplicity): a(n) = 1 if n = A028260(k) for some k then 1 else 0.

Offset 1, canonical program `A065043.P15027714353296076488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043 (n : ℕ) : ℤ :=
  A065043.P15027714353296076488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065309.P487679729421554723

`A000040(n+1)-A000040(n-A000720(n+1)+1)`
-/

namespace A065309.P487679729421554723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000040 ((n : ℤ) - A000720 (n + 1) + 1).toNat

end

end A065309.P487679729421554723

noncomputable section

/-- A065309: a(n) = prime(n) - prime(n - pi(n)).

Offset 1, canonical program `A065309.P487679729421554723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065309 (n : ℕ) : ℤ :=
  A065309.P487679729421554723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065313.P140214373438614317

`A000720((n+1)*∑[A080545(n+1)])`
-/

namespace A065313.P140214373438614317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065313.P140214373438614317

noncomputable section

/-- A065313: a(n) = pi(n*pi(n)).

Offset 1, canonical program `A065313.P140214373438614317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 751 terms. -/
def A065313 (n : ℕ) : ℤ :=
  A065313.P140214373438614317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 751 terms. -/
def A065313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065335.P13783723182241918212

`A007949(n+1)*A065333(n+1)`
-/

namespace A065335.P13783723182241918212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A065333 (n + 1)

end

end A065335.P13783723182241918212

noncomputable section

/-- A065335: 3-exponents to represent 3-smooth numbers (A065332).

Offset 1, canonical program `A065335.P13783723182241918212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065335 (n : ℕ) : ℤ :=
  A065335.P13783723182241918212.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065855.P16805213270251966039

`A062298(n+1)-1`
-/

namespace A065855.P16805213270251966039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - 1

end

end A065855.P16805213270251966039

noncomputable section

/-- A065855: Number of composites <= n.

Offset 1, canonical program `A065855.P16805213270251966039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065855 (n : ℕ) : ℤ :=
  A065855.P16805213270251966039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066086.P3642084083206421906

`A009223(∏{p}[n+1, #])`
-/

namespace A066086.P3642084083206421906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066086.P3642084083206421906

noncomputable section

/-- A066086: Greatest common divisor of product (p-1) and product (p+1), where p ranges over distinct prime divisors of n; a(n) = gcd(A048250(n), A173557(n)).

Offset 1, canonical program `A066086.P3642084083206421906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066086 (n : ℕ) : ℤ :=
  A066086.P3642084083206421906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066296.P13748426618787088347

`floor(root(A008620(3*(n+1)), A001221(n+2)))`
-/

namespace A066296.P13748426618787088347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008620 (3 * (n + 1)) : ℝ) ^ (1 / (A001221 (n + 2) : ℝ))⌋

end

end A066296.P13748426618787088347

noncomputable section

/-- A066296: a(n) = floor(n^(1/omega(n))).

Offset 2, canonical program `A066296.P13748426618787088347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A066296 (n : ℕ) : ℤ :=
  A066296.P13748426618787088347.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A066296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066859.P18175774334382217177

`A000203(n+1)*A024816(n+1)`
-/

namespace A066859.P18175774334382217177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A024816 (n + 1)

end

end A066859.P18175774334382217177

noncomputable section

/-- A066859: Product of sums of divisors and non-divisors.

Offset 1, canonical program `A066859.P18175774334382217177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066859 (n : ℕ) : ℤ :=
  A066859.P18175774334382217177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067046.P15996770694766795448

`A033931(n+1)/6`
-/

namespace A067046.P15996770694766795448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033931 (n + 1) : ℚ) / 6

end

end A067046.P15996770694766795448

noncomputable section

/-- A067046: a(n) = lcm(n, n+1, n+2)/6.

Offset 1, canonical program `A067046.P15996770694766795448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067046 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067046.P15996770694766795448.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067266.P5387669520390554361

`eq[A001221(n+1), A002321(n+1)]+1`
-/

namespace A067266.P5387669520390554361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067266.P5387669520390554361

noncomputable section

/-- A067266: Numbers n such that omega(n)=M(n) where omega(n) is A001221(n) and M(n) is the Mertens function A002321(n).

Offset 1, canonical program `A067266.P5387669520390554361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A067266 (n : ℕ) : ℤ :=
  (A067266.P5387669520390554361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A067266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067290.P124068687972599428

`lt[A000040(n+1), A038040(n+1)]+1`
-/

namespace A067290.P124068687972599428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067290.P124068687972599428

noncomputable section

/-- A067290: Numbers n such that prime(n)

Offset 1, canonical program `A067290.P124068687972599428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A067290 (n : ℕ) : ℤ :=
  (A067290.P124068687972599428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A067290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067291.P5863031356185478968

`lt[A038040(n+1), A000040(n+1)]+1`
-/

namespace A067291.P5863031356185478968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067291.P5863031356185478968

noncomputable section

/-- A067291: Numbers n such that prime(n)>n*tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A067291.P5863031356185478968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A067291 (n : ℕ) : ℤ :=
  (A067291.P5863031356185478968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A067291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067395.P4961952494524289833

`Δ[A067368(n+1)]`
-/

namespace A067395.P4961952494524289833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067395.P4961952494524289833

noncomputable section

/-- A067395: First differences of A067368.

Offset 1, canonical program `A067395.P4961952494524289833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067395 (n : ℕ) : ℤ :=
  A067395.P4961952494524289833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068350.P17751297019967877582

`lt[A000040(2*n+1), A038040(n+1)]+1`
-/

namespace A068350.P17751297019967877582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A068350.P17751297019967877582

noncomputable section

/-- A068350: Numbers n such that n*tau(n) > prime(2*n) where tau(n) = A000005(n).

Offset 1, canonical program `A068350.P17751297019967877582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A068350 (n : ℕ) : ℤ :=
  (A068350.P17751297019967877582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A068350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068406.P7194259482102905941

`eq[A001221(2*n+3), A001221(n+1)]+1`
-/

namespace A068406.P7194259482102905941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068406.P7194259482102905941

noncomputable section

/-- A068406: Numbers n such that n and 2n+1 have the same number of prime divisors.

Offset 1, canonical program `A068406.P7194259482102905941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068406 (n : ℕ) : ℤ :=
  (A068406.P7194259482102905941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068903.P4755967412803667311

`C(∑{d}[n+1, gcd(n, #)], A001221(n+1))`
-/

namespace A068903.P4755967412803667311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) (A001221 (n + 1)).toNat

end

end A068903.P4755967412803667311

noncomputable section

/-- A068903: Binomial(tau(n),omega(n)), where tau(n) is the number of divisors of n (A000005) and omega the number of distinct prime factors (A001221).

Offset 1, canonical program `A068903.P4755967412803667311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068903 (n : ℕ) : ℤ :=
  (A068903.P4755967412803667311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070548.P147621801857442245

`1/2*(A013928(n+2)+A002321(n+1))`
-/

namespace A070548.P147621801857442245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A013928 (n + 2) + A002321 (n + 1) : ℚ)

end

end A070548.P147621801857442245

noncomputable section

/-- A070548: a(n) = Cardinality{ k in range 1 <= k <= n such that Moebius(k) = 1 }.

Offset 1, canonical program `A070548.P147621801857442245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070548 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070548.P147621801857442245.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070803.P5306701064378853204

`A000720(∑{d}[n+1, #])`
-/

namespace A070803.P5306701064378853204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A070803.P5306701064378853204

noncomputable section

/-- A070803: Number of primes not exceeding sum of divisors of n.

Offset 1, canonical program `A070803.P5306701064378853204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070803 (n : ℕ) : ℤ :=
  A070803.P5306701064378853204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070804.P8181615467830447787

`A000720((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A070804.P8181615467830447787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A070804.P8181615467830447787

noncomputable section

/-- A070804: Number of primes not exceeding phi(n).

Offset 1, canonical program `A070804.P8181615467830447787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070804 (n : ℕ) : ℤ :=
  A070804.P8181615467830447787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071973.P12908464986149979114

`A000720(A001672(n))`
-/

namespace A071973.P12908464986149979114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001672 n).toNat

end

end A071973.P12908464986149979114

noncomputable section

/-- A071973: Number of primes less than or equal to Pi^n.

Offset 0, canonical program `A071973.P12908464986149979114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071973 (n : ℕ) : ℤ :=
  A071973.P12908464986149979114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071986.P16196602093413610135

`A000035(A000720(n+1))`
-/

namespace A071986.P16196602093413610135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000720 (n + 1)).toNat

end

end A071986.P16196602093413610135

noncomputable section

/-- A071986: Parity of the prime-counting function pi(n).

Offset 1, canonical program `A071986.P16196602093413610135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071986 (n : ℕ) : ℤ :=
  A071986.P16196602093413610135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072358.P17985313231785458440

`A060431(n+1)-A013928(n+2)`
-/

namespace A072358.P17985313231785458440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (n + 1) - A013928 (n + 2)

end

end A072358.P17985313231785458440

noncomputable section

/-- A072358: Number of cubefree numbers <= n which are not squarefree.

Offset 1, canonical program `A072358.P17985313231785458440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A060431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072358 (n : ℕ) : ℤ :=
  A072358.P17985313231785458440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A060431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072548.P12306959769484027666

`A000203(n+2)%A000720(n+2)`
-/

namespace A072548.P12306959769484027666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A000720 (n + 2))

end

end A072548.P12306959769484027666

noncomputable section

/-- A072548: a(n) = sigma(n) mod PrimePi(n).

Offset 2, canonical program `A072548.P12306959769484027666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072548 (n : ℕ) : ℤ :=
  A072548.P12306959769484027666.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072692.P2871588805626277779

`A024916(10^n)`
-/

namespace A072692.P2871588805626277779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (10 ^ n)

end

end A072692.P2871588805626277779

noncomputable section

/-- A072692: Sum of sigma(j) for 1<=j<=10^n, where sigma(j) is the sum of the divisors of j.

Offset 0, canonical program `A072692.P2871588805626277779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072692 (n : ℕ) : ℤ :=
  A072692.P2871588805626277779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072692.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073395.P12803190185888961322

`A008472(n+1)*A001414(n+1)`
-/

namespace A073395.P12803190185888961322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A001414 (n + 1)

end

end A073395.P12803190185888961322

noncomputable section

/-- A073395: Product of sums of prime factors of n: with and without repetition.

Offset 1, canonical program `A073395.P12803190185888961322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073395 (n : ℕ) : ℤ :=
  A073395.P12803190185888961322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074372.P4137528993984796168

`1+A008472(n+1)`
-/

namespace A074372.P4137528993984796168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A008472 (n + 1)

end

end A074372.P4137528993984796168

noncomputable section

/-- A074372: 1 + the sum of the distinct primes dividing n.

Offset 1, canonical program `A074372.P4137528993984796168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074372 (n : ℕ) : ℤ :=
  A074372.P4137528993984796168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074816.P6381608744235882068

`3^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074816.P6381608744235882068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A074816.P6381608744235882068

noncomputable section

/-- A074816: a(n) = 3^A001221(n) = 3^omega(n).

Offset 1, canonical program `A074816.P6381608744235882068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074816 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074816.P6381608744235882068.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074939.P18430168348576609001

`and(-2, A191107(n+1))`
-/

namespace A074939.P18430168348576609001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A191107 (n + 1))

end

end A074939.P18430168348576609001

noncomputable section

/-- A074939: Even numbers such that base 3 representation contains no 2.

Offset 0, canonical program `A074939.P18430168348576609001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074939 (n : ℕ) : ℤ :=
  A074939.P18430168348576609001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075592.P12591046907558416242

`lt[(n+2)%A001221(n+2), 1]+2`
-/

namespace A075592.P12591046907558416242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A001221 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A075592.P12591046907558416242

noncomputable section

/-- A075592: Numbers n such that number of distinct prime divisors of n is a divisor of n.

Offset 1, canonical program `A075592.P12591046907558416242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075592 (n : ℕ) : ℤ :=
  (A075592.P12591046907558416242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076360.P16775053655456500281

`A062068(n+1)-A062069(n+1)`
-/

namespace A076360.P16775053655456500281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A062069 (n + 1)

end

end A076360.P16775053655456500281

noncomputable section

/-- A076360: a(n) = d(sigma(n)) - sigma(d(n)), where d(n) is the number of divisors of n and sigma(n) is their sum.

Offset 1, canonical program `A076360.P16775053655456500281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, A062069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076360 (n : ℕ) : ℤ :=
  A076360.P16775053655456500281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, A062069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076479.P10025313382514299279

`(-1)^A001221(n+1)`
-/

namespace A076479.P10025313382514299279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A076479.P10025313382514299279

noncomputable section

/-- A076479: a(n) = mu(rad(n)), where mu is the Moebius-function (A008683) and rad is the radical or squarefree kernel (A007947).

Offset 1, canonical program `A076479.P10025313382514299279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076479.P10025313382514299279.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076526.P164306316077260978

`A001221(n+1)*A051903(n+1)`
-/

namespace A076526.P164306316077260978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A051903 (n + 1)

end

end A076526.P164306316077260978

noncomputable section

/-- A076526: a(n) = r * max(e_1, ..., e_r), where n = p_1^e_1 . .... p_r^e_r is the canonical prime factorization of n, a(1) = 0.

Offset 1, canonical program `A076526.P164306316077260978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076526 (n : ℕ) : ℤ :=
  A076526.P164306316077260978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076640.P10692691478282624648

`A053475(n+1)-1`
-/

namespace A076640.P10692691478282624648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1) - 1

end

end A076640.P10692691478282624648

noncomputable section

/-- A076640: a(1)=1, a(n) = a(n-phi(n)) + 1.

Offset 1, canonical program `A076640.P10692691478282624648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076640 (n : ℕ) : ℤ :=
  A076640.P10692691478282624648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076757.P14961246049753575220

`p?[A000720(n+1)+1+n]`
-/

namespace A076757.P14961246049753575220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P14961246049753575220

noncomputable section

/-- A076757: Primes of the form n + pi(n), that is, generated in A077510.

Offset 1, canonical program `A076757.P14961246049753575220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. -/
def A076757 (n : ℕ) : ℤ :=
  A076757.P14961246049753575220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. -/
def A076757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077963.P2045622550999659221

`(-1)^n*A077912(n)`
-/

namespace A077963.P2045622550999659221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077912 n

end

end A077963.P2045622550999659221

noncomputable section

/-- A077963: Expansion of 1/(1+x^2+2*x^3).

Offset 0, canonical program `A077963.P2045622550999659221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077963 (n : ℕ) : ℤ :=
  A077963.P2045622550999659221.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077967.P13979456392710719565

`(-1)^n*A077965(n)`
-/

namespace A077967.P13979456392710719565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077965 n

end

end A077967.P13979456392710719565

noncomputable section

/-- A077967: Expansion of 1/(1+2*x^2+x^3).

Offset 0, canonical program `A077967.P13979456392710719565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077967 (n : ℕ) : ℤ :=
  A077967.P13979456392710719565.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077968.P9536925941991514871

`(-1)^n*A077964(n)`
-/

namespace A077968.P9536925941991514871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077964 n

end

end A077968.P9536925941991514871

noncomputable section

/-- A077968: Expansion of 1/(1+2*x^2+2*x^3).

Offset 0, canonical program `A077968.P9536925941991514871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077968 (n : ℕ) : ℤ :=
  A077968.P9536925941991514871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078310.P13481393932737065980

`A064549(n+1)+1`
-/

namespace A078310.P13481393932737065980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

end

end A078310.P13481393932737065980

noncomputable section

/-- A078310: a(n) = n*rad(n) + 1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078310.P13481393932737065980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078310 (n : ℕ) : ℤ :=
  A078310.P13481393932737065980.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078442.P17307833943468967023

`Δ[a(A000720(n))+n]-1` with `a(0)=1`
-/

namespace A078442.P17307833943468967023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A000720 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A078442.P17307833943468967023

noncomputable section

/-- A078442: a(p) = a(n) + 1 if p is the n-th prime, prime(n); a(n)=0 if n is not prime.

Offset 1, canonical program `A078442.P17307833943468967023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078442 (n : ℕ) : ℤ :=
  A078442.P17307833943468967023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078708.P2046422541307744580

`∑{d}[n+1, #-A000292(#)%#]`
-/

namespace A078708.P2046422541307744580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - Int.tmod (A000292 d) (d : ℤ))

end

end A078708.P2046422541307744580

noncomputable section

/-- A078708: Sum of divisors d of n such that n/d is not congruent to 0 mod 3.

Offset 1, canonical program `A078708.P2046422541307744580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078708 (n : ℕ) : ℤ :=
  A078708.P2046422541307744580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078766.P5456847427135486972

`A000720((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A078766.P5456847427135486972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A078766.P5456847427135486972

noncomputable section

/-- A078766: Number of primes less than n*phi(n).

Offset 1, canonical program `A078766.P5456847427135486972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078766 (n : ℕ) : ℤ :=
  A078766.P5456847427135486972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079553.P850658963084864876

`floor(A048691(n+1)/Δ[A006218(n)])`
-/

namespace A079553.P850658963084864876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048691 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A079553.P850658963084864876

noncomputable section

/-- A079553: a(n) = floor( d(n^2) / d(n) ), where d() = A000005.

Offset 1, canonical program `A079553.P850658963084864876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079553 (n : ℕ) : ℤ :=
  A079553.P850658963084864876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079636.P9723229985810336634

`ceil(2/Δ[sqrt(A001749(n+1))])`
-/

namespace A079636.P9723229985810336634
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (f1 (n + 1) - f1 n)⌉

end

end A079636.P9723229985810336634

noncomputable section

/-- A079636: Smallest number whose reciprocal fits in the square-root gap of consecutive primes.

Offset 1, canonical program `A079636.P9723229985810336634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079636 (n : ℕ) : ℤ :=
  A079636.P9723229985810336634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080109.P11078218124457791392

`A002144(n+1)²`
-/

namespace A080109.P11078218124457791392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 2

end

end A080109.P11078218124457791392

noncomputable section

/-- A080109: Square of primes of the form 4k+1 (A002144).

Offset 1, canonical program `A080109.P11078218124457791392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080109 (n : ℕ) : ℤ :=
  A080109.P11078218124457791392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080151.P4425213875051615281

`sqrt(A080150(n+1))`
-/

namespace A080151.P4425213875051615281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080150 (n + 1) : ℝ)

end

end A080151.P4425213875051615281

noncomputable section

/-- A080151: Let m = Wonderful Demlo number A002477(n); a(n) = sum of digits of m.

Offset 1, canonical program `A080151.P4425213875051615281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080151.P4425213875051615281.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080169.P7383122637728498919

`A002144(n+1)^3`
-/

namespace A080169.P7383122637728498919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 3

end

end A080169.P7383122637728498919

noncomputable section

/-- A080169: Numbers that are cubes of primes of the form 4k+1 (A002144).

Offset 1, canonical program `A080169.P7383122637728498919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080169 (n : ℕ) : ℤ :=
  A080169.P7383122637728498919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080278.P16077055743499868279

`(3^(A007949(n+1)+1)-1)/2`
-/

namespace A080278.P16077055743499868279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (A007949 (n + 1) + 1 : ℤ) - 1) / 2

end

end A080278.P16077055743499868279

noncomputable section

/-- A080278: a(n) = (3^(v_3(n) + 1) - 1)/2, where v_3(n) = highest power of 3 dividing n = A007949(n).

Offset 1, canonical program `A080278.P16077055743499868279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080278.P16077055743499868279.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080680.P11142591042951162786

`A000196(A002144(n+1))`
-/

namespace A080680.P11142591042951162786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002144 (n + 1)).toNat

end

end A080680.P11142591042951162786

noncomputable section

/-- A080680: Integer part of the square root of the n-th prime of the form 4k+1.

Offset 1, canonical program `A080680.P11142591042951162786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080680 (n : ℕ) : ℤ :=
  A080680.P11142591042951162786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081239.P10224072463825662570

`(n+1)²-A013928(n+2)²`
-/

namespace A081239.P10224072463825662570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A013928 (n + 2) ^ 2

end

end A081239.P10224072463825662570

noncomputable section

/-- A081239: #{(i,j): mu(i)*mu(j) = 0, 1<=i,j<=n}, where mu=A008683 (Moebius function).

Offset 1, canonical program `A081239.P10224072463825662570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081239 (n : ℕ) : ℤ :=
  A081239.P10224072463825662570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081759.P335554766721588986

`A024894(n+1)-1`
-/

namespace A081759.P335554766721588986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - 1

end

end A081759.P335554766721588986

noncomputable section

/-- A081759: Numbers k such that 5*k+6 is prime.

Offset 1, canonical program `A081759.P335554766721588986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081759 (n : ℕ) : ℤ :=
  A081759.P335554766721588986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082073.P5879360609513135698

`A002144(n+2)-A002144(n+1)`
-/

namespace A082073.P5879360609513135698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2) - A002144 (n + 1)

end

end A082073.P5879360609513135698

noncomputable section

/-- A082073: First difference set of primes with 4k+1 form: A002144.

Offset 1, canonical program `A082073.P5879360609513135698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082073 (n : ℕ) : ℤ :=
  A082073.P5879360609513135698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082074.P1610218011491718914

`(A002144(n+2)-A002144(n+1))/4`
-/

namespace A082074.P1610218011491718914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 2) - A002144 (n + 1) : ℚ) / 4

end

end A082074.P1610218011491718914

noncomputable section

/-- A082074: One quarter of first differences of primes of the form 4*k+1 (A002144).

Offset 1, canonical program `A082074.P1610218011491718914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082074.P1610218011491718914.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082094.P9458574918407849658

`A000040(a(n-1))+A000720(a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082094.P9458574918407849658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 1)).toNat + A000720 (a (n - 2)).toNat

end

end A082094.P9458574918407849658

noncomputable section

/-- A082094: A 2nd-order recursion: a(1)=a(2)=1; a(n) = prime(a(n-1)) + primepi(a(n-2)) = A000040(a(n-1)) + A000720(a(n-2)).

Offset 1, canonical program `A082094.P9458574918407849658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082094 (n : ℕ) : ℤ :=
  A082094.P9458574918407849658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082095.P9373068488610990300

`A000040(a(n-2))+A000720(a(n-1))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082095.P9373068488610990300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 2)).toNat + A000720 (a (n - 1)).toNat

end

end A082095.P9373068488610990300

noncomputable section

/-- A082095: A 2nd order recursion: a(1)=a(2)=1, a(n) = prime(a(n-2)) + pi(a(n-1)) = A000040(a(n-2)) + A000720(a(n-1)).

Offset 1, canonical program `A082095.P9373068488610990300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082095 (n : ℕ) : ℤ :=
  A082095.P9373068488610990300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082863.P18248524647130348157

`A005087(n+1)+A001221(n+3)`
-/

namespace A082863.P18248524647130348157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + A001221 (n + 3)

end

end A082863.P18248524647130348157

noncomputable section

/-- A082863: Number of distinct prime factors of n^2-1.

Offset 2, canonical program `A082863.P18248524647130348157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082863 (n : ℕ) : ℤ :=
  A082863.P18248524647130348157.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082911.P1325522171464418407

`A000040(n+A000720(n+1)+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082911.P1325522171464418407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) + A000720 (n + 1) + 1).toNat - A000040 (n + 1)

end

end A082911.P1325522171464418407

noncomputable section

/-- A082911: a(n) = prime(n+pi(n)) - prime(n) = A000040(n+A000720(n)) - A000040(n).

Offset 1, canonical program `A082911.P1325522171464418407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082911 (n : ℕ) : ℤ :=
  A082911.P1325522171464418407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082926.P7436559770632037356

`abs(A057627(n+1)+1-A000720(n+1))`
-/

namespace A082926.P7436559770632037356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057627 (n + 1) + (1 - A000720 (n + 1))|

end

end A082926.P7436559770632037356

noncomputable section

/-- A082926: Difference between the number of primes equal to or less than n and (1 + the number of nonsquarefree numbers equal to or less than n).

Offset 1, canonical program `A082926.P7436559770632037356`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A057627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082926 (n : ℕ) : ℤ :=
  A082926.P7436559770632037356.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A057627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083271.P4870819776415420897

`A038040(n+1)+1`
-/

namespace A083271.P4870819776415420897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + 1

end

end A083271.P4870819776415420897

noncomputable section

/-- A083271: a(n) = n*tau(n) + 1.

Offset 1, canonical program `A083271.P4870819776415420897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083271 (n : ℕ) : ℤ :=
  A083271.P4870819776415420897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083403.P990697774491175710

`Δ[A013928(∑[n]+1)]`
-/

namespace A083403.P990697774491175710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083403.P990697774491175710

noncomputable section

/-- A083403: Write the numbers 1, 2, ... in a triangle with n terms in the n-th row; a(n) = number of squarefree integers in n-th row.

Offset 1, canonical program `A083403.P990697774491175710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A083403 (n : ℕ) : ℤ :=
  A083403.P990697774491175710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A083403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083899.P5886603955733939361

`∑{d}[2*(n+1), A000035(A089898(#))]`
-/

namespace A083899.P5886603955733939361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A089898 d).toNat

end

end A083899.P5886603955733939361

noncomputable section

/-- A083899: Number of divisors of n with largest digit <= 4 (base 10).

Offset 1, canonical program `A083899.P5886603955733939361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083899 (n : ℕ) : ℤ :=
  A083899.P5886603955733939361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083918.P6152787378875264210

`Δ[A218447(floor(n/2))]`
-/

namespace A083918.P6152787378875264210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218447 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083918.P6152787378875264210

noncomputable section

/-- A083918: Number of divisors of n that are congruent to 8 modulo 10.

Offset 1, canonical program `A083918.P6152787378875264210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083918 (n : ℕ) : ℤ :=
  A083918.P6152787378875264210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084294.P12286291503589741630

`A000720(n+A000040(n+1)+1)-n`
-/

namespace A084294.P12286291503589741630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n : ℤ) + A000040 (n + 1) + 1).toNat - (n : ℤ)

end

end A084294.P12286291503589741630

noncomputable section

/-- A084294: Number of primes in the interval [prime(n),n+prime(n)].

Offset 1, canonical program `A084294.P12286291503589741630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A084294 (n : ℕ) : ℤ :=
  A084294.P12286291503589741630.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A084294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074314.P16594839120600450012

`filter[A000217(n+1), A294934(#)]`
-/

namespace A074314.P16594839120600450012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P16594839120600450012

noncomputable section

/-- A074314: Deficient triangular numbers.

Offset 1, canonical program `A074314.P16594839120600450012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A074314 (n : ℕ) : ℤ :=
  A074314.P16594839120600450012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A074314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076109.P16207230652435772450

`A005920(n)%A099985(n+1)`
-/

namespace A076109.P16207230652435772450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005920 n) (A099985 (n + 1))

end

end A076109.P16207230652435772450

noncomputable section

/-- A076109: Least positive k such that k^n is the sum of n consecutive integers, or 0 if no such k exists.

Offset 1, canonical program `A076109.P16207230652435772450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076109 (n : ℕ) : ℤ :=
  A076109.P16207230652435772450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080226.P17485032280116406483

`∑{d}[n+1, A294934(#)]`
-/

namespace A080226.P17485032280116406483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294934 d

end

end A080226.P17485032280116406483

noncomputable section

/-- A080226: Number of deficient divisors of n.

Offset 1, canonical program `A080226.P17485032280116406483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080226 (n : ℕ) : ℤ :=
  A080226.P17485032280116406483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080226.provenance : SequenceMachineLib.Provenance := .conjectured

