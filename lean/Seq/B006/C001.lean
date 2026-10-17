import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A246016.P18249855041277099865

`(-1)^A055941(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246016.P18249855041277099865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A055941 n : ℤ)

end

end A246016.P18249855041277099865

noncomputable section

/-- A246016: a(n) = (-1)^A055941(n).

Offset 0, canonical program `A246016.P18249855041277099865`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246016.P18249855041277099865.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246425.P2871816530660975141

`((6*n+4)/2^A087230(n)-(2*n+1))/2`
-/

namespace A246425.P2871816530660975141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n + 4 : ℚ) / (2 : ℚ) ^ (A087230 n : ℤ) - (2 * n + 1 : ℚ)) / 2

end

end A246425.P2871816530660975141

noncomputable section

/-- A246425: In the Collatz 3x+1 problem: start at an odd number 2n+1 and find the next odd number 2m+1 in the trajectory; then a(n) = m-n.

Offset 0, canonical program `A246425.P2871816530660975141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246425 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246425.P2871816530660975141.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268355.P15495533362919716179

`8^A244413(n+1)`
-/

namespace A268355.P15495533362919716179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A244413 (n + 1) : ℤ)

end

end A268355.P15495533362919716179

noncomputable section

/-- A268355: Highest power of 8 dividing n.

Offset 1, canonical program `A268355.P15495533362919716179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268355.P15495533362919716179.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309873.P5021135503689677303

`1-2*A096268(n)`
-/

namespace A309873.P5021135503689677303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A096268 n

end

end A309873.P5021135503689677303

noncomputable section

/-- A309873: Period-doubling turn sequence, +1 when the 2-adic valuation of n is even or -1 when odd.

Offset 1, canonical program `A309873.P5021135503689677303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873 (n : ℕ) : ℤ :=
  A309873.P5021135503689677303.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143976.P15673367063394364256

`ceil(A098352(n+1)/6)`
-/

namespace A143976.P15673367063394364256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098352 (n + 1) : ℚ) / 6⌉

end

end A143976.P15673367063394364256

noncomputable section

/-- A143976: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares having x + y == 1 (mod 3); then R(m,n) is the number of UNmarked squares in the rectangle [0,m] X [0,n].

Offset 1, canonical program `A143976.P15673367063394364256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143976 (n : ℕ) : ℤ :=
  A143976.P15673367063394364256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143977.P12984671264075313918

`floor(A059036(n)/3)+1`
-/

namespace A143977.P12984671264075313918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059036 n : ℚ) / 3⌋ + 1

end

end A143977.P12984671264075313918

noncomputable section

/-- A143977: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares having |x-y| == 0 (mod 3); then R(m,n) is the number of marked squares in the rectangle [0,m] X [0,n].

Offset 1, canonical program `A143977.P12984671264075313918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143977 (n : ℕ) : ℤ :=
  A143977.P12984671264075313918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144000.P3782749524518294279

`A004396(n+1)-A004396(n-A059036(n))`
-/

namespace A144000.P3782749524518294279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - A004396 ((n : ℤ) - A059036 n).toNat

end

end A144000.P3782749524518294279

noncomputable section

/-- A144000: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which x + y == 0 (mod 3); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

Offset 1, canonical program `A144000.P3782749524518294279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144000 (n : ℕ) : ℤ :=
  A144000.P3782749524518294279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144216.P6608110429712062976

`1-A128139(n)+n`
-/

namespace A144216.P6608110429712062976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A128139 n + (n : ℤ)

end

end A144216.P6608110429712062976

noncomputable section

/-- A144216: C(m,2)+C(n,2), m>=1, n>=1: a rectangular array R read by antidiagonals.

Offset 1, canonical program `A144216.P6608110429712062976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144216 (n : ℕ) : ℤ :=
  A144216.P6608110429712062976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144217.P17527769007908988650

`val(A131816(n), 2)`
-/

namespace A144217.P17527769007908988650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2

end

end A144217.P17527769007908988650

noncomputable section

/-- A144217: Weight array of A144216: a rectangular array by antidiagonals.

Offset 1, canonical program `A144217.P17527769007908988650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217 (n : ℕ) : ℤ :=
  (A144217.P17527769007908988650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144334.P8719362573491474286

`A144328(n+1)*A144330(n)`
-/

namespace A144334.P8719362573491474286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) * A144330 n

end

end A144334.P8719362573491474286

noncomputable section

/-- A144334: Triangle read by rows, A144328^2.

Offset 1, canonical program `A144334.P8719362573491474286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144334 (n : ℕ) : ℤ :=
  A144334.P8719362573491474286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144754.P1139666669672371896

`eq[1, ∑{e}[A080791(n), #]]`
-/

namespace A144754.P1139666669672371896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144754.P1139666669672371896

noncomputable section

/-- A144754: Integers that have a prime number of 0's in their binary expansion.

Offset 1, canonical program `A144754.P1139666669672371896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A144754 (n : ℕ) : ℤ :=
  (A144754.P1139666669672371896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A144754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145677.P4837885424705967050

`abs(A132013(abs(1-n)))`
-/

namespace A145677.P4837885424705967050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A132013 |1 - (n : ℤ)|.toNat)|

end

end A145677.P4837885424705967050

noncomputable section

/-- A145677: Triangle T(n, k) read by rows: T(n, 0) = 1, T(n, n) = n, n>0, T(n,k) = 0, 0 < k < n-1.

Offset 0, canonical program `A145677.P4837885424705967050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145677 (n : ℕ) : ℤ :=
  A145677.P4837885424705967050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152088.P16024274241794701574

`eq[A032741(n)+1, A080791(n)]`
-/

namespace A152088.P16024274241794701574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P16024274241794701574

noncomputable section

/-- A152088: Positive integers k that when written in binary have exactly the same number of (non-leading) 0's as the number of divisors of k.

Offset 1, canonical program `A152088.P16024274241794701574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A152088 (n : ℕ) : ℤ :=
  (A152088.P16024274241794701574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A152088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152563.P13954880354621690569

`∩[A122516(n+1), A152535(n+1)]`
-/

namespace A152563.P13954880354621690569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152563.P13954880354621690569

noncomputable section

/-- A152563: Primes in A152535.

Offset 1, canonical program `A152563.P13954880354621690569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A152563 (n : ℕ) : ℤ :=
  (A152563.P13954880354621690569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A152563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153051.P15552689692595928018

`A153049(n+1)+2`
-/

namespace A153051.P15552689692595928018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) + 2

end

end A153051.P15552689692595928018

noncomputable section

/-- A153051: Numbers n>=9 such that 2*n-17 is not a prime.

Offset 1, canonical program `A153051.P15552689692595928018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153051 (n : ℕ) : ℤ :=
  A153051.P15552689692595928018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153869.P16225442478312210075

`A132440(abs(A132440(n+1)-n))`
-/

namespace A153869.P16225442478312210075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 |A132440 (n + 1) - (n : ℤ)|.toNat

end

end A153869.P16225442478312210075

noncomputable section

/-- A153869: Triangle read by rows, A129186 * A128064(unsigned).

Offset 1, canonical program `A153869.P16225442478312210075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153869 (n : ℕ) : ℤ :=
  A153869.P16225442478312210075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154120.P5175712412237171774

`A119502(n)*A152818(n)`
-/

namespace A154120.P5175712412237171774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A152818 n

end

end A154120.P5175712412237171774

noncomputable section

/-- A154120: Array read by antidiagonals: T(n,k) = (k+1)^n*(n+k)!.

Offset 0, canonical program `A154120.P5175712412237171774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A154120 (n : ℕ) : ℤ :=
  A154120.P5175712412237171774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A154120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154271.P2223287504034096637

`Δ[A056832(a(A002264(n))+1)]` with `a(0)=1`
-/

namespace A154271.P2223287504034096637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A056832 (f1 (A002264 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P2223287504034096637

noncomputable section

/-- A154271: Dirichlet inverse of A154272; Fully multiplicative with a(3^e) = (-1)^e, a(p^e) = 0 for primes p <> 3.

Offset 1, canonical program `A154271.P2223287504034096637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154271 (n : ℕ) : ℤ :=
  A154271.P2223287504034096637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154614.P14846977641239755938

`A092283(n+1)+A059036(n)`
-/

namespace A154614.P14846977641239755938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) + A059036 n

end

end A154614.P14846977641239755938

noncomputable section

/-- A154614: Triangle read by rows where T(m,n) = m*n + m + n - 1, 1<=n<=m.

Offset 1, canonical program `A154614.P14846977641239755938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154614 (n : ℕ) : ℤ :=
  A154614.P14846977641239755938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154684.P4294763165931368592

`A151890(n)+A131421(n+1)`
-/

namespace A154684.P4294763165931368592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n + A131421 (n + 1)

end

end A154684.P4294763165931368592

noncomputable section

/-- A154684: Triangle read by rows where T(m,n)=2mn + m + n - 3, 1<=n<=m.

Offset 1, canonical program `A154684.P4294763165931368592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154684 (n : ℕ) : ℤ :=
  A154684.P4294763165931368592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154957.P3447130498153354160

`A106314(n+1)%2`
-/

namespace A154957.P3447130498153354160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106314 (n + 1)) 2

end

end A154957.P3447130498153354160

noncomputable section

/-- A154957: A symmetric (0,1)-triangle.

Offset 0, canonical program `A154957.P3447130498153354160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154957 (n : ℕ) : ℤ :=
  A154957.P3447130498153354160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156074.P3527024655164453660

`A086800(n+1)+3-A104887(n+1)`
-/

namespace A156074.P3527024655164453660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (n + 1) + (3 - A104887 (n + 1))

end

end A156074.P3527024655164453660

noncomputable section

/-- A156074: Triangle read by rows: T(n, k) = 3 + prime(n+1) - prime(k+1) - prime(n-k+1).

Offset 0, canonical program `A156074.P3527024655164453660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156074 (n : ℕ) : ℤ :=
  A156074.P3527024655164453660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156353.P16927154994678444259

`A051129(n+1)+A051128(n+1)`
-/

namespace A156353.P16927154994678444259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) + A051128 (n + 1)

end

end A156353.P16927154994678444259

noncomputable section

/-- A156353: A symmetrical powers triangle sequence: t(n,m) = (m^(n - m) + (n - m)^m).

Offset 1, canonical program `A156353.P16927154994678444259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A156353 (n : ℕ) : ℤ :=
  A156353.P16927154994678444259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A156353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156367.P12894126842777466498

`A002262(n)!*A085478(n)`
-/

namespace A156367.P12894126842777466498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A085478 n

end

end A156367.P12894126842777466498

noncomputable section

/-- A156367: Triangle T(n, k) = binomial(n+k, 2*k)*k!, read by rows.

Offset 0, canonical program `A156367.P12894126842777466498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A156367 (n : ℕ) : ℤ :=
  A156367.P12894126842777466498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A156367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156607.P10129258563701118720

`∑{digits}[A000040(n+1), A101660(2*#²-#)]`
-/

namespace A156607.P10129258563701118720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A101660 (2 * x ^ 2 - x)).sum

end

end A156607.P10129258563701118720

noncomputable section

/-- A156607: a(n) = number of odd decimal digits of n-th prime + number of prime decimal digits of n-th prime.

Offset 1, canonical program `A156607.P10129258563701118720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156607 (n : ℕ) : ℤ :=
  A156607.P10129258563701118720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156717.P8230165376730895281

`A085478(n)+A054142(n)`
-/

namespace A156717.P8230165376730895281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n + A054142 n

end

end A156717.P8230165376730895281

noncomputable section

/-- A156717: Triangle read by rows: T(n,m) = binomial(n + m - 1, 2*m) + binomial(2*n - m - 2, 2*(n - m - 1)).

Offset 1, canonical program `A156717.P8230165376730895281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156717 (n : ℕ) : ℤ :=
  A156717.P8230165376730895281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157512.P12851112804959864328

`and(-2, ∑[A157502(n+1)])`
-/

namespace A157512.P12851112804959864328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P12851112804959864328

noncomputable section

/-- A157512: Partial sums of A157502.

Offset 1, canonical program `A157512.P12851112804959864328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157512 (n : ℕ) : ℤ :=
  A157512.P12851112804959864328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158280.P10487180928719056174

`7*A133700(2*n+1)`
-/

namespace A158280.P10487180928719056174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A133700 (2 * n + 1)

end

end A158280.P10487180928719056174

noncomputable section

/-- A158280: Octosection: A145511(8n+4) or A145501(8n+4).

Offset 0, canonical program `A158280.P10487180928719056174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158280 (n : ℕ) : ℤ :=
  A158280.P10487180928719056174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158747.P1474725733549586908

`A000040(A086800(n+1)+1)`
-/

namespace A158747.P1474725733549586908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A086800 (n + 1) + 1).toNat

end

end A158747.P1474725733549586908

noncomputable section

/-- A158747: Triangle read by rows: T(n,m)=prime( 1+prime(n+1)-prime(m+1) ).

Offset 0, canonical program `A158747.P1474725733549586908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158747 (n : ℕ) : ℤ :=
  A158747.P1474725733549586908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159638.P8621361562681332473

`1-A159637(n)`
-/

namespace A159638.P8621361562681332473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159637 n

end

end A159638.P8621361562681332473

noncomputable section

/-- A159638: Start with [1] and repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

Offset 0, canonical program `A159638.P8621361562681332473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159638 (n : ℕ) : ℤ :=
  A159638.P8621361562681332473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159919.P16525752381521222348

`A173395(n+1)+A059036(n)`
-/

namespace A159919.P16525752381521222348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173395 (n + 1) + A059036 n

end

end A159919.P16525752381521222348

noncomputable section

/-- A159919: A square array of numbers, read by antidiagonals, called Sundaram's sieve.

Offset 1, canonical program `A159919.P16525752381521222348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919 (n : ℕ) : ℤ :=
  A159919.P16525752381521222348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161152.P4512711989289517509

`eq[1, gcd(n, A080791(n))]`
-/

namespace A161152.P4512711989289517509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A080791 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161152.P4512711989289517509

noncomputable section

/-- A161152: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n.

Offset 1, canonical program `A161152.P4512711989289517509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161152 (n : ℕ) : ℤ :=
  (A161152.P4512711989289517509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161156.P1156421313180752501

`∩[A161154(n+1), comp[A161155(n+1)]]`
-/

namespace A161156.P1156421313180752501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161155 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161156.P1156421313180752501

noncomputable section

/-- A161156: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n, and {the number of 1's in the binary representation of n} is coprime to n, but {the number of digits in the binary representation of n} is not coprime to n.

Offset 1, canonical program `A161156.P1156421313180752501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A161156 (n : ℕ) : ℤ :=
  (A161156.P1156421313180752501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A161156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161641.P16868169590258597238

`eq[0, A096268(floor(n/4))]`
-/

namespace A161641.P16868169590258597238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P16868169590258597238

noncomputable section

/-- A161641: Positions n such that A010060(n) + A010060(n+4) = 1.

Offset 1, canonical program `A161641.P16868169590258597238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161641 (n : ℕ) : ℤ :=
  (A161641.P16868169590258597238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161817.P11412616101657124378

`eq[A035263(n+1), A039963(ceil(n/2))]`
-/

namespace A161817.P11412616101657124378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P11412616101657124378

noncomputable section

/-- A161817: Positions n such that A010060(n) = A010060(n+5).

Offset 1, canonical program `A161817.P11412616101657124378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161817 (n : ℕ) : ℤ :=
  (A161817.P11412616101657124378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162188.P9451871027428952620

`lt[∏{e}[n, #+1], A076368(n+1)-1]`
-/

namespace A162188.P9451871027428952620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A162188.P9451871027428952620

noncomputable section

/-- A162188: Numbers k such that A001223(k) > A000005(k).

Offset 1, canonical program `A162188.P9451871027428952620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A162188 (n : ℕ) : ℤ :=
  (A162188.P9451871027428952620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A162188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164281.P1689118351507972365

`A011782(A088696(n+1))`
-/

namespace A164281.P1689118351507972365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A088696 (n + 1)).toNat

end

end A164281.P1689118351507972365

noncomputable section

/-- A164281: Triangle read by rows, a Petoukhov sequence (cf. A164279) generated from (1,2).

Offset 0, canonical program `A164281.P1689118351507972365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164281 (n : ℕ) : ℤ :=
  A164281.P1689118351507972365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164874.P12027345168690341492

`A030130(n+2)`
-/

namespace A164874.P12027345168690341492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 2)

end

end A164874.P12027345168690341492

noncomputable section

/-- A164874: Triangle read by rows: T(1,1)=2; T(n,k)=2*T(n-1,k)+1, 1<=k

Offset 1, canonical program `A164874.P12027345168690341492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A164874 (n : ℕ) : ℤ :=
  A164874.P12027345168690341492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A164874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165680.P5117045185547673148

`val(A135293(n), 3)!`
-/

namespace A165680.P5117045185547673148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A135293 n).toNat 3)

end

end A165680.P5117045185547673148

noncomputable section

/-- A165680: Triangle of the divisors of the coefficients of triangles A138771 and A165675.

Offset 1, canonical program `A165680.P5117045185547673148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A165680 (n : ℕ) : ℤ :=
  (A165680.P5117045185547673148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A165680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166065.P3490208905278104305

`A057728(n+1)+Δ[A010054(n)]`
-/

namespace A166065.P3490208905278104305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166065.P3490208905278104305

noncomputable section

/-- A166065: Triangle, read by rows, given by [0,1,1,0,0,0,0,0,0,0,...] DELTA [2,-1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A166065.P3490208905278104305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166065 (n : ℕ) : ℤ :=
  A166065.P3490208905278104305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168258.P8738172613031762915

`A115514(1-A053616(n)+n)`
-/

namespace A168258.P8738172613031762915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (1 - A053616 n + (n : ℤ)).toNat

end

end A168258.P8738172613031762915

noncomputable section

/-- A168258: Triangle read by rows, A101688 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A168258.P8738172613031762915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168258 (n : ℕ) : ℤ :=
  A168258.P8738172613031762915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168281.P1468629803331935945

`2*A106314(n+1)`
-/

namespace A168281.P1468629803331935945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106314 (n + 1)

end

end A168281.P1468629803331935945

noncomputable section

/-- A168281: Triangle T(n,m) = 2*(min(n - m + 1, m))^2 read by rows.

Offset 1, canonical program `A168281.P1468629803331935945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168281 (n : ℕ) : ℤ :=
  A168281.P1468629803331935945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171233.P2556039700440970836

`A171232(n+1)+A077049(n+1)`
-/

namespace A171233.P2556039700440970836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171232 (n + 1) + A077049 (n + 1)

end

end A171233.P2556039700440970836

noncomputable section

/-- A171233: Array, T(n,k) = 2*(n/k), if n mod k = 0; otherwise, T(n,k) = 1. Read by antidiagonals.

Offset 1, canonical program `A171233.P2556039700440970836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171233 (n : ℕ) : ℤ :=
  A171233.P2556039700440970836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171822.P12324693438503934281

`A054142(n)*A085478(n)`
-/

namespace A171822.P12324693438503934281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A085478 n

end

end A171822.P12324693438503934281

noncomputable section

/-- A171822: Triangle T(n,k) = binomial(2*n-k, k)*binomial(n+k, 2*k), read by rows.

Offset 0, canonical program `A171822.P12324693438503934281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7808 terms. -/
def A171822 (n : ℕ) : ℤ :=
  A171822.P12324693438503934281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7808 terms. -/
def A171822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171824.P9505180745158428969

`A092392(n)+A046899(n)`
-/

namespace A171824.P9505180745158428969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n + A046899 n

end

end A171824.P9505180745158428969

noncomputable section

/-- A171824: Triangle T(n,k)= binomial(n + k,n) + binomial(2*n-k,n) read by rows.

Offset 0, canonical program `A171824.P9505180745158428969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171824 (n : ℕ) : ℤ :=
  A171824.P9505180745158428969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172066.P636120753324226920

`Δ[A172065(n)-∑[A172063(n)]]`
-/

namespace A172066.P636120753324226920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172065 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172066.P636120753324226920

noncomputable section

/-- A172066: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=9.

Offset 0, canonical program `A172066.P636120753324226920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172066 (n : ℕ) : ℤ :=
  A172066.P636120753324226920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172515.P12895407565169366813

`A134868(Δ[A059563(3*n+4)])`
-/

namespace A172515.P12895407565169366813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059563 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (f1 (n + 1) - f1 n).toNat

end

end A172515.P12895407565169366813

noncomputable section

/-- A172515: First differences of A172513.

Offset 1, canonical program `A172515.P12895407565169366813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515 (n : ℕ) : ℤ :=
  A172515.P12895407565169366813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173261.P1878570650276901774

`A128221(A278818(n)+1)`
-/

namespace A173261.P1878570650276901774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128221 (A278818 n + 1).toNat

end

end A173261.P1878570650276901774

noncomputable section

/-- A173261: Array T(n,k) read by antidiagonals: T(n,2k)=1, T(n,2k+1)=n, n>=2, k>=0.

Offset 2, canonical program `A173261.P1878570650276901774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173261 (n : ℕ) : ℤ :=
  A173261.P1878570650276901774.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174497.P1872965432205280036

`A005145(n+2)%A086800(A014132(n+1))`
-/

namespace A174497.P1872965432205280036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 2)) (A086800 (A014132 (n + 1)).toNat)

end

end A174497.P1872965432205280036

noncomputable section

/-- A174497: Triangle read by rows: T(n,k) = prime(n) mod (prime(n+1) - prime(k)) for 0 < k < n+1.

Offset 1, canonical program `A174497.P1872965432205280036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A174497 (n : ℕ) : ℤ :=
  A174497.P1872965432205280036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A174497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174996.P1086725186471035298

`(A065342(n+1)-1)%A037126(n+1)`
-/

namespace A174996.P1086725186471035298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1) - 1) (A037126 (n + 1))

end

end A174996.P1086725186471035298

noncomputable section

/-- A174996: Triangle read by rows: T(n,k) = (prime(n)-1) mod prime(k).

Offset 1, canonical program `A174996.P1086725186471035298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174996 (n : ℕ) : ℤ :=
  A174996.P1086725186471035298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175332.P10633603557300615745

`A130321(n)+A043569(n+1)`
-/

namespace A175332.P10633603557300615745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A043569 (n + 1)

end

end A175332.P10633603557300615745

noncomputable section

/-- A175332: Numbers whose binary expansion is of the form 11+0*.

Offset 1, canonical program `A175332.P10633603557300615745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175332 (n : ℕ) : ℤ :=
  A175332.P10633603557300615745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175382.P11062849655442964285

`comp[A175381(n+1)-1]+1`
-/

namespace A175382.P11062849655442964285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175382.P11062849655442964285

noncomputable section

/-- A175382: Positive integers n for which there is at least one positive integer k whose binary expansion occurs as a substring in the binary expansion of n but does not divide n.

Offset 1, canonical program `A175382.P11062849655442964285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175382 (n : ℕ) : ℤ :=
  (A175382.P11062849655442964285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176644.P3173982943581009546

`A118185(n)*A158117(n)`
-/

namespace A176644.P3173982943581009546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118185 n * A158117 n

end

end A176644.P3173982943581009546

noncomputable section

/-- A176644: Triangle T(n, k) = 40^(k*(n-k)), read by rows.

Offset 0, canonical program `A176644.P3173982943581009546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A176644 (n : ℕ) : ℤ :=
  A176644.P3173982943581009546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A176644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176787.P17062270663618039594

`A084348(A212342(n+1))`
-/

namespace A176787.P17062270663618039594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084348 (A212342 (n + 1)).toNat

end

end A176787.P17062270663618039594

noncomputable section

/-- A176787: a(n) = (0!-1!+2!-3!....(-1)^(n-1)*(n-1)!) mod n.

Offset 1, canonical program `A176787.P17062270663618039594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A176787 (n : ℕ) : ℤ :=
  A176787.P17062270663618039594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A176787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176793.P313651183802322861

`A173787(A061579(n))*A173787(n)+1`
-/

namespace A176793.P313651183802322861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (A061579 n).toNat * A173787 n + 1

end

end A176793.P313651183802322861

noncomputable section

/-- A176793: A symmetrical triangle read by rows: T(n, k) = 2^n*(q^k - 1)*(q^(n - k) - 1) + 1, where q = 2.

Offset 0, canonical program `A176793.P313651183802322861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176793 (n : ℕ) : ℤ :=
  A176793.P313651183802322861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177226.P14998823732912339926

`A000079(A086800(n+1))%A005145(n+1)`
-/

namespace A177226.P14998823732912339926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A086800 (n + 1)).toNat) (A005145 (n + 1))

end

end A177226.P14998823732912339926

noncomputable section

/-- A177226: Triangle read by rows: T(n, k) = 2^(prime(n) - prime(k)) mod prime(n), 1 <= k <= n.

Offset 1, canonical program `A177226.P14998823732912339926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177226 (n : ℕ) : ℤ :=
  A177226.P14998823732912339926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177263.P1420338553077097761

`Δ[A162608(n)+A003422(A025581(n))]`
-/

namespace A177263.P1420338553077097761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n + A003422 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177263.P1420338553077097761

noncomputable section

/-- A177263: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k as the last entry in the first block (1<=k<=n).

Offset 1, canonical program `A177263.P1420338553077097761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177263 (n : ℕ) : ℤ :=
  A177263.P1420338553077097761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177990.P655360059528610579

`2-A133083(n+1)`
-/

namespace A177990.P655360059528610579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A133083 (n + 1)

end

end A177990.P655360059528610579

noncomputable section

/-- A177990: Triangle read by rows, variant of A070909, a cellular automaton.

Offset 1, canonical program `A177990.P655360059528610579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177990 (n : ℕ) : ℤ :=
  A177990.P655360059528610579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178831.P15740046059794676434

`A000217(A002260(n+1))*A047969(A061579(n))`
-/

namespace A178831.P15740046059794676434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A047969 (A061579 n).toNat

end

end A178831.P15740046059794676434

noncomputable section

/-- A178831: Rectangular array T(n,k) = binomial(n+1,2)*(n^k - (n-1)^k) read by antidiagonals.

Offset 1, canonical program `A178831.P15740046059794676434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4391 terms. -/
def A178831 (n : ℕ) : ℤ :=
  A178831.P15740046059794676434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4391 terms. -/
def A178831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181520.P9935151336875506013

`A100661(p?[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A181520.P9935151336875506013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A181520.P9935151336875506013

noncomputable section

/-- A181520: 2*A181518(n)-A181516(n).

Offset 1, canonical program `A181520.P9935151336875506013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181520 (n : ℕ) : ℤ :=
  A181520.P9935151336875506013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181743.P11765594585100182491

`A007814(A181741(n+1)+1)`
-/

namespace A181743.P11765594585100182491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A181741 (n + 1) + 1).toNat

end

end A181743.P11765594585100182491

noncomputable section

/-- A181743: The exponent k which defines A181741(n) = 2^t-2^k-1.

Offset 1, canonical program `A181743.P11765594585100182491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181743 (n : ℕ) : ℤ :=
  A181743.P11765594585100182491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182660.P6706947886669951299

`A107782(n*floor(-xor(n, -n)/(n+1)))`
-/

namespace A182660.P6706947886669951299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 ((n : ℤ) * ⌊-((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / (n + 1 : ℚ))⌋).toNat

end

end A182660.P6706947886669951299

noncomputable section

/-- A182660: a(2^(k+1)) = k; 0 everywhere else.

Offset 0, canonical program `A182660.P6706947886669951299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182660 (n : ℕ) : ℤ :=
  A182660.P6706947886669951299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182664.P15945012330009958967

`A088828(n+1)+A157502(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182664.P15945012330009958967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1) + A157502 (n + 1)

end

end A182664.P15945012330009958967

noncomputable section

/-- A182664: a(n) = A088828(n) + A157502(n).

Offset 1, canonical program `A182664.P15945012330009958967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664 (n : ℕ) : ℤ :=
  A182664.P15945012330009958967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183110.P12340529520489190935

`A128064(n)+a(n-1)` with `a(0)=1`
-/

namespace A183110.P12340529520489190935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128064 n + a (n - 1)

end

end A183110.P12340529520489190935

noncomputable section

/-- A183110: Period-length of the ultimate periodic behavior of the orbit of a list [1,1,1,...,1] of n 1's under the mapping defined in the comments.

Offset 1, canonical program `A183110.P12340529520489190935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110 (n : ℕ) : ℤ :=
  A183110.P12340529520489190935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184097.P12072055477747539760

`A184096(A003989(n+1))`
-/

namespace A184097.P12072055477747539760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184096 (A003989 (n + 1)).toNat

end

end A184097.P12072055477747539760

noncomputable section

/-- A184097: T(n,k)=Half the number of nXk toroidal binary arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

Offset 1, canonical program `A184097.P12072055477747539760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A184097 (n : ℕ) : ℤ :=
  A184097.P12072055477747539760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A184097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184248.P3384310769192450285

`p?[n+1-A166597(n+1)%A166597(n)]`
-/

namespace A184248.P3384310769192450285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A166597 (n + 1)) (A166597 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184248.P3384310769192450285

noncomputable section

/-- A184248: Primes, q, such that for three consecutive primes, p, q & r, with p

Offset 1, canonical program `A184248.P3384310769192450285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184248 (n : ℕ) : ℤ :=
  A184248.P3384310769192450285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184733.P13341463158097171693

`floor(A184487(n+1)/2)`
-/

namespace A184733.P13341463158097171693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184487 (n + 1) : ℚ) / 2⌋

end

end A184733.P13341463158097171693

noncomputable section

/-- A184733: a(n) = floor(n*s+h-h*s), where s=(3+sqrt(5))/2, h=-1/4; complement of A184732.

Offset 1, canonical program `A184733.P13341463158097171693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184733 (n : ℕ) : ℤ :=
  A184733.P13341463158097171693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185914.P13255273733279209154

`A004736(n+1)-A053616(n)`
-/

namespace A185914.P13255273733279209154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A053616 n

end

end A185914.P13255273733279209154

noncomputable section

/-- A185914: Array: T(n,k)=k-n+1 for k>=n; T(n,k)=0 for k

Offset 1, canonical program `A185914.P13255273733279209154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914 (n : ℕ) : ℤ :=
  A185914.P13255273733279209154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188215.P11536711810283268516

`A080791(n)+A006257(n)`
-/

namespace A188215.P11536711810283268516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A006257 n

end

end A188215.P11536711810283268516

noncomputable section

/-- A188215: Starting with an empty list, n is inserted after the a(n)th element such that the binary representations of the list's elements are always sorted lexicographically.

Offset 0, canonical program `A188215.P11536711810283268516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A188215 (n : ℕ) : ℤ :=
  A188215.P11536711810283268516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A188215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188713.P11943041166088798751

`∩[A100724(n+1), A099627(n)]`
-/

namespace A188713.P11943041166088798751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188713.P11943041166088798751

noncomputable section

/-- A188713: Primes of the form 2^x + 2^y - 1.

Offset 1, canonical program `A188713.P11943041166088798751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A188713 (n : ℕ) : ℤ :=
  (A188713.P11943041166088798751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A188713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189013.P15026936849006250875

`comp[A189012(n+1)-1]+1`
-/

namespace A189013.P15026936849006250875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189012 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189013.P15026936849006250875

noncomputable section

/-- A189013: Positions of 1 in A189011; complement of A189012.

Offset 1, canonical program `A189013.P15026936849006250875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013 (n : ℕ) : ℤ :=
  (A189013.P15026936849006250875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190909.P4455590788614055220

`A056040(A002262(n))*A085478(n)`
-/

namespace A190909.P4455590788614055220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A085478 n

end

end A190909.P4455590788614055220

noncomputable section

/-- A190909: Triangle read by rows: T(n,k) = binomial(n+k,n-k) * k! / floor(k/2)!^2.

Offset 0, canonical program `A190909.P4455590788614055220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190909 (n : ℕ) : ℤ :=
  A190909.P4455590788614055220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191019.P4122170196560416808

`p?[n*A011585(n)]`
-/

namespace A191019.P4122170196560416808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191019.P4122170196560416808

noncomputable section

/-- A191019: Rational primes that decompose in the quadratic field Q(sqrt(-19)).

Offset 1, canonical program `A191019.P4122170196560416808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A191019 (n : ℕ) : ℤ :=
  A191019.P4122170196560416808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A191019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191063.P9795136441190372636

`p?[n*(A000038(n)-A011585(n))]`
-/

namespace A191063.P9795136441190372636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000038 n - A011585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191063.P9795136441190372636

noncomputable section

/-- A191063: Primes that are not squares mod 19.

Offset 1, canonical program `A191063.P9795136441190372636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A191063 (n : ℕ) : ℤ :=
  A191063.P9795136441190372636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A191063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191898.P7435542862714692241

`∏{p}[A003989(n+1), 1-#]`
-/

namespace A191898.P7435542862714692241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A191898.P7435542862714692241

noncomputable section

/-- A191898: Symmetric square array read by antidiagonals: T(n,1)=1, T(1,k)=1, T(n,k) = -Sum_{i=1..k-1} T(n-i,k) for n >= k, -Sum_{i=1..n-1} T(k-i,n) for n < k.

Offset 1, canonical program `A191898.P7435542862714692241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191898 (n : ℕ) : ℤ :=
  A191898.P7435542862714692241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193739.P1597501357748841903

`A065033(A143956(n+1)-1)`
-/

namespace A193739.P1597501357748841903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A143956 (n + 1) - 1).toNat

end

end A193739.P1597501357748841903

noncomputable section

/-- A193739: Mirror of the triangle A193738.

Offset 0, canonical program `A193739.P1597501357748841903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739 (n : ℕ) : ℤ :=
  A193739.P1597501357748841903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193819.P15604382937138326338

`A059268(n)*A153861(n)`
-/

namespace A193819.P15604382937138326338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A153861 n

end

end A193819.P15604382937138326338

noncomputable section

/-- A193819: Mirror of the triangle A193818.

Offset 0, canonical program `A193819.P15604382937138326338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193819 (n : ℕ) : ℤ :=
  A193819.P15604382937138326338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193973.P2420014072884717063

`A134464(n+1)+A077028(n)`
-/

namespace A193973.P2420014072884717063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1) + A077028 n

end

end A193973.P2420014072884717063

noncomputable section

/-- A193973: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=x*p(n-1,x)+n+1 with p(0,x)=1, and q(n,x)=x*p(n-1,x)+1 with p(0,x)=1.

Offset 0, canonical program `A193973.P2420014072884717063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193973 (n : ℕ) : ℤ :=
  A193973.P2420014072884717063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194152.P3484500844667468178

`A190508(n+1)+A190248(n+1)`
-/

namespace A194152.P3484500844667468178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190508 (n + 1) + A190248 (n + 1)

end

end A194152.P3484500844667468178

noncomputable section

/-- A194152: Beatty sequence for 5+2*sqrt(5); complement of A194151.

Offset 1, canonical program `A194152.P3484500844667468178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194152 (n : ℕ) : ℤ :=
  A194152.P3484500844667468178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196389.P4708616426695059720

`A167374(n)+A132440(n)`
-/

namespace A196389.P4708616426695059720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n + A132440 n

end

end A196389.P4708616426695059720

noncomputable section

/-- A196389: Triangle T(n,k), read by rows, given by (0,1,-1,0,0,0,0,0,0,0,...) DELTA (1,0,0,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A196389.P4708616426695059720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196389 (n : ℕ) : ℤ :=
  A196389.P4708616426695059720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199011.P10695752317706914514

`A153861(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A199011.P10695752317706914514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A153861 n - a (n - 1)

end

end A199011.P10695752317706914514

noncomputable section

/-- A199011: Triangle T(n,k), read by rows, given by (1,1,-1,1,0,0,0,0,0,0,0,...) DELTA (0,1,0,0,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A199011.P10695752317706914514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199011 (n : ℕ) : ℤ :=
  A199011.P10695752317706914514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200146.P12842493773213650661

`(A009998(n)*A033918(n+1))%∑[A073423(n)]`
-/

namespace A200146.P12842493773213650661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009998 n * A033918 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200146.P12842493773213650661

noncomputable section

/-- A200146: Triangle read by rows: T(n, k) = mod(k^(n - 1), n), where 1 <= k < n.

Offset 2, canonical program `A200146.P12842493773213650661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A200146 (n : ℕ) : ℤ :=
  A200146.P12842493773213650661.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A200146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202363.P4425557384897359934

`A127739(n+1)*A162608(A061579(n))`
-/

namespace A202363.P4425557384897359934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) * A162608 (A061579 n).toNat

end

end A202363.P4425557384897359934

noncomputable section

/-- A202363: Triangular array read by rows: T(n,k) is the number of inversion pairs ( p(i) < p(j) with i>j ) that are separated by exactly k elements in all n-permutations (where the permutation is represented in one line notation); n>=2, 0<=k<=n-2.

Offset 2, canonical program `A202363.P4425557384897359934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A202363 (n : ℕ) : ℤ :=
  A202363.P4425557384897359934.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A202363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203990.P14919765066385001405

`A106314(n+1)+A003991(n+1)`
-/

namespace A203990.P14919765066385001405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (n + 1) + A003991 (n + 1)

end

end A203990.P14919765066385001405

noncomputable section

/-- A203990: Symmetric matrix based on f(i,j) = (i+j)*min(i,j), by antidiagonals.

Offset 1, canonical program `A203990.P14919765066385001405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990 (n : ℕ) : ℤ :=
  A203990.P14919765066385001405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203996.P4927933465799713350

`A094053(n+1)+A185908(n+1)+1`
-/

namespace A203996.P4927933465799713350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A185908 (n + 1) + 1)

end

end A203996.P4927933465799713350

noncomputable section

/-- A203996: Symmetric matrix based on f(i,j)=min{i(j+1),j(i+1)}, by antidiagonals.

Offset 1, canonical program `A203996.P4927933465799713350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996 (n : ℕ) : ℤ :=
  A203996.P4927933465799713350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204116.P12422762952399923659

`A000225(A003989(n+1))`
-/

namespace A204116.P12422762952399923659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A003989 (n + 1)).toNat

end

end A204116.P12422762952399923659

noncomputable section

/-- A204116: Symmetric matrix based on f(i,j) = gcd(2^i-1, 2^j-1), by antidiagonals.

Offset 1, canonical program `A204116.P12422762952399923659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204116 (n : ℕ) : ℤ :=
  A204116.P12422762952399923659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204154.P17367594193220542085

`A111650(n+1)-A204028(n+1)`
-/

namespace A204154.P17367594193220542085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A204028 (n + 1)

end

end A204154.P17367594193220542085

noncomputable section

/-- A204154: Symmetric matrix based on f(i,j) = max(2i-j, 2j-i), by antidiagonals.

Offset 1, canonical program `A204154.P17367594193220542085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154 (n : ℕ) : ℤ :=
  A204154.P17367594193220542085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204173.P5209315876622248264

`A027656(floor(log2(A131816(n))))`
-/

namespace A204173.P5209315876622248264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Nat.log 2 (A131816 n).toNat)

end

end A204173.P5209315876622248264

noncomputable section

/-- A204173: Symmetric matrix based on f(i,j)=(2i-1 if max(i,j) is odd, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204173.P5209315876622248264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204173 (n : ℕ) : ℤ :=
  A204173.P5209315876622248264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204246.P3171406654780179534

`A204244(n+1)/A128227(n)`
-/

namespace A204246.P3171406654780179534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A204246.P3171406654780179534

noncomputable section

/-- A204246: Array given by f(i,1)=1, f(1,j)=1, f(i,i)=(i-1)!, and f(i,j)=0 otherwise, read by antidiagonals.

Offset 1, canonical program `A204246.P3171406654780179534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204246.P3171406654780179534.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204427.P7701524078715562329

`3-A204257(n+1)`
-/

namespace A204427.P7701524078715562329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A204257 (n + 1)

end

end A204427.P7701524078715562329

noncomputable section

/-- A204427: Infinite matrix: f(i,j)=(2i+j+2 mod 3), read by antidiagonals.

Offset 1, canonical program `A204427.P7701524078715562329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204427 (n : ℕ) : ℤ :=
  A204427.P7701524078715562329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204560.P13805510480467334471

`round(∑[A073423(n)²]/4)`
-/

namespace A204560.P13805510480467334471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A204560.P13805510480467334471

noncomputable section

/-- A204560: Symmetric matrix: f(i,j)=floor[(2i+2j+4)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204560.P13805510480467334471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204560 (n : ℕ) : ℤ :=
  A204560.P13805510480467334471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204562.P5690255054464803021

`ceil(∑[(A073423(n)/2)²])`
-/

namespace A204562.P5690255054464803021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A073423 n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A204562.P5690255054464803021

noncomputable section

/-- A204562: Symmetric matrix: f(i,j) = floor((2i+2j+6)/4)-floor((i+j+3)/4), by (constant) antidiagonals.

Offset 1, canonical program `A204562.P5690255054464803021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204562 (n : ℕ) : ℤ :=
  A204562.P5690255054464803021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204879.P17026497277857480127

`record[A005843(n+3)%A000124(A029297(n+15))]`
-/

namespace A204879.P17026497277857480127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 3)) (A000124 (A029297 (n + 15)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204879.P17026497277857480127

noncomputable section

/-- A204879: Numbers that can be written as sum of perfect numbers.

Offset 1, canonical program `A204879.P17026497277857480127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A204879 (n : ℕ) : ℤ :=
  A204879.P17026497277857480127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A204879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204985.P5770110306113503825

`2*A130328(n)`
-/

namespace A204985.P5770110306113503825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130328 n

end

end A204985.P5770110306113503825

noncomputable section

/-- A204985: Ordered differences of numbers 2^k for k>=1.

Offset 1, canonical program `A204985.P5770110306113503825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204985 (n : ℕ) : ℤ :=
  A204985.P5770110306113503825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205128.P17383454080453045407

`A103217(n)+A098352(n+1)`
-/

namespace A205128.P17383454080453045407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n + A098352 (n + 1)

end

end A205128.P17383454080453045407

noncomputable section

/-- A205128: Ordered differences of distinct hexagonal numbers.

Offset 1, canonical program `A205128.P17383454080453045407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205128 (n : ℕ) : ℤ :=
  A205128.P17383454080453045407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205559.P2583783127805785041

`eq[3, gcd(3, A204890(n+1))]+1`
-/

namespace A205559.P2583783127805785041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205559.P2583783127805785041

noncomputable section

/-- A205559: Positions of multiples of 3 in A204890 (differences of primes).

Offset 1, canonical program `A205559.P2583783127805785041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559 (n : ℕ) : ℤ :=
  (A205559.P2583783127805785041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205676.P6623450324532988599

`eq[4, gcd(4, A204890(n+1))]+1`
-/

namespace A205676.P6623450324532988599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205676.P6623450324532988599

noncomputable section

/-- A205676: Positions of multiples of 4 in A204890 (differences of primes).

Offset 1, canonical program `A205676.P6623450324532988599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676 (n : ℕ) : ℤ :=
  (A205676.P6623450324532988599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205683.P17912161422184643973

`eq[5, gcd(5, A204890(n+1))]+1`
-/

namespace A205683.P17912161422184643973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205683.P17912161422184643973

noncomputable section

/-- A205683: Positions of multiples of 5 in A204890 (differences of primes).

Offset 1, canonical program `A205683.P17912161422184643973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683 (n : ℕ) : ℤ :=
  (A205683.P17912161422184643973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205697.P9126172670200338830

`lt[A204890(n+1)%7, 1]+1`
-/

namespace A205697.P9126172670200338830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205697.P9126172670200338830

noncomputable section

/-- A205697: Positions of multiples of 7 in A204890 (differences of primes).

Offset 1, canonical program `A205697.P9126172670200338830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697 (n : ℕ) : ℤ :=
  (A205697.P9126172670200338830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205711.P11359309019057096152

`eq[9, dr(A204890(n+1))]+1`
-/

namespace A205711.P11359309019057096152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205711.P11359309019057096152

noncomputable section

/-- A205711: Positions of multiples of 9 in A204890 (differences of primes).

Offset 1, canonical program `A205711.P11359309019057096152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711 (n : ℕ) : ℤ :=
  (A205711.P11359309019057096152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206735.P9027577083690455181

`A153861(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A206735.P9027577083690455181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153861 (n - 1) - a (n - 1)

end

end A206735.P9027577083690455181

noncomputable section

/-- A206735: Triangle T(n,k), read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A206735.P9027577083690455181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206735 (n : ℕ) : ℤ :=
  A206735.P9027577083690455181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207409.P10666545104290844078

`A204890(n+1)%A037126(n+1)`
-/

namespace A207409.P10666545104290844078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) (A037126 (n + 1))

end

end A207409.P10666545104290844078

noncomputable section

/-- A207409: Triangular array: T(n,k) = prime(n) mod prime(k), 1 <= k < n.

Offset 2, canonical program `A207409.P10666545104290844078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409 (n : ℕ) : ℤ :=
  A207409.P10666545104290844078.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207607.P5273861874523714085

`2*A085478(n)-A165253(n)`
-/

namespace A207607.P5273861874523714085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085478 n - A165253 n

end

end A207607.P5273861874523714085

noncomputable section

/-- A207607: Triangle of coefficients of polynomials v(n,x) jointly generated with A207606; see Formula section.

Offset 1, canonical program `A207607.P5273861874523714085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207607 (n : ℕ) : ℤ :=
  A207607.P5273861874523714085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207621.P2290235971314170358

`A078812(n)+A085478(n)-A165253(n)`
-/

namespace A207621.P2290235971314170358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + (A085478 n - A165253 n)

end

end A207621.P2290235971314170358

noncomputable section

/-- A207621: Triangle of coefficients of polynomials v(n,x) jointly generated with A207620; see the Formula section.

Offset 1, canonical program `A207621.P2290235971314170358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207621 (n : ℕ) : ℤ :=
  A207621.P2290235971314170358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208460.P13240887097619534066

`A004736(eq[A002260(n+1), A003989(n+1)]+1)`
-/

namespace A208460.P13240887097619534066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A208460.P13240887097619534066

noncomputable section

/-- A208460: Triangle read by rows: T(n,k) = n minus the k-th proper divisor of n.

Offset 2, canonical program `A208460.P13240887097619534066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A208460 (n : ℕ) : ℤ :=
  A208460.P13240887097619534066.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A208460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210064.P5749393447975860566

`A038806(n)-A018218(n)`
-/

namespace A210064.P5749393447975860566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038806 n - A018218 n

end

end A210064.P5749393447975860566

noncomputable section

/-- A210064: Total number of 231 patterns in the set of permutations avoiding 123.

Offset 1, canonical program `A210064.P5749393447975860566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A210064 (n : ℕ) : ℤ :=
  A210064.P5749393447975860566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A210064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210188.P4006108130984620707

`A078812(n)+A085478(n)-A010054(n)`
-/

namespace A210188.P4006108130984620707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + (A085478 n - A010054 n)

end

end A210188.P4006108130984620707

noncomputable section

/-- A210188: Triangle of coefficients of polynomials v(n,x) jointly generated with A210187; see the Formula section.

Offset 1, canonical program `A210188.P4006108130984620707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210188 (n : ℕ) : ℤ :=
  A210188.P4006108130984620707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210381.P17433135722675622372

`A074909(n)-A198321(n+1)`
-/

namespace A210381.P17433135722675622372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A198321 (n + 1)

end

end A210381.P17433135722675622372

noncomputable section

/-- A210381: Triangle by rows, derived from the beheaded Pascal's triangle, A074909.

Offset 0, canonical program `A210381.P17433135722675622372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210381 (n : ℕ) : ℤ :=
  A210381.P17433135722675622372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210535.P1061241870078406260

`A004736(A185180(n+1))`
-/

namespace A210535.P1061241870078406260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A185180 (n + 1)).toNat

end

end A210535.P1061241870078406260

noncomputable section

/-- A210535: Second inverse function (numbers of columns) for pairing function A209293.

Offset 1, canonical program `A210535.P1061241870078406260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210535 (n : ℕ) : ℤ :=
  A210535.P1061241870078406260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A210535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213584.P14777536116696346004

`A213579(comp[∑[n]])-A003057(n+2)`
-/

namespace A213584.P14777536116696346004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A003057 (n + 2)

end

end A213584.P14777536116696346004

noncomputable section

/-- A213584: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213584.P14777536116696346004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584 (n : ℕ) : ℤ :=
  A213584.P14777536116696346004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213768.P6784078122479010732

`2*A213579(n+1)-A104582(n+1)`
-/

namespace A213768.P6784078122479010732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213579 (n + 1) - A104582 (n + 1)

end

end A213768.P6784078122479010732

noncomputable section

/-- A213768: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213768.P6784078122479010732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768 (n : ℕ) : ℤ :=
  A213768.P6784078122479010732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214398.P18344074257619641285

`C(A185910(n+1)-1, A025581(n))`
-/

namespace A214398.P18344074257619641285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185910 (n + 1) - 1).toNat (A025581 n).toNat

end

end A214398.P18344074257619641285

noncomputable section

/-- A214398: Triangle where the g.f. of column k is 1/(1-x)^(k^2) for k>=1, as read by rows n>=1.

Offset 1, canonical program `A214398.P18344074257619641285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A214398 (n : ℕ) : ℤ :=
  (A214398.P18344074257619641285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A214398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218234.P3405762265077975232

`A028310(A132440(n))-1`
-/

namespace A218234.P3405762265077975232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A132440 n).toNat - 1

end

end A218234.P3405762265077975232

noncomputable section

/-- A218234: Infinitesimal generator for padded Pascal matrix A097805 (as lower triangular matrices).

Offset 0, canonical program `A218234.P3405762265077975232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218234 (n : ℕ) : ℤ :=
  A218234.P3405762265077975232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218346.P7761468565434163924

`A066846(A007401(n+1))`
-/

namespace A218346.P7761468565434163924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (A007401 (n + 1)).toNat

end

end A218346.P7761468565434163924

noncomputable section

/-- A218346: Numbers of the form a^a + b^b, with a > b > 0.

Offset 1, canonical program `A218346.P7761468565434163924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346 (n : ℕ) : ℤ :=
  A218346.P7761468565434163924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219238.P3363625506201266281

`ceil(A178952(3*(n+1))/6)`
-/

namespace A219238.P3363625506201266281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178952 (3 * (n + 1)) : ℚ) / 6⌉

end

end A219238.P3363625506201266281

noncomputable section

/-- A219238: Coefficient table for the first differences of table A047971: Coefficients of the difference of Gauss polynomials [n+3,3]_q - [n+2,3]_q.

Offset 0, canonical program `A219238.P3363625506201266281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238 (n : ℕ) : ℤ :=
  A219238.P3363625506201266281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219525.P6968393615433371645

`A003991(n+1)-A178952(n+1)`
-/

namespace A219525.P6968393615433371645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A178952 (n + 1)

end

end A219525.P6968393615433371645

noncomputable section

/-- A219525: T(n,k)=Sum of neighbor maps: log base 2 of the number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their king-move neighbors in a random 0..1 nXk array.

Offset 1, canonical program `A219525.P6968393615433371645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525 (n : ℕ) : ℤ :=
  A219525.P6968393615433371645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219694.P18132781621014480692

`A076112(n+1)*A132159(n)`
-/

namespace A219694.P18132781621014480692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A132159 n

end

end A219694.P18132781621014480692

noncomputable section

/-- A219694: Triangular array read by rows: T(n,k) is the number of functions f:{1,2,...,n} -> {1,2,...,n} that have exactly k nonrecurrent elements; n>=1, 0<=k<=n-1.

Offset 1, canonical program `A219694.P18132781621014480692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A219694 (n : ℕ) : ℤ :=
  A219694.P18132781621014480692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A219694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224380.P18395391775735731980

`4*A224195(n+1)-1`
-/

namespace A224380.P18395391775735731980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A224195 (n + 1) - 1

end

end A224380.P18395391775735731980

noncomputable section

/-- A224380: Table read by antidiagonals of numbers of form (2^n -1)*2^(m+2) + 3 where n>=1, m>=1.

Offset 1, canonical program `A224380.P18395391775735731980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380 (n : ℕ) : ℤ :=
  A224380.P18395391775735731980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225373.P1027320793838939059

`A106481(n)+1`
-/

namespace A225373.P1027320793838939059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n + 1

end

end A225373.P1027320793838939059

noncomputable section

/-- A225373: a(n) = 1 + Sum_{i=0..floor(n/2)} phi(n-2*i).

Offset 0, canonical program `A225373.P1027320793838939059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225373 (n : ℕ) : ℤ :=
  A225373.P1027320793838939059.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226534.P11872375198540827166

`(2*A000040(n+2))%A076368(n+2)`
-/

namespace A226534.P11872375198540827166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000040 (n + 2)) (A076368 (n + 2))

end

end A226534.P11872375198540827166

noncomputable section

/-- A226534: a(n) = (p(n+1) + p(n) - 1) mod (p(n+1) - p(n) + 1) where p(n) is the n-th prime.

Offset 1, canonical program `A226534.P11872375198540827166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226534 (n : ℕ) : ℤ :=
  A226534.P11872375198540827166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226827.P13006153795325612832

`2*A226793(n+1)`
-/

namespace A226827.P13006153795325612832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226793 (n + 1)

end

end A226827.P13006153795325612832

noncomputable section

/-- A226827: Numbers of the form 3^j + 9^k, for j and k >= 0.

Offset 1, canonical program `A226827.P13006153795325612832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827 (n : ℕ) : ℤ :=
  A226827.P13006153795325612832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226857.P16696691752831286021

`record[A098356(A038722(n+1)+4)]`
-/

namespace A226857.P16696691752831286021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 (A038722 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226857.P16696691752831286021

noncomputable section

/-- A226857: Numbers that are both the sum of two Fibonacci numbers and the product of two Fibonacci numbers.

Offset 1, canonical program `A226857.P16696691752831286021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A226857 (n : ℕ) : ℤ :=
  A226857.P16696691752831286021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A226857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227071.P9639457389400369433

`A132741(A028310(n))+A057427(n)`
-/

namespace A227071.P9639457389400369433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (A028310 n).toNat + A057427 n

end

end A227071.P9639457389400369433

noncomputable section

/-- A227071: Let s(m) = the set of k > 0 such that k^m ends with k. Then a(n) = least m such that s(m) = s(n).

Offset 1, canonical program `A227071.P9639457389400369433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227071 (n : ℕ) : ℤ :=
  A227071.P9639457389400369433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231600.P14215800754998338730

`A096268(A087734(n))`
-/

namespace A231600.P14215800754998338730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A087734 n).toNat

end

end A231600.P14215800754998338730

noncomputable section

/-- A231600: Output of a finite state automaton generating the period doubling sequence, when fed with binary representation of n, read from right to left.

Offset 0, canonical program `A231600.P14215800754998338730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231600 (n : ℕ) : ℤ :=
  A231600.P14215800754998338730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236376.P3394991007226096712

`A078812(A028310(n))-A165253(n)`
-/

namespace A236376.P3394991007226096712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A028310 n).toNat - A165253 n

end

end A236376.P3394991007226096712

noncomputable section

/-- A236376: Riordan array ((1-x+x^2)/(1-x)^2, x/(1-x)^2).

Offset 0, canonical program `A236376.P3394991007226096712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236376 (n : ℕ) : ℤ :=
  A236376.P3394991007226096712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239320.P15770930766220237267

`eq[1, A006287(A006287(A006287(n)))]`
-/

namespace A239320.P15770930766220237267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 (A006287 (A006287 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239320.P15770930766220237267

noncomputable section

/-- A239320: Ternary happy numbers.

Offset 1, canonical program `A239320.P15770930766220237267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A239320 (n : ℕ) : ℤ :=
  (A239320.P15770930766220237267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A239320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239712.P16933719049344234265

`A239708(n+1)-1`
-/

namespace A239712.P16933719049344234265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239708 (n + 1) - 1

end

end A239712.P16933719049344234265

noncomputable section

/-- A239712: Primes of the form m = 2^i + 2^j - 1, where i > j >= 0.

Offset 1, canonical program `A239712.P16933719049344234265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239712 (n : ℕ) : ℤ :=
  A239712.P16933719049344234265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239906.P4184436720645207913

`A239904(n)-A014082(n)`
-/

namespace A239906.P4184436720645207913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014082 n

end

end A239906.P4184436720645207913

noncomputable section

/-- A239906: Let cn(n,k) denote the number of times 11..1 (k 1's) appears in the binary representation of n; a(n) = n - cn(n,1) + cn(n,2) - cn(n,3).

Offset 0, canonical program `A239906.P4184436720645207913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239906 (n : ℕ) : ℤ :=
  A239906.P4184436720645207913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239907.P2924034239393918742

`n-A329320(n)`
-/

namespace A239907.P2924034239393918742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A329320 n

end

end A239907.P2924034239393918742

noncomputable section

/-- A239907: Let cn(n,k) denote the number of times 11..1 (k 1's) appears in the binary representation of n; a(n) = n - cn(n,1) + cn(n,2) - cn(n,3) + cn(n,4) - ... .

Offset 0, canonical program `A239907.P2924034239393918742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A239907 (n : ℕ) : ℤ :=
  A239907.P2924034239393918742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A239907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240721.P16829649678566913010

`A178792(n)+A178792(n)-A064062(n+1)`
-/

namespace A240721.P16829649678566913010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178792 n + (A178792 n - A064062 (n + 1))

end

end A240721.P16829649678566913010

noncomputable section

/-- A240721: Expansion of -(4*x + sqrt(1-8*x) - 1)/(sqrt(1-8*x)*(4*x^2+x) + 8*x^2 - x).

Offset 0, canonical program `A240721.P16829649678566913010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A240721 (n : ℕ) : ℤ :=
  A240721.P16829649678566913010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A240721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241016.P17235815299495894716

`A162613(n+1)+n`
-/

namespace A241016.P17235815299495894716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162613 (n + 1) + (n : ℤ)

end

end A241016.P17235815299495894716

noncomputable section

/-- A241016: Triangle read by rows: T(n, k) = sum of k-th row of n X n square filled with the numbers 1 through n^2 reading across rows left-to-right.

Offset 1, canonical program `A241016.P17235815299495894716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A241016 (n : ℕ) : ℤ :=
  A241016.P17235815299495894716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A241016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243109.P8775223338170402151

`n-A171942(A062383(n)-n)`
-/

namespace A243109.P8775223338170402151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171942 (A062383 n - (n : ℤ)).toNat

end

end A243109.P8775223338170402151

noncomputable section

/-- A243109: a(n) is the largest number smaller than n and having the same Hamming weight as n, or n if no such number exist.

Offset 0, canonical program `A243109.P8775223338170402151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243109 (n : ℕ) : ℤ :=
  A243109.P8775223338170402151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244418.P1931432828472560221

`A151890(n)+1`
-/

namespace A244418.P1931432828472560221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n + 1

end

end A244418.P1931432828472560221

noncomputable section

/-- A244418: Triangle read by rows T(n,m) = n*m +(n-1)*(m-1), for n >= m >= 1.

Offset 1, canonical program `A244418.P1931432828472560221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244418 (n : ℕ) : ℤ :=
  A244418.P1931432828472560221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244880.P11603938914214109691

`∑[∑[A160838(n)]]`
-/

namespace A244880.P11603938914214109691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244880.P11603938914214109691

noncomputable section

/-- A244880: Number of magic labelings of the cycle-of-loops graph LOOP X C_8 having magic sum n, where LOOP is the 1-vertex, 1-loop-edge graph.

Offset 0, canonical program `A244880.P11603938914214109691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244880 (n : ℕ) : ℤ :=
  A244880.P11603938914214109691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245188.P10749449264260825276

`A005681(n+1)-1`
-/

namespace A245188.P10749449264260825276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (n + 1) - 1

end

end A245188.P10749449264260825276

noncomputable section

/-- A245188: Trajectory of 1 under repeated applications of the morphism 0->12, 1->13, 2->20, 3->21.

Offset 0, canonical program `A245188.P10749449264260825276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245188 (n : ℕ) : ℤ :=
  A245188.P10749449264260825276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245650.P3892271656114421038

`p?[A245071(n+1)]`
-/

namespace A245650.P3892271656114421038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P3892271656114421038

noncomputable section

/-- A245650: Primes in the sequence 12*n - prime(n), (A245071).

Offset 1, canonical program `A245650.P3892271656114421038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650 (n : ℕ) : ℤ :=
  A245650.P3892271656114421038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247875.P746312147594678811

`lt[A135416(or(n+1, 2*n)+1), A059126(n)]`
-/

namespace A247875.P746312147594678811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (Nat.lor (n + 1) (2 * n) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247875.P746312147594678811

noncomputable section

/-- A247875: Numbers that are even or whose binary expansions contain one or more pairs of adjacent zeros when odd.

Offset 1, canonical program `A247875.P746312147594678811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247875 (n : ℕ) : ℤ :=
  (A247875.P746312147594678811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249732.P18279508953089269777

`A048967(n)-A163000(n)`
-/

namespace A249732.P18279508953089269777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n - A163000 n

end

end A249732.P18279508953089269777

noncomputable section

/-- A249732: Number of (not necessarily distinct) multiples of 4 on row n of Pascal's triangle.

Offset 0, canonical program `A249732.P18279508953089269777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A249732 (n : ℕ) : ℤ :=
  A249732.P18279508953089269777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A249732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250742.P16714809823875082383

`4*A131816(n)+2`
-/

namespace A250742.P16714809823875082383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131816 n + 2

end

end A250742.P16714809823875082383

noncomputable section

/-- A250742: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250742.P16714809823875082383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A250742 (n : ℕ) : ℤ :=
  A250742.P16714809823875082383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A250742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251751.P14863279123700905689

`A251750(n+1)-A104144(n)`
-/

namespace A251751.P14863279123700905689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) - A104144 n

end

end A251751.P14863279123700905689

noncomputable section

/-- A251751: 9-step Fibonacci sequence starting with 0,0,1,0,0,0,0,0,0.

Offset 0, canonical program `A251751.P14863279123700905689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251751 (n : ℕ) : ℤ :=
  A251751.P14863279123700905689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251752.P3616439645300721180

`A251750(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A251752.P3616439645300721180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A251750 n - a (n - 2)

end

end A251752.P3616439645300721180

noncomputable section

/-- A251752: 9-step Fibonacci sequence starting with 0,1,0,0,0,0,0,0,0.

Offset 0, canonical program `A251752.P3616439645300721180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251752 (n : ℕ) : ℤ :=
  A251752.P3616439645300721180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253084.P6786471095183434490

`and(A047999(n), A085478(n))`
-/

namespace A253084.P6786471095183434490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A085478 n)

end

end A253084.P6786471095183434490

noncomputable section

/-- A253084: Triangle read by rows: T(n,k) = {binomial(n+k,n-k)*binomial(n,k)} mod 2, 0 <= k <= n.

Offset 0, canonical program `A253084.P6786471095183434490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253084 (n : ℕ) : ℤ :=
  A253084.P6786471095183434490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253146.P8353781513861575822

`A131225(A185180(n+1))`
-/

namespace A253146.P8353781513861575822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131225 (A185180 (n + 1)).toNat

end

end A253146.P8353781513861575822

noncomputable section

/-- A253146: A fractal tree, read by rows: for n > 2, T(n,1) = T(n-1,1)+2, T(n,n) = T(n-1,1)+3, and for k=2..n-1, T(n,k) = T(n-2,k-1).

Offset 1, canonical program `A253146.P8353781513861575822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146 (n : ℕ) : ℤ :=
  A253146.P8353781513861575822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254107.P2033463997681992724

`A005187(A130128(n+1))-A002262(n)`
-/

namespace A254107.P2033463997681992724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A130128 (n + 1)).toNat - A002262 n

end

end A254107.P2033463997681992724

noncomputable section

/-- A254107: Transposed dispersion of A055938.

Offset 1, canonical program `A254107.P2033463997681992724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254107 (n : ℕ) : ℤ :=
  A254107.P2033463997681992724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254398.P5626578418110395062

`7-3*A073423(n)`
-/

namespace A254398.P5626578418110395062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - 3 * A073423 n

end

end A254398.P5626578418110395062

noncomputable section

/-- A254398: Final digits of A237424 in decimal representation.

Offset 1, canonical program `A254398.P5626578418110395062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254398 (n : ℕ) : ℤ :=
  A254398.P5626578418110395062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255121.P16313667486751775912

`∑[char[A255062(n+1)]]`
-/

namespace A255121.P16313667486751775912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255121.P16313667486751775912

noncomputable section

/-- A255121: After zero, each n occurs A255071(n) times.

Offset 0, canonical program `A255121.P16313667486751775912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A255121 (n : ℕ) : ℤ :=
  (A255121.P16313667486751775912.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A255121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255527.P13612266625817391283

`A127739(A065033(n))+n`
-/

namespace A255527.P13612266625817391283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A065033 n).toNat + (n : ℤ)

end

end A255527.P13612266625817391283

noncomputable section

/-- A255527: Where records occur in A255437.

Offset 1, canonical program `A255527.P13612266625817391283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527 (n : ℕ) : ℤ :=
  A255527.P13612266625817391283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255812.P10331550004199229261

`A009998(n)/A152656(n)*A119502(n)`
-/

namespace A255812.P10331550004199229261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A152656 n : ℚ) * (A119502 n : ℚ)

end

end A255812.P10331550004199229261

noncomputable section

/-- A255812: Rectangular array: row n gives the denominators in the positive convolutory n-th root of (1,1,1,...).

Offset 1, canonical program `A255812.P10331550004199229261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255812.P10331550004199229261.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256993.P16020946329340350711

`a(A256992(n+1)-1)+1` with `a(0)=0`
-/

namespace A256993.P16020946329340350711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A256992 (n + 1) - 1).toNat + 1

end

end A256993.P16020946329340350711

noncomputable section

/-- A256993: a(1) = 0; for n > 1, a(n) = 1 + a(A256992(n)).

Offset 1, canonical program `A256993.P16020946329340350711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A256993 (n : ℕ) : ℤ :=
  (A256993.P16020946329340350711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A256993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257508.P829939405799321122

`record[A257507(A152271(n))]`
-/

namespace A257508.P829939405799321122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P829939405799321122

noncomputable section

/-- A257508: Next-to-leaf vertices in binary beanstalk; Numbers n for which A257265(n) = 1.

Offset 1, canonical program `A257508.P829939405799321122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A257508 (n : ℕ) : ℤ :=
  A257508.P829939405799321122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A257508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257512.P6741828352315066934

`A257507(A055938(2*(n+1)))`
-/

namespace A257512.P6741828352315066934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A055938 (2 * (n + 1))).toNat

end

end A257512.P6741828352315066934

noncomputable section

/-- A257512: Those vertices of the binary beanstalk whose children are both leaves.

Offset 1, canonical program `A257512.P6741828352315066934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A257512 (n : ℕ) : ℤ :=
  A257512.P6741828352315066934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A257512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257791.P16391820715187016324

`4*A054582(n)`
-/

namespace A257791.P16391820715187016324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054582 n

end

end A257791.P16391820715187016324

noncomputable section

/-- A257791: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = 2^(n+1)*(2*k - 1), n,k >= 1.

Offset 1, canonical program `A257791.P16391820715187016324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257791 (n : ℕ) : ℤ :=
  A257791.P16391820715187016324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258415.P4473213064253829696

`A151575(A004736(n+1))+A054582(n)`
-/

namespace A258415.P4473213064253829696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 (A004736 (n + 1)).toNat + A054582 n

end

end A258415.P4473213064253829696

noncomputable section

/-- A258415: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (2 + 2^(n-1)*(6*k - 3 + 2*(-1)^n))/3, n,k >= 1.

Offset 1, canonical program `A258415.P4473213064253829696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415 (n : ℕ) : ℤ :=
  A258415.P4473213064253829696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259334.P13494176114006813757

`A122525(∑[char[∑[n]]]²-n)`
-/

namespace A259334.P13494176114006813757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122525 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A259334.P13494176114006813757

noncomputable section

/-- A259334: Triangle read by rows: T(n, k) = k * (n - 1)! * n^(n - k - 1) / (n - k)!.

Offset 1, canonical program `A259334.P13494176114006813757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A259334 (n : ℕ) : ℤ :=
  A259334.P13494176114006813757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A259334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259572.P4293494890795653436

`A004526(A004247(n)+A003989(n+1))`
-/

namespace A259572.P4293494890795653436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004247 n + A003989 (n + 1)).toNat

end

end A259572.P4293494890795653436

noncomputable section

/-- A259572: Reciprocity array of 0; rectangular, read by antidiagonals.

Offset 1, canonical program `A259572.P4293494890795653436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259572 (n : ℕ) : ℤ :=
  A259572.P4293494890795653436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260518.P2775929053660389639

`A260114(2*n+1)/6`
-/

namespace A260518.P2775929053660389639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260114 (2 * n + 1) : ℚ) / 6

end

end A260518.P2775929053660389639

noncomputable section

/-- A260518: Expansion of psi(x)^2 * f(-x^3)^3 / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260518.P2775929053660389639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260518.P2775929053660389639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261445.P1983018921288395960

`A260109(2*n)`
-/

namespace A261445.P1983018921288395960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260109 (2 * n)

end

end A261445.P1983018921288395960

noncomputable section

/-- A261445: Expansion of f(x, x^3) * f(x, x^2)^3 in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A261445.P1983018921288395960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261445 (n : ℕ) : ℤ :=
  A261445.P1983018921288395960.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261642.P1445011013006414723

`A009998(n)*A051129(n+2)`
-/

namespace A261642.P1445011013006414723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A051129 (n + 2)

end

end A261642.P1445011013006414723

noncomputable section

/-- A261642: Triangle, read by rows, where T(n,k) = (k^2 + k)^(n-k) for k=1..n and n>=1.

Offset 1, canonical program `A261642.P1445011013006414723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A261642 (n : ℕ) : ℤ :=
  A261642.P1445011013006414723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A261642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262354.P4317031643290507164

`gcd(A138404(n+1), A244509(n+1))`
-/

namespace A262354.P4317031643290507164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138404 (n + 1)) (A244509 (n + 1))

end

end A262354.P4317031643290507164

noncomputable section

/-- A262354: a(n) is the number of 2 X 2 matrices over Z_p with determinant in {1,-1} where p = prime(n).

Offset 1, canonical program `A262354.P4317031643290507164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262354 (n : ℕ) : ℤ :=
  (A262354.P4317031643290507164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263021.P16204132987011673581

`A260109(Δ[n²])/3`
-/

namespace A263021.P16204132987011673581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A263021.P16204132987011673581

noncomputable section

/-- A263021: Expansion of f(-x^3)^6 / (phi(-x) * phi(-x^3)) in powers of x where phi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A263021.P16204132987011673581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263021.P16204132987011673581.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264731.P3119576634127097994

`A000040(A054582(n))`
-/

namespace A264731.P3119576634127097994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054582 n).toNat

end

end A264731.P3119576634127097994

noncomputable section

/-- A264731: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = prime(2^(n-1)*(2*k-1)), n,k >= 1.

Offset 1, canonical program `A264731.P3119576634127097994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054582, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A264731 (n : ℕ) : ℤ :=
  A264731.P3119576634127097994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054582, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A264731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265848.P6844072925367765983

`A107430(A185180(n+1)-1)`
-/

namespace A265848.P6844072925367765983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A185180 (n + 1) - 1).toNat

end

end A265848.P6844072925367765983

noncomputable section

/-- A265848: Pascal's triangle, right and left halves interchanged.

Offset 0, canonical program `A265848.P6844072925367765983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A265848 (n : ℕ) : ℤ :=
  A265848.P6844072925367765983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A265848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267369.P3092922467413671371

`(n+1)²-A267368(n)`
-/

namespace A267369.P3092922467413671371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267368 n

end

end A267369.P3092922467413671371

noncomputable section

/-- A267369: Total number of OFF (white) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267369.P3092922467413671371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369 (n : ℕ) : ℤ :=
  A267369.P3092922467413671371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267446.P12235518874921593537

`∑[A267445(n)]`
-/

namespace A267446.P12235518874921593537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267446.P12235518874921593537

noncomputable section

/-- A267446: Total number of ON (black) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267446.P12235518874921593537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446 (n : ℕ) : ℤ :=
  A267446.P12235518874921593537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267447.P294490523274346836

`Δ[n²]-A267445(n)`
-/

namespace A267447.P294490523274346836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267445 n

end

end A267447.P294490523274346836

noncomputable section

/-- A267447: Number of OFF (white) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267447.P294490523274346836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447 (n : ℕ) : ℤ :=
  A267447.P294490523274346836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268217.P5610168321208635427

`A133196(n+1)/2*A119741(n+2)`
-/

namespace A268217.P5610168321208635427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133196 (n + 1) : ℚ) / 2 * (A119741 (n + 2) : ℚ)

end

end A268217.P5610168321208635427

noncomputable section

/-- A268217: Triangle read by rows: T(n,k) (n>=3, k=3..n) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,2,3,4,...,s,n} where s is the size of the largest proper open set in t.

Offset 3, canonical program `A268217.P5610168321208635427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268217.P5610168321208635427.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268477.P4055541825993668443

`p?[A268415(n+1)]`
-/

namespace A268477.P4055541825993668443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268477.P4055541825993668443

noncomputable section

/-- A268477: Balanced odious primes: primes with an odd number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268477.P4055541825993668443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477 (n : ℕ) : ℤ :=
  A268477.P4055541825993668443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269529.P254350868632863170

`A020985(A005351(n))`
-/

namespace A269529.P254350868632863170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A005351 n).toNat

end

end A269529.P254350868632863170

noncomputable section

/-- A269529: An analog of the Golay-Rudin-Shapiro sequence (A020985) in base -2 (see comments).

Offset 0, canonical program `A269529.P254350868632863170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529 (n : ℕ) : ℤ :=
  A269529.P254350868632863170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271709.P2626185223326178723

`A131816(n)+1`
-/

namespace A271709.P2626185223326178723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + 1

end

end A271709.P2626185223326178723

noncomputable section

/-- A271709: Table T(n,k) = 2^n + 2^k read by antidiagonals.

Offset 0, canonical program `A271709.P2626185223326178723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271709 (n : ℕ) : ℤ :=
  A271709.P2626185223326178723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272356.P11442915012957242635

`∑[A182986(n+1)]%4`
-/

namespace A272356.P11442915012957242635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A272356.P11442915012957242635

noncomputable section

/-- A272356: (Sum_{i=1..n} prime(i)) mod 4.

Offset 0, canonical program `A272356.P11442915012957242635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272356 (n : ℕ) : ℤ :=
  A272356.P11442915012957242635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274602.P2824057014041455408

`A059036(n)+2*A062707(n)`
-/

namespace A274602.P2824057014041455408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 2 * A062707 n

end

end A274602.P2824057014041455408

noncomputable section

/-- A274602: Triangle read by rows: T(n,k) = k*(n-k+1)^2 + n - k, 0 <= k <= n.

Offset 1, canonical program `A274602.P2824057014041455408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274602 (n : ℕ) : ℤ :=
  A274602.P2824057014041455408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274773.P11672624379083383188

`2*A053616(n)+1`
-/

namespace A274773.P11672624379083383188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053616 n + 1

end

end A274773.P11672624379083383188

noncomputable section

/-- A274773: a(n) = floor(sqrt(2*n-1) + 1/2) - abs(2*(n-1) - (floor(sqrt(2*n-1) + 1/2))^2) + 1.

Offset 1, canonical program `A274773.P11672624379083383188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773 (n : ℕ) : ℤ :=
  A274773.P11672624379083383188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274954.P10035714956963324201

`A000217(p?[A133700(3*n+2)])*A006498(3*n+1)`
-/

namespace A274954.P10035714956963324201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A006498 (3 * n + 1)

end

end A274954.P10035714956963324201

noncomputable section

/-- A274954: Number of n X 3 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

Offset 1, canonical program `A274954.P10035714956963324201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A274954 (n : ℕ) : ℤ :=
  A274954.P10035714956963324201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A274954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275161.P671622255458669779

`2*(dr(A253607(n))+1)`
-/

namespace A275161.P671622255458669779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.digitalRoot (A253607 n) + 1)

end

end A275161.P671622255458669779

noncomputable section

/-- A275161: Number of sides of a polygon formed by tiling n squares in a spiral.

Offset 1, canonical program `A275161.P671622255458669779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275161 (n : ℕ) : ℤ :=
  (A275161.P671622255458669779.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276162.P7641497976450170306

`a(n-round(sqrt(2*n)))*A003989(n+1)` with `a(0)=1`
-/

namespace A276162.P7641497976450170306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat * A003989 (n + 1)

end

end A276162.P7641497976450170306

noncomputable section

/-- A276162: Square array read by antidiagonals: T(n,k) = Product_{i = 1..k} gcd(n, i).

Offset 1, canonical program `A276162.P7641497976450170306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276162 (n : ℕ) : ℤ :=
  A276162.P7641497976450170306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276985.P4240912874753505783

`2*A193862(n)`
-/

namespace A276985.P4240912874753505783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193862 n

end

end A276985.P4240912874753505783

noncomputable section

/-- A276985: Triangle read by rows: T(n,k) = number of k-dimensional elements in an n-dimensional cross-polytope, n>=1, 0<=k

Offset 1, canonical program `A276985.P4240912874753505783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276985 (n : ℕ) : ℤ :=
  A276985.P4240912874753505783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279064.P15784993445143598710

`eq[A010052(2*n)+A010052(n), A050605(n+1)]`
-/

namespace A279064.P15784993445143598710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n) + A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279064.P15784993445143598710

noncomputable section

/-- A279064: Numbers n such that the sum of numbers less than n that do not divide n is even.

Offset 1, canonical program `A279064.P15784993445143598710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064 (n : ℕ) : ℤ :=
  (A279064.P15784993445143598710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280411.P16062598287580684843

`A309761(∑[xor(1, n)])`
-/

namespace A280411.P16062598287580684843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280411.P16062598287580684843

noncomputable section

/-- A280411: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A280411.P16062598287580684843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411 (n : ℕ) : ℤ :=
  A280411.P16062598287580684843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280737.P11588477349100245237

`n-∑[A101660(n)]`
-/

namespace A280737.P11588477349100245237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280737.P11588477349100245237

noncomputable section

/-- A280737: a(n) = A007302(n) - 1.

Offset 1, canonical program `A280737.P11588477349100245237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280737 (n : ℕ) : ℤ :=
  A280737.P11588477349100245237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280843.P6908964579885282676

`A049502(A000203(n+1))`
-/

namespace A280843.P6908964579885282676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000203 (n + 1)).toNat

end

end A280843.P6908964579885282676

noncomputable section

/-- A280843: a(n) = A049502(sigma(n)).

Offset 1, canonical program `A280843.P6908964579885282676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843 (n : ℕ) : ℤ :=
  A280843.P6908964579885282676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281022.P5626948431027533782

`2*A230117(n+2)+1`
-/

namespace A281022.P5626948431027533782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230117 (n + 2) + 1

end

end A281022.P5626948431027533782

noncomputable section

/-- A281022: Single (or isolated or non-twin) primes that are also safe primes.

Offset 1, canonical program `A281022.P5626948431027533782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281022 (n : ℕ) : ℤ :=
  A281022.P5626948431027533782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281497.P13334527158016198165

`A049502(A003188(n+1))`
-/

namespace A281497.P13334527158016198165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A003188 (n + 1)).toNat

end

end A281497.P13334527158016198165

noncomputable section

/-- A281497: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the left by a '0', counting the rightmost digit as position 1.

Offset 1, canonical program `A281497.P13334527158016198165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A281497 (n : ℕ) : ℤ :=
  A281497.P13334527158016198165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A281497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281881.P16857394866510108787

`∑[A010054(n)]*A267849(n)`
-/

namespace A281881.P16857394866510108787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A267849 n

end

end A281881.P16857394866510108787

noncomputable section

/-- A281881: Triangle read by rows: T(n,k) (n>=1, 2<=k<=n+1) is the number of k-sequences of balls colored with at most n colors such that exactly one ball is of a color seen previously in the sequence.

Offset 1, canonical program `A281881.P16857394866510108787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A281881 (n : ℕ) : ℤ :=
  A281881.P16857394866510108787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A281881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285192.P8636717589507868454

`floor(A082046(n)/2)`
-/

namespace A285192.P8636717589507868454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082046 n : ℚ) / 2⌋

end

end A285192.P8636717589507868454

noncomputable section

/-- A285192: Array read by antidiagonals: T(n,k) = n*k*(3+n*k)/2 (n >= 0, k >= 0).

Offset 0, canonical program `A285192.P8636717589507868454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285192 (n : ℕ) : ℤ :=
  A285192.P8636717589507868454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285474.P15837645706445647605

`A309761(∑[A266303(n)])`
-/

namespace A285474.P15837645706445647605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285474.P15837645706445647605

noncomputable section

/-- A285474: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285474.P15837645706445647605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474 (n : ℕ) : ℤ :=
  A285474.P15837645706445647605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285541.P13893119404520415230

`A309761(∑[A266981(n)])`
-/

namespace A285541.P13893119404520415230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285541.P13893119404520415230

noncomputable section

/-- A285541: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285541.P13893119404520415230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541 (n : ℕ) : ℤ :=
  A285541.P13893119404520415230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285962.P11120950042759192256

`∑[A036578(abs(1-n))!]`
-/

namespace A285962.P11120950042759192256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036578 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285962.P11120950042759192256

noncomputable section

/-- A285962: Positions of 1 in A285960; complement of A285961.

Offset 1, canonical program `A285962.P11120950042759192256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962 (n : ℕ) : ℤ :=
  (A285962.P11120950042759192256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286108.P8792181165033674960

`A221146(n)+A057944(n)`
-/

namespace A286108.P8792181165033674960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 n + A057944 n

end

end A286108.P8792181165033674960

noncomputable section

/-- A286108: Square array read by antidiagonals: A(n,k) = T(2*(n AND k), n XOR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286108.P8792181165033674960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108 (n : ℕ) : ℤ :=
  A286108.P8792181165033674960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287957.P9450790223427472973

`gcd(A000217(A132411(n)), A003989(n+1))`
-/

namespace A287957.P9450790223427472973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A132411 n).toNat) (A003989 (n + 1))

end

end A287957.P9450790223427472973

noncomputable section

/-- A287957: Table read by antidiagonals: T(n, k) = greatest common recursive divisor of n and k; n > 0 and k > 0.

Offset 1, canonical program `A287957.P9450790223427472973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A287957 (n : ℕ) : ℤ :=
  (A287957.P9450790223427472973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A287957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288165.P5831388046944301528

`A029139(n)-A029152(n)`
-/

namespace A288165.P5831388046944301528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 n - A029152 n

end

end A288165.P5831388046944301528

noncomputable section

/-- A288165: Expansion of x^4/((1-x^4)*(1-x^3)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A288165.P5831388046944301528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288165 (n : ℕ) : ℤ :=
  A288165.P5831388046944301528.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288571.P7040563331996419951

`2*A133700(n+1)-A007425(n+1)`
-/

namespace A288571.P7040563331996419951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133700 (n + 1) - A007425 (n + 1)

end

end A288571.P7040563331996419951

noncomputable section

/-- A288571: a(n) = Sum_{d|n} (-1)^(n/d+1)*tau(d), where tau = number of divisors (A000005).

Offset 1, canonical program `A288571.P7040563331996419951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288571 (n : ℕ) : ℤ :=
  A288571.P7040563331996419951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288778.P10589450671550986941

`A059036(n)*A233543(n)`
-/

namespace A288778.P10589450671550986941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n * A233543 n

end

end A288778.P10589450671550986941

noncomputable section

/-- A288778: Triangle read by rows (1<=k<=n): T(n,k) = (n-k+1)*k! - (k-1)!

Offset 1, canonical program `A288778.P10589450671550986941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288778 (n : ℕ) : ℤ :=
  A288778.P10589450671550986941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288870.P11047461779992407775

`A054582(n)+1`
-/

namespace A288870.P11047461779992407775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n + 1

end

end A288870.P11047461779992407775

noncomputable section

/-- A288870: Triangle T from array A(k,n) = (2*k+1)*2^n + 1, k >=0, n >= 0 read by downwards antidiagonals.

Offset 0, canonical program `A288870.P11047461779992407775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288870 (n : ℕ) : ℤ :=
  A288870.P11047461779992407775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290232.P11019390822315618094

`A309761(A093005(n+1))`
-/

namespace A290232.P11019390822315618094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A093005 (n + 1)).toNat

end

end A290232.P11019390822315618094

noncomputable section

/-- A290232: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290232.P11019390822315618094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232 (n : ℕ) : ℤ :=
  A290232.P11019390822315618094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290450.P10399462195155768375

`p?[A076368(n+2)%5*A000040(n+1)]`
-/

namespace A290450.P10399462195155768375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076368 (n + 2)) 5 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290450.P10399462195155768375

noncomputable section

/-- A290450: Primes with property that the next prime has the same last digit.

Offset 1, canonical program `A290450.P10399462195155768375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450 (n : ℕ) : ℤ :=
  A290450.P10399462195155768375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299763.P9872008477996207838

`1+A182986(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299763.P9872008477996207838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A182986 (n + 1)

end

end A299763.P9872008477996207838

noncomputable section

/-- A299763: a(n) = 1 + A182986(n).

Offset 1, canonical program `A299763.P9872008477996207838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763 (n : ℕ) : ℤ :=
  A299763.P9872008477996207838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300401.P1723382779798005769

`A139600(A061579(n))+A139600(n)`
-/

namespace A300401.P1723382779798005769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A061579 n).toNat + A139600 n

end

end A300401.P1723382779798005769

noncomputable section

/-- A300401: Array T(n,k) = n*(binomial(k, 2) + 1) + k*(binomial(n, 2) + 1) read by antidiagonals.

Offset 0, canonical program `A300401.P1723382779798005769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300401 (n : ℕ) : ℤ :=
  A300401.P1723382779798005769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305722.P15996365835608789780

`∑[A019564(n)]`
-/

namespace A305722.P15996365835608789780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305722.P15996365835608789780

noncomputable section

/-- A305722: Crystal ball sequence for the lattice C_8.

Offset 0, canonical program `A305722.P15996365835608789780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722 (n : ℕ) : ℤ :=
  A305722.P15996365835608789780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305723.P14653554493018338077

`∑[A035746(n)]`
-/

namespace A305723.P14653554493018338077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305723.P14653554493018338077

noncomputable section

/-- A305723: Crystal ball sequence for the lattice C_9.

Offset 0, canonical program `A305723.P14653554493018338077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723 (n : ℕ) : ℤ :=
  A305723.P14653554493018338077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308569.P15723191268736136864

`∑{d}[A002260(n+1), #^A094053(n+1)]`
-/

namespace A308569.P15723191268736136864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A094053 (n + 1) : ℤ)

end

end A308569.P15723191268736136864

noncomputable section

/-- A308569: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where A(n,k) is Sum_{d|n} d^(k*n).

Offset 1, canonical program `A308569.P15723191268736136864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308569.P15723191268736136864.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A308569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313202.P16962560134668645847

`A004396(n)+A313053(n)-A004525(n)`
-/

namespace A313202.P16962560134668645847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313053 n - A004525 n)

end

end A313202.P16962560134668645847

noncomputable section

/-- A313202: Coordination sequence Gal.4.96.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313202.P16962560134668645847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A313202 (n : ℕ) : ℤ :=
  A313202.P16962560134668645847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A313202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313525.P8743535936701336269

`2*A313506(n)-A313476(n)`
-/

namespace A313525.P8743535936701336269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313506 n - A313476 n

end

end A313525.P8743535936701336269

noncomputable section

/-- A313525: Coordination sequence Gal.6.249.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313525.P8743535936701336269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313525 (n : ℕ) : ℤ :=
  A313525.P8743535936701336269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313595.P182879092079943348

`2*A313575(n)-A313565(n)`
-/

namespace A313595.P182879092079943348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313575 n - A313565 n

end

end A313595.P182879092079943348

noncomputable section

/-- A313595: Coordination sequence Gal.6.464.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313595.P182879092079943348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595 (n : ℕ) : ℤ :=
  A313595.P182879092079943348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313682.P7898542429883627702

`A047263(n+1)+A313476(n)-n`
-/

namespace A313682.P7898542429883627702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A313476 n - (n : ℤ))

end

end A313682.P7898542429883627702

noncomputable section

/-- A313682: Coordination sequence Gal.5.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313682.P7898542429883627702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A313682 (n : ℕ) : ℤ :=
  A313682.P7898542429883627702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A313682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313736.P16871043691306963978

`A313053(n)+A004396(A004396(n))`
-/

namespace A313736.P16871043691306963978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + A004396 (A004396 n).toNat

end

end A313736.P16871043691306963978

noncomputable section

/-- A313736: Coordination sequence Gal.6.363.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313736.P16871043691306963978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313736 (n : ℕ) : ℤ :=
  A313736.P16871043691306963978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313739.P2057595720554128706

`A004525(n)+A313698(n)-A004396(A004525(n))`
-/

namespace A313739.P2057595720554128706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313698 n - A004396 (A004525 n).toNat)

end

end A313739.P2057595720554128706

noncomputable section

/-- A313739: Coordination sequence Gal.6.159.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313739.P2057595720554128706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739 (n : ℕ) : ℤ :=
  A313739.P2057595720554128706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313956.P5999280833725996003

`2*A313875(n)-A313782(n)`
-/

namespace A313956.P5999280833725996003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A313782 n

end

end A313956.P5999280833725996003

noncomputable section

/-- A313956: Coordination sequence Gal.6.652.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313956.P5999280833725996003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A313956 (n : ℕ) : ℤ :=
  A313956.P5999280833725996003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A313956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314020.P15849566854326766126

`A313476(n)+Δ[A011858(n)]`
-/

namespace A314020.P15849566854326766126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + (f1 (n + 1) - f1 n)

end

end A314020.P15849566854326766126

noncomputable section

/-- A314020: Coordination sequence Gal.6.247.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314020.P15849566854326766126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2392 terms. -/
def A314020 (n : ℕ) : ℤ :=
  A314020.P15849566854326766126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2392 terms. -/
def A314020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314203.P8872604243500081186

`A265227(n+1)+A313476(n)-n`
-/

namespace A314203.P8872604243500081186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A313476 n - (n : ℤ))

end

end A314203.P8872604243500081186

noncomputable section

/-- A314203: Coordination sequence Gal.5.88.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314203.P8872604243500081186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314203 (n : ℕ) : ℤ :=
  A314203.P8872604243500081186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314220.P5659571598859034226

`A313053(n)+n`
-/

namespace A314220.P5659571598859034226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + (n : ℤ)

end

end A314220.P5659571598859034226

noncomputable section

/-- A314220: Coordination sequence Gal.5.306.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314220.P5659571598859034226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314220 (n : ℕ) : ℤ :=
  A314220.P5659571598859034226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314959.P7859421504801099217

`A004525(n)+A314899(n)-A004396(A004525(n))`
-/

namespace A314959.P7859421504801099217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314899 n - A004396 (A004525 n).toNat)

end

end A314959.P7859421504801099217

noncomputable section

/-- A314959: Coordination sequence Gal.6.340.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314959.P7859421504801099217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959 (n : ℕ) : ℤ :=
  A314959.P7859421504801099217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315053.P5459368638815230742

`A004396(n)+A314899(n)-A004525(n)`
-/

namespace A315053.P5459368638815230742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314899 n - A004525 n)

end

end A315053.P5459368638815230742

noncomputable section

/-- A315053: Coordination sequence Gal.6.345.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315053.P5459368638815230742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053 (n : ℕ) : ℤ :=
  A315053.P5459368638815230742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315333.P16393821972172640477

`A315275(n)+A008676(A016777(n))`
-/

namespace A315333.P16393821972172640477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315275 n + A008676 (A016777 n).toNat

end

end A315333.P16393821972172640477

noncomputable section

/-- A315333: Coordination sequence Gal.5.292.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315333.P16393821972172640477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333 (n : ℕ) : ℤ :=
  A315333.P16393821972172640477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315335.P12030960458542249

`A314899(n)+A004396(n)`
-/

namespace A315335.P12030960458542249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A004396 n

end

end A315335.P12030960458542249

noncomputable section

/-- A315335: Coordination sequence Gal.6.624.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315335.P12030960458542249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335 (n : ℕ) : ℤ :=
  A315335.P12030960458542249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315412.P16716451552511901256

`abs(A008592(n)-A313255(n))`
-/

namespace A315412.P16716451552511901256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313255 n|

end

end A315412.P16716451552511901256

noncomputable section

/-- A315412: Coordination sequence Gal.5.141.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315412.P16716451552511901256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315412 (n : ℕ) : ℤ :=
  A315412.P16716451552511901256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315479.P4180751109111946087

`A313698(n)+A004525(n)`
-/

namespace A315479.P4180751109111946087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A004525 n

end

end A315479.P4180751109111946087

noncomputable section

/-- A315479: Coordination sequence Gal.6.210.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315479.P4180751109111946087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479 (n : ℕ) : ℤ :=
  A315479.P4180751109111946087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315481.P74549118950222558

`A330025(n)+A313782(n)`
-/

namespace A315481.P74549118950222558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313782 n

end

end A315481.P74549118950222558

noncomputable section

/-- A315481: Coordination sequence Gal.5.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315481.P74549118950222558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315481 (n : ℕ) : ℤ :=
  A315481.P74549118950222558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315518.P4860043378548832056

`A315468(n)+A110654(A057354(n))`
-/

namespace A315518.P4860043378548832056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n + A110654 (A057354 n).toNat

end

end A315518.P4860043378548832056

noncomputable section

/-- A315518: Coordination sequence Gal.5.291.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315518.P4860043378548832056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518 (n : ℕ) : ℤ :=
  A315518.P4860043378548832056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315549.P12001438916279019003

`A314899(n)+n`
-/

namespace A315549.P12001438916279019003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + (n : ℤ)

end

end A315549.P12001438916279019003

noncomputable section

/-- A315549: Coordination sequence Gal.6.628.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315549.P12001438916279019003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549 (n : ℕ) : ℤ :=
  A315549.P12001438916279019003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315630.P1935897935145256014

`2*A313476(n)-A008574(n)`
-/

namespace A315630.P1935897935145256014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313476 n - A008574 n

end

end A315630.P1935897935145256014

noncomputable section

/-- A315630: Coordination sequence Gal.6.233.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315630.P1935897935145256014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A315630 (n : ℕ) : ℤ :=
  A315630.P1935897935145256014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A315630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315684.P8057506164725959055

`A313476(n)+n`
-/

namespace A315684.P8057506164725959055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + (n : ℤ)

end

end A315684.P8057506164725959055

noncomputable section

/-- A315684: Coordination sequence Gal.5.291.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315684.P8057506164725959055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315684 (n : ℕ) : ℤ :=
  A315684.P8057506164725959055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315739.P13129759353165828185

`A315680(n)+Δ[A011862(n)]`
-/

namespace A315739.P13129759353165828185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n + (f1 (n + 1) - f1 n)

end

end A315739.P13129759353165828185

noncomputable section

/-- A315739: Coordination sequence Gal.5.135.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315739.P13129759353165828185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739 (n : ℕ) : ℤ :=
  A315739.P13129759353165828185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315761.P1947908363640495384

`A330025(n)+A314252(n)`
-/

namespace A315761.P1947908363640495384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314252 n

end

end A315761.P1947908363640495384

noncomputable section

/-- A315761: Coordination sequence Gal.5.295.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315761.P1947908363640495384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A315761 (n : ℕ) : ℤ :=
  A315761.P1947908363640495384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A315761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316322.P16038970231065936341

`A167214(n+1)+A062020(n+1)`
-/

namespace A316322.P16038970231065936341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) + A062020 (n + 1)

end

end A316322.P16038970231065936341

noncomputable section

/-- A316322: Sum of piles of first n primes: a(n) = Sum(prime(i)*(2*i-1): 1<=i<=n).

Offset 1, canonical program `A316322.P16038970231065936341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316322 (n : ℕ) : ℤ :=
  A316322.P16038970231065936341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316715.P11769109710965712386

`A107782(2*A003726(n+1))+1`
-/

namespace A316715.P11769109710965712386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (2 * A003726 (n + 1)).toNat + 1

end

end A316715.P11769109710965712386

noncomputable section

/-- A316715: a(n) is the number of 1s in A316713(n). That is, a(n) is the number of B-sequences (A278039) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316715.P11769109710965712386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715 (n : ℕ) : ℤ :=
  A316715.P11769109710965712386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318681.P12311283223604938976

`(n+1)*A299149(n+1)`
-/

namespace A318681.P12311283223604938976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A299149 (n + 1)

end

end A318681.P12311283223604938976

noncomputable section

/-- A318681: a(n) = n * A299149(n).

Offset 1, canonical program `A318681.P12311283223604938976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318681 (n : ℕ) : ℤ :=
  A318681.P12311283223604938976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321490.P3505959311792862823

`A070216(n+1)*A108872(n+1)`
-/

namespace A321490.P3505959311792862823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) * A108872 (n + 1)

end

end A321490.P3505959311792862823

noncomputable section

/-- A321490: Triangular table T[n,k] = (n+k)(n^2+k^2), 1 <= k <= n = 1, 2, 3, ...; read by rows.

Offset 1, canonical program `A321490.P3505959311792862823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321490 (n : ℕ) : ℤ :=
  A321490.P3505959311792862823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321553.P1101805715336315510

`∑{d}[n+1, A306412(#)*A321552((n+1)/#)]`
-/

namespace A321553.P1101805715336315510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306412 d * A321552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321553.P1101805715336315510

noncomputable section

/-- A321553: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^8.

Offset 1, canonical program `A321553.P1101805715336315510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321553 (n : ℕ) : ℤ :=
  A321553.P1101805715336315510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321818.P11557806207317153073

`∑{d}[n+1, A096961(#)*A306412((n+1)/#)]`
-/

namespace A321818.P11557806207317153073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096961 d * A306412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321818.P11557806207317153073

noncomputable section

/-- A321818: a(n) = Sum_{d|n, n/d odd} d^8 for n > 0.

Offset 1, canonical program `A321818.P11557806207317153073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321818 (n : ℕ) : ℤ :=
  A321818.P11557806207317153073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322550.P8618684598971273122

`A003990(n+1)²/(A002260(n+1)*A003989(n+1))`
-/

namespace A322550.P8618684598971273122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) ^ 2 : ℚ) / (A002260 (n + 1) * A003989 (n + 1) : ℚ)

end

end A322550.P8618684598971273122

noncomputable section

/-- A322550: Table read by ascending antidiagonals: T(n, k) is the minimum number of cubes necessary to fill a right square prism with base area n^2 and height k.

Offset 1, canonical program `A322550.P8618684598971273122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322550.P8618684598971273122.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324472.P9683868638575580254

`A038459(A059126(3*n+1))%(n+1)`
-/

namespace A324472.P9683868638575580254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038459 (A059126 (3 * n + 1)).toNat) (n + 1 : ℤ)

end

end A324472.P9683868638575580254

noncomputable section

/-- A324472: a(n) = 1000 mod n.

Offset 1, canonical program `A324472.P9683868638575580254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472 (n : ℕ) : ℤ :=
  A324472.P9683868638575580254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324799.P15549843488400113216

`A098350(n+1)-A000040(A003991(n+1))`
-/

namespace A324799.P15549843488400113216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1) - A000040 (A003991 (n + 1)).toNat

end

end A324799.P15549843488400113216

noncomputable section

/-- A324799: Symmetric square array read by antidiagonals: T(n,k) = p(n)*p(k)-p(n*k), where p(i) = prime(i), for n>=1, k>=1.

Offset 1, canonical program `A324799.P15549843488400113216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A324799 (n : ℕ) : ℤ :=
  A324799.P15549843488400113216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A324799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325003.P6363565412475937123

`A198321(n+2)`
-/

namespace A325003.P6363565412475937123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 2)

end

end A325003.P6363565412475937123

noncomputable section

/-- A325003: Triangle read by rows: T(n,k) is the number of achiral colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

Offset 1, canonical program `A325003.P6363565412475937123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003 (n : ℕ) : ℤ :=
  A325003.P6363565412475937123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326417.P3226228404223211668

`∑{d}[n+1, A133700(#)]`
-/

namespace A326417.P3226228404223211668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d

end

end A326417.P3226228404223211668

noncomputable section

/-- A326417: Dirichlet g.f.: zeta(s)^4 * (1 - 2^(-s)).

Offset 1, canonical program `A326417.P3226228404223211668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326417 (n : ℕ) : ℤ :=
  A326417.P3226228404223211668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326730.P13455285298396678906

`A161511(n)+A055941(n)`
-/

namespace A326730.P13455285298396678906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n + A055941 n

end

end A326730.P13455285298396678906

noncomputable section

/-- A326730: Number of iterations of A326729(x) starting at x = n to reach 0.

Offset 0, canonical program `A326730.P13455285298396678906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326730 (n : ℕ) : ℤ :=
  A326730.P13455285298396678906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327318.P6576024194411720780

`A074909(n)*A130328(n)`
-/

namespace A327318.P6576024194411720780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A130328 n

end

end A327318.P6576024194411720780

noncomputable section

/-- A327318: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = 2^(n-1) ((x+r)^n - (x+s)^n)/(r - s), where r = 1 and s = 1/2.

Offset 1, canonical program `A327318.P6576024194411720780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327318 (n : ℕ) : ℤ :=
  A327318.P6576024194411720780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328077.P1379957031522904004

`comp[-A254027(n)]`
-/

namespace A328077.P1379957031522904004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A254027 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328077.P1379957031522904004

noncomputable section

/-- A328077: Complement of A192110.

Offset 1, canonical program `A328077.P1379957031522904004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328077 (n : ℕ) : ℤ :=
  (A328077.P1379957031522904004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328486.P5467040428726850647

`∑{d}[n+1, A133700(#+#)-A133700(#)]`
-/

namespace A328486.P5467040428726850647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A133700 (d + d) - A133700 d)

end

end A328486.P5467040428726850647

noncomputable section

/-- A328486: Dirichlet g.f.: zeta(s)^4 * (1 - 2^(-s))^2.

Offset 1, canonical program `A328486.P5467040428726850647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328486 (n : ℕ) : ℤ :=
  A328486.P5467040428726850647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328568.P3353613045222164027

`A003987(eq[n, A286099(n)])`
-/

namespace A328568.P3353613045222164027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328568.P3353613045222164027

noncomputable section

/-- A328568: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) XOR k, k = 0..n}, in ascending order (where XOR denotes the bitwise XOR operator).

Offset 0, canonical program `A328568.P3353613045222164027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A328568 (n : ℕ) : ℤ :=
  A328568.P3353613045222164027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A328568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329854.P9235265463401662256

`2*(n+1)-A131422(n+1)`
-/

namespace A329854.P9235265463401662256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A131422 (n + 1)

end

end A329854.P9235265463401662256

noncomputable section

/-- A329854: Triangle read by rows: T(n,k) = ((n - k)*(n + k - 1) + 2)/2, 0 <= k <= n.

Offset 0, canonical program `A329854.P9235265463401662256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329854 (n : ℕ) : ℤ :=
  A329854.P9235265463401662256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330613.P15871994643795830134

`A151890(A061579(n))+1`
-/

namespace A330613.P15871994643795830134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 (A061579 n).toNat + 1

end

end A330613.P15871994643795830134

noncomputable section

/-- A330613: Triangle read by rows: T(n, k) = 1 + k - 2*n - 2*k*n + 2*n^2, with 0 <= k < n.

Offset 1, canonical program `A330613.P15871994643795830134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330613 (n : ℕ) : ℤ :=
  A330613.P15871994643795830134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332790.P8415048500789957359

`A101447(n)+A083381(n)`
-/

namespace A332790.P8415048500789957359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + A083381 n

end

end A332790.P8415048500789957359

noncomputable section

/-- A332790: Triangle read by rows: T(n,k) = 1 + 2*n + k + 5*k(n-k) for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A332790.P8415048500789957359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332790 (n : ℕ) : ℤ :=
  A332790.P8415048500789957359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333363.P17407315961805387594

`A059126(record[xor(3, n)])`
-/

namespace A333363.P17407315961805387594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A333363.P17407315961805387594

noncomputable section

/-- A333363: Horizontal visibility sequence at the onset of chaos in the 3-period cascade.

Offset 1, canonical program `A333363.P17407315961805387594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363 (n : ℕ) : ℤ :=
  A333363.P17407315961805387594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333428.P1752145011509704751

`∩[A333427(n+1)-1, A333427(n+1)]`
-/

namespace A333428.P1752145011509704751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333428.P1752145011509704751

noncomputable section

/-- A333428: Starts of runs of 3 consecutive primorial base Niven numbers (A333426).

Offset 1, canonical program `A333428.P1752145011509704751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428 (n : ℕ) : ℤ :=
  (A333428.P1752145011509704751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335003.P13569162527481826655

`A000051(A002024(n+1))*A057728(A080036(n))`
-/

namespace A335003.P13569162527481826655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat * A057728 (A080036 n).toNat

end

end A335003.P13569162527481826655

noncomputable section

/-- A335003: Triangle read by rows where the n-th row is the cycle trajectory of 2^n+1 in the divide-or-choose 2 rule.

Offset 1, canonical program `A335003.P13569162527481826655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003 (n : ℕ) : ℤ :=
  A335003.P13569162527481826655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A335003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336236.P15959386538483280478

`A182986(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A336236.P15959386538483280478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A182986 n - a (n - 2)

end

end A336236.P15959386538483280478

noncomputable section

/-- A336236: a(n) = prime(n-2) - a(n-2) for n > 2, starting with a(1)=1, a(2)=1.

Offset 1, canonical program `A336236.P15959386538483280478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336236 (n : ℕ) : ℤ :=
  A336236.P15959386538483280478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339116.P16320538012076833664

`filter[A087112(n+1), A049240(#)]`
-/

namespace A339116.P16320538012076833664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A339116.P16320538012076833664

noncomputable section

/-- A339116: Triangle of all squarefree semiprimes grouped by greater prime factor, read by rows.

Offset 2, canonical program `A339116.P16320538012076833664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A339116 (n : ℕ) : ℤ :=
  A339116.P16320538012076833664.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A339116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339747.P6231094323281065904

`A000593(A132741(n+1))`
-/

namespace A339747.P6231094323281065904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A132741 (n + 1)).toNat

end

end A339747.P6231094323281065904

noncomputable section

/-- A339747: a(n) = (5^(valuation(n, 5) + 1) - 1) / 4.

Offset 1, canonical program `A339747.P6231094323281065904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339747 (n : ℕ) : ℤ :=
  A339747.P6231094323281065904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340068.P1048881016749436141

`∑[A151774(n)]`
-/

namespace A340068.P1048881016749436141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P1048881016749436141

noncomputable section

/-- A340068: a(n) is the number of integers in the set {n+1, n+2, ..., 2*n} whose representation in base 2 contain exactly three digits 1's.

Offset 1, canonical program `A340068.P1048881016749436141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340068 (n : ℕ) : ℤ :=
  A340068.P1048881016749436141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340503.P1192746617364733996

`and(3, 2*(n+4)-A020987(n))`
-/

namespace A340503.P1192746617364733996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((2 * (n + 4) : ℤ) - A020987 n)

end

end A340503.P1192746617364733996

noncomputable section

/-- A340503: Fixed under 0 -> 02, 1 -> 32, 2 -> 01, 3 -> 31.

Offset 1, canonical program `A340503.P1192746617364733996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503 (n : ℕ) : ℤ :=
  A340503.P1192746617364733996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342882.P14357648193117281886

`A003987(A286098(n+1)-A003056(n+1))`
-/

namespace A342882.P14357648193117281886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A286098 (n + 1) - A003056 (n + 1)).toNat

end

end A342882.P14357648193117281886

noncomputable section

/-- A342882: Array read by antidiagonals: Sprague Grundy values for two-dimensional Misère Nim game Gamma(P_{Mis}, C^2).

Offset 0, canonical program `A342882.P14357648193117281886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342882 (n : ℕ) : ℤ :=
  A342882.P14357648193117281886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343041.P18075580334422087876

`A200748(∑[char[A162608(n)]])`
-/

namespace A343041.P18075580334422087876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343041.P18075580334422087876

noncomputable section

/-- A343041: a(0) = 0 and for any n > 0, a(n) = A343040(a(n-1), n).

Offset 0, canonical program `A343041.P18075580334422087876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A343041 (n : ℕ) : ℤ :=
  A343041.P18075580334422087876.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A343041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343125.P13911590155244152463

`A209304(n+1)-A176270(n)`
-/

namespace A343125.P13911590155244152463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209304 (n + 1) - A176270 n

end

end A343125.P13911590155244152463

noncomputable section

/-- A343125: Triangle T(k, n) = (n+3)*(k-n) - 4, k >= 2, 1 <= n <= k-1, read by rows.

Offset 2, canonical program `A343125.P13911590155244152463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343125 (n : ℕ) : ℤ :=
  A343125.P13911590155244152463.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343237.P10079992931022798806

`A051129(n+1)-A095884(A038722(n+1))`
-/

namespace A343237.P10079992931022798806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A095884 (A038722 (n + 1)).toNat

end

end A343237.P10079992931022798806

noncomputable section

/-- A343237: Triangle T obtained from the array A(n, k) = (k+1)^(n+1) - k^(n+1), n, k >= 0, by reading antidiagonals upwards.

Offset 0, canonical program `A343237.P10079992931022798806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A343237 (n : ℕ) : ℤ :=
  A343237.P10079992931022798806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A343237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344344.P11501963061493860304

`∩[A344343(n+1)-1, A344343(n+1)]`
-/

namespace A344344.P11501963061493860304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344344.P11501963061493860304

noncomputable section

/-- A344344: Starts of runs of 4 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344344.P11501963061493860304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344 (n : ℕ) : ℤ :=
  (A344344.P11501963061493860304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346633.P1782636682428832130

`A029837(n+1)-A209281(n+1)`
-/

namespace A346633.P1782636682428832130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A209281 (n + 1)

end

end A346633.P1782636682428832130

noncomputable section

/-- A346633: Sum of even-indexed parts (even bisection) of the n-th composition in standard order.

Offset 0, canonical program `A346633.P1782636682428832130`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A209281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346633 (n : ℕ) : ℤ :=
  A346633.P1782636682428832130.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A209281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144079.P16455601221658546994

`abs(A113473(n+1)-A144078(n+1))`
-/

namespace A144079.P16455601221658546994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113473 (n + 1) - A144078 (n + 1)|

end

end A144079.P16455601221658546994

noncomputable section

/-- A144079: a(n) = the number of digits in the binary representation of n that equal the corresponding digit in the binary reversal of n. (I.e., a(n) = number of 0's in n XOR A030101(n).)

Offset 1, canonical program `A144079.P16455601221658546994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144079 (n : ℕ) : ℤ :=
  A144079.P16455601221658546994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144084.P15154162313279112689

`A007318(n)*A008279(n)`
-/

namespace A144084.P15154162313279112689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008279 n

end

end A144084.P15154162313279112689

noncomputable section

/-- A144084: T(n,k) is the number of partial bijections of height k (height(alpha) = |Im(alpha)|) of an n-element set.

Offset 0, canonical program `A144084.P15154162313279112689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A144084 (n : ℕ) : ℤ :=
  A144084.P15154162313279112689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A144084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144403.P18283006545070846630

`2*C(A007318(n), 2)-1`
-/

namespace A144403.P18283006545070846630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A007318 n).toNat 2 : ℤ) - 1

end

end A144403.P18283006545070846630

noncomputable section

/-- A144403: Triangle T(n, k) = binomial(n, k)^2 - binomial(n, k) - 1, read by rows.

Offset 0, canonical program `A144403.P18283006545070846630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144403 (n : ℕ) : ℤ :=
  A144403.P18283006545070846630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144404.P1827414218033536067

`A144390(A007318(n))`
-/

namespace A144404.P1827414218033536067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (A007318 n).toNat

end

end A144404.P1827414218033536067

noncomputable section

/-- A144404: Triangle T(n,k) = 3*binomial(n, k)^2 - binomial(n, k) - 1, read by rows.

Offset 0, canonical program `A144404.P1827414218033536067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A144390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144404 (n : ℕ) : ℤ :=
  A144404.P1827414218033536067.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A144390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145224.P15372820718121127702

`A007318(n)*A003221(A025581(n))`
-/

namespace A145224.P15372820718121127702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A003221 (A025581 n).toNat

end

end A145224.P15372820718121127702

noncomputable section

/-- A145224: Triangle read by rows: T(n,k) is the number of even permutations (of an n-set) with exactly k fixed points.

Offset 0, canonical program `A145224.P15372820718121127702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145224 (n : ℕ) : ℤ :=
  A145224.P15372820718121127702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145225.P16601938539536274568

`A007318(n)*A000387(A025581(n))`
-/

namespace A145225.P16601938539536274568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000387 (A025581 n).toNat

end

end A145225.P16601938539536274568

noncomputable section

/-- A145225: Triangle read by rows: T(n,k) is the number of odd permutations (of an n-set) with exactly k fixed points.

Offset 0, canonical program `A145225.P16601938539536274568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145225 (n : ℕ) : ℤ :=
  A145225.P16601938539536274568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152198.P9677035182009018168

`A007318(n-C(ceil(sqrt(n)), 2))`
-/

namespace A152198.P9677035182009018168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n - Nat.choose ⌈Real.sqrt (n : ℝ)⌉.toNat 2)

end

end A152198.P9677035182009018168

noncomputable section

/-- A152198: Triangle read by rows, A007318 rows repeated.

Offset 0, canonical program `A152198.P9677035182009018168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152198 (n : ℕ) : ℤ :=
  A152198.P9677035182009018168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152905.P10328363192187516747

`A007318(floor(n/2))`
-/

namespace A152905.P10328363192187516747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 2⌋.toNat

end

end A152905.P10328363192187516747

noncomputable section

/-- A152905: Irregular triangle read by rows, numbers in A007318 repeated .

Offset 0, canonical program `A152905.P10328363192187516747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152905 (n : ℕ) : ℤ :=
  A152905.P10328363192187516747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152906.P12804490832586299334

`A007318(floor(n/3))`
-/

namespace A152906.P12804490832586299334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 3⌋.toNat

end

end A152906.P12804490832586299334

noncomputable section

/-- A152906: Irregular triangle read by rows, numbers in A007318 repeated three times .

Offset 0, canonical program `A152906.P12804490832586299334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152906 (n : ℕ) : ℤ :=
  A152906.P12804490832586299334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153086.P1539337215457405017

`A095277(n+1)-1`
-/

namespace A153086.P1539337215457405017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095277 (n + 1) - 1

end

end A153086.P1539337215457405017

noncomputable section

/-- A153086: Numbers n such that 4*n+7 is not prime.

Offset 1, canonical program `A153086.P1539337215457405017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153086 (n : ℕ) : ℤ :=
  A153086.P1539337215457405017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153491.P5433564092227727412

`11*A007318(n)-8`
-/

namespace A153491.P5433564092227727412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A007318 n - 8

end

end A153491.P5433564092227727412

noncomputable section

/-- A153491: Triangle T(n,m)= 11*binomial(n,k) - 8 read by rows, 0<=k<=n.

Offset 0, canonical program `A153491.P5433564092227727412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153491 (n : ℕ) : ℤ :=
  A153491.P5433564092227727412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154372.P6688553905253270137

`A007318(n)*A009998(n)`
-/

namespace A154372.P6688553905253270137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A009998 n

end

end A154372.P6688553905253270137

noncomputable section

/-- A154372: Triangle T(n,k) = (k+1)^(n-k)*binomial(n,k).

Offset 0, canonical program `A154372.P6688553905253270137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3344 terms. -/
def A154372 (n : ℕ) : ℤ :=
  A154372.P6688553905253270137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3344 terms. -/
def A154372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155495.P14503625525191731558

`A007318(n)*A086645(n)`
-/

namespace A155495.P14503625525191731558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A086645 n

end

end A155495.P14503625525191731558

noncomputable section

/-- A155495: Triangle read by rows: t(n,m) = binomial(2*n,2*m) * binomial(n,m).

Offset 0, canonical program `A155495.P14503625525191731558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6608 terms. -/
def A155495 (n : ℕ) : ℤ :=
  A155495.P14503625525191731558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6608 terms. -/
def A155495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155798.P11174002557651804679

`A155797(n)+A007318(n)`
-/

namespace A155798.P11174002557651804679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + A007318 n

end

end A155798.P11174002557651804679

noncomputable section

/-- A155798: Triangle read by rows: t(n,k)=Binomial[n, k] + Binomial[k*(n - k), n].

Offset 0, canonical program `A155798.P11174002557651804679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2043 terms. -/
def A155798 (n : ℕ) : ℤ :=
  A155798.P11174002557651804679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2043 terms. -/
def A155798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156864.P18086558171229400966

`2*A059268(n)-A014410(n+2)`
-/

namespace A156864.P18086558171229400966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059268 n - A014410 (n + 2)

end

end A156864.P18086558171229400966

noncomputable section

/-- A156864: Triangle read by rows: T(n, k) = 2^k - binomial(n+1, k+1) - ((2*k-n)/(k+1)) * binomial(n+1, k).

Offset 1, canonical program `A156864.P18086558171229400966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A156864 (n : ℕ) : ℤ :=
  A156864.P18086558171229400966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A156864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157635.P5484707962841766784

`ceil(A157632(n)/3)`
-/

namespace A157635.P5484707962841766784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157632 n : ℚ) / 3⌉

end

end A157635.P5484707962841766784

noncomputable section

/-- A157635: Triangle read by rows: T(n,m) = 1 if n*m*(n-m) = 0, and n*m*(n-m) otherwise.

Offset 0, canonical program `A157635.P5484707962841766784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635 (n : ℕ) : ℤ :=
  A157635.P5484707962841766784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157694.P9738583196815750906

`A007318(lcm(n, C(2, A068527(2*n))))`
-/

namespace A157694.P9738583196815750906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.lcm n (Nat.choose 2 (A068527 (2 * n)).toNat))

end

end A157694.P9738583196815750906

noncomputable section

/-- A157694: Triangle read by rows: the Pascal triangle A007318 with all elements replaced by 1 which do not equal the central binomial coefficients.

Offset 0, canonical program `A157694.P9738583196815750906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157694 (n : ℕ) : ℤ :=
  A157694.P9738583196815750906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158949.P10603836199365168216

`∑{d}[n+1, A060724(#)*A063445((n+1)/#)]`
-/

namespace A158949.P10603836199365168216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P10603836199365168216

noncomputable section

/-- A158949: Inverse Moebius transform of A065958.

Offset 1, canonical program `A158949.P10603836199365168216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158949 (n : ℕ) : ℤ :=
  A158949.P10603836199365168216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159834.P7982339477551282037

`A007318(n)*A001464(A025581(n))`
-/

namespace A159834.P7982339477551282037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001464 (A025581 n).toNat

end

end A159834.P7982339477551282037

noncomputable section

/-- A159834: Coefficient array of Hermite_H(n, (x-1)/sqrt(2))/(sqrt(2))^n.

Offset 0, canonical program `A159834.P7982339477551282037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159834 (n : ℕ) : ℤ :=
  A159834.P7982339477551282037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160829.P15354280057392451158

`A160815(n)+A160835(n)-A160817(n)`
-/

namespace A160829.P15354280057392451158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160815 n + (A160835 n - A160817 n)

end

end A160829.P15354280057392451158

noncomputable section

/-- A160829: Expansion of (1 + 44*x + 337*x^2 + 612*x^3 + 305*x^4 + 40*x^5 + x^6)/(1 - x)^7.

Offset 0, canonical program `A160829.P15354280057392451158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160829 (n : ℕ) : ℤ :=
  A160829.P15354280057392451158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161642.P15049293823349012266

`gcd(lcm(A007318(n+1), a(n-1)), A007318(n))` with `a(0)=1`
-/

namespace A161642.P15049293823349012266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (Int.lcm (A007318 (n + 1)) (a (n - 1) : ℤ) : ℤ) (A007318 n)

end

end A161642.P15049293823349012266

noncomputable section

/-- A161642: Triangle (by rows): T(n,k) = A007318(n,k) / A003989(n+1,k+1).

Offset 0, canonical program `A161642.P15049293823349012266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161642 (n : ℕ) : ℤ :=
  (A161642.P15049293823349012266.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161918.P17534431257680054511

`filter[A030513(n+1), A353627(#)]`
-/

namespace A161918.P17534431257680054511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A161918.P17534431257680054511

noncomputable section

/-- A161918: Numbers n such that the sum of the divisors minus the sum of the prime factors (counted with multiplicity) is equal to n+1.

Offset 1, canonical program `A161918.P17534431257680054511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A161918 (n : ℕ) : ℤ :=
  A161918.P17534431257680054511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A161918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162801.P8102485252760729664

`A058296(n+1)%Δ[n²]²`
-/

namespace A162801.P8102485252760729664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058296 (n + 1)) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A162801.P8102485252760729664

noncomputable section

/-- A162801: Bisection of A162800.

Offset 1, canonical program `A162801.P8102485252760729664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162801 (n : ℕ) : ℤ :=
  A162801.P8102485252760729664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162990.P15423079187994431436

`A094310(A014132(n+1))^2`
-/

namespace A162990.P15423079187994431436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A014132 (n + 1)).toNat ^ 2

end

end A162990.P15423079187994431436

noncomputable section

/-- A162990: Triangle of polynomial coefficients related to 3F2([1,n+1,n+1],[n+2,n+2],z).

Offset 1, canonical program `A162990.P15423079187994431436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A162990 (n : ℕ) : ℤ :=
  A162990.P15423079187994431436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A162990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164279.P1036385505928145271

`3^A000523(n+1)*(2/3)^(A088696(n+1)-1)`
-/

namespace A164279.P1036385505928145271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000523 (n + 1) : ℤ) * ((2 : ℚ) / 3) ^ (A088696 (n + 1) - 1 : ℤ)

end

end A164279.P1036385505928145271

noncomputable section

/-- A164279: Triangle of 2^n terms per row, a Petoukhov sequence generated from (3,2).

Offset 0, canonical program `A164279.P1036385505928145271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A088696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164279.P1036385505928145271.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A088696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164887.P8444353184396680170

`record[A080343(n)*A209492(n)]`
-/

namespace A164887.P8444353184396680170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080343 n * A209492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164887.P8444353184396680170

noncomputable section

/-- A164887: a(n) = smallest number that leads to a new fixed point under the base-2 Kaprekar map of A164884.

Offset 1, canonical program `A164887.P8444353184396680170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164887 (n : ℕ) : ℤ :=
  A164887.P8444353184396680170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165195.P3193999175642746180

`A050315(xor(n, floor(n/2)))`
-/

namespace A165195.P3193999175642746180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A165195.P3193999175642746180

noncomputable section

/-- A165195: Rows of triangle A165194 tend to this sequence; generated from A000110.

Offset 1, canonical program `A165195.P3193999175642746180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165195 (n : ℕ) : ℤ :=
  A165195.P3193999175642746180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166282.P3565531868312319310

`2*A047999(n)-A167274(n)`
-/

namespace A166282.P3565531868312319310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047999 n - A167274 n

end

end A166282.P3565531868312319310

noncomputable section

/-- A166282: Matrix inverse of Sierpinski's triangle (A047999, Pascal's triangle mod 2).

Offset 0, canonical program `A166282.P3565531868312319310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166282 (n : ℕ) : ℤ :=
  A166282.P3565531868312319310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166535.P307768964407928215

`eq[A000007(n), A014082(A279645(n))]`
-/

namespace A166535.P307768964407928215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P307768964407928215

noncomputable section

/-- A166535: Positive integers whose binary representation does not contain a run of more than three consecutive 0's or 1's.

Offset 1, canonical program `A166535.P307768964407928215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A166535 (n : ℕ) : ℤ :=
  (A166535.P307768964407928215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A166535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166687.P18219030986989704232

`A001481(n+1)+1`
-/

namespace A166687.P18219030986989704232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

end

end A166687.P18219030986989704232

noncomputable section

/-- A166687: Numbers of the form x^2 + y^2 + 1, x, y integers.

Offset 1, canonical program `A166687.P18219030986989704232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687 (n : ℕ) : ℤ :=
  A166687.P18219030986989704232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169615.P2865630802981082709

`A357814(lt[1, A104763(n+1)])`
-/

namespace A169615.P2865630802981082709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169615.P2865630802981082709

noncomputable section

/-- A169615: Triangular array: T(n,k)=floor(F(n+k)/F(k)), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

Offset 1, canonical program `A169615.P2865630802981082709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A169615 (n : ℕ) : ℤ :=
  A169615.P2865630802981082709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A169615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169814.P1469145148772648033

`xor(n+1, A239443(n+1)%(n+2))`
-/

namespace A169814.P1469145148772648033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (Int.tmod (A239443 (n + 1)) (n + 2 : ℤ))

end

end A169814.P1469145148772648033

noncomputable section

/-- A169814: a(n) = n XOR phi(n).

Offset 1, canonical program `A169814.P1469145148772648033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169814 (n : ℕ) : ℤ :=
  A169814.P1469145148772648033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171128.P1141198525169525433

`A007318(n)*A002426(A025581(n))`
-/

namespace A171128.P1141198525169525433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A002426 (A025581 n).toNat

end

end A171128.P1141198525169525433

noncomputable section

/-- A171128: A117852*A130595 as lower triangular matrices.

Offset 0, canonical program `A171128.P1141198525169525433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171128 (n : ℕ) : ℤ :=
  A171128.P1141198525169525433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171435.P13410132754094429905

`gcd(A113646(n+1), A299149(n+1))`
-/

namespace A171435.P13410132754094429905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113646 (n + 1)) (A299149 (n + 1))

end

end A171435.P13410132754094429905

noncomputable section

/-- A171435: Product of odd prime factors < n, with multiplicity.

Offset 1, canonical program `A171435.P13410132754094429905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435 (n : ℕ) : ℤ :=
  (A171435.P13410132754094429905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171650.P15428970908307897054

`A007318(n)*A026641(A025581(n))`
-/

namespace A171650.P15428970908307897054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026641 (A025581 n).toNat

end

end A171650.P15428970908307897054

noncomputable section

/-- A171650: Triangle T, read by rows : T(n,k) = A007318(n,k)*A026641(n-k).

Offset 0, canonical program `A171650.P15428970908307897054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A171650 (n : ℕ) : ℤ :=
  A171650.P15428970908307897054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A171650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171670.P17266629762442056093

`A007318(n)*A005773(A025581(n))`
-/

namespace A171670.P17266629762442056093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005773 (A025581 n).toNat

end

end A171670.P17266629762442056093

noncomputable section

/-- A171670: Triangle T read by rows : T(n,k)= A007318(n,k)*A005773(n-k).

Offset 0, canonical program `A171670.P17266629762442056093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171670 (n : ℕ) : ℤ :=
  A171670.P17266629762442056093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171700.P7889605556974686210

`A156663(n+1)*A198321(n+1)`
-/

namespace A171700.P7889605556974686210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 (n + 1) * A198321 (n + 1)

end

end A171700.P7889605556974686210

noncomputable section

/-- A171700: Triangle T : T(n,k)= A007318(n,k)*a(n-k) with a(0)=0 and a(n)= A077957(n-1) for n>0.

Offset 0, canonical program `A171700.P7889605556974686210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A171700 (n : ℕ) : ℤ :=
  A171700.P7889605556974686210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A171700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171730.P9109354056744307278

`A193922(n)+char[∑[n+1]]`
-/

namespace A171730.P9109354056744307278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171730.P9109354056744307278

noncomputable section

/-- A171730: Triangle of differences of Fibonacci numbers, rows descending.

Offset 1, canonical program `A171730.P9109354056744307278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730 (n : ℕ) : ℤ :=
  A171730.P9109354056744307278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172319.P930179998604293317

`∑[A258800(n)]+1`
-/

namespace A172319.P930179998604293317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172319.P930179998604293317

noncomputable section

/-- A172319: 10th column of A172119.

Offset 0, canonical program `A172319.P930179998604293317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A172319 (n : ℕ) : ℤ :=
  A172319.P930179998604293317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A172319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173256.P14061795327720257061

`∑[A001481(n+1)]`
-/

namespace A173256.P14061795327720257061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P14061795327720257061

noncomputable section

/-- A173256: Partial sums of A001481.

Offset 1, canonical program `A173256.P14061795327720257061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256 (n : ℕ) : ℤ :=
  A173256.P14061795327720257061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173671.P14753156303300427843

`comp[A254027(n)]`
-/

namespace A173671.P14753156303300427843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254027 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173671.P14753156303300427843

noncomputable section

/-- A173671: Positive integers that cannot be expressed as 3^m-2^n where m and n are integers.

Offset 1, canonical program `A173671.P14753156303300427843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173671 (n : ℕ) : ℤ :=
  (A173671.P14753156303300427843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174032.P17895363886377361052

`A005187(A007318(n))`
-/

namespace A174032.P17895363886377361052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A007318 n).toNat

end

end A174032.P17895363886377361052

noncomputable section

/-- A174032: Triangle T(n, k) = Sum_{j>=0} floor(binomial(n, k)/2^j), read by rows.

Offset 0, canonical program `A174032.P17895363886377361052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A174032 (n : ℕ) : ℤ :=
  A174032.P17895363886377361052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A174032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174037.P9722223957527867773

`A080277(A007318(n))`
-/

namespace A174037.P9722223957527867773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A007318 n).toNat

end

end A174037.P9722223957527867773

noncomputable section

/-- A174037: Triangle T(n, k, q) = Sum_{j>=0} q^j * floor(binomial(n, k)/2^j) with q = 2, read by rows.

Offset 0, canonical program `A174037.P9722223957527867773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A174037 (n : ℕ) : ℤ :=
  A174037.P9722223957527867773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A174037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174373.P18021089655363768877

`A007918(A007318(n))`
-/

namespace A174373.P18021089655363768877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007318 n).toNat

end

end A174373.P18021089655363768877

noncomputable section

/-- A174373: Triangle T(n,m) = nextprime(binomial(n,m)) read by rows.

Offset 0, canonical program `A174373.P18021089655363768877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174373 (n : ℕ) : ℤ :=
  A174373.P18021089655363768877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174449.P6656457030094331191

`A159623(A183572(n+1))*A159623(n)`
-/

namespace A174449.P6656457030094331191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 (A183572 (n + 1)).toNat * A159623 n

end

end A174449.P6656457030094331191

noncomputable section

/-- A174449: Triangle T(n, k, q) = n!*(n+1)!*q^k/((n-k)!(n-k+1)!) if floor(n/2) > k-1, otherwise n!*(n+1)!*q^(n-k)/(k!*(k+1)!) for q = 1, read by rows.

Offset 0, canonical program `A174449.P6656457030094331191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174449 (n : ℕ) : ℤ :=
  A174449.P6656457030094331191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174690.P2784647028738832059

`A196347(n)-A033312(A003056(n))`
-/

namespace A174690.P2784647028738832059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 n - A033312 (A003056 n).toNat

end

end A174690.P2784647028738832059

noncomputable section

/-- A174690: Triangle T(n, k) = n!*binomial(n, k) - n! + 1, read by rows.

Offset 0, canonical program `A174690.P2784647028738832059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1913 terms. -/
def A174690 (n : ℕ) : ℤ :=
  A174690.P2784647028738832059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1913 terms. -/
def A174690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175035.P16765248234289683969

`lt[1, abs(A161516(n))]`
-/

namespace A175035.P16765248234289683969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161516 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175035.P16765248234289683969

noncomputable section

/-- A175035: Offsets i such that i + m*(m+1)/2 is a perfect square for some positive integer m.

Offset 1, canonical program `A175035.P16765248234289683969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A175035 (n : ℕ) : ℤ :=
  (A175035.P16765248234289683969.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A175035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175992.P4475088882485289309

`and(A051731(n+1), A071762(n))`
-/

namespace A175992.P4475088882485289309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A071762 n)

end

end A175992.P4475088882485289309

noncomputable section

/-- A175992: Triangle T(n,k) read by rows. If n=k then 0, else if k divides n then 1 else 0.

Offset 1, canonical program `A175992.P4475088882485289309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992 (n : ℕ) : ℤ :=
  A175992.P4475088882485289309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176228.P12776521110466897369

`A007318(n)+A108037(n)+1`
-/

namespace A176228.P12776521110466897369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A108037 n + 1)

end

end A176228.P12776521110466897369

noncomputable section

/-- A176228: Triangle read by rows: T(n,k) = binomial(n,k) + Fibonacci(n) + 1.

Offset 0, canonical program `A176228.P12776521110466897369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176228 (n : ℕ) : ℤ :=
  A176228.P12776521110466897369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176345.P6787886685933491755

`∑{d}[n+1, A074722(#)*A345264((n+1)/#)]`
-/

namespace A176345.P6787886685933491755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A345264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P6787886685933491755

noncomputable section

/-- A176345: Sum of gcd(k,n) from k = 1 to n over "regular" integers only (an integer k is regular if there is an x such that k^2 x == k (mod n)).

Offset 1, canonical program `A176345.P6787886685933491755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176345 (n : ℕ) : ℤ :=
  A176345.P6787886685933491755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176348.P5045138411392960695

`A007318(n)*A176346(n)`
-/

namespace A176348.P5045138411392960695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A176346 n

end

end A176348.P5045138411392960695

noncomputable section

/-- A176348: Triangle, read by rows: T(n, k) = binomial(n, k)*(1 + 2*(n+1) - (k+1)*floor((n+1)/(k+1)) - (n-k+1)* floor((n+1)/(n-k+1))).

Offset 0, canonical program `A176348.P5045138411392960695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176348 (n : ℕ) : ℤ :=
  A176348.P5045138411392960695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176581.P10989006246401145006

`(A077115(n)+A000578(n))*A007318(C(2, n))`
-/

namespace A176581.P10989006246401145006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077115 n + A000578 n) * A007318 (Nat.choose 2 n)

end

end A176581.P10989006246401145006

noncomputable section

/-- A176581: n^3+Smallest square, (Smallest square >= n^3).

Offset 0, canonical program `A176581.P10989006246401145006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176581 (n : ℕ) : ℤ :=
  A176581.P10989006246401145006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176988.P11168993376640129873

`A064789(A218890(n+1))`
-/

namespace A176988.P11168993376640129873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A218890 (n + 1)).toNat

end

end A176988.P11168993376640129873

noncomputable section

/-- A176988: Triangle read by rows, which contains Noll's indices of Zernike polynomials in row n sorted along increasing index of the azimuthal quantum number.

Offset 0, canonical program `A176988.P11168993376640129873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988 (n : ℕ) : ℤ :=
  A176988.P11168993376640129873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178129.P7515760070660203896

`A007318(C(3, n))*∑[A050508(n)]`
-/

namespace A178129.P7515760070660203896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178129.P7515760070660203896

noncomputable section

/-- A178129: Partial sums of A050508.

Offset 0, canonical program `A178129.P7515760070660203896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178129 (n : ℕ) : ℤ :=
  A178129.P7515760070660203896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178301.P7325407682476030006

`A007318(n)*A178300(n+1)`
-/

namespace A178301.P7325407682476030006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A178300 (n + 1)

end

end A178301.P7325407682476030006

noncomputable section

/-- A178301: Triangle T(n,k) = binomial(n,k)*binomial(n+k+1,n+1) read by rows, 0 <= k <= n.

Offset 0, canonical program `A178301.P7325407682476030006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9134 terms. -/
def A178301 (n : ℕ) : ℤ :=
  A178301.P7325407682476030006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9134 terms. -/
def A178301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178821.P8724143194613652531

`C(A003056(n)+4, 4)*A007318(n)`
-/

namespace A178821.P8724143194613652531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n + 4).toNat 4 : ℤ) * A007318 n

end

end A178821.P8724143194613652531

noncomputable section

/-- A178821: Triangle read by rows: T(n,k) = binomial(n+4,4) * binomial(n,k), 0 <= k <= n.

Offset 0, canonical program `A178821.P8724143194613652531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178821 (n : ℕ) : ℤ :=
  A178821.P8724143194613652531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178822.P8504719000700470492

`C(A003056(n)+5, 5)*A007318(n)`
-/

namespace A178822.P8504719000700470492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n + 5).toNat 5 : ℤ) * A007318 n

end

end A178822.P8504719000700470492

noncomputable section

/-- A178822: Triangle read by rows: T(n,k) = C(n+5,5) * C(n,k), 0 <= k <= n.

Offset 0, canonical program `A178822.P8504719000700470492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178822 (n : ℕ) : ℤ :=
  A178822.P8504719000700470492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179399.P12592206959623220759

`Δ[A133524(n+1)]%A000040(n+1)`
-/

namespace A179399.P12592206959623220759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A179399.P12592206959623220759

noncomputable section

/-- A179399: Prime(n)^2 mod prime(n-4).

Offset 5, canonical program `A179399.P12592206959623220759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179399 (n : ℕ) : ℤ :=
  A179399.P12592206959623220759.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181543.P15440393251094073346

`A007318(n)^3`
-/

namespace A181543.P15440393251094073346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 3

end

end A181543.P15440393251094073346

noncomputable section

/-- A181543: Triangle of cubed binomial coefficients, T(n,k) = C(n,k)^3, read by rows.

Offset 0, canonical program `A181543.P15440393251094073346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A181543 (n : ℕ) : ℤ :=
  A181543.P15440393251094073346.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A181543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181701.P6858604762767290858

`A011782(ceil(log2(A181741(n+1)+2)))*A181741(n+1)`
-/

namespace A181701.P6858604762767290858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌈Real.logb 2 (A181741 (n + 1) + 2 : ℝ)⌉.toNat * A181741 (n + 1)

end

end A181701.P6858604762767290858

noncomputable section

/-- A181701: Near-perfect numbers (A181595) of the form 2^(t-1)*(2^t-2^k-1), where 2^t-2^k-1 is prime, k>=1, t>k.

Offset 1, canonical program `A181701.P6858604762767290858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A181701 (n : ℕ) : ℤ :=
  A181701.P6858604762767290858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A181701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181738.P3608034959652289532

`A007318(n)*A138230(A025581(n))`
-/

namespace A181738.P3608034959652289532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A138230 (A025581 n).toNat

end

end A181738.P3608034959652289532

noncomputable section

/-- A181738: T(n, k) is the coefficient of x^k of the polynomial p(n) which is defined as the scalar part of P(n) = Q(x+1, 1, 1, 1) * P(n-1) for n > 0 and P(0) = Q(1, 0, 0, 0) where Q(a, b, c, d) is a quaternion, triangle read by rows.

Offset 0, canonical program `A181738.P3608034959652289532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A181738 (n : ℕ) : ℤ :=
  A181738.P3608034959652289532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A181738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181988.P6768559129986484408

`A001511(n+1)*A003602(n+1)`
-/

namespace A181988.P6768559129986484408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A003602 (n + 1)

end

end A181988.P6768559129986484408

noncomputable section

/-- A181988: If n is odd, a(n) = (n+1)/2; if n is even, a(n) = a(n/2) + A003602(n).

Offset 1, canonical program `A181988.P6768559129986484408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181988 (n : ℕ) : ℤ :=
  A181988.P6768559129986484408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182167.P1515146561545747847

`A053616(A002708(n+1)+∑[n])`
-/

namespace A182167.P1515146561545747847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A002708 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A182167.P1515146561545747847

noncomputable section

/-- A182167: Min( f(n), n-f(n) ), where f(n) = A002708(n) = Fibonacci(n) mod n.

Offset 1, canonical program `A182167.P1515146561545747847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167 (n : ℕ) : ℤ :=
  A182167.P1515146561545747847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185251.P6434148689965256975

`n*A058622(A028310(n)-1)`
-/

namespace A185251.P6434148689965256975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058622 (A028310 n - 1).toNat

end

end A185251.P6434148689965256975

noncomputable section

/-- A185251: a(n) = Sum_{k=0..floor(n/2)} k*binomial(n,k).

Offset 0, canonical program `A185251.P6434148689965256975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185251 (n : ℕ) : ℤ :=
  A185251.P6434148689965256975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A185251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185342.P17628851280790117132

`2*A033999(A002262(n))*A193862(n)`
-/

namespace A185342.P17628851280790117132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033999 (A002262 n).toNat * A193862 n)

end

end A185342.P17628851280790117132

noncomputable section

/-- A185342: Triangle of successive recurrences in columns of A117317(n).

Offset 0, canonical program `A185342.P17628851280790117132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A185342 (n : ℕ) : ℤ :=
  A185342.P17628851280790117132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A185342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185384.P10083727125216535924

`A000045(A128076(n+1))*A007318(n)`
-/

namespace A185384.P10083727125216535924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128076 (n + 1)).toNat * A007318 n

end

end A185384.P10083727125216535924

noncomputable section

/-- A185384: A binomial transform of Fibonacci numbers.

Offset 0, canonical program `A185384.P10083727125216535924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185384 (n : ℕ) : ℤ :=
  A185384.P10083727125216535924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188095.P11723710385775795557

`∩[A188092(n+1)-1, A188092(n+1)]`
-/

namespace A188095.P11723710385775795557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188095.P11723710385775795557

noncomputable section

/-- A188095: Positions of 1 in A188093; complement of A188094.

Offset 1, canonical program `A188095.P11723710385775795557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188095 (n : ℕ) : ℤ :=
  (A188095.P11723710385775795557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188320.P11160732355693375776

`∪[A188323(n+1)-1, A188323(n+1)]`
-/

namespace A188320.P11160732355693375776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P11160732355693375776

noncomputable section

/-- A188320: Positions of 1 in A188318; complement of A188319.

Offset 1, canonical program `A188320.P11160732355693375776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188320 (n : ℕ) : ℤ :=
  (A188320.P11160732355693375776.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188321.P12163037436350599352

`char[A188323(n+1)-1]`
-/

namespace A188321.P12163037436350599352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188321.P12163037436350599352

noncomputable section

/-- A188321: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=5, [ ]=floor.

Offset 1, canonical program `A188321.P12163037436350599352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188321 (n : ℕ) : ℤ :=
  (A188321.P12163037436350599352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189913.P8568618300615823938

`A007318(n)*A057977(A002262(n))`
-/

namespace A189913.P8568618300615823938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057977 (A002262 n).toNat

end

end A189913.P8568618300615823938

noncomputable section

/-- A189913: Triangle read by rows: T(n,k) = binomial(n, k) * k! / (floor(k/2)! * floor((k+2)/2)!).

Offset 0, canonical program `A189913.P8568618300615823938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A189913 (n : ℕ) : ℤ :=
  A189913.P8568618300615823938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A189913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190198.P6423230202513584071

`(A195072(n+1)+A190056(n+1))%2`
-/

namespace A190198.P6423230202513584071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195072 (n + 1) + A190056 (n + 1)) 2

end

end A190198.P6423230202513584071

noncomputable section

/-- A190198: a(n) = [n*u+n*v]-[n*u]-[n*v], where u=sqrt(3), v=1/u, and []=floor.

Offset 1, canonical program `A190198.P6423230202513584071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190198 (n : ℕ) : ℤ :=
  A190198.P6423230202513584071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190715.P18007975720597003767

`A003512(A190703(n+1))+1`
-/

namespace A190715.P18007975720597003767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190703 (n + 1)).toNat + 1

end

end A190715.P18007975720597003767

noncomputable section

/-- A190715: Positions of 4 in A190710.

Offset 1, canonical program `A190715.P18007975720597003767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190715 (n : ℕ) : ℤ :=
  A190715.P18007975720597003767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1831 terms. -/
def A190715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190907.P5674583236946865434

`A057977(A002262(n))*A085478(n)`
-/

namespace A190907.P5674583236946865434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A002262 n).toNat * A085478 n

end

end A190907.P5674583236946865434

noncomputable section

/-- A190907: Triangle read by rows: T(n,k) = binomial(n+k, n-k) k! / (floor(k/2)! * floor((k+2)/2)!).

Offset 0, canonical program `A190907.P5674583236946865434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190907 (n : ℕ) : ℤ :=
  A190907.P5674583236946865434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191687.P8080504616464100748

`A192396(n)+A070909(n)`
-/

namespace A191687.P8080504616464100748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192396 n + A070909 n

end

end A191687.P8080504616464100748

noncomputable section

/-- A191687: Table T(n,k) = ceiling((1/2)*((k+1)^n+(1+(-1)^k)/2)) read by antidiagonals.

Offset 0, canonical program `A191687.P8080504616464100748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A191687 (n : ℕ) : ℤ :=
  A191687.P8080504616464100748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A191687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192618.P9154005034484997042

`record[A008475(A002731(n+1))²]`
-/

namespace A192618.P9154005034484997042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A002731 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192618.P9154005034484997042

noncomputable section

/-- A192618: Prime powers p^k with even exponents k > 0 such that (1 + p^k)/2 is prime.

Offset 1, canonical program `A192618.P9154005034484997042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192618 (n : ℕ) : ℤ :=
  A192618.P9154005034484997042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192862.P1837713112636375079

`p?[A353627(n+1)+2*n]`
-/

namespace A192862.P1837713112636375079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P1837713112636375079

noncomputable section

/-- A192862: Flat primes: odd primes p such that p+1 is a squarefree number times a power of two.

Offset 1, canonical program `A192862.P1837713112636375079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9150 terms. -/
def A192862 (n : ℕ) : ℤ :=
  A192862.P1837713112636375079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9150 terms. -/
def A192862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192864.P4257417878317545726

`abs(p?[A353627(n+1)+2*(n+1)]-1)+1`
-/

namespace A192864.P4257417878317545726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A192864.P4257417878317545726

noncomputable section

/-- A192864: Lower flat primes: odd primes p such that p-1 is a squarefree number times a power of two.

Offset 1, canonical program `A192864.P4257417878317545726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9178 terms. -/
def A192864 (n : ℕ) : ℤ :=
  A192864.P4257417878317545726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9178 terms. -/
def A192864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193673.P9491466020906011608

`A007318(n)*A007051(A025581(n))`
-/

namespace A193673.P9491466020906011608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007051 (A025581 n).toNat

end

end A193673.P9491466020906011608

noncomputable section

/-- A193673: Triangle given by p(n,k)=(coefficient of x^(n-k) in (1/2) ((x+3)^n+(x+1)^n)), 0<=k<=n.

Offset 0, canonical program `A193673.P9491466020906011608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193673 (n : ℕ) : ℤ :=
  A193673.P9491466020906011608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193820.P15219830096764478184

`A007318(n)+a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A193820.P15219830096764478184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007318 n + Int.tmod (a (n - 2)) (a (n - 1))

end

end A193820.P15219830096764478184

noncomputable section

/-- A193820: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+1)^n and q(n,x)=x^n+x^(n-1)+...+x+1.

Offset 0, canonical program `A193820.P15219830096764478184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193820 (n : ℕ) : ℤ :=
  A193820.P15219830096764478184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194197.P10047679271071113195

`A001402(60*n)`
-/

namespace A194197.P10047679271071113195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (60 * n)

end

end A194197.P10047679271071113195

noncomputable section

/-- A194197: Number of partitions of 60n into parts <= 6.

Offset 0, canonical program `A194197.P10047679271071113195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194197 (n : ℕ) : ℤ :=
  A194197.P10047679271071113195.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194370.P18385211741053095968

`lt[A190763(A003602(n+1)), A001952(n+1)]`
-/

namespace A194370.P18385211741053095968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190763 (A003602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194370.P18385211741053095968

noncomputable section

/-- A194370: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(2) and < > denotes fractional part.

Offset 1, canonical program `A194370.P18385211741053095968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3169 terms. -/
def A194370 (n : ℕ) : ℤ :=
  (A194370.P18385211741053095968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3169 terms. -/
def A194370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195153.P11953675593454716449

`A128227(lt[A051731(n+1), A051731(n+2)])`
-/

namespace A195153.P11953675593454716449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195153.P11953675593454716449

noncomputable section

/-- A195153: Irregular triangle read by rows in which row n lists numbers d-1 that do not divide n, where d divides n.

Offset 3, canonical program `A195153.P11953675593454716449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153 (n : ℕ) : ℤ :=
  A195153.P11953675593454716449.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199985.P15200555582612975294

`2*A034050(n+1)-A131664(n+1)`
-/

namespace A199985.P15200555582612975294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034050 (n + 1) - A131664 (n + 1)

end

end A199985.P15200555582612975294

noncomputable section

/-- A199985: Numbers with digital product = 5.

Offset 1, canonical program `A199985.P15200555582612975294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199985 (n : ℕ) : ℤ :=
  A199985.P15200555582612975294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202393.P11597859668486268077

`A010888(A019506(n+1))`
-/

namespace A202393.P11597859668486268077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A019506 (n + 1)).toNat

end

end A202393.P11597859668486268077

noncomputable section

/-- A202393: Digital root of Hoax Numbers A019506.

Offset 1, canonical program `A202393.P11597859668486268077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202393 (n : ℕ) : ℤ :=
  A202393.P11597859668486268077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204203.P18355877739269611644

`2*A054143(n)-A007318(n)`
-/

namespace A204203.P18355877739269611644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A007318 n

end

end A204203.P18355877739269611644

noncomputable section

/-- A204203: Triangle based on (0,1/4,1) averaging array.

Offset 1, canonical program `A204203.P18355877739269611644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203 (n : ℕ) : ℤ :=
  A204203.P18355877739269611644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204898.P8437523405994696174

`2*A205558(n+1)`
-/

namespace A204898.P8437523405994696174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205558 (n + 1)

end

end A204898.P8437523405994696174

noncomputable section

/-- A204898: Ordered differences of odd primes.

Offset 1, canonical program `A204898.P8437523405994696174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204898 (n : ℕ) : ℤ :=
  A204898.P8437523405994696174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206429.P13329034163071246304

`A003057(n+2)*A061356(n+2)`
-/

namespace A206429.P13329034163071246304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A061356 (n + 2)

end

end A206429.P13329034163071246304

noncomputable section

/-- A206429: Triangular array read by rows. T(n,k) is the number of rooted labeled trees on n nodes such that the root node has degree k. n>=2, 1<=k<=n-1.

Offset 2, canonical program `A206429.P13329034163071246304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A206429 (n : ℕ) : ℤ :=
  A206429.P13329034163071246304.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A206429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207536.P11378481812331935203

`A034839(n+1)/A034867(n+1)*A105070(n+2)`
-/

namespace A207536.P11378481812331935203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034839 (n + 1) : ℚ) / (A034867 (n + 1) : ℚ) * (A105070 (n + 2) : ℚ)

end

end A207536.P11378481812331935203

noncomputable section

/-- A207536: Triangle of coefficients of polynomials u(n,x) jointly generated with A105070; see Formula section.

Offset 1, canonical program `A207536.P11378481812331935203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207536.P11378481812331935203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207637.P8278429149852337198

`filter[A034961(n+1), A353627(#)]`
-/

namespace A207637.P8278429149852337198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A207637.P8278429149852337198

noncomputable section

/-- A207637: Squarefree sums of 3 successive primes.

Offset 1, canonical program `A207637.P8278429149852337198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207637 (n : ℕ) : ℤ :=
  A207637.P8278429149852337198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208058.P9863792287481975596

`A162608(A083920(n))/A233543(n)`
-/

namespace A208058.P9863792287481975596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162608 (A083920 n).toNat : ℚ) / (A233543 n : ℚ)

end

end A208058.P9863792287481975596

noncomputable section

/-- A208058: Triangle by rows relating to the factorials, generated from A002260.

Offset 0, canonical program `A208058.P9863792287481975596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A208058 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208058.P9863792287481975596.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A208058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208330.P13404258337089435429

`A001045(A002260(n+1))*A007318(n)`
-/

namespace A208330.P13404258337089435429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002260 (n + 1)).toNat * A007318 n

end

end A208330.P13404258337089435429

noncomputable section

/-- A208330: Triangle of coefficients of polynomials u(n,x) jointly generated with A208331; see the Formula section.

Offset 1, canonical program `A208330.P13404258337089435429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208330 (n : ℕ) : ℤ :=
  A208330.P13404258337089435429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208331.P5338589986649235062

`A007318(n)*A283642(A002262(n))`
-/

namespace A208331.P5338589986649235062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A283642 (A002262 n).toNat

end

end A208331.P5338589986649235062

noncomputable section

/-- A208331: Triangle of coefficients of polynomials v(n,x) jointly generated with A208330; see the Formula section.

Offset 1, canonical program `A208331.P5338589986649235062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208331 (n : ℕ) : ℤ :=
  A208331.P5338589986649235062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208656.P8927906641783300416

`A002024(n+1)*A135278(n)-A007318(n)`
-/

namespace A208656.P8927906641783300416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A135278 n - A007318 n

end

end A208656.P8927906641783300416

noncomputable section

/-- A208656: Triangle T(n, k) = n*C(n,k) - C(n-1,k-1), 1 <= k <= n, read by rows.

Offset 1, canonical program `A208656.P8927906641783300416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208656 (n : ℕ) : ℤ :=
  A208656.P8927906641783300416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208657.P11812723099242280050

`∑[A010054(n)]*A074909(n)-A007318(n)`
-/

namespace A208657.P11812723099242280050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A074909 n - A007318 n

end

end A208657.P11812723099242280050

noncomputable section

/-- A208657: Triangular array read by rows: n*binomial(n,n-k+1)-binomial(n-1,n-k) with k = 1..n, n >= 1.

Offset 1, canonical program `A208657.P11812723099242280050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208657 (n : ℕ) : ℤ :=
  A208657.P11812723099242280050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208765.P12855794489750420101

`A007318(n)*A026597(A002262(n))`
-/

namespace A208765.P12855794489750420101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026597 (A002262 n).toNat

end

end A208765.P12855794489750420101

noncomputable section

/-- A208765: Triangle of coefficients of polynomials u(n,x) jointly generated with A208766; see the Formula section.

Offset 1, canonical program `A208765.P12855794489750420101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208765 (n : ℕ) : ℤ :=
  A208765.P12855794489750420101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208766.P11036257821405102068

`A007318(n)*A026581(A002262(n))`
-/

namespace A208766.P11036257821405102068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026581 (A002262 n).toNat

end

end A208766.P11036257821405102068

noncomputable section

/-- A208766: Triangle of coefficients of polynomials v(n,x) jointly generated with A208765; see the Formula section.

Offset 1, canonical program `A208766.P11036257821405102068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208766 (n : ℕ) : ℤ :=
  A208766.P11036257821405102068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209268.P13650169059364209089

`A000217(A007814(n+1)+A003602(n+1))-A007814(n+1)`
-/

namespace A209268.P13650169059364209089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007814 (n + 1) + A003602 (n + 1)).toNat - A007814 (n + 1)

end

end A209268.P13650169059364209089

noncomputable section

/-- A209268: Inverse permutation A054582.

Offset 1, canonical program `A209268.P13650169059364209089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209268 (n : ℕ) : ℤ :=
  A209268.P13650169059364209089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209323.P18282624142862054047

`∑{e}[A014612(n+1), A007318(#)]`
-/

namespace A209323.P18282624142862054047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A209323.P18282624142862054047

noncomputable section

/-- A209323: Values of omega(n) (A001221) as n runs through the triprimes (A014612).

Offset 1, canonical program `A209323.P18282624142862054047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209323 (n : ℕ) : ℤ :=
  A209323.P18282624142862054047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209427.P3656500487483528647

`A007318(n)^∑[char[∑[n+1]]]`
-/

namespace A209427.P3656500487483528647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209427.P3656500487483528647

noncomputable section

/-- A209427: T(n,k) = binomial(n,k)^n.

Offset 0, canonical program `A209427.P3656500487483528647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A209427 (n : ℕ) : ℤ :=
  A209427.P3656500487483528647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A209427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209613.P17854172900491838855

`A209615(n+1)*A260109(A025480(n))`
-/

namespace A209613.P17854172900491838855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) * A260109 (A025480 n).toNat

end

end A209613.P17854172900491838855

noncomputable section

/-- A209613: Expansion of q * phi(-q^2)^2 * psi(q^3) * psi(-q^3)^2 / psi(q) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A209613.P17854172900491838855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209613 (n : ℕ) : ℤ :=
  A209613.P17854172900491838855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209619.P9978242392383801944

`p?[A175078(A076368(n+1))+A040976(n+1)]`
-/

namespace A209619.P9978242392383801944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A076368 (n + 1)).toNat + A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P9978242392383801944

noncomputable section

/-- A209619: Primes separated from their previous adjacent primes by a composite number of successive composites.

Offset 1, canonical program `A209619.P9978242392383801944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209619 (n : ℕ) : ℤ :=
  A209619.P9978242392383801944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210190.P939011334498092116

`A105070(Δ[A055087(n)]+n+1)`
-/

namespace A210190.P939011334498092116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A210190.P939011334498092116

noncomputable section

/-- A210190: Triangle of coefficients of polynomials v(n,x) jointly generated with A210189; see the Formula section.

Offset 1, canonical program `A210190.P939011334498092116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190 (n : ℕ) : ℤ :=
  A210190.P939011334498092116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210196.P11515123120557541586

`A059268(n)*A124927(n)`
-/

namespace A210196.P11515123120557541586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A124927 n

end

end A210196.P11515123120557541586

noncomputable section

/-- A210196: Triangle of coefficients of polynomials v(n,x) jointly generated with A210195; see the Formula section.

Offset 1, canonical program `A210196.P11515123120557541586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196 (n : ℕ) : ℤ :=
  A210196.P11515123120557541586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211059.P885985816871605879

`(n+1)^4-A211058(n+1)`
-/

namespace A211059.P885985816871605879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A211058 (n + 1)

end

end A211059.P885985816871605879

noncomputable section

/-- A211059: Number of 2 X 2 matrices having all terms in {1,...,n} and positive determinant.

Offset 1, canonical program `A211059.P885985816871605879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A211059 (n : ℕ) : ℤ :=
  A211059.P885985816871605879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A211059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211067.P18215761913343296145

`A211064(n+1)-A211066(n+1)`
-/

namespace A211067.P18215761913343296145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) - A211066 (n + 1)

end

end A211067.P18215761913343296145

noncomputable section

/-- A211067: Number of 2 X 2 matrices having all terms in {1,...,n} and positive even determinant.

Offset 1, canonical program `A211067.P18215761913343296145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211067 (n : ℕ) : ℤ :=
  A211067.P18215761913343296145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214960.P4106115688173494549

`(-1)^n*A127693(n)`
-/

namespace A214960.P4106115688173494549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127693 n

end

end A214960.P4106115688173494549

noncomputable section

/-- A214960: Expansion of psi(x^2) - x * psi(x^10) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A214960.P4106115688173494549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127693, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214960 (n : ℕ) : ℤ :=
  A214960.P4106115688173494549.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127693, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216157.P14329396617965940493

`A215947(A055684(n+3)+1)`
-/

namespace A216157.P14329396617965940493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A055684 (n + 3) + 1).toNat

end

end A216157.P14329396617965940493

noncomputable section

/-- A216157: Difference between the sum of the even divisors and the sum of the odd divisors of phi(n).

Offset 3, canonical program `A216157.P14329396617965940493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157 (n : ℕ) : ℤ :=
  A216157.P14329396617965940493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216303.P11345559073059710455

`eq[A063143(n+1), A179816(n)]`
-/

namespace A216303.P11345559073059710455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216303.P11345559073059710455

noncomputable section

/-- A216303: Numbers k such that 10k+1 and 10k+3 are prime but 10k+7 and 10k+9 are composite.

Offset 1, canonical program `A216303.P11345559073059710455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A216303 (n : ℕ) : ℤ :=
  (A216303.P11345559073059710455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A216303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216304.P5647230312299655537

`eq[A063155(n+1), A179816(n)]`
-/

namespace A216304.P5647230312299655537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216304.P5647230312299655537

noncomputable section

/-- A216304: Values of k such that 10*k+1 and 10*k+7 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216304.P5647230312299655537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A216304 (n : ℕ) : ℤ :=
  (A216304.P5647230312299655537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A216304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216305.P1116429648597264212

`floor(A141026(n+1)/10)`
-/

namespace A216305.P1116429648597264212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141026 (n + 1) : ℚ) / 10⌋

end

end A216305.P1116429648597264212

noncomputable section

/-- A216305: Values of k such that 10*k+1 and 10*k+9 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216305.P1116429648597264212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216305 (n : ℕ) : ℤ :=
  A216305.P1116429648597264212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216307.P12968432811877988105

`eq[A179816(n), A305074(n+1)]`
-/

namespace A216307.P12968432811877988105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216307.P12968432811877988105

noncomputable section

/-- A216307: Values of k such that 10*k+3 and 10*k+9 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216307.P12968432811877988105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A216307 (n : ℕ) : ℤ :=
  (A216307.P12968432811877988105.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A216307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216475.P4696027615986910322

`Δ[Δ[A049688(n+1)]-A008619(n+1)]`
-/

namespace A216475.P4696027615986910322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216475.P4696027615986910322

noncomputable section

/-- A216475: The number of numbers coprime to and less than n+2, excluding 2.

Offset 1, canonical program `A216475.P4696027615986910322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A216475 (n : ℕ) : ℤ :=
  A216475.P4696027615986910322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A216475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217285.P5556931970969609807

`A007318(eq[0, A053186(A003056(n))])`
-/

namespace A217285.P5556931970969609807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217285.P5556931970969609807

noncomputable section

/-- A217285: Irregular triangle read by rows: T(n,k) is the number of labeled relations on n nodes with exactly k edges; n>=0, 0<=k<=n^2.

Offset 0, canonical program `A217285.P5556931970969609807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A217285 (n : ℕ) : ℤ :=
  A217285.P5556931970969609807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A217285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217710.P15686075439153067836

`A072649(n+1)-A029837(n+1)`
-/

namespace A217710.P15686075439153067836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - A029837 (n + 1)

end

end A217710.P15686075439153067836

noncomputable section

/-- A217710: Cardinality of the set of possible heights of AVL trees with n (leaf-) nodes.

Offset 1, canonical program `A217710.P15686075439153067836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A072649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217710 (n : ℕ) : ℤ :=
  A217710.P15686075439153067836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, A072649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218281.P6360784936974079113

`∑[record[2*A251750(n)]]+1`
-/

namespace A218281.P6360784936974079113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218281.P6360784936974079113

noncomputable section

/-- A218281: Hilltop maps: number of n X 1 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 n X 1 array.

Offset 1, canonical program `A218281.P6360784936974079113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A218281 (n : ℕ) : ℤ :=
  A218281.P6360784936974079113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A218281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219646.P1459568560880754385

`∑[A219642(n)]`
-/

namespace A219646.P1459568560880754385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219646.P1459568560880754385

noncomputable section

/-- A219646: Partial sums of A219642.

Offset 0, canonical program `A219646.P1459568560880754385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219646 (n : ℕ) : ℤ :=
  A219646.P1459568560880754385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221877.P9761697283966523475

`A004736(n+1)*A124927(n)`
-/

namespace A221877.P9761697283966523475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A124927 n

end

end A221877.P9761697283966523475

noncomputable section

/-- A221877: Triangle read by rows: T(n,k) = number of order-preserving or order-reversing full contraction mappings (of an n-chain) with height exactly k.

Offset 1, canonical program `A221877.P9761697283966523475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221877 (n : ℕ) : ℤ :=
  A221877.P9761697283966523475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224840.P6519552924552385028

`∑{d}[n+1, A085945(#)]`
-/

namespace A224840.P6519552924552385028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085945 d

end

end A224840.P6519552924552385028

noncomputable section

/-- A224840: Divisor sum of the arithmetic function A085945(n).

Offset 1, canonical program `A224840.P6519552924552385028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A224840 (n : ℕ) : ℤ :=
  A224840.P6519552924552385028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A224840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225682.P5315572198372636391

`-((n-(Δ[n²]+(n-comp[∑[n]])²))%3+1)*A007318(n)`
-/

namespace A225682.P5315572198372636391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Int.tmod ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2)) 3 + 1) * A007318 n)

end

end A225682.P5315572198372636391

noncomputable section

/-- A225682: Triangle read by rows: T(n,k) (0 <= k <= n) = chi(k)*binomial(n,k), where chi(k) = 1,-1,0 according as k == 0,1,2 mod 3.

Offset 0, canonical program `A225682.P5315572198372636391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225682 (n : ℕ) : ℤ :=
  A225682.P5315572198372636391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227408.P7610701793903841046

`∩[A352776(n+1), A352785(n+1)]`
-/

namespace A227408.P7610701793903841046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227408.P7610701793903841046

noncomputable section

/-- A227408: Set of all n, where n = r(s(n)) = s(r(n)), given that r(n) = n+bitcount(n), s(n) = n-bitcount(n), and bitcount(n) is the count of binary 1's in n.

Offset 1, canonical program `A227408.P7610701793903841046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A227408 (n : ℕ) : ℤ :=
  (A227408.P7610701793903841046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A227408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229035.P11532377418008714060

`∑[A082233(n)]`
-/

namespace A229035.P11532377418008714060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P11532377418008714060

noncomputable section

/-- A229035: Partial sums of A082233 (read sequentially meandering).

Offset 1, canonical program `A229035.P11532377418008714060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229035 (n : ℕ) : ℤ :=
  A229035.P11532377418008714060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234307.P14140306843869381179

`A060992(2*(n+1))`
-/

namespace A234307.P14140306843869381179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060992 (2 * (n + 1))

end

end A234307.P14140306843869381179

noncomputable section

/-- A234307: a(n) = Sum_{i=1..n} gcd(2*n-i, i).

Offset 1, canonical program `A234307.P14140306843869381179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A234307 (n : ℕ) : ℤ :=
  A234307.P14140306843869381179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A234307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236192.P3828994098142585195

`A163000(∑[A284938(2*n+5)])%2`
-/

namespace A236192.P3828994098142585195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A236192.P3828994098142585195

noncomputable section

/-- A236192: a(n) = |{0 < k < n: p = phi(k) + phi(n-k)/4 + 1, prime(p)^2 + (2*p)^2 and p^2 + (2*prime(p))^2 are all prime}|, where phi(.) is Euler's totient function.

Offset 1, canonical program `A236192.P3828994098142585195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A236192 (n : ℕ) : ℤ :=
  A236192.P3828994098142585195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A236192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238160.P10222375909662323985

`A026729(n)+abs(A057094(n))`
-/

namespace A238160.P10222375909662323985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n + |A057094 n|

end

end A238160.P10222375909662323985

noncomputable section

/-- A238160: A skewed version of triangular array A029653.

Offset 0, canonical program `A238160.P10222375909662323985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238160 (n : ℕ) : ℤ :=
  A238160.P10222375909662323985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239019.P9482424271055956090

`A028310(∪[A020338(n+1), A074842(n+1)])`
-/

namespace A239019.P9482424271055956090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074842 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A239019.P9482424271055956090

noncomputable section

/-- A239019: Numbers which are not primitive words over the alphabet {0,...,9} (when written in base 10).

Offset 1, canonical program `A239019.P9482424271055956090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A239019 (n : ℕ) : ℤ :=
  A239019.P9482424271055956090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A239019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239504.P16697227297432891706

`∑{digits}[n^10, A007318(A007318(#))]`
-/

namespace A239504.P16697227297432891706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A239504.P16697227297432891706

noncomputable section

/-- A239504: Number of digits in the decimal expansion of n^10 (A008454).

Offset 0, canonical program `A239504.P16697227297432891706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239504 (n : ℕ) : ℤ :=
  A239504.P16697227297432891706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242114.P4450405066994926337

`A122507(A128489(n+1))`
-/

namespace A242114.P4450405066994926337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122507 (A128489 (n + 1)).toNat

end

end A242114.P4450405066994926337

noncomputable section

/-- A242114: Triangle read by rows: T(n,k) = number of pairs (x,y) in {1..n}X{1..n} with gcd(x,y) = k.

Offset 1, canonical program `A242114.P4450405066994926337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A242114 (n : ℕ) : ℤ :=
  A242114.P4450405066994926337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A242114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242253.P7785784206183266084

`A175078(A076368(n+2))+1`
-/

namespace A242253.P7785784206183266084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A076368 (n + 2)).toNat + 1

end

end A242253.P7785784206183266084

noncomputable section

/-- A242253: Number of primes in the primes-greedy sum (defined at A242252) for the n-th odd prime.

Offset 1, canonical program `A242253.P7785784206183266084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242253 (n : ℕ) : ℤ :=
  A242253.P7785784206183266084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243614.P16613195315274380214

`A174980(eq[A000120(n), A037227(n+1)])`
-/

namespace A243614.P16613195315274380214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243614.P16613195315274380214

noncomputable section

/-- A243614: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

Offset 1, canonical program `A243614.P16613195315274380214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A243614 (n : ℕ) : ℤ :=
  A243614.P16613195315274380214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A243614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243987.P14044502209302201752

`A051731(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`
-/

namespace A243987.P14044502209302201752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051731 (n + 1) + Int.tmod (a (n - 1)) (A002260 (n + 1))

end

end A243987.P14044502209302201752

noncomputable section

/-- A243987: Triangle read by rows: T(n, k) is the number of divisors of n that are less than or equal to k for 1 <= k <= n.

Offset 1, canonical program `A243987.P14044502209302201752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987 (n : ℕ) : ℤ :=
  A243987.P14044502209302201752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246160.P12838974675095138970

`A246159(n)+A065620(n)`
-/

namespace A246160.P12838974675095138970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n + A065620 n

end

end A246160.P12838974675095138970

noncomputable section

/-- A246160: Inverse function to the injection A065621.

Offset 0, canonical program `A246160.P12838974675095138970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, A246159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246160 (n : ℕ) : ℤ :=
  A246160.P12838974675095138970.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, A246159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247133.P10561037915194657674

`A033999(n)*A186742(n)`
-/

namespace A247133.P10561037915194657674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186742 n

end

end A247133.P10561037915194657674

noncomputable section

/-- A247133: Expansion of f(-x, -x^11) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A247133.P10561037915194657674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247133 (n : ℕ) : ℤ :=
  A247133.P10561037915194657674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248514.P12001065706870817028

`ceil(A003602(eq[1, A010060(n)])/2)`
-/

namespace A248514.P12001065706870817028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌉

end

end A248514.P12001065706870817028

noncomputable section

/-- A248514: Fractal sequence of the dispersion of the "odious numbers".

Offset 1, canonical program `A248514.P12001065706870817028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A248514 (n : ℕ) : ℤ :=
  A248514.P12001065706870817028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A248514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249095.P14931875295036221106

`A007318(((n+1)²%A122800(n+1))%(n+1))`
-/

namespace A249095.P14931875295036221106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (Int.tmod ((n + 1) ^ 2 : ℤ) (A122800 (n + 1))) (n + 1 : ℤ)).toNat

end

end A249095.P14931875295036221106

noncomputable section

/-- A249095: Triangle read by rows: interleaving successive pairs of rows of Pascal's triangle.

Offset 0, canonical program `A249095.P14931875295036221106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249095 (n : ℕ) : ℤ :=
  A249095.P14931875295036221106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249725.P5047833433213757881

`1+((A003602(n+1)+A007814(n+1))²+A007814(n+1)-A003602(n+1))/2`
-/

namespace A249725.P5047833433213757881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((A003602 (n + 1) + A007814 (n + 1)) ^ 2 + A007814 (n + 1) - A003602 (n + 1) : ℚ) / 2

end

end A249725.P5047833433213757881

noncomputable section

/-- A249725: Inverse permutation to A135764.

Offset 1, canonical program `A249725.P5047833433213757881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249725.P5047833433213757881.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250440.P12929212090251733005

`(A250430(n+1)/A250428(n+1))²*A250438(n+1)`
-/

namespace A250440.P12929212090251733005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250430 (n + 1) : ℚ) / (A250428 (n + 1) : ℚ)) ^ 2 * (A250438 (n + 1) : ℚ)

end

end A250440.P12929212090251733005

noncomputable section

/-- A250440: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250440.P12929212090251733005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250440.P12929212090251733005.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251969.P6991737648331539879

`A250426(n+1)/A250427(n+1)*A250439(n+1)`
-/

namespace A251969.P6991737648331539879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250426 (n + 1) : ℚ) / (A250427 (n + 1) : ℚ) * (A250439 (n + 1) : ℚ)

end

end A251969.P6991737648331539879

noncomputable section

/-- A251969: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A251969.P6991737648331539879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A251969.P6991737648331539879.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252501.P5084084635245530048

`C(∑[2*char[∑[n]]]-1, n-C(∑[char[∑[n]]], 2))*A007318(n)`
-/

namespace A252501.P5084084635245530048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) * A007318 n

end

end A252501.P5084084635245530048

noncomputable section

/-- A252501: Triangle T read by rows: T(n,k) = binomial(2*n+1,k)*binomial(n,k), n>=0, 0<=k<=n.

Offset 0, canonical program `A252501.P5084084635245530048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7826 terms. -/
def A252501 (n : ℕ) : ℤ :=
  A252501.P5084084635245530048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7826 terms. -/
def A252501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254609.P13882312572663627123

`gcd(25, A007318(n))`
-/

namespace A254609.P13882312572663627123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 25 (A007318 n)

end

end A254609.P13882312572663627123

noncomputable section

/-- A254609: Triangle read by rows: T(n,k) = A243757(n)/(A243757(k)*A243757(n-k)).

Offset 0, canonical program `A254609.P13882312572663627123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A254609 (n : ℕ) : ℤ :=
  (A254609.P13882312572663627123.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A254609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255171.P878351036913062245

`A072473(n+2)-A072473(n+1)`
-/

namespace A255171.P878351036913062245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 2) - A072473 (n + 1)

end

end A255171.P878351036913062245

noncomputable section

/-- A255171: First differences of A072473.

Offset 1, canonical program `A255171.P878351036913062245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255171 (n : ℕ) : ℤ :=
  A255171.P878351036913062245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255935.P3423858100455783659

`A007318(n)+A197870(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255935.P3423858100455783659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A197870 (n + 1)

end

end A255935.P3423858100455783659

noncomputable section

/-- A255935: Triangle read by rows: a(n) = Pascal's triangle A007318(n) + A197870(n+1).

Offset 0, canonical program `A255935.P3423858100455783659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A197870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255935 (n : ℕ) : ℤ :=
  A255935.P3423858100455783659.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A197870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256435.P229463995676631497

`A001481(n+2)-A001481(n+1)`
-/

namespace A256435.P229463995676631497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2) - A001481 (n + 1)

end

end A256435.P229463995676631497

noncomputable section

/-- A256435: First differences of sums of two squares.

Offset 1, canonical program `A256435.P229463995676631497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435 (n : ℕ) : ℤ :=
  A256435.P229463995676631497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256540.P17379518847437446653

`A001402(4*n)`
-/

namespace A256540.P17379518847437446653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (4 * n)

end

end A256540.P17379518847437446653

noncomputable section

/-- A256540: Number of partitions of 4n into at most 6 parts.

Offset 0, canonical program `A256540.P17379518847437446653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256540 (n : ℕ) : ℤ :=
  A256540.P17379518847437446653.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256654.P7882076535163150395

`A000045(A108852(n))`
-/

namespace A256654.P7882076535163150395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 n).toNat

end

end A256654.P7882076535163150395

noncomputable section

/-- A256654: Least Fibonacci number not less than n.

Offset 1, canonical program `A256654.P7882076535163150395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256654 (n : ℕ) : ℤ :=
  A256654.P7882076535163150395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256991.P15627668895340715446

`A256992(n+1)-A079559(n+1)`
-/

namespace A256991.P15627668895340715446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (n + 1) - A079559 (n + 1)

end

end A256991.P15627668895340715446

noncomputable section

/-- A256991: If A079559(n) = 1, a(n) = A213714(n) - 1, otherwise a(n) = A234017(n).

Offset 1, canonical program `A256991.P15627668895340715446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256991 (n : ℕ) : ℤ :=
  A256991.P15627668895340715446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258029.P1433885203408479246

`A139313(n+1)-A001223(A064149(n+1))`
-/

namespace A258029.P1433885203408479246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1) - A001223 (A064149 (n + 1)).toNat

end

end A258029.P1433885203408479246

noncomputable section

/-- A258029: Numbers prime(k) such that D(prime(k), 3) = 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258029.P1433885203408479246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258029 (n : ℕ) : ℤ :=
  A258029.P1433885203408479246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259067.P7320704414048657284

`A007953(A033549(n+1))`
-/

namespace A259067.P7320704414048657284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A033549 (n + 1)).toNat

end

end A259067.P7320704414048657284

noncomputable section

/-- A259067: Sum of digits of Honaker primes (A033548).

Offset 1, canonical program `A259067.P7320704414048657284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259067 (n : ℕ) : ℤ :=
  A259067.P7320704414048657284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261081.P15491907119103926316

`A219642(A000045(n+2)-1)`
-/

namespace A261081.P15491907119103926316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000045 (n + 2) - 1).toNat

end

end A261081.P15491907119103926316

noncomputable section

/-- A261081: a(n) = number of steps required to reach 0 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261081.P15491907119103926316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261081 (n : ℕ) : ℤ :=
  A261081.P15491907119103926316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261091.P14200442498164629939

`A219642(A000045(n+2))-A219642(A000045(n+1))`
-/

namespace A261091.P14200442498164629939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000045 (n + 2)).toNat - A219642 (A000045 (n + 1)).toNat

end

end A261091.P14200442498164629939

noncomputable section

/-- A261091: a(n) = number of steps required to reach F(n+1)-1 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261091.P14200442498164629939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261091 (n : ℕ) : ℤ :=
  A261091.P14200442498164629939.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261186.P17874925371042757596

`A081205(2*(n+1))-A081181(2*(n+1))`
-/

namespace A261186.P17874925371042757596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081205 (2 * (n + 1)) - A081181 (2 * (n + 1))

end

end A261186.P17874925371042757596

noncomputable section

/-- A261186: a(n) = binomial(3*n-2,n+1).

Offset 2, canonical program `A261186.P17874925371042757596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A261186 (n : ℕ) : ℤ :=
  A261186.P17874925371042757596.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A261186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261226.P5886764903879751177

`1+a(A261225(n))` with `a(0)=0, a(1)=1`
-/

namespace A261226.P5886764903879751177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A261225 n).toNat

end

end A261226.P5886764903879751177

noncomputable section

/-- A261226: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261226.P5886764903879751177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261226 (n : ℕ) : ℤ :=
  (A261226.P5886764903879751177.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261365.P9709362867991470275

`A007318(eq[1, A032741(A003056(n))])`
-/

namespace A261365.P9709362867991470275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261365.P9709362867991470275

noncomputable section

/-- A261365: Prime-numbered rows of Pascal's triangle.

Offset 1, canonical program `A261365.P9709362867991470275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A261365 (n : ℕ) : ℤ :=
  A261365.P9709362867991470275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A261365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263830.P13012791147232885642

`A263826(n+1)-A263832(2*(n+1))`
-/

namespace A263830.P13012791147232885642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263826 (n + 1) - A263832 (2 * (n + 1))

end

end A263830.P13012791147232885642

noncomputable section

/-- A263830: The number c_{Z^3,pi_1(B_2)}(2n) of 3-torus 2n-coverings over the second amphicosm.

Offset 1, canonical program `A263830.P13012791147232885642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263830 (n : ℕ) : ℤ :=
  A263830.P13012791147232885642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264960.P11808814825159870349

`A027306(n)²+A058622(n)²`
-/

namespace A264960.P11808814825159870349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n ^ 2 + A058622 n ^ 2

end

end A264960.P11808814825159870349

noncomputable section

/-- A264960: Half-convolution of the central binomial coefficients A000984 with itself.

Offset 0, canonical program `A264960.P11808814825159870349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A264960 (n : ℕ) : ℤ :=
  A264960.P11808814825159870349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A264960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265029.P2055403291823061890

`Δ[A264619(n)]`
-/

namespace A265029.P2055403291823061890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P2055403291823061890

noncomputable section

/-- A265029: First differences of A264619.

Offset 1, canonical program `A265029.P2055403291823061890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265029 (n : ℕ) : ℤ :=
  A265029.P2055403291823061890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266282.P9763437976714295326

`A266978(n)*A267704(n)`
-/

namespace A266282.P9763437976714295326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266978 n * A267704 n

end

end A266282.P9763437976714295326

noncomputable section

/-- A266282: Triangle read by rows giving successive states of cellular automaton generated by "Rule 13" initiated with a single ON (black) cell.

Offset 0, canonical program `A266282.P9763437976714295326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266282 (n : ℕ) : ℤ :=
  A266282.P9763437976714295326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267309.P7821699450119643871

`∑[2*∑{d}[2*(n+1), A086932(#)]]`
-/

namespace A267309.P7821699450119643871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), A086932 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P7821699450119643871

noncomputable section

/-- A267309: Number of discrete vectors with integral components and integral length <= n in a 3-dimensional vector space (Partial sums of A016725).

Offset 1, canonical program `A267309.P7821699450119643871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A267309 (n : ℕ) : ℤ :=
  A267309.P7821699450119643871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A267309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267651.P14970341382206143241

`2*∑{d}[2*(n+1), A086932(#)]`
-/

namespace A267651.P14970341382206143241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A086932 d)

end

end A267651.P14970341382206143241

noncomputable section

/-- A267651: Number of ways to write n^2 as a sum of three squares: a(n) = A005875(n^2).

Offset 1, canonical program `A267651.P14970341382206143241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A267651 (n : ℕ) : ℤ :=
  A267651.P14970341382206143241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A267651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267673.P5790354617243130186

`(1-A075438(n))^n`
-/

namespace A267673.P5790354617243130186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075438 n) ^ n

end

end A267673.P5790354617243130186

noncomputable section

/-- A267673: Triangle read by rows giving successive states of cellular automaton generated by "Rule 195" initiated with a single ON (black) cell.

Offset 0, canonical program `A267673.P5790354617243130186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267673 (n : ℕ) : ℤ :=
  A267673.P5790354617243130186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267967.P6857388283747575084

`2*A162592(n+1)`
-/

namespace A267967.P6857388283747575084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162592 (n + 1)

end

end A267967.P6857388283747575084

noncomputable section

/-- A267967: Integers n such that n^n is the sum of two nonzero squares while n is not.

Offset 1, canonical program `A267967.P6857388283747575084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267967 (n : ℕ) : ℤ :=
  A267967.P6857388283747575084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268384.P16231980144868817348

`a(A246159(n))` with `a(0)=0, a(1)=1`
-/

namespace A268384.P16231980144868817348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A246159 n).toNat

end

end A268384.P16231980144868817348

noncomputable section

/-- A268384: Characteristic function of A001317.

Offset 0, canonical program `A268384.P16231980144868817348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384 (n : ℕ) : ℤ :=
  (A268384.P16231980144868817348.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268719.P9072516025595210906

`A268715(A245300(n))`
-/

namespace A268719.P9072516025595210906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (A245300 n).toNat

end

end A268719.P9072516025595210906

noncomputable section

/-- A268719: Triangular table T(n>=0,k=0..n) = A003188(A006068(n) + A006068(k)), read by rows as A(0,0), A(1,0), A(1,1), A(2,0), A(2,1), A(2,2), ...

Offset 0, canonical program `A268719.P9072516025595210906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3914 terms. -/
def A268719 (n : ℕ) : ℤ :=
  A268719.P9072516025595210906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3914 terms. -/
def A268719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271653.P7087006881751362329

`p?[A072473(n+1)+A031215(n+1)]`
-/

namespace A271653.P7087006881751362329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P7087006881751362329

noncomputable section

/-- A271653: Primes of the form 2*prime(2k) - prime(k).

Offset 1, canonical program `A271653.P7087006881751362329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653 (n : ℕ) : ℤ :=
  A271653.P7087006881751362329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272042.P14624273689638821498

`A072473(n+1)+A031215(n+1)`
-/

namespace A272042.P14624273689638821498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A031215 (n + 1)

end

end A272042.P14624273689638821498

noncomputable section

/-- A272042: a(n) = 2*prime(2n) - prime(n).

Offset 1, canonical program `A272042.P14624273689638821498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031215, A072473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272042 (n : ℕ) : ℤ :=
  A272042.P14624273689638821498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031215, A072473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272670.P8882871833830041873

`2*A161604(n+1)`
-/

namespace A272670.P8882871833830041873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161604 (n + 1)

end

end A272670.P8882871833830041873

noncomputable section

/-- A272670: Numbers whose binary expansion is not palindromic but which when reversed and leading zeros omitted, does form a palindrome.

Offset 1, canonical program `A272670.P8882871833830041873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272670 (n : ℕ) : ℤ :=
  A272670.P8882871833830041873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274969.P429463321413355336

`2*A174687(n)-A026004(n)`
-/

namespace A274969.P429463321413355336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174687 n - A026004 n

end

end A274969.P429463321413355336

noncomputable section

/-- A274969: Number of walks in the first quadrant starting and ending at (0,0) consisting of 3n steps taken from {E=(1, 0), D=(-1, 1), S=(0, -1)}, no S step occurring before the final E step.

Offset 0, canonical program `A274969.P429463321413355336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A274969 (n : ℕ) : ℤ :=
  A274969.P429463321413355336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A274969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275068.P8596379837417912279

`filter[A035259(n+1), A323239(#)]`
-/

namespace A275068.P8596379837417912279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A275068.P8596379837417912279

noncomputable section

/-- A275068: Squarefree numbers in A022344.

Offset 0, canonical program `A275068.P8596379837417912279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A275068 (n : ℕ) : ℤ :=
  A275068.P8596379837417912279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A275068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275198.P7066260242528723624

`A070696(A007318(n))`
-/

namespace A275198.P7066260242528723624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A007318 n).toNat

end

end A275198.P7066260242528723624

noncomputable section

/-- A275198: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 14.

Offset 0, canonical program `A275198.P7066260242528723624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275198 (n : ℕ) : ℤ :=
  A275198.P7066260242528723624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275340.P3805728007378759890

`A113502(n+1)+1`
-/

namespace A275340.P3805728007378759890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1) + 1

end

end A275340.P3805728007378759890

noncomputable section

/-- A275340: Nontrivial centered polygonal numbers: numbers of the form A101321(n,k) where n >= 1 and k >= 2.

Offset 1, canonical program `A275340.P3805728007378759890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340 (n : ℕ) : ℤ :=
  A275340.P3805728007378759890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275953.P16174222313952605767

`A265906(n+2)-A265906(n+1)`
-/

namespace A275953.P16174222313952605767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265906 (n + 2) - A265906 (n + 1)

end

end A275953.P16174222313952605767

noncomputable section

/-- A275953: First differences of A265906; second differences of A265905.

Offset 1, canonical program `A275953.P16174222313952605767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953 (n : ℕ) : ℤ :=
  A275953.P16174222313952605767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275991.P8659216433312454549

`A088982(n+1)-A000040(n+1)`
-/

namespace A275991.P8659216433312454549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A000040 (n + 1)

end

end A275991.P8659216433312454549

noncomputable section

/-- A275991: a(n) = prime(composite(n)) - prime(n).

Offset 1, canonical program `A275991.P8659216433312454549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A088982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275991 (n : ℕ) : ℤ :=
  A275991.P8659216433312454549.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A088982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276792.P14653190003130318019

`A276788(n+1)+A276789(n+1)+1`
-/

namespace A276792.P14653190003130318019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276788 (n + 1) + A276789 (n + 1) + 1

end

end A276792.P14653190003130318019

noncomputable section

/-- A276792: First differences of A003146.

Offset 1, canonical program `A276792.P14653190003130318019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792 (n : ℕ) : ℤ :=
  A276792.P14653190003130318019.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276795.P13975714103099137732

`xor(A003817(n), A264619(n))`
-/

namespace A276795.P13975714103099137732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 n) (A264619 n)

end

end A276795.P13975714103099137732

noncomputable section

/-- A276795: Folding numbers with an odd number of bits (see A277238 for definition).

Offset 1, canonical program `A276795.P13975714103099137732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276795 (n : ℕ) : ℤ :=
  A276795.P13975714103099137732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276934.P15106644444833656235

`A276933(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276934.P15106644444833656235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276933 n : ℚ) / 6

end

end A276934.P15106644444833656235

noncomputable section

/-- A276934: Row 3 of A276616: a(n) = A276933(n) / 6.

Offset 0, canonical program `A276934.P15106644444833656235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276934.P15106644444833656235.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276952.P13654825874652364893

`A276950(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A276952.P13654825874652364893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276950 n + a (n - 1)

end

end A276952.P13654825874652364893

noncomputable section

/-- A276952: Partial sums of A276950.

Offset 0, canonical program `A276952.P13654825874652364893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952 (n : ℕ) : ℤ :=
  A276952.P13654825874652364893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277247.P8195325220674495200

`A000984(n)-A058621(n)`
-/

namespace A277247.P8195325220674495200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A058621 n

end

end A277247.P8195325220674495200

noncomputable section

/-- A277247: a(n) = Sum_{k=0..floor(n/2)} binomial(n, k)^2.

Offset 0, canonical program `A277247.P8195325220674495200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A277247 (n : ℕ) : ℤ :=
  A277247.P8195325220674495200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A277247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277822.P8229571769565338857

`A268726(and(A001969(n+1), A006257(n)))`
-/

namespace A277822.P8229571769565338857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (Int.land (A001969 (n + 1)) (A006257 n)).toNat

end

end A277822.P8229571769565338857

noncomputable section

/-- A277822: a(n) = index of the column where n is located in array A277880.

Offset 0, canonical program `A277822.P8229571769565338857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822 (n : ℕ) : ℤ :=
  A277822.P8229571769565338857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279416.P9763162876256978290

`A141419(n+1)-A049727(n)`
-/

namespace A279416.P9763162876256978290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A049727 n

end

end A279416.P9763162876256978290

noncomputable section

/-- A279416: Triangle read by rows: T(n,k), n >= k >= 1, is the number of grid points below the diagonal of an n X k grid.

Offset 1, canonical program `A279416.P9763162876256978290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279416 (n : ℕ) : ℤ :=
  A279416.P9763162876256978290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279417.P17402926163399653354

`A112367(n)+A049727(n)`
-/

namespace A279417.P17402926163399653354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A049727 n

end

end A279417.P17402926163399653354

noncomputable section

/-- A279417: Triangle read by rows: T(n,k), n >= k >= 1, is the number of grid points on or below the diagonal of an n X k grid.

Offset 1, canonical program `A279417.P17402926163399653354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279417 (n : ℕ) : ℤ :=
  A279417.P17402926163399653354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280729.P13621898540149842299

`2*A005097(n+1)-A098006(n+2)`
-/

namespace A280729.P13621898540149842299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1) - A098006 (n + 2)

end

end A280729.P13621898540149842299

noncomputable section

/-- A280729: (p-1)/2 + phi(p-1) as p runs through the odd primes.

Offset 1, canonical program `A280729.P13621898540149842299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729 (n : ℕ) : ℤ :=
  A280729.P13621898540149842299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281114.P16438368915308680650

`A000217(A215726(n+1))%2`
-/

namespace A281114.P16438368915308680650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A215726 (n + 1)).toNat) 2

end

end A281114.P16438368915308680650

noncomputable section

/-- A281114: Parity of the n-th squarefree triangular number.

Offset 1, canonical program `A281114.P16438368915308680650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281114 (n : ℕ) : ℤ :=
  A281114.P16438368915308680650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282717.P78600112669793230

`∏{e}[A277331(n), #+1]`
-/

namespace A282717.P78600112669793230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A282717.P78600112669793230

noncomputable section

/-- A282717: Number of nonzero entries in row n of A282716.

Offset 0, canonical program `A282717.P78600112669793230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A282717 (n : ℕ) : ℤ :=
  (A282717.P78600112669793230.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A282717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284818.P1743315826054235167

`ceil(A284796(n+1)/2)`
-/

namespace A284818.P1743315826054235167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284796 (n + 1) : ℚ) / 2⌉

end

end A284818.P1743315826054235167

noncomputable section

/-- A284818: Positions of 0 in A284817.

Offset 1, canonical program `A284818.P1743315826054235167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284818 (n : ℕ) : ℤ :=
  A284818.P1743315826054235167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284973.P12250254518392136044

`A284963(n+1)+A256077(n+1)`
-/

namespace A284973.P12250254518392136044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) + A256077 (n + 1)

end

end A284973.P12250254518392136044

noncomputable section

/-- A284973: Numbers with digits 4 and 9 only.

Offset 1, canonical program `A284973.P12250254518392136044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284973 (n : ℕ) : ℤ :=
  A284973.P12250254518392136044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285973.P13794099816013091422

`A285959(n+1)-A143331(n+1)`
-/

namespace A285973.P13794099816013091422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) - A143331 (n + 1)

end

end A285973.P13794099816013091422

noncomputable section

/-- A285973: Positions of 0 in A285972; complement of A285974.

Offset 1, canonical program `A285973.P13794099816013091422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285973 (n : ℕ) : ℤ :=
  A285973.P13794099816013091422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286158.P5292968706533474857

`A048158(n+1)+A000217(A234575(n+1))`
-/

namespace A286158.P5292968706533474857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A000217 (A234575 (n + 1)).toNat

end

end A286158.P5292968706533474857

noncomputable section

/-- A286158: Lower triangular region of array A286156.

Offset 1, canonical program `A286158.P5292968706533474857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286158 (n : ℕ) : ℤ :=
  A286158.P5292968706533474857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287028.P2613971056566659341

`1-A286990(n+1)`
-/

namespace A287028.P2613971056566659341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286990 (n + 1)

end

end A287028.P2613971056566659341

noncomputable section

/-- A287028: {0->101, 1->010}-transform of the Sturmian word A080764.

Offset 1, canonical program `A287028.P2613971056566659341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287028 (n : ℕ) : ℤ :=
  A287028.P2613971056566659341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288931.P10856556094994457970

`filter[n+1, A288929(#)]`
-/

namespace A288931.P10856556094994457970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288929 (f1 j) = 1) n)

end

end A288931.P10856556094994457970

noncomputable section

/-- A288931: Positions of 1 in A288929; complement of A288930.

Offset 1, canonical program `A288931.P10856556094994457970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931 (n : ℕ) : ℤ :=
  (A288931.P10856556094994457970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289494.P5014918227577049287

`abs(A101909(n+1)-A289493(n+1))`
-/

namespace A289494.P5014918227577049287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101909 (n + 1) - A289493 (n + 1)|

end

end A289494.P5014918227577049287

noncomputable section

/-- A289494: Number of primes in the interval [3n, 4n].

Offset 1, canonical program `A289494.P5014918227577049287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289494 (n : ℕ) : ℤ :=
  A289494.P5014918227577049287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292618.P456009917632285157

`A022891(eq[1, A022890(n+2)-A022890(n+1)]+1)`
-/

namespace A292618.P456009917632285157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 2) - A022890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292618.P456009917632285157

noncomputable section

/-- A292618: The first prime of 8 consecutive primes a, b, c, d, e, f, g, h such that a + g = c + e and b + h = d + f.

Offset 1, canonical program `A292618.P456009917632285157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618 (n : ℕ) : ℤ :=
  A292618.P456009917632285157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304570.P4550797118024341307

`A304569(n+1)-A051731(n+1)`
-/

namespace A304570.P4550797118024341307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 (n + 1) - A051731 (n + 1)

end

end A304570.P4550797118024341307

noncomputable section

/-- A304570: Triangle read by rows: T(n,k) = 1 if k | n^e with e > 1 and n mod k != 0, T(n,k) = 0 otherwise (1 <= k <= n).

Offset 1, canonical program `A304570.P4550797118024341307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304570 (n : ℕ) : ℤ :=
  A304570.P4550797118024341307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305394.P7573966376097710886

`A140103(n+2)-A140103(n+1)`
-/

namespace A305394.P7573966376097710886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 2) - A140103 (n + 1)

end

end A305394.P7573966376097710886

noncomputable section

/-- A305394: First differences of A140103.

Offset 1, canonical program `A305394.P7573966376097710886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305394 (n : ℕ) : ℤ :=
  A305394.P7573966376097710886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308199.P4084788755827198599

`A278040(n)-1`
-/

namespace A308199.P4084788755827198599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - 1

end

end A308199.P4084788755827198599

noncomputable section

/-- A308199: The tribonacci representation of a(n) is obtained by appending 0,0 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A308199.P4084788755827198599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199 (n : ℕ) : ℤ :=
  A308199.P4084788755827198599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310504.P464538820079187203

`2*A313053(n)-A008574(n)`
-/

namespace A310504.P464538820079187203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313053 n - A008574 n

end

end A310504.P464538820079187203

noncomputable section

/-- A310504: Coordination sequence Gal.6.329.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310504.P464538820079187203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A310504 (n : ℕ) : ℤ :=
  A310504.P464538820079187203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A310504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311261.P2737762260615231918

`4*n+A028310(n)+A313480(n)-A315680(n)`
-/

namespace A311261.P2737762260615231918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A028310 n + (A313480 n - A315680 n))

end

end A311261.P2737762260615231918

noncomputable section

/-- A311261: Coordination sequence Gal.5.97.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311261.P2737762260615231918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261 (n : ℕ) : ℤ :=
  A311261.P2737762260615231918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311691.P15690846151857527722

`A313698(n)-A057354(2*n+1)`
-/

namespace A311691.P15690846151857527722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A057354 (2 * n + 1)

end

end A311691.P15690846151857527722

noncomputable section

/-- A311691: Coordination sequence Gal.5.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311691.P15690846151857527722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691 (n : ℕ) : ℤ :=
  A311691.P15690846151857527722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312194.P11075138989351160431

`A314899(n)-A134667(A004525(n))`
-/

namespace A312194.P11075138989351160431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A134667 (A004525 n).toNat

end

end A312194.P11075138989351160431

noncomputable section

/-- A312194: Coordination sequence Gal.6.156.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312194.P11075138989351160431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194 (n : ℕ) : ℤ :=
  A312194.P11075138989351160431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312210.P10071697695240117449

`A311196(n)+A312206(n)-A008574(n)`
-/

namespace A312210.P10071697695240117449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + (A312206 n - A008574 n)

end

end A312210.P10071697695240117449

noncomputable section

/-- A312210: Coordination sequence Gal.6.159.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312210.P10071697695240117449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210 (n : ℕ) : ℤ :=
  A312210.P10071697695240117449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312979.P10469328530055326609

`A310398(n)+A014019(n+3)`
-/

namespace A312979.P10469328530055326609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A014019 (n + 3)

end

end A312979.P10469328530055326609

noncomputable section

/-- A312979: Coordination sequence Gal.6.247.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312979.P10469328530055326609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A312979 (n : ℕ) : ℤ :=
  A312979.P10469328530055326609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A312979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313118.P9114111145320884075

`A312976(n)+Δ[A011864(n)]`
-/

namespace A313118.P9114111145320884075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n + (f1 (n + 1) - f1 n)

end

end A313118.P9114111145320884075

noncomputable section

/-- A313118: Coordination sequence Gal.6.234.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313118.P9114111145320884075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A313118 (n : ℕ) : ℤ :=
  A313118.P9114111145320884075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A313118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313592.P2623346939342566519

`abs(A008592(n)-A313853(n))`
-/

namespace A313592.P2623346939342566519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313853 n|

end

end A313592.P2623346939342566519

noncomputable section

/-- A313592: Coordination sequence Gal.6.347.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313592.P2623346939342566519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592 (n : ℕ) : ℤ :=
  A313592.P2623346939342566519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313912.P13734627626942033207

`abs(A008592(n)-A313515(n))`
-/

namespace A313912.P13734627626942033207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313515 n|

end

end A313912.P13734627626942033207

noncomputable section

/-- A313912: Coordination sequence Gal.6.207.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313912.P13734627626942033207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313912 (n : ℕ) : ℤ :=
  A313912.P13734627626942033207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313927.P15646847580110018084

`A313125(n)+A004396(n)`
-/

namespace A313927.P15646847580110018084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A004396 n

end

end A313927.P15646847580110018084

noncomputable section

/-- A313927: Coordination sequence Gal.5.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313927.P15646847580110018084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927 (n : ℕ) : ℤ :=
  A313927.P15646847580110018084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313935.P10691927420047468944

`A313772(n)+A002264(A030118(n))`
-/

namespace A313935.P10691927420047468944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n + A002264 (A030118 n).toNat

end

end A313935.P10691927420047468944

noncomputable section

/-- A313935: Coordination sequence Gal.6.651.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313935.P10691927420047468944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A313935 (n : ℕ) : ℤ :=
  A313935.P10691927420047468944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A313935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314059.P15361203540330467185

`A310398(n)+A004525(n)`
-/

namespace A314059.P15361203540330467185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A004525 n

end

end A314059.P15361203540330467185

noncomputable section

/-- A314059: Coordination sequence Gal.6.652.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314059.P15361203540330467185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A314059 (n : ℕ) : ℤ :=
  A314059.P15361203540330467185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A314059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314118.P650591932633737003

`A310398(n)+A314829(n)-A008574(n)`
-/

namespace A314118.P650591932633737003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (A314829 n - A008574 n)

end

end A314118.P650591932633737003

noncomputable section

/-- A314118: Coordination sequence Gal.6.652.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314118.P650591932633737003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A314118 (n : ℕ) : ℤ :=
  A314118.P650591932633737003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A314118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314201.P5631130414281267533

`A004396(n)+A314085(n)-A004525(A004396(n))`
-/

namespace A314201.P5631130414281267533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314085 n - A004525 (A004396 n).toNat)

end

end A314201.P5631130414281267533

noncomputable section

/-- A314201: Coordination sequence Gal.6.157.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314201.P5631130414281267533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201 (n : ℕ) : ℤ :=
  A314201.P5631130414281267533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314225.P10774632468107869878

`A008458(n)+A310501(n)-A314210(n)`
-/

namespace A314225.P10774632468107869878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310501 n - A314210 n)

end

end A314225.P10774632468107869878

noncomputable section

/-- A314225: Coordination sequence Gal.5.316.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314225.P10774632468107869878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225 (n : ℕ) : ℤ :=
  A314225.P10774632468107869878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314720.P2366857365604543786

`abs(A008592(n)-A314210(n))`
-/

namespace A314720.P2366857365604543786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314210 n|

end

end A314720.P2366857365604543786

noncomputable section

/-- A314720: Coordination sequence Gal.6.245.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314720.P2366857365604543786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720 (n : ℕ) : ℤ :=
  A314720.P2366857365604543786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315024.P11300834451067595507

`A314885(n)+Δ[A011864(n)]`
-/

namespace A315024.P11300834451067595507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314885 n + (f1 (n + 1) - f1 n)

end

end A315024.P11300834451067595507

noncomputable section

/-- A315024: Coordination sequence Gal.6.196.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315024.P11300834451067595507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024 (n : ℕ) : ℤ :=
  A315024.P11300834451067595507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315060.P16370269308654090789

`A313855(n)-A330025(n-A330025(n))`
-/

namespace A315060.P16370269308654090789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313855 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315060.P16370269308654090789

noncomputable section

/-- A315060: Coordination sequence Gal.5.141.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315060.P16370269308654090789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060 (n : ℕ) : ℤ :=
  A315060.P16370269308654090789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315319.P8559741598565083215

`abs(A008592(n)-A310398(n))`
-/

namespace A315319.P8559741598565083215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310398 n|

end

end A315319.P8559741598565083215

noncomputable section

/-- A315319: Coordination sequence Gal.5.289.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315319.P8559741598565083215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315319 (n : ℕ) : ℤ :=
  A315319.P8559741598565083215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315326.P6667046397507400523

`2*A314885(n)-A008574(n)`
-/

namespace A315326.P6667046397507400523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314885 n - A008574 n

end

end A315326.P6667046397507400523

noncomputable section

/-- A315326: Coordination sequence Gal.6.204.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315326.P6667046397507400523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326 (n : ℕ) : ℤ :=
  A315326.P6667046397507400523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315421.P8258673194195671996

`A313515(n)+A004525(n)`
-/

namespace A315421.P8258673194195671996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n + A004525 n

end

end A315421.P8258673194195671996

noncomputable section

/-- A315421: Coordination sequence Gal.6.356.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315421.P8258673194195671996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315421 (n : ℕ) : ℤ :=
  A315421.P8258673194195671996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315459.P17608540704289415769

`A315681(n)-∑[A022003(n)]`
-/

namespace A315459.P17608540704289415769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315459.P17608540704289415769

noncomputable section

/-- A315459: Coordination sequence Gal.6.134.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315459.P17608540704289415769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459 (n : ℕ) : ℤ :=
  A315459.P17608540704289415769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315509.P2705733174138675004

`abs(A008592(n)-A312976(n))`
-/

namespace A315509.P2705733174138675004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312976 n|

end

end A315509.P2705733174138675004

noncomputable section

/-- A315509: Coordination sequence Gal.6.633.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315509.P2705733174138675004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A315509 (n : ℕ) : ℤ :=
  A315509.P2705733174138675004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A315509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315635.P8833083240830505052

`A315172(n)+A008612(A016813(n))`
-/

namespace A315635.P8833083240830505052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n + A008612 (A016813 n).toNat

end

end A315635.P8833083240830505052

noncomputable section

/-- A315635: Coordination sequence Gal.5.138.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315635.P8833083240830505052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635 (n : ℕ) : ℤ :=
  A315635.P8833083240830505052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315874.P5730925477117979781

`A047448(n+1)+A004525(A315832(n)+A047448(n+1))`
-/

namespace A315874.P5730925477117979781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A004525 (A315832 n + A047448 (n + 1)).toNat

end

end A315874.P5730925477117979781

noncomputable section

/-- A315874: Coordination sequence Gal.5.211.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315874.P5730925477117979781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A315874 (n : ℕ) : ℤ :=
  A315874.P5730925477117979781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A315874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316345.P14622171126567751218

`1-A151666(A246159(n))`
-/

namespace A316345.P14622171126567751218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151666 (A246159 n).toNat

end

end A316345.P14622171126567751218

noncomputable section

/-- A316345: An example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

Offset 0, canonical program `A316345.P14622171126567751218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345 (n : ℕ) : ℤ :=
  A316345.P14622171126567751218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318491.P1337820018592044348

`lcm(n+1, A060640(n+1))/(n+1)`
-/

namespace A318491.P1337820018592044348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A060640 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A318491.P1337820018592044348

noncomputable section

/-- A318491: a(n) is the numerator of Sum_{d|n} Sum_{j|d} 1/j.

Offset 1, canonical program `A318491.P1337820018592044348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318491.P1337820018592044348.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318492.P15145094631320190754

`(n+1)/gcd(n+1, A060640(n+1))`
-/

namespace A318492.P15145094631320190754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060640 (n + 1)) : ℚ)

end

end A318492.P15145094631320190754

noncomputable section

/-- A318492: a(n) is the denominator of Sum_{d|n} Sum_{j|d} 1/j.

Offset 1, canonical program `A318492.P15145094631320190754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318492 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318492.P15145094631320190754.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319970.P10078544455780697726

`A319968(n+1)-2`
-/

namespace A319970.P10078544455780697726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319968 (n + 1) - 2

end

end A319970.P10078544455780697726

noncomputable section

/-- A319970: a(n) = A003146(A003144(n)).

Offset 1, canonical program `A319970.P10078544455780697726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319970 (n : ℕ) : ℤ :=
  A319970.P10078544455780697726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322127.P10117294907008591163

`A007318(n)/gcd(A007318(n), A166350(n+1))`
-/

namespace A322127.P10117294907008591163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A007318 n) (A166350 (n + 1)) : ℚ)

end

end A322127.P10117294907008591163

noncomputable section

/-- A322127: Triangular array, read by rows: T(n,k) = numerator of binomial(n-1, n-k)/k!, 1 <= k <= n.

Offset 1, canonical program `A322127.P10117294907008591163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322127.P10117294907008591163.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322128.P9004028817101297461

`lcm(A007318(n), A166350(n+1))/A007318(n)`
-/

namespace A322128.P9004028817101297461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007318 n) (A166350 (n + 1)) : ℚ) / (A007318 n : ℚ)

end

end A322128.P9004028817101297461

noncomputable section

/-- A322128: Triangular array, read by rows: T(n,k) = denominator of binomial(n-1, n-k)/k!, 1 <= k <= n.

Offset 1, canonical program `A322128.P9004028817101297461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322128.P9004028817101297461.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322409.P9722259027104702857

`A278040(A278040(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322409.P9722259027104702857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278040 n).toNat

end

end A322409.P9722259027104702857

noncomputable section

/-- A322409: Compound tribonacci sequence with a(n) = A278040(A278040(n)), for n >= 0.

Offset 0, canonical program `A322409.P9722259027104702857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409 (n : ℕ) : ℤ :=
  A322409.P9722259027104702857.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322410.P10476249854560897128

`A278040(A278039(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322410.P10476249854560897128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat

end

end A322410.P10476249854560897128

noncomputable section

/-- A322410: Compound tribonacci sequence with a(n) = A278040(A278039(n)), for n >= 0.

Offset 0, canonical program `A322410.P10476249854560897128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410 (n : ℕ) : ℤ :=
  A322410.P10476249854560897128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326415.P3514450629391365891

`∑{d}[n+1, A046692(#)*A074722((n+1)/#)]`
-/

namespace A326415.P3514450629391365891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P3514450629391365891

noncomputable section

/-- A326415: Dirichlet g.f.: zeta(2*s) / zeta(s)^3.

Offset 1, canonical program `A326415.P3514450629391365891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326415 (n : ℕ) : ℤ :=
  A326415.P3514450629391365891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327222.P12522913140232998755

`char[A327224(n+1)]`
-/

namespace A327222.P12522913140232998755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327222.P12522913140232998755

noncomputable section

/-- A327222: a(n) = [(2n+4)r] - [nr+4r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327222.P12522913140232998755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222 (n : ℕ) : ℤ :=
  (A327222.P12522913140232998755.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327728.P8461923904755504278

`A055609(n+1)-∑[A050531(n)]`
-/

namespace A327728.P8461923904755504278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055609 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327728.P8461923904755504278

noncomputable section

/-- A327728: Number of unlabeled multigraphs with loops allowed and n edges covering three vertices.

Offset 1, canonical program `A327728.P8461923904755504278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327728 (n : ℕ) : ℤ :=
  A327728.P8461923904755504278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328223.P7310187365408105857

`∩[A020668(n+1)-4, A020668(n+1)]`
-/

namespace A328223.P7310187365408105857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328223.P7310187365408105857

noncomputable section

/-- A328223: Numbers k such that both k and k+4 are sums of two squares.

Offset 1, canonical program `A328223.P7310187365408105857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A328223 (n : ℕ) : ℤ :=
  (A328223.P7310187365408105857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. -/
def A328223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329242.P1185710204891356265

`A033270(n+1)-4*A071839(n+1)`
-/

namespace A329242.P1185710204891356265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) - 4 * A071839 (n + 1)

end

end A329242.P1185710204891356265

noncomputable section

/-- A329242: a(n) = Pi(8,3)(n) + Pi(8,5)(n) + Pi(8,7)(n) - 3*Pi(8,1)(n), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A329242.P1185710204891356265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329242 (n : ℕ) : ℤ :=
  A329242.P1185710204891356265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329243.P9180453080884109219

`A038698(n+1)+A321861(n+1)+A320858(n+1)`
-/

namespace A329243.P9180453080884109219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) + (A321861 (n + 1) + A320858 (n + 1))

end

end A329243.P9180453080884109219

noncomputable section

/-- A329243: a(n) = Pi(8,3)(prime(n)) + Pi(8,5)(prime(n)) + Pi(8,7)(prime(n)) - 3*Pi(8,1)(prime(n)), where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A329243.P9180453080884109219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243 (n : ℕ) : ℤ :=
  A329243.P9180453080884109219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329273.P5366949048814216937

`A008347(A166597(n))%A014076(A013632(n))`
-/

namespace A329273.P5366949048814216937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 (A166597 n).toNat) (A014076 (A013632 n).toNat)

end

end A329273.P5366949048814216937

noncomputable section

/-- A329273: a(1)=1. If n is prime, a(n)=0; if not, a(n) = (the smallest prime number greater than n) minus (the largest prime number smaller than n) minus 1.

Offset 1, canonical program `A329273.P5366949048814216937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273 (n : ℕ) : ℤ :=
  A329273.P5366949048814216937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329717.P3857886996740062083

`1-A143519(A007947(n+1))+n`
-/

namespace A329717.P3857886996740062083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A143519 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A329717.P3857886996740062083

noncomputable section

/-- A329717: a(n) is n (plus or minus) the number of distinct primes dividing n according to parity (even or odd).

Offset 1, canonical program `A329717.P3857886996740062083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329717 (n : ℕ) : ℤ :=
  A329717.P3857886996740062083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329935.P4917152360086528643

`∩[A019506(n+1)-1, A019506(n+1)]`
-/

namespace A329935.P4917152360086528643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329935.P4917152360086528643

noncomputable section

/-- A329935: Numbers k such that k and k+1 are both hoax numbers (A019506).

Offset 1, canonical program `A329935.P4917152360086528643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935 (n : ℕ) : ℤ :=
  (A329935.P4917152360086528643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330174.P1343887440238847855

`floor(A091396(2*A142150(n)+1)/2)`
-/

namespace A330174.P1343887440238847855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091396 (2 * A142150 n + 1).toNat : ℚ) / 2⌋

end

end A330174.P1343887440238847855

noncomputable section

/-- A330174: Number of primitive Pythagorean triangles with sum of legs n.

Offset 1, canonical program `A330174.P1343887440238847855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330174 (n : ℕ) : ℤ :=
  A330174.P1343887440238847855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330393.P4639006219673885269

`A003602(n+1)+A007814(n+1)`
-/

namespace A330393.P4639006219673885269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A007814 (n + 1)

end

end A330393.P4639006219673885269

noncomputable section

/-- A330393: A 2-regular sequence whose reciprocal is not 2-regular.

Offset 0, canonical program `A330393.P4639006219673885269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393 (n : ℕ) : ℤ :=
  A330393.P4639006219673885269.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330545.P6344628933996575445

`A330547(n+1)+n%2`
-/

namespace A330545.P6344628933996575445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A330545.P6344628933996575445

noncomputable section

/-- A330545: a(1) = 2; thereafter a(n) = a(n-1) + (-1)^(n + 1)*(prime(n) - prime(n - 1) - 1) (where prime(k) denotes the k-th prime).

Offset 1, canonical program `A330545.P6344628933996575445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330545 (n : ℕ) : ℤ :=
  A330545.P6344628933996575445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330557.P15434734115232232872

`A001281(A330556(n)+∑[A101264(n)])`
-/

namespace A330557.P15434734115232232872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A330556 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330557.P15434734115232232872

noncomputable section

/-- A330557: a(n) = number of primes p <= 2*n+1 with Delta(p) == 2 mod 4, where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330557.P15434734115232232872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557 (n : ℕ) : ℤ :=
  A330557.P15434734115232232872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331260.P3025793374459626332

`lcm(3, A127345(n+1))/3`
-/

namespace A331260.P3025793374459626332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A127345 (n + 1)) : ℚ) / 3

end

end A331260.P3025793374459626332

noncomputable section

/-- A331260: Denominator of harmonic mean of 3 consecutive primes. Numerators are A331259.

Offset 1, canonical program `A331260.P3025793374459626332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331260 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331260.P3025793374459626332.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331431.P10460707022804183766

`A002457(A002262(n))*A053122(n)`
-/

namespace A331431.P10460707022804183766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A002262 n).toNat * A053122 n

end

end A331431.P10460707022804183766

noncomputable section

/-- A331431: Triangle read by rows: T(n,k) = (-1)^(n+k)*(n+k+1)*binomial(n,k)*binomial(n+k,k) for n >= k >= 0.

Offset 0, canonical program `A331431.P10460707022804183766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331431 (n : ℕ) : ℤ :=
  A331431.P10460707022804183766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331893.P3755749678923990802

`∩[A331891(n+1), A331892(n+1)]`
-/

namespace A331893.P3755749678923990802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P3755749678923990802

noncomputable section

/-- A331893: Positive numbers k such that both k and -k are a palindromes in negabinary representation.

Offset 1, canonical program `A331893.P3755749678923990802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893 (n : ℕ) : ℤ :=
  (A331893.P3755749678923990802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331894.P10099918075872049775

`∩[A180204(n+1), A331891(n+1)]`
-/

namespace A331894.P10099918075872049775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331894.P10099918075872049775

noncomputable section

/-- A331894: Positive numbers such that both their binary and negabinary representations are palindromic.

Offset 1, canonical program `A331894.P10099918075872049775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894 (n : ℕ) : ℤ :=
  (A331894.P10099918075872049775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333183.P12522991503939484636

`∑[∑{digits}[2*(n+1), A007318(A007318(#))]]`
-/

namespace A333183.P12522991503939484636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P12522991503939484636

noncomputable section

/-- A333183: Number of digits in concatenation of first n positive even integers.

Offset 1, canonical program `A333183.P12522991503939484636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333183 (n : ℕ) : ℤ :=
  A333183.P12522991503939484636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333763.P14005245914271309442

`A161604(n+1)/A030101(A161604(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333763.P14005245914271309442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161604 (n + 1) : ℚ) / (A030101 (A161604 (n + 1)).toNat : ℚ)

end

end A333763.P14005245914271309442

noncomputable section

/-- A333763: a(n) = A161604(n) / A030101(A161604(n)).

Offset 1, canonical program `A333763.P14005245914271309442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, A161604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333763.P14005245914271309442.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, A161604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335322.P3876703138502484102

`A007318(floor(A189151(n+1)/2))`
-/

namespace A335322.P3876703138502484102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(A189151 (n + 1) : ℚ) / 2⌋.toNat

end

end A335322.P3876703138502484102

noncomputable section

/-- A335322: Triangle read by rows: T(n, k) = binomial(n, floor((n+k+1)/2)) with k <= n.

Offset 1, canonical program `A335322.P3876703138502484102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335322 (n : ℕ) : ℤ :=
  A335322.P3876703138502484102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336101.P16851114515148450517

`eq[1, A340373(n+1)]+1`
-/

namespace A336101.P16851114515148450517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336101.P16851114515148450517

noncomputable section

/-- A336101: Numbers divisible by exactly one odd prime.

Offset 1, canonical program `A336101.P16851114515148450517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336101 (n : ℕ) : ℤ :=
  (A336101.P16851114515148450517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336756.P6848481102697664019

`3*A038567(2*(n+1))`
-/

namespace A336756.P6848481102697664019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038567 (2 * (n + 1))

end

end A336756.P6848481102697664019

noncomputable section

/-- A336756: Perimeters in increasing order of primitive integer-sided triangles whose sides a < b < c are in arithmetic progression.

Offset 1, canonical program `A336756.P6848481102697664019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336756 (n : ℕ) : ℤ :=
  A336756.P6848481102697664019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337635.P17372032440398467433

`∑[A000007(Δ[A095111(n)]+1)]`
-/

namespace A337635.P17372032440398467433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P17372032440398467433

noncomputable section

/-- A337635: Number of numbers k <= n such that k is in A095096 and k+1 is in A020899.

Offset 0, canonical program `A337635.P17372032440398467433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337635 (n : ℕ) : ℤ :=
  A337635.P17372032440398467433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337636.P16176283414138515688

`∑[ceil(Δ[A095111(n)/2])]`
-/

namespace A337636.P16176283414138515688
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095111 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P16176283414138515688

noncomputable section

/-- A337636: Number of numbers k <= n such that k+1 is in A095096 and k is in A020899.

Offset 0, canonical program `A337636.P16176283414138515688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337636 (n : ℕ) : ℤ :=
  A337636.P16176283414138515688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340079.P6582088419165452979

`(n+1)/A340078(n+1)`
-/

namespace A340079.P6582088419165452979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340079.P6582088419165452979

noncomputable section

/-- A340079: a(n) = n / gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

Offset 1, canonical program `A340079.P6582088419165452979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340079.P6582088419165452979.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340080.P552086926043730112

`(A018804(n+1)+1)/A340078(n+1)`
-/

namespace A340080.P552086926043730112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) + 1 : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340080.P552086926043730112

noncomputable section

/-- A340080: a(n) = (1+A018804(n)) / gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

Offset 1, canonical program `A340080.P552086926043730112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340080.P552086926043730112.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342381.P8416467622405171547

`A007318(n)*A000354(A025581(n))`
-/

namespace A342381.P8416467622405171547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000354 (A025581 n).toNat

end

end A342381.P8416467622405171547

noncomputable section

/-- A342381: Triangle read by rows: T(n,k) is the number of symmetries of the n-dimensional hypercube that fix exactly 2*k facets; n,k >= 0.

Offset 0, canonical program `A342381.P8416467622405171547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A342381 (n : ℕ) : ℤ :=
  A342381.P8416467622405171547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A342381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342604.P8903697158238511034

`∑[A000040(n+1)*A007318(n)]`
-/

namespace A342604.P8903697158238511034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P8903697158238511034

noncomputable section

/-- A342604: a(n) = Sum_{j=1..n} A003718(j-1)*prime(j).

Offset 1, canonical program `A342604.P8903697158238511034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342604 (n : ℕ) : ℤ :=
  A342604.P8903697158238511034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343037.P13066724117359512998

`ceil(sqrt(A014410(n+2)))²-A014410(n+2)`
-/

namespace A343037.P13066724117359512998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A014410 (n + 2) : ℝ)⌉ ^ 2 - A014410 (n + 2)

end

end A343037.P13066724117359512998

noncomputable section

/-- A343037: Triangle T(n,k), n >= 2, 1 <= k <= n-1, read by rows, where T(n,k) is the difference between smallest square >= binomial(n,k) and binomial(n,k).

Offset 2, canonical program `A343037.P13066724117359512998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A343037 (n : ℕ) : ℤ :=
  A343037.P13066724117359512998.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A343037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343303.P7519863497709517625

`A231089(n+1)+A033999(p?[A016777(n)])`
-/

namespace A343303.P7519863497709517625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343303.P7519863497709517625

noncomputable section

/-- A343303: Numbers in A231626 but not in A343302; first of 5 consecutive deficient numbers in arithmetic progression with common difference > 1.

Offset 1, canonical program `A343303.P7519863497709517625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303 (n : ℕ) : ℤ :=
  A343303.P7519863497709517625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344521.P15693344205038939177

`∑[A309322(n+1)]`
-/

namespace A344521.P15693344205038939177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344521.P15693344205038939177

noncomputable section

/-- A344521: a(n) = Sum_{1 <= i <= j <= k <= n} gcd(i,j,k).

Offset 1, canonical program `A344521.P15693344205038939177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344521 (n : ℕ) : ℤ :=
  A344521.P15693344205038939177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344891.P4793939344871963479

`A000040(A343809(n+1))`
-/

namespace A344891.P4793939344871963479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A343809 (n + 1)).toNat

end

end A344891.P4793939344871963479

noncomputable section

/-- A344891: Divide the primes into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

Offset 1, canonical program `A344891.P4793939344871963479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A344891 (n : ℕ) : ℤ :=
  A344891.P4793939344871963479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A344891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345345.P14068785434058537424

`∑{d}[n+1, A124315(#)*A143519((n+1)/#)]`
-/

namespace A345345.P14068785434058537424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345345.P14068785434058537424

noncomputable section

/-- A345345: a(n) = Sum_{d^2|n} omega(n/d^2).

Offset 1, canonical program `A345345.P14068785434058537424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345345 (n : ℕ) : ℤ :=
  A345345.P14068785434058537424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345347.P6658158648195050989

`A000045(A108852(n)+1)+n`
-/

namespace A345347.P6658158648195050989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 n + 1).toNat + (n : ℤ)

end

end A345347.P6658158648195050989

noncomputable section

/-- A345347: Find the largest k with F(k) <= n, where F(k) is the k-th Fibonacci number. a(n) = F(k+2) + n.

Offset 0, canonical program `A345347.P6658158648195050989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345347 (n : ℕ) : ℤ :=
  A345347.P6658158648195050989.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345354.P8610858115869796837

`∑{d}[n+1, A062799(#)*A143519((n+1)/#)]`
-/

namespace A345354.P8610858115869796837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345354.P8610858115869796837

noncomputable section

/-- A345354: a(n) = Sum_{p|n, p prime} omega(n/p).

Offset 1, canonical program `A345354.P8610858115869796837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345354 (n : ℕ) : ℤ :=
  A345354.P8610858115869796837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345754.P6642101267170344289

`(n+1)²*A344372(n+1)`
-/

namespace A345754.P6642101267170344289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A344372 (n + 1)

end

end A345754.P6642101267170344289

noncomputable section

/-- A345754: Number of 2 X 2 matrices over Z_n whose permanent equals their determinant.

Offset 1, canonical program `A345754.P6642101267170344289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345754 (n : ℕ) : ℤ :=
  A345754.P6642101267170344289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346868.P18054169733136190214

`∑{d}[A071561(n+1), #]`
-/

namespace A346868.P18054169733136190214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A346868.P18054169733136190214

noncomputable section

/-- A346868: Sum of divisors of the numbers with no middle divisors.

Offset 1, canonical program `A346868.P18054169733136190214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346868 (n : ℕ) : ℤ :=
  (A346868.P18054169733136190214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347092.P8123112013211787549

`∑{d}[n+1, A328639(#)*A340850((n+1)/#)]`
-/

namespace A347092.P8123112013211787549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328639 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347092.P8123112013211787549

noncomputable section

/-- A347092: Dirichlet inverse of A322577, which is the convolution of Dedekind psi with Euler phi.

Offset 1, canonical program `A347092.P8123112013211787549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347092 (n : ℕ) : ℤ :=
  A347092.P8123112013211787549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145609.P11425567724915738602

`A025529(2*(n+1))/gcd(A003418(n+1), A025529(2*(n+1)))`
-/

namespace A145609.P11425567724915738602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (2 * (n + 1)) : ℚ) / (Int.gcd (A003418 (n + 1)) (A025529 (2 * (n + 1))) : ℚ)

end

end A145609.P11425567724915738602

noncomputable section

/-- A145609: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

Offset 1, canonical program `A145609.P11425567724915738602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145609.P11425567724915738602.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147297.P13953450478721727119

`record[A108154(4*(n+1)+2)]`
-/

namespace A147297.P13953450478721727119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (4 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147297.P13953450478721727119

noncomputable section

/-- A147297: Primes of the form (2k)^2 + 3(2k + 1)^2.

Offset 1, canonical program `A147297.P13953450478721727119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A147297 (n : ℕ) : ℤ :=
  A147297.P13953450478721727119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A147297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156047.P16289712834107389922

`A094310(comp[∑[n]])+A058298(n+2)`
-/

namespace A156047.P16289712834107389922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A058298 (n + 2)

end

end A156047.P16289712834107389922

noncomputable section

/-- A156047: Triangle read by rows: T(n, k) = (n+1)!*(1/k + 1/(n-k+1)).

Offset 1, canonical program `A156047.P16289712834107389922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A156047 (n : ℕ) : ℤ :=
  A156047.P16289712834107389922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A156047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156308.P5650562989107457170

`A078812(n)/A033184(n+1)*A092392(n)`
-/

namespace A156308.P5650562989107457170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078812 n : ℚ) / (A033184 (n + 1) : ℚ) * (A092392 n : ℚ)

end

end A156308.P5650562989107457170

noncomputable section

/-- A156308: Inverse of triangle S(n,m) defined by sequence A156290, n >= 1, 1 <= m <= n.

Offset 1, canonical program `A156308.P5650562989107457170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156308 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156308.P5650562989107457170.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157075.P6307101692987451821

`2*A008846(n+1)`
-/

namespace A157075.P6307101692987451821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008846 (n + 1)

end

end A157075.P6307101692987451821

noncomputable section

/-- A157075: Positive integers n for which the Diophantine equation x^2 + y^2 = n^2/2 has relatively prime solutions.

Offset 1, canonical program `A157075.P6307101692987451821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157075 (n : ℕ) : ℤ :=
  A157075.P6307101692987451821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157129.P1601382808116694342

`A071928(n+1)/2`
-/

namespace A157129.P1601382808116694342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071928 (n + 1) : ℚ) / 2

end

end A157129.P1601382808116694342

noncomputable section

/-- A157129: An analog of the Kolakoski sequence A000002, only now a(n) = (length of n-th run divided by 2) using 1 and 2 and starting with 1,1.

Offset 1, canonical program `A157129.P1601382808116694342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157129.P1601382808116694342.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157345.P5015846809518518335

`filter[A350704(n+1), A340370(#)]`
-/

namespace A157345.P5015846809518518335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A157345.P5015846809518518335

noncomputable section

/-- A157345: Semiprimes that are the product of two distinct non-Sophie Germain primes.

Offset 1, canonical program `A157345.P5015846809518518335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4636 terms. -/
def A157345 (n : ℕ) : ℤ :=
  A157345.P5015846809518518335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4636 terms. -/
def A157345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159253.P6361849019843085425

`A048798(n+1)*A053149(A062378(n+1))`
-/

namespace A159253.P6361849019843085425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1) * A053149 (A062378 (n + 1)).toNat

end

end A159253.P6361849019843085425

noncomputable section

/-- A159253: a(n) is the smallest positive integer not yet in the sequence such that n * a(n) is a cube.

Offset 1, canonical program `A159253.P6361849019843085425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159253 (n : ℕ) : ℤ :=
  A159253.P6361849019843085425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159965.P13351060524147672347

`A193635(A061579(n))`
-/

namespace A159965.P13351060524147672347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A061579 n).toNat

end

end A159965.P13351060524147672347

noncomputable section

/-- A159965: Riordan array (1/sqrt(1-4x), (1-2x-(1-3x)c(x))/(x*sqrt(1-4x))), c(x) the g.f. of A000108.

Offset 0, canonical program `A159965.P13351060524147672347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A159965 (n : ℕ) : ℤ :=
  A159965.P13351060524147672347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A159965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160370.P9712212650284585240

`∩[A244778(n+1), A288022(n+1)]`
-/

namespace A160370.P9712212650284585240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160370.P9712212650284585240

noncomputable section

/-- A160370: Smaller member p of a pair (p,p+6) of consecutive primes in different centuries.

Offset 1, canonical program `A160370.P9712212650284585240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A160370 (n : ℕ) : ℤ :=
  (A160370.P9712212650284585240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A160370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162306.P11821351337870936000

`A002260(eq[1, A304569(n+1)]+1)`
-/

namespace A162306.P11821351337870936000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A162306.P11821351337870936000

noncomputable section

/-- A162306: Irregular triangle in which row n contains the numbers <= n whose prime factors are a subset of prime factors of n.

Offset 1, canonical program `A162306.P11821351337870936000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A162306 (n : ℕ) : ℤ :=
  A162306.P11821351337870936000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A162306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166660.P8526980264530520736

`∏{d}[n+1, A060640(A014963(#))]`
-/

namespace A166660.P8526980264530520736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A060640 (A014963 d).toNat

end

end A166660.P8526980264530520736

noncomputable section

/-- A166660: Totally multiplicative sequence with a(p) = 2p+1 for prime p.

Offset 1, canonical program `A166660.P8526980264530520736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166660 (n : ℕ) : ℤ :=
  A166660.P8526980264530520736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167339.P17538192624040358396

`(n+1)*A166586(n+1)`
-/

namespace A167339.P17538192624040358396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166586 (n + 1)

end

end A167339.P17538192624040358396

noncomputable section

/-- A167339: Totally multiplicative sequence with a(p) = p*(p-2) = p^2-2p for prime p.

Offset 1, canonical program `A167339.P17538192624040358396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167339 (n : ℕ) : ℤ :=
  A167339.P17538192624040358396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167341.P9615713007832461623

`(n+1)*A166589(n+1)`
-/

namespace A167341.P9615713007832461623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166589 (n + 1)

end

end A167341.P9615713007832461623

noncomputable section

/-- A167341: Totally multiplicative sequence with a(p) = p*(p-3) = p^2-3p for prime p.

Offset 1, canonical program `A167341.P9615713007832461623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167341 (n : ℕ) : ℤ :=
  A167341.P9615713007832461623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167354.P13081332751895378008

`A166586(n+1)²`
-/

namespace A167354.P13081332751895378008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) ^ 2

end

end A167354.P13081332751895378008

noncomputable section

/-- A167354: Totally multiplicative sequence with a(p) = (p-2)^2 = p^2-4p+4 for prime p.

Offset 1, canonical program `A167354.P13081332751895378008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167354 (n : ℕ) : ℤ :=
  A167354.P13081332751895378008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167356.P16659837918283053024

`A166586(n+1)*A166589(n+1)`
-/

namespace A167356.P16659837918283053024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A166589 (n + 1)

end

end A167356.P16659837918283053024

noncomputable section

/-- A167356: Totally multiplicative sequence with a(p) = (p-2)*(p-3) = p^2-5p+6 for prime p.

Offset 1, canonical program `A167356.P16659837918283053024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167356 (n : ℕ) : ℤ :=
  A167356.P16659837918283053024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167361.P8077212222090649816

`A166589(n+1)²`
-/

namespace A167361.P8077212222090649816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (n + 1) ^ 2

end

end A167361.P8077212222090649816

noncomputable section

/-- A167361: Totally multiplicative sequence with a(p) = (p-3)^2 = p^2-6p+9 for prime p.

Offset 1, canonical program `A167361.P8077212222090649816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167361 (n : ℕ) : ℤ :=
  A167361.P8077212222090649816.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171727.P1096727604738501956

`A091591(p?[A040976(n+1)])`
-/

namespace A171727.P1096727604738501956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171727.P1096727604738501956

noncomputable section

/-- A171727: The number of twin prime pairs in the interval (p^2,p*q), where (p,q) runs over the twin prime pairs (A001359(n),A006512(n)).

Offset 1, canonical program `A171727.P1096727604738501956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A171727 (n : ℕ) : ℤ :=
  A171727.P1096727604738501956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A171727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173966.P5392823203403283562

`filter[A157483(n+1), A324908(#)]`
-/

namespace A173966.P5392823203403283562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A173966.P5392823203403283562

noncomputable section

/-- A173966: Sums of two consecutive semiprimes.

Offset 1, canonical program `A173966.P5392823203403283562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173966 (n : ℕ) : ℤ :=
  A173966.P5392823203403283562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175275.P10989980241705012297

`p?[A031944(n+1)]`
-/

namespace A175275.P10989980241705012297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175275.P10989980241705012297

noncomputable section

/-- A175275: Base-3 pandigital primes: primes having at least one of each digit 0,1,2 when written in base 3.

Offset 1, canonical program `A175275.P10989980241705012297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. -/
def A175275 (n : ℕ) : ℤ :=
  A175275.P10989980241705012297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. -/
def A175275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175455.P2904032130213794676

`Δ[A173185(n)]*A025529(n+1)`
-/

namespace A175455.P2904032130213794676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A025529 (n + 1)

end

end A175455.P2904032130213794676

noncomputable section

/-- A175455: a(n) = H(n) * (lcm(1,2,...,n))^2, where H(n) = harmonic numbers (1/1 + 1/2 + ... + 1/n).

Offset 1, canonical program `A175455.P2904032130213794676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A175455 (n : ℕ) : ℤ :=
  A175455.P2904032130213794676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A175455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175608.P16754673990794932989

`char[A215726(n+1)-1]`
-/

namespace A175608.P16754673990794932989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175608.P16754673990794932989

noncomputable section

/-- A175608: Characteristic function of squarefree triangular integers: 1 if n(n+1)/2 is squarefree else 0.

Offset 1, canonical program `A175608.P16754673990794932989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175608 (n : ℕ) : ℤ :=
  (A175608.P16754673990794932989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175632.P6445020047984440906

`Δ[record[A062302(n+1)]]`
-/

namespace A175632.P6445020047984440906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175632.P6445020047984440906

noncomputable section

/-- A175632: Maximal run length of primes of the form A025584(n), A025584(n)+2, A025584(n)+4, ...

Offset 1, canonical program `A175632.P6445020047984440906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175632 (n : ℕ) : ℤ :=
  A175632.P6445020047984440906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176835.P11267763139736940378

`A115878(n+1)+1`
-/

namespace A176835.P11267763139736940378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (n + 1) + 1

end

end A176835.P11267763139736940378

noncomputable section

/-- A176835: Number of positive integers k for which k^2 - n*k is a square.

Offset 1, canonical program `A176835.P11267763139736940378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176835 (n : ℕ) : ℤ :=
  A176835.P11267763139736940378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176992.P8811251635075281909

`2*A092392(n)-A033184(n+1)`
-/

namespace A176992.P8811251635075281909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092392 n - A033184 (n + 1)

end

end A176992.P8811251635075281909

noncomputable section

/-- A176992: Triangle T(n,k) = binomial(2n-k+1, n+1) read by rows, 0 <= k <= n.

Offset 0, canonical program `A176992.P8811251635075281909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176992 (n : ℕ) : ℤ :=
  A176992.P8811251635075281909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178180.P18394938514477420911

`eq[A022457(A028310(n)), A066066(n+1)]`
-/

namespace A178180.P18394938514477420911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178180.P18394938514477420911

noncomputable section

/-- A178180: Numbers k such that prime(2k) mod prime(k) = prime(2k+2) mod prime(k+1).

Offset 1, canonical program `A178180.P18394938514477420911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A178180 (n : ℕ) : ℤ :=
  (A178180.P18394938514477420911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A178180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179243.P2943662787813260629

`eq[4, A219641(A104324(n))]`
-/

namespace A179243.P2943662787813260629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P2943662787813260629

noncomputable section

/-- A179243: Numbers that have three terms in their Zeckendorf representation.

Offset 1, canonical program `A179243.P2943662787813260629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 969 terms. -/
def A179243 (n : ℕ) : ℤ :=
  (A179243.P2943662787813260629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 969 terms. -/
def A179243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179244.P8742142216849556960

`eq[3, A007318(A104324(n))]`
-/

namespace A179244.P8742142216849556960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P8742142216849556960

noncomputable section

/-- A179244: Numbers that have 4 terms in their Zeckendorf representation.

Offset 1, canonical program `A179244.P8742142216849556960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3060 terms. -/
def A179244 (n : ℕ) : ℤ :=
  (A179244.P8742142216849556960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3060 terms. -/
def A179244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179878.P1509397048520783937

`A179877(n+1)+1`
-/

namespace A179878.P1509397048520783937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179877 (n + 1) + 1

end

end A179878.P1509397048520783937

noncomputable section

/-- A179878: Numbers h such that h and h-1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 and simultaneously this mean is an integer (see A179882).

Offset 1, canonical program `A179878.P1509397048520783937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179878 (n : ℕ) : ℤ :=
  A179878.P1509397048520783937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182576.P13232943474279536911

`ceil(A104324(n²)/2)`
-/

namespace A182576.P13232943474279536911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104324 (n ^ 2) : ℚ) / 2⌉

end

end A182576.P13232943474279536911

noncomputable section

/-- A182576: Number of 1's in the Zeckendorf representation of n^2.

Offset 0, canonical program `A182576.P13232943474279536911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A182576 (n : ℕ) : ℤ :=
  A182576.P13232943474279536911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A182576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183060.P15810136757882234641

`floor(A147562(n)/2+n)`
-/

namespace A183060.P15810136757882234641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147562 n : ℚ) / 2 + (n : ℚ)⌋

end

end A183060.P15810136757882234641

noncomputable section

/-- A183060: Number of "ON" cells at n-th stage in a simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A183060.P15810136757882234641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183060 (n : ℕ) : ℤ :=
  A183060.P15810136757882234641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185632.P15082878415161927803

`record[A108154(A018252(n+1)+1)]`
-/

namespace A185632.P15082878415161927803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185632.P15082878415161927803

noncomputable section

/-- A185632: Primes of the form n^2 + n + 1 where n is nonprime.

Offset 1, canonical program `A185632.P15082878415161927803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185632 (n : ℕ) : ℤ :=
  A185632.P15082878415161927803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185717.P5465608127689346911

`A121443(2*n+1)`
-/

namespace A185717.P5465608127689346911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (2 * n + 1)

end

end A185717.P5465608127689346911

noncomputable section

/-- A185717: Expansion of q^(-1) * c(q^2) * (c(q) - c(q^4)) / 9 in powers of q^2 where c() is a cubic AGM theta function.

Offset 0, canonical program `A185717.P5465608127689346911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185717 (n : ℕ) : ℤ :=
  A185717.P5465608127689346911.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186193.P2513860863626863232

`2*(A153083(n+1)+5)`
-/

namespace A186193.P2513860863626863232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153083 (n + 1) + 5)

end

end A186193.P2513860863626863232

noncomputable section

/-- A186193: Numbers k such that k!! is divisible by (k+1).

Offset 1, canonical program `A186193.P2513860863626863232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186193 (n : ℕ) : ℤ :=
  A186193.P2513860863626863232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186356.P6573468704115705023

`A193832(n+2)+A183295(n+1)`
-/

namespace A186356.P6573468704115705023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 2) + A183295 (n + 1)

end

end A186356.P6573468704115705023

noncomputable section

/-- A186356: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186357.

Offset 1, canonical program `A186356.P6573468704115705023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186356 (n : ℕ) : ℤ :=
  A186356.P6573468704115705023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189675.P6081265892549474111

`A171567(n)*A193588(n)`
-/

namespace A189675.P6081265892549474111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171567 n * A193588 n

end

end A189675.P6081265892549474111

noncomputable section

/-- A189675: Composition of Catalan and Fibonacci numbers.

Offset 1, canonical program `A189675.P6081265892549474111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189675 (n : ℕ) : ℤ :=
  A189675.P6081265892549474111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189986.P2460908165640344182

`filter[A385350(n+2), A373978(#)]`
-/

namespace A189986.P2460908165640344182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A189986.P2460908165640344182

noncomputable section

/-- A189986: Numbers of the form 4k+1 having exactly 4 divisors.

Offset 1, canonical program `A189986.P2460908165640344182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A189986 (n : ℕ) : ℤ :=
  A189986.P2460908165640344182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A189986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191228.P7558607639382217669

`A107347(∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A191228.P7558607639382217669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191228.P7558607639382217669

noncomputable section

/-- A191228: Greatest Ramanujan prime index less than x, eta(x).

Offset 1, canonical program `A191228.P7558607639382217669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228 (n : ℕ) : ℤ :=
  A191228.P7558607639382217669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191520.P13265001190735840137

`A191522(n)-A191787(n)`
-/

namespace A191520.P13265001190735840137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n - A191787 n

end

end A191520.P13265001190735840137

noncomputable section

/-- A191520: Number of UUU's in all the dispersed Dyck paths of semilength n (i.e., in all Motzkin paths of length n; U=(1,1)).

Offset 0, canonical program `A191520.P13265001190735840137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191520 (n : ℕ) : ℤ :=
  A191520.P13265001190735840137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191764.P4997533141840393272

`floor((A008846(n+1)/2)²)`
-/

namespace A191764.P4997533141840393272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008846 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A191764.P4997533141840393272

noncomputable section

/-- A191764: Integers that do not have a partition into a sum of an odd square and two (not necessarily distinct) triangular numbers.

Offset 1, canonical program `A191764.P4997533141840393272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A191764 (n : ℕ) : ℤ :=
  A191764.P4997533141840393272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A191764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192144.P13402227133429832230

`A192146(n+1)+A192146(n+1)-A192255(n+1)`
-/

namespace A192144.P13402227133429832230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192146 (n + 1) + (A192146 (n + 1) - A192255 (n + 1))

end

end A192144.P13402227133429832230

noncomputable section

/-- A192144: 1-sequence of reduction of hexagonal numbers sequence by x^2 -> x+1.

Offset 1, canonical program `A192144.P13402227133429832230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192144 (n : ℕ) : ℤ :=
  A192144.P13402227133429832230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193305.P14986137312486349582

`filter[A033948(n+1), A066247(#)]`
-/

namespace A193305.P14986137312486349582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A193305.P14986137312486349582

noncomputable section

/-- A193305: Composite numbers of the form 4, p^m, or 2*p^m for p an odd prime. All composites that have a primitive root.

Offset 1, canonical program `A193305.P14986137312486349582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3577 terms. -/
def A193305 (n : ℕ) : ℤ :=
  A193305.P14986137312486349582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3577 terms. -/
def A193305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195609.P9577754204178047134

`eq[1, A134451(A268726(n)+n)]`
-/

namespace A195609.P9577754204178047134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A268726 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P9577754204178047134

noncomputable section

/-- A195609: Numbers n such that Sum_{i=1..n} A(i) = A(n)*A(n+1)/4, where A(n) = A000069(n).

Offset 1, canonical program `A195609.P9577754204178047134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A195609 (n : ℕ) : ℤ :=
  (A195609.P9577754204178047134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A195609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199084.P6700998896668001716

`A018804(n+1)+A193356(n+1)-A344372(n+1)`
-/

namespace A199084.P6700998896668001716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A193356 (n + 1) - A344372 (n + 1))

end

end A199084.P6700998896668001716

noncomputable section

/-- A199084: a(n) = Sum_{k=1..n} (-1)^(k+1) gcd(k,n).

Offset 1, canonical program `A199084.P6700998896668001716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199084 (n : ℕ) : ℤ :=
  A199084.P6700998896668001716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207622.P11482556725908799106

`A000079(n%floor(sqrt(n+1)))*A207616(n+1)`
-/

namespace A207622.P11482556725908799106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n % Nat.sqrt (n + 1)) * A207616 (n + 1)

end

end A207622.P11482556725908799106

noncomputable section

/-- A207622: Triangle of coefficients of polynomials u(n,x) jointly generated with A207623; see the Formula section.

Offset 1, canonical program `A207622.P11482556725908799106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622 (n : ℕ) : ℤ :=
  A207622.P11482556725908799106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213815.P11762082547027423412

`Δ[A000034(n)+2*A107817(n)]`
-/

namespace A213815.P11762082547027423412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 2 * A107817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213815.P11762082547027423412

noncomputable section

/-- A213815: Arithmetic mean of next a(n) successive nonnegative integers is prime.

Offset 1, canonical program `A213815.P11762082547027423412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213815 (n : ℕ) : ℤ :=
  A213815.P11762082547027423412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214506.P9224525650957294672

`(A033873(n)+A000007(n))%10`
-/

namespace A214506.P9224525650957294672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033873 n + A000007 n) 10

end

end A214506.P9224525650957294672

noncomputable section

/-- A214506: Last digit of the smallest prime number in base 10 with n digits.

Offset 1, canonical program `A214506.P9224525650957294672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A214506 (n : ℕ) : ℤ :=
  A214506.P9224525650957294672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A214506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216278.P16799818316336814260

`A374061(n+1)+A364032(n+1)`
-/

namespace A216278.P16799818316336814260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374061 (n + 1) + A364032 (n + 1)

end

end A216278.P16799818316336814260

noncomputable section

/-- A216278: Number of solutions to the equation x^2+2y^2 = n with x and y > 0.

Offset 1, canonical program `A216278.P16799818316336814260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A216278 (n : ℕ) : ℤ :=
  A216278.P16799818316336814260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A216278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216282.P5463168406655024554

`A363037(n+1)-A374061(n+1)`
-/

namespace A216282.P5463168406655024554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A374061 (n + 1)

end

end A216282.P5463168406655024554

noncomputable section

/-- A216282: Number of nonnegative solutions to the equation x^2 + 2*y^2 = n.

Offset 1, canonical program `A216282.P5463168406655024554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216282 (n : ℕ) : ℤ :=
  A216282.P5463168406655024554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216292.P8549922877224519400

`floor(A078494(n+1)/10)`
-/

namespace A216292.P8549922877224519400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078494 (n + 1) : ℚ) / 10⌋

end

end A216292.P8549922877224519400

noncomputable section

/-- A216292: Values of k such that there is exactly one prime between 10k and 10k + 9.

Offset 1, canonical program `A216292.P8549922877224519400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216292 (n : ℕ) : ℤ :=
  A216292.P8549922877224519400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216309.P13475268406436914155

`A078494(eq[1, A078494(n+1)%5]+1)`
-/

namespace A216309.P13475268406436914155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216309.P13475268406436914155

noncomputable section

/-- A216309: The prime ending in 1 is the only prime in a decade.

Offset 1, canonical program `A216309.P13475268406436914155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A216309 (n : ℕ) : ℤ :=
  A216309.P13475268406436914155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A216309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216310.P16292608153891418272

`A078494(eq[3, A078494(n+1)%5]+1)`
-/

namespace A216310.P16292608153891418272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216310.P16292608153891418272

noncomputable section

/-- A216310: The prime ending in 3 is the only prime in a decade.

Offset 1, canonical program `A216310.P16292608153891418272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A216310 (n : ℕ) : ℤ :=
  A216310.P16292608153891418272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A216310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216311.P1626925230596813176

`A078494(eq[2, A078494(n+1)%5]+1)`
-/

namespace A216311.P1626925230596813176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216311.P1626925230596813176

noncomputable section

/-- A216311: The prime ending in 7 is the only prime in a decade.

Offset 1, canonical program `A216311.P1626925230596813176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A216311 (n : ℕ) : ℤ :=
  A216311.P1626925230596813176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A216311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216312.P9687480174034920457

`∩[A030433(n+1), A078494(n+1)]`
-/

namespace A216312.P9687480174034920457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P9687480174034920457

noncomputable section

/-- A216312: The prime ending in 9 is the only prime in a decade.

Offset 1, canonical program `A216312.P9687480174034920457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312 (n : ℕ) : ℤ :=
  (A216312.P9687480174034920457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219638.P10933090665757419275

`comp[n-ceil(A104324(n)/2)]`
-/

namespace A219638.P10933090665757419275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(A104324 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219638.P10933090665757419275

noncomputable section

/-- A219638: Complement of A219640. Natural numbers that do not occur in A219641.

Offset 1, canonical program `A219638.P10933090665757419275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219638 (n : ℕ) : ℤ :=
  (A219638.P10933090665757419275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221838.P16241372166790464696

`A221837(n+1)+A046079(n+1)`
-/

namespace A221838.P16241372166790464696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221837 (n + 1) + A046079 (n + 1)

end

end A221838.P16241372166790464696

noncomputable section

/-- A221838: Number of integer Heron triangles of height n.

Offset 1, canonical program `A221838.P16241372166790464696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A221837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A221838 (n : ℕ) : ℤ :=
  A221838.P16241372166790464696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A221837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A221838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224715.P6193958608171359175

`A062302(A171526(n+1))`
-/

namespace A224715.P6193958608171359175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (A171526 (n + 1)).toNat

end

end A224715.P6193958608171359175

noncomputable section

/-- A224715: The number of unordered partitions {a,b} of prime(n) such that a or b is a nonnegative composite and the other is prime.

Offset 1, canonical program `A224715.P6193958608171359175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224715 (n : ℕ) : ℤ :=
  A224715.P6193958608171359175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225781.P10701421741266103451

`p?[2*A027699(n+1)-1]`
-/

namespace A225781.P10701421741266103451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027699 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225781.P10701421741266103451

noncomputable section

/-- A225781: Numbers k such that both k and (k+1)/2 are primes and evil.

Offset 1, canonical program `A225781.P10701421741266103451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A225781 (n : ℕ) : ℤ :=
  A225781.P10701421741266103451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A225781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226132.P3984057379380350820

`(-1)^n*A121443(n+1)`
-/

namespace A226132.P3984057379380350820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121443 (n + 1)

end

end A226132.P3984057379380350820

noncomputable section

/-- A226132: Expansion of - c(-q) * c(q^2) / 9 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A226132.P3984057379380350820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132 (n : ℕ) : ℤ :=
  A226132.P3984057379380350820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226323.P8599648680778542413

`A017077(∑[A007875(n+1)]-A007875(n+1))`
-/

namespace A226323.P8599648680778542413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (∑ j ∈ Finset.range (n + 1), f1 j - A007875 (n + 1)).toNat

end

end A226323.P8599648680778542413

noncomputable section

/-- A226323: Number of ordered pairs (i,j) with |i| * |j| <= n and gcd(i,j) <= 1.

Offset 0, canonical program `A226323.P8599648680778542413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A226323 (n : ℕ) : ℤ :=
  A226323.P8599648680778542413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A226323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227930.P13147228824602789360

`∩[A095282(n+1), A176620(n+1)]`
-/

namespace A227930.P13147228824602789360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P13147228824602789360

noncomputable section

/-- A227930: Primes p such that p-1 and p+1 have an even Hamming weight.

Offset 1, canonical program `A227930.P13147228824602789360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3485 terms. -/
def A227930 (n : ℕ) : ℤ :=
  (A227930.P13147228824602789360.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3485 terms. -/
def A227930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229615.P13961732512820352190

`A111932(n+2)-A121443(n+2)`
-/

namespace A229615.P13961732512820352190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111932 (n + 2) - A121443 (n + 2)

end

end A229615.P13961732512820352190

noncomputable section

/-- A229615: Expansion of q^2 * psi(q^3)^6 / psi(q)^2 in powers of q where psi() is a Ramanujan theta function.

Offset 2, canonical program `A229615.P13961732512820352190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615 (n : ℕ) : ℤ :=
  A229615.P13961732512820352190.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232356.P2356897415690345151

`2*A121443(n+1)-A111932(n+1)`
-/

namespace A232356.P2356897415690345151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A111932 (n + 1)

end

end A232356.P2356897415690345151

noncomputable section

/-- A232356: Expansion of 2/9 * c(q) * c(q^2) - q * (psi(q) * psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function and c(q) is a cubic AGM theta function.

Offset 1, canonical program `A232356.P2356897415690345151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356 (n : ℕ) : ℤ :=
  A232356.P2356897415690345151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A233182.P15043265348537409818

`comp[(n+1)*A358769(n+1)]`
-/

namespace A233182.P15043265348537409818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A358769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A233182.P15043265348537409818

noncomputable section

/-- A233182: Numbers that are not the product of a prime and a square.

Offset 1, canonical program `A233182.P15043265348537409818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233182 (n : ℕ) : ℤ :=
  (A233182.P15043265348537409818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234499.P15163541633688242812

`p?[floor(A046390(n+1)/2)]`
-/

namespace A234499.P15163541633688242812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046390 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234499.P15163541633688242812

noncomputable section

/-- A234499: Primes of the form (p*q*r*s - 1)/2, where p, q, r,s are distinct primes.

Offset 1, canonical program `A234499.P15163541633688242812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A234499 (n : ℕ) : ℤ :=
  A234499.P15163541633688242812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A234499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234999.P3604876205550161988

`p?[ceil(A027699(n+1)/2)]`
-/

namespace A234999.P3604876205550161988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027699 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234999.P3604876205550161988

noncomputable section

/-- A234999: Primes p such that the p-th evil number is prime; 2 together with evil primes p such that 2p - 1 is prime.

Offset 1, canonical program `A234999.P3604876205550161988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A234999 (n : ℕ) : ℤ :=
  A234999.P3604876205550161988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A234999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235461.P18008410030691594039

`∩[A000695(A008578(n+1)), A077718(n+1)]`
-/

namespace A235461.P18008410030691594039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235461.P18008410030691594039

noncomputable section

/-- A235461: Primes whose base-4 representation also is the base 2-representation of a prime.

Offset 1, canonical program `A235461.P18008410030691594039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A235461 (n : ℕ) : ℤ :=
  (A235461.P18008410030691594039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A235461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235866.P13257973449972346556

`eq[1, A324873(n+1)]+1`
-/

namespace A235866.P13257973449972346556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235866.P13257973449972346556

noncomputable section

/-- A235866: G-cyclic numbers: numbers n such that gcd(n,A060968(n))=1.

Offset 1, canonical program `A235866.P13257973449972346556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235866 (n : ℕ) : ℤ :=
  (A235866.P13257973449972346556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238950.P10491739874639615946

`A062799(n+1)-A238951(n+1)`
-/

namespace A238950.P10491739874639615946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1) - A238951 (n + 1)

end

end A238950.P10491739874639615946

noncomputable section

/-- A238950: Number of arcs from even to odd level vertices in divisor lattice D(n).

Offset 1, canonical program `A238950.P10491739874639615946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A238951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238950 (n : ℕ) : ℤ :=
  A238950.P10491739874639615946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A238951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241571.P15390613395399299711

`A153083(n+1)-2`
-/

namespace A241571.P15390613395399299711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 1) - 2

end

end A241571.P15390613395399299711

noncomputable section

/-- A241571: Numbers n such that 2*n+15 is not a prime.

Offset 1, canonical program `A241571.P15390613395399299711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241571 (n : ℕ) : ℤ :=
  A241571.P15390613395399299711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242663.P15863268049147409045

`lt[0, A259829(round(sqrt(n²+1)))]`
-/

namespace A242663.P15863268049147409045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242663.P15863268049147409045

noncomputable section

/-- A242663: Nonnegative integers of the form x^2 + 4*x*y - 4*y^2.

Offset 1, canonical program `A242663.P15863268049147409045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A242663 (n : ℕ) : ℤ :=
  (A242663.P15863268049147409045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A242663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246920.P9162283999492987608

`A115878(A038502(n+1))+A115878(n+1)`
-/

namespace A246920.P9162283999492987608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A038502 (n + 1)).toNat + A115878 (n + 1)

end

end A246920.P9162283999492987608

noncomputable section

/-- A246920: The number of distinct lengths of nontrivial integral cevians of an equilateral triangle of side n that divide an edge into two integral parts.

Offset 1, canonical program `A246920.P9162283999492987608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246920 (n : ℕ) : ℤ :=
  A246920.P9162283999492987608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248003.P1176382946806919218

`A023896(n+1)/A007875(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248003.P1176382946806919218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (A007875 (n + 1) : ℚ)

end

end A248003.P1176382946806919218

noncomputable section

/-- A248003: a(n) = (sum of totatives of n ) / (2^(omega(n)-1)); a(n) = A023896(n) / A007875(n).

Offset 1, canonical program `A248003.P1176382946806919218`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A023896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248003.P1176382946806919218.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A023896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249622.P13007679305527716333

`A052343(p?[A020756(n+4)])`
-/

namespace A249622.P13007679305527716333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249622.P13007679305527716333

noncomputable section

/-- A249622: a(n) = number of ways to express A117048(n) as the sum of two positive triangular numbers.

Offset 1, canonical program `A249622.P13007679305527716333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A249622 (n : ℕ) : ℤ :=
  A249622.P13007679305527716333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A249622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255264.P17478786461012927538

`A147562(A048645(n+1))`
-/

namespace A255264.P17478786461012927538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (A048645 (n + 1)).toNat

end

end A255264.P17478786461012927538

noncomputable section

/-- A255264: Total number of ON cells in the "Ulam-Warburton" two-dimensional cellular automaton of A147562 after A048645(n) generations.

Offset 1, canonical program `A255264.P17478786461012927538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, A147562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255264 (n : ℕ) : ℤ :=
  A255264.P17478786461012927538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, A147562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258383.P13211642193045278784

`Δ[A258432(n+1)]`
-/

namespace A258383.P13211642193045278784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258383.P13211642193045278784

noncomputable section

/-- A258383: Run lengths of consecutive identical terms in A062234.

Offset 1, canonical program `A258383.P13211642193045278784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258383 (n : ℕ) : ℤ :=
  A258383.P13211642193045278784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258934.P8899308222743734036

`A087461(n+2)-A065091(n+1)`
-/

namespace A258934.P8899308222743734036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A065091 (n + 1)

end

end A258934.P8899308222743734036

noncomputable section

/-- A258934: Half the difference between the 2n-th prime and the n-th prime, starting from n=2.

Offset 2, canonical program `A258934.P8899308222743734036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258934 (n : ℕ) : ℤ :=
  A258934.P8899308222743734036.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261092.P3361888197169044314

`char[A219640(n)]`
-/

namespace A261092.P3361888197169044314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P3361888197169044314

noncomputable section

/-- A261092: First differences of A261093; characteristic function for A219640.

Offset 0, canonical program `A261092.P3361888197169044314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261092 (n : ℕ) : ℤ :=
  (A261092.P3361888197169044314.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261095.P11813985126909535147

`A219640(n+1)-A219640(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261095.P11813985126909535147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (n + 1) - A219640 n

end

end A261095.P11813985126909535147

noncomputable section

/-- A261095: First differences of A219640: a(n) = A219640(n+1) - A219640(n).

Offset 0, canonical program `A261095.P11813985126909535147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261095 (n : ℕ) : ℤ :=
  A261095.P11813985126909535147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262708.P6887640225270983865

`A086304(n+1)+or(5, A090722(n+4))`
-/

namespace A262708.P6887640225270983865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + Int.lor 5 (A090722 (n + 4))

end

end A262708.P6887640225270983865

noncomputable section

/-- A262708: a(n) = p-(p/5) where p = prime(n) and (p/5) is a Legendre symbol.

Offset 4, canonical program `A262708.P6887640225270983865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708 (n : ℕ) : ℤ :=
  A262708.P6887640225270983865.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265390.P4023659624816682128

`∏{e}[n+1, A025529(#+1)]`
-/

namespace A265390.P4023659624816682128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025529 (Nat.factorization (f1 n) p + 1)

end

end A265390.P4023659624816682128

noncomputable section

/-- A265390: a(n) = lcm_{d|n} tau(d) * Sum_{d|n} 1/tau(d), where tau(d) represents the number of divisors of d (A000005(d)).

Offset 1, canonical program `A265390.P4023659624816682128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265390 (n : ℕ) : ℤ :=
  A265390.P4023659624816682128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266459.P6080024581555885958

`A267001(A020703(n+1)-1)`
-/

namespace A266459.P6080024581555885958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 (A020703 (n + 1) - 1).toNat

end

end A266459.P6080024581555885958

noncomputable section

/-- A266459: Triangle read by rows giving successive states of cellular automaton generated by "Rule 27" initiated with a single ON (black) cell.

Offset 0, canonical program `A266459.P6080024581555885958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459 (n : ℕ) : ℤ :=
  A266459.P6080024581555885958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266669.P16161379745779361122

`A266605(A020703(n+1)-1)`
-/

namespace A266669.P16161379745779361122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (A020703 (n + 1) - 1).toNat

end

end A266669.P16161379745779361122

noncomputable section

/-- A266669: Triangle read by rows giving successive states of cellular automaton generated by "Rule 53" initiated with a single ON (black) cell.

Offset 0, canonical program `A266669.P16161379745779361122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669 (n : ℕ) : ℤ :=
  A266669.P16161379745779361122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267679.P2639550459389939186

`(1-(A267349(n)+A266174(n)))²`
-/

namespace A267679.P2639550459389939186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A267349 n + A266174 n)) ^ 2

end

end A267679.P2639550459389939186

noncomputable section

/-- A267679: Triangle read by rows giving successive states of cellular automaton generated by "Rule 201" initiated with a single ON (black) cell.

Offset 0, canonical program `A267679.P2639550459389939186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679 (n : ℕ) : ℤ :=
  A267679.P2639550459389939186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270428.P3446457217873923368

`eq[1, A355825(n+1)]+1`
-/

namespace A270428.P3446457217873923368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270428.P3446457217873923368

noncomputable section

/-- A270428: Exponentially odious numbers: 1 together with positive integers n such that all exponents in prime factorization of n are odious numbers (A000069).

Offset 1, canonical program `A270428.P3446457217873923368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428 (n : ℕ) : ℤ :=
  (A270428.P3446457217873923368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271187.P2014690052428888649

`A007913(A007318(n))`
-/

namespace A271187.P2014690052428888649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007318 n).toNat

end

end A271187.P2014690052428888649

noncomputable section

/-- A271187: Triangle T(n,k) read by rows: T(n,k) is the squarefree part of C(n,k).

Offset 0, canonical program `A271187.P2014690052428888649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187 (n : ℕ) : ℤ :=
  A271187.P2014690052428888649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271550.P5972112565588894110

`filter[A068993(n+1), A296079(#)]`
-/

namespace A271550.P5972112565588894110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A271550.P5972112565588894110

noncomputable section

/-- A271550: Numbers n such that n is a squarefree semiprime (i.e., omega(n) = 2 = Omega(n)) and phi(n) + 1 is a prime.

Offset 1, canonical program `A271550.P5972112565588894110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271550 (n : ℕ) : ℤ :=
  A271550.P5972112565588894110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273409.P13603559143851020891

`∑[A147562(n+1)+1-a(n-1)]` with `a(0)=1`
-/

namespace A273409.P13603559143851020891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A147562 (n + 1) + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273409.P13603559143851020891

noncomputable section

/-- A273409: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 678", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273409.P13603559143851020891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409 (n : ℕ) : ℤ :=
  A273409.P13603559143851020891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275606.P16564742963572456798

`A328818(n)²%3`
-/

namespace A275606.P16564742963572456798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328818 n ^ 2) 3

end

end A275606.P16564742963572456798

noncomputable section

/-- A275606: Spiral constructed on the nodes of the triangular net such that a(n) = signum(A274920(n)).

Offset 0, canonical program `A275606.P16564742963572456798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A275606 (n : ℕ) : ℤ :=
  A275606.P16564742963572456798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A275606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276553.P10579405636336948345

`eq[A146564(n+2), A146564(n+1)]+1`
-/

namespace A276553.P10579405636336948345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276553.P10579405636336948345

noncomputable section

/-- A276553: Numbers k such that k^2 and (k + 1)^2 have the same number of divisors.

Offset 1, canonical program `A276553.P10579405636336948345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A276553 (n : ℕ) : ℤ :=
  (A276553.P10579405636336948345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A276553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276931.P10992499058279843691

`A276932(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276931.P10992499058279843691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276932 n : ℚ) / 2

end

end A276931.P10992499058279843691

noncomputable section

/-- A276931: Row 2 of A276616: a(n) = A276932(n)/2.

Offset 0, canonical program `A276931.P10992499058279843691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276931.P10992499058279843691.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278998.P826195583929111342

`lt[0, A109091(n+1)]`
-/

namespace A278998.P826195583929111342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278998.P826195583929111342

noncomputable section

/-- A278998: Numbers of the form (5h+1)*5^k-1 or (5h+4)*5^k-1 for h,k in N.

Offset 1, canonical program `A278998.P826195583929111342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998 (n : ℕ) : ℤ :=
  (A278998.P826195583929111342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278999.P7909097224008119104

`lt[A109091(n+1), 0]`
-/

namespace A278999.P7909097224008119104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P7909097224008119104

noncomputable section

/-- A278999: Numbers of the form (5h+2)*5^k-1 or (5h+3)*5^k-1 for h,k in N.

Offset 1, canonical program `A278999.P7909097224008119104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999 (n : ℕ) : ℤ :=
  (A278999.P7909097224008119104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280827.P9212601761894822098

`A076649(n+1)-A055642(n+1)`
-/

namespace A280827.P9212601761894822098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - A055642 (n + 1)

end

end A280827.P9212601761894822098

noncomputable section

/-- A280827: a(n) = A076649(n) - A055642(n).

Offset 1, canonical program `A280827.P9212601761894822098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280827 (n : ℕ) : ℤ :=
  A280827.P9212601761894822098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280892.P10778792925638718684

`filter[A376164(n+1), A379971(#)]`
-/

namespace A280892.P10778792925638718684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P10778792925638718684

noncomputable section

/-- A280892: Squareful numbers with both neighbors squarefree.

Offset 1, canonical program `A280892.P10778792925638718684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A280892 (n : ℕ) : ℤ :=
  A280892.P10778792925638718684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A280892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282708.P8316200671036246858

`A000984(n)-A053637(2*(n+1))`
-/

namespace A282708.P8316200671036246858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A053637 (2 * (n + 1))

end

end A282708.P8316200671036246858

noncomputable section

/-- A282708: a(n) = binomial(2*n,n) - ceiling(2^(2*n)/(n+1)).

Offset 0, canonical program `A282708.P8316200671036246858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A282708 (n : ℕ) : ℤ :=
  A282708.P8316200671036246858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A282708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284120.P6392286246842557568

`A258746(A117120(n+1))`
-/

namespace A284120.P6392286246842557568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A117120 (n + 1)).toNat

end

end A284120.P6392286246842557568

noncomputable section

/-- A284120: Permutation of the positive integers: a(n) = A258746(A117120(n)) = A117120(A258746(n)).

Offset 1, canonical program `A284120.P6392286246842557568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284120 (n : ℕ) : ℤ :=
  A284120.P6392286246842557568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284203.P3141137211132390266

`∑{d}[n+1, A164292(#)]`
-/

namespace A284203.P3141137211132390266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A164292 d

end

end A284203.P3141137211132390266

noncomputable section

/-- A284203: Number of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284203.P3141137211132390266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A284203 (n : ℕ) : ℤ :=
  A284203.P3141137211132390266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A284203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284599.P274400123540582278

`∑{d}[n+1, #*A164292(#)]`
-/

namespace A284599.P274400123540582278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A164292 d

end

end A284599.P274400123540582278

noncomputable section

/-- A284599: Sum of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284599.P274400123540582278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599 (n : ℕ) : ℤ :=
  A284599.P274400123540582278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284795.P14279335911133809113

`lt[2, A071928(n+1)]+n+1`
-/

namespace A284795.P14279335911133809113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (n + 1)

end

end A284795.P14279335911133809113

noncomputable section

/-- A284795: Positions of 0's in A284793.

Offset 1, canonical program `A284795.P14279335911133809113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A284795 (n : ℕ) : ℤ :=
  (A284795.P14279335911133809113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A284795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286046.P6614005406053025473

`A286044(n+1)+A286049(n+2)-A286044(n+2)`
-/

namespace A286046.P6614005406053025473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (n + 1) + (A286049 (n + 2) - A286044 (n + 2))

end

end A286046.P6614005406053025473

noncomputable section

/-- A286046: {011->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286046.P6614005406053025473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046 (n : ℕ) : ℤ :=
  A286046.P6614005406053025473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286064.P11784658490324997277

`char[A286066(n+1)-1]`
-/

namespace A286064.P11784658490324997277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286064.P11784658490324997277

noncomputable section

/-- A286064: {0110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286064.P11784658490324997277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064 (n : ℕ) : ℤ :=
  (A286064.P11784658490324997277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286609.P10170324973133728481

`eq[char[A286608(n+1)], A000007(n)]`
-/

namespace A286609.P10170324973133728481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286609.P10170324973133728481

noncomputable section

/-- A286609: Numbers k for which the binary representation of the primes that divide k (A087207) is more than k.

Offset 1, canonical program `A286609.P10170324973133728481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609 (n : ℕ) : ℤ :=
  (A286609.P10170324973133728481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286691.P8678306413782919878

`1-A286801((n+1)%3+n)`
-/

namespace A286691.P8678306413782919878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286801 ((n + 1) % 3 + n)

end

end A286691.P8678306413782919878

noncomputable section

/-- A286691: {0->010, 1->110}-transform of the Pell word, A171588.

Offset 1, canonical program `A286691.P8678306413782919878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691 (n : ℕ) : ℤ :=
  A286691.P8678306413782919878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286802.P10299753471683796401

`A286922(n+1)+A286693(n+1)`
-/

namespace A286802.P10299753471683796401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286922 (n + 1) + A286693 (n + 1)

end

end A286802.P10299753471683796401

noncomputable section

/-- A286802: Positions of 0 in A286801; complement of A286803.

Offset 1, canonical program `A286802.P10299753471683796401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286802 (n : ℕ) : ℤ :=
  A286802.P10299753471683796401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287105.P8825308527181193328

`A287075(n+1)-n`
-/

namespace A287105.P8825308527181193328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287075 (n + 1) - (n : ℤ)

end

end A287105.P8825308527181193328

noncomputable section

/-- A287105: Positions of 0 in A287104.

Offset 1, canonical program `A287105.P8825308527181193328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105 (n : ℕ) : ℤ :=
  A287105.P8825308527181193328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287960.P10000643031088514054

`3*A020756(n+1)+2`
-/

namespace A287960.P10000643031088514054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020756 (n + 1) + 2

end

end A287960.P10000643031088514054

noncomputable section

/-- A287960: Numbers that are the sum of two centered triangular numbers (A005448).

Offset 1, canonical program `A287960.P10000643031088514054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287960 (n : ℕ) : ℤ :=
  A287960.P10000643031088514054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288464.P6763049980737922959

`record[(A140100(n+1)+1)/A305393(n+1)]`
-/

namespace A288464.P6763049980737922959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140100 (n + 1) + 1 : ℚ) / (A305393 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288464.P6763049980737922959

noncomputable section

/-- A288464: Positions of 1 in A288462; complement of A288463.

Offset 1, canonical program `A288464.P6763049980737922959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A288464.P6763049980737922959.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291782.P13915710591385096351

`(n+1)*a(A046073(n+1)*A060594(n+1)-1)` with `a(0)=1`
-/

namespace A291782.P13915710591385096351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A046073 (n + 1) * A060594 (n + 1) - 1).toNat

end

end A291782.P13915710591385096351

noncomputable section

/-- A291782: Let f_k(n) be the result of applying phi (the Euler totient function A000010) k times to n; a(n) = n*Product_{k=1..oo} f_k(n).

Offset 1, canonical program `A291782.P13915710591385096351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291782 (n : ℕ) : ℤ :=
  (A291782.P13915710591385096351.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292762.P7139243062585099352

`filter[A033948(n+1), A354029(#)]`
-/

namespace A292762.P7139243062585099352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P7139243062585099352

noncomputable section

/-- A292762: Numbers of the form p^k or 2*p^k, where p is a prime == 3 mod 4 and k is odd.

Offset 1, canonical program `A292762.P7139243062585099352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4970 terms. -/
def A292762 (n : ℕ) : ℤ :=
  A292762.P7139243062585099352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4970 terms. -/
def A292762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294239.P5796757410913678531

`(n+1)*A294235(n+1)`
-/

namespace A294239.P5796757410913678531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294235 (n + 1)

end

end A294239.P5796757410913678531

noncomputable section

/-- A294239: Sum of the parts in the partitions of n into two parts with larger part nonsquarefree.

Offset 1, canonical program `A294239.P5796757410913678531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294239 (n : ℕ) : ℤ :=
  A294239.P5796757410913678531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294278.P17650262410649944853

`lt[A007875(n+1), A007875(A028310(n))]`
-/

namespace A294278.P17650262410649944853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P17650262410649944853

noncomputable section

/-- A294278: Numbers k such that omega(k) > omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

Offset 1, canonical program `A294278.P17650262410649944853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278 (n : ℕ) : ℤ :=
  (A294278.P17650262410649944853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294442.P13782676266892454172

`A093873(A092754(n+1))`
-/

namespace A294442.P13782676266892454172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A092754 (n + 1)).toNat

end

end A294442.P13782676266892454172

noncomputable section

/-- A294442: Kepler's tree of fractions, read across rows (the fraction i/j is represented as the pair i,j).

Offset 0, canonical program `A294442.P13782676266892454172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442 (n : ℕ) : ℤ :=
  A294442.P13782676266892454172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295284.P15282882058059058098

`A294235(n+1)-Δ[A294234(n)]`
-/

namespace A295284.P15282882058059058098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295284.P15282882058059058098

noncomputable section

/-- A295284: Number of partitions of n into two distinct parts such that the larger part is nonsquarefree.

Offset 1, canonical program `A295284.P15282882058059058098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295284 (n : ℕ) : ℤ :=
  A295284.P15282882058059058098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295658.P5958790794441871219

`A295657(floor(n/∏{p}[n+1, #])+1)`
-/

namespace A295658.P5958790794441871219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ + 1).toNat

end

end A295658.P5958790794441871219

noncomputable section

/-- A295658: Multiplicative with a(p^e) = p^max(0,(floor(e/2)-1)).

Offset 1, canonical program `A295658.P5958790794441871219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295658 (n : ℕ) : ℤ :=
  A295658.P5958790794441871219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300828.P12023427711268825408

`A095683(n+1)*A189022(n+1)`
-/

namespace A300828.P12023427711268825408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (n + 1) * A189022 (n + 1)

end

end A300828.P12023427711268825408

noncomputable section

/-- A300828: Multiplicative with a(p^2) = 1, a(p^3) = -2 and a(p^e) = 0 when e = 1 or e > 3.

Offset 1, canonical program `A300828.P12023427711268825408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300828 (n : ℕ) : ℤ :=
  A300828.P12023427711268825408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301690.P1630092406018096562

`A006368(A315832(n)-A047448(n+1))`
-/

namespace A301690.P1630092406018096562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

end

end A301690.P1630092406018096562

noncomputable section

/-- A301690: Coordination sequence for node of type V1 in "krf" 2-D tiling (or net).

Offset 0, canonical program `A301690.P1630092406018096562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2889 terms. -/
def A301690 (n : ℕ) : ℤ :=
  A301690.P1630092406018096562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2889 terms. -/
def A301690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301691.P10328658122602155112

`∑[A006368(A315832(n)-A047448(n+1))]`
-/

namespace A301691.P10328658122602155112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P10328658122602155112

noncomputable section

/-- A301691: Partial sums of A301690.

Offset 0, canonical program `A301691.P10328658122602155112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A301691 (n : ℕ) : ℤ :=
  A301691.P10328658122602155112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A301691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304586.P17678521593836003710

`A174344(n+1)+n*A274923(n+1)`
-/

namespace A304586.P17678521593836003710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (n : ℤ) * A274923 (n + 1)

end

end A304586.P17678521593836003710

noncomputable section

/-- A304586: A linear mapping a(n) = x + d*n of pairs of integers (x,d), where the pairs are enumerated by the counterclockwise square spiral (an axis-parallel number spiral) starting at 0.

Offset 0, canonical program `A304586.P17678521593836003710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304586 (n : ℕ) : ℤ :=
  A304586.P17678521593836003710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306905.P15120957295957279289

`A306898(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306905.P15120957295957279289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306898 (n + 1) : ℚ) / 2

end

end A306905.P15120957295957279289

noncomputable section

/-- A306905: a(n) = A306898(n)/2.

Offset 1, canonical program `A306905.P15120957295957279289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306905 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306905.P15120957295957279289.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A306905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307508.P1138066095491844169

`A000040(A247514(n+1))`
-/

namespace A307508.P1138066095491844169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247514 (n + 1)).toNat

end

end A307508.P1138066095491844169

noncomputable section

/-- A307508: Primes p for which the continued fraction expansion of sqrt(p) does not have a 1 in the second position.

Offset 1, canonical program `A307508.P1138066095491844169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508 (n : ℕ) : ℤ :=
  A307508.P1138066095491844169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A307508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308819.P18189255110465373061

`a(n-1)*A100994(n)` with `a(0)=1`
-/

namespace A308819.P18189255110465373061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A100994 n

end

end A308819.P18189255110465373061

noncomputable section

/-- A308819: Product of prime powers <= n.

Offset 0, canonical program `A308819.P18189255110465373061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A308819 (n : ℕ) : ℤ :=
  A308819.P18189255110465373061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A308819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309323.P12128213157849117651

`∑{d}[n+1, #*A117108((n+1)/#)]`
-/

namespace A309323.P12128213157849117651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309323.P12128213157849117651

noncomputable section

/-- A309323: Expansion of Sum_{k>=1} phi(k) * x^k/(1 - x^k)^4, where phi = Euler totient function (A000010).

Offset 1, canonical program `A309323.P12128213157849117651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309323 (n : ℕ) : ℤ :=
  A309323.P12128213157849117651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311548.P8775752580352239183

`A314971(n)-A004396(n)`
-/

namespace A311548.P8775752580352239183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314971 n - A004396 n

end

end A311548.P8775752580352239183

noncomputable section

/-- A311548: Coordination sequence Gal.5.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311548.P8775752580352239183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548 (n : ℕ) : ℤ :=
  A311548.P8775752580352239183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312891.P482666226062443179

`(A310367(n)+A008574(n))/2`
-/

namespace A312891.P482666226062443179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310367 n + A008574 n : ℚ) / 2

end

end A312891.P482666226062443179

noncomputable section

/-- A312891: Coordination sequence Gal.6.216.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312891.P482666226062443179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2562 terms. -/
def A312891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A312891.P482666226062443179.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2562 terms. -/
def A312891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313089.P10705222389675751159

`abs(A008592(n)-A315478(n))`
-/

namespace A313089.P10705222389675751159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315478 n|

end

end A313089.P10705222389675751159

noncomputable section

/-- A313089: Coordination sequence Gal.6.221.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313089.P10705222389675751159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A313089 (n : ℕ) : ℤ :=
  A313089.P10705222389675751159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A313089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313153.P1548300830717326996

`abs(A008592(n)-A315446(n))`
-/

namespace A313153.P1548300830717326996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315446 n|

end

end A313153.P1548300830717326996

noncomputable section

/-- A313153: Coordination sequence Gal.5.113.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313153.P1548300830717326996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153 (n : ℕ) : ℤ :=
  A313153.P1548300830717326996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313589.P17445481109569787276

`abs(A008592(n)-A313855(n))`
-/

namespace A313589.P17445481109569787276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313855 n|

end

end A313589.P17445481109569787276

noncomputable section

/-- A313589: Coordination sequence Gal.5.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313589.P17445481109569787276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589 (n : ℕ) : ℤ :=
  A313589.P17445481109569787276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313610.P10900153276771282228

`A314708(n)+Δ[A011858(n)]`
-/

namespace A313610.P10900153276771282228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + (f1 (n + 1) - f1 n)

end

end A313610.P10900153276771282228

noncomputable section

/-- A313610: Coordination sequence Gal.5.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313610.P10900153276771282228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A313610 (n : ℕ) : ℤ :=
  A313610.P10900153276771282228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A313610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313696.P9738400648610204729

`A313543(n)+Δ[A011864(n)]`
-/

namespace A313696.P9738400648610204729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313543 n + (f1 (n + 1) - f1 n)

end

end A313696.P9738400648610204729

noncomputable section

/-- A313696: Coordination sequence Gal.6.327.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313696.P9738400648610204729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696 (n : ℕ) : ℤ :=
  A313696.P9738400648610204729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313887.P5397836189599980398

`abs(A008592(n)-A313543(n))`
-/

namespace A313887.P5397836189599980398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313543 n|

end

end A313887.P5397836189599980398

noncomputable section

/-- A313887: Coordination sequence Gal.6.331.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313887.P5397836189599980398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887 (n : ℕ) : ℤ :=
  A313887.P5397836189599980398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313908.P15756257840792461538

`abs(A008592(n)-A313519(n))`
-/

namespace A313908.P15756257840792461538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313519 n|

end

end A313908.P15756257840792461538

noncomputable section

/-- A313908: Coordination sequence Gal.6.639.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313908.P15756257840792461538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A313908 (n : ℕ) : ℤ :=
  A313908.P15756257840792461538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A313908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314025.P13685615418460974247

`2*n+A004396(A310367(n))`
-/

namespace A314025.P13685615418460974247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310367 n).toNat

end

end A314025.P13685615418460974247

noncomputable section

/-- A314025: Coordination sequence Gal.6.250.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314025.P13685615418460974247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314025 (n : ℕ) : ℤ :=
  A314025.P13685615418460974247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. -/
def A314025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314072.P13997368567095779612

`A314129(n)-A238470(3*n)`
-/

namespace A314072.P13997368567095779612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 n - A238470 (3 * n)

end

end A314072.P13997368567095779612

noncomputable section

/-- A314072: Coordination sequence Gal.5.312.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314072.P13997368567095779612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072 (n : ℕ) : ℤ :=
  A314072.P13997368567095779612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314244.P5686595112287362026

`A004396(A314157(n))+2*n`
-/

namespace A314244.P5686595112287362026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314157 n).toNat + (2 * n : ℤ)

end

end A314244.P5686595112287362026

noncomputable section

/-- A314244: Coordination sequence Gal.6.644.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314244.P5686595112287362026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314244 (n : ℕ) : ℤ :=
  A314244.P5686595112287362026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314668.P7034939924142127577

`A008458(n)+A008576(n)-A312101(n)`
-/

namespace A314668.P7034939924142127577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A312101 n)

end

end A314668.P7034939924142127577

noncomputable section

/-- A314668: Coordination sequence Gal.6.115.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314668.P7034939924142127577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A314668 (n : ℕ) : ℤ :=
  A314668.P7034939924142127577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A314668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314706.P17212367775506694373

`A008458(n)+A008576(n)-A311861(n)`
-/

namespace A314706.P17212367775506694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311861 n)

end

end A314706.P17212367775506694373

noncomputable section

/-- A314706: Coordination sequence Gal.6.130.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314706.P17212367775506694373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706 (n : ℕ) : ℤ :=
  A314706.P17212367775506694373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314736.P3794098761063289759

`A314428(n)+A004396(A006369(n)-A004396(n))`
-/

namespace A314736.P3794098761063289759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314428 n + A004396 (A006369 n - A004396 n).toNat

end

end A314736.P3794098761063289759

noncomputable section

/-- A314736: Coordination sequence Gal.5.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314736.P3794098761063289759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736 (n : ℕ) : ℤ :=
  A314736.P3794098761063289759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314832.P15623759407353891444

`abs(A008592(n)-A314157(n))`
-/

namespace A314832.P15623759407353891444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314157 n|

end

end A314832.P15623759407353891444

noncomputable section

/-- A314832: Coordination sequence Gal.6.245.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314832.P15623759407353891444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314832 (n : ℕ) : ℤ :=
  A314832.P15623759407353891444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314890.P4689153716661690256

`abs(A008592(n)-A314127(n))`
-/

namespace A314890.P4689153716661690256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314127 n|

end

end A314890.P4689153716661690256

noncomputable section

/-- A314890: Coordination sequence Gal.6.152.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314890.P4689153716661690256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A314890 (n : ℕ) : ℤ :=
  A314890.P4689153716661690256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A314890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314974.P14920294554282777166

`A004396(n)+A314742(n)-A004525(A004396(n))`
-/

namespace A314974.P14920294554282777166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314742 n - A004525 (A004396 n).toNat)

end

end A314974.P14920294554282777166

noncomputable section

/-- A314974: Coordination sequence Gal.6.343.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314974.P14920294554282777166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974 (n : ℕ) : ℤ :=
  A314974.P14920294554282777166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315188.P8680427825676772158

`2*A315478(n)-A008458(n)`
-/

namespace A315188.P8680427825676772158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315478 n - A008458 n

end

end A315188.P8680427825676772158

noncomputable section

/-- A315188: Coordination sequence Gal.6.265.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315188.P8680427825676772158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315188 (n : ℕ) : ℤ :=
  A315188.P8680427825676772158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315264.P7587987662611308662

`abs(10*n-A310455(n))`
-/

namespace A315264.P7587987662611308662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310455 n|

end

end A315264.P7587987662611308662

noncomputable section

/-- A315264: Coordination sequence Gal.6.328.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315264.P7587987662611308662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264 (n : ℕ) : ℤ :=
  A315264.P7587987662611308662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315345.P6951023815696693816

`abs(A008592(n)-A310367(n))`
-/

namespace A315345.P6951023815696693816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310367 n|

end

end A315345.P6951023815696693816

noncomputable section

/-- A315345: Coordination sequence Gal.6.641.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315345.P6951023815696693816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315345 (n : ℕ) : ℤ :=
  A315345.P6951023815696693816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A315345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317295.P6293647833958562741

`filter[A084345(n+2), A347523(#)]`
-/

namespace A317295.P6293647833958562741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A317295.P6293647833958562741

noncomputable section

/-- A317295: Numbers with a composite number of 1's in their binary expansion.

Offset 1, canonical program `A317295.P6293647833958562741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9985 terms. -/
def A317295 (n : ℕ) : ℤ :=
  A317295.P6293647833958562741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9985 terms. -/
def A317295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317407.P2584308412122888384

`record[A258746(n+1)]`
-/

namespace A317407.P2584308412122888384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317407.P2584308412122888384

noncomputable section

/-- A317407: The "OOPS" numbers -- numbers with ones in all odd-numbered positions of the binary representation of n.

Offset 1, canonical program `A317407.P2584308412122888384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A317407 (n : ℕ) : ℤ :=
  A317407.P2584308412122888384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A317407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318446.P15456378117456021358

`A318448(n+1)+A007429(n+1)`
-/

namespace A318446.P15456378117456021358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (n + 1) + A007429 (n + 1)

end

end A318446.P15456378117456021358

noncomputable section

/-- A318446: Inverse Möbius transform of A005187: a(n) = Sum_{d|n} A005187(d).

Offset 1, canonical program `A318446.P15456378117456021358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A318448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318446 (n : ℕ) : ℤ :=
  A318446.P15456378117456021358.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A318448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318446.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319450.P261748575354384773

`A033948(eq[1, A033948(n+2)-A033948(n+1)]+1)`
-/

namespace A319450.P261748575354384773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 2) - A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A319450.P261748575354384773

noncomputable section

/-- A319450: Numbers k such that k and k + 1 both have primitive roots.

Offset 1, canonical program `A319450.P261748575354384773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A319450 (n : ℕ) : ℤ :=
  A319450.P261748575354384773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A319450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319687.P11150699516326577001

`A318509(n+1)-A002487(n+1)`
-/

namespace A319687.P11150699516326577001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1) - A002487 (n + 1)

end

end A319687.P11150699516326577001

noncomputable section

/-- A319687: a(n) = A318509(n) - A002487(n).

Offset 1, canonical program `A319687.P11150699516326577001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319687 (n : ℕ) : ℤ :=
  A319687.P11150699516326577001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319966.P11171404312692001569

`A319968(n+1)+1`
-/

namespace A319966.P11171404312692001569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319968 (n + 1) + 1

end

end A319966.P11171404312692001569

noncomputable section

/-- A319966: a(n) = A003144(A003146(n)).

Offset 1, canonical program `A319966.P11171404312692001569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319966 (n : ℕ) : ℤ :=
  A319966.P11171404312692001569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319969.P6481921465728860671

`A319971(n+1)+2`
-/

namespace A319969.P6481921465728860671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319971 (n + 1) + 2

end

end A319969.P6481921465728860671

noncomputable section

/-- A319969: a(n) = A003145(A003146(n)).

Offset 1, canonical program `A319969.P6481921465728860671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319969 (n : ℕ) : ℤ :=
  A319969.P6481921465728860671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323160.P16832328256614807770

`gcd(n+1, A323159(n+1))`
-/

namespace A323160.P16832328256614807770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A323159 (n + 1))

end

end A323160.P16832328256614807770

noncomputable section

/-- A323160: a(n) = gcd(n, A323159(n)) = gcd(n, A034448(n), A048250(n)).

Offset 1, canonical program `A323160.P16832328256614807770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323160 (n : ℕ) : ℤ :=
  (A323160.P16832328256614807770.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326398.P10411674836388057102

`ceil(2/A111742(n+1))`
-/

namespace A326398.P10411674836388057102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A111742 (n + 1) : ℚ)⌉

end

end A326398.P10411674836388057102

noncomputable section

/-- A326398: a(n) is the smallest k > 0 such that the concatenation prime(n)k is composite.

Offset 1, canonical program `A326398.P10411674836388057102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398 (n : ℕ) : ℤ :=
  A326398.P10411674836388057102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327933.P17952081936834919609

`∩[A235991(n+1), A327863(n+1)]`
-/

namespace A327933.P17952081936834919609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327933.P17952081936834919609

noncomputable section

/-- A327933: Numbers such that the smallest prime factor of their arithmetic derivative is 3.

Offset 1, canonical program `A327933.P17952081936834919609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A327933 (n : ℕ) : ℤ :=
  (A327933.P17952081936834919609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. -/
def A327933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327976.P17516579856506280353

`xor(2*A327971(n), A327973(n+1))`
-/

namespace A327976.P17516579856506280353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A327971 n) (A327973 (n + 1))

end

end A327976.P17516579856506280353

noncomputable section

/-- A327976: Bitwise XOR of trajectories (centrally aligned) of rule 30, and its mirror image, rule 86, when both are started from a lone 1-bit, with the latter delayed by one step: a(n) = A110240(n) XOR 2*A265281(n-1).

Offset 1, canonical program `A327976.P17516579856506280353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A327976 (n : ℕ) : ℤ :=
  A327976.P17516579856506280353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A327976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328258.P16805831198156578016

`2*A192066(n+1)-A034448(n+1)`
-/

namespace A328258.P16805831198156578016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192066 (n + 1) - A034448 (n + 1)

end

end A328258.P16805831198156578016

noncomputable section

/-- A328258: a(n) = Sum_{d|n, gcd(d,n/d) = 1} (-1)^(d + 1) * d.

Offset 1, canonical program `A328258.P16805831198156578016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328258 (n : ℕ) : ℤ :=
  A328258.P16805831198156578016.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328400.P4773892620891674658

`A362227(A297404(n+1))`
-/

namespace A328400.P4773892620891674658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A297404 (n + 1)).toNat

end

end A328400.P4773892620891674658

noncomputable section

/-- A328400: Smallest number with the same set of distinct prime exponents as n.

Offset 1, canonical program `A328400.P4773892620891674658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328400 (n : ℕ) : ℤ :=
  A328400.P4773892620891674658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329835.P4757636539096207399

`comp[A329836(n+1)-1]+1`
-/

namespace A329835.P4757636539096207399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329836 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329835.P4757636539096207399

noncomputable section

/-- A329835: Beatty sequence for (9+sqrt(101))/10.

Offset 1, canonical program `A329835.P4757636539096207399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835 (n : ℕ) : ℤ :=
  (A329835.P4757636539096207399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330724.P16993520120125291857

`A001414(A038509(n+1))`
-/

namespace A330724.P16993520120125291857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A038509 (n + 1)).toNat

end

end A330724.P16993520120125291857

noncomputable section

/-- A330724: Sum of prime factors (with multiplicity) of the n-th composite number coprime to 6.

Offset 1, canonical program `A330724.P16993520120125291857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330724 (n : ℕ) : ℤ :=
  A330724.P16993520120125291857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333214.P10257277763201580754

`filter[A319702(2*n+1), A131695(#)]`
-/

namespace A333214.P10257277763201580754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j).toNat = 1) n)

end

end A333214.P10257277763201580754

noncomputable section

/-- A333214: Positions of adjacent unequal terms in the sequence of differences between primes.

Offset 1, canonical program `A333214.P10257277763201580754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9551 terms. -/
def A333214 (n : ℕ) : ℤ :=
  A333214.P10257277763201580754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9551 terms. -/
def A333214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333471.P5176765363356701147

`A007444(n+1)-A143444(n+1)`
-/

namespace A333471.P5176765363356701147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1) - A143444 (n + 1)

end

end A333471.P5176765363356701147

noncomputable section

/-- A333471: a(n) = 2 * mu(n) + Sum_{d|n, d > 1} mu(n/d) * (prime(d) - prime(d-1)).

Offset 1, canonical program `A333471.P5176765363356701147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333471 (n : ℕ) : ℤ :=
  A333471.P5176765363356701147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333839.P8771621751461839963

`∑[A033597(n+4)-(n+4)]`
-/

namespace A333839.P8771621751461839963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 (n + 4) - (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333839.P8771621751461839963

noncomputable section

/-- A333839: a(n) = Sum_{k = 4..n} ((prevprime(k) + nextprime(k))/2 - k).

Offset 4, canonical program `A333839.P8771621751461839963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333839 (n : ℕ) : ℤ :=
  A333839.P8771621751461839963.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336224.P7478826169894314693

`record[A056192(A336222(n+1))]`
-/

namespace A336224.P7478826169894314693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A336222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336224.P7478826169894314693

noncomputable section

/-- A336224: Numbers k such that the largest square dividing k is a unitary divisor of k and its square root has an even number of prime divisors (counted with multiplicity).

Offset 1, canonical program `A336224.P7478826169894314693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6663 terms. -/
def A336224 (n : ℕ) : ℤ :=
  A336224.P7478826169894314693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6663 terms. -/
def A336224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338940.P142814705628423007

`A338939(n+1)*A115878(n+1)`
-/

namespace A338940.P142814705628423007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338939 (n + 1) * A115878 (n + 1)

end

end A338940.P142814705628423007

noncomputable section

/-- A338940: a(n) is the number of solutions to the Diophantine equation p * x * (x + n) = y^2 with p = a*b a perfect square and a+b = n.

Offset 1, canonical program `A338940.P142814705628423007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115878, A338939, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338940 (n : ℕ) : ℤ :=
  A338940.P142814705628423007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115878, A338939, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341343.P11843753257085308100

`∑{d}[n+1, A092520(#)*A307425((n+1)/#)]`
-/

namespace A341343.P11843753257085308100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341343.P11843753257085308100

noncomputable section

/-- A341343: Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = (zeta(s))^3 / (zeta(3*s))^2.

Offset 1, canonical program `A341343.P11843753257085308100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341343 (n : ℕ) : ℤ :=
  A341343.P11843753257085308100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341854.P9553177481002635697

`14*A242136(n+1)`
-/

namespace A341854.P9553177481002635697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A242136 (n + 1)

end

end A341854.P9553177481002635697

noncomputable section

/-- A341854: Number of triangulations of a fixed hexagon with n internal nodes.

Offset 0, canonical program `A341854.P9553177481002635697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A341854 (n : ℕ) : ℤ :=
  A341854.P9553177481002635697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A341854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342028.P12226133476098750910

`A130091(eq[1, Δ[A130091(n+1)]]+1)`
-/

namespace A342028.P12226133476098750910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342028.P12226133476098750910

noncomputable section

/-- A342028: Numbers k such that k and k+1 both have mutually distinct exponents in their prime factorization (A130091).

Offset 1, canonical program `A342028.P12226133476098750910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A342028 (n : ℕ) : ℤ :=
  A342028.P12226133476098750910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A342028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343546.P8528518254788271096

`∑{d}[n+1, A343519(#)]`
-/

namespace A343546.P8528518254788271096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343519 d

end

end A343546.P8528518254788271096

noncomputable section

/-- A343546: a(n) = n * Sum_{d|n} binomial(d+4,5)/d.

Offset 1, canonical program `A343546.P8528518254788271096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343546 (n : ℕ) : ℤ :=
  A343546.P8528518254788271096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345068.P8859983234347188221

`∑{d}[n+1, A100994(#)]-1`
-/

namespace A345068.P8859983234347188221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100994 d - 1

end

end A345068.P8859983234347188221

noncomputable section

/-- A345068: a(n) = Sum_{d|n, d>1} d^floor(1/omega(d)).

Offset 1, canonical program `A345068.P8859983234347188221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068 (n : ℕ) : ℤ :=
  A345068.P8859983234347188221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345440.P15192860630432402234

`A336336(n+1)+A268038(n+1)²`
-/

namespace A345440.P15192860630432402234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A268038 (n + 1) ^ 2

end

end A345440.P15192860630432402234

noncomputable section

/-- A345440: Represent the ring R = {x+y*sqrt(-2): x, y rational integers} by the cells centered at the points (x,y) of a square grid, as in A345437; number the cells of the grid along a counterclockwise square spiral, with the cells at (0,0) and (1,0) numbered 0, 1; then a(n) is the norm x^2+2*y^2 of the element of R occupying the n-th cell.

Offset 0, canonical program `A345440.P15192860630432402234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345440 (n : ℕ) : ℤ :=
  A345440.P15192860630432402234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346041.P5665074598683741375

`∩[A085156(n+1), A388427(n+1)]`
-/

namespace A346041.P5665074598683741375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346041.P5665074598683741375

noncomputable section

/-- A346041: Numbers with exactly 1 semiprime divisor.

Offset 1, canonical program `A346041.P5665074598683741375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5129 terms. -/
def A346041 (n : ℕ) : ℤ :=
  (A346041.P5665074598683741375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5129 terms. -/
def A346041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152958.P16411636956705150641

`A069290(n+1)*A390752(n+1)`
-/

namespace A152958.P16411636956705150641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (n + 1) * A390752 (n + 1)

end

end A152958.P16411636956705150641

noncomputable section

/-- A152958: Alladi's third-order function phi_3(n).

Offset 1, canonical program `A152958.P16411636956705150641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152958 (n : ℕ) : ℤ :=
  A152958.P16411636956705150641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156242.P9698129666356527585

`A156243(n+1)+A100429(n+1)`
-/

namespace A156242.P9698129666356527585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + A100429 (n + 1)

end

end A156242.P9698129666356527585

noncomputable section

/-- A156242: Bisection of A054353.

Offset 1, canonical program `A156242.P9698129666356527585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156242 (n : ℕ) : ℤ :=
  A156242.P9698129666356527585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157235.P8865157934849236561

`A003050(n+1)-(A000086(n+1)-A154272(n+1))/2-A060594(n+1)`
-/

namespace A157235.P8865157934849236561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003050 (n + 1) : ℚ) - (A000086 (n + 1) - A154272 (n + 1) : ℚ) / 2 - (A060594 (n + 1) : ℚ)

end

end A157235.P8865157934849236561

noncomputable section

/-- A157235: Number of primitive inequivalent oblique sublattices of hexagonal (triangular) lattice of index n (equivalence and symmetry of sublattices are determined using only parent lattice symmetries).

Offset 1, canonical program `A157235.P8865157934849236561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A003050, A060594, A154272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157235.P8865157934849236561.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A003050, A060594, A154272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159081.P7329163755382383767

`1+A061395(n+1)`
-/

namespace A159081.P7329163755382383767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A061395 (n + 1)

end

end A159081.P7329163755382383767

noncomputable section

/-- A159081: Let d be the largest element of A008578 which divides n, then a(n) is the position of d in A008578.

Offset 1, canonical program `A159081.P7329163755382383767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159081 (n : ℕ) : ℤ :=
  A159081.P7329163755382383767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161344.P6462224275357060055

`2*A046022(n+2)`
-/

namespace A161344.P6462224275357060055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046022 (n + 2)

end

end A161344.P6462224275357060055

noncomputable section

/-- A161344: Numbers k with A033676(k)=2, where A033676 is the largest divisor <= sqrt(k).

Offset 1, canonical program `A161344.P6462224275357060055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161344 (n : ℕ) : ℤ :=
  A161344.P6462224275357060055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164314.P13039893767564670829

`A000040(A061395((n+2)²-2))`
-/

namespace A164314.P13039893767564670829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 ((n + 2) ^ 2 - 2)).toNat

end

end A164314.P13039893767564670829

noncomputable section

/-- A164314: Largest prime factor of n^2 - 2.

Offset 2, canonical program `A164314.P13039893767564670829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A164314 (n : ℕ) : ℤ :=
  A164314.P13039893767564670829.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A164314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164980.P4043780184913040080

`A008624(Δ[A061395(A164901(n+1))])`
-/

namespace A164980.P4043780184913040080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A164901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f1 (n + 1) - f1 n).toNat

end

end A164980.P4043780184913040080

noncomputable section

/-- A164980: Number of primes between consecutive terms of A164901.

Offset 1, canonical program `A164980.P4043780184913040080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3499 terms. -/
def A164980 (n : ℕ) : ℤ :=
  A164980.P4043780184913040080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3499 terms. -/
def A164980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172072.P14384555314162830453

`record[A061395(A151800(3*n)+6)]`
-/

namespace A172072.P14384555314162830453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A151800 (3 * n) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172072.P14384555314162830453

noncomputable section

/-- A172072: Numbers k such that either prime(k) - 5/2 +- 7/2 is prime.

Offset 1, canonical program `A172072.P14384555314162830453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A172072 (n : ℕ) : ℤ :=
  A172072.P14384555314162830453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A172072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173229.P8938795864355033648

`A046953(n+1)-A046954(n+2)`
-/

namespace A173229.P8938795864355033648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) - A046954 (n + 2)

end

end A173229.P8938795864355033648

noncomputable section

/-- A173229: a(n) is the n-th number m such that 6m-1 is composite minus the n-th number k such that 6k+1 is composite.

Offset 1, canonical program `A173229.P8938795864355033648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173229 (n : ℕ) : ℤ :=
  A173229.P8938795864355033648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173231.P14587032377011786533

`A046953(n+1)+A046954(n+2)`
-/

namespace A173231.P14587032377011786533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) + A046954 (n + 2)

end

end A173231.P14587032377011786533

noncomputable section

/-- A173231: a(n) is the n-th number m such that 6*m-1 is composite plus the n-th number k such that 6*k+1 is composite.

Offset 1, canonical program `A173231.P14587032377011786533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173231 (n : ℕ) : ℤ :=
  A173231.P14587032377011786533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174009.P5463232597024446893

`record[A061395(xor(1, A174008(n+1))+1)]`
-/

namespace A174009.P5463232597024446893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.xor 1 (A174008 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P5463232597024446893

noncomputable section

/-- A174009: Indices of the primes appearing in A174008.

Offset 1, canonical program `A174009.P5463232597024446893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A174009 (n : ℕ) : ℤ :=
  A174009.P5463232597024446893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A174009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175154.P10023110274526491753

`record[A061395(n²+11+n)]`
-/

namespace A175154.P10023110274526491753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n ^ 2 + 11 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175154.P10023110274526491753

noncomputable section

/-- A175154: a(n) = prime index of A048059(n).

Offset 1, canonical program `A175154.P10023110274526491753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A175154 (n : ℕ) : ℤ :=
  A175154.P10023110274526491753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A175154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175787.P10024478366857533250

`A046022(n+2)`
-/

namespace A175787.P10024478366857533250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

end

end A175787.P10024478366857533250

noncomputable section

/-- A175787: Primes together with 4.

Offset 1, canonical program `A175787.P10024478366857533250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787 (n : ℕ) : ℤ :=
  A175787.P10024478366857533250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177149.P5149190234469406226

`A061395(p?[A052034(n+1)])`
-/

namespace A177149.P5149190234469406226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P5149190234469406226

noncomputable section

/-- A177149: Indices n such that the sums of the squares of the digits of prime(n) are prime.

Offset 1, canonical program `A177149.P5149190234469406226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A177149 (n : ℕ) : ℤ :=
  A177149.P5149190234469406226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A177149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179209.P12612083223401161415

`ceil(A081765(n+1)/2)`
-/

namespace A179209.P12612083223401161415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081765 (n + 1) : ℚ) / 2⌉

end

end A179209.P12612083223401161415

noncomputable section

/-- A179209: Numbers k such that 2^(2*k-1) mod (2*k+1) = 2.

Offset 1, canonical program `A179209.P12612083223401161415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179209 (n : ℕ) : ℤ :=
  A179209.P12612083223401161415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179211.P13771363648580745030

`A262868(2*(n+1))+A091069(n+1)²`
-/

namespace A179211.P13771363648580745030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) + A091069 (n + 1) ^ 2

end

end A179211.P13771363648580745030

noncomputable section

/-- A179211: Number of squarefree numbers between n and 2*n (inclusive).

Offset 1, canonical program `A179211.P13771363648580745030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179211 (n : ℕ) : ℤ :=
  A179211.P13771363648580745030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A179211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180198.P17584943030396836814

`A180200(A180200(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180198.P17584943030396836814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A180200 n).toNat

end

end A180198.P17584943030396836814

noncomputable section

/-- A180198: a(n) = A180200(A180200(n)).

Offset 0, canonical program `A180198.P17584943030396836814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180198 (n : ℕ) : ℤ :=
  A180198.P17584943030396836814.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184776.P6747012226356231733

`A061395(A184774(n+1)+A000007(n+4))`
-/

namespace A184776.P6747012226356231733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A184774 (n + 1) + A000007 (n + 4)).toNat

end

end A184776.P6747012226356231733

noncomputable section

/-- A184776: Numbers m such that prime(m) is of the form floor(k*sqrt(2)); complement of A184779.

Offset 1, canonical program `A184776.P6747012226356231733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6740 terms. -/
def A184776 (n : ℕ) : ℤ :=
  A184776.P6747012226356231733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6740 terms. -/
def A184776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184795.P7757484182494400038

`A061395(p?[floor(n*ϕ²)])`
-/

namespace A184795.P7757484182494400038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P7757484182494400038

noncomputable section

/-- A184795: Numbers m such that prime(m) is of the form floor(k*s), where s=(3+sqrt(5))/2; complement of A184793.

Offset 1, canonical program `A184795.P7757484182494400038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3619 terms. -/
def A184795 (n : ℕ) : ℤ :=
  A184795.P7757484182494400038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3619 terms. -/
def A184795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184804.P5256680205815034056

`A061395(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P5256680205815034056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P5256680205815034056

noncomputable section

/-- A184804: Numbers m such that prime(m) is of the form floor(k*sqrt(5)); complement of A184807.

Offset 1, canonical program `A184804.P5256680205815034056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4260 terms. -/
def A184804 (n : ℕ) : ℤ :=
  A184804.P5256680205815034056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4260 terms. -/
def A184804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184811.P17820329255503839465

`A061395(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P17820329255503839465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P17820329255503839465

noncomputable section

/-- A184811: Numbers m such that prime(m) has the form floor(r*k), where r=sqrt(3/2); complement of A184810.

Offset 1, canonical program `A184811.P17820329255503839465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A184811 (n : ℕ) : ℤ :=
  A184811.P17820329255503839465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A184811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184861.P8608652935001601078

`A061395(p?[round(ϕ*n)])`
-/

namespace A184861.P8608652935001601078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P8608652935001601078

noncomputable section

/-- A184861: Numbers m such that prime(m) is of the form floor(nr+h), where r=(1+sqrt(5))/2 and h=1/2; complement of A184864.

Offset 1, canonical program `A184861.P8608652935001601078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5897 terms. -/
def A184861 (n : ℕ) : ℤ :=
  A184861.P8608652935001601078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5897 terms. -/
def A184861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184874.P12081557824146837878

`A061395(p?[A184871(n+1)])`
-/

namespace A184874.P12081557824146837878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P12081557824146837878

noncomputable section

/-- A184874: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=log(2), s=log(3), t=log(5).

Offset 1, canonical program `A184874.P12081557824146837878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A184874 (n : ℕ) : ℤ :=
  A184874.P12081557824146837878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A184874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188020.P10686154921417870516

`A003849(n)*A188470(A123070(n+1))`
-/

namespace A188020.P10686154921417870516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n * A188470 (A123070 (n + 1)).toNat

end

end A188020.P10686154921417870516

noncomputable section

/-- A188020: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=7, [ ]=floor.

Offset 1, canonical program `A188020.P10686154921417870516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188020 (n : ℕ) : ℤ :=
  A188020.P10686154921417870516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188027.P17928141488210304603

`char[A188029(n+1)-1]`
-/

namespace A188027.P17928141488210304603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188027.P17928141488210304603

noncomputable section

/-- A188027: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=9, [ ]=floor.

Offset 1, canonical program `A188027.P17928141488210304603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188027 (n : ℕ) : ℤ :=
  (A188027.P17928141488210304603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190117.P179062767668595055

`∑[A068720(n+1)/2]`
-/

namespace A190117.P179062767668595055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068720 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P179062767668595055

noncomputable section

/-- A190117: a(n) = Sum_{k=1..n} k*k', where n' is the arithmetic derivative of n.

Offset 1, canonical program `A190117.P179062767668595055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190117 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190117.P179062767668595055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199716.P7143510606697811794

`∩[A046953(n+1), A272902(n+1)]`
-/

namespace A199716.P7143510606697811794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199716.P7143510606697811794

noncomputable section

/-- A199716: Numbers k such that 6k-5 and 6k-1 are both composite.

Offset 1, canonical program `A199716.P7143510606697811794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A199716 (n : ℕ) : ℤ :=
  (A199716.P7143510606697811794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A199716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203623.P13943682090085640619

`∑[A061395(n+1)]`
-/

namespace A203623.P13943682090085640619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P13943682090085640619

noncomputable section

/-- A203623: Partial sums of A061395.

Offset 1, canonical program `A203623.P13943682090085640619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203623 (n : ℕ) : ℤ :=
  A203623.P13943682090085640619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212127.P1787608542594397849

`eq[0, A211991(n+1)]+1`
-/

namespace A212127.P1787608542594397849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212127.P1787608542594397849

noncomputable section

/-- A212127: Numbers n whose arithmetic derivative equals the sum of its proper divisors.

Offset 1, canonical program `A212127.P1787608542594397849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212127 (n : ℕ) : ℤ :=
  (A212127.P1787608542594397849.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A212127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214526.P1775941300151216315

`abs(A174344(n+1))+abs(A274923(n+1))`
-/

namespace A214526.P1775941300151216315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174344 (n + 1)| + |A274923 (n + 1)|

end

end A214526.P1775941300151216315

noncomputable section

/-- A214526: Manhattan distances between n and 1 in a square spiral with positive integers and 1 at the center.

Offset 1, canonical program `A214526.P1775941300151216315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174344, A274923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A214526 (n : ℕ) : ℤ :=
  A214526.P1775941300151216315.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174344, A274923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A214526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214974.P2106782757956089730

`eq[A007895(n+1), A116543(n+1)]+1`
-/

namespace A214974.P2106782757956089730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214974.P2106782757956089730

noncomputable section

/-- A214974: Numbers k for which A116543(k) = A007895(k); i.e., the Lucas and Zeckendorf representations of k have the same length.

Offset 1, canonical program `A214974.P2106782757956089730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A214974 (n : ℕ) : ℤ :=
  (A214974.P2106782757956089730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A214974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214975.P9208562958097402134

`lt[A116543(n), A007895(n)]`
-/

namespace A214975.P9208562958097402134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214975.P9208562958097402134

noncomputable section

/-- A214975: Numbers k for which A116543(k) < A007895(k); i.e., the Lucas representation of k is shorter than the Zeckendorf representation.

Offset 1, canonical program `A214975.P9208562958097402134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A214975 (n : ℕ) : ℤ :=
  (A214975.P9208562958097402134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A214975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214976.P15271784311769597705

`lt[A007895(n), A116543(n)]`
-/

namespace A214976.P15271784311769597705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214976.P15271784311769597705

noncomputable section

/-- A214976: Numbers k for which A116543(k) > A007895(k); i.e., the Lucas representation of k is longer than the Zeckendorf representation.

Offset 1, canonical program `A214976.P15271784311769597705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A214976 (n : ℕ) : ℤ :=
  (A214976.P15271784311769597705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A214976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214977.P6749457083996536388

`∑[A116543(n+1)]`
-/

namespace A214977.P6749457083996536388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214977.P6749457083996536388

noncomputable section

/-- A214977: Number of terms in Lucas representations of 1,2,...,n.

Offset 1, canonical program `A214977.P6749457083996536388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214977 (n : ℕ) : ℤ :=
  A214977.P6749457083996536388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216780.P3237457974216524300

`eq[1, A361024(n+1)]+1`
-/

namespace A216780.P3237457974216524300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216780.P3237457974216524300

noncomputable section

/-- A216780: Numbers n such that numerator(sigma(n)/n) and denominator(sigma(n)/n) are both odd.

Offset 1, canonical program `A216780.P3237457974216524300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780 (n : ℕ) : ℤ :=
  (A216780.P3237457974216524300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3944 terms. -/
def A216780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235224.P9540919302901513135

`∑[char[A300951(n)]]`
-/

namespace A235224.P9540919302901513135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P9540919302901513135

noncomputable section

/-- A235224: a(0) = 0, and for n > 0, a(n) = largest k such that A002110(k-1) <= n, where A002110(k) gives the k-th primorial number.

Offset 0, canonical program `A235224.P9540919302901513135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235224 (n : ℕ) : ℤ :=
  (A235224.P9540919302901513135.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236407.P10884246669097330149

`A002003(n)+n`
-/

namespace A236407.P10884246669097330149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n + (n : ℤ)

end

end A236407.P10884246669097330149

noncomputable section

/-- A236407: a(n) = 2*Sum_{k=0..n-1} C(n-1,k)*C(n+k,k) + n.

Offset 0, canonical program `A236407.P10884246669097330149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236407 (n : ℕ) : ℤ :=
  A236407.P10884246669097330149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240668.P2555984127848424708

`val(A336510(2*(n+1))+1, 2)`
-/

namespace A240668.P2555984127848424708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336510 (2 * (n + 1)) + 1).toNat 2

end

end A240668.P2555984127848424708

noncomputable section

/-- A240668: Number of the first odd exponents in the prime power factorization of (2*n)!.

Offset 1, canonical program `A240668.P2555984127848424708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668 (n : ℕ) : ℤ :=
  (A240668.P2555984127848424708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241920.P14941516816984529543

`∑[char[∑[A061395(n+1)]+1]]+1`
-/

namespace A241920.P14941516816984529543
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A241920.P14941516816984529543

noncomputable section

/-- A241920: After a(1)=1, each n appears A061395(n) times, where A061395 gives the index of the largest prime factor of n.

Offset 1, canonical program `A241920.P14941516816984529543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241920 (n : ℕ) : ℤ :=
  (A241920.P14941516816984529543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243289.P13197920464399101861

`1-A061395(A005117(n+1))+n`
-/

namespace A243289.P13197920464399101861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061395 (A005117 (n + 1)).toNat + (n : ℤ)

end

end A243289.P13197920464399101861

noncomputable section

/-- A243289: n minus the index of the greatest prime dividing n-th squarefree number: a(n) = n - A243290(n).

Offset 1, canonical program `A243289.P13197920464399101861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243289 (n : ℕ) : ℤ :=
  A243289.P13197920464399101861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243291.P17563265347597482147

`1-A061395(n+1)+n`
-/

namespace A243291.P17563265347597482147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061395 (n + 1) + (n : ℤ)

end

end A243291.P17563265347597482147

noncomputable section

/-- A243291: Difference between n and the index of its largest prime factor: a(n) = n - A061395(n).

Offset 1, canonical program `A243291.P17563265347597482147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243291 (n : ℕ) : ℤ :=
  A243291.P17563265347597482147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244988.P9750402699729934966

`∑[(A061395(n+1)+1)%2]`
-/

namespace A244988.P9750402699729934966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P9750402699729934966

noncomputable section

/-- A244988: a(n) = n - A244989(n).

Offset 1, canonical program `A244988.P9750402699729934966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244988 (n : ℕ) : ℤ :=
  A244988.P9750402699729934966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244989.P14560400992180714719

`∑[A061395(n+1)%2]`
-/

namespace A244989.P14560400992180714719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P14560400992180714719

noncomputable section

/-- A244989: Partial sums of A244992: a(1) = 0, and for n >= 1, a(n) = A244992(n) + a(n-1); Inverse function for A244991.

Offset 1, canonical program `A244989.P14560400992180714719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244989 (n : ℕ) : ℤ :=
  A244989.P14560400992180714719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244990.P13046816219310750522

`eq[2, gcd(2, A061395(n+1))]+1`
-/

namespace A244990.P13046816219310750522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A061395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244990.P13046816219310750522

noncomputable section

/-- A244990: After 1, numbers whose greatest prime factor is a prime with an even index; n such that A061395(n) is even.

Offset 1, canonical program `A244990.P13046816219310750522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244990 (n : ℕ) : ℤ :=
  (A244990.P13046816219310750522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244991.P9429980419197300237

`eq[1, A061395(n+1)%2]+1`
-/

namespace A244991.P9429980419197300237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244991.P9429980419197300237

noncomputable section

/-- A244991: Numbers whose greatest prime factor is a prime with an odd index; n such that A006530(n) is in A031368.

Offset 1, canonical program `A244991.P9429980419197300237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244991 (n : ℕ) : ℤ :=
  (A244991.P9429980419197300237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244992.P11847278491513242211

`A000035(A061395(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244992.P11847278491513242211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061395 (n + 1)).toNat

end

end A244992.P11847278491513242211

noncomputable section

/-- A244992: Characteristic function for A244991: a(n) = A000035(A061395(n)).

Offset 1, canonical program `A244992.P11847278491513242211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244992 (n : ℕ) : ℤ :=
  A244992.P11847278491513242211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252464.P11274602121942962009

`A061395(n+1)+A252736(n+1)`
-/

namespace A252464.P11274602121942962009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + A252736 (n + 1)

end

end A252464.P11274602121942962009

noncomputable section

/-- A252464: a(1) = 0, a(2n) = 1 + a(n), a(2n+1) = 1 + a(A064989(2n+1)); also binary width of terms of A156552 and A243071.

Offset 1, canonical program `A252464.P11274602121942962009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A252736, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252464 (n : ℕ) : ℤ :=
  A252464.P11274602121942962009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A252736, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257541.P8288380593275451200

`A061395(n+2)-∑{e}[n+2, #]`
-/

namespace A257541.P8288380593275451200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A257541.P8288380593275451200

noncomputable section

/-- A257541: The rank of the partition with Heinz number n.

Offset 2, canonical program `A257541.P8288380593275451200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A257541 (n : ℕ) : ℤ :=
  A257541.P8288380593275451200.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A257541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260943.P13799869845502598163

`A246838(2*n)`
-/

namespace A260943.P13799869845502598163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246838 (2 * n)

end

end A260943.P13799869845502598163

noncomputable section

/-- A260943: Expansion of psi(-x^2) * chi(x^3) * f(x^6) in powers of x where psi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260943.P13799869845502598163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260943 (n : ℕ) : ℤ :=
  A260943.P13799869845502598163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260944.P7625123260759502148

`A112609(n)*A131713(n)`
-/

namespace A260944.P7625123260759502148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 n * A131713 n

end

end A260944.P7625123260759502148

noncomputable section

/-- A260944: Expansion of phi(-x^4) * psi(-x^6) / chi(-x^3) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A260944.P7625123260759502148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260944 (n : ℕ) : ℤ :=
  A260944.P7625123260759502148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262978.P15795800057724418315

`eq[1, A272334(2*(n+1))]+1`
-/

namespace A262978.P15795800057724418315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262978.P15795800057724418315

noncomputable section

/-- A262978: Exponents n such that 2^n-1 and 2^n+1 are squarefree.

Offset 1, canonical program `A262978.P15795800057724418315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A262978 (n : ℕ) : ℤ :=
  (A262978.P15795800057724418315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A262978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263323.P10911484002693778116

`A061395(lcm(A060819(n+1), A329601(n+1)))`
-/

namespace A263323.P10911484002693778116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A060819 (n + 1)) (A329601 (n + 1)))

end

end A263323.P10911484002693778116

noncomputable section

/-- A263323: The greater of maximal exponent and maximal prime index in the prime factorization of n.

Offset 1, canonical program `A263323.P10911484002693778116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. -/
def A263323 (n : ℕ) : ℤ :=
  A263323.P10911484002693778116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. -/
def A263323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267423.P14088695122642526854

`A267525(n)*A267676(n)`
-/

namespace A267423.P14088695122642526854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 n * A267676 n

end

end A267423.P14088695122642526854

noncomputable section

/-- A267423: Triangle read by rows giving successive states of cellular automaton generated by "Rule 133" initiated with a single ON (black) cell.

Offset 0, canonical program `A267423.P14088695122642526854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423 (n : ℕ) : ℤ :=
  A267423.P14088695122642526854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268641.P593264094722309301

`record[A007913(sqrt(A233409(n+1)))]`
-/

namespace A268641.P593264094722309301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P593264094722309301

noncomputable section

/-- A268641: Squarefree numbers k such that k^2 + 1 and k^2 - 1 are also squarefree.

Offset 1, canonical program `A268641.P593264094722309301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3871 terms. -/
def A268641 (n : ℕ) : ℤ :=
  A268641.P593264094722309301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3871 terms. -/
def A268641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277855.P13714581098425057374

`A055881(eq[A099563(n+1), A265893(n)])`
-/

namespace A277855.P13714581098425057374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277855.P13714581098425057374

noncomputable section

/-- A277855: Irregular triangle read by rows: T(n,k) is the maximum length of the longest common subsequence of k distinct permutations of n items with n>=1 and 1<=k<=n!

Offset 1, canonical program `A277855.P13714581098425057374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855 (n : ℕ) : ℤ :=
  A277855.P13714581098425057374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279622.P1478079407013024484

`lt[2, A004396(A061395(n+1))]+1`
-/

namespace A279622.P1478079407013024484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P1478079407013024484

noncomputable section

/-- A279622: Numbers with a prime factor greater than 5.

Offset 1, canonical program `A279622.P1478079407013024484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622 (n : ℕ) : ℤ :=
  (A279622.P1478079407013024484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285715.P8279526734340642571

`A061395(4*n+2)-1`
-/

namespace A285715.P8279526734340642571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (4 * n + 2) - 1

end

end A285715.P8279526734340642571

noncomputable section

/-- A285715: a(n) = A000120(A245611(n)).

Offset 1, canonical program `A285715.P8279526734340642571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285715 (n : ℕ) : ℤ :=
  A285715.P8279526734340642571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285725.P10187750537591551827

`A061395(n+1)-((n-1)%2+1)`
-/

namespace A285725.P10187750537591551827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - (Int.tmod ((n : ℤ) - 1) 2 + 1)

end

end A285725.P10187750537591551827

noncomputable section

/-- A285725: a(1) = 0; for n > 1, a(n) = A252735(n) - A000035(n).

Offset 1, canonical program `A285725.P10187750537591551827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725 (n : ℕ) : ℤ :=
  A285725.P10187750537591551827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307100.P11035796224426084874

`∑{d}[n+1, A394346(#)]`
-/

namespace A307100.P11035796224426084874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A394346 d

end

end A307100.P11035796224426084874

noncomputable section

/-- A307100: a(n) = Sum_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A307100.P11035796224426084874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307100 (n : ℕ) : ℤ :=
  A307100.P11035796224426084874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310374.P11349914132477843547

`(A310378(n)+A310367(n))/2`
-/

namespace A310374.P11349914132477843547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310378 n + A310367 n : ℚ) / 2

end

end A310374.P11349914132477843547

noncomputable section

/-- A310374: Coordination sequence Gal.6.245.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310374.P11349914132477843547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A310374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A310374.P11349914132477843547.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A310374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310396.P16584741270594359869

`A130824(n)+A092038(A314157(n)-A130824(n))`
-/

namespace A310396.P16584741270594359869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A092038 (A314157 n - A130824 n).toNat

end

end A310396.P16584741270594359869

noncomputable section

/-- A310396: Coordination sequence Gal.6.320.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310396.P16584741270594359869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A310396 (n : ℕ) : ℤ :=
  A310396.P16584741270594359869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A310396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310404.P2932539923178756672

`A310378(n)+A004525(A310420(n)-A310378(n))`
-/

namespace A310404.P2932539923178756672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310378 n + A004525 (A310420 n - A310378 n).toNat

end

end A310404.P2932539923178756672

noncomputable section

/-- A310404: Coordination sequence Gal.6.338.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310404.P2932539923178756672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404 (n : ℕ) : ℤ :=
  A310404.P2932539923178756672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310520.P9429967964652236068

`abs(A008592(n)-A315186(n))`
-/

namespace A310520.P9429967964652236068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315186 n|

end

end A310520.P9429967964652236068

noncomputable section

/-- A310520: Coordination sequence Gal.6.331.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310520.P9429967964652236068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520 (n : ℕ) : ℤ :=
  A310520.P9429967964652236068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311165.P16138864998668461834

`A008574(n)+A313803(n)-A313799(n)`
-/

namespace A311165.P16138864998668461834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313803 n - A313799 n)

end

end A311165.P16138864998668461834

noncomputable section

/-- A311165: Coordination sequence Gal.5.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311165.P16138864998668461834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165 (n : ℕ) : ℤ :=
  A311165.P16138864998668461834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311549.P16203180800236196570

`A314742(n)-A004525(A004396(n))`
-/

namespace A311549.P16203180800236196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - A004525 (A004396 n).toNat

end

end A311549.P16203180800236196570

noncomputable section

/-- A311549: Coordination sequence Gal.6.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311549.P16203180800236196570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549 (n : ℕ) : ℤ :=
  A311549.P16203180800236196570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311889.P1219721333135851208

`A008574(n)+A004396(A312507(n)-A008574(n))`
-/

namespace A311889.P1219721333135851208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A312507 n - A008574 n).toNat

end

end A311889.P1219721333135851208

noncomputable section

/-- A311889: Coordination sequence Gal.6.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311889.P1219721333135851208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A311889 (n : ℕ) : ℤ :=
  A311889.P1219721333135851208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A311889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311907.P15737395164403453455

`A313894(n)-(A313803(n)-A313799(n)+n)`
-/

namespace A311907.P15737395164403453455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - (A313803 n - A313799 n + (n : ℤ))

end

end A311907.P15737395164403453455

noncomputable section

/-- A311907: Coordination sequence Gal.5.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311907.P15737395164403453455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907 (n : ℕ) : ℤ :=
  A311907.P15737395164403453455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313639.P9445063185818086660

`abs(A008592(n)-A313825(n))`
-/

namespace A313639.P9445063185818086660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313825 n|

end

end A313639.P9445063185818086660

noncomputable section

/-- A313639: Coordination sequence Gal.6.204.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313639.P9445063185818086660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639 (n : ℕ) : ℤ :=
  A313639.P9445063185818086660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314032.P4483602225519338393

`abs(A008592(n)-(A315329(n)+A312507(n))/2)`
-/

namespace A314032.P4483602225519338393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008592 n : ℚ) - (A315329 n + A312507 n : ℚ) / 2|

end

end A314032.P4483602225519338393

noncomputable section

/-- A314032: Coordination sequence Gal.6.324.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314032.P4483602225519338393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314032.P4483602225519338393.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317594.P6397274018169493983

`A038459(A013598(n+1))+A023443(n)`
-/

namespace A317594.P6397274018169493983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A013598 (n + 1)).toNat + A023443 n

end

end A317594.P6397274018169493983

noncomputable section

/-- A317594: Lexicographically first sequence of different terms such that erasing the last three digits of a(n+1) and adding this new reshaped integer to a(n) gives back a(n+1).

Offset 1, canonical program `A317594.P6397274018169493983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594 (n : ℕ) : ℤ :=
  A317594.P6397274018169493983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323701.P14769873866229796665

`Δ[A061395(2*A076873(n+1))]`
-/

namespace A323701.P14769873866229796665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A076873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P14769873866229796665

noncomputable section

/-- A323701: a(n) is the number of primes p such that A007504(n) <= p < A007504(n+1).

Offset 1, canonical program `A323701.P14769873866229796665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701 (n : ℕ) : ℤ :=
  A323701.P14769873866229796665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325755.P16934232408235927233

`record[(n+1)*A353566(n+1)]`
-/

namespace A325755.P16934232408235927233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325755.P16934232408235927233

noncomputable section

/-- A325755: Numbers n divisible by their prime shadow A181819(n).

Offset 1, canonical program `A325755.P16934232408235927233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. -/
def A325755 (n : ℕ) : ℤ :=
  A325755.P16934232408235927233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. -/
def A325755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327829.P6390908241327507115

`∩[A000469(n+1), A063989(n+1)]`
-/

namespace A327829.P6390908241327507115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P6390908241327507115

noncomputable section

/-- A327829: Squarefree numbers with a prime number of prime factors.

Offset 1, canonical program `A327829.P6390908241327507115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829 (n : ℕ) : ℤ :=
  (A327829.P6390908241327507115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328827.P9907957767615357491

`A000040(A061395(∑[n+2]))`
-/

namespace A328827.P9907957767615357491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328827.P9907957767615357491

noncomputable section

/-- A328827: a(n) is the largest prime factor of n + n*(n+1)/2 = n*(n+3)/2.

Offset 1, canonical program `A328827.P9907957767615357491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A328827 (n : ℕ) : ℤ :=
  A328827.P9907957767615357491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A328827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331281.P996979535116224856

`A057427(C(A086436(n+1), A061395(n+1)))`
-/

namespace A331281.P996979535116224856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A086436 (n + 1)).toNat (A061395 (n + 1)).toNat)

end

end A331281.P996979535116224856

noncomputable section

/-- A331281: If A061395(n) <= A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331281.P996979535116224856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281 (n : ℕ) : ℤ :=
  A331281.P996979535116224856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331282.P7456881985685693272

`char[lt[A061395(n+1), ∑{e}[n+1, #]]]`
-/

namespace A331282.P7456881985685693272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A331282.P7456881985685693272

noncomputable section

/-- A331282: If A061395(n) < A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331282.P7456881985685693272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282 (n : ℕ) : ℤ :=
  (A331282.P7456881985685693272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334469.P12018164679622748302

`record[3-A000040(A061395(n+2))+n]`
-/

namespace A334469.P12018164679622748302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (A061395 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P12018164679622748302

noncomputable section

/-- A334469: Indices of zero or positive first differences in A217287.

Offset 1, canonical program `A334469.P12018164679622748302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469 (n : ℕ) : ℤ :=
  A334469.P12018164679622748302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335603.P8197229677075245181

`A051903(n+1)*A061395(n+1)`
-/

namespace A335603.P8197229677075245181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A061395 (n + 1)

end

end A335603.P8197229677075245181

noncomputable section

/-- A335603: a(n) = p*q where p is the sequential number (or PrimePi, A000720) of the largest prime divisor of n, and q is the maximal exponent in the canonical representation of n (A051903).

Offset 1, canonical program `A335603.P8197229677075245181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335603 (n : ℕ) : ℤ :=
  A335603.P8197229677075245181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336371.P14472383251782372685

`A061395(∏{d}[A336373(n+1), #])`
-/

namespace A336371.P14472383251782372685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A336371.P14472383251782372685

noncomputable section

/-- A336371: Numbers k such that gcd(k, prime(k) + prime(k-1)) > 1.

Offset 1, canonical program `A336371.P14472383251782372685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A336371 (n : ℕ) : ℤ :=
  A336371.P14472383251782372685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A336371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342003.P739840468658823223

`A051903(A211991(n+2)+A001065(n+2))`
-/

namespace A342003.P739840468658823223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A211991 (n + 2) + A001065 (n + 2)).toNat

end

end A342003.P739840468658823223

noncomputable section

/-- A342003: Maximal exponent in the prime factorization of the arithmetic derivative of n: a(n) = A051903(A003415(n)).

Offset 2, canonical program `A342003.P739840468658823223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A342003 (n : ℕ) : ℤ :=
  A342003.P739840468658823223.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A342003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343224.P4178964125173999294

`1-A211991(n+1)+n`
-/

namespace A343224.P4178964125173999294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A211991 (n + 1) + (n : ℤ)

end

end A343224.P4178964125173999294

noncomputable section

/-- A343224: a(n) = sigma(n) - A003415(n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343224.P4178964125173999294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343224 (n : ℕ) : ℤ :=
  A343224.P4178964125173999294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344585.P15926427929207934664

`lt[A211991(round(acot(n)+n)), 0]`
-/

namespace A344585.P15926427929207934664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344585.P15926427929207934664

noncomputable section

/-- A344585: Numbers whose sum of proper divisors (A001065) is greater than their arithmetic derivative (A003415).

Offset 1, canonical program `A344585.P15926427929207934664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344585 (n : ℕ) : ℤ :=
  (A344585.P15926427929207934664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157104.P9758464400275007178

`A003415(A004709(n+1))`
-/

namespace A157104.P9758464400275007178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004709 (n + 1)).toNat

end

end A157104.P9758464400275007178

noncomputable section

/-- A157104: Arithmetic derivative of cubefree numbers.

Offset 1, canonical program `A157104.P9758464400275007178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A157104 (n : ℕ) : ℤ :=
  A157104.P9758464400275007178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A157104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168036.P2098310487666722677

`A003415(n)-n`
-/

namespace A168036.P2098310487666722677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - (n : ℤ)

end

end A168036.P2098310487666722677

noncomputable section

/-- A168036: Difference between n' and n, where n' is the arithmetic derivative of n (A003415).

Offset 0, canonical program `A168036.P2098310487666722677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168036 (n : ℕ) : ℤ :=
  A168036.P2098310487666722677.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168386.P1656891563129057732

`A003415(A006882(n))`
-/

namespace A168386.P1656891563129057732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006882 n).toNat

end

end A168386.P1656891563129057732

noncomputable section

/-- A168386: Arithmetic derivative of the double factorial of n.

Offset 0, canonical program `A168386.P1656891563129057732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168386 (n : ℕ) : ℤ :=
  A168386.P1656891563129057732.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168626.P5841133721834659649

`∩[A321503(n+1)+1, A321503(n+1)]`
-/

namespace A168626.P5841133721834659649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321503 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168626.P5841133721834659649

noncomputable section

/-- A168626: Numbers n such that n and n+-1 have 3 or more distinct prime factors.

Offset 1, canonical program `A168626.P5841133721834659649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A168626 (n : ℕ) : ℤ :=
  (A168626.P5841133721834659649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A168626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179652.P13750183402564225664

`A112559(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179652.P13750183402564225664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112559 (n + 1) : ℚ) / 3

end

end A179652.P13750183402564225664

noncomputable section

/-- A179652: (A175600(n)-5)/48 or A112559(n)/3.

Offset 1, canonical program `A179652.P13750183402564225664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179652.P13750183402564225664.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181421.P7941151460370424266

`eq[A003415(n), A053000(A013634(n))]`
-/

namespace A181421.P7941151460370424266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A013634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181421.P7941151460370424266

noncomputable section

/-- A181421: Primes such that the square of the sum of itself and next prime, when added to 1 is a prime.

Offset 1, canonical program `A181421.P7941151460370424266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A181421 (n : ℕ) : ℤ :=
  (A181421.P7941151460370424266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A181421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186647.P15378219803120056282

`eq[A000034(n), A003415(A007953(n))]`
-/

namespace A186647.P15378219803120056282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186647.P15378219803120056282

noncomputable section

/-- A186647: Even numbers whose decimal digits sum to a prime.

Offset 1, canonical program `A186647.P15378219803120056282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A186647 (n : ℕ) : ℤ :=
  (A186647.P15378219803120056282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A186647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216887.P7016313047720049362

`eq[A003415(A050376(2*(n+2))), A003415(n)]`
-/

namespace A216887.P7016313047720049362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A050376 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P7016313047720049362

noncomputable section

/-- A216887: Primes p such that x^67 = 2 has a solution mod p.

Offset 1, canonical program `A216887.P7016313047720049362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887 (n : ℕ) : ℤ :=
  (A216887.P7016313047720049362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225856.P11800117262539165010

`floor(sqrt(sqrt(A225892(n+1))))`
-/

namespace A225856.P11800117262539165010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A225892 (n + 1) : ℝ))⌋

end

end A225856.P11800117262539165010

noncomputable section

/-- A225856: Primes p such that p^2 + 1 is squarefree.

Offset 1, canonical program `A225856.P11800117262539165010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225856 (n : ℕ) : ℤ :=
  A225856.P11800117262539165010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229341.P1769753783816508396

`∏{e}[A003415(2*n+2-n), #+1]`
-/

namespace A229341.P1769753783816508396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((2 * n : ℤ) + (2 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A229341.P1769753783816508396

noncomputable section

/-- A229341: a(n) = tau(n'), the number of divisors of the arithmetic derivative of n.

Offset 2, canonical program `A229341.P1769753783816508396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229341 (n : ℕ) : ℤ :=
  (A229341.P1769753783816508396.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229342.P11395013327853674218

`A000203(A300252(n+2)+A300251(n+2))`
-/

namespace A229342.P11395013327853674218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A300252 (n + 2) + A300251 (n + 2)).toNat

end

end A229342.P11395013327853674218

noncomputable section

/-- A229342: a(n) = sigma(n'), the sum of divisors of the arithmetic derivative of n.

Offset 2, canonical program `A229342.P11395013327853674218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229342 (n : ℕ) : ℤ :=
  A229342.P11395013327853674218.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229344.P6312581941137850236

`A002321(abs(A003415(n+1)-1)+1)`
-/

namespace A229344.P6312581941137850236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|A003415 (n + 1) - 1| + 1).toNat

end

end A229344.P6312581941137850236

noncomputable section

/-- A229344: Mertens's function of the arithmetic derivative of n: a(n) = M(n'), a(1) = 0.

Offset 1, canonical program `A229344.P6312581941137850236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A229344 (n : ℕ) : ℤ :=
  A229344.P6312581941137850236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A229344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229511.P11562683010761712362

`eq[1, A002260(A003415(n)+1)]`
-/

namespace A229511.P11562683010761712362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P11562683010761712362

noncomputable section

/-- A229511: Numbers k whose arithmetic derivative (k') is a triangular number.

Offset 0, canonical program `A229511.P11562683010761712362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A229511 (n : ℕ) : ℤ :=
  (A229511.P11562683010761712362.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A229511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229523.P13832945066902845341

`A190121(10^n)`
-/

namespace A229523.P13832945066902845341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (10 ^ n)

end

end A229523.P13832945066902845341

noncomputable section

/-- A229523: Partial sum of the arithmetic derivative A003415 (A190121) up to 10^n.

Offset 0, canonical program `A229523.P13832945066902845341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229523 (n : ℕ) : ℤ :=
  A229523.P13832945066902845341.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230595.P9035268919760195541

`A008615(C(5, A305809(n+1)))`
-/

namespace A230595.P9035268919760195541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Nat.choose 5 (A305809 (n + 1)).toNat)

end

end A230595.P9035268919760195541

noncomputable section

/-- A230595: Number of ways to write n as n = x*y, where x and y are primes, 1 <= x <= n, 1 <= y <= n.

Offset 1, canonical program `A230595.P9035268919760195541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230595 (n : ℕ) : ℤ :=
  A230595.P9035268919760195541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231864.P18222772313538243149

`∑[(A300252(n+1)+A300251(n+1))²]`
-/

namespace A231864.P18222772313538243149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300252 (n + 1) + A300251 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P18222772313538243149

noncomputable section

/-- A231864: Partial sums of the second power of arithmetic derivative function A003415.

Offset 1, canonical program `A231864.P18222772313538243149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231864 (n : ℕ) : ℤ :=
  A231864.P18222772313538243149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231946.P13868030303102611269

`∑[A003415(n+1)^3]`
-/

namespace A231946.P13868030303102611269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P13868030303102611269

noncomputable section

/-- A231946: Partial sums of the third power of the arithmetic derivative function A003415.

Offset 1, canonical program `A231946.P13868030303102611269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231946 (n : ℕ) : ℤ :=
  A231946.P13868030303102611269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235110.P10299594398330967285

`eq[2, A003415(n)+A003415(A094823(n))]`
-/

namespace A235110.P10299594398330967285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + A003415 (A094823 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235110.P10299594398330967285

noncomputable section

/-- A235110: Primes whose base-10 representation also represents a prime in base 13.

Offset 1, canonical program `A235110.P10299594398330967285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A235110 (n : ℕ) : ℤ :=
  (A235110.P10299594398330967285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A235110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235711.P5553264463072486028

`A003415(A002620(n))`
-/

namespace A235711.P5553264463072486028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002620 n).toNat

end

end A235711.P5553264463072486028

noncomputable section

/-- A235711: Arithmetic derivative of quarter squares.

Offset 0, canonical program `A235711.P5553264463072486028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235711 (n : ℕ) : ℤ :=
  A235711.P5553264463072486028.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240332.P2811997264391864732

`∑[A014016(n)]*A014016(A003415(n))`
-/

namespace A240332.P2811997264391864732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A014016 (A003415 n).toNat

end

end A240332.P2811997264391864732

noncomputable section

/-- A240332: Inverse of 49th cyclotomic polynomial.

Offset 0, canonical program `A240332.P2811997264391864732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A240332 (n : ℕ) : ℤ :=
  A240332.P2811997264391864732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A240332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242343.P2225175868314659616

`A000217(eq[2, A300252(A133263(n))])`
-/

namespace A242343.P2225175868314659616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242343.P2225175868314659616

noncomputable section

/-- A242343: Triangular numbers T such that (T+2) is semiprime.

Offset 1, canonical program `A242343.P2225175868314659616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A242343 (n : ℕ) : ℤ :=
  A242343.P2225175868314659616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A242343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258057.P7998122190271459586

`A003415(n+1)-A003415(n)`
-/

namespace A258057.P7998122190271459586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A003415 n

end

end A258057.P7998122190271459586

noncomputable section

/-- A258057: First differences of the arithmetic derivative sequence A003415.

Offset 0, canonical program `A258057.P7998122190271459586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258057 (n : ℕ) : ℤ :=
  A258057.P7998122190271459586.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258197.P15390791753644415480

`A003415(A007318(n))`
-/

namespace A258197.P15390791753644415480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007318 n).toNat

end

end A258197.P15390791753644415480

noncomputable section

/-- A258197: Arithmetic derivative of Pascal's triangle.

Offset 0, canonical program `A258197.P15390791753644415480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258197 (n : ℕ) : ℤ :=
  A258197.P15390791753644415480.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258290.P2763848387023428005

`A003415(A000984(n))`
-/

namespace A258290.P2763848387023428005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000984 n).toNat

end

end A258290.P2763848387023428005

noncomputable section

/-- A258290: Arithmetic derivative of central binomial coefficients, cf. A000984.

Offset 0, canonical program `A258290.P2763848387023428005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258290 (n : ℕ) : ℤ :=
  A258290.P2763848387023428005.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260620.P4707896754255925943

`A003415(A000178(n))`
-/

namespace A260620.P4707896754255925943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000178 n).toNat

end

end A260620.P4707896754255925943

noncomputable section

/-- A260620: Arithmetic derivative of superfactorial(n).

Offset 0, canonical program `A260620.P4707896754255925943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260620 (n : ℕ) : ℤ :=
  A260620.P4707896754255925943.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260624.P16422047914652395802

`A003415(A002808(n+1))`
-/

namespace A260624.P16422047914652395802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002808 (n + 1)).toNat

end

end A260624.P16422047914652395802

noncomputable section

/-- A260624: a(n) = arithmetic derivative of the n-th composite number.

Offset 1, canonical program `A260624.P16422047914652395802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260624 (n : ℕ) : ℤ :=
  A260624.P16422047914652395802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277455.P11217868120756742316

`A003415(A001006(n))`
-/

namespace A277455.P11217868120756742316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001006 n).toNat

end

end A277455.P11217868120756742316

noncomputable section

/-- A277455: Arithmetic derivatives of the Motzkin numbers.

Offset 0, canonical program `A277455.P11217868120756742316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277455 (n : ℕ) : ℤ :=
  A277455.P11217868120756742316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289614.P14969575610608167341

`A289615(n)+A289616(n)-A289652(n)`
-/

namespace A289614.P14969575610608167341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289615 n + A289616 n - A289652 n

end

end A289614.P14969575610608167341

noncomputable section

/-- A289614: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 283) or the same sequence for the mesh pattern (12, 433).

Offset 0, canonical program `A289614.P14969575610608167341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289615, A289616, A289652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289614 (n : ℕ) : ℤ :=
  A289614.P14969575610608167341.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289615, A289616, A289652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A313023.P12828604169227298714

`A004525(A004396(n))+A313228(n)-A004396(n)`
-/

namespace A313023.P12828604169227298714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313228 n - A004396 n)

end

end A313023.P12828604169227298714

noncomputable section

/-- A313023: Coordination sequence Gal.6.130.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313023.P12828604169227298714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023 (n : ℕ) : ℤ :=
  A313023.P12828604169227298714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314156.P13342112998699093357

`A313779(n)+∑[A022003(n)]`
-/

namespace A314156.P13342112998699093357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314156.P13342112998699093357

noncomputable section

/-- A314156: Coordination sequence Gal.6.651.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314156.P13342112998699093357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314156 (n : ℕ) : ℤ :=
  A314156.P13342112998699093357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315410.P5887304458522211187

`abs(A008592(n)-A313259(n))`
-/

namespace A315410.P5887304458522211187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313259 n|

end

end A315410.P5887304458522211187

noncomputable section

/-- A315410: Coordination sequence Gal.6.322.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315410.P5887304458522211187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410 (n : ℕ) : ℤ :=
  A315410.P5887304458522211187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320584.P6049506944665547150

`eq[1, A003415(A182324(n)-n)]`
-/

namespace A320584.P6049506944665547150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A182324 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P6049506944665547150

noncomputable section

/-- A320584: Numbers whose first digit is prime.

Offset 1, canonical program `A320584.P6049506944665547150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A320584 (n : ℕ) : ℤ :=
  (A320584.P6049506944665547150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A320584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327866.P12650850147369526583

`A010052(A003415(n))`
-/

namespace A327866.P12650850147369526583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003415 n).toNat

end

end A327866.P12650850147369526583

noncomputable section

/-- A327866: a(n) = 1 if arithmetic derivative of n is square, 0 otherwise. Cf. A003415.

Offset 0, canonical program `A327866.P12650850147369526583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327866 (n : ℕ) : ℤ :=
  A327866.P12650850147369526583.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329039.P2079971333268642155

`∏{p}[n+1, #]*A003415((n+1)/∏{p}[n+1, #])`
-/

namespace A329039.P2079971333268642155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A329039.P2079971333268642155

noncomputable section

/-- A329039: If n = Product p_i^e_i, a(n) = n * Sum ((e_i - 1)/p_i).

Offset 1, canonical program `A329039.P2079971333268642155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329039 (n : ℕ) : ℤ :=
  A329039.P2079971333268642155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344024.P3749631349074452751

`A003415(A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344024.P3749631349074452751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001615 (n + 1)).toNat

end

end A344024.P3749631349074452751

noncomputable section

/-- A344024: a(n) = A003415(A001615(n)).

Offset 1, canonical program `A344024.P3749631349074452751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344024 (n : ℕ) : ℤ :=
  A344024.P3749631349074452751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153218.P3785772997736358194

`eq[1, A245838(2*(n+1))]`
-/

namespace A153218.P3785772997736358194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153218.P3785772997736358194

noncomputable section

/-- A153218: Numbers k such that 6k + 7 is prime.

Offset 1, canonical program `A153218.P3785772997736358194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218 (n : ℕ) : ℤ :=
  (A153218.P3785772997736358194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314165.P12623348579880038257

`A310465(n)+A004525(A008458(n)-A310465(n))`
-/

namespace A314165.P12623348579880038257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310465 n + A004525 (A008458 n - A310465 n).toNat

end

end A314165.P12623348579880038257

noncomputable section

/-- A314165: Coordination sequence Gal.5.307.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314165.P12623348579880038257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165 (n : ℕ) : ℤ :=
  A314165.P12623348579880038257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315254.P4856332562113004887

`abs(A008592(n)-A310465(n))`
-/

namespace A315254.P4856332562113004887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310465 n|

end

end A315254.P4856332562113004887

noncomputable section

/-- A315254: Coordination sequence Gal.6.232.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315254.P4856332562113004887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254 (n : ℕ) : ℤ :=
  A315254.P4856332562113004887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153193.P2844732109781554609

`A063647(n+1)+A048691(n+1)*A146564(n+2)`
-/

namespace A153193.P2844732109781554609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + A048691 (n + 1) * A146564 (n + 2)

end

end A153193.P2844732109781554609

noncomputable section

/-- A153193: a(n) is the number of integers of the form n*(n+1)*k / (k - n*(n+1)) where k is an integer >= 1.

Offset 1, canonical program `A153193.P2844732109781554609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153193 (n : ℕ) : ℤ :=
  A153193.P2844732109781554609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155752.P6228689506561445427

`A029707(n+1)-1`
-/

namespace A155752.P6228689506561445427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

end

end A155752.P6228689506561445427

noncomputable section

/-- A155752: Where 2's occur in the prime differences A001223.

Offset 1, canonical program `A155752.P6228689506561445427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752 (n : ℕ) : ℤ :=
  A155752.P6228689506561445427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156877.P7902119984331590274

`A156874(n+1)+A156875(n+1)-A156876(n+1)`
-/

namespace A156877.P7902119984331590274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (n + 1) + A156875 (n + 1) - A156876 (n + 1)

end

end A156877.P7902119984331590274

noncomputable section

/-- A156877: Number of primes <= n that are safe primes and also Sophie Germain primes.

Offset 1, canonical program `A156877.P7902119984331590274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156874, A156875, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156877 (n : ℕ) : ℤ :=
  A156877.P7902119984331590274.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156874, A156875, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156878.P8707209131953386678

`A000720(n+1)-A156876(n+1)`
-/

namespace A156878.P8707209131953386678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A156876 (n + 1)

end

end A156878.P8707209131953386678

noncomputable section

/-- A156878: Number of primes <= n that are neither safe primes and nor Sophie Germain primes.

Offset 1, canonical program `A156878.P8707209131953386678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156878 (n : ℕ) : ℤ :=
  A156878.P8707209131953386678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163376.P13523054904363209403

`A163109(Δ[A002088(n)])`
-/

namespace A163376.P13523054904363209403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (f1 (n + 1) - f1 n).toNat

end

end A163376.P13523054904363209403

noncomputable section

/-- A163376: a(n) = phi(tau(phi(n))).

Offset 1, canonical program `A163376.P13523054904363209403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163376 (n : ℕ) : ℤ :=
  A163376.P13523054904363209403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163405.P4015231014055549183

`A141468(n+1)+A163400(n+1)`
-/

namespace A163405.P4015231014055549183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A163400 (n + 1)

end

end A163405.P4015231014055549183

noncomputable section

/-- A163405: a(n) = (n-th nonprime) + (number of bits in binary expansion of n-th nonprime).

Offset 1, canonical program `A163405.P4015231014055549183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, A163400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163405 (n : ℕ) : ℤ :=
  A163405.P4015231014055549183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, A163400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166039.P12293682533427347331

`A166037(n+1)+A002808(n+1)`
-/

namespace A166039.P12293682533427347331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) + A002808 (n + 1)

end

end A166039.P12293682533427347331

noncomputable section

/-- A166039: Sums of three consecutive nonprimes A141468.

Offset 1, canonical program `A166039.P12293682533427347331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166039 (n : ℕ) : ℤ :=
  A166039.P12293682533427347331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166685.P7030529592364102208

`record[A093178(A166037(n+1))]`
-/

namespace A166685.P7030529592364102208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A166037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166685.P7030529592364102208

noncomputable section

/-- A166685: Odd numbers that are the sum of two consecutive nonprimes.

Offset 1, canonical program `A166685.P7030529592364102208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166685 (n : ℕ) : ℤ :=
  A166685.P7030529592364102208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167611.P18150780174357713727

`filter[A166037(n+1), A005171(#)]`
-/

namespace A167611.P18150780174357713727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A167611.P18150780174357713727

noncomputable section

/-- A167611: Nonprimes that are the sum of two consecutive nonprimes.

Offset 1, canonical program `A167611.P18150780174357713727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. -/
def A167611 (n : ℕ) : ℤ :=
  A167611.P18150780174357713727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. -/
def A167611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168563.P15869300188145346420

`A161671(n+3)`
-/

namespace A168563.P15869300188145346420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 3)

end

end A168563.P15869300188145346420

noncomputable section

/-- A168563: a(n) = (n-th prime > 3) minus (n-th composite number).

Offset 1, canonical program `A168563.P15869300188145346420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168563 (n : ℕ) : ℤ :=
  A168563.P15869300188145346420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171127.P17353130976212097611

`eq[2, A169611(n+1)]+1`
-/

namespace A171127.P17353130976212097611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171127.P17353130976212097611

noncomputable section

/-- A171127: Numbers k such that A169611(k) = 2.

Offset 1, canonical program `A171127.P17353130976212097611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1759 terms. -/
def A171127 (n : ℕ) : ℤ :=
  (A171127.P17353130976212097611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1759 terms. -/
def A171127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171241.P9264165893758049052

`eq[3, A169611(n+1)]+1`
-/

namespace A171241.P9264165893758049052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171241.P9264165893758049052

noncomputable section

/-- A171241: Numbers k such that A169611(k) = 3.

Offset 1, canonical program `A171241.P9264165893758049052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A171241 (n : ℕ) : ℤ :=
  (A171241.P9264165893758049052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A171241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175732.P6482811191448036687

`gcd(Δ[A002088(n)], A001615(n+1))`
-/

namespace A175732.P6482811191448036687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001615 (n + 1))

end

end A175732.P6482811191448036687

noncomputable section

/-- A175732: a(n) = gcd(phi(n), psi(n)).

Offset 1, canonical program `A175732.P6482811191448036687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175732 (n : ℕ) : ℤ :=
  (A175732.P6482811191448036687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178834.P16895514089838133752

`A102839(n+1)-A109196(n+2)`
-/

namespace A178834.P16895514089838133752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 (n + 1) - A109196 (n + 2)

end

end A178834.P16895514089838133752

noncomputable section

/-- A178834: a(n) counts anti-chains of size two in "0,1,2" Motzkin trees on n edges.

Offset 0, canonical program `A178834.P16895514089838133752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834 (n : ℕ) : ℤ :=
  A178834.P16895514089838133752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178841.P12395929515216874443

`(A152537(n)+A010815(n))/2`
-/

namespace A178841.P12395929515216874443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152537 n + A010815 n : ℚ) / 2

end

end A178841.P12395929515216874443

noncomputable section

/-- A178841: The number of pure inverting compositions of n.

Offset 0, canonical program `A178841.P12395929515216874443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A178841 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178841.P12395929515216874443.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A178841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179485.P14706537653666994913

`∩[A087695(n+1), A323139(n+1)]`
-/

namespace A179485.P14706537653666994913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179485.P14706537653666994913

noncomputable section

/-- A179485: Sums of two successive primes s such that s+-3 are primes.

Offset 1, canonical program `A179485.P14706537653666994913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A179485 (n : ℕ) : ℤ :=
  (A179485.P14706537653666994913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A179485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181962.P6704746379540961634

`A062773(n+1)+n`
-/

namespace A181962.P6704746379540961634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) + (n : ℤ)

end

end A181962.P6704746379540961634

noncomputable section

/-- A181962: Numbers not of the form pi(p) + pi(sqrt(p)) for some prime p.

Offset 1, canonical program `A181962.P6704746379540961634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A181962 (n : ℕ) : ℤ :=
  A181962.P6704746379540961634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A181962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182582.P17036911180797299518

`A000035(A169611(n+1))`
-/

namespace A182582.P17036911180797299518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A169611 (n + 1)).toNat

end

end A182582.P17036911180797299518

noncomputable section

/-- A182582: a(n) = (A096268(n-1) + A182581(n)) mod 2.

Offset 1, canonical program `A182582.P17036911180797299518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182582 (n : ℕ) : ℤ :=
  A182582.P17036911180797299518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188080.P17840173988894253734

`record[(n+1)*A000007(n*A188079(n+1))]`
-/

namespace A188080.P17840173988894253734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 ((n : ℤ) * A188079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P17840173988894253734

noncomputable section

/-- A188080: Positions of 0 in A188079; complement of A188081.

Offset 1, canonical program `A188080.P17840173988894253734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A188080 (n : ℕ) : ℤ :=
  A188080.P17840173988894253734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A188080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188081.P10757998736830450152

`∩[A188078(n+1)+1, A188078(n+1)]`
-/

namespace A188081.P10757998736830450152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188081.P10757998736830450152

noncomputable section

/-- A188081: Positions of 1 in A188079; complement of A188080.

Offset 1, canonical program `A188081.P10757998736830450152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188081 (n : ℕ) : ℤ :=
  (A188081.P10757998736830450152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199918.P12463137671005930238

`A178902(n)%2`
-/

namespace A199918.P12463137671005930238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178902 n) 2

end

end A199918.P12463137671005930238

noncomputable section

/-- A199918: Expansion of false theta series variation of Euler's pentagonal number series in powers of x.

Offset 0, canonical program `A199918.P12463137671005930238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199918 (n : ℕ) : ℤ :=
  A199918.P12463137671005930238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209979.P11777341507779048097

`4*A209978(n)`
-/

namespace A209979.P11777341507779048097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A209978 n

end

end A209979.P11777341507779048097

noncomputable section

/-- A209979: Number of unimodular 2 X 2 matrices having all elements in {1,2,...,n}.

Offset 0, canonical program `A209979.P11777341507779048097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209979 (n : ℕ) : ℤ :=
  A209979.P11777341507779048097.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211636.P2652783068528798878

`∑[A036698(n)-n]`
-/

namespace A211636.P2652783068528798878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P2652783068528798878

noncomputable section

/-- A211636: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2>=x^2+y^2.

Offset 0, canonical program `A211636.P2652783068528798878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211636 (n : ℕ) : ℤ :=
  A211636.P2652783068528798878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220663.P7801679343438908559

`1-A220662(n+1)+n`
-/

namespace A220663.P7801679343438908559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A220662 (n + 1) + (n : ℤ)

end

end A220663.P7801679343438908559

noncomputable section

/-- A220663: Irregular table: row n (n>=1) consists of numbers 0..A084556(n)-1.

Offset 1, canonical program `A220663.P7801679343438908559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5914 terms. -/
def A220663 (n : ℕ) : ℤ :=
  A220663.P7801679343438908559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5914 terms. -/
def A220663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220789.P11763178928776331104

`comp[A092058(n+1)-2]+2`
-/

namespace A220789.P11763178928776331104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A220789.P11763178928776331104

noncomputable section

/-- A220789: Numbers n such that 2*prime(n)^2 - 1 is not prime.

Offset 1, canonical program `A220789.P11763178928776331104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220789 (n : ℕ) : ℤ :=
  (A220789.P11763178928776331104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236568.P5918031760574523688

`p?[A029707(n+1)-2]`
-/

namespace A236568.P5918031760574523688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P5918031760574523688

noncomputable section

/-- A236568: Primes p with prime(p + 2) + 2 prime.

Offset 1, canonical program `A236568.P5918031760574523688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568 (n : ℕ) : ℤ :=
  A236568.P5918031760574523688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239614.P8675786918159621361

`A239611(n+1)/A079458(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239614.P8675786918159621361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239611 (n + 1) : ℚ) / (A079458 (n + 1) : ℚ)

end

end A239614.P8675786918159621361

noncomputable section

/-- A239614: a(n) = A239611(n) / A079458(n).

Offset 1, canonical program `A239614.P8675786918159621361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, A239611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239614.P8675786918159621361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, A239611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240370.P5719875248519778256

`eq[1, A065338(A057521(n+1))]+1`
-/

namespace A240370.P5719875248519778256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A057521 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240370.P5719875248519778256

noncomputable section

/-- A240370: Positive integers n such that every element in the ring of integers modulo n can be written as the sum of two squares modulo n.

Offset 1, canonical program `A240370.P5719875248519778256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6504 terms. -/
def A240370 (n : ℕ) : ℤ :=
  (A240370.P5719875248519778256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6504 terms. -/
def A240370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243353.P14485821994603971352

`A163511(A180201(n))`
-/

namespace A243353.P14485821994603971352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A180201 n).toNat

end

end A243353.P14485821994603971352

noncomputable section

/-- A243353: Permutation of natural numbers which maps between the partitions as encoded in A227739 (binary based system, zero-based) to A112798 (prime-index based system, one-based).

Offset 0, canonical program `A243353.P14485821994603971352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A243353 (n : ℕ) : ℤ :=
  A243353.P14485821994603971352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A243353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243759.P8460389810584286974

`A007949(A007318(n))`
-/

namespace A243759.P8460389810584286974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A007318 n).toNat

end

end A243759.P8460389810584286974

noncomputable section

/-- A243759: Triangle T(m,k): exponent of the highest power of 3 dividing the binomial coefficient binomial(m,k).

Offset 0, canonical program `A243759.P8460389810584286974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007949, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243759 (n : ℕ) : ℤ :=
  A243759.P8460389810584286974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007949, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244375.P14907623755703960831

`(-1)^n*A112298(n+1)`
-/

namespace A244375.P14907623755703960831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112298 (n + 1)

end

end A244375.P14907623755703960831

noncomputable section

/-- A244375: Expansion of (a(q) + 3*a(q^2) - 4*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A244375.P14907623755703960831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244375 (n : ℕ) : ℤ :=
  A244375.P14907623755703960831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245211.P9459255729961917414

`A060640(n+1)-A038040(n+1)`
-/

namespace A245211.P9459255729961917414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060640 (n + 1) - A038040 (n + 1)

end

end A245211.P9459255729961917414

noncomputable section

/-- A245211: a(n) = Sum_{(d

Offset 1, canonical program `A245211.P9459255729961917414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A060640, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245211 (n : ℕ) : ℤ :=
  A245211.P9459255729961917414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A060640, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245536.P3272298368546471376

`∏{e}[A163511(A054429(n+1)), #-1]`
-/

namespace A245536.P3272298368546471376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A245536.P3272298368546471376

noncomputable section

/-- A245536: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=k-r-1, or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=(k-r-1)*a(j).

Offset 1, canonical program `A245536.P3272298368546471376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A245536 (n : ℕ) : ℤ :=
  A245536.P3272298368546471376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A245536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245575.P91673300732164970

`Δ[A237526(record[lcm(2, n)])]`
-/

namespace A245575.P91673300732164970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245575.P91673300732164970

noncomputable section

/-- A245575: Number of ways of writing n as the sum of two quarter-squares (cf. A002620).

Offset 0, canonical program `A245575.P91673300732164970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A245575 (n : ℕ) : ℤ :=
  A245575.P91673300732164970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A245575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248886.P18163405162273270776

`(-1)^n*A123884(n)`
-/

namespace A248886.P18163405162273270776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A123884 n

end

end A248886.P18163405162273270776

noncomputable section

/-- A248886: Expansion of f(-x, -x) * f(x^2, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A248886.P18163405162273270776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248886 (n : ℕ) : ℤ :=
  A248886.P18163405162273270776.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255584.P14636303961363921140

`A033570(A130800(n+1))`
-/

namespace A255584.P14636303961363921140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 (A130800 (n + 1)).toNat

end

end A255584.P14636303961363921140

noncomputable section

/-- A255584: Semiprimes of the form (4*n + 1)*(6*n + 1) = 24*n^2 + 10*n + 1.

Offset 1, canonical program `A255584.P14636303961363921140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255584 (n : ℕ) : ℤ :=
  A255584.P14636303961363921140.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255607.P13320469364282797644

`A130800(n+1)/2`
-/

namespace A255607.P13320469364282797644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130800 (n + 1) : ℚ) / 2

end

end A255607.P13320469364282797644

noncomputable section

/-- A255607: Numbers n such that both 4*n+1 and 6*n+1 are primes.

Offset 1, canonical program `A255607.P13320469364282797644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255607.P13320469364282797644.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259488.P209394129755622119

`∩[A029707(n+1), A096477(n+1)]`
-/

namespace A259488.P209394129755622119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259488.P209394129755622119

noncomputable section

/-- A259488: Positive integers k with prime(k)+2 and prime(prime(k))+2 both prime.

Offset 1, canonical program `A259488.P209394129755622119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A259488 (n : ℕ) : ℤ :=
  (A259488.P209394129755622119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A259488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262991.P2037548391319313371

`A262868(n+1)+A262869(n+1)`
-/

namespace A262991.P2037548391319313371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) + A262869 (n + 1)

end

end A262991.P2037548391319313371

noncomputable section

/-- A262991: Number of squarefree numbers among the parts of the partitions of n into two parts.

Offset 1, canonical program `A262991.P2037548391319313371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262868, A262869, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262991 (n : ℕ) : ℤ :=
  A262991.P2037548391319313371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262868, A262869, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273711.P5353043427219471615

`A001221(n+1)*A007875(n+1)`
-/

namespace A273711.P5353043427219471615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A007875 (n + 1)

end

end A273711.P5353043427219471615

noncomputable section

/-- A273711: The Hadamard product of omega(n) and A007875(n).

Offset 1, canonical program `A273711.P5353043427219471615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273711 (n : ℕ) : ℤ :=
  A273711.P5353043427219471615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274920.P7331687866389573952

`(12-A328818(n))%3`
-/

namespace A274920.P7331687866389573952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (12 - A328818 n) 3

end

end A274920.P7331687866389573952

noncomputable section

/-- A274920: Spiral constructed on the nodes of the triangular net in which each new term is the least nonnegative integers distinct from its neighbors.

Offset 0, canonical program `A274920.P7331687866389573952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A274920 (n : ℕ) : ℤ :=
  A274920.P7331687866389573952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A274920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284061.P12909766225176381168

`A000720(A087112(comp[∑[n]]))`
-/

namespace A284061.P12909766225176381168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A087112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A284061.P12909766225176381168

noncomputable section

/-- A284061: Triangle read by rows: T(n,k) = pi(prime(k) * prime(n+1)).

Offset 1, canonical program `A284061.P12909766225176381168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A284061 (n : ℕ) : ℤ :=
  A284061.P12909766225176381168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A284061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285269.P15130939966737221586

`Δ[A278114(floor(sqrt(n²+1)))]`
-/

namespace A285269.P15130939966737221586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285269.P15130939966737221586

noncomputable section

/-- A285269: Number of (odd) primes between 2*n^2 and 2*(n+1)^2.

Offset 0, canonical program `A285269.P15130939966737221586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285269 (n : ℕ) : ℤ :=
  A285269.P15130939966737221586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287375.P16270847010936485648

`2*A287374(n+1)`
-/

namespace A287375.P16270847010936485648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287374 (n + 1)

end

end A287375.P16270847010936485648

noncomputable section

/-- A287375: Positions of 2 in A101666.

Offset 1, canonical program `A287375.P16270847010936485648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375 (n : ℕ) : ℤ :=
  A287375.P16270847010936485648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289496.P2094922246552871225

`A289493(A103517(n))-A289495(n+1)`
-/

namespace A289496.P2094922246552871225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A103517 n).toNat - A289495 (n + 1)

end

end A289496.P2094922246552871225

noncomputable section

/-- A289496: Number of primes in the interval [5n, 6n].

Offset 1, canonical program `A289496.P2094922246552871225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496 (n : ℕ) : ℤ :=
  A289496.P2094922246552871225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289499.P16333506063555151706

`A289495(2*(n+1))-A289500(n+1)`
-/

namespace A289499.P16333506063555151706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (2 * (n + 1)) - A289500 (n + 1)

end

end A289499.P16333506063555151706

noncomputable section

/-- A289499: Number of primes in the interval [8n, 9n].

Offset 1, canonical program `A289499.P16333506063555151706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289499 (n : ℕ) : ℤ :=
  A289499.P16333506063555151706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300063.P18376216019794990187

`eq[1, A257991(n+1)%2]+1`
-/

namespace A300063.P18376216019794990187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257991 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300063.P18376216019794990187

noncomputable section

/-- A300063: Heinz numbers of integer partitions of odd numbers.

Offset 1, canonical program `A300063.P18376216019794990187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A300063 (n : ℕ) : ℤ :=
  (A300063.P18376216019794990187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A300063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304326.P14717502684146888168

`A034444(n+1)-A304327(n+1)`
-/

namespace A304326.P14717502684146888168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A304327 (n + 1)

end

end A304326.P14717502684146888168

noncomputable section

/-- A304326: Number of ways to write n as a product of a number that is not a perfect power and a squarefree number.

Offset 1, canonical program `A304326.P14717502684146888168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326 (n : ℕ) : ℤ :=
  A304326.P14717502684146888168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305318.P18110274905277445209

`A000720(A275697(n+2)+1)`
-/

namespace A305318.P18110274905277445209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A275697 (n + 2) + 1).toNat

end

end A305318.P18110274905277445209

noncomputable section

/-- A305318: Numbers k such that A071866(k)=3.

Offset 1, canonical program `A305318.P18110274905277445209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A275697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305318 (n : ℕ) : ℤ :=
  A305318.P18110274905277445209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A275697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305461.P8154523107859240476

`A056671(n+1)*A365404(n+1)`
-/

namespace A305461.P8154523107859240476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A365404 (n + 1)

end

end A305461.P8154523107859240476

noncomputable section

/-- A305461: The number of one-digit numbers, k, in base n such that k^2 and k^3 end in the same digit.

Offset 1, canonical program `A305461.P8154523107859240476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, A365404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305461 (n : ℕ) : ℤ :=
  A305461.P8154523107859240476.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, A365404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305801.P4138315772594876190

`A305800(n+1)+A157928(n)`
-/

namespace A305801.P4138315772594876190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + A157928 n

end

end A305801.P4138315772594876190

noncomputable section

/-- A305801: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n is an odd prime, with f(n) = n for all other n.

Offset 1, canonical program `A305801.P4138315772594876190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801 (n : ℕ) : ℤ :=
  A305801.P4138315772594876190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307037.P8535599594476544073

`∑{d}[n+1, A074722(#)*A295295((n+1)/#)]`
-/

namespace A307037.P8535599594476544073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A295295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307037.P8535599594476544073

noncomputable section

/-- A307037: The unitary analog of the alternating sum-of-divisors function (A206369).

Offset 1, canonical program `A307037.P8535599594476544073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307037 (n : ℕ) : ℤ :=
  A307037.P8535599594476544073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309269.P11296063192359614049

`A246655(n+1)+A121315(n+1)/A246655(n+1)`
-/

namespace A309269.P11296063192359614049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℚ) + (A121315 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ)

end

end A309269.P11296063192359614049

noncomputable section

/-- A309269: Numbers that are the sum of two successive prime powers.

Offset 1, canonical program `A309269.P11296063192359614049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309269 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309269.P11296063192359614049.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`
-/

namespace A318652.P1218394255038798337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318513 (n + 1)

end

end A318652.P1218394255038798337

noncomputable section

/-- A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

Offset 1, canonical program `A318652.P1218394255038798337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652 (n : ℕ) : ℤ :=
  A318652.P1218394255038798337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318789.P4717079052724776887

`n+3-A330547(A000720(n+3))`
-/

namespace A318789.P4717079052724776887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A330547 (A000720 (n + 3)).toNat

end

end A318789.P4717079052724776887

noncomputable section

/-- A318789: For n >= 3, a(n) is equal to n-1 plus the alternating sum of all consecutive prime gaps between odd primes <= n.

Offset 3, canonical program `A318789.P4717079052724776887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318789 (n : ℕ) : ℤ :=
  A318789.P4717079052724776887.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319997.P3728645225630001544

`A043529(n)*A349444(n+1)`
-/

namespace A319997.P3728645225630001544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A349444 (n + 1)

end

end A319997.P3728645225630001544

noncomputable section

/-- A319997: a(n) = Sum_{d|n, d is odd} mu(n/d)*d, where mu(n) is Moebius function A008683.

Offset 1, canonical program `A319997.P3728645225630001544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319997 (n : ℕ) : ℤ :=
  A319997.P3728645225630001544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323901.P12439125084005686553

`A002487(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323901.P12439125084005686553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat

end

end A323901.P12439125084005686553

noncomputable section

/-- A323901: a(n) = A002487(A163511(n)).

Offset 0, canonical program `A323901.P12439125084005686553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323901 (n : ℕ) : ℤ :=
  A323901.P12439125084005686553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324184.P13572072800245294565

`A000203(A163511(n))`
-/

namespace A324184.P13572072800245294565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A163511 n).toNat

end

end A324184.P13572072800245294565

noncomputable section

/-- A324184: a(n) = sigma(A163511(n)).

Offset 0, canonical program `A324184.P13572072800245294565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184 (n : ℕ) : ℤ :=
  A324184.P13572072800245294565.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324185.P14252950843010352268

`A033879(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324185.P14252950843010352268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A163511 n).toNat

end

end A324185.P14252950843010352268

noncomputable section

/-- A324185: Deficiency of n permuted by A163511: a(n) = A033879(A163511(n)) = 2*A163511(n) - sigma(A163511(n)).

Offset 0, canonical program `A324185.P14252950843010352268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324185 (n : ℕ) : ℤ :=
  A324185.P14252950843010352268.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324186.P10448595320496770779

`A000593(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324186.P10448595320496770779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A163511 n).toNat

end

end A324186.P10448595320496770779

noncomputable section

/-- A324186: Sum of odd divisors permuted by A163511: a(n) = A000593(A163511(n)).

Offset 0, canonical program `A324186.P10448595320496770779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186 (n : ℕ) : ℤ :=
  A324186.P10448595320496770779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324187.P6887987960075682770

`A106315(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324187.P6887987960075682770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A163511 n).toNat

end

end A324187.P6887987960075682770

noncomputable section

/-- A324187: a(n) = A106315(A163511(n)).

Offset 0, canonical program `A324187.P6887987960075682770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324187 (n : ℕ) : ℤ :=
  A324187.P6887987960075682770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324188.P10044735737893625335

`A324121(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324188.P10044735737893625335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A163511 n).toNat

end

end A324188.P10044735737893625335

noncomputable section

/-- A324188: a(n) = A324121(A163511(n)).

Offset 0, canonical program `A324188.P10044735737893625335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324188 (n : ℕ) : ℤ :=
  A324188.P10044735737893625335.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324189.P7792579227676348933

`A324122(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324189.P7792579227676348933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A163511 n).toNat

end

end A324189.P7792579227676348933

noncomputable section

/-- A324189: a(n) = A324122(A163511(n)).

Offset 0, canonical program `A324189.P7792579227676348933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324122, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324189 (n : ℕ) : ℤ :=
  A324189.P7792579227676348933.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324122, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324194.P16246264380367185644

`A192895(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324194.P16246264380367185644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A163511 n).toNat

end

end A324194.P16246264380367185644

noncomputable section

/-- A324194: A000120-deficiency of n permuted by A163511: a(n) = A192895(A163511(n)).

Offset 0, canonical program `A324194.P16246264380367185644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194 (n : ℕ) : ℤ :=
  A324194.P16246264380367185644.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325975.P4868771464823910361

`1/2*gcd(A034460(n+1)+A325313(n+1), A325814(n+1)+A325314(n+1))`
-/

namespace A325975.P4868771464823910361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (Int.gcd (A034460 (n + 1) + A325313 (n + 1)) (A325814 (n + 1) + A325314 (n + 1)) : ℚ)

end

end A325975.P4868771464823910361

noncomputable section

/-- A325975: a(n) = gcd(A325977(n), A325978(n)).

Offset 1, canonical program `A325975.P4868771464823910361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, A325314, A325814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325975.P4868771464823910361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, A325314, A325814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325978.P3623255337971187287

`A033879(n+1)+A325977(n+1)`
-/

namespace A325978.P3623255337971187287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A325977 (n + 1)

end

end A325978.P3623255337971187287

noncomputable section

/-- A325978: a(n) = (1/2)*(A325314(n) + A325814(n)).

Offset 1, canonical program `A325978.P3623255337971187287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A325977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325978 (n : ℕ) : ℤ :=
  A325978.P3623255337971187287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A325977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326038.P1212086722632904376

`A019554(A387156(n+1))`
-/

namespace A326038.P1212086722632904376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A387156 (n + 1)).toNat

end

end A326038.P1212086722632904376

noncomputable section

/-- A326038: Square root of the largest square dividing the sum of divisors of n: a(n) = A000188(sigma(n)).

Offset 1, canonical program `A326038.P1212086722632904376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326038 (n : ℕ) : ℤ :=
  A326038.P1212086722632904376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328949.P9082150225325732429

`A328708(n+1)+A328712(n+1)`
-/

namespace A328949.P9082150225325732429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328708 (n + 1) + A328712 (n + 1)

end

end A328949.P9082150225325732429

noncomputable section

/-- A328949: Number of non-primitive Pythagorean triples with n as a leg or the hypotenuse.

Offset 1, canonical program `A328949.P9082150225325732429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328708, A328712, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328949 (n : ℕ) : ℤ :=
  A328949.P9082150225325732429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328708, A328712, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329119.P13011440153290457078

`A007531(A246655(n+1)+1)`
-/

namespace A329119.P13011440153290457078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A246655 (n + 1) + 1).toNat

end

end A329119.P13011440153290457078

noncomputable section

/-- A329119: Orders of the finite groups SL_2(K) when K is a finite field with q = A246655(n) elements.

Offset 1, canonical program `A329119.P13011440153290457078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329119 (n : ℕ) : ℤ :=
  A329119.P13011440153290457078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329887.P3845590592573835790

`a(A025480(n-1))*A163511(n)` with `a(0)=1`
-/

namespace A329887.P3845590592573835790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 (n - 1)).toNat * A163511 n

end

end A329887.P3845590592573835790

noncomputable section

/-- A329887: a(0) = 1, a(1) = 2; for n > 1, if n is even, then a(n) = 2*a(n/2), and if n is odd, a(n) = A283980(a((n-1)/2)).

Offset 0, canonical program `A329887.P3845590592573835790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329887 (n : ℕ) : ℤ :=
  A329887.P3845590592573835790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331749.P3262571390583388432

`A002487(A163511(n))-A002487(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331749.P3262571390583388432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat - A002487 n

end

end A331749.P3262571390583388432

noncomputable section

/-- A331749: a(n) = A002487(A163511(n)) - A002487(n).

Offset 0, canonical program `A331749.P3262571390583388432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A331749 (n : ℕ) : ℤ :=
  A331749.P3262571390583388432.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A331749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334051.P2829152517033935229

`1+A331677(n+1)`
-/

namespace A334051.P2829152517033935229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A331677 (n + 1)

end

end A334051.P2829152517033935229

noncomputable section

/-- A334051: The difference between the number of prime numbers in the ranges (1, p_n] and (p_n, 2*p_n], where p_n is the n-th prime.

Offset 1, canonical program `A334051.P2829152517033935229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334051 (n : ℕ) : ℤ :=
  A334051.P2829152517033935229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334109.P1143459477839108207

`A048675(A019554((n+1)/A019554(n+1)))`
-/

namespace A334109.P1143459477839108207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat).toNat

end

end A334109.P1143459477839108207

noncomputable section

/-- A334109: a(n) = A329697(A225546(n)).

Offset 1, canonical program `A334109.P1143459477839108207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109 (n : ℕ) : ℤ :=
  A334109.P1143459477839108207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335420.P3300100389546647521

`A000120(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335420.P3300100389546647521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A163511 n).toNat

end

end A335420.P3300100389546647521

noncomputable section

/-- A335420: a(n) = A000120(A163511(n)).

Offset 0, canonical program `A335420.P3300100389546647521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420 (n : ℕ) : ℤ :=
  A335420.P3300100389546647521.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336411.P10199807446028668935

`A029707(n+3)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336411.P10199807446028668935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 3) - 3

end

end A336411.P10199807446028668935

noncomputable section

/-- A336411: a(n) = A029707(n+2) - 3 for n >= 1.

Offset 1, canonical program `A336411.P10199807446028668935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336411 (n : ℕ) : ℤ :=
  A336411.P10199807446028668935.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340265.P8092916214538881554

`n+2-a(Δ[A002088(n)]-1)` with `a(0)=1`
-/

namespace A340265.P8092916214538881554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - a (f1 (n + 1) - f1 n - 1).toNat

end

end A340265.P8092916214538881554

noncomputable section

/-- A340265: a(n) = n + 1 - a(phi(n)).

Offset 1, canonical program `A340265.P8092916214538881554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340265 (n : ℕ) : ℤ :=
  A340265.P8092916214538881554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343504.P12989595719974363290

`lcm(a(A257687(n)), A099563(n))` with `a(0)=1`
-/

namespace A343504.P12989595719974363290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A257687 n).toNat : ℤ) (A099563 n)

end

end A343504.P12989595719974363290

noncomputable section

/-- A343504: a(n) is the least common multiple of the nonzero digits in factorial base expansion of n.

Offset 0, canonical program `A343504.P12989595719974363290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504 (n : ℕ) : ℤ :=
  (A343504.P12989595719974363290.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345091.P9820535298903829219

`A023896(n+1)+1-Δ[A002088(n)]+n`
-/

namespace A345091.P9820535298903829219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (1 - (f1 (n + 1) - f1 n) + (n : ℤ))

end

end A345091.P9820535298903829219

noncomputable section

/-- A345091: a(n) = Sum_{k=1..n} k^floor(1/gcd(n,k)).

Offset 1, canonical program `A345091.P9820535298903829219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345091 (n : ℕ) : ℤ :=
  A345091.P9820535298903829219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345374.P2600913004741557822

`A257991(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A345374.P2600913004741557822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A345374.P2600913004741557822

noncomputable section

/-- A345374: Number of unitary prime divisors of n whose prime index is odd.

Offset 1, canonical program `A345374.P2600913004741557822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374 (n : ℕ) : ℤ :=
  A345374.P2600913004741557822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345531.P12705087574863347987

`A246655(A024620(n+1))`
-/

namespace A345531.P12705087574863347987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A024620 (n + 1)).toNat

end

end A345531.P12705087574863347987

noncomputable section

/-- A345531: Smallest prime power greater than the n-th prime.

Offset 1, canonical program `A345531.P12705087574863347987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A345531 (n : ℕ) : ℤ :=
  A345531.P12705087574863347987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A345531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346613.P3183661306633961935

`∑{d}[n+1, A019554(#)]`
-/

namespace A346613.P3183661306633961935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019554 d

end

end A346613.P3183661306633961935

noncomputable section

/-- A346613: Inverse Moebius transform of A019554.

Offset 1, canonical program `A346613.P3183661306633961935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346613 (n : ℕ) : ℤ :=
  A346613.P3183661306633961935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153215.P1043252920232416462

`∩[A318959(n+1), A319050(n+1)]`
-/

namespace A153215.P1043252920232416462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153215.P1043252920232416462

noncomputable section

/-- A153215: Primes p such that none of p-2, p-1, p+1, and p+2 is squarefree.

Offset 1, canonical program `A153215.P1043252920232416462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A153215 (n : ℕ) : ℤ :=
  (A153215.P1043252920232416462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A153215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154234.P4965962223340030436

`A130855(n)%A000005(A134868(n+1))`
-/

namespace A154234.P4965962223340030436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130855 n) (A000005 (A134868 (n + 1)).toNat)

end

end A154234.P4965962223340030436

noncomputable section

/-- A154234: Triangle read by rows: T(n,k) = (n mod d(k)), where d(i) is the number of divisors of i.

Offset 1, canonical program `A154234.P4965962223340030436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154234 (n : ℕ) : ℤ :=
  A154234.P4965962223340030436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155070.P18385671949588106025

`p?[(n+1)*A049076(A262401(n+1))]`
-/

namespace A155070.P18385671949588106025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049076 (A262401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155070.P18385671949588106025

noncomputable section

/-- A155070: Primes with nonprime largest digit.

Offset 1, canonical program `A155070.P18385671949588106025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 860 terms. -/
def A155070 (n : ℕ) : ℤ :=
  A155070.P18385671949588106025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 860 terms. -/
def A155070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157231.P4030601719210352928

`(A001615(n+1)-A019590(n+1)-2*(A157228(n+1)+A157226(n+1)+A157230(n+1)))/4`
-/

namespace A157231.P4030601719210352928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A019590 (n + 1) - 2 * (A157228 (n + 1) + A157226 (n + 1) + A157230 (n + 1)) : ℚ) / 4

end

end A157231.P4030601719210352928

noncomputable section

/-- A157231: Number of primitive inequivalent oblique sublattices of square lattice of index n (equivalence and symmetry of sublattices are determined using parent lattice symmetries).

Offset 1, canonical program `A157231.P4030601719210352928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A019590, A157226, A157228, A157230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157231.P4030601719210352928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A019590, A157226, A157228, A157230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157361.P10027409474950020482

`A051731(n+1)*A114810(A002260(n+1))`
-/

namespace A157361.P10027409474950020482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A002260 (n + 1)).toNat

end

end A157361.P10027409474950020482

noncomputable section

/-- A157361: Triangle read by rows, A051731 * (A114810 * 0^(n-k)).

Offset 1, canonical program `A157361.P10027409474950020482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157361 (n : ℕ) : ℤ :=
  A157361.P10027409474950020482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163370.P12104747462105857956

`A062401(Δ[A002088(n)])`
-/

namespace A163370.P12104747462105857956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (f1 (n + 1) - f1 n).toNat

end

end A163370.P12104747462105857956

noncomputable section

/-- A163370: a(n) = phi(sigma(phi(n))).

Offset 1, canonical program `A163370.P12104747462105857956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163370 (n : ℕ) : ℤ :=
  A163370.P12104747462105857956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166590.P9721562619516484489

`A167346(n+1)/A003958(n+1)`
-/

namespace A166590.P9721562619516484489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167346 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)

end

end A166590.P9721562619516484489

noncomputable section

/-- A166590: Totally multiplicative sequence with a(p) = p+2 for prime p.

Offset 1, canonical program `A166590.P9721562619516484489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166590 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166590.P9721562619516484489.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167345.P13116550520045673211

`A003958(n+1)*A166586(n+1)`
-/

namespace A167345.P13116550520045673211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166586 (n + 1)

end

end A167345.P13116550520045673211

noncomputable section

/-- A167345: Totally multiplicative sequence with a(p) = (p-1)*(p-2) = p^2-3p+2 for prime p.

Offset 1, canonical program `A167345.P13116550520045673211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167345 (n : ℕ) : ℤ :=
  A167345.P13116550520045673211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167347.P12506259903497300645

`A003958(n+1)*A166589(n+1)`
-/

namespace A167347.P12506259903497300645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166589 (n + 1)

end

end A167347.P12506259903497300645

noncomputable section

/-- A167347: Totally multiplicative sequence with a(p) = (p-1)*(p-3) = p^2-4p+3 for prime p.

Offset 1, canonical program `A167347.P12506259903497300645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167347 (n : ℕ) : ℤ :=
  A167347.P12506259903497300645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171666.P5620257782220050246

`∩[A171665(n+2)-1, A171665(n+2)]`
-/

namespace A171666.P5620257782220050246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171666.P5620257782220050246

noncomputable section

/-- A171666: Numbers n such that n, n+1 and n+2 have the same number of divisors, and that number of divisors is larger than 4.

Offset 1, canonical program `A171666.P5620257782220050246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A171666 (n : ℕ) : ℤ :=
  (A171666.P5620257782220050246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A171666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173556.P12272166252829850610

`A003958(A087112(n+1))%8`
-/

namespace A173556.P12272166252829850610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003958 (A087112 (n + 1)).toNat) 8

end

end A173556.P12272166252829850610

noncomputable section

/-- A173556: Triangle T(n,m) = (prime(n)-1)*(prime(m)- 1) mod 8 read by rows.

Offset 1, canonical program `A173556.P12272166252829850610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A173556 (n : ℕ) : ℤ :=
  A173556.P12272166252829850610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A173556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174456.P14672879334691588390

`∩[A030630(n+1), A171665(n+1)]`
-/

namespace A174456.P14672879334691588390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174456.P14672879334691588390

noncomputable section

/-- A174456: Numbers k such that d(k) = d(k+1) = 12.

Offset 1, canonical program `A174456.P14672879334691588390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A174456 (n : ℕ) : ℤ :=
  (A174456.P14672879334691588390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A174456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179667.P13137735960818223073

`∩[A082294(n+1), A137487(n+1)]`
-/

namespace A179667.P13137735960818223073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P13137735960818223073

noncomputable section

/-- A179667: Products of the 5th power of a prime and 2 distinct primes (p^5*q*r).

Offset 1, canonical program `A179667.P13137735960818223073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A179667 (n : ℕ) : ℤ :=
  (A179667.P13137735960818223073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A179667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185189.P18053497688823494421

`A246655(2*(n+1)-floor(n²/(n+2)))`
-/

namespace A185189.P18053497688823494421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 ((2 * (n + 1) : ℤ) - ⌊(n ^ 2 : ℚ) / (n + 2 : ℚ)⌋).toNat

end

end A185189.P18053497688823494421

noncomputable section

/-- A185189: Powers of 2 >= 16 and powers of odd primes.

Offset 1, canonical program `A185189.P18053497688823494421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A185189 (n : ℕ) : ℤ :=
  A185189.P18053497688823494421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A185189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196227.P1038827225562638311

`2*A209978(n)`
-/

namespace A196227.P1038827225562638311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209978 n

end

end A196227.P1038827225562638311

noncomputable section

/-- A196227: Number of 2 X 2 integer matrices with elements from {1,...,n} whose determinant is 1.

Offset 0, canonical program `A196227.P1038827225562638311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196227 (n : ℕ) : ℤ :=
  A196227.P1038827225562638311.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226225.P11292451434803138646

`A129438(n)*A130731(n)`
-/

namespace A226225.P11292451434803138646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n * A130731 n

end

end A226225.P11292451434803138646

noncomputable section

/-- A226225: Expansion of phi(q) * phi(q^8) in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A226225.P11292451434803138646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226225 (n : ℕ) : ℤ :=
  A226225.P11292451434803138646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226240.P5796431811651741051

`(n%2+1)*A129438(n)`
-/

namespace A226240.P5796431811651741051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A129438 n

end

end A226240.P5796431811651741051

noncomputable section

/-- A226240: Expansion of phi(q^4) * phi(q^8) + 2 * q *phi(q^2) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A226240.P5796431811651741051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A226240 (n : ℕ) : ℤ :=
  A226240.P5796431811651741051.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A226240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227132.P9151109300955143811

`eq[4, 4/a(A257687(n))]` with `a(0)=1`
-/

namespace A227132.P9151109300955143811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  4 / f2 (A257687 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A227132.P9151109300955143811

noncomputable section

/-- A227132: Numbers k for which there is an odd number of nonzero digits when k is written in the factorial base (A007623).

Offset 1, canonical program `A227132.P9151109300955143811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227132 (n : ℕ) : ℤ :=
  (A227132.P9151109300955143811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227153.P14249677092312730531

`a(A257687(n))*A099563(n)` with `a(0)=1`
-/

namespace A227153.P14249677092312730531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A257687 n).toNat * A099563 n

end

end A227153.P14249677092312730531

noncomputable section

/-- A227153: Product of nonzero digits of n in factorial base.

Offset 0, canonical program `A227153.P14249677092312730531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227153 (n : ℕ) : ℤ :=
  A227153.P14249677092312730531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232499.P12591052901024712855

`record[A237526(abs(2-n))]`
-/

namespace A232499.P12591052901024712855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232499.P12591052901024712855

noncomputable section

/-- A232499: Number of unit squares, aligned with a Cartesian grid, completely within the first quadrant of a circle centered at the origin ordered by increasing radius.

Offset 1, canonical program `A232499.P12591052901024712855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A232499 (n : ℕ) : ℤ :=
  A232499.P12591052901024712855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A232499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257511.P4810453012359406512

`A265333(n)+a(A257687(n))` with `a(0)=0, a(1)=1`
-/

namespace A257511.P4810453012359406512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A265333 n + a (A257687 n).toNat

end

end A257511.P4810453012359406512

noncomputable section

/-- A257511: Number of 1's in factorial base representation of n (A007623).

Offset 0, canonical program `A257511.P4810453012359406512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, A265333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257511 (n : ℕ) : ℤ :=
  A257511.P4810453012359406512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, A265333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257686.P2460600263462736737

`n-A257687(n)`
-/

namespace A257686.P2460600263462736737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257687 n

end

end A257686.P2460600263462736737

noncomputable section

/-- A257686: a(0) = 0, for n >= 1: a(n) = A099563(n) * A048764(n).

Offset 0, canonical program `A257686.P2460600263462736737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257686 (n : ℕ) : ℤ :=
  A257686.P2460600263462736737.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257686.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258996.P1766384816688748904

`A059893(A258746(A059893(n+1)))`
-/

namespace A258996.P1766384816688748904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A258746 (A059893 (n + 1)).toNat).toNat

end

end A258996.P1766384816688748904

noncomputable section

/-- A258996: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A002487/A002487' (Calkin-Wilf) into the enumeration system A162911/A162912 (Drib), and vice versa.

Offset 1, canonical program `A258996.P1766384816688748904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A258996 (n : ℕ) : ℤ :=
  A258996.P1766384816688748904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A258996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262086.P14964271048277246364

`eq[A219428(n+3), A219428(n+13)]+3`
-/

namespace A262086.P14964271048277246364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A262086.P14964271048277246364

noncomputable section

/-- A262086: Numbers k such that phi(k + 10) = phi(k) + 10, where phi(k) = A000010(k) is Euler's totient function.

Offset 1, canonical program `A262086.P14964271048277246364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A262086 (n : ℕ) : ℤ :=
  (A262086.P14964271048277246364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A262086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262520.P5646456857022786100

`A262519(n)-A262518(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262520.P5646456857022786100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n - A262518 n

end

end A262520.P5646456857022786100

noncomputable section

/-- A262520: a(n) = A262519(n) - A262518(n).

Offset 0, canonical program `A262520.P5646456857022786100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262518, A262519, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262520 (n : ℕ) : ℤ :=
  A262520.P5646456857022786100.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262518, A262519, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262521.P6675054301120771592

`lt[A262519(n), A262518(n)]`
-/

namespace A262521.P6675054301120771592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262521.P6675054301120771592

noncomputable section

/-- A262521: Numbers where A262520 takes a negative value; numbers n for which A155043(2n) > A155043(2n + 1).

Offset 1, canonical program `A262521.P6675054301120771592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A262521 (n : ℕ) : ℤ :=
  (A262521.P6675054301120771592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A262521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262870.P16818378714008051339

`A294146(n+1)+A294285(n+1)-A294283(n+1)`
-/

namespace A262870.P16818378714008051339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) + (A294285 (n + 1) - A294283 (n + 1))

end

end A262870.P16818378714008051339

noncomputable section

/-- A262870: Sum of the squarefree numbers appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A262870.P16818378714008051339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262870 (n : ℕ) : ℤ :=
  A262870.P16818378714008051339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263990.P15229984249607134462

`A109288(n+1)-1`
-/

namespace A263990.P15229984249607134462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109288 (n + 1) - 1

end

end A263990.P15229984249607134462

noncomputable section

/-- A263990: Nonsquare numbers k such that k and k+1 are semiprimes.

Offset 1, canonical program `A263990.P15229984249607134462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263990 (n : ℕ) : ℤ :=
  A263990.P15229984249607134462.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275387.P16073463027195064393

`A066446(n+1)-A063647(n+1)`
-/

namespace A275387.P16073463027195064393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A063647 (n + 1)

end

end A275387.P16073463027195064393

noncomputable section

/-- A275387: Numbers of ordered pairs of divisors d < e of n such that gcd(d, e) > 1.

Offset 1, canonical program `A275387.P16073463027195064393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A066446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275387 (n : ℕ) : ℤ :=
  A275387.P16073463027195064393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A066446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275534.P744122955191144669

`A278114(n+1)-A267098(A278114(n+1))`
-/

namespace A275534.P744122955191144669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) - A267098 (A278114 (n + 1)).toNat

end

end A275534.P744122955191144669

noncomputable section

/-- A275534: Number of primes of the form x^2 + y^2 less than or equal to 2*n^2.

Offset 1, canonical program `A275534.P744122955191144669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 640 terms. -/
def A275534 (n : ℕ) : ℤ :=
  A275534.P744122955191144669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 640 terms. -/
def A275534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276307.P8997433821484487146

`p?[floor(A267891(n+1)/2)]`
-/

namespace A276307.P8997433821484487146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267891 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276307.P8997433821484487146

noncomputable section

/-- A276307: Primes p such that d(p*(2p+1)) = 16 where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A276307.P8997433821484487146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A276307 (n : ℕ) : ℤ :=
  A276307.P8997433821484487146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A276307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280799.P17483720520370020034

`A049502(A000010(n+1))`
-/

namespace A280799.P17483720520370020034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000010 (n + 1)).toNat

end

end A280799.P17483720520370020034

noncomputable section

/-- A280799: a(n) = A049502(phi(n)).

Offset 1, canonical program `A280799.P17483720520370020034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280799 (n : ℕ) : ℤ :=
  A280799.P17483720520370020034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280815.P16401283528998720651

`A049502(A051953(n+1))`
-/

namespace A280815.P16401283528998720651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A051953 (n + 1)).toNat

end

end A280815.P16401283528998720651

noncomputable section

/-- A280815: a(n) = A049502(cototient(n)).

Offset 1, canonical program `A280815.P16401283528998720651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280815 (n : ℕ) : ℤ :=
  A280815.P16401283528998720651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283977.P3008186910418949964

`A283976(n)-A283978(n)`
-/

namespace A283977.P3008186910418949964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n - A283978 n

end

end A283977.P3008186910418949964

noncomputable section

/-- A283977: a(2n) = A002487(n), a(2n+1) = A002487(n) XOR A002487(n+1), where XOR is bitwise-xor (A003987).

Offset 0, canonical program `A283977.P3008186910418949964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977 (n : ℕ) : ℤ :=
  A283977.P3008186910418949964.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293376.P13980595936671275185

`A291186(A120736(n+1))`
-/

namespace A293376.P13980595936671275185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (A120736 (n + 1)).toNat

end

end A293376.P13980595936671275185

noncomputable section

/-- A293376: Corresponding values of pod(n)/tau(n) of numbers n from A120736.

Offset 1, canonical program `A293376.P13980595936671275185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A293376 (n : ℕ) : ℤ :=
  A293376.P13980595936671275185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A293376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294061.P13855633599967279508

`A294285(n+1)-A294284(n+1)`
-/

namespace A294061.P13855633599967279508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (n + 1) - A294284 (n + 1)

end

end A294061.P13855633599967279508

noncomputable section

/-- A294061: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the larger part squarefree.

Offset 1, canonical program `A294061.P13855633599967279508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294061 (n : ℕ) : ℤ :=
  A294061.P13855633599967279508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295307.P10274143985494883344

`eq[1, A295303(n+1)]+1`
-/

namespace A295307.P10274143985494883344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295307.P10274143985494883344

noncomputable section

/-- A295307: Numbers k such that k > phi(sigma(k)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295307.P10274143985494883344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307 (n : ℕ) : ℤ :=
  (A295307.P10274143985494883344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295308.P2202808230107505075

`dr(and(10, A295303(n+1)))`
-/

namespace A295308.P2202808230107505075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A295303 (n + 1)))

end

end A295308.P2202808230107505075

noncomputable section

/-- A295308: Characteristic function for A066694: a(n) = 1 if n < phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295308.P2202808230107505075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308 (n : ℕ) : ℤ :=
  (A295308.P2202808230107505075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295311.P16426649915299872850

`(n+1)/A295310(n+1)`
-/

namespace A295311.P16426649915299872850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295311.P16426649915299872850

noncomputable section

/-- A295311: a(n) = n / A295310(n) = n / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295311.P16426649915299872850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295311 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295311.P16426649915299872850.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295312.P2048515004002335457

`A062401(n+1)/A295310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295312.P2048515004002335457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295312.P2048515004002335457

noncomputable section

/-- A295312: a(n) = A062401(n) / A295310(n) = phi(sigma(n)) / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295312.P2048515004002335457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295312.P2048515004002335457.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295501.P10862659346382347093

`A092589(2*n+1)+A000225(2*n+1)`
-/

namespace A295501.P10862659346382347093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092589 (2 * n + 1) + A000225 (2 * n + 1)

end

end A295501.P10862659346382347093

noncomputable section

/-- A295501: a(n) = phi(4^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295501.P10862659346382347093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A295501 (n : ℕ) : ℤ :=
  A295501.P10862659346382347093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A295501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304817.P8075664180131459050

`A183096(n+1)+1`
-/

namespace A304817.P8075664180131459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (n + 1) + 1

end

end A304817.P8075664180131459050

noncomputable section

/-- A304817: Number of divisors of n that are either 1 or not a perfect power.

Offset 1, canonical program `A304817.P8075664180131459050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817 (n : ℕ) : ℤ :=
  A304817.P8075664180131459050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317990.P13986122005631344601

`2^A317992(n+2)`
-/

namespace A317990.P13986122005631344601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317992 (n + 2) : ℤ)

end

end A317990.P13986122005631344601

noncomputable section

/-- A317990: Number of genera of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317990.P13986122005631344601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317990.P13986122005631344601.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319187.P5382770131251099215

`A000005(A045948(n+1))`
-/

namespace A319187.P5382770131251099215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A045948 (n + 1)).toNat

end

end A319187.P5382770131251099215

noncomputable section

/-- A319187: Number of pairwise coprime subsets of {1,...,n} of maximum cardinality (A036234).

Offset 1, canonical program `A319187.P5382770131251099215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A319187 (n : ℕ) : ℤ :=
  A319187.P5382770131251099215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A319187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319796.P9183521595932726378

`eq[gcd(2, n), A347950(n+1)]+1`
-/

namespace A319796.P9183521595932726378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319796.P9183521595932726378

noncomputable section

/-- A319796: Even numbers that have middle divisors, where "middle divisor" means a divisor in the half-open interval [sqrt(n/2), sqrt(n*2)).

Offset 1, canonical program `A319796.P9183521595932726378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9579 terms. -/
def A319796 (n : ℕ) : ℤ :=
  (A319796.P9183521595932726378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9579 terms. -/
def A319796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324183.P17718046273459172401

`A000005(A163511(n))`
-/

namespace A324183.P17718046273459172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A163511 n).toNat

end

end A324183.P17718046273459172401

noncomputable section

/-- A324183: a(n) = d(A163511(n)), where d(n) is A000005, the number of divisors of n.

Offset 0, canonical program `A324183.P17718046273459172401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324183 (n : ℕ) : ℤ :=
  A324183.P17718046273459172401.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324643.P7794025302369254202

`∩[A324639(n+1), A324652(n+1)]`
-/

namespace A324643.P7794025302369254202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324643.P7794025302369254202

noncomputable section

/-- A324643: Numbers k such that bitand(2k,sigma(k))/2 = k = bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324643.P7794025302369254202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A324643 (n : ℕ) : ℤ :=
  (A324643.P7794025302369254202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A324643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324718.P17421159723006763235

`A324639(eq[1, A324639(n+1)%2]+1)`
-/

namespace A324718.P17421159723006763235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324639 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324718.P17421159723006763235

noncomputable section

/-- A324718: Odd numbers n for which bitand(2n,sigma(n)) = 2*bitand(n,sigma(n)-n), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324718.P17421159723006763235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718 (n : ℕ) : ℤ :=
  A324718.P17421159723006763235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325446.P518244642965140129

`A254578(∏{p}[n+1, #])`
-/

namespace A325446.P518244642965140129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254578 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325446.P518244642965140129

noncomputable section

/-- A325446: The unitary version of Kalmár's function: number of ordered factorizations of n into powers of distinct primes.

Offset 1, canonical program `A325446.P518244642965140129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325446 (n : ℕ) : ℤ :=
  A325446.P518244642965140129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326675.P16861146496266880653

`filter[A087087(n+1), A267579(#)]`
-/

namespace A326675.P16861146496266880653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A326675.P16861146496266880653

noncomputable section

/-- A326675: The positions of 1's in the reversed binary expansion of n are pairwise coprime, where a singleton is not coprime unless it is {1}.

Offset 1, canonical program `A326675.P16861146496266880653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A326675 (n : ℕ) : ℤ :=
  A326675.P16861146496266880653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A326675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328103.P14408953863942436734

`xor(A110240(n), A267357(n))`
-/

namespace A328103.P14408953863942436734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A267357 n)

end

end A328103.P14408953863942436734

noncomputable section

/-- A328103: Bitwise XOR of trajectories of rule 30 and rule 124, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A267357(n).

Offset 0, canonical program `A328103.P14408953863942436734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A328103 (n : ℕ) : ℤ :=
  A328103.P14408953863942436734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A328103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330908.P5206692806244212137

`a(n-1)+A083399(a(n-1))` with `a(0)=1`
-/

namespace A330908.P5206692806244212137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A083399 (a (n - 1)).toNat

end

end A330908.P5206692806244212137

noncomputable section

/-- A330908: a(n+1) = a(n) + (number of divisors of a(n) that are not divisors of other divisors of a(n)) for n>1; a(1)=1.

Offset 1, canonical program `A330908.P5206692806244212137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330908 (n : ℕ) : ℤ :=
  A330908.P5206692806244212137.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083399, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332683.P11173983188310399264

`∑{d}[n+1, A055615(#)*A333465((n+1)/#)]`
-/

namespace A332683.P11173983188310399264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A333465 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332683.P11173983188310399264

noncomputable section

/-- A332683: a(n) = Sum_{k=1..n, gcd(n, k) = 1} ceiling(n/k).

Offset 1, canonical program `A332683.P11173983188310399264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332683 (n : ℕ) : ℤ :=
  A332683.P11173983188310399264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335858.P3204271633163649755

`A056539(A180200(n))`
-/

namespace A335858.P3204271633163649755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A180200 n).toNat

end

end A335858.P3204271633163649755

noncomputable section

/-- A335858: Nonnegative integers ordered by binary length and then lexicographically by run lengths (considering least significant runs first).

Offset 0, canonical program `A335858.P3204271633163649755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, A180200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335858 (n : ℕ) : ℤ :=
  A335858.P3204271633163649755.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056539, A180200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335858.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336318.P15824808439960842189

`A019554(A003557((n+1)*A000005(n+1)))`
-/

namespace A336318.P15824808439960842189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 ((n + 1 : ℤ) * A000005 (n + 1)).toNat).toNat

end

end A336318.P15824808439960842189

noncomputable section

/-- A336318: Square root of the largest square dividing n*d(n), where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A336318.P15824808439960842189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A336318 (n : ℕ) : ℤ :=
  A336318.P15824808439960842189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A336318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336647.P1309098233459700887

`1-A336566(n+1)+n`
-/

namespace A336647.P1309098233459700887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336566 (n + 1) + (n : ℤ)

end

end A336647.P1309098233459700887

noncomputable section

/-- A336647: a(n) = n - A336566(n).

Offset 1, canonical program `A336647.P1309098233459700887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336647 (n : ℕ) : ℤ :=
  A336647.P1309098233459700887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338245.P9307757376313236030

`A117966(record[A330740(n)])`
-/

namespace A338245.P9307757376313236030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338245.P9307757376313236030

noncomputable section

/-- A338245: Nonnegative values in A117966, in order of appearance.

Offset 0, canonical program `A338245.P9307757376313236030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245 (n : ℕ) : ℤ :=
  A338245.P9307757376313236030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338395.P13114426695192953794

`∩[A120736(n+1), A145551(n+1)]`
-/

namespace A338395.P13114426695192953794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338395.P13114426695192953794

noncomputable section

/-- A338395: Numbers m such that lcm(tau(m), sigma(m), pod(m)) = pod(m).

Offset 1, canonical program `A338395.P13114426695192953794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A338395 (n : ℕ) : ℤ :=
  (A338395.P13114426695192953794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A338395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341915.P11187009111869223306

`A003188(A056539(n))`
-/

namespace A341915.P11187009111869223306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A056539 n).toNat

end

end A341915.P11187009111869223306

noncomputable section

/-- A341915: For any nonnegative number n with runs in binary expansion (r_1, ..., r_w), a(n) = Sum_{k = 1..w} 2^(r_1 + ... + r_k - 1).

Offset 0, canonical program `A341915.P11187009111869223306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341915 (n : ℕ) : ℤ :=
  A341915.P11187009111869223306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345039.P8520321823126508405

`A057860(n+1)%A008619(A016035(n+1))`
-/

namespace A345039.P8520321823126508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057860 (n + 1)) (A008619 (A016035 (n + 1)).toNat)

end

end A345039.P8520321823126508405

noncomputable section

/-- A345039: Number of partitions of n into two composite parts that share a nontrivial divisor.

Offset 1, canonical program `A345039.P8520321823126508405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039 (n : ℕ) : ℤ :=
  A345039.P8520321823126508405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145391.P5707543150065796905

`(A000203(n+1)+A145390(n+1))/2`
-/

namespace A145391.P5707543150065796905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A145390 (n + 1) : ℚ) / 2

end

end A145391.P5707543150065796905

noncomputable section

/-- A145391: Number of inequivalent sublattices of index n in centered rectangular lattice.

Offset 1, canonical program `A145391.P5707543150065796905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145391 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145391.P5707543150065796905.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145391.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145393.P14008747392456650763

`(A000203(n+1)+A002654(n+1)+A069735(n+1)+A145390(n+1))/4`
-/

namespace A145393.P14008747392456650763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A002654 (n + 1) + A069735 (n + 1) + A145390 (n + 1) : ℚ) / 4

end

end A145393.P14008747392456650763

noncomputable section

/-- A145393: Number of inequivalent sublattices of index n in square lattice, where two sublattices are considered equivalent if one can be rotated or reflected to give the other, with that rotation or reflection preserving the parent square lattice.

Offset 1, canonical program `A145393.P14008747392456650763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, A069735, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145393 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145393.P14008747392456650763.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, A069735, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147809.P10773631260441325315

`Δ[A333171(n)/2]-1`
-/

namespace A147809.P10773631260441325315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333171 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A147809.P10773631260441325315

noncomputable section

/-- A147809: Half the number of proper divisors (> 1) of n^2 + 1, i.e., tau(n^2 + 1)/2 - 1.

Offset 1, canonical program `A147809.P10773631260441325315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147809.P10773631260441325315.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152468.P16510196203380355296

`A000040(A288041(n+1))`
-/

namespace A152468.P16510196203380355296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A288041 (n + 1)).toNat

end

end A152468.P16510196203380355296

noncomputable section

/-- A152468: Smallest of five consecutive primes whose sum is a prime.

Offset 1, canonical program `A152468.P16510196203380355296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152468 (n : ℕ) : ℤ :=
  A152468.P16510196203380355296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153207.P8862744067160107778

`p?[2*A039787(n+1)-1]`
-/

namespace A153207.P8862744067160107778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039787 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153207.P8862744067160107778

noncomputable section

/-- A153207: Primes of the form 2*p-1 where p is prime and p-1 is squarefree.

Offset 1, canonical program `A153207.P8862744067160107778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207 (n : ℕ) : ℤ :=
  A153207.P8862744067160107778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161840.P9787077699229106813

`2*A072670(n)`
-/

namespace A161840.P9787077699229106813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072670 n

end

end A161840.P9787077699229106813

noncomputable section

/-- A161840: Number of noncentral divisors of n.

Offset 1, canonical program `A161840.P9787077699229106813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161840 (n : ℕ) : ℤ :=
  A161840.P9787077699229106813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166362.P4389354821530071246

`A137148(n+1)/A018252(n+1)`
-/

namespace A166362.P4389354821530071246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137148 (n + 1) : ℚ) / (A018252 (n + 1) : ℚ)

end

end A166362.P4389354821530071246

noncomputable section

/-- A166362: a(n) = phi(nonprime(n)).

Offset 1, canonical program `A166362.P4389354821530071246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166362 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166362.P4389354821530071246.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168024.P3944607943034050874

`∩[A054964(n+1), A053755(n)]`
-/

namespace A168024.P3944607943034050874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168024.P3944607943034050874

noncomputable section

/-- A168024: Noncomposite numbers in the northwestern ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

Offset 0, canonical program `A168024.P3944607943034050874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A168024 (n : ℕ) : ℤ :=
  (A168024.P3944607943034050874.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A168024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177425.P11396916021114919551

`filter[A130091(n+1), A355447(#)]`
-/

namespace A177425.P11396916021114919551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A177425.P11396916021114919551

noncomputable section

/-- A177425: Integers with multiple and strictly distinct powers.

Offset 1, canonical program `A177425.P11396916021114919551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. -/
def A177425 (n : ℕ) : ℤ :=
  A177425.P11396916021114919551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. -/
def A177425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190471.P1363995098306444959

`A179643(n+1)²`
-/

namespace A190471.P1363995098306444959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (n + 1) ^ 2

end

end A190471.P1363995098306444959

noncomputable section

/-- A190471: Numbers with prime factorization p^2*q^4*r^4 where p, q, and r are distinct primes.

Offset 1, canonical program `A190471.P1363995098306444959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190471 (n : ℕ) : ℤ :=
  A190471.P1363995098306444959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226133.P1863923535064680015

`eq[2, A051709(24*n+1)]`
-/

namespace A226133.P1863923535064680015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P1863923535064680015

noncomputable section

/-- A226133: Integers of the form (p*q-1)/24 where p < q are primes.

Offset 1, canonical program `A226133.P1863923535064680015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133 (n : ℕ) : ℤ :=
  (A226133.P1863923535064680015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228441.P14298159713898062808

`A305152(n+1)-A348952(n+1)`
-/

namespace A228441.P14298159713898062808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305152 (n + 1) - A348952 (n + 1)

end

end A228441.P14298159713898062808

noncomputable section

/-- A228441: Expansion of Sum_{k>0} -(-x)^k / (1 + x^k).

Offset 1, canonical program `A228441.P14298159713898062808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305152, A348952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228441 (n : ℕ) : ℤ :=
  A228441.P14298159713898062808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305152, A348952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230834.P9285383202588386292

`∪[A001248(n+1), A107890(n+1)]`
-/

namespace A230834.P9285383202588386292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230834.P9285383202588386292

noncomputable section

/-- A230834: Loeschian semiprimes: semiprimes of the form x^2 + x*y + y^2.

Offset 1, canonical program `A230834.P9285383202588386292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230834 (n : ℕ) : ℤ :=
  (A230834.P9285383202588386292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230851.P4807682974501842405

`eq[0, A357761(A028310(n))]`
-/

namespace A230851.P4807682974501842405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357761 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230851.P4807682974501842405

noncomputable section

/-- A230851: Numbers with divisors which are half odious (A000069) and half evil (A001969).

Offset 1, canonical program `A230851.P4807682974501842405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3466 terms. -/
def A230851 (n : ℕ) : ℤ :=
  (A230851.P4807682974501842405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3466 terms. -/
def A230851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237349.P13854550475832125326

`∑[A211776(n+1)]`
-/

namespace A237349.P13854550475832125326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237349.P13854550475832125326

noncomputable section

/-- A237349: a(n) = Sum_{i=1..n} ( Product_{k|i} d(k) ), where d(n) = A000005(n).

Offset 1, canonical program `A237349.P13854550475832125326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237349 (n : ℕ) : ℤ :=
  A237349.P13854550475832125326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240474.P10629987593546331261

`A112926(n+1)-A000040(n+1)`
-/

namespace A240474.P10629987593546331261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - A000040 (n + 1)

end

end A240474.P10629987593546331261

noncomputable section

/-- A240474: Distance from prime(n) to the closest larger squarefree number.

Offset 1, canonical program `A240474.P10629987593546331261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A112926, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240474 (n : ℕ) : ℤ :=
  A240474.P10629987593546331261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A112926, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247129.P9398303988228665836

`∩[A262406(n+1), A324745(n+1)]`
-/

namespace A247129.P9398303988228665836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247129.P9398303988228665836

noncomputable section

/-- A247129: Semiprimes n such that phi(n) is a square.

Offset 1, canonical program `A247129.P9398303988228665836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A247129 (n : ℕ) : ℤ :=
  (A247129.P9398303988228665836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A247129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249242.P1072947971439864743

`filter[A357696(n+1), A008966(#)]`
-/

namespace A249242.P1072947971439864743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P1072947971439864743

noncomputable section

/-- A249242: Squarefree primitive abundant numbers (using the second definition: having no abundant proper divisors, cf. A091191).

Offset 1, canonical program `A249242.P1072947971439864743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A249242 (n : ℕ) : ℤ :=
  A249242.P1072947971439864743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A249242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256505.P5590298832183813363

`A102560(n)*A258764(n)`
-/

namespace A256505.P5590298832183813363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A258764 n

end

end A256505.P5590298832183813363

noncomputable section

/-- A256505: Expansion of phi(x^3) * phi(-x^48) / chi(-x^16) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A256505.P5590298832183813363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256505 (n : ℕ) : ℤ :=
  A256505.P5590298832183813363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270543.P5734163756768148192

`A226355(n)-A270544(n)`
-/

namespace A270543.P5734163756768148192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226355 n - A270544 n

end

end A270543.P5734163756768148192

noncomputable section

/-- A270543: Number of ordered pairs (i,j) of integers with |i|, |j| <= n, |i * j| <= n, and i even.

Offset 0, canonical program `A270543.P5734163756768148192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226355, A270544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270543 (n : ℕ) : ℤ :=
  A270543.P5734163756768148192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226355, A270544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279287.P12267829467651088072

`A062354(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279287.P12267829467651088072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279287.P12267829467651088072

noncomputable section

/-- A279287: a(n) = numerator of (phi(n)/tau(n)).

Offset 1, canonical program `A279287.P12267829467651088072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279287.P12267829467651088072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279288.P12363136388556004692

`A064840(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279288.P12363136388556004692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279288.P12363136388556004692

noncomputable section

/-- A279288: a(n) = denominator of (phi(n)/tau(n)).

Offset 1, canonical program `A279288.P12363136388556004692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279288.P12363136388556004692.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279912.P579018527015761516

`∑{d}[n, A342534(#)]`
-/

namespace A279912.P579018527015761516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342534 d

end

end A279912.P579018527015761516

noncomputable section

/-- A279912: a(n) = Sum_{i=1..n} denominator(i^n/n).

Offset 0, canonical program `A279912.P579018527015761516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279912 (n : ℕ) : ℤ :=
  A279912.P579018527015761516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284288.P13047089995370413038

`eq[1, A296084(n+2)]+2`
-/

namespace A284288.P13047089995370413038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296084 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284288.P13047089995370413038

noncomputable section

/-- A284288: Numbers n such that the average of the strong divisors of n is an integer.

Offset 1, canonical program `A284288.P13047089995370413038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288 (n : ℕ) : ℤ :=
  (A284288.P13047089995370413038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289412.P16736095440430260150

`A062354(n+1)/(A000203(n+1)*A009223(n+1))`
-/

namespace A289412.P16736095440430260150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A000203 (n + 1) * A009223 (n + 1) : ℚ)

end

end A289412.P16736095440430260150

noncomputable section

/-- A289412: a(n) = denominator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289412.P16736095440430260150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289412.P16736095440430260150.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289555.P9214579124908911506

`lt[A122179(n+1), 2]+1`
-/

namespace A289555.P9214579124908911506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289555.P9214579124908911506

noncomputable section

/-- A289555: Numbers that are not the product of two distinct composite numbers (A002808).

Offset 1, canonical program `A289555.P9214579124908911506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6428 terms. -/
def A289555 (n : ℕ) : ℤ :=
  (A289555.P9214579124908911506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6428 terms. -/
def A289555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293483.P17008692828281999765

`gcd(A046073(n+1), A087692(n+1))`
-/

namespace A293483.P17008692828281999765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046073 (n + 1)) (A087692 (n + 1))

end

end A293483.P17008692828281999765

noncomputable section

/-- A293483: The number of 6th powers in the multiplicative group modulo n.

Offset 1, canonical program `A293483.P17008692828281999765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293483 (n : ℕ) : ℤ :=
  (A293483.P17008692828281999765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297250.P2128841080923313740

`lt[A257075(A330740(n)), 0]`
-/

namespace A297250.P2128841080923313740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A330740 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297250.P2128841080923313740

noncomputable section

/-- A297250: Numbers whose base-3 digits having equal up-variation and down-variation; see Comments.

Offset 1, canonical program `A297250.P2128841080923313740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250 (n : ℕ) : ℤ :=
  (A297250.P2128841080923313740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306705.P258986654421283042

`A211776(n+1)*A007955(n+1)`
-/

namespace A306705.P258986654421283042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A007955 (n + 1)

end

end A306705.P258986654421283042

noncomputable section

/-- A306705: a(n) = Product_{d|n} d*tau(d), where tau(k) = the number of the divisors of k (A000005).

Offset 1, canonical program `A306705.P258986654421283042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306705 (n : ℕ) : ℤ :=
  A306705.P258986654421283042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307101.P8537828544159030044

`A211776(n+1)*A266265(n+1)`
-/

namespace A307101.P8537828544159030044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A266265 (n + 1)

end

end A307101.P8537828544159030044

noncomputable section

/-- A307101: a(n) = Product_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A307101.P8537828544159030044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101 (n : ℕ) : ℤ :=
  A307101.P8537828544159030044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A266265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308127.P13327846023797537183

`lt[A336564(n+2), 0]+2`
-/

namespace A308127.P13327846023797537183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A308127.P13327846023797537183

noncomputable section

/-- A308127: Non-coreful abundant numbers: numbers k such that ncsigma(k) > k, where ncsigma(k) is the sum of the non-coreful divisors of k (A308135).

Offset 1, canonical program `A308127.P13327846023797537183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127 (n : ℕ) : ℤ :=
  (A308127.P13327846023797537183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A308127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308735.P3671418607265980863

`∩[A074173(n+1)-2, A074173(n+1)]`
-/

namespace A308735.P3671418607265980863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308735.P3671418607265980863

noncomputable section

/-- A308735: Numbers k such that k, k+2, k+4 are of the form p^2*q where p and q are distinct primes.

Offset 1, canonical program `A308735.P3671418607265980863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A308735 (n : ℕ) : ℤ :=
  (A308735.P3671418607265980863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A308735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321559.P7262687384020969472

`∑{d}[n+1, A048272(#)*A338548((n+1)/#)]`
-/

namespace A321559.P7262687384020969472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A338548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321559.P7262687384020969472

noncomputable section

/-- A321559: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^3.

Offset 1, canonical program `A321559.P7262687384020969472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321559 (n : ℕ) : ℤ :=
  A321559.P7262687384020969472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324506.P94793196211163730

`lcm(A211776(n+1), A324528(n+1))/A211776(n+1)`
-/

namespace A324506.P94793196211163730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A211776 (n + 1)) (A324528 (n + 1)) : ℚ) / (A211776 (n + 1) : ℚ)

end

end A324506.P94793196211163730

noncomputable section

/-- A324506: a(n) = numerator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324506.P94793196211163730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324506.P94793196211163730.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A324506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324987.P8516522238142221185

`A211776(n+1)*A206032(n+1)`
-/

namespace A324987.P8516522238142221185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A206032 (n + 1)

end

end A324987.P8516522238142221185

noncomputable section

/-- A324987: a(n) = Product_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324987.P8516522238142221185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324987 (n : ℕ) : ℤ :=
  A324987.P8516522238142221185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325939.P14233231963195728863

`1-A048272(n+1)`
-/

namespace A325939.P14233231963195728863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A048272 (n + 1)

end

end A325939.P14233231963195728863

noncomputable section

/-- A325939: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k).

Offset 1, canonical program `A325939.P14233231963195728863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325939 (n : ℕ) : ℤ :=
  A325939.P14233231963195728863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325940.P5826704247194185154

`A048272(n+1)-A002129(n+1)`
-/

namespace A325940.P5826704247194185154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A002129 (n + 1)

end

end A325940.P5826704247194185154

noncomputable section

/-- A325940: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325940.P5826704247194185154`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325940 (n : ℕ) : ℤ :=
  A325940.P5826704247194185154.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328160.P15930249408114745958

`p?[2*A276305(n+1)-1]`
-/

namespace A328160.P15930249408114745958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276305 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328160.P15930249408114745958

noncomputable section

/-- A328160: Terms k of A112998 such that k+2 is nonsquarefree.

Offset 1, canonical program `A328160.P15930249408114745958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160 (n : ℕ) : ℤ :=
  A328160.P15930249408114745958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331072.P15370853631456897053

`∑[A122179(n+1)+ceil(∏{e}[n+1, #+1]/2)]`
-/

namespace A331072.P15370853631456897053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1) + ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331072.P15370853631456897053

noncomputable section

/-- A331072: a(n) = Sum_{k = 1..n} u_3(k), where u_3 = A034836.

Offset 1, canonical program `A331072.P15370853631456897053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331072 (n : ℕ) : ℤ :=
  A331072.P15370853631456897053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334470.P14237330415455119872

`A253139(n+1)^A000005(n+1)/A211776(n+1)`
-/

namespace A334470.P14237330415455119872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253139 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ) / (A211776 (n + 1) : ℚ)

end

end A334470.P14237330415455119872

noncomputable section

/-- A334470: a(n) = Product_{d|n} (A253139(n) / tau(d)) where A253139(n) = lcm_{d|n} tau(d).

Offset 1, canonical program `A334470.P14237330415455119872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A211776, A253139, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334470.P14237330415455119872.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A211776, A253139, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336554.P9192050321273390476

`∩[or(1, A011775(n+1)), A175200(n+1)]`
-/

namespace A336554.P9192050321273390476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011775 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336554.P9192050321273390476

noncomputable section

/-- A336554: Odd numbers k such that rad(k) divides sigma(k).

Offset 1, canonical program `A336554.P9192050321273390476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A336554 (n : ℕ) : ℤ :=
  (A336554.P9192050321273390476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A336554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338713.P15967198908333661238

`A230980(n)^A024008(A072670(n))`
-/

namespace A338713.P15967198908333661238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230980 n : ℚ) ^ (A024008 (A072670 n).toNat : ℤ)

end

end A338713.P15967198908333661238

noncomputable section

/-- A338713: Number of numbers of the form i*n with 1 <= i <= n and tau(i*n) = 4.

Offset 1, canonical program `A338713.P15967198908333661238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338713.P15967198908333661238.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339871.P15676400501281653132

`A001221(A160595(n+1))`
-/

namespace A339871.P15676400501281653132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160595 (n + 1)).toNat

end

end A339871.P15676400501281653132

noncomputable section

/-- A339871: Number of primes p for which the p-adic valuation of phi(n) exceeds the p-adic valuation of n-1, with a(1) = 0 by convention.

Offset 1, canonical program `A339871.P15676400501281653132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339871 (n : ℕ) : ℤ :=
  A339871.P15676400501281653132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343228.P395779845011442952

`A289831(A060372(n))`
-/

namespace A343228.P395779845011442952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060372 n).toNat

end

end A343228.P395779845011442952

noncomputable section

/-- A343228: A binary encoding of the digits "+1" in balanced ternary representation of n.

Offset 0, canonical program `A343228.P395779845011442952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228 (n : ℕ) : ℤ :=
  A343228.P395779845011442952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344996.P14741742852646072087

`A048250(n+1)*A051709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344996.P14741742852646072087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A051709 (n + 1)

end

end A344996.P14741742852646072087

noncomputable section

/-- A344996: a(n) = A048250(n) * A051709(n).

Offset 1, canonical program `A344996.P14741742852646072087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A051709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344996 (n : ℕ) : ℤ :=
  A344996.P14741742852646072087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A051709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346009.P10450314313708159874

`A062799(n+1)/A000005(n+1)*A346010(n+1)`
-/

namespace A346009.P10450314313708159874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062799 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A346010 (n + 1) : ℚ)

end

end A346009.P10450314313708159874

noncomputable section

/-- A346009: a(n) is the numerator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346009.P10450314313708159874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346009.P10450314313708159874.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259980.P4270422269286264128

`p?[A030515(n+1)-1]+1`
-/

namespace A259980.P4270422269286264128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A259980.P4270422269286264128

noncomputable section

/-- A259980: Numbers that are 1+prime and have 4 proper divisors.

Offset 1, canonical program `A259980.P4270422269286264128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A259980 (n : ℕ) : ℤ :=
  A259980.P4270422269286264128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A259980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337688.P213648959849896231

`lt[1, A337690(n+1)]+1`
-/

namespace A337688.P213648959849896231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337688.P213648959849896231

noncomputable section

/-- A337688: Numbers divisible by 2 or more primitive nondeficient numbers.

Offset 1, canonical program `A337688.P213648959849896231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688 (n : ℕ) : ℤ :=
  (A337688.P213648959849896231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688.provenance : SequenceMachineLib.Provenance := .conjectured

