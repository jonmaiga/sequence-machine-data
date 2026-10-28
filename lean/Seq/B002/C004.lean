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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

Offset 0, canonical program `A153466.P2922486959135561412`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A027941(n)+A027941(n+6)` (program `A153466.P2922486959135561412`, by `A153466.P2922486959135561412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A153466 (n : ℕ) : ℤ :=
  A153466.P2922486959135561412.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A027941(n)+A027941(n+6)` (program `A153466.P2922486959135561412`, by `A153466.P2922486959135561412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A153466.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 0, canonical program `A156331.P9268504184016860715`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*A154811(n)` (program `A156331.P9268504184016860715`, by `A156331.P9268504184016860715.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156331 (n : ℕ) : ℤ :=
  A156331.P9268504184016860715.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*A154811(n)` (program `A156331.P9268504184016860715`, by `A156331.P9268504184016860715.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156331.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160650.P1545316791043545642

`A160649(n+2)-A160649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160650.P1545316791043545642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160649 (n + 2) - A160649 (n + 1)

end

end A160650.P1545316791043545642

noncomputable section

/-- A160650: a(n) = A001222(A160649(n)) = A160649(n+1) - A160649(n); where A001222(m) is the sum of prime-factorization exponents of m (or, A001222(m) is the number of primes dividing m, counted with multiplicity).

Offset 1, canonical program `A160650.P1545316791043545642`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A160649(n+2)-A160649(n+1)` (program `A160650.P1545316791043545642`, by `A160650.P1545316791043545642.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160650 (n : ℕ) : ℤ :=
  A160650.P1545316791043545642.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A160649(n+2)-A160649(n+1)` (program `A160650.P1545316791043545642`, by `A160650.P1545316791043545642.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160650.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A161671.P6686431630733255058

`A000040(n+1)-A141468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161671.P6686431630733255058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141468 (n + 1)

end

end A161671.P6686431630733255058

noncomputable section

/-- A161671: a(n) = prime(n) - A141468(n).

Offset 1, canonical program `A161671.P6686431630733255058`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-A141468(n+1)` (program `A161671.P6686431630733255058`, by `A161671.P6686431630733255058.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161671 (n : ℕ) : ℤ :=
  A161671.P6686431630733255058.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-A141468(n+1)` (program `A161671.P6686431630733255058`, by `A161671.P6686431630733255058.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161671.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168194.P12245219511492537405

`n²²+n*A085744(n)`
-/

namespace A168194.P12245219511492537405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) + (n : ℤ) * A085744 n

end

end A168194.P12245219511492537405

noncomputable section

/-- A168194: a(n) = n^4*(n^3 + 1)/2.

Offset 0, canonical program `A168194.P12245219511492537405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^3+1)/2` (program `A168194.P10601667928187439607`, by `A168194.P10601667928187439607.correct`). Lean does not check the parsing of the name. -/
def A168194 (n : ℕ) : ℤ :=
  A168194.P12245219511492537405.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^3+1)/2` (program `A168194.P10601667928187439607`, by `A168194.P10601667928187439607.correct`). Lean does not check the parsing of the name. -/
def A168194.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168371.P6876523043073551234

`n²*A071232(n)`
-/

namespace A168371.P6876523043073551234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A071232 n

end

end A168371.P6876523043073551234

noncomputable section

/-- A168371: a(n) = n^5*(n^3 + 1)/2.

Offset 0, canonical program `A168371.P6876523043073551234`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^3+1)/2` (program `A168371.P940306952868019815`, by `A168371.P940306952868019815.correct`). Lean does not check the parsing of the name. -/
def A168371 (n : ℕ) : ℤ :=
  A168371.P6876523043073551234.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^3+1)/2` (program `A168371.P940306952868019815`, by `A168371.P940306952868019815.correct`). Lean does not check the parsing of the name. -/
def A168371.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168555.P8829824917545449198

`n^3*A071232(n)`
-/

namespace A168555.P8829824917545449198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A071232 n

end

end A168555.P8829824917545449198

noncomputable section

/-- A168555: a(n) = n^6*(n^3 + 1)/2.

Offset 0, canonical program `A168555.P8829824917545449198`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^3+1)/2` (program `A168555.P2467753698632672851`, by `A168555.P2467753698632672851.correct`). Lean does not check the parsing of the name. -/
def A168555 (n : ℕ) : ℤ :=
  A168555.P8829824917545449198.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^3+1)/2` (program `A168555.P2467753698632672851`, by `A168555.P2467753698632672851.correct`). Lean does not check the parsing of the name. -/
def A168555.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170781.P7318002403656196438

`n*A168666(n)`
-/

namespace A170781.P7318002403656196438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168666 n

end

end A170781.P7318002403656196438

noncomputable section

/-- A170781: a(n) = n^8*(n^9 + 1)/2.

Offset 0, canonical program `A170781.P7318002403656196438`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^9+1)/2` (program `A170781.P13674484255828465593`, by `A170781.P13674484255828465593.correct`). Lean does not check the parsing of the name. -/
def A170781 (n : ℕ) : ℤ :=
  A170781.P7318002403656196438.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^9+1)/2` (program `A170781.P13674484255828465593`, by `A170781.P13674484255828465593.correct`). Lean does not check the parsing of the name. -/
def A170781.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170782.P12420685918550385898

`n*A168667(n)`
-/

namespace A170782.P12420685918550385898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168667 n

end

end A170782.P12420685918550385898

noncomputable section

/-- A170782: a(n) = n^8*(n^10 + 1)/2.

Offset 0, canonical program `A170782.P12420685918550385898`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^10+1)/2` (program `A170782.P1614737055024139455`, by `A170782.P1614737055024139455.correct`). Lean does not check the parsing of the name. -/
def A170782 (n : ℕ) : ℤ :=
  A170782.P12420685918550385898.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(n^10+1)/2` (program `A170782.P1614737055024139455`, by `A170782.P1614737055024139455.correct`). Lean does not check the parsing of the name. -/
def A170782.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170785.P2414749311036325449

`(n*n²)²*A071232(n)`
-/

namespace A170785.P2414749311036325449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2 : ℤ) * A071232 n

end

end A170785.P2414749311036325449

noncomputable section

/-- A170785: a(n) = n^9*(n^3 + 1)/2.

Offset 0, canonical program `A170785.P2414749311036325449`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^3+1)/2` (program `A170785.P14708336715475893211`, by `A170785.P14708336715475893211.correct`). Lean does not check the parsing of the name. -/
def A170785 (n : ℕ) : ℤ :=
  A170785.P2414749311036325449.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^3+1)/2` (program `A170785.P14708336715475893211`, by `A170785.P14708336715475893211.correct`). Lean does not check the parsing of the name. -/
def A170785.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170792.P183484335092405969

`n*n*A168667(n)`
-/

namespace A170792.P183484335092405969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168667 n)

end

end A170792.P183484335092405969

noncomputable section

/-- A170792: a(n) = n^9*(n^10 + 1)/2.

Offset 0, canonical program `A170792.P183484335092405969`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^10+1)/2` (program `A170792.P7821020768952903033`, by `A170792.P7821020768952903033.correct`). Lean does not check the parsing of the name. -/
def A170792 (n : ℕ) : ℤ :=
  A170792.P183484335092405969.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^10+1)/2` (program `A170792.P7821020768952903033`, by `A170792.P7821020768952903033.correct`). Lean does not check the parsing of the name. -/
def A170792.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170793.P10294149420568160994

`n²*A168675(n)`
-/

namespace A170793.P10294149420568160994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168675 n

end

end A170793.P10294149420568160994

noncomputable section

/-- A170793: a(n) = n^10*(n + 1)/2.

Offset 0, canonical program `A170793.P10294149420568160994`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n+1)/2` (program `A170793.P4395528040556316992`, by `A170793.P4395528040556316992.correct`). Lean does not check the parsing of the name. -/
def A170793 (n : ℕ) : ℤ :=
  A170793.P10294149420568160994.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n+1)/2` (program `A170793.P4395528040556316992`, by `A170793.P4395528040556316992.correct`). Lean does not check the parsing of the name. -/
def A170793.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170797.P13060072336293587536

`n*n*A170777(n)`
-/

namespace A170797.P13060072336293587536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A170777 n)

end

end A170797.P13060072336293587536

noncomputable section

/-- A170797: a(n) = n^10*(n^5+1)/2.

Offset 0, canonical program `A170797.P13060072336293587536`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^5+1)/2` (program `A170797.P11074134541301632868`, by `A170797.P11074134541301632868.correct`). Lean does not check the parsing of the name. -/
def A170797 (n : ℕ) : ℤ :=
  A170797.P13060072336293587536.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^5+1)/2` (program `A170797.P11074134541301632868`, by `A170797.P11074134541301632868.correct`). Lean does not check the parsing of the name. -/
def A170797.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174433.P6249315358605907435

`A000040(row(n)+1)%A001223(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174433.P6249315358605907435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.triRow n + 1)) (A001223 (SequenceMachineLib.triCol n + 1))

end

end A174433.P6249315358605907435

noncomputable section

/-- A174433: Triangle read by rows: T(n,k) = prime(n) mod A001223(k), where A001223 are differences between consecutive primes.

Offset 1, canonical program `A174433.P6249315358605907435`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)+1)%A001223(col(n)+1)` (program `A174433.P6249315358605907435`, by `A174433.P6249315358605907435.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174433 (n : ℕ) : ℤ :=
  A174433.P6249315358605907435.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)+1)%A001223(col(n)+1)` (program `A174433.P6249315358605907435`, by `A174433.P6249315358605907435.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174433.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A176246.P14955082673946823167

`A001223(n+2)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176246.P14955082673946823167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - 1

end

end A176246.P14955082673946823167

noncomputable section

/-- A176246: a(n) = A001223(n+1) - 1.

Offset 1, canonical program `A176246.P14955082673946823167`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001223(n+2)-1` (program `A176246.P14955082673946823167`, by `A176246.P14955082673946823167.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176246 (n : ℕ) : ℤ :=
  A176246.P14955082673946823167.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001223(n+2)-1` (program `A176246.P14955082673946823167`, by `A176246.P14955082673946823167.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176246.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A176344.P8079700047090408420

`1+A176343(row(n))-A176343(col(n))-A176343(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176344.P8079700047090408420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A176343 (SequenceMachineLib.triRow n) - A176343 (SequenceMachineLib.triCol n) - A176343 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A176344.P8079700047090408420

noncomputable section

/-- A176344: T(n,k) = 1 + A176343(n) - A176343(k) - A176343(n-k), triangle read by rows (n >= 0, 0 <= k <= n).

Offset 0, canonical program `A176344.P8079700047090408420`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A176343(row(n))-A176343(col(n))-A176343(row(n)-col(n))` (program `A176344.P8079700047090408420`, by `A176344.P8079700047090408420.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176344 (n : ℕ) : ℤ :=
  A176344.P8079700047090408420.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A176343(row(n))-A176343(col(n))-A176343(row(n)-col(n))` (program `A176344.P8079700047090408420`, by `A176344.P8079700047090408420.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176344.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A176393.P4613748579070152281

`2*A141468(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176393.P4613748579070152281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1) + 1

end

end A176393.P4613748579070152281

noncomputable section

/-- A176393: a(n) = A176100(n) + 1 = 2*A141468(n) + 1.

Offset 1, canonical program `A176393.P4613748579070152281`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A141468(n+1)+1` (program `A176393.P4613748579070152281`, by `A176393.P4613748579070152281.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176393 (n : ℕ) : ℤ :=
  A176393.P4613748579070152281.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A141468(n+1)+1` (program `A176393.P4613748579070152281`, by `A176393.P4613748579070152281.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A176393.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A181555.P5413728475479064369

`A002110(n)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181555.P5413728475479064369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n ^ n

end

end A181555.P5413728475479064369

noncomputable section

/-- A181555: a(n) = A002110(n)^n.

Offset 0, canonical program `A181555.P5413728475479064369`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(n)^n` (program `A181555.P5413728475479064369`, by `A181555.P5413728475479064369.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A181555 (n : ℕ) : ℤ :=
  A181555.P5413728475479064369.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(n)^n` (program `A181555.P5413728475479064369`, by `A181555.P5413728475479064369.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A181555.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A197100.P17469599944022830337

`2*A197072(n)-A197072(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A197100.P17469599944022830337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197072 n - A197072 (n + 1)

end

end A197100.P17469599944022830337

noncomputable section

/-- A197100: 2*A197072(n-1) - A197072(n).

Offset 1, canonical program `A197100.P17469599944022830337`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A197072(n)-A197072(n+1)` (program `A197100.P17469599944022830337`, by `A197100.P17469599944022830337.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A197100 (n : ℕ) : ℤ :=
  A197100.P17469599944022830337.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A197072(n)-A197072(n+1)` (program `A197100.P17469599944022830337`, by `A197100.P17469599944022830337.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A197100.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A156263.P6800040278020113094

`A000002(3*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156263.P6800040278020113094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * (n + 1) - 1)

end

end A156263.P6800040278020113094

noncomputable section

/-- A156263: a(n)=A000002(3*n-1).

Offset 1, canonical program `A156263.P6800040278020113094`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000002(3*(n+1)-1)` (program `A156263.P6800040278020113094`, by `A156263.P6800040278020113094.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156263 (n : ℕ) : ℤ :=
  A156263.P6800040278020113094.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000002(3*(n+1)-1)` (program `A156263.P6800040278020113094`, by `A156263.P6800040278020113094.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156263.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A156264.P13938307247188690438

`A000002(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156264.P13938307247188690438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * n + 1)

end

end A156264.P13938307247188690438

noncomputable section

/-- A156264: a(n) = A000002(3*n-2), where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A156264.P13938307247188690438`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000002(3*n+1)` (program `A156264.P13938307247188690438`, by `A156264.P13938307247188690438.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156264 (n : ℕ) : ℤ :=
  A156264.P13938307247188690438.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000002(3*n+1)` (program `A156264.P13938307247188690438`, by `A156264.P13938307247188690438.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156264.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168122.P7248320265553921643

`n*A021003(n)`
-/

namespace A168122.P7248320265553921643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A021003 n

end

end A168122.P7248320265553921643

noncomputable section

/-- A168122: a(n) = n^2*(n^4+1)/2.

Offset 0, canonical program `A168122.P7248320265553921643`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^4+1)/2` (program `A168122.P3257519143886894952`, by `A168122.P3257519143886894952.correct`). Lean does not check the parsing of the name. -/
def A168122 (n : ℕ) : ℤ :=
  A168122.P7248320265553921643.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^4+1)/2` (program `A168122.P3257519143886894952`, by `A168122.P3257519143886894952.correct`). Lean does not check the parsing of the name. -/
def A168122.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168126.P16335936482429578033

`A021003(n²)`
-/

namespace A168126.P16335936482429578033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n ^ 2)

end

end A168126.P16335936482429578033

noncomputable section

/-- A168126: a(n) = n^2*(n^8+1)/2.

Offset 0, canonical program `A168126.P16335936482429578033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^8+1)/2` (program `A168126.P3940529060177386686`, by `A168126.P3940529060177386686.correct`). Lean does not check the parsing of the name. -/
def A168126 (n : ℕ) : ℤ :=
  A168126.P16335936482429578033.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^8+1)/2` (program `A168126.P3940529060177386686`, by `A168126.P3940529060177386686.correct`). Lean does not check the parsing of the name. -/
def A168126.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168179.P8566416021942520231

`n²*A021003(n)`
-/

namespace A168179.P8566416021942520231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A021003 n

end

end A168179.P8566416021942520231

noncomputable section

/-- A168179: a(n) = n^3*(n^4 + 1)/2.

Offset 0, canonical program `A168179.P8566416021942520231`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^4+1)/2` (program `A168179.P3188294344953161014`, by `A168179.P3188294344953161014.correct`). Lean does not check the parsing of the name. -/
def A168179 (n : ℕ) : ℤ :=
  A168179.P8566416021942520231.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^4+1)/2` (program `A168179.P3188294344953161014`, by `A168179.P3188294344953161014.correct`). Lean does not check the parsing of the name. -/
def A168179.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168189.P7493123367083644094

`n*A021003(n²)`
-/

namespace A168189.P7493123367083644094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A021003 (n ^ 2)

end

end A168189.P7493123367083644094

noncomputable section

/-- A168189: a(n) = n^3*(n^8 + 1)/2.

Offset 0, canonical program `A168189.P7493123367083644094`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^8+1)/2` (program `A168189.P6408546419950348721`, by `A168189.P6408546419950348721.correct`). Lean does not check the parsing of the name. -/
def A168189 (n : ℕ) : ℤ :=
  A168189.P7493123367083644094.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^8+1)/2` (program `A168189.P6408546419950348721`, by `A168189.P6408546419950348721.correct`). Lean does not check the parsing of the name. -/
def A168189.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A178207.P6849069651503940150

`4*n-2*A000120(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178207.P6849069651503940150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 2 * A000120 n + 1

end

end A178207.P6849069651503940150

noncomputable section

/-- A178207: a(n) = 4*n - 2*A000120(n) + 1 where A000120(n) = number of nonzero digits in the binary representation of n.

Offset 0, canonical program `A178207.P6849069651503940150`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-2*A000120(n)+1` (program `A178207.P6849069651503940150`, by `A178207.P6849069651503940150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A178207 (n : ℕ) : ℤ :=
  A178207.P6849069651503940150.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-2*A000120(n)+1` (program `A178207.P6849069651503940150`, by `A178207.P6849069651503940150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A178207.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A153848.P12709393412551249424

`21*A094028(n)`
-/

namespace A153848.P12709393412551249424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A094028 n

end

end A153848.P12709393412551249424

noncomputable section

/-- A153848: a(n) = 7*(10^(2*n) - 1)/33.

Offset 1, canonical program `A153848.P12709393412551249424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153848 (n : ℕ) : ℤ :=
  A153848.P12709393412551249424.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153848.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A154115.P220062109648616098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154115 (n : ℕ) : ℤ :=
  A154115.P220062109648616098.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154604.P5746987120745164795

`A006472(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A154604.P5746987120745164795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006472 (n + 1) * a (n - 1)

end

end A154604.P5746987120745164795

noncomputable section

/-- A154604: Hankel transform of reduced tangent numbers.

Offset 0, canonical program `A154604.P5746987120745164795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154604 (n : ℕ) : ℤ :=
  A154604.P5746987120745164795.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A155067.P7765073929489632747

`A031131(2*n+1)`
-/

namespace A155067.P7765073929489632747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * n + 1)

end

end A155067.P7765073929489632747

noncomputable section

/-- A155067: First differences of A031368.

Offset 1, canonical program `A155067.P7765073929489632747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155067 (n : ℕ) : ℤ :=
  A155067.P7765073929489632747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A155750.P12905767560372955311

`A031131(2*(n+1))`
-/

namespace A155750.P12905767560372955311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1))

end

end A155750.P12905767560372955311

noncomputable section

/-- A155750: First differences of A031215.

Offset 1, canonical program `A155750.P12905767560372955311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155750 (n : ℕ) : ℤ :=
  A155750.P12905767560372955311.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156017.P8308625821762049719

`2^n*A006318(n)`
-/

namespace A156017.P8308625821762049719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006318 n

end

end A156017.P8308625821762049719

noncomputable section

/-- A156017: Schroeder paths with two rise colors and two level colors.

Offset 0, canonical program `A156017.P8308625821762049719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156017 (n : ℕ) : ℤ :=
  A156017.P8308625821762049719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156017.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A156093.P6546827824557751046

`A156092(n)/9`
-/

namespace A156093.P6546827824557751046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156092 n : ℚ) / 9

end

end A156093.P6546827824557751046

noncomputable section

/-- A156093: One ninth of the alternating sum of the squares of the first n Fibonacci numbers with index divisible by 4.

Offset 0, canonical program `A156093.P6546827824557751046`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156093 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156093.P6546827824557751046.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156353.P8326413882175110016

`A004736(n+1)^A002260(n+1)+A002260(n+1)^A004736(n+1)`
-/

namespace A156353.P8326413882175110016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ) + (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A156353.P8326413882175110016

noncomputable section

/-- A156353: A symmetrical powers triangle sequence: t(n,m) = (m^(n - m) + (n - m)^m).

Offset 1, canonical program `A156353.P8326413882175110016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156353.P8326413882175110016.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156542.P6738080021665822657

`∑{p}[n+1, A101264(#)]`
-/

namespace A156542.P6738080021665822657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A101264 p

end

end A156542.P6738080021665822657

noncomputable section

/-- A156542: Number of distinct Sophie Germain prime factors of n.

Offset 1, canonical program `A156542.P6738080021665822657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156542 (n : ℕ) : ℤ :=
  A156542.P6738080021665822657.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156641.P17900009512747102704

`13*A094028(n)`
-/

namespace A156641.P17900009512747102704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A094028 n

end

end A156641.P17900009512747102704

noncomputable section

/-- A156641: a(n) = 13*(100^(n+1) - 1)/99.

Offset 0, canonical program `A156641.P17900009512747102704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156641 (n : ℕ) : ℤ :=
  A156641.P17900009512747102704.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157625.P6248619431147432614

`(n+1)!*A000984(n+1)*A034386(n+1)/A034386(2*(n+1))`
-/

namespace A157625.P6248619431147432614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A000984 (n + 1) * A034386 (n + 1) : ℚ) / (A034386 (2 * (n + 1)) : ℚ)

end

end A157625.P6248619431147432614

noncomputable section

/-- A157625: Product of the composite numbers between n+1 and 2n, both inclusive.

Offset 1, canonical program `A157625.P6248619431147432614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157625 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157625.P6248619431147432614.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157687.P3194273760277078501

`1-A156728(n+1)`
-/

namespace A157687.P3194273760277078501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156728 (n + 1)

end

end A157687.P3194273760277078501

noncomputable section

/-- A157687: a(n) = n - A054353(A156351(n)).

Offset 1, canonical program `A157687.P3194273760277078501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157687 (n : ℕ) : ℤ :=
  A157687.P3194273760277078501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157742.P14907763091943535847

`A006094(n+3)%9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157742.P14907763091943535847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 3)) 9

end

end A157742.P14907763091943535847

noncomputable section

/-- A157742: A006094(n+3) mod 9.

Offset 0, canonical program `A157742.P14907763091943535847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157742 (n : ℕ) : ℤ :=
  A157742.P14907763091943535847.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158005.P6404449619508053360

`A000142(n+4)-A005802(n+4)`
-/

namespace A158005.P6404449619508053360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 4) - A005802 (n + 4)

end

end A158005.P6404449619508053360

noncomputable section

/-- A158005: Numbers of pattern-matching permutations of (1234) for the permutations of {1, 2, ..., n} on n = 4, 5, 6, ... elements.

Offset 4, canonical program `A158005.P6404449619508053360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158005 (n : ℕ) : ℤ :=
  A158005.P6404449619508053360.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158341.P1356125387868036850

`A013928(A002110(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158341.P1356125387868036850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A002110 n).toNat

end

end A158341.P1356125387868036850

noncomputable section

/-- A158341: a(n) = A013928(A002110(n)).

Offset 0, canonical program `A158341.P1356125387868036850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158341 (n : ℕ) : ℤ :=
  A158341.P1356125387868036850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158522.P8664483793613272313

`(-1)^A001222(n+1)*A034444(n+1)`
-/

namespace A158522.P8664483793613272313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A034444 (n + 1) : ℚ)

end

end A158522.P8664483793613272313

noncomputable section

/-- A158522: Dirichlet inverse of number of unitary divisors of n (A034444).

Offset 1, canonical program `A158522.P8664483793613272313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158522 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158522.P8664483793613272313.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158523.P14887875491729113623

`(-1)^A001222(n+1)*A001615(n+1)`
-/

namespace A158523.P14887875491729113623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A001615 (n + 1) : ℚ)

end

end A158523.P14887875491729113623

noncomputable section

/-- A158523: Moebius transform of negated primes in factorization of n.

Offset 1, canonical program `A158523.P14887875491729113623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158523 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158523.P14887875491729113623.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158573.P7707022528032758565

`floor(A132231(n+1)/30)`
-/

namespace A158573.P7707022528032758565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132231 (n + 1) : ℚ) / 30⌋

end

end A158573.P7707022528032758565

noncomputable section

/-- A158573: Numbers k such that 30*k + 7 is prime.

Offset 1, canonical program `A158573.P7707022528032758565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158573 (n : ℕ) : ℤ :=
  A158573.P7707022528032758565.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158648.P12379688915653926394

`floor(A039949(n+1)/30)`
-/

namespace A158648.P12379688915653926394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039949 (n + 1) : ℚ) / 30⌋

end

end A158648.P12379688915653926394

noncomputable section

/-- A158648: Numbers n such that 30*n + 17 is prime.

Offset 1, canonical program `A158648.P12379688915653926394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158648 (n : ℕ) : ℤ :=
  A158648.P12379688915653926394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158916.P6269727776857276970

`(-1)^n*A154589(n)+A099838(n+4)`
-/

namespace A158916.P6269727776857276970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A154589 n + A099838 (n + 4)

end

end A158916.P6269727776857276970

noncomputable section

/-- A158916: Inverse binomial transform of A153130.

Offset 0, canonical program `A158916.P6269727776857276970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158916 (n : ℕ) : ℤ :=
  A158916.P6269727776857276970.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159076.P11277742633857002017

`A008474(n+1)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159076.P11277742633857002017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) + 2

end

end A159076.P11277742633857002017

noncomputable section

/-- A159076: A008474(n) + 2.

Offset 1, canonical program `A159076.P11277742633857002017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159076 (n : ℕ) : ℤ :=
  A159076.P11277742633857002017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159913.P7024736967465711485

`A038573(2*n+1)`
-/

namespace A159913.P7024736967465711485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * n + 1)

end

end A159913.P7024736967465711485

noncomputable section

/-- A159913: a(n) = 2^(A000120(n) + 1) - 1, where A000120(n) = number of nonzero bits in n.

Offset 0, canonical program `A159913.P7024736967465711485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159913 (n : ℕ) : ℤ :=
  A159913.P7024736967465711485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159918.P9044221650156537237

`A000120(n²)`
-/

namespace A159918.P9044221650156537237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n ^ 2)

end

end A159918.P9044221650156537237

noncomputable section

/-- A159918: Number of ones in binary representation of n^2.

Offset 0, canonical program `A159918.P9044221650156537237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159918 (n : ℕ) : ℤ :=
  A159918.P9044221650156537237.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160429.P17383197603716212150

`8*7^A000120(n)`
-/

namespace A160429.P17383197603716212150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (7 : ℚ) ^ (A000120 n : ℤ)

end

end A160429.P17383197603716212150

noncomputable section

/-- A160429: First differences of A160428.

Offset 1, canonical program `A160429.P17383197603716212150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160429.P17383197603716212150.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160491.P14155567290424299715

`A062481(n+2)-A062481(n+1)`
-/

namespace A160491.P14155567290424299715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 2) - A062481 (n + 1)

end

end A160491.P14155567290424299715

noncomputable section

/-- A160491: First differences of A062481.

Offset 1, canonical program `A160491.P14155567290424299715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160491 (n : ℕ) : ℤ :=
  A160491.P14155567290424299715.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160501.P5853442810036552581

`A062481(n+1)+A062481(n+2)`
-/

namespace A160501.P5853442810036552581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) + A062481 (n + 2)

end

end A160501.P5853442810036552581

noncomputable section

/-- A160501: (n+1)^prime(n+1) + n^prime(n).

Offset 1, canonical program `A160501.P5853442810036552581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160501 (n : ℕ) : ℤ :=
  A160501.P5853442810036552581.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160696.P2688155709056415849

`A000188(A008864(n+1))`
-/

namespace A160696.P2688155709056415849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008864 (n + 1)).toNat

end

end A160696.P2688155709056415849

noncomputable section

/-- A160696: Largest k such that k^2 divides prime(n)+1.

Offset 1, canonical program `A160696.P2688155709056415849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160696 (n : ℕ) : ℤ :=
  A160696.P2688155709056415849.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160745.P15092458154072212321

`3*A060632(n)`
-/

namespace A160745.P15092458154072212321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060632 n

end

end A160745.P15092458154072212321

noncomputable section

/-- A160745: First differences of A160744.

Offset 1, canonical program `A160745.P15092458154072212321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160745 (n : ℕ) : ℤ :=
  A160745.P15092458154072212321.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160823.P6613819599670740785

`∑{#}[floor(n/2), C(n-#, #)*A006318(#)]`
-/

namespace A160823.P6613819599670740785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * A006318 k

end

end A160823.P6613819599670740785

noncomputable section

/-- A160823: A transform of the large Schroeder numbers.

Offset 0, canonical program `A160823.P6613819599670740785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160823 (n : ℕ) : ℤ :=
  A160823.P6613819599670740785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160830.P3336484421034523192

`floor(A006094(n+1)/A001043(n+1))`
-/

namespace A160830.P3336484421034523192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)⌋

end

end A160830.P3336484421034523192

noncomputable section

/-- A160830: Integer part of the product of two consecutive primes divided by their sum.

Offset 1, canonical program `A160830.P3336484421034523192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160830 (n : ℕ) : ℤ :=
  A160830.P3336484421034523192.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160890.P9259257314874269544

`7*A001615(n+1)`
-/

namespace A160890.P9259257314874269544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001615 (n + 1)

end

end A160890.P9259257314874269544

noncomputable section

/-- A160890: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 3.

Offset 1, canonical program `A160890.P9259257314874269544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160890 (n : ℕ) : ℤ :=
  A160890.P9259257314874269544.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160909.P12070970668350231880

`A180363(n+1)-1`
-/

namespace A160909.P12070970668350231880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180363 (n + 1) - 1

end

end A160909.P12070970668350231880

noncomputable section

/-- A160909: Row sums of triangle defined in A096539.

Offset 1, canonical program `A160909.P12070970668350231880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160909 (n : ℕ) : ℤ :=
  A160909.P12070970668350231880.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161203.P2424508890754984712

`(n+1)²+A005117(n+1)`
-/

namespace A161203.P2424508890754984712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A005117 (n + 1)

end

end A161203.P2424508890754984712

noncomputable section

/-- A161203: n-th square plus n-th squarefree number.

Offset 1, canonical program `A161203.P2424508890754984712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161203 (n : ℕ) : ℤ :=
  A161203.P2424508890754984712.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161343.P8410613981469799795

`A000420(A000120(n))`
-/

namespace A161343.P8410613981469799795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A000120 n).toNat

end

end A161343.P8410613981469799795

noncomputable section

/-- A161343: a(n) = 7^A000120(n).

Offset 0, canonical program `A161343.P8410613981469799795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161343 (n : ℕ) : ℤ :=
  A161343.P8410613981469799795.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161624.P3059567341113547704

`A034953(n+1)-A000217(n)`
-/

namespace A161624.P3059567341113547704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A000217 n

end

end A161624.P3059567341113547704

noncomputable section

/-- A161624: Sum of all numbers from n to n-th prime.

Offset 1, canonical program `A161624.P3059567341113547704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161624 (n : ℕ) : ℤ :=
  A161624.P3059567341113547704.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161765.P724116838241174089

`A000120(n+1)*ceil((n+1)/A000120(n+1))`
-/

namespace A161765.P724116838241174089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * ⌈(n + 1 : ℚ) / (A000120 (n + 1) : ℚ)⌉

end

end A161765.P724116838241174089

noncomputable section

/-- A161765: a(n) is the smallest multiple of {the number of 1's in the binary representation of n} that is >= n.

Offset 1, canonical program `A161765.P724116838241174089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161765 (n : ℕ) : ℤ :=
  A161765.P724116838241174089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161770.P15933421977073873557

`10*A124166(n+1)`
-/

namespace A161770.P15933421977073873557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A124166 (n + 1)

end

end A161770.P15933421977073873557

noncomputable section

/-- A161770: n 1's followed by three 0's.

Offset 1, canonical program `A161770.P15933421977073873557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161770 (n : ℕ) : ℤ :=
  A161770.P15933421977073873557.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161782.P15156271066836137086

`∑{#}[A031131(n+1)-A001223(n+1), #+A001223(n+1)]`
-/

namespace A161782.P15156271066836137086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((k : ℤ) + A001223 (n + 1))

end

end A161782.P15156271066836137086

noncomputable section

/-- A161782: a(n) = sum of all numbers from and including (prime(n+1)-prime(n)) to and including (prime(n+2)-prime(n).)

Offset 1, canonical program `A161782.P15156271066836137086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161782 (n : ℕ) : ℤ :=
  A161782.P15156271066836137086.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161811.P1074302778511072887

`A141468(n+3)-A141468(n+1)`
-/

namespace A161811.P1074302778511072887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - A141468 (n + 1)

end

end A161811.P1074302778511072887

noncomputable section

/-- A161811: Difference between nonprime(n+2) and nonprime(n).

Offset 1, canonical program `A161811.P1074302778511072887`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161811 (n : ℕ) : ℤ :=
  A161811.P1074302778511072887.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161942.P13275340347351870099

`A337194(n+1)-1`
-/

namespace A161942.P13275340347351870099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (n + 1) - 1

end

end A161942.P13275340347351870099

noncomputable section

/-- A161942: Odd part of sum of divisors of n.

Offset 1, canonical program `A161942.P13275340347351870099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161942 (n : ℕ) : ℤ :=
  A161942.P13275340347351870099.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161964.P4214855072703663802

`A000040(n+1)^A141468(n+1)`
-/

namespace A161964.P4214855072703663802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A161964.P4214855072703663802

noncomputable section

/-- A161964: Prime(n) raised to the nonprime(n)-th power.

Offset 1, canonical program `A161964.P4214855072703663802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161964 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161964.P4214855072703663802.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162153.P5732949919012923603

`A054265(n+2)-A000040(n+2)`
-/

namespace A162153.P5732949919012923603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 2) - A000040 (n + 2)

end

end A162153.P5732949919012923603

noncomputable section

/-- A162153: Differences between the sum of consecutive composites and the prime that precedes them.

Offset 1, canonical program `A162153.P5732949919012923603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162153 (n : ℕ) : ℤ :=
  A162153.P5732949919012923603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162510.P14867611667462240532

`2^A046660(n+1)`
-/

namespace A162510.P14867611667462240532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046660 (n + 1) : ℤ)

end

end A162510.P14867611667462240532

noncomputable section

/-- A162510: Dirichlet inverse of A076479.

Offset 1, canonical program `A162510.P14867611667462240532`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162510 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162510.P14867611667462240532.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162511.P10433238674007229868

`A076479(n+1)*A008836(n+1)`
-/

namespace A162511.P10433238674007229868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A008836 (n + 1)

end

end A162511.P10433238674007229868

noncomputable section

/-- A162511: Multiplicative function with a(p^e) = (-1)^(e-1).

Offset 1, canonical program `A162511.P10433238674007229868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162511 (n : ℕ) : ℤ :=
  A162511.P10433238674007229868.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162543.P1379307130518184547

`∑{#}[floor(n/2), (-1)^#*C(n-#, #)*A006318(n-2*#)]`
-/

namespace A162543.P1379307130518184547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * A006318 (n - 2 * k)

end

end A162543.P1379307130518184547

noncomputable section

/-- A162543: A Chebyshev transform of the large Schroeder numbers A006318.

Offset 0, canonical program `A162543.P1379307130518184547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162543 (n : ℕ) : ℤ :=
  A162543.P1379307130518184547.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162551.P10524967716150044895

`2*A001791(n)`
-/

namespace A162551.P10524967716150044895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001791 n

end

end A162551.P10524967716150044895

noncomputable section

/-- A162551: a(n) = 2 * C(2*n,n-1).

Offset 0, canonical program `A162551.P10524967716150044895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162551 (n : ℕ) : ℤ :=
  A162551.P10524967716150044895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162888.P12511542881006591627

`A064455(A141468(n+1)+1)`
-/

namespace A162888.P12511542881006591627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A141468 (n + 1) + 1).toNat

end

end A162888.P12511542881006591627

noncomputable section

/-- A162888: An alternating sum of the first n nonprimes.

Offset 1, canonical program `A162888.P12511542881006591627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162888 (n : ℕ) : ℤ :=
  A162888.P12511542881006591627.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163057.P717677212788905023

`n-A130472(A065091(n+1))`
-/

namespace A163057.P717677212788905023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130472 (A065091 (n + 1)).toNat

end

end A163057.P717677212788905023

noncomputable section

/-- A163057: An alternating sum from the n-th odd number up to the n-th odd prime.

Offset 1, canonical program `A163057.P717677212788905023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163057 (n : ℕ) : ℤ :=
  A163057.P717677212788905023.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163121.P3309701501368410349

`A030078(n+1)-A141468(n+1)^3`
-/

namespace A163121.P3309701501368410349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A141468 (n + 1) ^ 3

end

end A163121.P3309701501368410349

noncomputable section

/-- A163121: (prime(n))^3-(nonprime(n))^3 .

Offset 1, canonical program `A163121.P3309701501368410349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163121 (n : ℕ) : ℤ :=
  A163121.P3309701501368410349.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163196.P10330693950707567783

`A163194(n)-4*(-1)^n`
-/

namespace A163196.P10330693950707567783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163194 n - 4 * (-1) ^ n

end

end A163196.P10330693950707567783

noncomputable section

/-- A163196: a(n) = L(n)^2 * F(n+1)^2 * L(n-1) * F(n+2), where F(n) and L(n) are the Fibonacci and Lucas numbers, respectively.

Offset 0, canonical program `A163196.P10330693950707567783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163196 (n : ℕ) : ℤ :=
  A163196.P10330693950707567783.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163197.P16783380792413056773

`A163195(n)-(-1)^n`
-/

namespace A163197.P16783380792413056773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163195 n - (-1) ^ n

end

end A163197.P16783380792413056773

noncomputable section

/-- A163197: a(n) = (1/4)* L(n)^2 * F(n+1)^2 * L(n-1) * F(n+2), where F(n) and L(n) are the Fibonacci and Lucas numbers, respectively.

Offset 0, canonical program `A163197.P16783380792413056773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163197 (n : ℕ) : ℤ :=
  A163197.P16783380792413056773.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163199.P9369278080693735299

`A163198(n)-1`
-/

namespace A163199.P9369278080693735299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n - 1

end

end A163199.P9369278080693735299

noncomputable section

/-- A163199: Sum of the cubes of the first n even-indexed Fibonacci numbers, minus 1.

Offset 0, canonical program `A163199.P9369278080693735299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163199 (n : ℕ) : ℤ :=
  A163199.P9369278080693735299.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163296.P4397503686848733258

`abs(A130472(A141468(n+1)))`
-/

namespace A163296.P4397503686848733258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130472 (A141468 (n + 1)).toNat|

end

end A163296.P4397503686848733258

noncomputable section

/-- A163296: Absolute value of the Sum_{x=0..A141468(n)} x*(-1)^x.

Offset 1, canonical program `A163296.P4397503686848733258`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163296 (n : ℕ) : ℤ :=
  A163296.P4397503686848733258.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163400.P14572793811619071824

`A070939(A141468(n+1))`
-/

namespace A163400.P14572793811619071824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A141468 (n + 1)).toNat

end

end A163400.P14572793811619071824

noncomputable section

/-- A163400: Number of bits in binary expansion of n-th nonprime.

Offset 1, canonical program `A163400.P14572793811619071824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163400 (n : ℕ) : ℤ :=
  A163400.P14572793811619071824.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163468.P8406828026260451703

`2+A065897(n+1)`
-/

namespace A163468.P8406828026260451703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A065897 (n + 1)

end

end A163468.P8406828026260451703

noncomputable section

/-- A163468: Indices k such that half of the k-th nonprime nonnegative integer is prime.

Offset 1, canonical program `A163468.P8406828026260451703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163468 (n : ℕ) : ℤ :=
  A163468.P8406828026260451703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163469.P14699532169806829517

`A055496(n+2)-2*A055496(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163469.P14699532169806829517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055496 (n + 2) - 2 * A055496 (n + 1)

end

end A163469.P14699532169806829517

noncomputable section

/-- A163469: a(n) = A055496(n+1) - 2*A055496(n).

Offset 1, canonical program `A163469.P14699532169806829517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163469 (n : ℕ) : ℤ :=
  A163469.P14699532169806829517.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163508.P3710448584942683645

`A001414(A001043(n+1))`
-/

namespace A163508.P3710448584942683645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001043 (n + 1)).toNat

end

end A163508.P3710448584942683645

noncomputable section

/-- A163508: The sum of the prime factors (with repetition) of the sum of 2 successive primes.

Offset 1, canonical program `A163508.P3710448584942683645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163508 (n : ℕ) : ℤ :=
  A163508.P3710448584942683645.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163751.P842914624202263356

`A163300(n+1)-A141468(n+1)`
-/

namespace A163751.P842914624202263356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) - A141468 (n + 1)

end

end A163751.P842914624202263356

noncomputable section

/-- A163751: a(n) = n-th even nonprime minus n-th nonprime.

Offset 1, canonical program `A163751.P842914624202263356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163751 (n : ℕ) : ℤ :=
  A163751.P842914624202263356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163975.P2243205309422245739

`A141468(n+1)-(-1)^A141468(n+1)`
-/

namespace A163975.P2243205309422245739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) : ℚ) - (-1 : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A163975.P2243205309422245739

noncomputable section

/-- A163975: n-th nonprime - (-1)^(n-th nonprime).

Offset 1, canonical program `A163975.P2243205309422245739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163975.P2243205309422245739.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163976.P5511687890835414188

`A000040(n+1)-(-1)^A141468(n+1)`
-/

namespace A163976.P5511687890835414188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (-1 : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A163976.P5511687890835414188

noncomputable section

/-- A163976: prime(n) -(-1)^(n-th nonprime).

Offset 1, canonical program `A163976.P5511687890835414188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163976 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163976.P5511687890835414188.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A164029.P8853241427937616947

`A141468(n+1)+(-1)^A141468(n+1)`
-/

namespace A164029.P8853241427937616947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) : ℚ) + (-1 : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A164029.P8853241427937616947

noncomputable section

/-- A164029: a(n) = nonprime(n) + (-1)^(nonprime(n)).

Offset 1, canonical program `A164029.P8853241427937616947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164029.P8853241427937616947.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165351.P14190395736733323369

`A026741(3*n)`
-/

namespace A165351.P14190395736733323369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n)

end

end A165351.P14190395736733323369

noncomputable section

/-- A165351: Numerator of 3*n/2.

Offset 0, canonical program `A165351.P14190395736733323369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165351 (n : ℕ) : ℤ :=
  A165351.P14190395736733323369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165367.P11038043711499478741

`A026741(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165367.P11038043711499478741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n + 2)

end

end A165367.P11038043711499478741

noncomputable section

/-- A165367: Trisection a(n) = A026741(3n + 2).

Offset 0, canonical program `A165367.P11038043711499478741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165367 (n : ℕ) : ℤ :=
  A165367.P11038043711499478741.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165453.P13560885071597525990

`A022554(n)+A080344(n)`
-/

namespace A165453.P13560885071597525990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + A080344 n

end

end A165453.P13560885071597525990

noncomputable section

/-- A165453: Linear interpolation of the sequence that maps an entry of A002378 to the corresponding entry of A006331.

Offset 0, canonical program `A165453.P13560885071597525990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165453 (n : ℕ) : ℤ :=
  A165453.P13560885071597525990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166037.P12323289688813525032

`A141468(n+1)+A141468(n+2)`
-/

namespace A166037.P12323289688813525032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A141468 (n + 2)

end

end A166037.P12323289688813525032

noncomputable section

/-- A166037: Numbers that are the sum of 2 successive nonprimes A141468.

Offset 1, canonical program `A166037.P12323289688813525032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166037 (n : ℕ) : ℤ :=
  A166037.P12323289688813525032.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166228.P12052479130336776295

`∑{#}[n, (-1)^(n-#)*A006318(#)]`
-/

namespace A166228.P12052479130336776295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A006318 k : ℚ)

end

end A166228.P12052479130336776295

noncomputable section

/-- A166228: Alternating sum of large Schroeder numbers.

Offset 0, canonical program `A166228.P12052479130336776295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166228.P12052479130336776295.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166232.P12945894669893910141

`A166231(n)/4^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166232.P12945894669893910141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166231 n : ℚ) / (4 ^ n : ℚ)

end

end A166232.P12945894669893910141

noncomputable section

/-- A166232: a(n) = A166231(n)/4^n.

Offset 0, canonical program `A166232.P12945894669893910141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166232 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166232.P12945894669893910141.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166312.P17525165886236819053

`A000120(n*(3*n-1)/2)`
-/

namespace A166312.P17525165886236819053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (((n : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / 2)).toNat

end

end A166312.P17525165886236819053

noncomputable section

/-- A166312: Number of 1's in binary expansion of A000326(n).

Offset 0, canonical program `A166312.P17525165886236819053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166312 (n : ℕ) : ℤ :=
  A166312.P17525165886236819053.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166314.P8030617240012252811

`A000120(n*(n+1)/2+1)`
-/

namespace A166314.P8030617240012252811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2 + 1)).toNat

end

end A166314.P8030617240012252811

noncomputable section

/-- A166314: Number of 1's in binary expansion of A000124(n).

Offset 0, canonical program `A166314.P8030617240012252811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166314 (n : ℕ) : ℤ :=
  A166314.P8030617240012252811.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166329.P12394964810192710211

`A006094(n+1)²`
-/

namespace A166329.P12394964810192710211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) ^ 2

end

end A166329.P12394964810192710211

noncomputable section

/-- A166329: Products of squares of 2 successive primes.

Offset 1, canonical program `A166329.P12394964810192710211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166329 (n : ℕ) : ℤ :=
  A166329.P12394964810192710211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166387.P4716347012080740909

`A166375(n+2)-A128422(n+2)`
-/

namespace A166387.P4716347012080740909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (n + 2) - A128422 (n + 2)

end

end A166387.P4716347012080740909

noncomputable section

/-- A166387: a(n) = sum (floor (j^2/n), 1 <= j <= n-1) - floor ((n-1)(n-2)/3), n >= 2.

Offset 2, canonical program `A166387.P4716347012080740909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166387 (n : ℕ) : ℤ :=
  A166387.P4716347012080740909.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166502.P8423645090927015863

`A006094(n+1)^(n+1)`
-/

namespace A166502.P8423645090927015863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) ^ (n + 1)

end

end A166502.P8423645090927015863

noncomputable section

/-- A166502: The n-th power of the product prime(n)*prime(n+1) of 2 successive primes.

Offset 1, canonical program `A166502.P8423645090927015863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166502 (n : ℕ) : ℤ :=
  A166502.P8423645090927015863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166624.P1659616277658723869

`(n+1)*A165824(n+1)`
-/

namespace A166624.P1659616277658723869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165824 (n + 1)

end

end A166624.P1659616277658723869

noncomputable section

/-- A166624: Totally multiplicative sequence with a(p) = 3p for prime p.

Offset 1, canonical program `A166624.P1659616277658723869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166624 (n : ℕ) : ℤ :=
  A166624.P1659616277658723869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166625.P7535181027789046858

`(n+1)*A165825(n+1)`
-/

namespace A166625.P7535181027789046858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165825 (n + 1)

end

end A166625.P7535181027789046858

noncomputable section

/-- A166625: Totally multiplicative sequence with a(p) = 4p for prime p.

Offset 1, canonical program `A166625.P7535181027789046858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166625 (n : ℕ) : ℤ :=
  A166625.P7535181027789046858.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166626.P12442418658163002327

`(n+1)*A165826(n+1)`
-/

namespace A166626.P12442418658163002327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165826 (n + 1)

end

end A166626.P12442418658163002327

noncomputable section

/-- A166626: Totally multiplicative sequence with a(p) = 5p for prime p.

Offset 1, canonical program `A166626.P12442418658163002327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166626 (n : ℕ) : ℤ :=
  A166626.P12442418658163002327.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166627.P4719915561664493133

`(n+1)*A165827(n+1)`
-/

namespace A166627.P4719915561664493133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165827 (n + 1)

end

end A166627.P4719915561664493133

noncomputable section

/-- A166627: Totally multiplicative sequence with a(p) = 6p for prime p.

Offset 1, canonical program `A166627.P4719915561664493133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166627 (n : ℕ) : ℤ :=
  A166627.P4719915561664493133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166628.P13644220828498247327

`(n+1)*A165828(n+1)`
-/

namespace A166628.P13644220828498247327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165828 (n + 1)

end

end A166628.P13644220828498247327

noncomputable section

/-- A166628: Totally multiplicative sequence with a(p) = 7p for prime p.

Offset 1, canonical program `A166628.P13644220828498247327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166628 (n : ℕ) : ℤ :=
  A166628.P13644220828498247327.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166629.P16121335270018523173

`(n+1)*A165829(n+1)`
-/

namespace A166629.P16121335270018523173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165829 (n + 1)

end

end A166629.P16121335270018523173

noncomputable section

/-- A166629: Totally multiplicative sequence with a(p) = 8p for prime p.

Offset 1, canonical program `A166629.P16121335270018523173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166629 (n : ℕ) : ℤ :=
  A166629.P16121335270018523173.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166630.P9833541194897669774

`(n+1)*A165830(n+1)`
-/

namespace A166630.P9833541194897669774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165830 (n + 1)

end

end A166630.P9833541194897669774

noncomputable section

/-- A166630: Totally multiplicative sequence with a(p) = 9p for prime p.

Offset 1, canonical program `A166630.P9833541194897669774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166630 (n : ℕ) : ℤ :=
  A166630.P9833541194897669774.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166631.P1808347137960991834

`(n+1)*A165831(n+1)`
-/

namespace A166631.P1808347137960991834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165831 (n + 1)

end

end A166631.P1808347137960991834

noncomputable section

/-- A166631: Totally multiplicative sequence with a(p) = 10p for prime p.

Offset 1, canonical program `A166631.P1808347137960991834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166631 (n : ℕ) : ℤ :=
  A166631.P1808347137960991834.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166720.P1607650431389668461

`A165342(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166720.P1607650431389668461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165342 (3 * n)

end

end A166720.P1607650431389668461

noncomputable section

/-- A166720: Trisection A165342(3n).

Offset 0, canonical program `A166720.P1607650431389668461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166720 (n : ℕ) : ℤ :=
  A166720.P1607650431389668461.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166743.P12621067664972699570

`(A034785(n+3)-A066872(n+3))/6`
-/

namespace A166743.P12621067664972699570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034785 (n + 3) - A066872 (n + 3) : ℚ) / 6

end

end A166743.P12621067664972699570

noncomputable section

/-- A166743: a(n) = (2^p - p^2 - 1)/6 where p = prime(n).

Offset 3, canonical program `A166743.P12621067664972699570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166743 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166743.P12621067664972699570.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167180.P16080205514212626559

`A000720(n+1)+A014689(n+1)`
-/

namespace A167180.P16080205514212626559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A014689 (n + 1)

end

end A167180.P16080205514212626559

noncomputable section

/-- A167180: a(n) = pi(n) plus the number of nonprimes less than prime(n).

Offset 1, canonical program `A167180.P16080205514212626559`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167180 (n : ℕ) : ℤ :=
  A167180.P16080205514212626559.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167180.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A168048.P5656807173339822994

`A062298(n+1)*A000720(n+1)`
-/

namespace A168048.P5656807173339822994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) * A000720 (n + 1)

end

end A168048.P5656807173339822994

noncomputable section

/-- A168048: a(n) = C(n)*Pi(n) where C(n) = number of nonprimes <= n, Pi(n) = number of primes <= n.

Offset 1, canonical program `A168048.P5656807173339822994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168048 (n : ℕ) : ℤ :=
  A168048.P5656807173339822994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168265.P14574112734370718742

`A003557(A060735(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168265.P14574112734370718742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A060735 (n + 1)).toNat

end

end A168265.P14574112734370718742

noncomputable section

/-- A168265: a(n) = A003557(A060735(n)).

Offset 1, canonical program `A168265.P14574112734370718742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168265 (n : ℕ) : ℤ :=
  A168265.P14574112734370718742.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168380.P4939789133817210671

`A000292(n+1)+A027656(n)`
-/

namespace A168380.P4939789133817210671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A027656 n

end

end A168380.P4939789133817210671

noncomputable section

/-- A168380: Row sums of A168281.

Offset 1, canonical program `A168380.P4939789133817210671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168380 (n : ℕ) : ℤ :=
  A168380.P4939789133817210671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168485.P6840008458640291762

`A165342(3*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168485.P6840008458640291762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165342 (3 * n) : ℚ) / 3

end

end A168485.P6840008458640291762

noncomputable section

/-- A168485: A165342(3n)/3.

Offset 0, canonical program `A168485.P6840008458640291762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168485 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168485.P6840008458640291762.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168514.P6706706680364708610

`A001222(A001611(n+1))`
-/

namespace A168514.P6706706680364708610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001611 (n + 1)).toNat

end

end A168514.P6706706680364708610

noncomputable section

/-- A168514: Number of prime divisors (counted with multiplicity) of Fibonacci(n)+1.

Offset 1, canonical program `A168514.P6706706680364708610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168514 (n : ℕ) : ℤ :=
  A168514.P6706706680364708610.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168514.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A171638.P8823395210099823483

`A171621(n+2)²`
-/

namespace A171638.P8823395210099823483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171621 (n + 2) ^ 2

end

end A171638.P8823395210099823483

noncomputable section

/-- A171638: Denominator of 1/(n-2)^2 - 1/(n+2)^2.

Offset 2, canonical program `A171638.P8823395210099823483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171638 (n : ℕ) : ℤ :=
  A171638.P8823395210099823483.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172060.P5248690933070459008

`A002457(n)-A000302(n)`
-/

namespace A172060.P5248690933070459008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A000302 n

end

end A172060.P5248690933070459008

noncomputable section

/-- A172060: The number of returns to the origin in all possible one-dimensional walks of length 2n.

Offset 0, canonical program `A172060.P5248690933070459008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172060 (n : ℕ) : ℤ :=
  A172060.P5248690933070459008.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172392.P14099812267270023863

`(n+1)*A005568(n)`
-/

namespace A172392.P14099812267270023863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005568 n

end

end A172392.P14099812267270023863

noncomputable section

/-- A172392: a(n) = C(2n,n)*C(2n+2,n+1)/(n+2).

Offset 0, canonical program `A172392.P14099812267270023863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172392 (n : ℕ) : ℤ :=
  A172392.P14099812267270023863.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173073.P16730298799530633578

`A141468(n+1)-n`
-/

namespace A173073.P16730298799530633578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - (n : ℤ)

end

end A173073.P16730298799530633578

noncomputable section

/-- A173073: (n-th nonnegative nonprime) minus (n-1).

Offset 1, canonical program `A173073.P16730298799530633578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173073 (n : ℕ) : ℤ :=
  A173073.P16730298799530633578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173142.P14046469073702964188

`2*(n+1)^(n+1)-A001923(n+1)`
-/

namespace A173142.P14046469073702964188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ (n + 1) : ℤ) - A001923 (n + 1)

end

end A173142.P14046469073702964188

noncomputable section

/-- A173142: a(n) = n^n - (n-1)^(n-1) - (n-2)^(n-2) - ... - 1.

Offset 1, canonical program `A173142.P14046469073702964188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173142 (n : ℕ) : ℤ :=
  A173142.P14046469073702964188.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173395.P11168662136326346855

`(A002260(n+1)+1)*(A004736(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173395.P11168662136326346855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * (A004736 (n + 1) + 1)

end

end A173395.P11168662136326346855

noncomputable section

/-- A173395: a(n) = (A002260(n) + 1) * (A004736(n) + 1).

Offset 1, canonical program `A173395.P11168662136326346855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173395 (n : ℕ) : ℤ :=
  A173395.P11168662136326346855.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173525.P12961577271591045237

`1+A053824(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173525.P12961577271591045237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053824 n

end

end A173525.P12961577271591045237

noncomputable section

/-- A173525: a(n) = 1 + A053824(n-1), where A053824 = sum of digits in base 5.

Offset 1, canonical program `A173525.P12961577271591045237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173525 (n : ℕ) : ℤ :=
  A173525.P12961577271591045237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173631.P3542235995944093546

`ceil(sqrt(4*A002110(n)))`
-/

namespace A173631.P3542235995944093546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 * A002110 n : ℝ)⌉

end

end A173631.P3542235995944093546

noncomputable section

/-- A173631: a(n) = ceiling(sqrt(4*P_n)), where P_n is product of first n primes.

Offset 0, canonical program `A173631.P3542235995944093546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173631 (n : ℕ) : ℤ :=
  A173631.P3542235995944093546.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173862.P12177131599370371926

`A158772(n)/21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173862.P12177131599370371926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158772 n : ℚ) / 21

end

end A173862.P12177131599370371926

noncomputable section

/-- A173862: a(n) = A158772(n-1)/21.

Offset 1, canonical program `A173862.P12177131599370371926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173862.P12177131599370371926.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174347.P8876101279350428362

`∑{#}[n, C(n, #)*A006318(#)]`
-/

namespace A174347.P8876101279350428362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A006318 k

end

end A174347.P8876101279350428362

noncomputable section

/-- A174347: Expansion of (1 - 2*x - sqrt(1 - 8*x + 8*x^2))/(2*x*(1-x)).

Offset 0, canonical program `A174347.P8876101279350428362`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174347 (n : ℕ) : ℤ :=
  A174347.P8876101279350428362.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174620.P16519671325999291648

`(2^A141468(n+1))%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174620.P16519671325999291648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A141468 (n + 1) : ℤ))) (A000040 (n + 1))

end

end A174620.P16519671325999291648

noncomputable section

/-- A174620: a(n) = 2^A141468(n) mod prime(n), where A141468(n) is the n-th nonnegative nonprime.

Offset 1, canonical program `A174620.P16519671325999291648`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^A141468(n+1))%A000040(n+1)` (program `A174620.P16519671325999291648`, by `A174620.P16519671325999291648.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174620 (n : ℕ) : ℤ :=
  A174620.P16519671325999291648.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^A141468(n+1))%A000040(n+1)` (program `A174620.P16519671325999291648`, by `A174620.P16519671325999291648.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174620.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174623.P10737350361225580097

`A098640(n+1)²`
-/

namespace A174623.P10737350361225580097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1) ^ 2

end

end A174623.P10737350361225580097

noncomputable section

/-- A174623: (2^p+1)^2 where p is prime.

Offset 1, canonical program `A174623.P10737350361225580097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174623 (n : ℕ) : ℤ :=
  A174623.P10737350361225580097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174637.P6931239550470735759

`(n+1)!/4*∑{#}[n-3, C(n, #)*(n+1)^#*A000276(n+1-#)]`
-/

namespace A174637.P6931239550470735759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 4 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n k * (n + 1) ^ k : ℤ) * A000276 (n + 1 - k) : ℤ) : ℚ)

end

end A174637.P6931239550470735759

noncomputable section

/-- A174637: Number of n X n (0,1) matrices with two 1's in each row the permanent of which equals to 4.

Offset 1, canonical program `A174637.P6931239550470735759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174637 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174637.P6931239550470735759.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174808.P12043878061471636835

`∑{#}[n, C(#, n-#)*A006318(#)]`
-/

namespace A174808.P12043878061471636835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A006318 k

end

end A174808.P12043878061471636835

noncomputable section

/-- A174808: A transform of the large Schroeder numbers A006318.

Offset 0, canonical program `A174808.P12043878061471636835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174808 (n : ℕ) : ℤ :=
  A174808.P12043878061471636835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175548.P12094352498918124215

`A000120(A000203(n+1))`
-/

namespace A175548.P12094352498918124215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000203 (n + 1)).toNat

end

end A175548.P12094352498918124215

noncomputable section

/-- A175548: Binary weight of sigma(n).

Offset 1, canonical program `A175548.P12094352498918124215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175548 (n : ℕ) : ℤ :=
  A175548.P12094352498918124215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176100.P16175186196650254316

`2*A141468(n+1)`
-/

namespace A176100.P16175186196650254316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1)

end

end A176100.P16175186196650254316

noncomputable section

/-- A176100: Even numbers that are not semiprimes, or, twice the nonprimes.

Offset 1, canonical program `A176100.P16175186196650254316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176100 (n : ℕ) : ℤ :=
  A176100.P16175186196650254316.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176283.P4926761085403531670

`1+A000537(row(n))-A000537(col(n))-A000537(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176283.P4926761085403531670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000537 (SequenceMachineLib.triRow n) - A000537 (SequenceMachineLib.triCol n) - A000537 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A176283.P4926761085403531670

noncomputable section

/-- A176283: Triangle T(n,k) = 1 + A000537(n) - A000537(k) - A000537(n-k), read by rows.

Offset 0, canonical program `A176283.P4926761085403531670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176283 (n : ℕ) : ℤ :=
  A176283.P4926761085403531670.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176283.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 2, canonical program `A177357.P2631027854699251735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177357 (n : ℕ) : ℤ :=
  A177357.P2631027854699251735.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177416.P16700719177921399123

`(2^A141468(row(n)+1))%A000040(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177416.P16700719177921399123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A141468 (SequenceMachineLib.triRow n + 1) : ℤ))) (A000040 (SequenceMachineLib.triCol n + 1))

end

end A177416.P16700719177921399123

noncomputable section

/-- A177416: Triangle read by rows: T(n,k) = 2^A141468(n) mod prime(k).

Offset 1, canonical program `A177416.P16700719177921399123`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^A141468(row(n)+1))%A000040(col(n)+1)` (program `A177416.P16700719177921399123`, by `A177416.P16700719177921399123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A177416 (n : ℕ) : ℤ :=
  A177416.P16700719177921399123.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^A141468(row(n)+1))%A000040(col(n)+1)` (program `A177416.P16700719177921399123`, by `A177416.P16700719177921399123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A177416.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A177882.P5293616037841746258

`A001317(3*n)`
-/

namespace A177882.P5293616037841746258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (3 * n)

end

end A177882.P5293616037841746258

noncomputable section

/-- A177882: Trisection of A001317.

Offset 0, canonical program `A177882.P5293616037841746258`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177882 (n : ℕ) : ℤ :=
  A177882.P5293616037841746258.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177897.P11526367913359067018

`A001317(7*n)`
-/

namespace A177897.P11526367913359067018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (7 * n)

end

end A177897.P11526367913359067018

noncomputable section

/-- A177897: Triangle of octanomial coefficients read by rows: n-th row is obtained by expanding ((1+x)*(1+x^2)*(1+x^4))^n mod 2 and converting to decimal.

Offset 0, canonical program `A177897.P11526367913359067018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177897 (n : ℕ) : ℤ :=
  A177897.P11526367913359067018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177946.P1748134400576115326

`A039716(n+1)/A000142(n+1)`
-/

namespace A177946.P1748134400576115326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A177946.P1748134400576115326

noncomputable section

/-- A177946: a(n) = prime(n)! / n!.

Offset 1, canonical program `A177946.P1748134400576115326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177946.P1748134400576115326.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177946.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A178601.P12753285223020669852

`A001065(A001065(n+2))`
-/

namespace A178601.P12753285223020669852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001065 (n + 2)).toNat

end

end A178601.P12753285223020669852

noncomputable section

/-- A178601: a(n) = s(s(n)), where s(n) = sigma(n)-n = A001065(n).

Offset 2, canonical program `A178601.P12753285223020669852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178601 (n : ℕ) : ℤ :=
  A178601.P12753285223020669852.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178614.P3968478043835653884

`A039716(n+1)/A000142(n+2)`
-/

namespace A178614.P3968478043835653884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 1) : ℚ) / (A000142 (n + 2) : ℚ)

end

end A178614.P3968478043835653884

noncomputable section

/-- A178614: a(n) = prime(n)!/(n+1)!.

Offset 1, canonical program `A178614.P3968478043835653884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178614.P3968478043835653884.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178636.P5283396583048980149

`A167515(n+1)-1`
-/

namespace A178636.P5283396583048980149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167515 (n + 1) - 1

end

end A178636.P5283396583048980149

noncomputable section

/-- A178636: If n = Product (p_i^k_i) for i = 1, ..., j then a(n) is the sum of the divisors d that are not in the set {1, p_1^k_1, p_2^k_2, ..., p_j^k_j}.

Offset 1, canonical program `A178636.P5283396583048980149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178636 (n : ℕ) : ℤ :=
  A178636.P5283396583048980149.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178636.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A179211.P7410535593365144243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179211 (n : ℕ) : ℤ :=
  A179211.P7410535593365144243.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179396.P16832970377338364013

`A001248(n+1)%A000040(n+5)`
-/

namespace A179396.P16832970377338364013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A000040 (n + 5))

end

end A179396.P16832970377338364013

noncomputable section

/-- A179396: a(n) = prime(n)^2 modulo prime(n+4).

Offset 1, canonical program `A179396.P16832970377338364013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179396 (n : ℕ) : ℤ :=
  A179396.P16832970377338364013.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179802.P15808026225765570397

`A010888(A179545(n+1))`
-/

namespace A179802.P15808026225765570397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A179545 (n + 1)).toNat

end

end A179802.P15808026225765570397

noncomputable section

/-- A179802: Digital root of A179545.

Offset 1, canonical program `A179802.P15808026225765570397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179802 (n : ℕ) : ℤ :=
  A179802.P15808026225765570397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179868.P12443573332757821551

`A010873(A000120(n))`
-/

namespace A179868.P12443573332757821551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000120 n).toNat

end

end A179868.P12443573332757821551

noncomputable section

/-- A179868: (Number of 1's in the binary expansion of n) mod 4.

Offset 0, canonical program `A179868.P12443573332757821551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179868 (n : ℕ) : ℤ :=
  A179868.P12443573332757821551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179896.P6951967980762549515

`A045943(A141468(n+2)-1)`
-/

namespace A179896.P6951967980762549515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (A141468 (n + 2) - 1).toNat

end

end A179896.P6951967980762549515

noncomputable section

/-- A179896: Sum of the numbers between k := n-th nonprime and 2k (like a jump in a Sieve of Eratosthenes).

Offset 1, canonical program `A179896.P6951967980762549515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179896 (n : ℕ) : ℤ :=
  A179896.P6951967980762549515.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180007.P7045054597783144234

`A061358(6^(n+1))`
-/

namespace A180007.P7045054597783144234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (6 ^ (n + 1))

end

end A180007.P7045054597783144234

noncomputable section

/-- A180007: Number of Goldbach partitions of 6^n.

Offset 1, canonical program `A180007.P7045054597783144234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180007 (n : ℕ) : ℤ :=
  A180007.P7045054597783144234.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180270.P8396831548548584304

`A175110(n)*(A001844(n)*A000217(n))²`
-/

namespace A180270.P8396831548548584304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175110 n * (A001844 n * A000217 n) ^ 2

end

end A180270.P8396831548548584304

noncomputable section

/-- A180270: Integers of the form (k^12 - k^8 - k^4 + 1)/512.

Offset 1, canonical program `A180270.P8396831548548584304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180270 (n : ℕ) : ℤ :=
  A180270.P8396831548548584304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180369.P16186270396045805095

`A177771(n+4)/6!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180369.P16186270396045805095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177771 (n + 4) : ℚ) / (Nat.factorial 6 : ℚ)

end

end A180369.P16186270396045805095

noncomputable section

/-- A180369: A177771(n+3)/6! .

Offset 1, canonical program `A180369.P16186270396045805095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180369 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180369.P16186270396045805095.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180617.P4406684303062301047

`A006094(n+1)+A001043(n+1)+1`
-/

namespace A180617.P4406684303062301047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001043 (n + 1) + 1

end

end A180617.P4406684303062301047

noncomputable section

/-- A180617: Sum of divisors of the product of two consecutive primes.

Offset 1, canonical program `A180617.P4406684303062301047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180617 (n : ℕ) : ℤ :=
  A180617.P4406684303062301047.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180724.P9375854494318249923

`(n+2)²+A053001(n+2)`
-/

namespace A180724.P9375854494318249923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) + A053001 (n + 2)

end

end A180724.P9375854494318249923

noncomputable section

/-- A180724: a(n) = n^2 + largest prime < n^2.

Offset 2, canonical program `A180724.P9375854494318249923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180724 (n : ℕ) : ℤ :=
  A180724.P9375854494318249923.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180772.P1089154253406948827

`A174088(n+1)-(n+1)`
-/

namespace A180772.P1089154253406948827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (n + 1) - (n + 1 : ℤ)

end

end A180772.P1089154253406948827

noncomputable section

/-- A180772: Number of distinct solutions to the congruence x(1)*x(2) == 0 (mod n), with x() only in 1..n-1.

Offset 1, canonical program `A180772.P1089154253406948827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180772 (n : ℕ) : ℤ :=
  A180772.P1089154253406948827.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180955.P2016175764715229432

`A001790(row(n)-col(n))`
-/

namespace A180955.P2016175764715229432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A180955.P2016175764715229432

noncomputable section

/-- A180955: Triangle read by rows T(n,k) = numerators of A180955/A180956.

Offset 0, canonical program `A180955.P2016175764715229432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180955 (n : ℕ) : ℤ :=
  A180955.P2016175764715229432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180956.P14879818788371713101

`A046161(row(n)-col(n))`
-/

namespace A180956.P14879818788371713101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A180956.P14879818788371713101

noncomputable section

/-- A180956: Triangle read by rows T(n,k) = denominators of A180955/A180956.

Offset 0, canonical program `A180956.P14879818788371713101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180956 (n : ℕ) : ℤ :=
  A180956.P14879818788371713101.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181432.P18320344108581790144

`A008836(col(n)+1)*A008836(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181432.P18320344108581790144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (SequenceMachineLib.triCol n + 1) * A008836 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A181432.P18320344108581790144

noncomputable section

/-- A181432: Symmetric square array T(n,k) read by antidiagonals. T(n,k)=A008836(n)*A008836(k).

Offset 1, canonical program `A181432.P18320344108581790144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181432 (n : ℕ) : ℤ :=
  A181432.P18320344108581790144.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181709.P11612735428797642774

`A144769(n+3)+1`
-/

namespace A181709.P11612735428797642774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 3) + 1

end

end A181709.P11612735428797642774

noncomputable section

/-- A181709: Indices of primes in A007310.

Offset 1, canonical program `A181709.P11612735428797642774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181709 (n : ℕ) : ℤ :=
  A181709.P11612735428797642774.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181966.P3642588187185177021

`(n+1)!*A013939(n+1)`
-/

namespace A181966.P3642588187185177021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A013939 (n + 1)

end

end A181966.P3642588187185177021

noncomputable section

/-- A181966: Sum of the sizes of normalizers of all prime order cyclic subgroups of the symmetric group S_n.

Offset 1, canonical program `A181966.P3642588187185177021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181966 (n : ℕ) : ℤ :=
  A181966.P3642588187185177021.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181967.P15063776674140415528

`(n+1)!*(A013939(n+1)-floor((n+3)/4))/2`
-/

namespace A181967.P15063776674140415528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * (A013939 (n + 1) - ⌊(n + 3 : ℚ) / 4⌋) : ℚ) / 2

end

end A181967.P15063776674140415528

noncomputable section

/-- A181967: Sum of the sizes of the normalizers of all prime order cyclic subgroups of the alternating group A_n.

Offset 1, canonical program `A181967.P15063776674140415528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181967.P15063776674140415528.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182254.P4190674450334587219

`A002110(n)%A000142(n)`
-/

namespace A182254.P4190674450334587219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) (A000142 n)

end

end A182254.P4190674450334587219

noncomputable section

/-- A182254: a(n) = primorial(n) mod n!.

Offset 0, canonical program `A182254.P4190674450334587219`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182254 (n : ℕ) : ℤ :=
  A182254.P4190674450334587219.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182310.P9353940830934403541

`A105081(a(n-1)+1)` with `a(0)=0`
-/

namespace A182310.P9353940830934403541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A105081 (a (n - 1) + 1).toNat

end

end A182310.P9353940830934403541

noncomputable section

/-- A182310: a(0)=0, a(n+1) = (a(n) XOR floor(a(n)/2)) + 1, where XOR is the bitwise exclusive-or operator.

Offset 0, canonical program `A182310.P9353940830934403541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182310 (n : ℕ) : ℤ :=
  A182310.P9353940830934403541.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183227.P8998500749623055226

`4*n+A053824(2^n-1)`
-/

namespace A183227.P8998500749623055226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A053824 (2 ^ n - 1)

end

end A183227.P8998500749623055226

noncomputable section

/-- A183227: a(n) is the base-5 digit sum of 10^n-1.

Offset 0, canonical program `A183227.P8998500749623055226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183227 (n : ℕ) : ℤ :=
  A183227.P8998500749623055226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184423.P3303203828994434715

`A006480(n)*A000984(n)`
-/

namespace A184423.P3303203828994434715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n * A000984 n

end

end A184423.P3303203828994434715

noncomputable section

/-- A184423: a(n) = (2*n)!*(3*n)!/n!^5.

Offset 0, canonical program `A184423.P3303203828994434715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184423 (n : ℕ) : ℤ :=
  A184423.P3303203828994434715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186231.P17956698847854566928

`A001791(2*n+1)`
-/

namespace A186231.P17956698847854566928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (2 * n + 1)

end

end A186231.P17956698847854566928

noncomputable section

/-- A186231: Expansion of ( 2F1([-1/4, 1/4]; [-1/2], 16*x) - 1 ) / (2*x).

Offset 0, canonical program `A186231.P17956698847854566928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186231 (n : ℕ) : ℤ :=
  A186231.P17956698847854566928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186297.P2143825234397933090

`A186296(n+1)-1`
-/

namespace A186297.P2143825234397933090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186296 (n + 1) - 1

end

end A186297.P2143825234397933090

noncomputable section

/-- A186297: a(n) = (A007520(n)-1)/2.

Offset 1, canonical program `A186297.P2143825234397933090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186297 (n : ℕ) : ℤ :=
  A186297.P2143825234397933090.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186300.P1197672728563334248

`A186299(n+1)+1`
-/

namespace A186300.P1197672728563334248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186299 (n + 1) + 1

end

end A186300.P1197672728563334248

noncomputable section

/-- A186300: (A007521(n)+1)/2.

Offset 1, canonical program `A186300.P1197672728563334248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186300 (n : ℕ) : ℤ :=
  A186300.P1197672728563334248.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186303.P16068686725159694741

`A186302(n+1)+1`
-/

namespace A186303.P16068686725159694741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1) + 1

end

end A186303.P16068686725159694741

noncomputable section

/-- A186303: a(n) = ( A007522(n)+1 )/2.

Offset 1, canonical program `A186303.P16068686725159694741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186303 (n : ℕ) : ℤ :=
  A186303.P16068686725159694741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186391.P4656074528427455917

`∑{#}[n, C(n, #)²*A082758(#)]`
-/

namespace A186391.P4656074528427455917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k ^ 2 : ℤ) * A082758 k

end

end A186391.P4656074528427455917

noncomputable section

/-- A186391: a(n) equals the least sum of the squares of the coefficients in (1 + x^k + x^(2k) + x^p)^n found at sufficiently large p for some fixed k>0.

Offset 0, canonical program `A186391.P4656074528427455917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186391 (n : ℕ) : ℤ :=
  A186391.P4656074528427455917.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186428.P2147351856514783823

`A065764(n+1)%A000203(n+1)`
-/

namespace A186428.P2147351856514783823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065764 (n + 1)) (A000203 (n + 1))

end

end A186428.P2147351856514783823

noncomputable section

/-- A186428: a(n) = sigma(n^2) modulo sigma(n).

Offset 1, canonical program `A186428.P2147351856514783823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186428 (n : ℕ) : ℤ :=
  A186428.P2147351856514783823.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186690.P18402101191840386599

`(-1)^n*A002131(n+1)`
-/

namespace A186690.P18402101191840386599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002131 (n + 1)

end

end A186690.P18402101191840386599

noncomputable section

/-- A186690: Expansion of - (1/8) theta_3''(0, q) / theta_3(0, q) in powers of q.

Offset 1, canonical program `A186690.P18402101191840386599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186690 (n : ℕ) : ℤ :=
  A186690.P18402101191840386599.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187306.P13731077059909855300

`A005043(n+1)+(-1)^n`
-/

namespace A187306.P13731077059909855300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (-1) ^ n

end

end A187306.P13731077059909855300

noncomputable section

/-- A187306: Alternating sum of Motzkin numbers A001006.

Offset 0, canonical program `A187306.P13731077059909855300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187306 (n : ℕ) : ℤ :=
  A187306.P13731077059909855300.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187816.P8414459548341743626

`2^(A000523(n+1)-ceil(log2(A062050(n+1))))`
-/

namespace A187816.P8414459548341743626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000523 (n + 1) - ⌈Real.logb 2 (A062050 (n + 1) : ℝ)⌉ : ℤ)

end

end A187816.P8414459548341743626

noncomputable section

/-- A187816: Triangle read by rows in which row n lists the first 2^(n-1) terms of A006519 in nonincreasing order, n >= 1.

Offset 1, canonical program `A187816.P8414459548341743626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187816 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187816.P8414459548341743626.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188538.P3566959287335844809

`n+3+A264147(n+1)-A000032(n+1)`
-/

namespace A188538.P3566959287335844809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) + A264147 (n + 1) - A000032 (n + 1)

end

end A188538.P3566959287335844809

noncomputable section

/-- A188538: Row sums of triangle A156070.

Offset 0, canonical program `A188538.P3566959287335844809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188538 (n : ℕ) : ℤ :=
  A188538.P3566959287335844809.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188653.P11362687780223873411

`A188652(n+2)-A188652(n+1)`
-/

namespace A188653.P11362687780223873411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188652 (n + 2) - A188652 (n + 1)

end

end A188653.P11362687780223873411

noncomputable section

/-- A188653: Second differences of A000463; first differences of A188652.

Offset 1, canonical program `A188653.P11362687780223873411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188653 (n : ℕ) : ℤ :=
  A188653.P11362687780223873411.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188653.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190062.P16595495950276087387

`A045925(n)-A000071(n+1)`
-/

namespace A190062.P16595495950276087387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n - A000071 (n + 1)

end

end A190062.P16595495950276087387

noncomputable section

/-- A190062: a(n) = n*Fibonacci(n) - Sum_{i=0..n-1} Fibonacci(i).

Offset 0, canonical program `A190062.P16595495950276087387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190062 (n : ℕ) : ℤ :=
  A190062.P16595495950276087387.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190620.P17543203208516142486

`A000225(A002024(n+1)+2)-A000079(A004736(n+1))`
-/

namespace A190620.P17543203208516142486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002024 (n + 1) + 2).toNat - A000079 (A004736 (n + 1)).toNat

end

end A190620.P17543203208516142486

noncomputable section

/-- A190620: Odd numbers with a single zero in their binary expansion.

Offset 1, canonical program `A190620.P17543203208516142486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190620 (n : ℕ) : ℤ :=
  A190620.P17543203208516142486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191108.P16458009110707439268

`2*A191106(n+1)-1`
-/

namespace A191108.P16458009110707439268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191106 (n + 1) - 1

end

end A191108.P16458009110707439268

noncomputable section

/-- A191108: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 3x+2 are in a.

Offset 1, canonical program `A191108.P16458009110707439268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191108 (n : ℕ) : ℤ :=
  A191108.P16458009110707439268.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191405.P17460248013046071804

`A001951(n)+A001951(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191405.P17460248013046071804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + A001951 (n + 1)

end

end A191405.P17460248013046071804

noncomputable section

/-- A191405: A001951(n)+A001951(n+1).

Offset 0, canonical program `A191405.P17460248013046071804`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+1)` (program `A191405.P17460248013046071804`, by `A191405.P17460248013046071804.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A191405 (n : ℕ) : ℤ :=
  A191405.P17460248013046071804.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+1)` (program `A191405.P17460248013046071804`, by `A191405.P17460248013046071804.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A191405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A191406.P11617354727610031530

`A001951(n)+A001951(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191406.P11617354727610031530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + A001951 (n + 2)

end

end A191406.P11617354727610031530

noncomputable section

/-- A191406: A001951(n)+A001951(n+2).

Offset 0, canonical program `A191406.P11617354727610031530`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+2)` (program `A191406.P11617354727610031530`, by `A191406.P11617354727610031530.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A191406 (n : ℕ) : ℤ :=
  A191406.P11617354727610031530.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+2)` (program `A191406.P11617354727610031530`, by `A191406.P11617354727610031530.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A191406.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A191407.P5240060521186810576

`A001951(n)+A001951(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191407.P5240060521186810576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + A001951 (n + 3)

end

end A191407.P5240060521186810576

noncomputable section

/-- A191407: A001951(n)+A001951(n+3).

Offset 0, canonical program `A191407.P5240060521186810576`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+3)` (program `A191407.P5240060521186810576`, by `A191407.P5240060521186810576.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A191407 (n : ℕ) : ℤ :=
  A191407.P5240060521186810576.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+3)` (program `A191407.P5240060521186810576`, by `A191407.P5240060521186810576.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A191407.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A191558.P14009675995309042097

`n+1-A061397(n+1)`
-/

namespace A191558.P14009675995309042097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061397 (n + 1)

end

end A191558.P14009675995309042097

noncomputable section

/-- A191558: a(n) = 0 if n prime, otherwise n.

Offset 1, canonical program `A191558.P14009675995309042097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191558 (n : ℕ) : ℤ :=
  A191558.P14009675995309042097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191898.P10006135330361337922

`A023900(gcd(col(n)+1, row(n)-col(n)+1))`
-/

namespace A191898.P10006135330361337922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (Int.gcd (SequenceMachineLib.triCol n + 1 : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1))

end

end A191898.P10006135330361337922

noncomputable section

/-- A191898: Symmetric square array read by antidiagonals: T(n,1)=1, T(1,k)=1, T(n,k) = -Sum_{i=1..k-1} T(n-i,k) for n >= k, -Sum_{i=1..n-1} T(k-i,n) for n < k.

Offset 1, canonical program `A191898.P10006135330361337922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191898 (n : ℕ) : ℤ :=
  A191898.P10006135330361337922.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191898.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192085.P1830900292803087252

`A000120(n^3)`
-/

namespace A192085.P1830900292803087252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n ^ 3)

end

end A192085.P1830900292803087252

noncomputable section

/-- A192085: Number of ones in the binary expansion of n^3.

Offset 0, canonical program `A192085.P1830900292803087252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192085 (n : ℕ) : ℤ :=
  A192085.P1830900292803087252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192306.P16180315663506534326

`2*A122491(n+2)`
-/

namespace A192306.P16180315663506534326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122491 (n + 2)

end

end A192306.P16180315663506534326

noncomputable section

/-- A192306: 1-sequence of reduction of (2n) by x^2 -> x+1.

Offset 1, canonical program `A192306.P16180315663506534326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192306 (n : ℕ) : ℤ :=
  A192306.P16180315663506534326.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192308.P10463933346683699392

`3*A122491(n+2)`
-/

namespace A192308.P10463933346683699392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122491 (n + 2)

end

end A192308.P10463933346683699392

noncomputable section

/-- A192308: 1-sequence of reduction of (3n) by x^2 -> x+1.

Offset 1, canonical program `A192308.P10463933346683699392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192308 (n : ℕ) : ℤ :=
  A192308.P10463933346683699392.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192684.P14255452485337864781

`floor(sqrt(A004148(n)))`
-/

namespace A192684.P14255452485337864781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A004148 n)

end

end A192684.P14255452485337864781

noncomputable section

/-- A192684: Floor-Sqrt transform of numbers of A004148 (secondary structures).

Offset 0, canonical program `A192684.P14255452485337864781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192684 (n : ℕ) : ℤ :=
  A192684.P14255452485337864781.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193336.P7441199582202554829

`A146076(A000203(n+1))`
-/

namespace A193336.P7441199582202554829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A000203 (n + 1)).toNat

end

end A193336.P7441199582202554829

noncomputable section

/-- A193336: Sum of even divisors of sigma(n).

Offset 1, canonical program `A193336.P7441199582202554829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193336 (n : ℕ) : ℤ :=
  A193336.P7441199582202554829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193657.P433001986972353019

`A114870(n)+n!`
-/

namespace A193657.P433001986972353019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114870 n + (Nat.factorial n : ℤ)

end

end A193657.P433001986972353019

noncomputable section

/-- A193657: First difference of A002627.

Offset 0, canonical program `A193657.P433001986972353019`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193657 (n : ℕ) : ℤ :=
  A193657.P433001986972353019.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194039.P14669893716291510677

`A023890((n+1)²+1)`
-/

namespace A194039.P14669893716291510677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 ((n + 1) ^ 2 + 1)

end

end A194039.P14669893716291510677

noncomputable section

/-- A194039: Sum of nonprime divisors of n^2 + 1.

Offset 1, canonical program `A194039.P14669893716291510677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194039 (n : ℕ) : ℤ :=
  A194039.P14669893716291510677.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194157.P17008371756882806042

`A123029(2*(n+1))`
-/

namespace A194157.P17008371756882806042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123029 (2 * (n + 1))

end

end A194157.P17008371756882806042

noncomputable section

/-- A194157: Product of first n nonzero even-indexed Fibonacci numbers F(2), F(4), F(6), ..., F(2*n).

Offset 1, canonical program `A194157.P17008371756882806042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194157 (n : ℕ) : ℤ :=
  A194157.P17008371756882806042.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194158.P10027610832487113876

`A123029(2*n+1)`
-/

namespace A194158.P10027610832487113876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123029 (2 * n + 1)

end

end A194158.P10027610832487113876

noncomputable section

/-- A194158: Product of first n nonzero odd-indexed Fibonacci numbers F(1), ..., F(2*n-1).

Offset 1, canonical program `A194158.P10027610832487113876`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194158 (n : ℕ) : ℤ :=
  A194158.P10027610832487113876.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A194589.P3556960266445437551

`A194588(n)-A005043(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194589.P3556960266445437551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194588 n - A005043 n

end

end A194589.P3556960266445437551

noncomputable section

/-- A194589: a(n) = A194588(n) - A005043(n); complementary Riordan numbers.

Offset 0, canonical program `A194589.P3556960266445437551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194589 (n : ℕ) : ℤ :=
  A194589.P3556960266445437551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195155.P6480177575131545009

`1+A129308(n+1)`
-/

namespace A195155.P6480177575131545009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A129308 (n + 1)

end

end A195155.P6480177575131545009

noncomputable section

/-- A195155: Number of divisors d of n such that d-1 also divides n or d-1 = 0.

Offset 1, canonical program `A195155.P6480177575131545009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195155 (n : ℕ) : ℤ :=
  A195155.P6480177575131545009.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195462.P17303247732034193010

`A000178(n+1)*A001008(n+1)/A002805(n+1)`
-/

namespace A195462.P17303247732034193010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (n + 1) * A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A195462.P17303247732034193010

noncomputable section

/-- A195462: 1!*2!*3!*...*n!*H(n); H(n) the n-th harmonic number.

Offset 1, canonical program `A195462.P17303247732034193010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195462 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195462.P17303247732034193010.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195614.P7821756319866621661

`A014445(n+1)*A014445(n+2)/2`
-/

namespace A195614.P7821756319866621661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) * A014445 (n + 2) : ℚ) / 2

end

end A195614.P7821756319866621661

noncomputable section

/-- A195614: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 2.

Offset 1, canonical program `A195614.P7821756319866621661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A195614.P7821756319866621661.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200246.P7159132102986410661

`A000120(A000040(n+1))%2`
-/

namespace A200246.P7159132102986410661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A000040 (n + 1)).toNat) 2

end

end A200246.P7159132102986410661

noncomputable section

/-- A200246: a(n)=1 iff binary weight of n-th prime is odd.

Offset 1, canonical program `A200246.P7159132102986410661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200246 (n : ℕ) : ℤ :=
  A200246.P7159132102986410661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A200246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200474.P8473669537612726368

`floor(10*A001223(n+5)/log(A000040(n+5))²)`
-/

namespace A200474.P8473669537612726368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * A001223 (n + 5) : ℝ) / Real.log (A000040 (n + 5) : ℝ) ^ 2⌋

end

end A200474.P8473669537612726368

noncomputable section

/-- A200474: a(n) = floor(10*(prime(n+1)-prime(n))/log(prime(n))^2).

Offset 5, canonical program `A200474.P8473669537612726368`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10*(A000040(n+6)-A000040(n+5))/log(A000040(n+5))²)` (program `A200474.P5173763258436627195`, by `A200474.P5173763258436627195.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200474 (n : ℕ) : ℤ :=
  A200474.P8473669537612726368.a (n - 5)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10*(A000040(n+6)-A000040(n+5))/log(A000040(n+5))²)` (program `A200474.P5173763258436627195`, by `A200474.P5173763258436627195.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200474.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A201498.P15700971035858144036

`A099407(n+1)+3`
-/

namespace A201498.P15700971035858144036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099407 (n + 1) + 3

end

end A201498.P15700971035858144036

noncomputable section

/-- A201498: a(n) = (prime(n) - 1)*(prime(n+1) - 1)/2 + 3.

Offset 1, canonical program `A201498.P15700971035858144036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201498 (n : ℕ) : ℤ :=
  A201498.P15700971035858144036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203307.P15403217758868856959

`1/2*A028365(n+1)`
-/

namespace A203307.P15403217758868856959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A028365 (n + 1) : ℚ)

end

end A203307.P15403217758868856959

noncomputable section

/-- A203307: a(n) = v(n+1)/(2*v(n)), where v = A203305.

Offset 1, canonical program `A203307.P15403217758868856959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203307.P15403217758868856959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203424.P12572542512733872528

`2^C(n+1, 2)*A203421(n+1)`
-/

namespace A203424.P12572542512733872528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (n + 1) 2 : ℤ) * A203421 (n + 1)

end

end A203424.P12572542512733872528

noncomputable section

/-- A203424: Reciprocal of Vandermonde determinant of (1/2,1/4,...,1/(2n)).

Offset 1, canonical program `A203424.P12572542512733872528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203424 (n : ℕ) : ℤ :=
  A203424.P12572542512733872528.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A203424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153733.P10755713114946739736

`n-A331739(n+1)`
-/

namespace A153733.P10755713114946739736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331739 (n + 1)

end

end A153733.P10755713114946739736

noncomputable section

/-- A153733: Remove all trailing 1's in the binary representation of n.

Offset 0, canonical program `A153733.P10755713114946739736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153733 (n : ℕ) : ℤ :=
  A153733.P10755713114946739736.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154293.P10379766137476135061

`A069497(n+1)/6`
-/

namespace A154293.P10379766137476135061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069497 (n + 1) : ℚ) / 6

end

end A154293.P10379766137476135061

noncomputable section

/-- A154293: Integers of the form t/6, where t is a triangular number (A000217).

Offset 1, canonical program `A154293.P10379766137476135061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154293.P10379766137476135061.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161149.P17242516584261524791

`n!*A000909(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161149.P17242516584261524791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000909 n

end

end A161149.P17242516584261524791

noncomputable section

/-- A161149: a(n) = (2*n)!*(2*n+1)!/n! = n!*A000909(n).

Offset 0, canonical program `A161149.P17242516584261524791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161149 (n : ℕ) : ℤ :=
  A161149.P17242516584261524791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161411.P3251608708821509679

`A048883(n)*4`
-/

namespace A161411.P3251608708821509679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n * 4

end

end A161411.P3251608708821509679

noncomputable section

/-- A161411: First differences of A160410.

Offset 1, canonical program `A161411.P3251608708821509679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161411 (n : ℕ) : ℤ :=
  A161411.P3251608708821509679.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162349.P17912543935636946866

`3*A048883(n)`
-/

namespace A162349.P17912543935636946866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048883 n

end

end A162349.P17912543935636946866

noncomputable section

/-- A162349: First differences of A160412.

Offset 1, canonical program `A162349.P17912543935636946866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162349 (n : ℕ) : ℤ :=
  A162349.P17912543935636946866.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173523.P2383759421144788857

`1+A053735(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173523.P2383759421144788857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053735 n

end

end A173523.P2383759421144788857

noncomputable section

/-- A173523: 1+A053735(n-1), where A053735 is the sum-of-digits function in base 3.

Offset 1, canonical program `A173523.P2383759421144788857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173523 (n : ℕ) : ℤ :=
  A173523.P2383759421144788857.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173526.P10479073765119350543

`1+A053827(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173526.P10479073765119350543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053827 n

end

end A173526.P10479073765119350543

noncomputable section

/-- A173526: a(n) = 1 + A053827(n-1), where A053827 is the sum-of-digits function in base 6.

Offset 1, canonical program `A173526.P10479073765119350543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173526 (n : ℕ) : ℤ :=
  A173526.P10479073765119350543.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174114.P14655313204998795187

`A193868(n+1)/2`
-/

namespace A174114.P14655313204998795187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193868 (n + 1) : ℚ) / 2

end

end A174114.P14655313204998795187

noncomputable section

/-- A174114: Even central polygonal numbers (A193868) divided by 2.

Offset 1, canonical program `A174114.P14655313204998795187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174114.P14655313204998795187.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176479.P6065574295959308531

`(n+1)*A001003(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176479.P6065574295959308531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001003 n

end

end A176479.P6065574295959308531

noncomputable section

/-- A176479: a(n) = (n+1)*A001003(n).

Offset 0, canonical program `A176479.P6065574295959308531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176479 (n : ℕ) : ℤ :=
  A176479.P6065574295959308531.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176569.P11201890178761962617

`(-1)^(n+1)+A045344(n+1)`
-/

namespace A176569.P11201890178761962617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) + A045344 (n + 1)

end

end A176569.P11201890178761962617

noncomputable section

/-- A176569: a(n) = (-1)^n + (n-th prime of the form 3k-+1).

Offset 1, canonical program `A176569.P11201890178761962617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176569 (n : ℕ) : ℤ :=
  A176569.P11201890178761962617.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180189.P10168693953757439281

`2*A000387(n+1)`
-/

namespace A180189.P10168693953757439281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000387 (n + 1)

end

end A180189.P10168693953757439281

noncomputable section

/-- A180189: Number of permutations of [n] having exactly 1 circular succession. A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

Offset 1, canonical program `A180189.P10168693953757439281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180189 (n : ℕ) : ℤ :=
  A180189.P10168693953757439281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181666.P404722025159454241

`(4*2^A055086(n)-2^A082375(n))/3`
-/

namespace A181666.P404722025159454241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (2 : ℚ) ^ (A055086 n : ℤ) - (2 : ℚ) ^ (A082375 n : ℤ)) / 3

end

end A181666.P404722025159454241

noncomputable section

/-- A181666: Numbers whose odd part is of the form (4^k-1)/3.

Offset 1, canonical program `A181666.P404722025159454241`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181666.P404722025159454241.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182134.P4086781864908587248

`∑{#}[A249669(n+1)-A000040(n+2), A010051(#+A000040(n+2))]`
-/

namespace A182134.P4086781864908587248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A010051 ((k : ℤ) + A000040 (n + 2)).toNat

end

end A182134.P4086781864908587248

noncomputable section

/-- A182134: Number of primes p such that prime(n) < p < prime(n)^(1 + 1/n).

Offset 1, canonical program `A182134.P4086781864908587248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182134 (n : ℕ) : ℤ :=
  A182134.P4086781864908587248.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A185089.P10783222129125107798

`∑{#}[floor(n/2), C(n-#, #)*A001003(#)]`
-/

namespace A185089.P10783222129125107798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * A001003 k

end

end A185089.P10783222129125107798

noncomputable section

/-- A185089: A transform of the little Schroeder numbers.

Offset 0, canonical program `A185089.P10783222129125107798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185089 (n : ℕ) : ℤ :=
  A185089.P10783222129125107798.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A185089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188496.P17342167157377224321

`A188492(n+1)-A188495(n)-A002527(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188496.P17342167157377224321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188492 (n + 1) - A188495 n - A002527 n

end

end A188496.P17342167157377224321

noncomputable section

/-- A188496: a(n) = A188492(n+1) - A188495(n) - A002527(n).

Offset 0, canonical program `A188496.P17342167157377224321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188496 (n : ℕ) : ℤ :=
  A188496.P17342167157377224321.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190640.P15798364428475001138

`A005823(2*(n+1))`
-/

namespace A190640.P15798364428475001138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (2 * (n + 1))

end

end A190640.P15798364428475001138

noncomputable section

/-- A190640: Numbers whose base-3 expansion ends in 2 and does not contain any 1's.

Offset 1, canonical program `A190640.P15798364428475001138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190640 (n : ℕ) : ℤ :=
  A190640.P15798364428475001138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A189162.P11362982788040175534

`2^n+A189390(n)`
-/

namespace A189162.P11362982788040175534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A189390 n

end

end A189162.P11362982788040175534

noncomputable section

/-- A189162: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 1 to n, and each number in a higher row is the sum of the two numbers directly below it.

Offset 1, canonical program `A189162.P11362982788040175534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189162 (n : ℕ) : ℤ :=
  A189162.P11362982788040175534.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153348.P12024770680681712102

`comp[A092022(n+1)]`
-/

namespace A153348.P12024770680681712102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153348.P12024770680681712102

noncomputable section

/-- A153348: Numbers k such that 16*k+3 is not prime.

Offset 1, canonical program `A153348.P12024770680681712102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153348 (n : ℕ) : ℤ :=
  (A153348.P12024770680681712102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153371.P4443474790677712850

`A153370(2*(n+1))`
-/

namespace A153371.P4443474790677712850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153370 (2 * (n + 1))

end

end A153371.P4443474790677712850

noncomputable section

/-- A153371: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n rows whose color is that of the top right corner.

Offset 1, canonical program `A153371.P4443474790677712850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153371 (n : ℕ) : ℤ :=
  A153371.P4443474790677712850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153373.P17670144922407826206

`A153370(Δ[n²])`
-/

namespace A153373.P17670144922407826206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153373.P17670144922407826206

noncomputable section

/-- A153373: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n-1 rows whose color is not that of the top right corner.

Offset 1, canonical program `A153373.P17670144922407826206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153373 (n : ℕ) : ℤ :=
  A153373.P17670144922407826206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A153373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153383.P9115745439586942500

`comp[A110801(n+1)]`
-/

namespace A153383.P9115745439586942500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153383.P9115745439586942500

noncomputable section

/-- A153383: Numbers k such that 12*k+1 is not prime.

Offset 1, canonical program `A153383.P9115745439586942500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153383 (n : ℕ) : ℤ :=
  (A153383.P9115745439586942500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153400.P11699944517976299925

`comp[A111094(n+1)]`
-/

namespace A153400.P11699944517976299925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153400.P11699944517976299925

noncomputable section

/-- A153400: Numbers k such that 18*k+1 is not prime.

Offset 1, canonical program `A153400.P11699944517976299925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153400 (n : ℕ) : ℤ :=
  (A153400.P11699944517976299925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153767.P9865033134181886686

`p?[A153766(n+1)]`
-/

namespace A153767.P9865033134181886686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153767.P9865033134181886686

noncomputable section

/-- A153767: Primes p such that 8*p - 9 is also prime.

Offset 1, canonical program `A153767.P9865033134181886686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A153767 (n : ℕ) : ℤ :=
  A153767.P9865033134181886686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A153767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153775.P10416961851045421435

`A005823(n+2)-A132140(n+1)`
-/

namespace A153775.P10416961851045421435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 2) - A132140 (n + 1)

end

end A153775.P10416961851045421435

noncomputable section

/-- A153775: Sequence S such that 1 is in S and if x is in S, then 3x-1 and 3x are in S.

Offset 1, canonical program `A153775.P10416961851045421435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153775 (n : ℕ) : ℤ :=
  A153775.P10416961851045421435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153777.P14713501118659462030

`A033042(n+1)-A033042(n+1-A006257(n+1))`
-/

namespace A153777.P14713501118659462030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (n + 1) - A033042 ((n + 1 : ℤ) - A006257 (n + 1)).toNat

end

end A153777.P14713501118659462030

noncomputable section

/-- A153777: Sequence S such that 1 is in S and if x is in S, then 5x-1 and 5x+1 are in S.

Offset 1, canonical program `A153777.P14713501118659462030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153777 (n : ℕ) : ℤ :=
  A153777.P14713501118659462030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153777.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154336.P13527652642687108654

`2*A154335(n)-A060187(n+1)`
-/

namespace A154336.P13527652642687108654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154335 n - A060187 (n + 1)

end

end A154336.P13527652642687108654

noncomputable section

/-- A154336: A triangular sequence of coefficients of polynomials: p(x,n)=(3*(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}] -2*(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x).

Offset 0, canonical program `A154336.P13527652642687108654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154336 (n : ℕ) : ℤ :=
  A154336.P13527652642687108654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154336.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154436.P18184337590076184170

`xor(n, floor(A092569(n)/2))`
-/

namespace A154436.P18184337590076184170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A092569 n : ℚ) / 2⌋

end

end A154436.P18184337590076184170

noncomputable section

/-- A154436: Permutation of nonnegative integers induced by Lamplighter group generating wreath recursion, variant 1: a = s(a,b), b = (a,b), starting from the state a.

Offset 0, canonical program `A154436.P18184337590076184170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154436 (n : ℕ) : ℤ :=
  A154436.P18184337590076184170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154610.P1170947909514871666

`floor(A102732(n+1)/13)`
-/

namespace A154610.P1170947909514871666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102732 (n + 1) : ℚ) / 13⌋

end

end A154610.P1170947909514871666

noncomputable section

/-- A154610: Numbers n such that 13n + 5 is prime.

Offset 1, canonical program `A154610.P1170947909514871666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154610 (n : ℕ) : ℤ :=
  A154610.P1170947909514871666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154694.P16099243653721442215

`A154692(n)/A154690(n)*A154693(n)`
-/

namespace A154694.P16099243653721442215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154692 n : ℚ) / (A154690 n : ℚ) * (A154693 n : ℚ)

end

end A154694.P16099243653721442215

noncomputable section

/-- A154694: Triangle read by rows: T(n,k) = ((3/2)^k*2^n + (2/3)^k*3^n)*A008292(n+1,k+1).

Offset 0, canonical program `A154694.P16099243653721442215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A154694 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154694.P16099243653721442215.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A154694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154843.P571972679650347175

`A054654(n)+A048994(n)`
-/

namespace A154843.P571972679650347175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 n + A048994 n

end

end A154843.P571972679650347175

noncomputable section

/-- A154843: Triangular array, T(n,k) = s(n,k) + s(n,n-k), where s(n,k) are the Stirling numbers of the first kind.

Offset 0, canonical program `A154843.P571972679650347175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2557 terms. -/
def A154843 (n : ℕ) : ℤ :=
  A154843.P571972679650347175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2557 terms. -/
def A154843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154915.P4121523997023297092

`A154844(n)*A271709(n)`
-/

namespace A154915.P4121523997023297092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154844 n * A271709 n

end

end A154915.P4121523997023297092

noncomputable section

/-- A154915: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS2(n, k) + StirlingS2(n, n-k)) with p=2 and q=1, read by rows.

Offset 0, canonical program `A154915.P4121523997023297092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3099 terms. -/
def A154915 (n : ℕ) : ℤ :=
  A154915.P4121523997023297092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3099 terms. -/
def A154915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155124.P11009308192955337438

`A195084(A198954(n))`
-/

namespace A155124.P11009308192955337438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195084 (A198954 n).toNat

end

end A155124.P11009308192955337438

noncomputable section

/-- A155124: Triangle T(n, k) = 1-n if k=0 else 2, read by rows.

Offset 0, canonical program `A155124.P11009308192955337438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155124 (n : ℕ) : ℤ :=
  A155124.P11009308192955337438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155494.P8927190747223662045

`gcd(A103452(n), A141611(n))`
-/

namespace A155494.P8927190747223662045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A141611 n)

end

end A155494.P8927190747223662045

noncomputable section

/-- A155494: Triangle T(n, k) = (k+1)*(n-k+1)*binomial(n,k) with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A155494.P8927190747223662045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155494 (n : ℕ) : ℤ :=
  (A155494.P8927190747223662045.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155546.P2386952917106834247

`A154684(n+1)-2`
-/

namespace A155546.P2386952917106834247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - 2

end

end A155546.P2386952917106834247

noncomputable section

/-- A155546: Triangle read by rows where T(m,n)=2mn + m + n - 5, 1<=n<=m.

Offset 1, canonical program `A155546.P2386952917106834247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155546 (n : ℕ) : ℤ :=
  A155546.P2386952917106834247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155689.P2139899322435435333

`A020965(n+1)-A005187(n+1)`
-/

namespace A155689.P2139899322435435333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020965 (n + 1) - A005187 (n + 1)

end

end A155689.P2139899322435435333

noncomputable section

/-- A155689: a(n) = Sum_{k >= 1} floor(n * sqrt(2) / 2^k).

Offset 1, canonical program `A155689.P2139899322435435333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155689 (n : ℕ) : ℤ :=
  A155689.P2139899322435435333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155722.P2170865937026942924

`A101448(n+1)+1`
-/

namespace A155722.P2170865937026942924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) + 1

end

end A155722.P2170865937026942924

noncomputable section

/-- A155722: Numbers k such that 2*k + 9 is prime.

Offset 1, canonical program `A155722.P2170865937026942924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155722 (n : ℕ) : ℤ :=
  A155722.P2170865937026942924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155772.P13785239630017138189

`p?[A155771(n+1)]`
-/

namespace A155772.P13785239630017138189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155772.P13785239630017138189

noncomputable section

/-- A155772: Primes p such that 2*p^2+2*p-41 is a prime.

Offset 1, canonical program `A155772.P13785239630017138189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155772 (n : ℕ) : ℤ :=
  A155772.P13785239630017138189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155825.P7344650631331625546

`A098361(n)*A155742(n)`
-/

namespace A155825.P7344650631331625546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A155742 n

end

end A155825.P7344650631331625546

noncomputable section

/-- A155825: Triangle T(n, k) = (-1)^n * n! * StirlingS1(n, k)*StirlingS1(n, n-k)/binomial(n, k), read by rows.

Offset 0, canonical program `A155825.P7344650631331625546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A155825 (n : ℕ) : ℤ :=
  A155825.P7344650631331625546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A155825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155826.P9065841637278000591

`A155798(n)+2*A155742(n)`
-/

namespace A155826.P9065841637278000591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n + 2 * A155742 n

end

end A155826.P9065841637278000591

noncomputable section

/-- A155826: Triangle T(n, k) = binomial(n, k) + binomial(k*(n-k), n) + 2*(-1)^n*StirlingS1(n, k)*StirlingS1(n, n-k), read by rows.

Offset 0, canonical program `A155826.P9065841637278000591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1401 terms. -/
def A155826 (n : ℕ) : ℤ :=
  A155826.P9065841637278000591.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1401 terms. -/
def A155826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155854.P8987642405607699949

`comp[A155853(n+1)]`
-/

namespace A155854.P8987642405607699949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155854.P8987642405607699949

noncomputable section

/-- A155854: Numbers k such that 13*k + 3 is not prime.

Offset 1, canonical program `A155854.P8987642405607699949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155854 (n : ℕ) : ℤ :=
  (A155854.P8987642405607699949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155863.P6306218083756010822

`gcd(A068606(n)*A130595(n), A103452(n))`
-/

namespace A155863.P6306218083756010822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068606 n * A130595 n) (A103452 n)

end

end A155863.P6306218083756010822

noncomputable section

/-- A155863: Triangle T(n,k) = n*(n^2 - 1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A155863.P6306218083756010822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155863 (n : ℕ) : ℤ :=
  (A155863.P6306218083756010822.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155865.P6741079026207357977

`A134399(A056943(n))`
-/

namespace A155865.P6741079026207357977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 (A056943 n).toNat

end

end A155865.P6741079026207357977

noncomputable section

/-- A155865: Triangle T(n,k) = (n-1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A155865.P6741079026207357977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155865 (n : ℕ) : ℤ :=
  A155865.P6741079026207357977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155868.P6714465511170270872

`gcd(A103452(n), A155742(n))`
-/

namespace A155868.P6714465511170270872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A155742 n)

end

end A155868.P6714465511170270872

noncomputable section

/-- A155868: Triangle T(n, k) = (-1)^n*StirlingS1(n, j)*StirlingS1(n, n-j), with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A155868.P6714465511170270872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1402 terms. -/
def A155868 (n : ℕ) : ℤ :=
  (A155868.P6714465511170270872.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1402 terms. -/
def A155868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155881.P7949998546200455293

`A061217(A000045(n+1))`
-/

namespace A155881.P7949998546200455293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (A000045 (n + 1)).toNat

end

end A155881.P7949998546200455293

noncomputable section

/-- A155881: a(n) is the number of zeros needed to write the integers 1 through Fibonacci(n).

Offset 1, canonical program `A155881.P7949998546200455293`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155881 (n : ℕ) : ℤ :=
  A155881.P7949998546200455293.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155937.P8364349448118124700

`floor(A092178(n+1)/13)`
-/

namespace A155937.P8364349448118124700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092178 (n + 1) : ℚ) / 13⌋

end

end A155937.P8364349448118124700

noncomputable section

/-- A155937: Numbers n such that 13*n + 8 is a prime.

Offset 1, canonical program `A155937.P8364349448118124700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155937 (n : ℕ) : ℤ :=
  A155937.P8364349448118124700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155945.P7413010090445618353

`comp[A139529(n+1)]`
-/

namespace A155945.P7413010090445618353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155945.P7413010090445618353

noncomputable section

/-- A155945: Numbers n such that 24*n + 13 is not prime.

Offset 1, canonical program `A155945.P7413010090445618353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155945 (n : ℕ) : ℤ :=
  (A155945.P7413010090445618353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156004.P9472163527140121150

`p?[A105133(n+1)-2]`
-/

namespace A156004.P9472163527140121150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P9472163527140121150

noncomputable section

/-- A156004: Primes p such that 8*p+21 is prime.

Offset 1, canonical program `A156004.P9472163527140121150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A156004 (n : ℕ) : ℤ :=
  A156004.P9472163527140121150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A156004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156104.P4633343175007743095

`p?[A065091(n+1)+36]-36`
-/

namespace A156104.P4633343175007743095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 36

end

end A156104.P4633343175007743095

noncomputable section

/-- A156104: Primes p such that p+36 is also prime.

Offset 1, canonical program `A156104.P4633343175007743095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A156104 (n : ℕ) : ℤ :=
  A156104.P4633343175007743095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. -/
def A156104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156249.P2244503862382991979

`-∑[(-1)^n*A000002(2*n+1)]`
-/

namespace A156249.P2244503862382991979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156249.P2244503862382991979

noncomputable section

/-- A156249: a(n)=sum(k=1,n,(-1)^k*A000002(2*k-1)).

Offset 1, canonical program `A156249.P2244503862382991979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A156249 (n : ℕ) : ℤ :=
  A156249.P2244503862382991979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A156249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156287.P14892850201557753402

`A005099(n+1)+1`
-/

namespace A156287.P14892850201557753402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + 1

end

end A156287.P14892850201557753402

noncomputable section

/-- A156287: Numbers k such that 4*k-5 is a prime number.

Offset 1, canonical program `A156287.P14892850201557753402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156287 (n : ℕ) : ℤ :=
  A156287.P14892850201557753402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156319.P9547265538393638978

`A114283(n)%3`
-/

namespace A156319.P9547265538393638978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114283 n) 3

end

end A156319.P9547265538393638978

noncomputable section

/-- A156319: Triangle by columns: (1, 2, 0, 0, 0, ...) in every column.

Offset 1, canonical program `A156319.P9547265538393638978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156319 (n : ℕ) : ℤ :=
  A156319.P9547265538393638978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156324.P16266470753599267487

`A014683(a(n-1)+n)` with `a(0)=0`
-/

namespace A156324.P16266470753599267487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014683 (a (n - 1) + (n : ℤ)).toNat

end

end A156324.P16266470753599267487

noncomputable section

/-- A156324: a(1)=0, a(n+1) is smallest nonprime >= a(n)+n.

Offset 1, canonical program `A156324.P16266470753599267487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A156324 (n : ℕ) : ℤ :=
  A156324.P16266470753599267487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A156324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156541.P16873240760664581881

`eq[1, ∏{p}[n+1, A101264(#)]]+1`
-/

namespace A156541.P16873240760664581881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A101264 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156541.P16873240760664581881

noncomputable section

/-- A156541: Multiplicative closure of Sophie Germain primes (A005384).

Offset 1, canonical program `A156541.P16873240760664581881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A156541 (n : ℕ) : ℤ :=
  (A156541.P16873240760664581881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A156541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156577.P10244984748318526684

`3^n*A126931(n)`
-/

namespace A156577.P10244984748318526684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A126931 n

end

end A156577.P10244984748318526684

noncomputable section

/-- A156577: a(2*n+2) = 10*a(2*n+1), a(2*n+1) = 10*a(2*n) - 9^n*A000108(n), a(0) = 1.

Offset 0, canonical program `A156577.P10244984748318526684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A156577 (n : ℕ) : ℤ :=
  A156577.P10244984748318526684.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A156577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156578.P4649527317743523446

`Δ[-A145677(n+2)]`
-/

namespace A156578.P4649527317743523446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145677 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P4649527317743523446

noncomputable section

/-- A156578: Triangle of coefficients of 1 - (n+1)*x^n + n*x^(n+1), read by rows.

Offset 0, canonical program `A156578.P4649527317743523446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A156578 (n : ℕ) : ℤ :=
  A156578.P4649527317743523446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A156578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156584.P14054517684748472643

`A001263(n+1)/A007318(n)*A009963(n)`
-/

namespace A156584.P14054517684748472643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A009963 n : ℚ)

end

end A156584.P14054517684748472643

noncomputable section

/-- A156584: Triangle T(n,k) = SF(n+1)/(SF(n-k+1)*SF(k+1)) where SF(n) is the superfactorial A000178(n), read by rows.

Offset 0, canonical program `A156584.P14054517684748472643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A156584 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156584.P14054517684748472643.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A156584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156596.P16517224717250966737

`(n%2+1)*A005614(n)`
-/

namespace A156596.P16517224717250966737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A005614 n

end

end A156596.P16517224717250966737

noncomputable section

/-- A156596: Infinite Fibonacci word fractal sequence.

Offset 1, canonical program `A156596.P16517224717250966737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156596 (n : ℕ) : ℤ :=
  A156596.P16517224717250966737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156657.P13599752432908791123

`comp[p?[A072055(n+1)]]`
-/

namespace A156657.P13599752432908791123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P13599752432908791123

noncomputable section

/-- A156657: Numbers that are not safe primes.

Offset 1, canonical program `A156657.P13599752432908791123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156657 (n : ℕ) : ℤ :=
  (A156657.P13599752432908791123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156660.P13297999666719804209

`and(A101264(n), A105700(n))`
-/

namespace A156660.P13297999666719804209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101264 n) (A105700 n)

end

end A156660.P13297999666719804209

noncomputable section

/-- A156660: Characteristic function of Sophie Germain primes.

Offset 0, canonical program `A156660.P13297999666719804209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156660 (n : ℕ) : ℤ :=
  A156660.P13297999666719804209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156706.P17768432936100501538

`n-xor(n, A075743(n+1))`
-/

namespace A156706.P17768432936100501538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A075743 (n + 1))

end

end A156706.P17768432936100501538

noncomputable section

/-- A156706: For all numbers k(n) congruent to +1 or -1 (mod 6) starting with k(n) = {5,7,11,13,...}, a(k(n)) is the congruence (mod 6) if k(n) is prime and 0 if k(n) is composite.

Offset 1, canonical program `A156706.P17768432936100501538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156706 (n : ℕ) : ℤ :=
  A156706.P17768432936100501538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156707.P12869968177507882288

`n-xor(n, A101264(n+1))`
-/

namespace A156707.P12869968177507882288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A101264 (n + 1))

end

end A156707.P12869968177507882288

noncomputable section

/-- A156707: For all numbers k(n) congruent to +1 or -1 (mod 4) starting with k(n) = {3,5,7,9,11,...}, a(k(n)) is the congruence (mod 4) if k(n) is prime and 0 if k(n) is composite.

Offset 1, canonical program `A156707.P12869968177507882288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156707 (n : ℕ) : ℤ :=
  A156707.P12869968177507882288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156721.P6408730910130201456

`round(sqrt(A156639(n+1))*A156627(n+1))`
-/

namespace A156721.P6408730910130201456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A156639 (n + 1) : ℝ) * (A156627 (n + 1) : ℝ))

end

end A156721.P6408730910130201456

noncomputable section

/-- A156721: a(n) = 57122*n^2 - 47320*n + 9801.

Offset 1, canonical program `A156721.P6408730910130201456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156721 (n : ℕ) : ℤ :=
  A156721.P6408730910130201456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156765.P17807041584160182449

`A009963(n)/A007318(n)*A157638(n)`
-/

namespace A156765.P17807041584160182449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 n : ℚ) / (A007318 n : ℚ) * (A157638 n : ℚ)

end

end A156765.P17807041584160182449

noncomputable section

/-- A156765: Triangle T(n, k, m) = f(n, m)/(f(k, m)*f(n-k, m)), where T(0, k, m) = 1, f(n, k) = Product_{j=1..n} ( j!*((k+1)^j -1)/k ), f(n, 0) = n!, and m = 1, read by rows.

Offset 0, canonical program `A156765.P17807041584160182449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A156765 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156765.P17807041584160182449.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A156765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156991.P556303608998092449

`A003056(n)!*A097805(A245300(n))`
-/

namespace A156991.P556303608998092449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A097805 (A245300 n).toNat

end

end A156991.P556303608998092449

noncomputable section

/-- A156991: Triangle T(n,k) read by rows: T(n,k) = n! * binomial(n + k - 1, n).

Offset 0, canonical program `A156991.P556303608998092449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A156991 (n : ℕ) : ℤ :=
  A156991.P556303608998092449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A156991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157003.P4033373367081251364

`∑[A157002(n)]`
-/

namespace A157003.P4033373367081251364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157003.P4033373367081251364

noncomputable section

/-- A157003: Transform of Catalan numbers whose Hankel transform gives the Somos-4 sequence.

Offset 0, canonical program `A157003.P4033373367081251364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A157003 (n : ℕ) : ℤ :=
  A157003.P4033373367081251364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A157003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157127.P10513309876568026878

`∑[A157125(n)]`
-/

namespace A157127.P10513309876568026878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157127.P10513309876568026878

noncomputable section

/-- A157127: A transform of the Catalan numbers with a simple Hankel transform.

Offset 0, canonical program `A157127.P10513309876568026878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A157127 (n : ℕ) : ℤ :=
  A157127.P10513309876568026878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A157127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157202.P3382835280700317586

`eq[1, A075743(A161709(n))]`
-/

namespace A157202.P3382835280700317586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A161709 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P3382835280700317586

noncomputable section

/-- A157202: Numbers k such that 66*k + 5 is prime.

Offset 1, canonical program `A157202.P3382835280700317586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A157202 (n : ℕ) : ℤ :=
  (A157202.P3382835280700317586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A157202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157328.P4452604043700386186

`2^n*A064062(n)`
-/

namespace A157328.P4452604043700386186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A064062 n

end

end A157328.P4452604043700386186

noncomputable section

/-- A157328: Expansion of 1/(1-2x*c(4x)) with c(x) g.f. of Catalan numbers (A000108).

Offset 0, canonical program `A157328.P4452604043700386186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328 (n : ℕ) : ℤ :=
  A157328.P4452604043700386186.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157423.P10964563261487709945

`A005171(A004736(n+1))`
-/

namespace A157423.P10964563261487709945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A004736 (n + 1)).toNat

end

end A157423.P10964563261487709945

noncomputable section

/-- A157423: Triangle read by rows, T(n,k) = 0 if (n-k+1) is prime, else 1.

Offset 1, canonical program `A157423.P10964563261487709945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157423 (n : ℕ) : ℤ :=
  A157423.P10964563261487709945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157458.P16856629470642738053

`A157454(n+1)-A003982(n)`
-/

namespace A157458.P16856629470642738053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) - A003982 n

end

end A157458.P16856629470642738053

noncomputable section

/-- A157458: Triangle, read by rows, double tent function: T(n,k) = min(1 + 2*k, 1 + 2*(n-k), n).

Offset 0, canonical program `A157458.P16856629470642738053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157458 (n : ℕ) : ℤ :=
  A157458.P16856629470642738053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157492.P2918812419229499210

`∑[A024450(n+1)]`
-/

namespace A157492.P2918812419229499210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P2918812419229499210

noncomputable section

/-- A157492: Apply partial sum operator twice to sequence of squares of the first n primes.

Offset 1, canonical program `A157492.P2918812419229499210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157492 (n : ℕ) : ℤ :=
  A157492.P2918812419229499210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157628.P10806656981275621240

`round(sqrt(A157626(n+1))*A157627(n+1))`
-/

namespace A157628.P10806656981275621240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157626 (n + 1) : ℝ) * (A157627 (n + 1) : ℝ))

end

end A157628.P10806656981275621240

noncomputable section

/-- A157628: a(n) = 80000n^2 - 120800n + 45601.

Offset 1, canonical program `A157628.P10806656981275621240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157628 (n : ℕ) : ℤ :=
  A157628.P10806656981275621240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157632.P11981151673008096527

`A103452(n)²+A176284(n)-1`
-/

namespace A157632.P11981151673008096527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 + (A176284 n - 1)

end

end A157632.P11981151673008096527

noncomputable section

/-- A157632: Triangle T(n,m) read by rows: 1 in column m=0 and on the diagonal, else 3*n*m*(n-m).

Offset 0, canonical program `A157632.P11981151673008096527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A157632 (n : ℕ) : ℤ :=
  A157632.P11981151673008096527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A157632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157654.P18153573598594551310

`gcd(2*A049581(n), A103452(n))`
-/

namespace A157654.P18153573598594551310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A049581 n) (A103452 n)

end

end A157654.P18153573598594551310

noncomputable section

/-- A157654: Triangle T(n, k, m) = 1 if k = 0 or k = n, otherwise m*abs( (n-k)^(m-1) - k^(m-1) ), with m = 2, read by rows.

Offset 0, canonical program `A157654.P18153573598594551310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157654 (n : ℕ) : ℤ :=
  (A157654.P18153573598594551310.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157855.P8984968890830206206

`A157661(4*A017245(n))`
-/

namespace A157855.P8984968890830206206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (4 * A017245 n).toNat

end

end A157855.P8984968890830206206

noncomputable section

/-- A157855: a(n) = 103680000*n^2 - 46108800*n + 5126401.

Offset 1, canonical program `A157855.P8984968890830206206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A157855 (n : ℕ) : ℤ :=
  A157855.P8984968890830206206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A157855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157859.P8913909548646878911

`A157661(Δ[A164016(n)])`
-/

namespace A157859.P8913909548646878911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (f1 (n + 1) - f1 n).toNat

end

end A157859.P8913909548646878911

noncomputable section

/-- A157859: a(n) = 103680000*n^2 - 28800*n + 1.

Offset 1, canonical program `A157859.P8913909548646878911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157859 (n : ℕ) : ℤ :=
  A157859.P8913909548646878911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157863.P15523620367510719815

`A157664(36*(n+1))`
-/

namespace A157863.P15523620367510719815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157664 (36 * (n + 1))

end

end A157863.P15523620367510719815

noncomputable section

/-- A157863: a(n) = 103680000*n^2 + 28800*n + 1.

Offset 1, canonical program `A157863.P15523620367510719815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157863 (n : ℕ) : ℤ :=
  A157863.P15523620367510719815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. -/
def A157863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157893.P15698014607538601386

`val(A082662(n+1), 2)+1`
-/

namespace A157893.P15698014607538601386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082662 (n + 1)).toNat 2 + 1

end

end A157893.P15698014607538601386

noncomputable section

/-- A157893: Values of m in A080075.

Offset 1, canonical program `A157893.P15698014607538601386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157893 (n : ℕ) : ℤ :=
  (A157893.P15698014607538601386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158014.P12413246959562192546

`8*A023228(n+1)+1`
-/

namespace A158014.P12413246959562192546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023228 (n + 1) + 1

end

end A158014.P12413246959562192546

noncomputable section

/-- A158014: Primes p such that (p-1)/8 is also prime.

Offset 1, canonical program `A158014.P12413246959562192546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158014 (n : ℕ) : ℤ :=
  A158014.P12413246959562192546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158015.P7047536618919471622

`p?[A024898(n+1)]`
-/

namespace A158015.P7047536618919471622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158015.P7047536618919471622

noncomputable section

/-- A158015: Primes p such that 6*p-1 is also prime.

Offset 1, canonical program `A158015.P7047536618919471622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A158015 (n : ℕ) : ℤ :=
  A158015.P7047536618919471622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A158015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158019.P16095416846168074272

`∩[A072055(n+1), A105042(n+1)]`
-/

namespace A158019.P16095416846168074272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158019.P16095416846168074272

noncomputable section

/-- A158019: Numbers such that (n-1)/2 and 10*n-1 are both prime.

Offset 1, canonical program `A158019.P16095416846168074272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. -/
def A158019 (n : ℕ) : ℤ :=
  (A158019.P16095416846168074272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. -/
def A158019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158233.P11105572687020683918

`(A120070(n+3)*A120070(n+2))%9`
-/

namespace A158233.P11105572687020683918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120070 (n + 3) * A120070 (n + 2)) 9

end

end A158233.P11105572687020683918

noncomputable section

/-- A158233: a(n) = A120070(n+1)*A120070(n+2) mod 9.

Offset 1, canonical program `A158233.P11105572687020683918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A158233 (n : ℕ) : ℤ :=
  A158233.P11105572687020683918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A158233.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158821.P7475338757825604441

`abs(2-A131033(n+1))`
-/

namespace A158821.P7475338757825604441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131033 (n + 1)|

end

end A158821.P7475338757825604441

noncomputable section

/-- A158821: Triangle read by rows: row n (n>=0) ends with 1, and for n>=1 begins with n; other entries are zero.

Offset 0, canonical program `A158821.P7475338757825604441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158821 (n : ℕ) : ℤ :=
  A158821.P7475338757825604441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158848.P14497235281898123101

`A086081(n+12)`
-/

namespace A158848.P14497235281898123101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086081 (n + 12)

end

end A158848.P14497235281898123101

noncomputable section

/-- A158848: Prime numbers p where 2^k-p is prime, with k>6 and minimal.

Offset 1, canonical program `A158848.P14497235281898123101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158848 (n : ℕ) : ℤ :=
  A158848.P14497235281898123101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158893.P14217373209629324848

`A004736(n+1)+6*A004526(A198954(n))`
-/

namespace A158893.P14217373209629324848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 6 * A004526 (A198954 n).toNat

end

end A158893.P14217373209629324848

noncomputable section

/-- A158893: Triangle read by rows: T(n,1)=7n-6; T(n,m)= 1+n-m, 1<m<=n.

Offset 1, canonical program `A158893.P14217373209629324848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158893 (n : ℕ) : ℤ :=
  A158893.P14217373209629324848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158925.P1961462700023655035

`A025528(A158923(n+1))-(n+1)`
-/

namespace A158925.P1961462700023655035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A158923 (n + 1)).toNat - (n + 1 : ℤ)

end

end A158925.P1961462700023655035

noncomputable section

/-- A158925: Accumulated excess or deficit of prime powers in (1, A158924(n)].

Offset 1, canonical program `A158925.P1961462700023655035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158925 (n : ℕ) : ℤ :=
  A158925.P1961462700023655035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159036.P16671267747354040259

`A115390(n)+Δ[A159035(n)]`
-/

namespace A159036.P16671267747354040259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n + (f1 (n + 1) - f1 n)

end

end A159036.P16671267747354040259

noncomputable section

/-- A159036: a(0)=0, a(1)=1, a(2)=4, a(3)=13; thereafter a(n+3)=4*a(n+2)-4*a(n+1)+2*a(n) for n>=1.

Offset 0, canonical program `A159036.P16671267747354040259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A159036 (n : ℕ) : ℤ :=
  A159036.P16671267747354040259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A159036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159043.P591640030146997195

`p?[A008864(n+1)+A000040(n+4)]`
-/

namespace A159043.P591640030146997195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000040 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159043.P591640030146997195

noncomputable section

/-- A159043: Primes of the form prime(n)+prime(n+3)+1.

Offset 1, canonical program `A159043.P591640030146997195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159043 (n : ℕ) : ℤ :=
  A159043.P591640030146997195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159045.P12667360026089005366

`p?[A008864(n+1)+A000040(n+6)]`
-/

namespace A159045.P12667360026089005366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000040 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159045.P12667360026089005366

noncomputable section

/-- A159045: Primes of the form prime(k) + prime(k+5) + 1.

Offset 1, canonical program `A159045.P12667360026089005366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159045 (n : ℕ) : ℤ :=
  A159045.P12667360026089005366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A159045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159461.P8896828948141385793

`A158611(n+4)-A158611(n+2)-2`
-/

namespace A159461.P8896828948141385793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 4) - A158611 (n + 2) - 2

end

end A159461.P8896828948141385793

noncomputable section

/-- A159461: Numbers of previous and following composites of n-th prime.

Offset 1, canonical program `A159461.P8896828948141385793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159461 (n : ℕ) : ℤ :=
  A159461.P8896828948141385793.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159853.P10122269261997446491

`A097805(n)+Δ[A097805(A083920(n))]`
-/

namespace A159853.P10122269261997446491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (f1 (n + 1) - f1 n)

end

end A159853.P10122269261997446491

noncomputable section

/-- A159853: Riordan array ((1-2*x+2*x^2)/(1-x), x/(1-x)).

Offset 0, canonical program `A159853.P10122269261997446491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159853 (n : ℕ) : ℤ :=
  A159853.P10122269261997446491.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159855.P15097114354535819429

`A112467(n)-A097805(A103517(n)%A181133(n+1))`
-/

namespace A159855.P15097114354535819429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n - A097805 (Int.tmod (A103517 n) (A181133 (n + 1))).toNat

end

end A159855.P15097114354535819429

noncomputable section

/-- A159855: Riordan array ((1-2*x-x^2)/(1-x), x/(1-x)).

Offset 0, canonical program `A159855.P15097114354535819429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159855 (n : ℕ) : ℤ :=
  A159855.P15097114354535819429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160007.P3271446756844872376

`A023196(n+1)+A000035(A002659(2*n+5))`
-/

namespace A160007.P3271446756844872376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A000035 (A002659 (2 * n + 5)).toNat

end

end A160007.P3271446756844872376

noncomputable section

/-- A160007: Deficient numbers more than 1 unit away from their predecessors.

Offset 1, canonical program `A160007.P3271446756844872376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1400 terms. -/
def A160007 (n : ℕ) : ℤ :=
  A160007.P3271446756844872376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1400 terms. -/
def A160007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160145.P11156095965020808624

`A005408(n)-A160144(n)`
-/

namespace A160145.P11156095965020808624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A160144 n

end

end A160145.P11156095965020808624

noncomputable section

/-- A160145: a(n) = the odd number 2n+1 minus the numerator of (2n+1)/(2^(2n+1)-1).

Offset 0, canonical program `A160145.P11156095965020808624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160145 (n : ℕ) : ℤ :=
  A160145.P11156095965020808624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160410.P2265682032129566440

`∑[4*A048883(n)]-4*A048883(n)`
-/

namespace A160410.P2265682032129566440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4 * A048883 n

end

end A160410.P2265682032129566440

noncomputable section

/-- A160410: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A160410.P2265682032129566440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160410 (n : ℕ) : ℤ :=
  A160410.P2265682032129566440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160831.P13544186760015330901

`A160788(n)+A135503(n)²`
-/

namespace A160831.P13544186760015330901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + A135503 n ^ 2

end

end A160831.P13544186760015330901

noncomputable section

/-- A160831: G.f.: (1+62*x+570*x^2+1095*x^3+530*x^4+57*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160831.P13544186760015330901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160831 (n : ℕ) : ℤ :=
  A160831.P13544186760015330901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160907.P7332903900191981715

`A001222((n+1)²)+Δ[A022559((n+1)²)]`
-/

namespace A160907.P7332903900191981715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) + (f1 (n + 1) - f1 n)

end

end A160907.P7332903900191981715

noncomputable section

/-- A160907: Sum of the number of prime divisors including repetitions between n^2 and (n+1)^2.

Offset 1, canonical program `A160907.P7332903900191981715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A160907 (n : ℕ) : ℤ :=
  A160907.P7332903900191981715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A160907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160950.P820166746106121254

`p?[A006254(n+1)-53]`
-/

namespace A160950.P820166746106121254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P820166746106121254

noncomputable section

/-- A160950: Primes p such that 2p + 105 is prime.

Offset 1, canonical program `A160950.P820166746106121254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A160950 (n : ℕ) : ℤ :=
  A160950.P820166746106121254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A160950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161119.P4814406896109000407

`A066325(n)²*A233543(n)`
-/

namespace A161119.P4814406896109000407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n ^ 2 * A233543 n

end

end A161119.P4814406896109000407

noncomputable section

/-- A161119: Triangle read by rows: T(n,k) is the number of fixed-point-free involutions of {1,2,...,2n} having k cycles with entries of opposite parities (0 <= k <= n).

Offset 0, canonical program `A161119.P4814406896109000407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A161119 (n : ℕ) : ℤ :=
  A161119.P4814406896109000407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A161119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161187.P14587540227680804446

`A117490(n+1)+∑[A010051(n+1)+1]`
-/

namespace A161187.P14587540227680804446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161187.P14587540227680804446

noncomputable section

/-- A161187: Let S = A089237\{0} = union of primes and nonzero squares; sequence gives indices of squares.

Offset 1, canonical program `A161187.P14587540227680804446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161187 (n : ℕ) : ℤ :=
  A161187.P14587540227680804446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161345.P15004225687022458003

`3*A161346(n+1)`
-/

namespace A161345.P15004225687022458003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161346 (n + 1)

end

end A161345.P15004225687022458003

noncomputable section

/-- A161345: Numbers k whose largest divisor <= sqrt(k) is 3.

Offset 1, canonical program `A161345.P15004225687022458003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161345 (n : ℕ) : ℤ :=
  A161345.P15004225687022458003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161463.P3939391229577481426

`A036439(2*(n+1))-A036439(n+1)`
-/

namespace A161463.P3939391229577481426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * (n + 1)) - A036439 (n + 1)

end

end A161463.P3939391229577481426

noncomputable section

/-- A161463: Sum of all primes from n-th prime to (2*n-1)-th prime.

Offset 1, canonical program `A161463.P3939391229577481426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161463 (n : ℕ) : ℤ :=
  A161463.P3939391229577481426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161569.P6850851275196449247

`a(n-1)+A018252(n+1)-(n+1)` with `a(0)=0`
-/

namespace A161569.P6850851275196449247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A018252 (n + 1) - (n + 1 : ℤ)

end

end A161569.P6850851275196449247

noncomputable section

/-- A161569: Sum of first n nonprimes minus their indices.

Offset 1, canonical program `A161569.P6850851275196449247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161569 (n : ℕ) : ℤ :=
  A161569.P6850851275196449247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161570.P5322671682470775106

`A000217(A018252(n+1))-A000217(n)`
-/

namespace A161570.P5322671682470775106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A018252 (n + 1)).toNat - A000217 n

end

end A161570.P5322671682470775106

noncomputable section

/-- A161570: Sum of all numbers from n up to A018252(n).

Offset 1, canonical program `A161570.P5322671682470775106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161570 (n : ℕ) : ℤ :=
  A161570.P5322671682470775106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161612.P9446970162319357204

`p?[A036439(n+16)-A036439(n+1)]`
-/

namespace A161612.P9446970162319357204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 16) - A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P9446970162319357204

noncomputable section

/-- A161612: Primes that are the sum of 15 consecutive primes.

Offset 1, canonical program `A161612.P9446970162319357204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A161612 (n : ℕ) : ℤ :=
  A161612.P9446970162319357204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A161612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161625.P5203370904479335656

`C(A007652(n+1)+1, 2)`
-/

namespace A161625.P5203370904479335656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007652 (n + 1) + 1).toNat 2

end

end A161625.P5203370904479335656

noncomputable section

/-- A161625: Sum of all numbers from 1 up to the final digit of prime(n).

Offset 1, canonical program `A161625.P5203370904479335656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161625 (n : ℕ) : ℤ :=
  (A161625.P5203370904479335656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161736.P11030662327704331817

`A001902(2*(n+2)-3)`
-/

namespace A161736.P11030662327704331817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001902 (2 * (n + 2) - 3)

end

end A161736.P11030662327704331817

noncomputable section

/-- A161736: Denominators of the column sums of the BG2 matrix.

Offset 2, canonical program `A161736.P11030662327704331817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161736 (n : ℕ) : ℤ :=
  A161736.P11030662327704331817.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161769.P8171800208804312723

`lt[1, A161606(n+1)]+1`
-/

namespace A161769.P8171800208804312723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161769.P8171800208804312723

noncomputable section

/-- A161769: A positive integer k is included if the greatest common divisor of (the sum of the distinct primes dividing k) and (the sum of the exponents in the prime factorization of k) is > 1.

Offset 1, canonical program `A161769.P8171800208804312723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4391 terms. -/
def A161769 (n : ℕ) : ℤ :=
  (A161769.P8171800208804312723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4391 terms. -/
def A161769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161777.P1199000887852038007

`A000217(A018252(n+1)-1)`
-/

namespace A161777.P1199000887852038007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A018252 (n + 1) - 1).toNat

end

end A161777.P1199000887852038007

noncomputable section

/-- A161777: n-th nonprime*(n-th nonprime-1)/2.

Offset 1, canonical program `A161777.P1199000887852038007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161777 (n : ℕ) : ℤ :=
  A161777.P1199000887852038007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161789.P10570170875906748865

`A070939(∑{d}[A103517(n), A135416(#)])`
-/

namespace A161789.P10570170875906748865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (∑ d ∈ Nat.divisors (f1 n).natAbs, A135416 d).toNat

end

end A161789.P10570170875906748865

noncomputable section

/-- A161789: a(n) is the largest integer k such that 2^k - 1 divides n.

Offset 1, canonical program `A161789.P10570170875906748865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161789 (n : ℕ) : ℤ :=
  A161789.P10570170875906748865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161846.P11838150568926101259

`A063076(n+1)/gcd(5, A000040(n+1))`
-/

namespace A161846.P11838150568926101259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063076 (n + 1) : ℚ) / (Int.gcd 5 (A000040 (n + 1)) : ℚ)

end

end A161846.P11838150568926101259

noncomputable section

/-- A161846: Numerator of the ratio (prime((n+1)^2) - prime(n^2))/prime(n).

Offset 1, canonical program `A161846.P11838150568926101259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3141 terms. -/
def A161846 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161846.P11838150568926101259.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3141 terms. -/
def A161846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162177.P8282933836838632122

`A158611(n+2)-(n+1)`
-/

namespace A162177.P8282933836838632122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) - (n + 1 : ℤ)

end

end A162177.P8282933836838632122

noncomputable section

/-- A162177: a(n) is the number of composite numbers that are smaller than A008578(n).

Offset 1, canonical program `A162177.P8282933836838632122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162177 (n : ℕ) : ℤ :=
  A162177.P8282933836838632122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162194.P3478823718084409657

`A000203(A018252(n+1))`
-/

namespace A162194.P3478823718084409657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (n + 1)).toNat

end

end A162194.P3478823718084409657

noncomputable section

/-- A162194: Sum of divisors of nonprime number A018252(n).

Offset 1, canonical program `A162194.P3478823718084409657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162194 (n : ℕ) : ℤ :=
  A162194.P3478823718084409657.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162195.P12385339975544917785

`A001065(A018252(n+1))`
-/

namespace A162195.P12385339975544917785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A018252 (n + 1)).toNat

end

end A162195.P12385339975544917785

noncomputable section

/-- A162195: Sum of proper divisors of n-th nonprime number A018252(n).

Offset 1, canonical program `A162195.P12385339975544917785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162195 (n : ℕ) : ℤ :=
  A162195.P12385339975544917785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162326.P6298705676017396747

`A086871(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A162326.P6298705676017396747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A086871 (n - 1) + a (n - 1)

end

end A162326.P6298705676017396747

noncomputable section

/-- A162326: Let a(0) = a(1) = 1, and n*a(n) = 2*(-7+5*n)*a(n-1) + 9*(2-n)*a(n-2) for n >= 2.

Offset 0, canonical program `A162326.P6298705676017396747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A162326 (n : ℕ) : ℤ :=
  A162326.P6298705676017396747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A162326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162441.P13110107035018514604

`lcm(n+1, A001790(n+1))/(n+1)*A144396(n+1)`
-/

namespace A162441.P13110107035018514604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A001790 (n + 1)) : ℚ) / (n + 1 : ℚ) * (A144396 (n + 1) : ℚ)

end

end A162441.P13110107035018514604

noncomputable section

/-- A162441: Numerators of the column sums of the EG1 matrix coefficients.

Offset 2, canonical program `A162441.P13110107035018514604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162441.P13110107035018514604.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162550.P4693385428906052129

`2*A072643(n)`
-/

namespace A162550.P4693385428906052129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072643 n

end

end A162550.P4693385428906052129

noncomputable section

/-- A162550: 2n repeated C_n times, where C_n = A000108(n) is a Catalan number.

Offset 0, canonical program `A162550.P4693385428906052129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162550 (n : ℕ) : ℤ :=
  A162550.P4693385428906052129.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162565.P9584183037973617797

`p?[A006093(n+1)+A058263(n+1)+1]`
-/

namespace A162565.P9584183037973617797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A058263 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162565.P9584183037973617797

noncomputable section

/-- A162565: Those primes p such that (p-q) divides (p-1), where q is the greatest prime < p.

Offset 1, canonical program `A162565.P9584183037973617797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162565 (n : ℕ) : ℤ :=
  A162565.P9584183037973617797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162566.P5236588116513518554

`p?[A065091(n+1)-A063086(n+1)]`
-/

namespace A162566.P5236588116513518554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162566.P5236588116513518554

noncomputable section

/-- A162566: Those primes p where (q-p) divides (p+1), where q is the least prime > p.

Offset 1, canonical program `A162566.P5236588116513518554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162566 (n : ℕ) : ℤ :=
  A162566.P5236588116513518554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162619.P18185964256765795364

`A005145(n+1)-A004736(n+1)`
-/

namespace A162619.P18185964256765795364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A004736 (n + 1)

end

end A162619.P18185964256765795364

noncomputable section

/-- A162619: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A014689(n) = A000040(n)-n.

Offset 1, canonical program `A162619.P18185964256765795364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162619 (n : ℕ) : ℤ :=
  A162619.P18185964256765795364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162802.P1911416847344321322

`floor(A100479(n+1)/2)`
-/

namespace A162802.P1911416847344321322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100479 (n + 1) : ℚ) / 2⌋

end

end A162802.P1911416847344321322

noncomputable section

/-- A162802: Bisection of A162800.

Offset 1, canonical program `A162802.P1911416847344321322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162802 (n : ℕ) : ℤ :=
  A162802.P1911416847344321322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162944.P8521714573655966395

`A162943(A010766(n+1))`
-/

namespace A162944.P8521714573655966395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A010766 (n + 1)).toNat

end

end A162944.P8521714573655966395

noncomputable section

/-- A162944: A162943(A010766).

Offset 1, canonical program `A162944.P8521714573655966395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162944 (n : ℕ) : ℤ :=
  A162944.P8521714573655966395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163088.P2830907696303753989

`A163087(n)/A056040(n)`
-/

namespace A163088.P2830907696303753989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163087 n : ℚ) / (A056040 n : ℚ)

end

end A163088.P2830907696303753989

noncomputable section

/-- A163088: (Product{k|n} k$) / n$. Here '$' denotes the swinging factorial function (A056040).

Offset 0, canonical program `A163088.P2830907696303753989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163088.P2830907696303753989.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163089.P10666734151274875849

`n!/A163087(n)`
-/

namespace A163089.P10666734151274875849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A163087 n : ℚ)

end

end A163089.P10666734151274875849

noncomputable section

/-- A163089: n! / (Product{k|n} k$). Here '$' denotes the swinging factorial function (A056040).

Offset 0, canonical program `A163089.P10666734151274875849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163089.P10666734151274875849.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163162.P2282227001172303416

`a(n-1)+ceil(2/A058063(a(n-1)+1))` with `a(0)=1`
-/

namespace A163162.P2282227001172303416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈2 / (A058063 (a (n - 1) + 1).toNat : ℚ)⌉

end

end A163162.P2282227001172303416

noncomputable section

/-- A163162: Numbers k such that sigma(k) is not prime.

Offset 1, canonical program `A163162.P2282227001172303416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163162 (n : ℕ) : ℤ :=
  A163162.P2282227001172303416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163249.P10892811305809316567

`A018252(n+1)+A014689(n+1)`
-/

namespace A163249.P10892811305809316567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A014689 (n + 1)

end

end A163249.P10892811305809316567

noncomputable section

/-- A163249: Sum of prime(n) and number of numbers from this set less than n-th nonprime number (A018252(n)).

Offset 1, canonical program `A163249.P10892811305809316567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163249 (n : ℕ) : ℤ :=
  A163249.P10892811305809316567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163256.P226492843122015427

`A028310(A082375(A082375(n)+n))`
-/

namespace A163256.P226492843122015427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A082375 (A082375 n + (n : ℤ)).toNat).toNat

end

end A163256.P226492843122015427

noncomputable section

/-- A163256: Fractal sequence of the interspersion A163253.

Offset 1, canonical program `A163256.P226492843122015427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A163256 (n : ℕ) : ℤ :=
  A163256.P226492843122015427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A163256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163285.P9326623091209002515

`A003056(n)²²*A159797(n)`
-/

namespace A163285.P9326623091209002515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n ^ 2) ^ 2 * A159797 n

end

end A163285.P9326623091209002515

noncomputable section

/-- A163285: Triangle read by rows in which row n lists n+1 terms, starting with n^5 and ending with n^6, such that the difference between successive terms is equal to n^5 - n^4.

Offset 0, canonical program `A163285.P9326623091209002515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163285 (n : ℕ) : ℤ :=
  A163285.P9326623091209002515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163291.P14435979190874790794

`floor((A035100(n+1)+1)/2)`
-/

namespace A163291.P14435979190874790794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035100 (n + 1) + 1 : ℚ) / 2⌋

end

end A163291.P14435979190874790794

noncomputable section

/-- A163291: Number of digits of n-th prime written in base 4.

Offset 1, canonical program `A163291.P14435979190874790794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163291 (n : ℕ) : ℤ :=
  A163291.P14435979190874790794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163293.P4247609805888595491

`A000040(n+1)-A035100(n+1)`
-/

namespace A163293.P4247609805888595491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A035100 (n + 1)

end

end A163293.P4247609805888595491

noncomputable section

/-- A163293: a(n) = n-th prime minus (number of bits in binary expansion of n-th prime).

Offset 1, canonical program `A163293.P4247609805888595491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163293 (n : ℕ) : ℤ :=
  A163293.P4247609805888595491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163467.P3610037260912299519

`A098844(A130290(n+1))`
-/

namespace A163467.P3610037260912299519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (A130290 (n + 1)).toNat

end

end A163467.P3610037260912299519

noncomputable section

/-- A163467: a(n) = floor(p/2) * floor(floor(p/2)/2) * floor(floor(floor(p/2)/2)/2) * ... * 1, where p=prime(n).

Offset 1, canonical program `A163467.P3610037260912299519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A163467 (n : ℕ) : ℤ :=
  A163467.P3610037260912299519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A163467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163509.P2719261823814048895

`A010078(A080079(n+1))`
-/

namespace A163509.P2719261823814048895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A080079 (n + 1)).toNat

end

end A163509.P2719261823814048895

noncomputable section

/-- A163509: Take n written in binary. Replace the leftmost run of 1's with just a single 1. a(n) is the decimal equivalent of the result.

Offset 1, canonical program `A163509.P2719261823814048895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163509 (n : ℕ) : ℤ :=
  A163509.P2719261823814048895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163603.P6748960401507520383

`A000720(A045458(n+1))`
-/

namespace A163603.P6748960401507520383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045458 (n + 1)).toNat

end

end A163603.P6748960401507520383

noncomputable section

/-- A163603: Numbers k such that prime(k) == 5 (mod 7).

Offset 1, canonical program `A163603.P6748960401507520383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163603 (n : ℕ) : ℤ :=
  A163603.P6748960401507520383.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163623.P14271077986675833918

`∩[A139502(n+1), A142183(n+1)]`
-/

namespace A163623.P14271077986675833918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P14271077986675833918

noncomputable section

/-- A163623: Primes of the form 120*k + 1.

Offset 1, canonical program `A163623.P14271077986675833918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A163623 (n : ℕ) : ℤ :=
  (A163623.P14271077986675833918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A163623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163676.P4041084556409764895

`2*A154684(n+1)+5`
-/

namespace A163676.P4041084556409764895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154684 (n + 1) + 5

end

end A163676.P4041084556409764895

noncomputable section

/-- A163676: Triangle T(n,m) = 4mn + 2m + 2n - 1 read by rows.

Offset 1, canonical program `A163676.P4041084556409764895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163676 (n : ℕ) : ℤ :=
  A163676.P4041084556409764895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163775.P4626799535494798513

`A002457(n+1)-A163872(n+1)`
-/

namespace A163775.P4626799535494798513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A163872 (n + 1)

end

end A163775.P4626799535494798513

noncomputable section

/-- A163775: Row sums of triangle A163772.

Offset 0, canonical program `A163775.P4626799535494798513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A163775 (n : ℕ) : ℤ :=
  A163775.P4626799535494798513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A163775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164320.P3487527903107455350

`∩[A164318(n+1), A164319(n+1)]`
-/

namespace A164320.P3487527903107455350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164320.P3487527903107455350

noncomputable section

/-- A164320: Primes p such that sums of divisors of the two adjacent integers are each > 2*p.

Offset 1, canonical program `A164320.P3487527903107455350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4306 terms. -/
def A164320 (n : ℕ) : ℤ :=
  (A164320.P3487527903107455350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4306 terms. -/
def A164320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164364.P14451456092947760029

`A164349(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164364.P14451456092947760029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (2 ^ n)

end

end A164364.P14451456092947760029

noncomputable section

/-- A164364: a(n) = A164349(2^n).

Offset 0, canonical program `A164364.P14451456092947760029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164364 (n : ℕ) : ℤ :=
  A164364.P14451456092947760029.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164557.P4242385317693302178

`eq[A002131(n+1), A002131(n+2)]+1`
-/

namespace A164557.P4242385317693302178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164557.P4242385317693302178

noncomputable section

/-- A164557: Numbers k such that s(k) = s(k+1), where s(k) is the sum of divisors d of k such that k/d is odd (A002131).

Offset 1, canonical program `A164557.P4242385317693302178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A164557 (n : ℕ) : ℤ :=
  (A164557.P4242385317693302178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A164557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164569.P6473822451751528247

`p?[floor(A141855(n+1)/11)]`
-/

namespace A164569.P6473822451751528247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141855 (n + 1) : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164569.P6473822451751528247

noncomputable section

/-- A164569: Primes p such that 11*p+8 are prime numbers.

Offset 1, canonical program `A164569.P6473822451751528247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A164569 (n : ℕ) : ℤ :=
  A164569.P6473822451751528247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A164569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164653.P11870517180537955334

`A158611(n+1)+A158611(n+2)`
-/

namespace A164653.P11870517180537955334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A158611 (n + 2)

end

end A164653.P11870517180537955334

noncomputable section

/-- A164653: a(1) = 1, for n>=2: a(n) = sum of two consecutive noncomposite numbers A008578.

Offset 1, canonical program `A164653.P11870517180537955334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164653 (n : ℕ) : ℤ :=
  A164653.P11870517180537955334.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165191.P13618219544817875924

`Δ[A008619(A004202(a(n-1)))]%2` with `a(0)=1, a(1)=1`
-/

namespace A165191.P13618219544817875924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A008619 (A004202 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A165191.P13618219544817875924

noncomputable section

/-- A165191: Irregular triangle B(n,i) = i-th significant bit of Gray code of n.

Offset 0, canonical program `A165191.P13618219544817875924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A165191 (n : ℕ) : ℤ :=
  A165191.P13618219544817875924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A165191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165205.P7878292141726443622

`A029651(n)+A001791(n)`
-/

namespace A165205.P7878292141726443622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n + A001791 n

end

end A165205.P7878292141726443622

noncomputable section

/-- A165205: a(n) = C(2n-1,n) + C(2n+1,n+1) - C(0,n).

Offset 0, canonical program `A165205.P7878292141726443622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A165205 (n : ℕ) : ℤ :=
  A165205.P7878292141726443622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A165205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165256.P10136050871535345251

`eq[A001221(n+1), A055642(n+1)]+1`
-/

namespace A165256.P10136050871535345251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A165256.P10136050871535345251

noncomputable section

/-- A165256: Numbers whose number of distinct prime factors equals the number of digits in the number.

Offset 1, canonical program `A165256.P10136050871535345251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A165256 (n : ℕ) : ℤ :=
  (A165256.P10136050871535345251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A165256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165257.P5279491284380606187

`A046899(A132128(n+1))`
-/

namespace A165257.P5279491284380606187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A132128 (n + 1)).toNat

end

end A165257.P5279491284380606187

noncomputable section

/-- A165257: Triangle in which n-th row is binomial(n+k-1,k), for column k=1..n.

Offset 1, canonical program `A165257.P5279491284380606187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257 (n : ℕ) : ℤ :=
  A165257.P5279491284380606187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165447.P1997826371557217924

`A120070(n+2)²`
-/

namespace A165447.P1997826371557217924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) ^ 2

end

end A165447.P1997826371557217924

noncomputable section

/-- A165447: T(n,k) = n^4 - 2*k^2*n^2 + k^4 = A120070(n, k)^2.

Offset 2, canonical program `A165447.P1997826371557217924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165447 (n : ℕ) : ℤ :=
  A165447.P1997826371557217924.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165447.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165906.P15162408621057414464

`ceil(∑[A001748(n+1)]/A001748(n+1))`
-/

namespace A165906.P15162408621057414464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001748 (n + 1) : ℚ)⌉

end

end A165906.P15162408621057414464

noncomputable section

/-- A165906: Sum of first n primes divided by the n-th prime, rounded up to the nearest integer.

Offset 1, canonical program `A165906.P15162408621057414464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165906 (n : ℕ) : ℤ :=
  A165906.P15162408621057414464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165911.P1319005992793890420

`A121369(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A165911.P1319005992793890420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A121369 (n + 1) - a (n - 1)

end

end A165911.P1319005992793890420

noncomputable section

/-- A165911: a(n) = squarefree kernel (or radical) of a(n-1) + a(n-2), with a(0)=0 and a(1)=1.

Offset 0, canonical program `A165911.P1319005992793890420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165911 (n : ℕ) : ℤ :=
  A165911.P1319005992793890420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165990.P11905906101567529010

`A165794(2*n)`
-/

namespace A165990.P11905906101567529010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165794 (2 * n)

end

end A165990.P11905906101567529010

noncomputable section

/-- A165990: Nim sum of distinct consecutive pairs of Lucas Numbers.

Offset 0, canonical program `A165990.P11905906101567529010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A165990 (n : ℕ) : ℤ :=
  A165990.P11905906101567529010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A165990.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166127.P3009407500019831208

`A104103(n+1)%(n+2)`
-/

namespace A166127.P3009407500019831208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104103 (n + 1)) (n + 2 : ℤ)

end

end A166127.P3009407500019831208

noncomputable section

/-- A166127: Minimum value of j such that floor(j^2 / prime(n)) > 0.

Offset 1, canonical program `A166127.P3009407500019831208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166127 (n : ℕ) : ℤ :=
  A166127.P3009407500019831208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166290.P4762917797999261548

`A110320(A028310(n))-A004148(n)`
-/

namespace A166290.P4762917797999261548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110320 (A028310 n).toNat - A004148 n

end

end A166290.P4762917797999261548

noncomputable section

/-- A166290: Number of UDUD's in all Dyck paths of semilength n with no UUU's and no DDD's (U=(1,1), D=(1,-1)).

Offset 0, canonical program `A166290.P4762917797999261548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A166290 (n : ℕ) : ℤ :=
  A166290.P4762917797999261548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A166290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166360.P13661747061550426905

`(A103371(n)/A004736(n+1))%2`
-/

namespace A166360.P13661747061550426905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A103371 n : ℚ) / (A004736 (n + 1) : ℚ))) 2

end

end A166360.P13661747061550426905

noncomputable section

/-- A166360: Triangle of Narayana numbers mod 2, T(n,k) = A001263(n,k) mod 2, read by rows.

Offset 1, canonical program `A166360.P13661747061550426905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166360 (n : ℕ) : ℤ :=
  A166360.P13661747061550426905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166448.P8765378340024348909

`∑[A062234(n+1)]-2`
-/

namespace A166448.P8765378340024348909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A166448.P8765378340024348909

noncomputable section

/-- A166448: Sum of first n primes minus next prime.

Offset 1, canonical program `A166448.P8765378340024348909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166448 (n : ℕ) : ℤ :=
  A166448.P8765378340024348909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166455.P6643648984415993271

`A219463(n)+A109128(n)`
-/

namespace A166455.P6643648984415993271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n + A109128 n

end

end A166455.P6643648984415993271

noncomputable section

/-- A166455: Triangle read by rows, twice Pascal's triangle minus Sierpinski's gasket: 2*A007318 - A047999.

Offset 0, canonical program `A166455.P6643648984415993271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166455 (n : ℕ) : ℤ :=
  A166455.P6643648984415993271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166496.P5723234111422910770

`A089241(n+1)+A057428(n)`
-/

namespace A166496.P5723234111422910770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A057428 n

end

end A166496.P5723234111422910770

noncomputable section

/-- A166496: Prime plus the next composite.

Offset 1, canonical program `A166496.P5723234111422910770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166496 (n : ℕ) : ℤ :=
  A166496.P5723234111422910770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166499.P15213184489889587938

`10*A007652(n+1)+A077648(n+2)`
-/

namespace A166499.P15213184489889587938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007652 (n + 1) + A077648 (n + 2)

end

end A166499.P15213184489889587938

noncomputable section

/-- A166499: Concatenation of the rightmost digit of the n-th prime and the leftmost digit of the (n+1)th prime.

Offset 1, canonical program `A166499.P15213184489889587938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166499 (n : ℕ) : ℤ :=
  A166499.P15213184489889587938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077648, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166563.P13646360930598565579

`comp[A167055(n+1)]`
-/

namespace A166563.P13646360930598565579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166563.P13646360930598565579

noncomputable section

/-- A166563: Numbers n such that 12*n+5 is not prime.

Offset 1, canonical program `A166563.P13646360930598565579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166563 (n : ℕ) : ℤ :=
  (A166563.P13646360930598565579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166692.P3793629774854990532

`and(A232089(n), A360033(n+1))`
-/

namespace A166692.P3793629774854990532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232089 n) (A360033 (n + 1))

end

end A166692.P3793629774854990532

noncomputable section

/-- A166692: Triangle T(n,k) read by rows: T(n,k) = 2^(k-1), k>0, T(n,0) = (n+1) mod 2.

Offset 0, canonical program `A166692.P3793629774854990532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166692 (n : ℕ) : ℤ :=
  A166692.P3793629774854990532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166719.P9778395336250890325

`record[(n+1)/A029123(A001222(n+1)+1)]`
-/

namespace A166719.P9778395336250890325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A029123 (A001222 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166719.P9778395336250890325

noncomputable section

/-- A166719: Numbers with at most 5 prime factors (counted with multiplicity).

Offset 1, canonical program `A166719.P9778395336250890325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166719 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166719.P9778395336250890325.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166724.P18330365380709594796

`A000720(A166546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166724.P18330365380709594796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166546 (n + 1)).toNat

end

end A166724.P18330365380709594796

noncomputable section

/-- A166724: a(n) = PrimePi(A166546(n)).

Offset 1, canonical program `A166724.P18330365380709594796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166724 (n : ℕ) : ℤ :=
  A166724.P18330365380709594796.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167057.P16324188252696382236

`A138620(n+1)-1`
-/

namespace A167057.P16324188252696382236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138620 (n + 1) - 1

end

end A167057.P16324188252696382236

noncomputable section

/-- A167057: Numbers k such that 12*k + 11 is prime.

Offset 1, canonical program `A167057.P16324188252696382236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167057 (n : ℕ) : ℤ :=
  A167057.P16324188252696382236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167057.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A167207.P13711088262905704656

`∪[A005117(n+1), A033476(n)]`
-/

namespace A167207.P13711088262905704656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167207.P13711088262905704656

noncomputable section

/-- A167207: Numbers that are not divisible by a smaller number that is a square greater than 1.

Offset 1, canonical program `A167207.P13711088262905704656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167207 (n : ℕ) : ℤ :=
  (A167207.P13711088262905704656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167239.P5011976945127805005

`4*∑[A005902(n)+1]`
-/

namespace A167239.P5011976945127805005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167239.P5011976945127805005

noncomputable section

/-- A167239: Number of ways to partition a 5*n X 2 grid into 5 connected equal-area regions.

Offset 1, canonical program `A167239.P5011976945127805005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167239 (n : ℕ) : ℤ :=
  A167239.P5011976945127805005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167274.P14910815328084261160

`A101000(A166453(n))`
-/

namespace A167274.P14910815328084261160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 (A166453 n).toNat

end

end A167274.P14910815328084261160

noncomputable section

/-- A167274: Triangle read by rows, = 2*A047999 - A047999^(-1); = twice Sierpinski's gasket minus the inverse of Sierpinski's gasket.

Offset 0, canonical program `A167274.P14910815328084261160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167274 (n : ℕ) : ℤ :=
  A167274.P14910815328084261160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167407.P342284988497035596

`floor((2-A198954(n))/2)`
-/

namespace A167407.P342284988497035596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - A198954 n : ℚ) / 2⌋

end

end A167407.P342284988497035596

noncomputable section

/-- A167407: T(m,n) is -m if n=0, 1 elsewhere.

Offset 0, canonical program `A167407.P342284988497035596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167407 (n : ℕ) : ℤ :=
  A167407.P342284988497035596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167623.P17572008884092007140

`((n+1)^3)%A001248(n+1)`
-/

namespace A167623.P17572008884092007140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 3 : ℤ) (A001248 (n + 1))

end

end A167623.P17572008884092007140

noncomputable section

/-- A167623: a(n) = n^3 mod (n-th prime squared).

Offset 1, canonical program `A167623.P17572008884092007140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167623 (n : ℕ) : ℤ :=
  A167623.P17572008884092007140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167684.P2154934591697718303

`A097806(n)+A046698(n)*A097806(n+1)`
-/

namespace A167684.P2154934591697718303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + A046698 n * A097806 (n + 1)

end

end A167684.P2154934591697718303

noncomputable section

/-- A167684: Triangle read by rows given by [2,-1,1,-2,0,0,0,0,0,0,0,...] DELTA [1,0,1,-1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A167684.P2154934591697718303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167684 (n : ℕ) : ℤ :=
  A167684.P2154934591697718303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168006.P12207776267196126972

`p?[A167994(n+1)]`
-/

namespace A168006.P12207776267196126972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168006.P12207776267196126972

noncomputable section

/-- A168006: Primes p with property that first digit of 2*p = last digit of p.

Offset 1, canonical program `A168006.P12207776267196126972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A168006 (n : ℕ) : ℤ :=
  A168006.P12207776267196126972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A168006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168031.P16854465527970043201

`p?[A062409(n+1)]`
-/

namespace A168031.P16854465527970043201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168031.P16854465527970043201

noncomputable section

/-- A168031: Primes p for which floor(E*p) is prime.

Offset 1, canonical program `A168031.P16854465527970043201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. -/
def A168031 (n : ℕ) : ℤ :=
  A168031.P16854465527970043201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. -/
def A168031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168051.P12367257116989189767

`A000038(n)-A168049(n)`
-/

namespace A168051.P12367257116989189767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168049 n

end

end A168051.P12367257116989189767

noncomputable section

/-- A168051: Expansion of (1+x+sqrt(1-2x-3x^2))/2.

Offset 0, canonical program `A168051.P12367257116989189767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168051 (n : ℕ) : ℤ :=
  A168051.P12367257116989189767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168076.P6252607878974062791

`A000038(n)-A168073(n)`
-/

namespace A168076.P6252607878974062791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168073 n

end

end A168076.P6252607878974062791

noncomputable section

/-- A168076: Expansion of 1 - 3*(1-x-sqrt(1-2*x-3*x^2))/2.

Offset 0, canonical program `A168076.P6252607878974062791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168076 (n : ℕ) : ℤ :=
  A168076.P6252607878974062791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168141.P17618216875258990548

`A090406(abs(2-n)+1)`
-/

namespace A168141.P17618216875258990548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (|2 - (n : ℤ)| + 1).toNat

end

end A168141.P17618216875258990548

noncomputable section

/-- A168141: a(n) = pi(n + 1) - pi(n - 2), where pi is the prime counting function.

Offset 1, canonical program `A168141.P17618216875258990548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168141 (n : ℕ) : ℤ :=
  A168141.P17618216875258990548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168446.P8835663470605354021

`A000040(eq[1, A001222(A116572(n+1))]+1)`
-/

namespace A168446.P8835663470605354021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A168446.P8835663470605354021

noncomputable section

/-- A168446: Primes p such that floor(p/5) is also prime.

Offset 1, canonical program `A168446.P8835663470605354021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A168446 (n : ℕ) : ℤ :=
  A168446.P8835663470605354021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A168446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168505.P9674899564726539021

`a(n-1)-A349047(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A168505.P9674899564726539021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A349047 (n - 2)

end

end A168505.P9674899564726539021

noncomputable section

/-- A168505: Expansion of 1/(1-x/(1+x/(1-x/(1-x/(1+x/(1-x/(1-x/(1+x/(1-... (continued fraction).

Offset 0, canonical program `A168505.P9674899564726539021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A168505 (n : ℕ) : ℤ :=
  A168505.P9674899564726539021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A168505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168524.P793834532850151239

`2*A168523(n)-A060187(n+1)`
-/

namespace A168524.P793834532850151239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168523 n - A060187 (n + 1)

end

end A168524.P793834532850151239

noncomputable section

/-- A168524: Triangle of coefficients of g.f. a*(1+x)^n + b*(1-x)^(n+2)*polylog(-n-1, x)/x + 2^n*c*(1-x)^(n+1)*LerchPhi(x, -n, 1/2), with a = -2, b = 2, c = 1.

Offset 0, canonical program `A168524.P793834532850151239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168524 (n : ℕ) : ℤ :=
  A168524.P793834532850151239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168577.P14364464542492817144

`C(A002024(n+1)+2, A004736(n+1))`
-/

namespace A168577.P14364464542492817144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) + 2).toNat (A004736 (n + 1)).toNat

end

end A168577.P14364464542492817144

noncomputable section

/-- A168577: Pascal's triangle, first two columns and diagonal removed.

Offset 2, canonical program `A168577.P14364464542492817144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168577 (n : ℕ) : ℤ :=
  (A168577.P14364464542492817144.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168623.P11281898141141744744

`gcd(9*A130595(n), A103452(n))`
-/

namespace A168623.P11281898141141744744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * A130595 n) (A103452 n)

end

end A168623.P11281898141141744744

noncomputable section

/-- A168623: Triangle read by rows: T(n, k) = [x^k]( 9*(1+x)^n - 8*(1 + x^n) ), with T(0, 0) = 1.

Offset 0, canonical program `A168623.P11281898141141744744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168623 (n : ℕ) : ℤ :=
  (A168623.P11281898141141744744.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A168623.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A170816.P3100006871981450052

`A140475(n+1)-A141468(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170816.P3100006871981450052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) - A141468 (n + 1)

end

end A170816.P3100006871981450052

noncomputable section

/-- A170816: a(n)=A140475(n)-A141468(n).

Offset 1, canonical program `A170816.P3100006871981450052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A170816 (n : ℕ) : ℤ :=
  A170816.P3100006871981450052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A170816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A170821.P16768579857515380064

`A033638(A065091(n+1))%A065091(n+1)`
-/

namespace A170821.P16768579857515380064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033638 (A065091 (n + 1)).toNat) (A065091 (n + 1))

end

end A170821.P16768579857515380064

noncomputable section

/-- A170821: Let p = n-th prime; a(n) = smallest k >= 0 such that 4k == 3 mod p.

Offset 2, canonical program `A170821.P16768579857515380064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A170821 (n : ℕ) : ℤ :=
  A170821.P16768579857515380064.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A170821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170824.P11297377801870063513

`∏{p}[n+1, A140213(#)]`
-/

namespace A170824.P11297377801870063513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A140213 p

end

end A170824.P11297377801870063513

noncomputable section

/-- A170824: a(n) = product of distinct primes of form 6k+1 that divide n.

Offset 1, canonical program `A170824.P11297377801870063513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170824 (n : ℕ) : ℤ :=
  A170824.P11297377801870063513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171074.P13942206211822107705

`record[Δ[A081668(n)]]`
-/

namespace A171074.P13942206211822107705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171074.P13942206211822107705

noncomputable section

/-- A171074: A115112 with initial term changed from 0 to 1.

Offset 1, canonical program `A171074.P13942206211822107705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A171074 (n : ℕ) : ℤ :=
  A171074.P13942206211822107705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A171074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171140.P8328287493239320054

`A069813(p?[2*n+5])`
-/

namespace A171140.P8328287493239320054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171140.P8328287493239320054

noncomputable section

/-- A171140: Numbers k such that 6*k + 7 = p^2 (p=prime).

Offset 1, canonical program `A171140.P8328287493239320054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171140 (n : ℕ) : ℤ :=
  A171140.P8328287493239320054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171504.P6118621284767366624

`A018252(n+1)+n+1`
-/

namespace A171504.P6118621284767366624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (n + 1 : ℤ)

end

end A171504.P6118621284767366624

noncomputable section

/-- A171504: a(n) = n-th nonprime + n.

Offset 1, canonical program `A171504.P6118621284767366624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171504 (n : ℕ) : ℤ :=
  A171504.P6118621284767366624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171517.P13209293710807330525

`p?[A101448(n+1)]`
-/

namespace A171517.P13209293710807330525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P13209293710807330525

noncomputable section

/-- A171517: Primes p such that 2*p+11 is prime.

Offset 1, canonical program `A171517.P13209293710807330525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A171517 (n : ℕ) : ℤ :=
  A171517.P13209293710807330525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A171517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171529.P9866664600957756723

`lcm(n+1, A018252(n+1))/(n+1)`
-/

namespace A171529.P9866664600957756723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A018252 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A171529.P9866664600957756723

noncomputable section

/-- A171529: Numerator of (n-th nonprime/n).

Offset 1, canonical program `A171529.P9866664600957756723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171529.P9866664600957756723.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171577.P9512469357835469912

`A006005(n+1)-A130706(n)`
-/

namespace A171577.P9512469357835469912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A130706 n

end

end A171577.P9512469357835469912

noncomputable section

/-- A171577: 0, 1 and primes > 3.

Offset 1, canonical program `A171577.P9512469357835469912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171577 (n : ℕ) : ℤ :=
  A171577.P9512469357835469912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171587.P15896447707216273594

`gcd(2, A003622(n+1))-1`
-/

namespace A171587.P15896447707216273594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A003622 (n + 1)) : ℤ) - 1

end

end A171587.P15896447707216273594

noncomputable section

/-- A171587: Sequence of the diagonal variant of the Fibonacci word fractal. Sequence of the Fibonacci tile.

Offset 0, canonical program `A171587.P15896447707216273594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171587 (n : ℕ) : ℤ :=
  A171587.P15896447707216273594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171746.P7186216401263044259

`A005408(A000196(n+1))-A082375(n)`
-/

namespace A171746.P7186216401263044259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000196 (n + 1)).toNat - A082375 n

end

end A171746.P7186216401263044259

noncomputable section

/-- A171746: Let f(n) = n + floor(sqrt(n)). Then a(n) is the smallest number of iterations of f on n such that a perfect square is obtained.

Offset 1, canonical program `A171746.P7186216401263044259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171746 (n : ℕ) : ℤ :=
  A171746.P7186216401263044259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171847.P16503276292335657735

`Δ[A182895(n)]-A110236(n+1)`
-/

namespace A171847.P16503276292335657735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110236 (n + 1)

end

end A171847.P16503276292335657735

noncomputable section

/-- A171847: Total area under all peakless Motzkin paths of length n (n>=0).

Offset 0, canonical program `A171847.P16503276292335657735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A171847 (n : ℕ) : ℤ :=
  A171847.P16503276292335657735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A171847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171849.P4273874826588439275

`A051286(n)+A182890(n)-A091964(n)`
-/

namespace A171849.P4273874826588439275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (A182890 n - A091964 n)

end

end A171849.P4273874826588439275

noncomputable section

/-- A171849: Total area under all the level steps in all peakless Motzkin paths of length n (n>=0).

Offset 0, canonical program `A171849.P4273874826588439275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A171849 (n : ℕ) : ℤ :=
  A171849.P4273874826588439275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A171849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172050.P796616272451847665

`3*n+A029907(n)`
-/

namespace A172050.P796616272451847665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A029907 n

end

end A172050.P796616272451847665

noncomputable section

/-- A172050: A008585+A029907.

Offset 0, canonical program `A172050.P796616272451847665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A172050 (n : ℕ) : ℤ :=
  A172050.P796616272451847665.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A172050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172159.P16282636252123325774

`A000032(lt[A219187(n), A000032(n)])`
-/

namespace A172159.P16282636252123325774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172159.P16282636252123325774

noncomputable section

/-- A172159: Nonprime Lucas numbers.

Offset 1, canonical program `A172159.P16282636252123325774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A172159 (n : ℕ) : ℤ :=
  A172159.P16282636252123325774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A172159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172180.P2099334084590669202

`abs(A045344(n+1)-A171993(n+1))`
-/

namespace A172180.P2099334084590669202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045344 (n + 1) - A171993 (n + 1)|

end

end A172180.P2099334084590669202

noncomputable section

/-- A172180: The absolute value of n-th prime of the form 3*n-+1 minus n-th nonprime of the form 3*n-+1.

Offset 1, canonical program `A172180.P2099334084590669202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172180 (n : ℕ) : ℤ :=
  A172180.P2099334084590669202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172181.P7608232075966226173

`filter[A047270(n+1), A005171(#)]`
-/

namespace A172181.P7608232075966226173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172181.P7608232075966226173

noncomputable section

/-- A172181: Odd composites not of the form 6k + 1.

Offset 1, canonical program `A172181.P7608232075966226173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8366 terms. -/
def A172181 (n : ℕ) : ℤ :=
  A172181.P7608232075966226173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8366 terms. -/
def A172181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172182.P2648138099945174090

`filter[A047239(n+1), A005171(#)]`
-/

namespace A172182.P2648138099945174090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A172182.P2648138099945174090

noncomputable section

/-- A172182: Nonprimes of the form 6k + 1 or 6k + 2.

Offset 1, canonical program `A172182.P2648138099945174090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8389 terms. -/
def A172182 (n : ℕ) : ℤ :=
  A172182.P2648138099945174090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8389 terms. -/
def A172182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172187.P10529955628343830800

`eq[A105570(n+1), A105597(2*n+1)]`
-/

namespace A172187.P10529955628343830800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172187.P10529955628343830800

noncomputable section

/-- A172187: Numbers k such that k and k+1 are squarefree but 2*k+1 is not.

Offset 1, canonical program `A172187.P10529955628343830800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A172187 (n : ℕ) : ℤ :=
  (A172187.P10529955628343830800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A172187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172404.P17113833198951984415

`eq[3, A008952(n)]`
-/

namespace A172404.P17113833198951984415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A172404.P17113833198951984415

noncomputable section

/-- A172404: Numbers k such that 3 is the first digit of 2^k.

Offset 1, canonical program `A172404.P17113833198951984415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6247 terms. -/
def A172404 (n : ℕ) : ℤ :=
  (A172404.P17113833198951984415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6247 terms. -/
def A172404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173031.P472100740147014782

`∑[∑[∑[A079282(n)]]]`
-/

namespace A173031.P472100740147014782
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173031.P472100740147014782

noncomputable section

/-- A173031: Sequence whose G.f is given by: 1/(1-z)/(1-2*z)^2/(1-z-z^2).

Offset 0, canonical program `A173031.P472100740147014782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A173031 (n : ℕ) : ℤ :=
  A173031.P472100740147014782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A173031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173032.P16951806919415081916

`∩[A069350(n+1), A069351(n+1)]`
-/

namespace A173032.P16951806919415081916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173032.P16951806919415081916

noncomputable section

/-- A173032: Primes having no representation of the form n -+ Omega(n), where Omega is A001222.

Offset 1, canonical program `A173032.P16951806919415081916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2761 terms. -/
def A173032 (n : ℕ) : ℤ :=
  (A173032.P16951806919415081916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2761 terms. -/
def A173032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173137.P14698543260873224992

`A158611(n+1)+A000027(n+1)`
-/

namespace A173137.P14698543260873224992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A000027 (n + 1)

end

end A173137.P14698543260873224992

noncomputable section

/-- A173137: n-th nonnegative noncomposite number plus n.

Offset 1, canonical program `A173137.P14698543260873224992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173137 (n : ℕ) : ℤ :=
  A173137.P14698543260873224992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173143.P1652313516613948722

`A144338(n)+a(n-1)` with `a(0)=1`
-/

namespace A173143.P1652313516613948722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144338 n + a (n - 1)

end

end A173143.P1652313516613948722

noncomputable section

/-- A173143: Partial sums of the squarefree numbers, A005117.

Offset 1, canonical program `A173143.P1652313516613948722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173143 (n : ℕ) : ℤ :=
  A173143.P1652313516613948722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173195.P9910019717270672267

`2^A000267(n)+2^A384688(n)`
-/

namespace A173195.P9910019717270672267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000267 n : ℤ) + (2 : ℚ) ^ (A384688 n : ℤ)

end

end A173195.P9910019717270672267

noncomputable section

/-- A173195: Values of k such that 4^x + 4^y + 4^z = k^2 with arbitrary integers x <= y <= z.

Offset 1, canonical program `A173195.P9910019717270672267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173195.P9910019717270672267.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173455.P15831782476436382019

`A001065(abs(1-n)+2)`
-/

namespace A173455.P15831782476436382019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (|1 - (n : ℤ)| + 2).toNat

end

end A173455.P15831782476436382019

noncomputable section

/-- A173455: Row sums of triangle A027751.

Offset 1, canonical program `A173455.P15831782476436382019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173455 (n : ℕ) : ℤ :=
  A173455.P15831782476436382019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173531.P13371912172200892370

`and(n, -n)*A212988(A038573(n))`
-/

namespace A173531.P13371912172200892370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) * A212988 (A038573 n).toNat

end

end A173531.P13371912172200892370

noncomputable section

/-- A173531: a(0)=0: For n>0, a(n) = A060632(n)*A060632(n-1).

Offset 0, canonical program `A173531.P13371912172200892370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173531 (n : ℕ) : ℤ :=
  A173531.P13371912172200892370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173706.P12511956019214368513

`(A037126(n+1)-1)*A005145(A014132(n+1))`
-/

namespace A173706.P12511956019214368513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) - 1) * A005145 (A014132 (n + 1)).toNat

end

end A173706.P12511956019214368513

noncomputable section

/-- A173706: Triangle read by rows, of p*(q-1) for primes p, q with p>q.

Offset 1, canonical program `A173706.P12511956019214368513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173706 (n : ℕ) : ℤ :=
  A173706.P12511956019214368513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173755.P14170754971601433776

`A046161(A002262(n))*A097807(n)`
-/

namespace A173755.P14170754971601433776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A002262 n).toNat * A097807 n

end

end A173755.P14170754971601433776

noncomputable section

/-- A173755: Table read by rows, T(n,k) = (-1)^(n-k)*2^(2*k-bw(k)), where bw(k) is the binary weight of k (A000120).

Offset 0, canonical program `A173755.P14170754971601433776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173755 (n : ℕ) : ℤ :=
  A173755.P14170754971601433776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173827.P8914770220511249519

`p?[A102781(n+1)+A004737(A111333(n+1))]`
-/

namespace A173827.P8914770220511249519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + A004737 (A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173827.P8914770220511249519

noncomputable section

/-- A173827: Primes p such that p+(floor(Sqrt(p)))^2 is prime.

Offset 1, canonical program `A173827.P8914770220511249519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A173827 (n : ℕ) : ℤ :=
  A173827.P8914770220511249519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A173827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173830.P15882500641865213836

`p?[A165994(n+1)+1]`
-/

namespace A173830.P15882500641865213836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165994 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P15882500641865213836

noncomputable section

/-- A173830: Primes of the form p - floor(sqrt(p)), p prime.

Offset 1, canonical program `A173830.P15882500641865213836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A173830 (n : ℕ) : ℤ :=
  A173830.P15882500641865213836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A173830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173894.P805646659942918492

`ceil(A029826(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173894.P805646659942918492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029826 n : ℚ) / 2⌉

end

end A173894.P805646659942918492

noncomputable section

/-- A173894: a(n) = ceiling(A029826(n)/2).

Offset 0, canonical program `A173894.P805646659942918492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173894 (n : ℕ) : ℤ :=
  A173894.P805646659942918492.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173906.P10721168870671252861

`(2*(n+1)-1)*A062940(2*(n+1)-1)+2*(n+1)*A062940(2*(n+1))`
-/

namespace A173906.P10721168870671252861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A062940 (2 * (n + 1) - 1) + (2 * (n + 1) : ℤ) * A062940 (2 * (n + 1))

end

end A173906.P10721168870671252861

noncomputable section

/-- A173906: Total number of digits of the squares of all n-digit numbers.

Offset 1, canonical program `A173906.P10721168870671252861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173906 (n : ℕ) : ℤ :=
  A173906.P10721168870671252861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173997.P16449646138910811700

`(A082375(n)+1)*A122197(n+1)`
-/

namespace A173997.P16449646138910811700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082375 n + 1) * A122197 (n + 1)

end

end A173997.P16449646138910811700

noncomputable section

/-- A173997: Irregular triangle by columns derived from (1, 2, 3, ...) * (1, 2, 3, ...).

Offset 1, canonical program `A173997.P16449646138910811700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173997 (n : ℕ) : ℤ :=
  A173997.P16449646138910811700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174015.P4606055868668143248

`A349047(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A174015.P4606055868668143248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A349047 (n - 2) + a (n - 1)

end

end A174015.P4606055868668143248

noncomputable section

/-- A174015: A generalized Catalan number sequence.

Offset 0, canonical program `A174015.P4606055868668143248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A174015 (n : ℕ) : ℤ :=
  A174015.P4606055868668143248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A174015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174047.P2449345490950928052

`record[(n+1)*xor(A101264(n+1), A101264(n))]`
-/

namespace A174047.P2449345490950928052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor (A101264 (n + 1)) (A101264 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174047.P2449345490950928052

noncomputable section

/-- A174047: Numbers k such that exactly one of 2*k-1 and 2*k+1 is prime.

Offset 1, canonical program `A174047.P2449345490950928052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174047 (n : ℕ) : ℤ :=
  A174047.P2449345490950928052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174098.P12561725270240646405

`floor(A014449(n+1)/2)`
-/

namespace A174098.P12561725270240646405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014449 (n + 1) : ℚ) / 2⌋

end

end A174098.P12561725270240646405

noncomputable section

/-- A174098: Symmetrical triangle T(n, m) = floor(Eulerian(n+1, m)/2), read by rows.

Offset 2, canonical program `A174098.P12561725270240646405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A174098 (n : ℕ) : ℤ :=
  A174098.P12561725270240646405.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A174098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174160.P13574911793730813180

`2*A008292(n+1)-A174158(n+1)`
-/

namespace A174160.P13574911793730813180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A174158 (n + 1)

end

end A174160.P13574911793730813180

noncomputable section

/-- A174160: Triangle read by rows: T(n,m) = 2*Eulerian(n, m-1) - (binomial(n-1, m-1) * binomial(n, m-1) / m)^2.

Offset 1, canonical program `A174160.P13574911793730813180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A174160 (n : ℕ) : ℤ :=
  A174160.P13574911793730813180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A174160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174237.P9308172459336184979

`record[ceil(A002145(n+1)/A082075(n+1))]`
-/

namespace A174237.P9308172459336184979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002145 (n + 1) : ℚ) / (A082075 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174237.P9308172459336184979

noncomputable section

/-- A174237: Numbers n such that 4n-1 and 4n+3 are prime.

Offset 1, canonical program `A174237.P9308172459336184979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A174237 (n : ℕ) : ℤ :=
  A174237.P9308172459336184979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A174237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174298.P6680327952782887561

`A003984(n)!*A008459(n)`
-/

namespace A174298.P6680327952782887561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003984 n).toNat : ℤ) * A008459 n

end

end A174298.P6680327952782887561

noncomputable section

/-- A174298: Triangle T(n, k) = binomial(n, k)*( n!/k! if floor(n/2) >= k otherwise n!/(n-k)! ), read by rows.

Offset 0, canonical program `A174298.P6680327952782887561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174298 (n : ℕ) : ℤ :=
  A174298.P6680327952782887561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174376.P921593247632662995

`A016116(A157454(n+1))*A159623(n)`
-/

namespace A174376.P921593247632662995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A157454 (n + 1)).toNat * A159623 n

end

end A174376.P921593247632662995

noncomputable section

/-- A174376: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 2, read by rows.

Offset 0, canonical program `A174376.P921593247632662995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174376 (n : ℕ) : ℤ :=
  A174376.P921593247632662995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174378.P1780650614204798079

`A016116(A157454(n+1))²*A159623(n)`
-/

namespace A174378.P1780650614204798079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A157454 (n + 1)).toNat ^ 2 * A159623 n

end

end A174378.P1780650614204798079

noncomputable section

/-- A174378: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 4, read by rows.

Offset 0, canonical program `A174378.P1780650614204798079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174378 (n : ℕ) : ℤ :=
  A174378.P1780650614204798079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174378.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174599.P14823216202927534643

`A225117(A061579(n))+A225117(n)-A137688(n)`
-/

namespace A174599.P14823216202927534643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 (A061579 n).toNat + (A225117 n - A137688 n)

end

end A174599.P14823216202927534643

noncomputable section

/-- A174599: Triangle T(n, k) = A154646(n,k) - A154646(n,0) + 1, 0 <= k <= n.

Offset 0, canonical program `A174599.P14823216202927534643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174599 (n : ℕ) : ℤ :=
  A174599.P14823216202927534643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174640.P7504223729505968141

`A033306(n)+1-A123081(n)`
-/

namespace A174640.P7504223729505968141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 n + (1 - A123081 n)

end

end A174640.P7504223729505968141

noncomputable section

/-- A174640: Triangle read by rows: T(n,k) = A033306(n,k) - A033306(n,0) + 1.

Offset 0, canonical program `A174640.P7504223729505968141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3681 terms. -/
def A174640 (n : ℕ) : ℤ :=
  A174640.P7504223729505968141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3681 terms. -/
def A174640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174658.P17580556523659380236

`2*eq[A089643(2*n), A089643(n)]`
-/

namespace A174658.P17580556523659380236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174658.P17580556523659380236

noncomputable section

/-- A174658: Balanced ternary numbers with equal count of negative trits and positive trits.

Offset 1, canonical program `A174658.P17580556523659380236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. -/
def A174658 (n : ℕ) : ℤ :=
  (A174658.P17580556523659380236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. -/
def A174658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174801.P13411173935637715079

`record[root(n+1, A023514(n+1))²]`
-/

namespace A174801.P13411173935637715079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) ^ (1 / (A023514 (n + 1) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174801.P13411173935637715079

noncomputable section

/-- A174801: Prime(n)+1 is prime or semiprime.

Offset 1, canonical program `A174801.P13411173935637715079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. -/
def A174801 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174801.P13411173935637715079.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. -/
def A174801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174850.P7714506034839295720

`A165248(n)-10*A188134(n)`
-/

namespace A174850.P7714506034839295720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165248 n - 10 * A188134 n

end

end A174850.P7714506034839295720

noncomputable section

/-- A174850: Quintisection A061037(5*n-2).

Offset 0, canonical program `A174850.P7714506034839295720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174850 (n : ℕ) : ℤ :=
  A174850.P7714506034839295720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174891.P1764680800722521875

`lt[0, A061669(n+1)]+1`
-/

namespace A174891.P1764680800722521875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174891.P1764680800722521875

noncomputable section

/-- A174891: All positive numbers except those that are the product of an odd number of distinct primes.

Offset 1, canonical program `A174891.P1764680800722521875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174891 (n : ℕ) : ℤ :=
  (A174891.P1764680800722521875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174966.P16671628396494930920

`A007318(n)-A008292(n+1)*A014473(n)`
-/

namespace A174966.P16671628396494930920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A008292 (n + 1) * A014473 n

end

end A174966.P16671628396494930920

noncomputable section

/-- A174966: Triangle read by rows: T(n,k) = binomial(n,k) + Eulerian1(n+1,k) - binomial(n,k) * Eulerian1(n+1,k).

Offset 0, canonical program `A174966.P16671628396494930920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1857 terms. -/
def A174966 (n : ℕ) : ℤ :=
  A174966.P16671628396494930920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1857 terms. -/
def A174966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175114.P11097718546423522819

`lcm(A144965(n)+A022144(n), A010014(n))`
-/

namespace A175114.P11097718546423522819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144965 n + A022144 n) (A010014 n)

end

end A175114.P11097718546423522819

noncomputable section

/-- A175114: First differences of A175113.

Offset 0, canonical program `A175114.P11097718546423522819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175114 (n : ℕ) : ℤ :=
  (A175114.P11097718546423522819.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175218.P12503116797807442088

`A175217(n+1)+A141044(n)`
-/

namespace A175218.P12503116797807442088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175217 (n + 1) + A141044 n

end

end A175218.P12503116797807442088

noncomputable section

/-- A175218: The third nonprimes after the primes.

Offset 1, canonical program `A175218.P12503116797807442088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175218 (n : ℕ) : ℤ :=
  A175218.P12503116797807442088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175253.P7822939282831738553

`1-A175192(n+1)`
-/

namespace A175253.P7822939282831738553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175192 (n + 1)

end

end A175253.P7822939282831738553

noncomputable section

/-- A175253: a(n) = characteristic function of numbers k such that A000203(m) = k has no solution for any m, where A000203(m) = sum of divisors of m.

Offset 1, canonical program `A175253.P7822939282831738553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175253 (n : ℕ) : ℤ :=
  A175253.P7822939282831738553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175441.P11345916668563517181

`lcm(A001008(n+1), A103517(n))/A103517(n)`
-/

namespace A175441.P11345916668563517181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001008 (n + 1)) (A103517 n) : ℚ) / (A103517 n : ℚ)

end

end A175441.P11345916668563517181

noncomputable section

/-- A175441: Denominator of the harmonic mean of the first n positive integers.

Offset 1, canonical program `A175441.P11345916668563517181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A175441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175441.P11345916668563517181.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A175441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175802.P4874557558018380858

`(2^(A018252(n+1)-1))%A018252(n+2)`
-/

namespace A175802.P4874557558018380858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A018252 (n + 1) - 1 : ℤ))) (A018252 (n + 2))

end

end A175802.P4874557558018380858

noncomputable section

/-- A175802: a(n) = 2^(positive nonprime(n)-1) mod (positive nonprime(n+1)).

Offset 1, canonical program `A175802.P4874557558018380858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175802 (n : ℕ) : ℤ :=
  A175802.P4874557558018380858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175856.P13215807738889420678

`n+3-2*A175851(n+1)`
-/

namespace A175856.P13215807738889420678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A175851 (n + 1)

end

end A175856.P13215807738889420678

noncomputable section

/-- A175856: a(n) = a(n-1) - 1 if n is composite, a(n) = n otherwise.

Offset 1, canonical program `A175856.P13215807738889420678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175856 (n : ℕ) : ℤ :=
  A175856.P13215807738889420678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175965.P352043763123529774

`∑[A158611(n+1)]+1`
-/

namespace A175965.P352043763123529774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175965.P352043763123529774

noncomputable section

/-- A175965: Lexicographically earliest sequence with first differences as increasing sequence of noncomposites A008578.

Offset 1, canonical program `A175965.P352043763123529774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175965 (n : ℕ) : ℤ :=
  A175965.P352043763123529774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176022.P13989985666709970606

`A001263(n+1)/A007318(n)*A169653(n+1)`
-/

namespace A176022.P13989985666709970606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A169653 (n + 1) : ℚ)

end

end A176022.P13989985666709970606

noncomputable section

/-- A176022: Triangle T(n, k) = A176013(n, k) + A176013(n, n-k+1), read by rows.

Offset 1, canonical program `A176022.P13989985666709970606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A176022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176022.P13989985666709970606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A176022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176044.P4140518782580765565

`floor(A116572(n+1)/2)`
-/

namespace A176044.P4140518782580765565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116572 (n + 1) : ℚ) / 2⌋

end

end A176044.P4140518782580765565

noncomputable section

/-- A176044: n-th-prime without last digit.

Offset 1, canonical program `A176044.P4140518782580765565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176044 (n : ℕ) : ℤ :=
  A176044.P4140518782580765565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176063.P13273263877411822681

`A177974(n)+A014473(n)*A155162(n)`
-/

namespace A176063.P13273263877411822681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177974 n + A014473 n * A155162 n

end

end A176063.P13273263877411822681

noncomputable section

/-- A176063: Triangle read by rows: T(n,k) = (-1)^k * binomial(n,k) * pochhammer(-n,k) + (-1)^(n-k) * binomial(n,n-k) * pochhammer(-n,n-k) - n!.

Offset 0, canonical program `A176063.P13273263877411822681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A176063 (n : ℕ) : ℤ :=
  A176063.P13273263877411822681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A176063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176098.P6245199818631758483

`A000040(n+1)*A158611(n+1)`
-/

namespace A176098.P6245199818631758483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A158611 (n + 1)

end

end A176098.P6245199818631758483

noncomputable section

/-- A176098: a(n) = prime(n) times the n-th nonnegative noncomposite.

Offset 1, canonical program `A176098.P6245199818631758483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176098 (n : ℕ) : ℤ :=
  A176098.P6245199818631758483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176099.P4142844014744046612

`A000040(n+1)+A158611(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176099.P4142844014744046612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A158611 (n + 1)

end

end A176099.P4142844014744046612

noncomputable section

/-- A176099: Prime(n) + A158611(n).

Offset 1, canonical program `A176099.P4142844014744046612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176099 (n : ℕ) : ℤ :=
  A176099.P4142844014744046612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176181.P2660284483944872761

`A065091(lt[A063086(n+1), A058263(n+1)])`
-/

namespace A176181.P2660284483944872761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176181.P2660284483944872761

noncomputable section

/-- A176181: Primes p(n) such that gcd(p(n)-1, p(n+1)-1) > gcd(p(n)+1, p(n+1)+1).

Offset 1, canonical program `A176181.P2660284483944872761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176181 (n : ℕ) : ℤ :=
  A176181.P2660284483944872761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176204.P5524176977963814572

`2*A176200(n)-1`
-/

namespace A176204.P5524176977963814572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176200 n - 1

end

end A176204.P5524176977963814572

noncomputable section

/-- A176204: Triangle T(n, k) = 4 * A008292(n+1, k) - 3, read by rows.

Offset 0, canonical program `A176204.P5524176977963814572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A176204 (n : ℕ) : ℤ :=
  A176204.P5524176977963814572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A176204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176238.P9477818329557450048

`lt[1, A001065(A032741(n)+2)]`
-/

namespace A176238.P9477818329557450048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A032741 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176238.P9477818329557450048

noncomputable section

/-- A176238: Natural numbers n such that d(d(n)+1) > 2.

Offset 1, canonical program `A176238.P9477818329557450048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176238 (n : ℕ) : ℤ :=
  (A176238.P9477818329557450048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176287.P15769293893489598817

`∑{#}[n, A000984(#)*A132364(n-#)]`
-/

namespace A176287.P15769293893489598817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000984 k * A132364 (n - k)

end

end A176287.P15769293893489598817

noncomputable section

/-- A176287: Diagonal sums of number triangle A092392.

Offset 0, canonical program `A176287.P15769293893489598817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176287 (n : ℕ) : ℤ :=
  A176287.P15769293893489598817.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176423.P6772582188731160605

`A018252((n+3)%a(n-1))` with `a(0)=3, a(1)=6`
-/

namespace A176423.P6772582188731160605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  A018252 (Int.tmod (n + 3 : ℤ) (a (n - 1))).toNat

end

end A176423.P6772582188731160605

noncomputable section

/-- A176423: Numbers that are the sum of at least three distinct nonnegative integers in arithmetic progression.

Offset 1, canonical program `A176423.P6772582188731160605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176423 (n : ℕ) : ℤ :=
  A176423.P6772582188731160605.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176487.P5024915074260981774

`A014473(n)+A008292(n+1)`
-/

namespace A176487.P5024915074260981774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A008292 (n + 1)

end

end A176487.P5024915074260981774

noncomputable section

/-- A176487: Triangle read by rows: T(n,k) = binomial(n,k) + A008292(n+1,k+1) - 1.

Offset 0, canonical program `A176487.P5024915074260981774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A176487 (n : ℕ) : ℤ :=
  A176487.P5024915074260981774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A176487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176496.P3468510325933949683

`a(n-1)+2^A018252(n+1)` with `a(0)=2`
-/

namespace A176496.P3468510325933949683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A018252 (n + 1) : ℤ)

end

end A176496.P3468510325933949683

noncomputable section

/-- A176496: a(n) = Sum_{k=1..n} 2^nonprime(k).

Offset 1, canonical program `A176496.P3468510325933949683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176496.P3468510325933949683.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176496.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176570.P4009191812961714339

`A026741(eq[2, ∑{e}[n, #]])`
-/

namespace A176570.P4009191812961714339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176570.P4009191812961714339

noncomputable section

/-- A176570: a(n)=n-th semiprime if n-th semiprime odd and n-th semiprime/2 if n-th semiprime even.

Offset 1, canonical program `A176570.P4009191812961714339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176570 (n : ℕ) : ℤ :=
  A176570.P4009191812961714339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176811.P7244811370246192382

`A090406(2*p?[A040976(n+1)])`
-/

namespace A176811.P7244811370246192382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176811.P7244811370246192382

noncomputable section

/-- A176811: Number of primes between 2*(lesser of n-th twin prime pair) and 2*(greater of n-th twin prime pair).

Offset 1, canonical program `A176811.P7244811370246192382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176811 (n : ℕ) : ℤ :=
  A176811.P7244811370246192382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176870.P13145073850188262678

`p?[A000040(n+1)*A001222(A104492(n+1))]`
-/

namespace A176870.P13145073850188262678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A104492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176870.P13145073850188262678

noncomputable section

/-- A176870: Prime numbers p such that p-LargestCube is prime, (LargestCube <= p).

Offset 1, canonical program `A176870.P13145073850188262678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176870 (n : ℕ) : ℤ :=
  A176870.P13145073850188262678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177092.P4641529934415487522

`p?[A111312(n+1)]`
-/

namespace A177092.P4641529934415487522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177092.P4641529934415487522

noncomputable section

/-- A177092: Primes p such that 11*p + 2 is also prime.

Offset 1, canonical program `A177092.P4641529934415487522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A177092 (n : ℕ) : ℤ :=
  A177092.P4641529934415487522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A177092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177264.P12625146371770321732

`A177263(A038722(n+1))+A000007(n+4)`
-/

namespace A177264.P12625146371770321732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177263 (A038722 (n + 1)).toNat + A000007 (n + 4)

end

end A177264.P12625146371770321732

noncomputable section

/-- A177264: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k as the first entry in the last block (1<=k<=n).

Offset 1, canonical program `A177264.P12625146371770321732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177264 (n : ℕ) : ℤ :=
  A177264.P12625146371770321732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177767.P10065368362006185369

`or(A097805(n), A103452(n))`
-/

namespace A177767.P10065368362006185369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 n) (A103452 n)

end

end A177767.P10065368362006185369

noncomputable section

/-- A177767: Triangle read by rows: T(n,k) = binomial(n - 1, k - 1), 1 <= k <= n, and T(n,0) = A153881(n+1), n >= 0.

Offset 0, canonical program `A177767.P10065368362006185369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177767 (n : ℕ) : ℤ :=
  A177767.P10065368362006185369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177853.P6963506388651497221

`∑[∑[A140434(n+1)]]`
-/

namespace A177853.P6963506388651497221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P6963506388651497221

noncomputable section

/-- A177853: Partial sums of A018805.

Offset 1, canonical program `A177853.P6963506388651497221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177853 (n : ℕ) : ℤ :=
  A177853.P6963506388651497221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177877.P42856707843489636

`A082652(n+1)-A000292(A002262(n))`
-/

namespace A177877.P42856707843489636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (n + 1) - A000292 (A002262 n).toNat

end

end A177877.P42856707843489636

noncomputable section

/-- A177877: Triangle in which row n is derived from (1,2,3,...,n) dot (n,n-1,...,1) with additive carryovers.

Offset 0, canonical program `A177877.P42856707843489636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177877 (n : ℕ) : ℤ :=
  A177877.P42856707843489636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177997.P12061995829486224257

`p?[A065897(n+1)]`
-/

namespace A177997.P12061995829486224257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P12061995829486224257

noncomputable section

/-- A177997: p and A002808(p)/2 are both prime.

Offset 1, canonical program `A177997.P12061995829486224257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A177997 (n : ℕ) : ℤ :=
  A177997.P12061995829486224257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A177997.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178138.P18314330425840706382

`∑[A014150(n+1)]`
-/

namespace A178138.P18314330425840706382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P18314330425840706382

noncomputable section

/-- A178138: Apply partial sum operator 4 times to primes.

Offset 1, canonical program `A178138.P18314330425840706382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178138 (n : ℕ) : ℤ :=
  A178138.P18314330425840706382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178167.P10966866406558041042

`Δ[A007443(n+1)]`
-/

namespace A178167.P10966866406558041042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178167.P10966866406558041042

noncomputable section

/-- A178167: Binomial transform of odd primes.

Offset 1, canonical program `A178167.P10966866406558041042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A178167 (n : ℕ) : ℤ :=
  A178167.P10966866406558041042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A178167.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178462.P16727862462628083790

`lt[n+1, 2*A004648(n+1)]+1`
-/

namespace A178462.P16727862462628083790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A178462.P16727862462628083790

noncomputable section

/-- A178462: Numbers k such that prime(k) mod k > k/2.

Offset 1, canonical program `A178462.P16727862462628083790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A178462 (n : ℕ) : ℤ :=
  (A178462.P16727862462628083790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A178462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178474.P4753274214124290616

`∏{p}[A166453(n), #]`
-/

namespace A178474.P4753274214124290616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A178474.P4753274214124290616

noncomputable section

/-- A178474: Triangle T(n,m) read by rows: the denominator of the coefficient [x^m] of the inverse Euler polynomial E^{-1}(n,x), 0<=m<=n.

Offset 0, canonical program `A178474.P4753274214124290616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A178474 (n : ℕ) : ℤ :=
  (A178474.P4753274214124290616.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A178474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178756.P13128760247326901510

`A051129(n+2)*A127779(n+1)`
-/

namespace A178756.P13128760247326901510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 2) * A127779 (n + 1)

end

end A178756.P13128760247326901510

noncomputable section

/-- A178756: Rectangular array T(n,k) = binomial(n,2)*k*n^(k-1) read by antidiagonals.

Offset 2, canonical program `A178756.P13128760247326901510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4295 terms. -/
def A178756 (n : ℕ) : ℤ :=
  A178756.P13128760247326901510.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4295 terms. -/
def A178756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178792.P3240755536533390895

`1/3*(4*2^n*A000984(n)-A064062(n))`
-/

namespace A178792.P3240755536533390895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((4 * 2 ^ n : ℤ) * A000984 n - A064062 n : ℚ)

end

end A178792.P3240755536533390895

noncomputable section

/-- A178792: Dot product of the rows of triangle A046899 with vector (1,2,4,8,...) (= A000079).

Offset 0, canonical program `A178792.P3240755536533390895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178792.P3240755536533390895.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179084.P14438194150601923336

`A179083(n+1)+1`
-/

namespace A179084.P14438194150601923336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179083 (n + 1) + 1

end

end A179084.P14438194150601923336

noncomputable section

/-- A179084: Odd numbers having an even sum of digits in their decimal representation.

Offset 1, canonical program `A179084.P14438194150601923336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179084 (n : ℕ) : ℤ :=
  A179084.P14438194150601923336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179085.P446774508924507487

`A179082(n+1)+1`
-/

namespace A179085.P446774508924507487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1) + 1

end

end A179085.P446774508924507487

noncomputable section

/-- A179085: Odd numbers having an odd sum of digits in their decimal representation.

Offset 1, canonical program `A179085.P446774508924507487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179085 (n : ℕ) : ℤ :=
  A179085.P446774508924507487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179190.P8665383947717794379

`A000007(n)+2*A025227(n)`
-/

namespace A179190.P8665383947717794379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A025227 n

end

end A179190.P8665383947717794379

noncomputable section

/-- A179190: Coefficient [x^n] of the Maclaurin series for 2 - sqrt(1 - 4*x - 4*x^2).

Offset 0, canonical program `A179190.P8665383947717794379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A179190 (n : ℕ) : ℤ :=
  A179190.P8665383947717794379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A179190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179215.P1587544281057178083

`∏[C(n, n-char[A005117(n+1)])]`
-/

namespace A179215.P1587544281057178083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179215.P1587544281057178083

noncomputable section

/-- A179215: Product of squarefree numbers less than n+1.

Offset 0, canonical program `A179215.P1587544281057178083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A179215 (n : ℕ) : ℤ :=
  (A179215.P1587544281057178083.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A179215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179242.P5915181070434955761

`A193588(n)+A020695(A123578(n+1))`
-/

namespace A179242.P5915181070434955761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n + A020695 (A123578 (n + 1)).toNat

end

end A179242.P5915181070434955761

noncomputable section

/-- A179242: Numbers that have two terms in their Zeckendorf representation.

Offset 1, canonical program `A179242.P5915181070434955761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179242 (n : ℕ) : ℤ :=
  A179242.P5915181070434955761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179278.P6438880649128662562

`A018252(A062298(n+1))`
-/

namespace A179278.P6438880649128662562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A062298 (n + 1)).toNat

end

end A179278.P6438880649128662562

noncomputable section

/-- A179278: Largest nonprime integer <= n.

Offset 1, canonical program `A179278.P6438880649128662562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179278 (n : ℕ) : ℤ :=
  A179278.P6438880649128662562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179336.P4367121721092430186

`A000040(eq[1, gcd(19, A109066(n+1))]+1)`
-/

namespace A179336.P4367121721092430186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 19 (A109066 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A179336.P4367121721092430186

noncomputable section

/-- A179336: Primes containing at least one prime digit in base 10.

Offset 1, canonical program `A179336.P4367121721092430186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9309 terms. -/
def A179336 (n : ℕ) : ℤ :=
  A179336.P4367121721092430186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9309 terms. -/
def A179336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179445.P5484428261871917909

`floor(p?[A005171(n+1)+10*(n+1)]/10)`
-/

namespace A179445.P5484428261871917909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (10 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌋

end

end A179445.P5484428261871917909

noncomputable section

/-- A179445: Nonprimes m such that 10m + 1 are primes.

Offset 1, canonical program `A179445.P5484428261871917909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179445 (n : ℕ) : ℤ :=
  A179445.P5484428261871917909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179446.P7289325605206415384

`p?[A005171(n+1)+10*(n+1)]`
-/

namespace A179446.P7289325605206415384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (10 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P7289325605206415384

noncomputable section

/-- A179446: Primes p of form p = 10k + 1, where k is nonprime.

Offset 1, canonical program `A179446.P7289325605206415384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179446 (n : ℕ) : ℤ :=
  A179446.P7289325605206415384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179626.P7373420755373197027

`A175851(eq[1, A082551(n+1)])`
-/

namespace A179626.P7373420755373197027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179626.P7373420755373197027

noncomputable section

/-- A179626: Distance between the n-th abundant number and the nearest prime below it.

Offset 1, canonical program `A179626.P7373420755373197027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179626 (n : ℕ) : ℤ :=
  A179626.P7373420755373197027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179650.P8572586983599914253

`A000040(n+1)%A018252(n+1)`
-/

namespace A179650.P8572586983599914253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A018252 (n + 1))

end

end A179650.P8572586983599914253

noncomputable section

/-- A179650: a(n) = (n-th prime) mod (n-th nonprime).

Offset 1, canonical program `A179650.P8572586983599914253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179650 (n : ℕ) : ℤ :=
  A179650.P8572586983599914253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179876.P8870788360812222462

`A179875(n+1)+1`
-/

namespace A179876.P8870788360812222462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1) + 1

end

end A179876.P8870788360812222462

noncomputable section

/-- A179876: Numbers h such that h and h-1 have same antiharmonic mean of the numbers k < h such that gcd(k, h) = 1.

Offset 1, canonical program `A179876.P8870788360812222462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179876 (n : ℕ) : ℤ :=
  A179876.P8870788360812222462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179899.P8119244184585946797

`3*eq[0, A101264(n)]`
-/

namespace A179899.P8119244184585946797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179899.P8119244184585946797

noncomputable section

/-- A179899: Integers of the form A179896(n)/A141468(n+1).

Offset 1, canonical program `A179899.P8119244184585946797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179899 (n : ℕ) : ℤ :=
  (A179899.P8119244184585946797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179952.P16029482898414679396

`A099475((∑[n]+n)%(n+1)+1)`
-/

namespace A179952.P16029482898414679396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)

end

end A179952.P16029482898414679396

noncomputable section

/-- A179952: Add 1 to all the divisors of n. a(n) = number of perfect squares in the set.

Offset 1, canonical program `A179952.P16029482898414679396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179952 (n : ℕ) : ℤ :=
  A179952.P16029482898414679396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180013.P2311112040680813125

`abs(∑[A010054(n)]*A048994(n))`
-/

namespace A180013.P2311112040680813125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A048994 n|

end

end A180013.P2311112040680813125

noncomputable section

/-- A180013: Triangular array read by rows: T(n,k) = number of fixed points in the permutations of {1,2,...,n} that have exactly k cycles; n>=1, 1<=k<=n.

Offset 1, canonical program `A180013.P2311112040680813125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A180013 (n : ℕ) : ℤ :=
  A180013.P2311112040680813125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A180013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180094.P6183651990917072129

`a(A000120(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A180094.P6183651990917072129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A000120 n).toNat + 1

end

end A180094.P6183651990917072129

noncomputable section

/-- A180094: Number of steps to reach 0 or 1, starting with n and applying the map k -> (number of 1's in binary expansion of k) repeatedly.

Offset 0, canonical program `A180094.P6183651990917072129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180094 (n : ℕ) : ℤ :=
  (A180094.P6183651990917072129.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180094.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A180188.P17065688349002946383

`A002024(n+1)*A098825(A061579(n))`
-/

namespace A180188.P17065688349002946383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A098825 (A061579 n).toNat

end

end A180188.P17065688349002946383

noncomputable section

/-- A180188: Triangle read by rows: T(n,k) is the number of permutations of [n] with k circular successions (0<=k<=n-1). A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

Offset 1, canonical program `A180188.P17065688349002946383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188 (n : ℕ) : ℤ :=
  A180188.P17065688349002946383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180200.P2958972076606443306

`xor(n, A292600(A003817(n)-n))`
-/

namespace A180200.P2958972076606443306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 (A003817 n - (n : ℤ)).toNat)

end

end A180200.P2958972076606443306

noncomputable section

/-- A180200: a(0)=0, a(1)=1; for n > 1, a(n) = 2*m + 1 - (n mod 2 + m mod 2) mod 2, where m = a(floor(n/2)).

Offset 0, canonical program `A180200.P2958972076606443306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180200 (n : ℕ) : ℤ :=
  A180200.P2958972076606443306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180201.P8787023281284758013

`xor(n, floor(A035327(n)/2))`
-/

namespace A180201.P8787023281284758013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A035327 n : ℚ) / 2⌋

end

end A180201.P8787023281284758013

noncomputable section

/-- A180201: Inverse permutation to A180200.

Offset 0, canonical program `A180201.P8787023281284758013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180201 (n : ℕ) : ℤ :=
  A180201.P8787023281284758013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180217.P8135109345917219765

`A039702(n+1)+A039701(n+1)`
-/

namespace A180217.P8135109345917219765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + A039701 (n + 1)

end

end A180217.P8135109345917219765

noncomputable section

/-- A180217: a(n) = (n-th prime modulo 3) + (n-th prime modulo 4).

Offset 1, canonical program `A180217.P8135109345917219765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180217 (n : ℕ) : ℤ :=
  A180217.P8135109345917219765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180249.P6868902243735557248

`∑{d}[n+1, #*A056493(#)/2]`
-/

namespace A180249.P6868902243735557248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A056493 d : ℚ) / 2

end

end A180249.P6868902243735557248

noncomputable section

/-- A180249: a(n) is the total number of k-reverses of n.

Offset 1, canonical program `A180249.P6868902243735557248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180249.P6868902243735557248.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180266.P9271125515567740913

`(A115140(n)-A002420(n))*A160457(n)`
-/

namespace A180266.P9271125515567740913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115140 n - A002420 n) * A160457 n

end

end A180266.P9271125515567740913

noncomputable section

/-- A180266: a(0) = 0; a(n) = C(2*n-2,n-1)*(n^2-2*n+2)/n for n >= 1.

Offset 0, canonical program `A180266.P9271125515567740913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266 (n : ℕ) : ℤ :=
  A180266.P9271125515567740913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180322.P10246016222357682006

`(n+1)*A056493(n+1)/2`
-/

namespace A180322.P10246016222357682006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A056493 (n + 1) : ℚ) / 2

end

end A180322.P10246016222357682006

noncomputable section

/-- A180322: a(n) = AR(n) is the total number of aperiodic k-reverses of n.

Offset 1, canonical program `A180322.P10246016222357682006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180322 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180322.P10246016222357682006.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180411.P17944888598162939030

`A163407(A102467(n+2))`
-/

namespace A180411.P17944888598162939030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (A102467 (n + 2)).toNat

end

end A180411.P17944888598162939030

noncomputable section

/-- A180411: Sum of the semiprime divisors (with repetition) of the n-th number with two or more distinct semiprime divisors.

Offset 1, canonical program `A180411.P17944888598162939030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102467, A163407, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180411 (n : ℕ) : ℤ :=
  A180411.P17944888598162939030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102467, A163407, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180490.P12221106932613284276

`eq[0, (n+1)%A000120(n+1)²]+1`
-/

namespace A180490.P12221106932613284276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000120 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180490.P12221106932613284276

noncomputable section

/-- A180490: Numbers k such that (A000120(k))^2 divides k.

Offset 1, canonical program `A180490.P12221106932613284276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A180490 (n : ℕ) : ℤ :=
  (A180490.P12221106932613284276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A180490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180864.P12688138741425306482

`A168221(a(n-2))` with `a(0)=13, a(1)=10`
-/

namespace A180864.P12688138741425306482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 10] fun n a =>
  A168221 (a (n - 2)).toNat

end

end A180864.P12688138741425306482

noncomputable section

/-- A180864: Trajectory of 13 under map n->A006368(n).

Offset 0, canonical program `A180864.P12688138741425306482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A180864 (n : ℕ) : ℤ :=
  A180864.P12688138741425306482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A180864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180918.P14651875171913315953

`A119963(A080036(n))-A010054(n)`
-/

namespace A180918.P14651875171913315953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A080036 n).toNat - A010054 n

end

end A180918.P14651875171913315953

noncomputable section

/-- A180918: 'DPE(n,k)' triangle read by rows. DPE(n,k) is the number of k-double-palindromes of n up to cyclic equivalence.

Offset 1, canonical program `A180918.P14651875171913315953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A180918 (n : ℕ) : ℤ :=
  A180918.P14651875171913315953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A180918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180953.P18395862336695284303

`∑[A123384(n)+comp[A066343(n+1)]]`
-/

namespace A180953.P18395862336695284303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180953.P18395862336695284303

noncomputable section

/-- A180953: The number of terms of the form 2^i*5^j (A003592) less than or equal to 10^n.

Offset 0, canonical program `A180953.P18395862336695284303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A180953 (n : ℕ) : ℤ :=
  A180953.P18395862336695284303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A180953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180987.P1087486024587690451

`A030528(eq[0, A145677(n)]+1)`
-/

namespace A180987.P1087486024587690451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180987.P1087486024587690451

noncomputable section

/-- A180987: T(n,k)=number of nXk binary matrices with rows in lexicographically nonincreasing order and columns in lexicographically strictly increasing order.

Offset 1, canonical program `A180987.P1087486024587690451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987 (n : ℕ) : ℤ :=
  A180987.P1087486024587690451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181354.P10064624979457329001

`abs(Δ[A018005(n+1)])`
-/

namespace A181354.P10064624979457329001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A181354.P10064624979457329001

noncomputable section

/-- A181354: Number of n-digit perfect cubes.

Offset 1, canonical program `A181354.P10064624979457329001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A181354 (n : ℕ) : ℤ :=
  A181354.P10064624979457329001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A181354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181577.P9112885934417326049

`p?[A080087(n+1)]`
-/

namespace A181577.P9112885934417326049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P9112885934417326049

noncomputable section

/-- A181577: Prime number of trailing end 0's associated with p! where p = A181576(n).

Offset 1, canonical program `A181577.P9112885934417326049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1149 terms. -/
def A181577 (n : ℕ) : ℤ :=
  A181577.P9112885934417326049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1149 terms. -/
def A181577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181641.P10826610368227249791

`2*A115140(n)-a(n-1)` with `a(0)=1`
-/

namespace A181641.P10826610368227249791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A115140 n - a (n - 1)

end

end A181641.P10826610368227249791

noncomputable section

/-- A181641: Expansion of sqrt(1-4*x)/(1+x).

Offset 0, canonical program `A181641.P10826610368227249791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A181641 (n : ℕ) : ℤ :=
  A181641.P10826610368227249791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A181641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181905.P12782552284517024142

`∑{d}[A162397(n+1), #*A162397(#)]`
-/

namespace A181905.P12782552284517024142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A162397 d

end

end A181905.P12782552284517024142

noncomputable section

/-- A181905: Expansion of (b(q^3)^3 - b(q)^3) / 9 in powers of q where b() is a cubic AGM theta function.

Offset 1, canonical program `A181905.P12782552284517024142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A181905 (n : ℕ) : ℤ :=
  A181905.P12782552284517024142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A181905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181940.P15678314740941203251

`A004737(Δ[n²])-1`
-/

namespace A181940.P15678314740941203251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A181940.P15678314740941203251

noncomputable section

/-- A181940: a(0)=0, and there are a(n) terms between a(n) and the nearest a(n)+1.

Offset 0, canonical program `A181940.P15678314740941203251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181940 (n : ℕ) : ℤ :=
  A181940.P15678314740941203251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182145.P14347110186623288046

`xor(A001223(n+1), A001223(n+2))`
-/

namespace A182145.P14347110186623288046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001223 (n + 1)) (A001223 (n + 2))

end

end A182145.P14347110186623288046

noncomputable section

/-- A182145: XOR(d1,d2), where d1 and d2 are the difference between consecutive primes given in binary.

Offset 1, canonical program `A182145.P14347110186623288046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182145 (n : ℕ) : ℤ :=
  A182145.P14347110186623288046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182321.P14501568924962623812

`1+a(A004736(n)-1)` with `a(0)=0`
-/

namespace A182321.P14501568924962623812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A004736 n - 1).toNat

end

end A182321.P14501568924962623812

noncomputable section

/-- A182321: Number of iterations of A025581(n) required to reach 0.

Offset 0, canonical program `A182321.P14501568924962623812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A182321 (n : ℕ) : ℤ :=
  (A182321.P14501568924962623812.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A182321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182434.P10432546062453886706

`∑[and(A061007(n+1), A101264(2*(n+1)))]`
-/

namespace A182434.P10432546062453886706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061007 (n + 1)) (A101264 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P10432546062453886706

noncomputable section

/-- A182434: Number of primes p < n such that 4*p+1 is also prime.

Offset 1, canonical program `A182434.P10432546062453886706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434 (n : ℕ) : ℤ :=
  A182434.P10432546062453886706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182492.P8158037386142892390

`-A105523(A123108(A022998(n)))`
-/

namespace A182492.P8158037386142892390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105523 (A123108 (A022998 n).toNat).toNat

end

end A182492.P8158037386142892390

noncomputable section

/-- A182492: Expansion of 1 - x - (1 - sqrt(1 + 4*x^4)) / (2*x) in powers of x.

Offset 0, canonical program `A182492.P8158037386142892390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A182492 (n : ℕ) : ℤ :=
  A182492.P8158037386142892390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A182492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182555.P4612867072512672630

`A153335(n+1)+A027306(n)`
-/

namespace A182555.P4612867072512672630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) + A027306 n

end

end A182555.P4612867072512672630

noncomputable section

/-- A182555: Expansion of g.f. (3-4*x-sqrt(1-4*x^2))/(2*(1-2*x)^2).

Offset 0, canonical program `A182555.P4612867072512672630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A182555 (n : ℕ) : ℤ :=
  A182555.P4612867072512672630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A182555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182899.P8776411436169530501

`2*A182897(n)`
-/

namespace A182899.P8776411436169530501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182897 n

end

end A182899.P8776411436169530501

noncomputable section

/-- A182899: Number of returns to the horizontal axis (both from above and below) in all weighted lattice paths in L_n.

Offset 0, canonical program `A182899.P8776411436169530501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182899 (n : ℕ) : ℤ :=
  A182899.P8776411436169530501.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182908.P17591284892401627303

`A025528(2^(n+1))`
-/

namespace A182908.P17591284892401627303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (2 ^ (n + 1))

end

end A182908.P17591284892401627303

noncomputable section

/-- A182908: Rank of 2^n when all prime powers (A246655) p^n, for n>=1, are jointly ranked.

Offset 1, canonical program `A182908.P17591284892401627303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182908 (n : ℕ) : ℤ :=
  A182908.P17591284892401627303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182936.P4233504524226139086

`A020500(n+1)-A061397(n+1)`
-/

namespace A182936.P4233504524226139086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1) - A061397 (n + 1)

end

end A182936.P4233504524226139086

noncomputable section

/-- A182936: Greatest common divisor of the proper divisors of n, 0 if there are none.

Offset 1, canonical program `A182936.P4233504524226139086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182936 (n : ℕ) : ℤ :=
  A182936.P4233504524226139086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182945.P12591486644408387893

`A000040(A004736(n+1))^A002260(n+1)`
-/

namespace A182945.P12591486644408387893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A004736 (n + 1)).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A182945.P12591486644408387893

noncomputable section

/-- A182945: Array of prime powers p^j, as transpose of A182944.

Offset 1, canonical program `A182945.P12591486644408387893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A182945 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182945.P12591486644408387893.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. -/
def A182945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183102.P5997989869354397297

`∏{d}[A003557(n+1), A003557(n+1)/A003557(#)]`
-/

namespace A183102.P5997989869354397297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A003557 (n + 1) : ℚ) / (A003557 d : ℚ)

end

end A183102.P5997989869354397297

noncomputable section

/-- A183102: a(n) = product of powerful divisors d of n.

Offset 1, canonical program `A183102.P5997989869354397297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183102.P5997989869354397297.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183140.P17476098312596561031

`∑[n]-A183139(n+1)`
-/

namespace A183140.P17476098312596561031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A183139 (n + 1)

end

end A183140.P17476098312596561031

noncomputable section

/-- A183140: a(n) = [1/s]+[2/s]+...+[n/s], where s=2+sqrt(2) and []=floor.

Offset 0, canonical program `A183140.P17476098312596561031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183140 (n : ℕ) : ℤ :=
  A183140.P17476098312596561031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183144.P18038817372177583572

`∑[n]-A183143(n+1)`
-/

namespace A183144.P18038817372177583572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A183143 (n + 1)

end

end A183144.P18038817372177583572

noncomputable section

/-- A183144: [1/s]+[2/s]+...+[n/s], where s=(3+sqrt(3))/2, []=floor.

Offset 1, canonical program `A183144.P18038817372177583572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183144 (n : ℕ) : ℤ :=
  A183144.P18038817372177583572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183233.P11654729324377189926

`lt[1, Δ[A057945(n)²]]`
-/

namespace A183233.P11654729324377189926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183233.P11654729324377189926

noncomputable section

/-- A183233: Ordering of the numbers in the tree A183231; complement of A183234.

Offset 1, canonical program `A183233.P11654729324377189926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A183233 (n : ℕ) : ℤ :=
  (A183233.P11654729324377189926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A183233.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A183626.P17793019024115659213

`A183624(n+1)+6*A175161(n)`
-/

namespace A183626.P17793019024115659213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183624 (n + 1) + 6 * A175161 n

end

end A183626.P17793019024115659213

noncomputable section

/-- A183626: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock summing to 4.

Offset 1, canonical program `A183626.P17793019024115659213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183626 (n : ℕ) : ℤ :=
  A183626.P17793019024115659213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A183626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183674.P5950663328750644984

`A001555(n+2)+A001554(n+2)`
-/

namespace A183674.P5950663328750644984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 (n + 2) + A001554 (n + 2)

end

end A183674.P5950663328750644984

noncomputable section

/-- A183674: Number of (n+1) X 2 0..7 arrays with every 2 X 2 subblock summing to 14.

Offset 1, canonical program `A183674.P5950663328750644984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A183674 (n : ℕ) : ℤ :=
  A183674.P5950663328750644984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A183674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183875.P1355878727578495785

`A080247(n)*A130321(n)`
-/

namespace A183875.P1355878727578495785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n * A130321 n

end

end A183875.P1355878727578495785

noncomputable section

/-- A183875: Triangle T(n,k) for A(x)^k=sum(n>=k T(n,k)*x^n), where o.g.f. A(x) satisfies A(x)=(a+b*x*A(x))/(c-d*x*A(x)), a=1,b=2,c=1,d=2.

Offset 1, canonical program `A183875.P1355878727578495785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A183875 (n : ℕ) : ℤ :=
  A183875.P1355878727578495785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A183875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183980.P16686492784855732244

`A183979(n+1)+3`
-/

namespace A183980.P16686492784855732244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + 3

end

end A183980.P16686492784855732244

noncomputable section

/-- A183980: 1/4 the number of (n+1) X 4 binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183980.P16686492784855732244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183980 (n : ℕ) : ℤ :=
  A183980.P16686492784855732244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183985.P17831467711889554897

`A183984(n+1)+72`
-/

namespace A183985.P17831467711889554897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183984 (n + 1) + 72

end

end A183985.P17831467711889554897

noncomputable section

/-- A183985: 1/4 the number of (n+1) X 9 binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183985.P17831467711889554897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183985 (n : ℕ) : ℤ :=
  A183985.P17831467711889554897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A183985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184032.P3266962938891637893

`A184031(n+1)+12`
-/

namespace A184032.P3266962938891637893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184031 (n + 1) + 12

end

end A184032.P3266962938891637893

noncomputable section

/-- A184032: 1/16 the number of (n+1) X 3 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184032.P3266962938891637893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184032 (n : ℕ) : ℤ :=
  A184032.P3266962938891637893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184044.P4683206552624240549

`A183984(n+3)-5`
-/

namespace A184044.P4683206552624240549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183984 (n + 3) - 5

end

end A184044.P4683206552624240549

noncomputable section

/-- A184044: 1/9 the number of (n+1) X 6 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184044.P4683206552624240549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184044 (n : ℕ) : ℤ :=
  A184044.P4683206552624240549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184049.P6454318504092061159

`A074909(A132119(n+1))`
-/

namespace A184049.P6454318504092061159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A132119 (n + 1)).toNat

end

end A184049.P6454318504092061159

noncomputable section

/-- A184049: T(n,k) is the number of order-preserving and order-decreasing partial isometries (of an n-chain) of height k (height of alpha = |Im(alpha)|).

Offset 0, canonical program `A184049.P6454318504092061159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184049 (n : ℕ) : ℤ :=
  A184049.P6454318504092061159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184425.P8595937253418571360

`A259361(A007401(2*(n+1)))+n`
-/

namespace A184425.P8595937253418571360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A007401 (2 * (n + 1))).toNat + (n : ℤ)

end

end A184425.P8595937253418571360

noncomputable section

/-- A184425: Lower s-Wythoff sequence, where s=A000217 (triangular numbers). Complement of A184426.

Offset 1, canonical program `A184425.P8595937253418571360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A184425 (n : ℕ) : ℤ :=
  A184425.P8595937253418571360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A184425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184431.P12849044017549371650

`comp[A109900(n)+A042965(n+1)]`
-/

namespace A184431.P12849044017549371650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184431.P12849044017549371650

noncomputable section

/-- A184431: Lower s-Wythoff sequence, where s=A184431 (eighth-cubes). Complement of A184432.

Offset 1, canonical program `A184431.P12849044017549371650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A184431 (n : ℕ) : ℤ :=
  (A184431.P12849044017549371650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A184431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184585.P1386653981140706094

`floor(A003231(3*n+4)/6)`
-/

namespace A184585.P1386653981140706094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003231 (3 * n + 4) : ℚ) / 6⌋

end

end A184585.P1386653981140706094

noncomputable section

/-- A184585: a(n) = floor(n*s + c*s), where r = sqrt(5), c = 1/3, s = r/(r-1); complement of A184584.

Offset 1, canonical program `A184585.P1386653981140706094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184585 (n : ℕ) : ℤ :=
  A184585.P1386653981140706094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184593.P9834984849118974199

`∑[5-A007652(n+1)]`
-/

namespace A184593.P9834984849118974199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P9834984849118974199

noncomputable section

/-- A184593: 5n - A101306: sum_{i=1..n} the last digit of prime(i).

Offset 1, canonical program `A184593.P9834984849118974199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184593 (n : ℕ) : ℤ :=
  A184593.P9834984849118974199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184658.P12444542043360374571

`A005206(A003622(n+1)+A140397(n+1)-1)`
-/

namespace A184658.P12444542043360374571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003622 (n + 1) + (A140397 (n + 1) - 1)).toNat

end

end A184658.P12444542043360374571

noncomputable section

/-- A184658: floor(nr+h), where r=(1+sqrt(5))/2, h=-1/3; complement of A184659.

Offset 1, canonical program `A184658.P12444542043360374571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7639 terms. -/
def A184658 (n : ℕ) : ℤ :=
  A184658.P12444542043360374571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7639 terms. -/
def A184658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184775.P16636506447541360976

`A049474(p?[A001951(n)])`
-/

namespace A184775.P16636506447541360976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184775.P16636506447541360976

noncomputable section

/-- A184775: Numbers k such that floor(k*sqrt(2)) is prime.

Offset 1, canonical program `A184775.P16636506447541360976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A184775 (n : ℕ) : ℤ :=
  A184775.P16636506447541360976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A184775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184857.P1403224485017277280

`ceil((1-1/e)*p?[A054385(n+1)])`
-/

namespace A184857.P1403224485017277280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - 1 / Real.exp 1) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A184857.P1403224485017277280

noncomputable section

/-- A184857: Numbers k such that floor(k*e/(e-1)) is prime.

Offset 1, canonical program `A184857.P1403224485017277280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A184857 (n : ℕ) : ℤ :=
  A184857.P1403224485017277280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A184857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184858.P6696207604000516288

`comp[A184855(n+1)-1]+1`
-/

namespace A184858.P6696207604000516288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184855 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184858.P6696207604000516288

noncomputable section

/-- A184858: Numbers m such that prime(m) is of the form floor(k*e/(e-1)); complement of A184855.

Offset 1, canonical program `A184858.P6696207604000516288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184858 (n : ℕ) : ℤ :=
  (A184858.P6696207604000516288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184901.P11583843455299283413

`A003231(n+1)+A001961(n+1)`
-/

namespace A184901.P11583843455299283413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) + A001961 (n + 1)

end

end A184901.P11583843455299283413

noncomputable section

/-- A184901: n+floor(ns/r)+floor(nt/r), where r=(1+sqrt(5))/2, s=r+1, t=r+2.

Offset 1, canonical program `A184901.P11583843455299283413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184901 (n : ℕ) : ℤ :=
  A184901.P11583843455299283413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185307.P12380565764827468973

`comp[A075592(n+1)-1]+1`
-/

namespace A185307.P12380565764827468973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185307.P12380565764827468973

noncomputable section

/-- A185307: Numbers not divisible by the number of their distinct prime factors.

Offset 1, canonical program `A185307.P12380565764827468973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185307 (n : ℕ) : ℤ :=
  (A185307.P12380565764827468973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185706.P14095744241948126582

`A001878(A118136(n))`
-/

namespace A185706.P14095744241948126582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A118136 n).toNat

end

end A185706.P14095744241948126582

noncomputable section

/-- A185706: Characteristic function of positive numbers that are primes ending in 3.

Offset 1, canonical program `A185706.P14095744241948126582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185706 (n : ℕ) : ℤ :=
  A185706.P14095744241948126582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185711.P8088876807942369668

`∑[A185705(n+1)]`
-/

namespace A185711.P8088876807942369668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P8088876807942369668

noncomputable section

/-- A185711: a(n) = number of primes <= n that end in 1.

Offset 1, canonical program `A185711.P8088876807942369668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185711 (n : ℕ) : ℤ :=
  A185711.P8088876807942369668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185714.P14230647716207036197

`∑[A001877((n+1)*A151763(n+1)²)]`
-/

namespace A185714.P14230647716207036197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 ((n + 1 : ℤ) * A151763 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P14230647716207036197

noncomputable section

/-- A185714: a(n) = number of primes <= n that end in 7.

Offset 1, canonical program `A185714.P14230647716207036197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714 (n : ℕ) : ℤ :=
  A185714.P14230647716207036197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185782.P9206641103907000175

`A144257(n+1)+A025581(n)`
-/

namespace A185782.P9206641103907000175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) + A025581 n

end

end A185782.P9206641103907000175

noncomputable section

/-- A185782: Weight array of A185780, by antidiagonals.

Offset 1, canonical program `A185782.P9206641103907000175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782 (n : ℕ) : ℤ :=
  A185782.P9206641103907000175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185868.P10486727783938212778

`∑[xor(1, A198954(n))+1]`
-/

namespace A185868.P10486727783938212778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198954 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185868.P10486727783938212778

noncomputable section

/-- A185868: (Odd,odd)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185868.P10486727783938212778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185868 (n : ℕ) : ℤ :=
  A185868.P10486727783938212778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185870.P13540371757050284022

`A185869(n+1)+1`
-/

namespace A185870.P13540371757050284022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1) + 1

end

end A185870.P13540371757050284022

noncomputable section

/-- A185870: (Even,odd)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185870.P13540371757050284022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185870 (n : ℕ) : ℤ :=
  A185870.P13540371757050284022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185879.P7693363345362446651

`lcm(A023532(n)-A198954(n), A280560(n))`
-/

namespace A185879.P7693363345362446651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023532 n - A198954 n) (A280560 n)

end

end A185879.P7693363345362446651

noncomputable section

/-- A185879: Weight array of A185877, by antidiagonals.

Offset 1, canonical program `A185879.P7693363345362446651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185879 (n : ℕ) : ℤ :=
  (A185879.P7693363345362446651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185911.P10711686436472147663

`A127775(n+1)+A073424(n)`
-/

namespace A185911.P10711686436472147663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (n + 1) + A073424 n

end

end A185911.P10711686436472147663

noncomputable section

/-- A185911: Weight array of A185910, by antidiagonals.

Offset 1, canonical program `A185911.P10711686436472147663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185911 (n : ℕ) : ℤ :=
  A185911.P10711686436472147663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185917.P4328663214748278600

`A010054(n+1)+A010054(n)-A003982(n)`
-/

namespace A185917.P4328663214748278600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + (A010054 n - A003982 n)

end

end A185917.P4328663214748278600

noncomputable section

/-- A185917: Weight array of max{n,k}, by antidiagonals.

Offset 1, canonical program `A185917.P4328663214748278600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185917 (n : ℕ) : ℤ :=
  A185917.P4328663214748278600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186039.P9738146870542267959

`(-1)^A186038(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186039.P9738146870542267959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A186038 n : ℤ)

end

end A186039.P9738146870542267959

noncomputable section

/-- A186039: a(n) = (-1)^A186038(n).

Offset 0, canonical program `A186039.P9738146870542267959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186039.P9738146870542267959.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186039.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A186228.P1421286630599041458

`floor(sqrt(Δ[n²]*A003622(2*(n+1))))`
-/

namespace A186228.P1421286630599041458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A003622 (2 * (n + 1)))

end

end A186228.P1421286630599041458

noncomputable section

/-- A186228: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186227.

Offset 1, canonical program `A186228.P1421286630599041458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186228 (n : ℕ) : ℤ :=
  A186228.P1421286630599041458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186290.P8934827223131993448

`A186288(n+1)+char[A251914(n+1)]`
-/

namespace A186290.P8934827223131993448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186288 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186290.P8934827223131993448

noncomputable section

/-- A186290: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186291.

Offset 1, canonical program `A186290.P8934827223131993448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186290 (n : ℕ) : ℤ :=
  A186290.P8934827223131993448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186317.P4690432201935391805

`∑[gcd(2, Δ[A076816(n)])]`
-/

namespace A186317.P4690432201935391805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186317.P4690432201935391805

noncomputable section

/-- A186317: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186318.

Offset 1, canonical program `A186317.P4690432201935391805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A186317 (n : ℕ) : ℤ :=
  (A186317.P4690432201935391805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A186317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186324.P3622620755982322594

`floor((A182778(n+1)+1)/3)`
-/

namespace A186324.P3622620755982322594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182778 (n + 1) + 1 : ℚ) / 3⌋

end

end A186324.P3622620755982322594

noncomputable section

/-- A186324: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186325.

Offset 1, canonical program `A186324.P3622620755982322594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186324 (n : ℕ) : ℤ :=
  A186324.P3622620755982322594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186329.P16704209390700631561

`A186225(Δ[n²])-n`
-/

namespace A186329.P16704209390700631561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186225 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A186329.P16704209390700631561

noncomputable section

/-- A186329: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186328.

Offset 1, canonical program `A186329.P16704209390700631561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186329 (n : ℕ) : ℤ :=
  A186329.P16704209390700631561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A186329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186345.P12100612166486790659

`A186343(n+1)-A036987(A186349(n+1))`
-/

namespace A186345.P12100612166486790659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186343 (n + 1) - A036987 (A186349 (n + 1)).toNat

end

end A186345.P12100612166486790659

noncomputable section

/-- A186345: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186344.

Offset 1, canonical program `A186345.P12100612166486790659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. -/
def A186345 (n : ℕ) : ℤ :=
  A186345.P12100612166486790659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. -/
def A186345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186776.P17009521900512411188

`A004793(n+1)-1`
-/

namespace A186776.P17009521900512411188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) - 1

end

end A186776.P17009521900512411188

noncomputable section

/-- A186776: Stanley Sequence S(0,2).

Offset 1, canonical program `A186776.P17009521900512411188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186776 (n : ℕ) : ℤ :=
  A186776.P17009521900512411188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186971.P6625569853870755489

`A048865(n+1)+A057427(n)+1`
-/

namespace A186971.P6625569853870755489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A057427 n + 1)

end

end A186971.P6625569853870755489

noncomputable section

/-- A186971: Maximal cardinality of a subset of {1, 2, ..., n} containing n and having pairwise coprime elements.

Offset 1, canonical program `A186971.P6625569853870755489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186971 (n : ℕ) : ℤ :=
  A186971.P6625569853870755489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187113.P11109198850881865142

`p?[A034837(10*(n+1))]`
-/

namespace A187113.P11109198850881865142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034837 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187113.P11109198850881865142

noncomputable section

/-- A187113: Primes of the form abcdabcd..abcda.

Offset 1, canonical program `A187113.P11109198850881865142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A187113 (n : ℕ) : ℤ :=
  A187113.P11109198850881865142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A187113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187151.P13703592292862614707

`A186648(n)+A000984(n)`
-/

namespace A187151.P13703592292862614707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186648 n + A000984 n

end

end A187151.P13703592292862614707

noncomputable section

/-- A187151: Number of walks of length n starting at origin and ending in first quadrant on a square lattice.

Offset 0, canonical program `A187151.P13703592292862614707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A187151 (n : ℕ) : ℤ :=
  A187151.P13703592292862614707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A187151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187390.P4348215000714749393

`comp[A187389(n+1)-1]+1`
-/

namespace A187390.P4348215000714749393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187389 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187390.P4348215000714749393

noncomputable section

/-- A187390: a(n) = floor(s*n), where s = 1 + sqrt(7) - sqrt(6); complement of A187389.

Offset 1, canonical program `A187390.P4348215000714749393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187390 (n : ℕ) : ℤ :=
  (A187390.P4348215000714749393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187576.P17089044639270244333

`eq[1, A003842(ceil(xor(1, n)/2))]`
-/

namespace A187576.P17089044639270244333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187576.P17089044639270244333

noncomputable section

/-- A187576: Rank transform of the sequence 2*floor((n-1)/2); complement of A187577.

Offset 1, canonical program `A187576.P17089044639270244333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187576 (n : ℕ) : ℤ :=
  (A187576.P17089044639270244333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187944.P14993375886949776411

`A005614(A123740(n+2)+n)`
-/

namespace A187944.P14993375886949776411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A123740 (n + 2) + (n : ℤ)).toNat

end

end A187944.P14993375886949776411

noncomputable section

/-- A187944: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=3, [ ]=floor.

Offset 1, canonical program `A187944.P14993375886949776411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187944 (n : ℕ) : ℤ :=
  A187944.P14993375886949776411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187946.P6796394097676353133

`A123740(A014675(n)²+n)`
-/

namespace A187946.P6796394097676353133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A014675 n ^ 2 + (n : ℤ)).toNat

end

end A187946.P6796394097676353133

noncomputable section

/-- A187946: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=5, [ ]=floor.

Offset 1, canonical program `A187946.P6796394097676353133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187946 (n : ℕ) : ℤ :=
  A187946.P6796394097676353133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187949.P1867237293283503002

`A003622(A187485(n+1))+1`
-/

namespace A187949.P1867237293283503002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A187485 (n + 1)).toNat + 1

end

end A187949.P1867237293283503002

noncomputable section

/-- A187949: Positions of 0 in A187948; complement of A187953.

Offset 1, canonical program `A187949.P1867237293283503002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187949 (n : ℕ) : ℤ :=
  A187949.P1867237293283503002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187952.P10173740546153633473

`A060145(A008619(n))+Δ[n²]`
-/

namespace A187952.P10173740546153633473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A008619 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187952.P10173740546153633473

noncomputable section

/-- A187952: Positions of 1 in A187950; complement of A187951.

Offset 1, canonical program `A187952.P10173740546153633473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187952 (n : ℕ) : ℤ :=
  A187952.P10173740546153633473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187969.P12336969182246334688

`A159684(2*A144611(n)+n)`
-/

namespace A187969.P12336969182246334688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 * A144611 n + (n : ℤ)).toNat

end

end A187969.P12336969182246334688

noncomputable section

/-- A187969: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A187969.P12336969182246334688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187969 (n : ℕ) : ℤ :=
  A187969.P12336969182246334688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187972.P4602217336362801147

`A187967(n+1)*A187967(n+3)`
-/

namespace A187972.P4602217336362801147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 1) * A187967 (n + 3)

end

end A187972.P4602217336362801147

noncomputable section

/-- A187972: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A187972.P4602217336362801147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187972 (n : ℕ) : ℤ :=
  A187972.P4602217336362801147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188038.P9406731732138092868

`A187967(n-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A188038.P9406731732138092868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A187967 ((n : ℤ) - a (n - 1)).toNat

end

end A188038.P9406731732138092868

noncomputable section

/-- A188038: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(2), k=2, [ ]=floor.

Offset 1, canonical program `A188038.P9406731732138092868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188038 (n : ℕ) : ℤ :=
  A188038.P9406731732138092868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188042.P9269258026017260983

`comp[A187971(n+1)+2]+1`
-/

namespace A188042.P9269258026017260983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188042.P9269258026017260983

noncomputable section

/-- A188042: Positions of 0 in A188041; complement of A188043.

Offset 1, canonical program `A188042.P9269258026017260983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188042 (n : ℕ) : ℤ :=
  (A188042.P9269258026017260983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188053.P997518175731916097

`floor((A053644(n)+A005823(n+1))/2)`
-/

namespace A188053.P997518175731916097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053644 n + A005823 (n + 1) : ℚ) / 2⌋

end

end A188053.P997518175731916097

noncomputable section

/-- A188053: Stanley Sequence S(0,1,4).

Offset 1, canonical program `A188053.P997518175731916097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188053 (n : ℕ) : ℤ :=
  A188053.P997518175731916097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188075.P9684796969811370760

`4*A188069(n+1)-n`
-/

namespace A188075.P9684796969811370760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188069 (n + 1) - (n : ℤ)

end

end A188075.P9684796969811370760

noncomputable section

/-- A188075: Positions of 0 in the zero-one sequence [n*r]-[4*r]-[n*r-4*r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188075.P9684796969811370760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075 (n : ℕ) : ℤ :=
  A188075.P9684796969811370760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188090.P33254598537910454

`A188082(n+1)*A188082(n+5)`
-/

namespace A188090.P33254598537910454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (n + 1) * A188082 (n + 5)

end

end A188090.P33254598537910454

noncomputable section

/-- A188090: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=5, [ ]=floor.

Offset 1, canonical program `A188090.P33254598537910454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A188090 (n : ℕ) : ℤ :=
  A188090.P33254598537910454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A188090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188163.P10543822701885175444

`comp[A087686(n+2)-1]+1`
-/

namespace A188163.P10543822701885175444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188163.P10543822701885175444

noncomputable section

/-- A188163: Smallest m such that A004001(m) = n.

Offset 1, canonical program `A188163.P10543822701885175444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188163 (n : ℕ) : ℤ :=
  (A188163.P10543822701885175444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188189.P7612428391995532335

`A188187(n+1-a(n-1))` with `a(0)=1`
-/

namespace A188189.P7612428391995532335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188187 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A188189.P7612428391995532335

noncomputable section

/-- A188189: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=2, [ ]=floor.

Offset 1, canonical program `A188189.P7612428391995532335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188189 (n : ℕ) : ℤ :=
  A188189.P7612428391995532335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188260.P4642439501067376208

`A339052(A339052(n)+2+n)`
-/

namespace A188260.P4642439501067376208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A339052 n + 2 + (n : ℤ)).toNat

end

end A188260.P4642439501067376208

noncomputable section

/-- A188260: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=3, [ ]=floor.

Offset 1, canonical program `A188260.P4642439501067376208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188260 (n : ℕ) : ℤ :=
  A188260.P4642439501067376208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188291.P4051913689552143111

`char[A188220(n+1)-6]`
-/

namespace A188291.P4051913689552143111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188220 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188291.P4051913689552143111

noncomputable section

/-- A188291: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=5, [ ]=floor.

Offset 1, canonical program `A188291.P4051913689552143111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188291 (n : ℕ) : ℤ :=
  (A188291.P4051913689552143111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188293.P10413451273584708875

`abs(5-A188220(n+1))`
-/

namespace A188293.P10413451273584708875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A188220 (n + 1)|

end

end A188293.P10413451273584708875

noncomputable section

/-- A188293: Positions of 1 in A188291; complement of A188292.

Offset 1, canonical program `A188293.P10413451273584708875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188293 (n : ℕ) : ℤ :=
  A188293.P10413451273584708875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188297.P11306489375432585574

`A144611(A049472(n))`
-/

namespace A188297.P11306489375432585574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A049472 n).toNat

end

end A188297.P11306489375432585574

noncomputable section

/-- A188297: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=2, [ ]=floor.

Offset 1, canonical program `A188297.P11306489375432585574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188297 (n : ℕ) : ℤ :=
  A188297.P11306489375432585574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188298.P12068774585281216890

`A001951(floor(n/2))+n+1`
-/

namespace A188298.P12068774585281216890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 ⌊(n : ℚ) / 2⌋.toNat + (n + 1 : ℤ)

end

end A188298.P12068774585281216890

noncomputable section

/-- A188298: Positions of 0 in A188297; complement of A188299.

Offset 1, canonical program `A188298.P12068774585281216890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188298 (n : ℕ) : ℤ :=
  A188298.P12068774585281216890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188373.P2149775903743235880

`A110654(n)+3*A188040(n+1)`
-/

namespace A188373.P2149775903743235880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + 3 * A188040 (n + 1)

end

end A188373.P2149775903743235880

noncomputable section

/-- A188373: Positions of 1 in A188371; complement of A188372.

Offset 1, canonical program `A188373.P2149775903743235880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188373 (n : ℕ) : ℤ :=
  A188373.P2149775903743235880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188396.P9231887301551428425

`∑[4*A188295(n+1)+3]`
-/

namespace A188396.P9231887301551428425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188295 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188396.P9231887301551428425

noncomputable section

/-- A188396: Positions of 0 in A188395; complement of A188397.

Offset 1, canonical program `A188396.P9231887301551428425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188396 (n : ℕ) : ℤ :=
  A188396.P9231887301551428425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188469.P6655427290535897228

`floor(ϕ*A188013(n+1))`
-/

namespace A188469.P6655427290535897228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A188013 (n + 1) : ℝ)⌋

end

end A188469.P6655427290535897228

noncomputable section

/-- A188469: Positions of 1 in A188467; complement of A188468.

Offset 1, canonical program `A188469.P6655427290535897228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188469 (n : ℕ) : ℤ :=
  A188469.P6655427290535897228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188557.P4941890526069849708

`A188556(n+1)+A008859(n)`
-/

namespace A188557.P4941890526069849708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) + A008859 n

end

end A188557.P4941890526069849708

noncomputable section

/-- A188557: Number of 6 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188557.P4941890526069849708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557 (n : ℕ) : ℤ :=
  A188557.P4941890526069849708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188860.P1930130511050451117

`A081113(round(sqrt(n²+1)))+floor(3^(n-1))`
-/

namespace A188860.P1930130511050451117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A188860.P1930130511050451117

noncomputable section

/-- A188860: Number of n X n binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

Offset 0, canonical program `A188860.P1930130511050451117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860 (n : ℕ) : ℤ :=
  A188860.P1930130511050451117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188902.P4940289484515000086

`A030065(A131089(n+2))`
-/

namespace A188902.P4940289484515000086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A131089 (n + 2)).toNat

end

end A188902.P4940289484515000086

noncomputable section

/-- A188902: Numerator of the base n logarithm of the product of the divisors of n.

Offset 2, canonical program `A188902.P4940289484515000086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188902 (n : ℕ) : ℤ :=
  A188902.P4940289484515000086.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189012.P6369404251198477735

`eq[0, A189011(n+1)]+1`
-/

namespace A189012.P6369404251198477735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189012.P6369404251198477735

noncomputable section

/-- A189012: Positions of 0 in A189011; complement of A189013.

Offset 1, canonical program `A189012.P6369404251198477735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189012 (n : ℕ) : ℤ :=
  (A189012.P6369404251198477735.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189362.P16228109364574491910

`A277644(n+1)+A003152(n+1)`
-/

namespace A189362.P16228109364574491910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + A003152 (n + 1)

end

end A189362.P16228109364574491910

noncomputable section

/-- A189362: a(n) = n + floor(n*r/s) + floor(n*t/s); r=1, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189362.P16228109364574491910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189362 (n : ℕ) : ℤ :=
  A189362.P16228109364574491910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189363.P18061180172451342699

`A184808(n+1)+A097337(n+1)`
-/

namespace A189363.P18061180172451342699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A097337 (n + 1)

end

end A189363.P18061180172451342699

noncomputable section

/-- A189363: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189363.P18061180172451342699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189363 (n : ℕ) : ℤ :=
  A189363.P18061180172451342699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189379.P14150552323631578711

`∑[A006340(n)]+n`
-/

namespace A189379.P14150552323631578711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A189379.P14150552323631578711

noncomputable section

/-- A189379: n+[nr/t]+[ns/t]; r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

Offset 1, canonical program `A189379.P14150552323631578711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189379 (n : ℕ) : ℤ :=
  A189379.P14150552323631578711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189383.P3171606788887366574

`A097337(n+1)+A003152(n+1)`
-/

namespace A189383.P3171606788887366574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + A003152 (n + 1)

end

end A189383.P3171606788887366574

noncomputable section

/-- A189383: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1/sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189383.P3171606788887366574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189383 (n : ℕ) : ℤ :=
  A189383.P3171606788887366574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189384.P17768416561206798456

`A171974(n+1)+A003151(n+1)`
-/

namespace A189384.P17768416561206798456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + A003151 (n + 1)

end

end A189384.P17768416561206798456

noncomputable section

/-- A189384: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1/sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189384.P17768416561206798456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189384 (n : ℕ) : ℤ :=
  A189384.P17768416561206798456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189386.P11089141247144542646

`A000027(A097337(n+1)+A003151(n+1))`
-/

namespace A189386.P11089141247144542646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A097337 (n + 1) + A003151 (n + 1)).toNat

end

end A189386.P11089141247144542646

noncomputable section

/-- A189386: a(n) = n+[ns/r]+[nt/r]; r=1, s=sqrt(2), t=1/sqrt(3), []=floor.

Offset 1, canonical program `A189386.P11089141247144542646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189386 (n : ℕ) : ℤ :=
  A189386.P11089141247144542646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189387.P8714726190965222879

`A004526(A171974(n+1))+A003152(n+1)`
-/

namespace A189387.P8714726190965222879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171974 (n + 1)).toNat + A003152 (n + 1)

end

end A189387.P8714726190965222879

noncomputable section

/-- A189387: a(n) = n+[nr/s]+[nt/s]; r=1, s=sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189387.P8714726190965222879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189387 (n : ℕ) : ℤ :=
  A189387.P8714726190965222879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189388.P12396350069555707353

`A000027(A054088(n+1)+A022840(n+1))`
-/

namespace A189388.P12396350069555707353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A054088 (n + 1) + A022840 (n + 1)).toNat

end

end A189388.P12396350069555707353

noncomputable section

/-- A189388: a(n) = n+[nr/t]+[ns/t]; r=1, s=sqrt(2), t=1/sqrt(3).

Offset 1, canonical program `A189388.P12396350069555707353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189388 (n : ℕ) : ℤ :=
  A189388.P12396350069555707353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189397.P15555838332013234681

`A186539(n+1)+A004526(A171974(n+1))`
-/

namespace A189397.P15555838332013234681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A004526 (A171974 (n + 1)).toNat

end

end A189397.P15555838332013234681

noncomputable section

/-- A189397: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1/sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189397.P15555838332013234681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189397 (n : ℕ) : ℤ :=
  A189397.P15555838332013234681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189406.P16545699037991193201

`A000027(A003512(n+1)+A188070(n+1)+n)`
-/

namespace A189406.P16545699037991193201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003512 (n + 1) + (A188070 (n + 1) + (n : ℤ))).toNat

end

end A189406.P16545699037991193201

noncomputable section

/-- A189406: n+[nr/s]+[nt/s]; r=1, s=-1+sqrt(3), t=1+sqrt(3).

Offset 1, canonical program `A189406.P16545699037991193201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189406 (n : ℕ) : ℤ :=
  A189406.P16545699037991193201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189462.P12762323558477115791

`floor((A003231(n+1)+n)/2)`
-/

namespace A189462.P12762323558477115791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003231 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A189462.P12762323558477115791

noncomputable section

/-- A189462: n+[nr/t]+[ns/t]; r=2, s=sqrt(5), t=1+sqrt(5).

Offset 1, canonical program `A189462.P12762323558477115791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189462 (n : ℕ) : ℤ :=
  A189462.P12762323558477115791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189520.P1730264741793748391

`A189403(n+1)+2*(n+1)`
-/

namespace A189520.P1730264741793748391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189520.P1730264741793748391

noncomputable section

/-- A189520: n+[nr/t]+[ns/t]; r=1, s=1/e, t=1/(e+1).

Offset 1, canonical program `A189520.P1730264741793748391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520 (n : ℕ) : ℤ :=
  A189520.P1730264741793748391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189521.P17554504455868007450

`A054385(n+1)+∑[char[A000572(n+1)]]`
-/

namespace A189521.P17554504455868007450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189521.P17554504455868007450

noncomputable section

/-- A189521: n+[ns/r]+[nt/r]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189521.P17554504455868007450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189521 (n : ℕ) : ℤ :=
  A189521.P17554504455868007450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189523.P484942665720503072

`A054385(2*(n+1))+A000572(n+1)`
-/

namespace A189523.P484942665720503072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1)) + A000572 (n + 1)

end

end A189523.P484942665720503072

noncomputable section

/-- A189523: n+[nr/t]+[ns/t]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189523.P484942665720503072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523 (n : ℕ) : ℤ :=
  A189523.P484942665720503072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189573.P16890274854496627003

`round((A001951(n)+2*(n+1))/2)`
-/

namespace A189573.P16890274854496627003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001951 n + (2 * (n + 1) : ℤ) : ℚ) / 2)

end

end A189573.P16890274854496627003

noncomputable section

/-- A189573: Positions of 0 in A189572; complement of A080652 (conjectured).

Offset 1, canonical program `A189573.P16890274854496627003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189573 (n : ℕ) : ℤ :=
  A189573.P16890274854496627003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189640.P14910625713861930897

`A080846(a(a(n-1))+n)` with `a(0)=0`
-/

namespace A189640.P14910625713861930897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080846 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A189640.P14910625713861930897

noncomputable section

/-- A189640: Fixed point of the morphism 0->001, 1->101.

Offset 1, canonical program `A189640.P14910625713861930897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640 (n : ℕ) : ℤ :=
  A189640.P14910625713861930897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189658.P15755839361929138990

`record[A138950(A006047(n))+n]`
-/

namespace A189658.P15755839361929138990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (A006047 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189658.P15755839361929138990

noncomputable section

/-- A189658: Positions of 0 in A064990; complement of A189659.

Offset 1, canonical program `A189658.P15755839361929138990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A189658 (n : ℕ) : ℤ :=
  A189658.P15755839361929138990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A189658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189673.P730405193398399512

`a(1-A080846(n))` with `a(0)=0, a(1)=1`
-/

namespace A189673.P730405193398399512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (1 - A080846 n).toNat

end

end A189673.P730405193398399512

noncomputable section

/-- A189673: Fixed point of the morphism 0->010, 1->110.

Offset 1, canonical program `A189673.P730405193398399512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189673 (n : ℕ) : ℤ :=
  (A189673.P730405193398399512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189673.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189940.P15295735568782816812

`A162970(n+1)+A013989(n)`
-/

namespace A189940.P15295735568782816812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162970 (n + 1) + A013989 n

end

end A189940.P15295735568782816812

noncomputable section

/-- A189940: Number of connected components in all simple labeled graphs with n nodes having degrees at most one.

Offset 1, canonical program `A189940.P15295735568782816812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A189940 (n : ℕ) : ℤ :=
  A189940.P15295735568782816812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A189940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190156.P8773029294484185276

`A128720(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A190156.P8773029294484185276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128720 (n + 1) - 2 * a (n - 1)

end

end A190156.P8773029294484185276

noncomputable section

/-- A190156: Expansion of (1-x-3*x^2-sqrt(1-2*x-5*x^2+2*x^3+x^4))/(2*x^3*(1+2*x)).

Offset 0, canonical program `A190156.P8773029294484185276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A190156 (n : ℕ) : ℤ :=
  A190156.P8773029294484185276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A190156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190206.P8511503827891759838

`comp[A190205(n+1)-1]+1`
-/

namespace A190206.P8511503827891759838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190205 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190206.P8511503827891759838

noncomputable section

/-- A190206: Positions of 1 in A190204; complement of A190205.

Offset 1, canonical program `A190206.P8511503827891759838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190206 (n : ℕ) : ℤ :=
  (A190206.P8511503827891759838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190209.P6340617711522481792

`comp[A190208(n+1)-1]+1`
-/

namespace A190209.P6340617711522481792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190208 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190209.P6340617711522481792

noncomputable section

/-- A190209: Positions of 1 in A190207; complement of A190208.

Offset 1, canonical program `A190209.P6340617711522481792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190209 (n : ℕ) : ℤ :=
  (A190209.P6340617711522481792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190229.P5353473444345810783

`comp[A190228(n+1)-1]+1`
-/

namespace A190229.P5353473444345810783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190228 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190229.P5353473444345810783

noncomputable section

/-- A190229: Positions of 1 in A190227; complement of A190228.

Offset 1, canonical program `A190229.P5353473444345810783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190229 (n : ℕ) : ℤ :=
  (A190229.P5353473444345810783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190248.P6919742512996183991

`A004938(n+1)-A003623(n+1)`
-/

namespace A190248.P6919742512996183991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (n + 1) - A003623 (n + 1)

end

end A190248.P6919742512996183991

noncomputable section

/-- A190248: a(n) = [nu+nv+nw]-[nu]-[nv]-[nw], where u=(1+sqrt(5))/2, v=u^2, w=u^3, []=floor.

Offset 1, canonical program `A190248.P6919742512996183991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190248 (n : ℕ) : ℤ :=
  A190248.P6919742512996183991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190321.P11912397114291218012

`a(n%A048760(n))+1` with `a(0)=0`
-/

namespace A190321.P11912397114291218012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (n : ℤ) (A048760 n)).toNat + 1

end

end A190321.P11912397114291218012

noncomputable section

/-- A190321: Number of nonzero digits when writing n in base where place values are squares, cf. A007961.

Offset 0, canonical program `A190321.P11912397114291218012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190321 (n : ℕ) : ℤ :=
  (A190321.P11912397114291218012.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190335.P8871768036239732935

`floor(A187971(n+1)/2)`
-/

namespace A190335.P8871768036239732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187971 (n + 1) : ℚ) / 2⌋

end

end A190335.P8871768036239732935

noncomputable section

/-- A190335: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sqrt(2), t=1/s.

Offset 1, canonical program `A190335.P8871768036239732935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190335 (n : ℕ) : ℤ :=
  A190335.P8871768036239732935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190372.P2412013710428799699

`A189461(2*(n+1))+A005206(n)`
-/

namespace A190372.P2412013710428799699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189461 (2 * (n + 1)) + A005206 n

end

end A190372.P2412013710428799699

noncomputable section

/-- A190372: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r]; r=sin(Pi/5), s=1/r, t=sin(2*Pi/5), u=1/t.

Offset 1, canonical program `A190372.P2412013710428799699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190372 (n : ℕ) : ℤ :=
  A190372.P2412013710428799699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190425.P1676898405664856003

`C(2*n, n)*A046899(A007590(n))`
-/

namespace A190425.P1676898405664856003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A046899 (A007590 n).toNat

end

end A190425.P1676898405664856003

noncomputable section

/-- A190425: Number of one-sided prudent walks from (0,0) to (n,n), with floor(n/2)+n east steps, floor(n/2) west steps and n north steps.

Offset 0, canonical program `A190425.P1676898405664856003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A190425 (n : ℕ) : ℤ :=
  A190425.P1676898405664856003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A190425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190437.P13908445357307008917

`eq[0, A190436(A028310(n))]`
-/

namespace A190437.P13908445357307008917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190437.P13908445357307008917

noncomputable section

/-- A190437: Positions of 0 in A190436.

Offset 1, canonical program `A190437.P13908445357307008917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A190437 (n : ℕ) : ℤ :=
  (A190437.P13908445357307008917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A190437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190438.P5492144203154848530

`eq[1, A190436(A028310(n))]`
-/

namespace A190438.P5492144203154848530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P5492144203154848530

noncomputable section

/-- A190438: Positions of 1 in A190436.

Offset 1, canonical program `A190438.P5492144203154848530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A190438 (n : ℕ) : ℤ :=
  (A190438.P5492144203154848530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. -/
def A190438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190440.P4697104139142966514

`3-A189935(n+1)%4`
-/

namespace A190440.P4697104139142966514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A189935 (n + 1)) 4

end

end A190440.P4697104139142966514

noncomputable section

/-- A190440: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,0) and []=floor.

Offset 1, canonical program `A190440.P4697104139142966514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190440 (n : ℕ) : ℤ :=
  A190440.P4697104139142966514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190447.P2203967122028496358

`eq[1, A190445(n+1)]+1`
-/

namespace A190447.P2203967122028496358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190447.P2203967122028496358

noncomputable section

/-- A190447: Positions of 1 in A190445.

Offset 1, canonical program `A190447.P2203967122028496358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190447 (n : ℕ) : ℤ :=
  (A190447.P2203967122028496358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190448.P14897104130546086455

`eq[2, A190445(n+1)]+1`
-/

namespace A190448.P14897104130546086455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190448.P14897104130546086455

noncomputable section

/-- A190448: Positions of 2 in A190445.

Offset 1, canonical program `A190448.P14897104130546086455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190448 (n : ℕ) : ℤ :=
  (A190448.P14897104130546086455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A190448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190449.P920406239164713884

`eq[3, A190445(n+1)]+1`
-/

namespace A190449.P920406239164713884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190449.P920406239164713884

noncomputable section

/-- A190449: Positions of 3 in A190445.

Offset 1, canonical program `A190449.P920406239164713884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190449 (n : ℕ) : ℤ :=
  (A190449.P920406239164713884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190451.P3213970450733782130

`A003622(4*n+6)%(A003622(n+1)+2)`
-/

namespace A190451.P3213970450733782130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (4 * n + 6)) (A003622 (n + 1) + 2)

end

end A190451.P3213970450733782130

noncomputable section

/-- A190451: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,2) and []=floor.

Offset 1, canonical program `A190451.P3213970450733782130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A190451 (n : ℕ) : ℤ :=
  A190451.P3213970450733782130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A190451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190485.P2994477708944207843

`∪[A086377(n+1), A186222(n+1)]`
-/

namespace A190485.P2994477708944207843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190485.P2994477708944207843

noncomputable section

/-- A190485: Positions of 1 in A190483.

Offset 1, canonical program `A190485.P2994477708944207843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190485 (n : ℕ) : ℤ :=
  (A190485.P2994477708944207843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190490.P4746224311155637002

`∩[A003151(n+1), A190247(n+1)]`
-/

namespace A190490.P4746224311155637002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190490.P4746224311155637002

noncomputable section

/-- A190490: Positions of 2 in A190487.

Offset 1, canonical program `A190490.P4746224311155637002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190490 (n : ℕ) : ℤ :=
  (A190490.P4746224311155637002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A190490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190498.P8014090296767776643

`eq[1, A190496(n+1)]+1`
-/

namespace A190498.P8014090296767776643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190498.P8014090296767776643

noncomputable section

/-- A190498: Positions of 1 in A190496.

Offset 1, canonical program `A190498.P8014090296767776643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190498 (n : ℕ) : ℤ :=
  (A190498.P8014090296767776643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190499.P17084223217155803669

`eq[2, A190496(n+1)]+1`
-/

namespace A190499.P17084223217155803669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190499.P17084223217155803669

noncomputable section

/-- A190499: Positions of 2 in A190496.

Offset 1, canonical program `A190499.P17084223217155803669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190499 (n : ℕ) : ℤ :=
  (A190499.P17084223217155803669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190500.P16667843591126288485

`lt[2, A190496(n+1)]+1`
-/

namespace A190500.P16667843591126288485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190500.P16667843591126288485

noncomputable section

/-- A190500: Positions of 3 in A190496.

Offset 1, canonical program `A190500.P16667843591126288485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A190500 (n : ℕ) : ℤ :=
  (A190500.P16667843591126288485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A190500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190550.P14132498748582534910

`lt[A190549(n+1), 1]+1`
-/

namespace A190550.P14132498748582534910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190550.P14132498748582534910

noncomputable section

/-- A190550: Positions of 0 in A190549.

Offset 1, canonical program `A190550.P14132498748582534910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190550 (n : ℕ) : ℤ :=
  (A190550.P14132498748582534910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190551.P17730107267419017797

`eq[1, A190549(n+1)]+1`
-/

namespace A190551.P17730107267419017797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190551.P17730107267419017797

noncomputable section

/-- A190551: Positions of 1 in A190549.

Offset 1, canonical program `A190551.P17730107267419017797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190551 (n : ℕ) : ℤ :=
  (A190551.P17730107267419017797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190552.P8550911056888575151

`eq[2, A190549(n+1)]+1`
-/

namespace A190552.P8550911056888575151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190552.P8550911056888575151

noncomputable section

/-- A190552: Positions of 2 in A190549.

Offset 1, canonical program `A190552.P8550911056888575151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190552 (n : ℕ) : ℤ :=
  (A190552.P8550911056888575151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190553.P15220881830285851837

`eq[3, A190549(n+1)]+1`
-/

namespace A190553.P15220881830285851837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190553.P15220881830285851837

noncomputable section

/-- A190553: Positions of 3 in A190549.

Offset 1, canonical program `A190553.P15220881830285851837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190553 (n : ℕ) : ℤ :=
  (A190553.P15220881830285851837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190676.P5964065822159639979

`A080425(A195181(n+1))`
-/

namespace A190676.P5964065822159639979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A195181 (n + 1)).toNat

end

end A190676.P5964065822159639979

noncomputable section

/-- A190676: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,0) and [ ]=floor.

Offset 1, canonical program `A190676.P5964065822159639979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190676 (n : ℕ) : ℤ :=
  A190676.P5964065822159639979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190683.P16248676480014471006

`A003512(A016777(n+1))%A188069(n+2)`
-/

namespace A190683.P16248676480014471006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003512 (A016777 (n + 1)).toNat) (A188069 (n + 2))

end

end A190683.P16248676480014471006

noncomputable section

/-- A190683: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,1) and [ ]=floor.

Offset 1, canonical program `A190683.P16248676480014471006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683 (n : ℕ) : ℤ :=
  A190683.P16248676480014471006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190699.P1703073338234724298

`A003512(A190694(n+1))`
-/

namespace A190699.P1703073338234724298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190694 (n + 1)).toNat

end

end A190699.P1703073338234724298

noncomputable section

/-- A190699: Positions of 0 in A190698.

Offset 1, canonical program `A190699.P1703073338234724298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190699 (n : ℕ) : ℤ :=
  A190699.P1703073338234724298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190706.P9832586445051373020

`eq[1, A190704(n+1)]+1`
-/

namespace A190706.P9832586445051373020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190706.P9832586445051373020

noncomputable section

/-- A190706: Positions of 1 in A190704.

Offset 1, canonical program `A190706.P9832586445051373020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190706 (n : ℕ) : ℤ :=
  (A190706.P9832586445051373020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190707.P3032653202596194504

`eq[2, A190704(n+1)]+1`
-/

namespace A190707.P3032653202596194504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190707.P3032653202596194504

noncomputable section

/-- A190707: Positions of 2 in A190704.

Offset 1, canonical program `A190707.P3032653202596194504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190707 (n : ℕ) : ℤ :=
  (A190707.P3032653202596194504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190709.P10181155941524366987

`eq[4, A190704(A000007(n)+n)]`
-/

namespace A190709.P10181155941524366987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190709.P10181155941524366987

noncomputable section

/-- A190709: Positions of 4 in A190704.

Offset 1, canonical program `A190709.P10181155941524366987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A190709 (n : ℕ) : ℤ :=
  (A190709.P10181155941524366987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A190709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190763.P13290202251909608768

`ceil(sqrt(2)*A190486(n+1))`
-/

namespace A190763.P13290202251909608768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A190486 (n + 1) : ℝ)⌉

end

end A190763.P13290202251909608768

noncomputable section

/-- A190763: Positions of 0 in A190762.

Offset 1, canonical program `A190763.P13290202251909608768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190763 (n : ℕ) : ℤ :=
  A190763.P13290202251909608768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190772.P9944616738065135873

`eq[1, A190770(n+1)]+1`
-/

namespace A190772.P9944616738065135873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190772.P9944616738065135873

noncomputable section

/-- A190772: Positions of 1 in A190770.

Offset 1, canonical program `A190772.P9944616738065135873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190772 (n : ℕ) : ℤ :=
  (A190772.P9944616738065135873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A190772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190773.P3973003824351940995

`eq[2, A190770(n+1)]+1`
-/

namespace A190773.P3973003824351940995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190773.P3973003824351940995

noncomputable section

/-- A190773: Positions of 2 in A190770.

Offset 1, canonical program `A190773.P3973003824351940995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190773 (n : ℕ) : ℤ :=
  (A190773.P3973003824351940995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190777.P13810788968244427247

`eq[1, A190775(n+1)]+1`
-/

namespace A190777.P13810788968244427247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190777.P13810788968244427247

noncomputable section

/-- A190777: Positions of 1 in A190775.

Offset 1, canonical program `A190777.P13810788968244427247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190777 (n : ℕ) : ℤ :=
  (A190777.P13810788968244427247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190778.P17050714014051518169

`eq[2, A190775(n+1)]+1`
-/

namespace A190778.P17050714014051518169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190778.P17050714014051518169

noncomputable section

/-- A190778: Positions of 2 in A190775.

Offset 1, canonical program `A190778.P17050714014051518169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190778 (n : ℕ) : ℤ :=
  (A190778.P17050714014051518169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191313.P12692184345472457997

`∑[A226881(n)]`
-/

namespace A191313.P12692184345472457997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191313.P12692184345472457997

noncomputable section

/-- A191313: Sum of the abscissae of the first returns to the horizontal axis (assumed to be 0 if there are no such returns) in all dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191313.P12692184345472457997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191313 (n : ℕ) : ℤ :=
  A191313.P12692184345472457997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191337.P12212658348506033970

`eq[0, A191336(n+2)]+2`
-/

namespace A191337.P12212658348506033970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A191337.P12212658348506033970

noncomputable section

/-- A191337: Positions of 0 in A191336.

Offset 1, canonical program `A191337.P12212658348506033970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A191337 (n : ℕ) : ℤ :=
  (A191337.P12212658348506033970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A191337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191338.P15959979912852935596

`eq[1, A191336(n+1)]+1`
-/

namespace A191338.P15959979912852935596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191338.P15959979912852935596

noncomputable section

/-- A191338: Positions of 1 in A191336.

Offset 1, canonical program `A191338.P15959979912852935596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191338 (n : ℕ) : ℤ :=
  (A191338.P15959979912852935596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191339.P16789462610040793669

`lt[1, A191336(n+1)]+1`
-/

namespace A191339.P16789462610040793669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191339.P16789462610040793669

noncomputable section

/-- A191339: Positions of 2 in A191336.

Offset 1, canonical program `A191339.P16789462610040793669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A191339 (n : ℕ) : ℤ :=
  (A191339.P16789462610040793669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A191339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191380.P14959086145490964009

`eq[0, A191340(n+1)]+1`
-/

namespace A191380.P14959086145490964009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191380.P14959086145490964009

noncomputable section

/-- A191380: Positions of 0 in A191340.

Offset 1, canonical program `A191380.P14959086145490964009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A191380 (n : ℕ) : ℤ :=
  (A191380.P14959086145490964009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A191380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191381.P10898136946303278485

`eq[1, A191340(n+1)]+1`
-/

namespace A191381.P10898136946303278485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191381.P10898136946303278485

noncomputable section

/-- A191381: Positions of 1 in A191340.

Offset 1, canonical program `A191381.P10898136946303278485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191381 (n : ℕ) : ℤ :=
  (A191381.P10898136946303278485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191382.P1751492391094146324

`lt[1, A191340(n+1)]+1`
-/

namespace A191382.P1751492391094146324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191382.P1751492391094146324

noncomputable section

/-- A191382: Positions of 2 in A191340.

Offset 1, canonical program `A191382.P1751492391094146324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A191382 (n : ℕ) : ℤ :=
  (A191382.P1751492391094146324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A191382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191389.P9489773032743378258

`A011782(n)-Δ[A050168(n)]`
-/

namespace A191389.P9489773032743378258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (f1 (n + 1) - f1 n)

end

end A191389.P9489773032743378258

noncomputable section

/-- A191389: Number of valleys at level 0 in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191389.P9489773032743378258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191389 (n : ℕ) : ℤ :=
  A191389.P9489773032743378258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A191389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191394.P2196182716254979201

`A000975(n)-A174783(n)`
-/

namespace A191394.P2196182716254979201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A174783 n

end

end A191394.P2196182716254979201

noncomputable section

/-- A191394: Number of base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights).

Offset 0, canonical program `A191394.P2196182716254979201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191394 (n : ℕ) : ℤ :=
  A191394.P2196182716254979201.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191404.P15782696883447306047

`A005614(n+1)+A060143(n)+A003622(n+2)`
-/

namespace A191404.P15782696883447306047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (n + 1) + (A060143 n + A003622 (n + 2))

end

end A191404.P15782696883447306047

noncomputable section

/-- A191404: a(n) = A000201(n) + A000201(n+3).

Offset 0, canonical program `A191404.P15782696883447306047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191404 (n : ℕ) : ℤ :=
  A191404.P15782696883447306047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191452.P5218394825556345450

`A042968(A002260(n+1))*A262616(n)`
-/

namespace A191452.P5218394825556345450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A002260 (n + 1)).toNat * A262616 n

end

end A191452.P5218394825556345450

noncomputable section

/-- A191452: Dispersion of (4,8,12,16,...), by antidiagonals.

Offset 1, canonical program `A191452.P5218394825556345450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191452 (n : ℕ) : ℤ :=
  A191452.P5218394825556345450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191532.P6208350236830388762

`A026741(val(A055236(n), 2))`
-/

namespace A191532.P6208350236830388762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.valuation (A055236 n).toNat 2)

end

end A191532.P6208350236830388762

noncomputable section

/-- A191532: Triangle T(n,k) read by rows: T(n,n) = 2n+1, T(n,k)=k for k<n.

Offset 0, canonical program `A191532.P6208350236830388762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191532 (n : ℕ) : ℤ :=
  A191532.P6208350236830388762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191583.P1361937462763374416

`∑{p}[A001043(n+1), #]`
-/

namespace A191583.P1361937462763374416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P1361937462763374416

noncomputable section

/-- A191583: Sum of the distinct prime divisors of prime(n) + prime(n+1).

Offset 1, canonical program `A191583.P1361937462763374416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191583 (n : ℕ) : ℤ :=
  (A191583.P1361937462763374416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192082.P13159562364668076303

`a(A038554(n))` with `a(0)=0, a(1)=1`
-/

namespace A192082.P13159562364668076303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A038554 n).toNat

end

end A192082.P13159562364668076303

noncomputable section

/-- A192082: Let f(n) = A038554(n) + delta(n,1), where delta is the Kronecker symbol. Then a(n) is the fixed point that arises from iterating f (a(n) = 0 or 1).

Offset 0, canonical program `A192082.P13159562364668076303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192082 (n : ℕ) : ℤ :=
  (A192082.P13159562364668076303.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192112.P8461457790815633047

`record[A137688(n)-A130321(n)²]`
-/

namespace A192112.P8461457790815633047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A130321 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192112.P8461457790815633047

noncomputable section

/-- A192112: Monotonic ordering of nonnegative differences 2^i-4^j, for 40>=i>=0, j>=0.

Offset 1, canonical program `A192112.P8461457790815633047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192112 (n : ℕ) : ℤ :=
  A192112.P8461457790815633047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192120.P16297704775261001352

`record[A137688(n)-A001018(A025581(n))]`
-/

namespace A192120.P16297704775261001352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A001018 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192120.P16297704775261001352

noncomputable section

/-- A192120: Monotonic ordering of nonnegative differences 2^i - 8^j, for 40 >=i >= 0, j >= 0.

Offset 1, canonical program `A192120.P16297704775261001352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A192120 (n : ℕ) : ℤ :=
  A192120.P16297704775261001352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A192120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192157.P15765879569040438431

`record[A098355(n)-A140303(n)²]`
-/

namespace A192157.P15765879569040438431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n - A140303 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192157.P15765879569040438431

noncomputable section

/-- A192157: Monotonic ordering of nonnegative differences 3^i-9^j, for 40>=i>=0, j>=0.

Offset 1, canonical program `A192157.P15765879569040438431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192157 (n : ℕ) : ℤ :=
  A192157.P15765879569040438431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A192157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192158.P10446398768701529999

`record[A140303(A003056(n))²-A140303(n)]`
-/

namespace A192158.P10446398768701529999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (A003056 n).toNat ^ 2 - A140303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192158.P10446398768701529999

noncomputable section

/-- A192158: Monotonic ordering of nonnegative differences 9^i-3^j, for 40>= i>=0, j>=0.

Offset 1, canonical program `A192158.P10446398768701529999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A192158 (n : ℕ) : ℤ :=
  A192158.P10446398768701529999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A192158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192167.P5054254474188894599

`record[A137688(n)²-A001018(A025581(n))]`
-/

namespace A192167.P5054254474188894599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 - A001018 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192167.P5054254474188894599

noncomputable section

/-- A192167: Monotonic ordering of nonnegative differences 4^i-8^j, for 40>= i>=0, j>=0.

Offset 1, canonical program `A192167.P5054254474188894599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A192167 (n : ℕ) : ℤ :=
  A192167.P5054254474188894599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A192167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192245.P7575187329844493871

`abs(∑[(A001611(n)-1)*∑[n+1]])`
-/

namespace A192245.P7575187329844493871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192245.P7575187329844493871

noncomputable section

/-- A192245: 1-sequence of reduction of triangular number sequence by x^2 -> x+1.

Offset 1, canonical program `A192245.P7575187329844493871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A192245 (n : ℕ) : ℤ :=
  A192245.P7575187329844493871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A192245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192249.P14476901547365329932

`5*A192069(n+1)`
-/

namespace A192249.P14476901547365329932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A192069 (n + 1)

end

end A192249.P14476901547365329932

noncomputable section

/-- A192249: 1-sequence of reduction of binomial coefficient sequence B(n,4)=A000332 by x^2 -> x+1.

Offset 1, canonical program `A192249.P14476901547365329932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192249 (n : ℕ) : ℤ :=
  A192249.P14476901547365329932.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192251.P14492476938057793827

`2*A192070(n+1)`
-/

namespace A192251.P14492476938057793827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192070 (n + 1)

end

end A192251.P14492476938057793827

noncomputable section

/-- A192251: 1-sequence of reduction of central binomial coefficient sequence by x^2 -> x+1.

Offset 1, canonical program `A192251.P14492476938057793827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192251 (n : ℕ) : ℤ :=
  A192251.P14492476938057793827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192070, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192257.P6952243731285704318

`abs(∑[(A157725(n)-2)*(n+1)^3])`
-/

namespace A192257.P6952243731285704318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A192257.P6952243731285704318

noncomputable section

/-- A192257: 1-sequence of reduction of (n^3) by x^2 -> x+1.

Offset 1, canonical program `A192257.P6952243731285704318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A192257 (n : ℕ) : ℤ :=
  A192257.P6952243731285704318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A192257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192312.P7920549663961214394

`A178525(n+1)+∑[A045925(n)]`
-/

namespace A192312.P7920549663961214394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178525 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192312.P7920549663961214394

noncomputable section

/-- A192312: 1-sequence of reduction of (3n-2) by x^2 -> x+1.

Offset 1, canonical program `A192312.P7920549663961214394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192312 (n : ℕ) : ℤ :=
  A192312.P7920549663961214394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192470.P11247596947859352099

`A192469(n+1)/2`
-/

namespace A192470.P11247596947859352099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192469 (n + 1) : ℚ) / 2

end

end A192470.P11247596947859352099

noncomputable section

/-- A192470: (A192469)/2.

Offset 1, canonical program `A192470.P11247596947859352099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192470.P11247596947859352099.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A192470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192471.P287865650485884428

`A087124(n)+A055588(n)`
-/

namespace A192471.P287865650485884428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n + A055588 n

end

end A192471.P287865650485884428

noncomputable section

/-- A192471: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+1).

Offset 1, canonical program `A192471.P287865650485884428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192471 (n : ℕ) : ℤ :=
  A192471.P287865650485884428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A192471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192479.P3277058786738417619

`2*A151374(n)-A186997(n)`
-/

namespace A192479.P3277058786738417619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151374 n - A186997 n

end

end A192479.P3277058786738417619

noncomputable section

/-- A192479: a(n) = 2^n*C(n-1) - A186997(n-1), where C(n) are the Catalan numbers (A000108).

Offset 1, canonical program `A192479.P3277058786738417619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A192479 (n : ℕ) : ℤ :=
  A192479.P3277058786738417619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A192479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192480.P10037595847355585616

`A028242(A004275(n))-A115140(n)`
-/

namespace A192480.P10037595847355585616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004275 n).toNat - A115140 n

end

end A192480.P10037595847355585616

noncomputable section

/-- A192480: a(n) = n + A000108(n-1) for n > 1; a(0)=0, a(1)=1.

Offset 0, canonical program `A192480.P10037595847355585616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A192480 (n : ℕ) : ℤ :=
  A192480.P10037595847355585616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A192480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192571.P8518121779130462131

`∑[A192570(n)]`
-/

namespace A192571.P8518121779130462131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192571.P8518121779130462131

noncomputable section

/-- A192571: a(n) = sum(floor(sqrt(Bell(k))),k=0..n).

Offset 0, canonical program `A192571.P8518121779130462131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A192571 (n : ℕ) : ℤ :=
  A192571.P8518121779130462131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A192571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192660.P16606724903194287464

`floor(sqrt(A098600(n)))%A136417(n)`
-/

namespace A192660.P16606724903194287464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A098600 n)) (A136417 n)

end

end A192660.P16606724903194287464

noncomputable section

/-- A192660: Floor-Sqrt transform of Lucas numbers (A000032).

Offset 0, canonical program `A192660.P16606724903194287464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A192660 (n : ℕ) : ℤ :=
  A192660.P16606724903194287464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A192660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192671.P11314604157394763

`floor(sqrt(A005043(n)))`
-/

namespace A192671.P11314604157394763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005043 n)

end

end A192671.P11314604157394763

noncomputable section

/-- A192671: Floor-Sqrt transform of Riordan numbers (A005043).

Offset 0, canonical program `A192671.P11314604157394763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A192671 (n : ℕ) : ℤ :=
  A192671.P11314604157394763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A192671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192757.P10346380195433472354

`Δ[A023611(n)]-A014675(n)-a(n-1)` with `a(0)=1`
-/

namespace A192757.P10346380195433472354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - A014675 n - a (n - 1)

end

end A192757.P10346380195433472354

noncomputable section

/-- A192757: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

Offset 0, canonical program `A192757.P10346380195433472354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A192757 (n : ℕ) : ℤ :=
  A192757.P10346380195433472354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A192757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192861.P8332335553101968689

`eq[4, A071327(2*(n+1))]`
-/

namespace A192861.P8332335553101968689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P8332335553101968689

noncomputable section

/-- A192861: Flat numbers: odd n such that n+1 is a squarefree number times a power of two.

Offset 1, canonical program `A192861.P8332335553101968689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192861 (n : ℕ) : ℤ :=
  (A192861.P8332335553101968689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193294.P17160305021971217046

`A063477(n+1)-A193293(n+1)`
-/

namespace A193294.P17160305021971217046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - A193293 (n + 1)

end

end A193294.P17160305021971217046

noncomputable section

/-- A193294: Sum of even divisors of Fibonacci(n).

Offset 1, canonical program `A193294.P17160305021971217046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A193294 (n : ℕ) : ℤ :=
  A193294.P17160305021971217046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A193294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193304.P5208595360684029488

`eq[1, A053824(A003557(n+1))]+1`
-/

namespace A193304.P5208595360684029488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193304.P5208595360684029488

noncomputable section

/-- A193304: Squarefree numbers multiplied by powers of 5.

Offset 1, canonical program `A193304.P5208595360684029488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. -/
def A193304 (n : ℕ) : ℤ :=
  (A193304.P5208595360684029488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. -/
def A193304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193460.P12134665306941346168

`∪[∑[A027828(n)], A051885(n)+1]`
-/

namespace A193460.P12134665306941346168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A193460.P12134665306941346168

noncomputable section

/-- A193460: Numbers m such that A193459(m) = A000005(m).

Offset 1, canonical program `A193460.P12134665306941346168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A193460 (n : ℕ) : ℤ :=
  (A193460.P12134665306941346168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A193460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193738.P15912685866539530359

`A002260(A132128(n+1))`
-/

namespace A193738.P15912685866539530359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A132128 (n + 1)).toNat

end

end A193738.P15912685866539530359

noncomputable section

/-- A193738: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=q(n,x)=x^n+x^(n-1)+...+x+1.

Offset 0, canonical program `A193738.P15912685866539530359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738 (n : ℕ) : ℤ :=
  A193738.P15912685866539530359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193758.P16879839616454654453

`ceil(ratio[A002805(n+1)])*A001008(n+1)`
-/

namespace A193758.P16879839616454654453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A001008 (n + 1)

end

end A193758.P16879839616454654453

noncomputable section

/-- A193758: Denominator of H(n)/H(n-1), where H(n) is the n-th harmonic number = Sum_{k=1..n} 1/k.

Offset 2, canonical program `A193758.P16879839616454654453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A193758 (n : ℕ) : ℤ :=
  A193758.P16879839616454654453.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A193758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193832.P6849096457617838116

`A235963(n)+1`
-/

namespace A193832.P6849096457617838116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 n + 1

end

end A193832.P6849096457617838116

noncomputable section

/-- A193832: Irregular triangle read by rows in which row n lists 2n-1 copies of 2n-1 and n copies of 2n, for n >= 1.

Offset 1, canonical program `A193832.P6849096457617838116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193832 (n : ℕ) : ℤ :=
  A193832.P6849096457617838116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193842.P15840078129144065471

`A119673(A007401(n+1))`
-/

namespace A193842.P15840078129144065471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A007401 (n + 1)).toNat

end

end A193842.P15840078129144065471

noncomputable section

/-- A193842: Triangular array: the fission of the polynomial sequence ((x+1)^n: n >= 0) by the polynomial sequence ((x+2)^n: n >= 0). (Fission is defined at Comments.)

Offset 0, canonical program `A193842.P15840078129144065471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A193842 (n : ℕ) : ℤ :=
  A193842.P15840078129144065471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A193842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193858.P7170798059563055956

`A130321(n)*A193844(n)`
-/

namespace A193858.P7170798059563055956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193844 n

end

end A193858.P7170798059563055956

noncomputable section

/-- A193858: Triangular array: the fission of ((x+1)^n) by ((2x+1)^n).

Offset 0, canonical program `A193858.P7170798059563055956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193858 (n : ℕ) : ℤ :=
  A193858.P7170798059563055956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193922.P17539686961463381595

`A108035(n+1)-A104763(n+1)%A108035(n+1)`
-/

namespace A193922.P17539686961463381595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - Int.tmod (A104763 (n + 1)) (A108035 (n + 1))

end

end A193922.P17539686961463381595

noncomputable section

/-- A193922: Mirror of the triangle A193921.

Offset 0, canonical program `A193922.P17539686961463381595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193922 (n : ℕ) : ℤ :=
  A193922.P17539686961463381595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193974.P14269232743332111222

`A131783(n+1)+1`
-/

namespace A193974.P14269232743332111222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) + 1

end

end A193974.P14269232743332111222

noncomputable section

/-- A193974: Mirror of the triangle A193973.

Offset 0, canonical program `A193974.P14269232743332111222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193974 (n : ℕ) : ℤ :=
  A193974.P14269232743332111222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194003.P749613088496176937

`A193929(n²)`
-/

namespace A194003.P749613088496176937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n ^ 2)

end

end A194003.P749613088496176937

noncomputable section

/-- A194003: Number of prime factors of n^8 + 1, counted with multiplicity.

Offset 0, canonical program `A194003.P749613088496176937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A194003 (n : ℕ) : ℤ :=
  A194003.P749613088496176937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A194003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194029.P3923932250120237143

`A066628(n+1)+1`
-/

namespace A194029.P3923932250120237143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (n + 1) + 1

end

end A194029.P3923932250120237143

noncomputable section

/-- A194029: Natural fractal sequence of the Fibonacci sequence (1, 2, 3, 5, 8, ...).

Offset 1, canonical program `A194029.P3923932250120237143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194029 (n : ℕ) : ℤ :=
  A194029.P3923932250120237143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194102.P16952581590974244032

`and(∑[A001951(n+1)], -1)`
-/

namespace A194102.P16952581590974244032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194102.P16952581590974244032

noncomputable section

/-- A194102: a(n) = Sum_{j=1..n} floor(j*sqrt(2)); n-th partial sum of Beatty sequence for sqrt(2), A001951.

Offset 1, canonical program `A194102.P16952581590974244032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194102 (n : ℕ) : ℤ :=
  A194102.P16952581590974244032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194117.P2853746433077659524

`∑[A188070(n+1)]-(n+1)`
-/

namespace A194117.P2853746433077659524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A194117.P2853746433077659524

noncomputable section

/-- A194117: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(3))/2); n-th partial sum of Beatty sequence A003511.

Offset 1, canonical program `A194117.P2853746433077659524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194117 (n : ℕ) : ℤ :=
  A194117.P2853746433077659524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194140.P16657759496107479356

`and(∑[A054088(n+1)], -1)`
-/

namespace A194140.P16657759496107479356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194140.P16657759496107479356

noncomputable section

/-- A194140: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(3))); n-th partial sum of Beatty sequence for 1+sqrt(3).

Offset 1, canonical program `A194140.P16657759496107479356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194140 (n : ℕ) : ℤ :=
  A194140.P16657759496107479356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194143.P5634458808628739583

`∑[A188070(n+1)]+∑[n]`
-/

namespace A194143.P5634458808628739583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A194143.P5634458808628739583

noncomputable section

/-- A194143: Sum{floor(j*(3+sqrt(3))/2) : 1<=j<=n}; n-th partial sum of Beatty sequence for (3+sqrt(3))/2.

Offset 1, canonical program `A194143.P5634458808628739583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194143 (n : ℕ) : ℤ :=
  A194143.P5634458808628739583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194144.P17823940702748119438

`A194110(n+1)-∑[n+1]`
-/

namespace A194144.P17823940702748119438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194110 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194144.P17823940702748119438

noncomputable section

/-- A194144: Sum{floor(j*(-1+sqrt(5))) : 1<=j<=n}; n-th partial sum of Beatty sequence for -1+sqrt(5).

Offset 1, canonical program `A194144.P17823940702748119438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194144 (n : ℕ) : ℤ :=
  A194144.P17823940702748119438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194147.P11761770816087481396

`A194137(n+1)-∑[n+1]`
-/

namespace A194147.P11761770816087481396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194137 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194147.P11761770816087481396

noncomputable section

/-- A194147: a(n) = Sum_{j=1..n} floor(j*(-1+sqrt(6))); n-th partial sum of Beatty sequence for -1+sqrt(6).

Offset 1, canonical program `A194147.P11761770816087481396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194147 (n : ℕ) : ℤ :=
  A194147.P11761770816087481396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194150.P5049106201563811675

`∑[A003622(2*(n+1))]+1+n`
-/

namespace A194150.P5049106201563811675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A194150.P5049106201563811675

noncomputable section

/-- A194150: a(n) = Sum_{j=1..n} floor(j*(3+sqrt(5))); n-th partial sum of Beatty sequence for 3+sqrt(5).

Offset 1, canonical program `A194150.P5049106201563811675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194150 (n : ℕ) : ℤ :=
  A194150.P5049106201563811675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194151.P5431600877886687202

`ceil(A190511(n+1)/2)`
-/

namespace A194151.P5431600877886687202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190511 (n + 1) : ℚ) / 2⌉

end

end A194151.P5431600877886687202

noncomputable section

/-- A194151: Beatty sequence for (1/2)*sqrt(5); complement of A194152.

Offset 1, canonical program `A194151.P5431600877886687202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194151 (n : ℕ) : ℤ :=
  A194151.P5431600877886687202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194166.P9820872437032125516

`∑[A194165(n+1)]`
-/

namespace A194166.P9820872437032125516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194166.P9820872437032125516

noncomputable section

/-- A194166: Partial sums of A194165.

Offset 1, canonical program `A194166.P9820872437032125516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4690 terms. -/
def A194166 (n : ℕ) : ℤ :=
  A194166.P9820872437032125516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4690 terms. -/
def A194166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194187.P2031847061750070614

`A000040(n+1)-A070883(n+1)`
-/

namespace A194187.P2031847061750070614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070883 (n + 1)

end

end A194187.P2031847061750070614

noncomputable section

/-- A194187: Difference of n-th prime and (bitwise XOR of n and n-th prime).

Offset 1, canonical program `A194187.P2031847061750070614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194187 (n : ℕ) : ℤ :=
  A194187.P2031847061750070614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194238.P3948435337945888088

`∑[A194237(n+1)]`
-/

namespace A194238.P3948435337945888088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194238.P3948435337945888088

noncomputable section

/-- A194238: Partial sums of A194237.

Offset 1, canonical program `A194238.P3948435337945888088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194238 (n : ℕ) : ℤ :=
  A194238.P3948435337945888088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194458.P10976458647848620853

`∑[∏{digits}[A007091(n), #+1]]`
-/

namespace A194458.P10976458647848620853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x + 1).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P10976458647848620853

noncomputable section

/-- A194458: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 5.

Offset 0, canonical program `A194458.P10976458647848620853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194458 (n : ℕ) : ℤ :=
  (A194458.P10976458647848620853.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194459.P8592063526530025729

`∏{digits}[A007091(n), #+1]`
-/

namespace A194459.P8592063526530025729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A194459.P8592063526530025729

noncomputable section

/-- A194459: Number of entries in the n-th row of Pascal's triangle not divisible by 5.

Offset 0, canonical program `A194459.P8592063526530025729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194459 (n : ℕ) : ℤ :=
  (A194459.P8592063526530025729.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194579.P6279070803059388328

`eq[1, A010051(A023890(n+1))]+1`
-/

namespace A194579.P6279070803059388328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A023890 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P6279070803059388328

noncomputable section

/-- A194579: Numbers whose sum of the their nonprime divisors is prime.

Offset 1, canonical program `A194579.P6279070803059388328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A194579 (n : ℕ) : ℤ :=
  (A194579.P6279070803059388328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A194579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194733.P5079887994713995928

`1-A019587(n+1)+n`
-/

namespace A194733.P5079887994713995928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019587 (n + 1) + (n : ℤ)

end

end A194733.P5079887994713995928

noncomputable section

/-- A194733: Number of k < n such that {k*r} > {n*r}, where { } = fractional part, r = (1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194733.P5079887994713995928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194733 (n : ℕ) : ℤ :=
  A194733.P5079887994713995928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194734.P3466795351290559112

`A019587(n+1)-1`
-/

namespace A194734.P3466795351290559112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (n + 1) - 1

end

end A194734.P3466795351290559112

noncomputable section

/-- A194734: Number of k such that {-k*r} > {-n*r}, where { } = fractional part, r = (1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194734.P3466795351290559112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194734 (n : ℕ) : ℤ :=
  A194734.P3466795351290559112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194737.P6700911541422964777

`∑[2*(A001951(n+1)+1)]%(n+2)`
-/

namespace A194737.P6700911541422964777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001951 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A194737.P6700911541422964777

noncomputable section

/-- A194737: Number of k such that {-k*sqrt(2)} > {-n*sqrt(2)}, where { } = fractional part.

Offset 1, canonical program `A194737.P6700911541422964777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194737 (n : ℕ) : ℤ :=
  A194737.P6700911541422964777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194739.P17582938423262329083

`1-A194738(n+1)+n`
-/

namespace A194739.P17582938423262329083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194738 (n + 1) + (n : ℤ)

end

end A194739.P17582938423262329083

noncomputable section

/-- A194739: Number of k such that {k*sqrt(3)} > {n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194739.P17582938423262329083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194739 (n : ℕ) : ℤ :=
  A194739.P17582938423262329083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194741.P14653812947197566281

`A194738(n+1)-1`
-/

namespace A194741.P14653812947197566281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194738 (n + 1) - 1

end

end A194741.P14653812947197566281

noncomputable section

/-- A194741: Number of k such that {-k*sqrt(3)} > {-n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194741.P14653812947197566281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194741 (n : ℕ) : ℤ :=
  A194741.P14653812947197566281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194742.P14049241962855359563

`n+1-(n*A194110(n+1))%(n+2)`
-/

namespace A194742.P14049241962855359563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod ((n : ℤ) * A194110 (n + 1)) (n + 2 : ℤ)

end

end A194742.P14049241962855359563

noncomputable section

/-- A194742: Number of k such that {k*sqrt(5)} < {n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194742.P14049241962855359563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194742 (n : ℕ) : ℤ :=
  A194742.P14049241962855359563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194751.P13904899455516874814

`1-A194750(n+1)+n`
-/

namespace A194751.P13904899455516874814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194750 (n + 1) + (n : ℤ)

end

end A194751.P13904899455516874814

noncomputable section

/-- A194751: Number of k such that {k*e} > {n*e}, where { } = fractional part.

Offset 1, canonical program `A194751.P13904899455516874814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194751 (n : ℕ) : ℤ :=
  A194751.P13904899455516874814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194753.P14497429391237450864

`A194750(n+1)-1`
-/

namespace A194753.P14497429391237450864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194750 (n + 1) - 1

end

end A194753.P14497429391237450864

noncomputable section

/-- A194753: Number of k such that {-k*e} > {-n*e}, where { } = fractional part.

Offset 1, canonical program `A194753.P14497429391237450864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194753 (n : ℕ) : ℤ :=
  A194753.P14497429391237450864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194939.P5364823241840886690

`A014284(A003057(n+2))-A014284(A004736(n+1))`
-/

namespace A194939.P5364823241840886690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (A003057 (n + 2)).toNat - A014284 (A004736 (n + 1)).toNat

end

end A194939.P5364823241840886690

noncomputable section

/-- A194939: Table T read by rows, where T(n, k) is the sum of the largest k primes up to and including prime(n), for 1 <= k <= n.

Offset 1, canonical program `A194939.P5364823241840886690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194939 (n : ℕ) : ℤ :=
  A194939.P5364823241840886690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A194939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195088.P5249009362894573019

`eq[4, A046660(n+1)]+1`
-/

namespace A195088.P5249009362894573019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195088.P5249009362894573019

noncomputable section

/-- A195088: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 4.

Offset 1, canonical program `A195088.P5249009362894573019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A195088 (n : ℕ) : ℤ :=
  (A195088.P5249009362894573019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A195088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195089.P9188432213038662582

`eq[5, A046660(A028310(n))]`
-/

namespace A195089.P9188432213038662582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195089.P9188432213038662582

noncomputable section

/-- A195089: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 5.

Offset 1, canonical program `A195089.P9188432213038662582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A195089 (n : ℕ) : ℤ :=
  (A195089.P9188432213038662582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A195089.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A195279.P4298696130975354631

`(2*n+3)²*A063496(n+2)`
-/

namespace A195279.P4298696130975354631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) * A063496 (n + 2)

end

end A195279.P4298696130975354631

noncomputable section

/-- A195279: Number of lower triangles of a 3 X 3 integer array with each element differing from all of its vertical and horizontal neighbors by n or less and triangles differing by a constant counted only once.

Offset 1, canonical program `A195279.P4298696130975354631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A195279 (n : ℕ) : ℤ :=
  A195279.P4298696130975354631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A195279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195587.P17624761415793386705

`A163659((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195587.P17624761415793386705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163659 ((n + 1) ^ 2)

end

end A195587.P17624761415793386705

noncomputable section

/-- A195587: a(n) = A163659(n^2), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

Offset 1, canonical program `A195587.P17624761415793386705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195587 (n : ℕ) : ℤ :=
  A195587.P17624761415793386705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195587.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A196747.P369553060331001684

`∪[A005823(n+1), A055246(n+1)]`
-/

namespace A196747.P369553060331001684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196747.P369553060331001684

noncomputable section

/-- A196747: Numbers n such that 3 does not divide swing(n) = A056040(n).

Offset 1, canonical program `A196747.P369553060331001684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196747 (n : ℕ) : ℤ :=
  (A196747.P369553060331001684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197638.P14779992210065469956

`2*A004139(n+1)-A000038(n)`
-/

namespace A197638.P14779992210065469956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004139 (n + 1) - A000038 n

end

end A197638.P14779992210065469956

noncomputable section

/-- A197638: GA1 numbers: composite m with G(m) >= G(m/p) for all prime factors p of m, where G(k) = sigma(k)/(k*log(log(k))) and sigma(k) = sum of divisors of k.

Offset 1, canonical program `A197638.P14779992210065469956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197638 (n : ℕ) : ℤ :=
  A197638.P14779992210065469956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197680.P6924498182071460714

`eq[1, A049419(n+1)%2]+1`
-/

namespace A197680.P6924498182071460714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049419 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A197680.P6924498182071460714

noncomputable section

/-- A197680: Numbers whose exponents in their prime power factorization are squares.

Offset 1, canonical program `A197680.P6924498182071460714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6417 terms. -/
def A197680 (n : ℕ) : ℤ :=
  (A197680.P6924498182071460714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6417 terms. -/
def A197680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197775.P4834245977213038739

`∑[A197774(n+1)]`
-/

namespace A197775.P4834245977213038739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197775.P4834245977213038739

noncomputable section

/-- A197775: Partial sums of A197774.

Offset 1, canonical program `A197775.P4834245977213038739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197775 (n : ℕ) : ℤ :=
  A197775.P4834245977213038739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197930.P3354598324668352109

`eq[A003557(n+1), A063994(n+1)]+1`
-/

namespace A197930.P3354598324668352109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A197930.P3354598324668352109

noncomputable section

/-- A197930: Numbers n such that the number of distinct residues in x^(n-1) (mod n), x=0..n-1, equals n.

Offset 1, canonical program `A197930.P3354598324668352109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A197930 (n : ℕ) : ℤ :=
  (A197930.P3354598324668352109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A197930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198798.P56848906856835327

`2*A002260(A006254(n+1)+1)-3`
-/

namespace A198798.P56848906856835327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (A006254 (n + 1) + 1).toNat - 3

end

end A198798.P56848906856835327

noncomputable section

/-- A198798: Least odd number a(n) > -3 such that a(n) = p(n) - j*(j+1), where p(n) is the n-th prime.

Offset 2, canonical program `A198798.P56848906856835327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A198798 (n : ℕ) : ℤ :=
  A198798.P56848906856835327.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A198798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199218.P4498318443024509209

`p?[A092569(or(1, A080165(n+1)))]`
-/

namespace A199218.P4498318443024509209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.lor 1 (A080165 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199218.P4498318443024509209

noncomputable section

/-- A199218: Prime XOR couples of A199217.

Offset 1, canonical program `A199218.P4498318443024509209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A199218 (n : ℕ) : ℤ :=
  A199218.P4498318443024509209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A199218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199322.P1315380875111111042

`Δ[A071538(abs(A014209(n)))]`
-/

namespace A199322.P1315380875111111042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 |A014209 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199322.P1315380875111111042

noncomputable section

/-- A199322: Number of twin prime numbers of the form n*(n+1) + 2*k-3 and n*(n+1) + 2*k-1 with k = 1 to n+1.

Offset 1, canonical program `A199322.P1315380875111111042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A199322 (n : ℕ) : ℤ :=
  A199322.P1315380875111111042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A199322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199479.P4312967222297535368

`A147703((1-A010054(n))*A061579(n))`
-/

namespace A199479.P4312967222297535368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 ((1 - A010054 n) * A061579 n).toNat

end

end A199479.P4312967222297535368

noncomputable section

/-- A199479: Triangle T(n,k), read by rows, given by (1,0,0,0,0,0,0,0,0,0,...) DELTA (1,1,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A199479.P4312967222297535368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A199479 (n : ℕ) : ℤ :=
  A199479.P4312967222297535368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A199479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199593.P322643745458318063

`lt[A075743(n+1), 1]+2`
-/

namespace A199593.P322643745458318063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A199593.P322643745458318063

noncomputable section

/-- A199593: Numbers n such that 3n-2, 3n-1 and 3n are all composite.

Offset 1, canonical program `A199593.P322643745458318063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199593 (n : ℕ) : ℤ :=
  (A199593.P322643745458318063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199706.P16105507406723659083

`4*(A219054(n+1)+A002264(n+1))`
-/

namespace A199706.P16105507406723659083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A219054 (n + 1) + A002264 (n + 1))

end

end A199706.P16105507406723659083

noncomputable section

/-- A199706: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no two neighbors equal.

Offset 1, canonical program `A199706.P16105507406723659083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199706 (n : ℕ) : ℤ :=
  A199706.P16105507406723659083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199799.P11622776229895565109

`eq[1, gcd(n, A154549(n+1))]`
-/

namespace A199799.P11622776229895565109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A154549 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199799.P11622776229895565109

noncomputable section

/-- A199799: Totatives of 111111.

Offset 1, canonical program `A199799.P11622776229895565109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4665 terms. -/
def A199799 (n : ℕ) : ℤ :=
  (A199799.P11622776229895565109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4665 terms. -/
def A199799.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A201058.P9984270356643551809

`A001700(n)/A333461(n+1)`
-/

namespace A201058.P9984270356643551809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 n : ℚ) / (A333461 (n + 1) : ℚ)

end

end A201058.P9984270356643551809

noncomputable section

/-- A201058: Numerator of binomial(2n,n)/(2n).

Offset 1, canonical program `A201058.P9984270356643551809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A201058 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201058.P9984270356643551809.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A201058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201059.P10578964195091307277

`(n+1)/A333461(n+1)`
-/

namespace A201059.P10578964195091307277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A333461 (n + 1) : ℚ)

end

end A201059.P10578964195091307277

noncomputable section

/-- A201059: Denominator of binomial(2n,n)/(2n).

Offset 1, canonical program `A201059.P10578964195091307277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201059.P10578964195091307277.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201146.P15453871938677034455

`A034386(A002024(n+1))/A034386(A002260(n+1))`
-/

namespace A201146.P15453871938677034455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (A002024 (n + 1)).toNat : ℚ) / (A034386 (A002260 (n + 1)).toNat : ℚ)

end

end A201146.P15453871938677034455

noncomputable section

/-- A201146: Triangle read by rows: T(n,k) = (n#)/(k#), 1 <= k <= n.

Offset 1, canonical program `A201146.P15453871938677034455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201146 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A201146.P15453871938677034455.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201461.P15060642789857487320

`A345135(2*A103354(n+1))`
-/

namespace A201461.P15060642789857487320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (2 * A103354 (n + 1)).toNat

end

end A201461.P15060642789857487320

noncomputable section

/-- A201461: Triangle read by rows: n-th row (n>=0) gives coefficients of the polynomial ((x+1)^(2^n) + (x-1)^(2^n))/2.

Offset 0, canonical program `A201461.P15060642789857487320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A201461 (n : ℕ) : ℤ :=
  A201461.P15060642789857487320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A201461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201734.P3143725369021031847

`eq[1, A075743(A128468(n)-2)]`
-/

namespace A201734.P3143725369021031847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128468 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201734.P3143725369021031847

noncomputable section

/-- A201734: Numbers n such that 90*n + 47 is prime.

Offset 1, canonical program `A201734.P3143725369021031847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A201734 (n : ℕ) : ℤ :=
  (A201734.P3143725369021031847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A201734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201786.P4099425712573629758

`∩[A142183(n+1), A134593(n)]`
-/

namespace A201786.P4099425712573629758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201786.P4099425712573629758

noncomputable section

/-- A201786: Primes of the form 5*k^2 - 4.

Offset 1, canonical program `A201786.P4099425712573629758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A201786 (n : ℕ) : ℤ :=
  (A201786.P4099425712573629758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A201786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202116.P14031869112246816162

`eq[1, A075743(A257645(2*n+1))]`
-/

namespace A202116.P14031869112246816162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A257645 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202116.P14031869112246816162

noncomputable section

/-- A202116: Numbers k such that 90*k + 89 is prime.

Offset 1, canonical program `A202116.P14031869112246816162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A202116 (n : ℕ) : ℤ :=
  (A202116.P14031869112246816162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A202116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202267.P5737386404805848355

`eq[A055641(n), A064692(n)]`
-/

namespace A202267.P5737386404805848355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202267.P5737386404805848355

noncomputable section

/-- A202267: Numbers in which all digits are noncomposites (1, 2, 3, 5, 7) or 0.

Offset 1, canonical program `A202267.P5737386404805848355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A202267 (n : ℕ) : ℤ :=
  (A202267.P5737386404805848355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A202267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202333.P13249908490991948429

`A050486(n+3)+2-A005585(n+4)`
-/

namespace A202333.P13249908490991948429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 (n + 3) + (2 - A005585 (n + 4))

end

end A202333.P13249908490991948429

noncomputable section

/-- A202333: Number of (n+1) X 7 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202333.P13249908490991948429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333 (n : ℕ) : ℤ :=
  A202333.P13249908490991948429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A202333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202340.P12710682154038267641

`char[A136495(A136495(n+1))]+1`
-/

namespace A202340.P12710682154038267641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A202340.P12710682154038267641

noncomputable section

/-- A202340: Number of times n occurs in Hofstadter H-sequence A005374.

Offset 0, canonical program `A202340.P12710682154038267641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202340 (n : ℕ) : ℤ :=
  (A202340.P12710682154038267641.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202341.P2903062940164643080

`comp[A136495(n+1)+A005374(n)]`
-/

namespace A202341.P2903062940164643080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A005374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A202341.P2903062940164643080

noncomputable section

/-- A202341: Numbers occurring exactly once in Hofstadter H-sequence A005374.

Offset 1, canonical program `A202341.P2903062940164643080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202341 (n : ℕ) : ℤ :=
  (A202341.P2903062940164643080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202341.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A203019.P4724195910642772434

`A004148(abs(2-n))%A004148(n+1)`
-/

namespace A203019.P4724195910642772434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004148 |2 - (n : ℤ)|.toNat) (A004148 (n + 1))

end

end A203019.P4724195910642772434

noncomputable section

/-- A203019: Number of elevated peakless Motzkin paths.

Offset 0, canonical program `A203019.P4724195910642772434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A203019 (n : ℕ) : ℤ :=
  A203019.P4724195910642772434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A203019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203245.P2063800879592085872

`∑[A001911(n+1)*A020695(n)]`
-/

namespace A203245.P2063800879592085872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) * A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203245.P2063800879592085872

noncomputable section

/-- A203245: Second elementary symmetric function of the first n terms of (1,2,3,5,8,...).

Offset 1, canonical program `A203245.P2063800879592085872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A203245 (n : ℕ) : ℤ :=
  A203245.P2063800879592085872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A203245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203299.P16754718405884152906

`A203246(n+2)+∑[∑[lcm(2, n)+3]]`
-/

namespace A203299.P16754718405884152906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203246 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A203299.P16754718405884152906

noncomputable section

/-- A203299: Second elementary symmetric function of the first n terms of (2,2,3,3,4,4,5,5...).

Offset 2, canonical program `A203299.P16754718405884152906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203299 (n : ℕ) : ℤ :=
  A203299.P16754718405884152906.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203444.P8004498472754597362

`lt[0, char[A001615(n+1)]]`
-/

namespace A203444.P8004498472754597362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203444.P8004498472754597362

noncomputable section

/-- A203444: Numbers in range of Dedekind Psi function: A001615.

Offset 1, canonical program `A203444.P8004498472754597362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A203444 (n : ℕ) : ℤ :=
  (A203444.P8004498472754597362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A203444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203553.P6403346514830057154

`xor(1, A094761(n)-A259361(n))`
-/

namespace A203553.P6403346514830057154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A094761 n - A259361 n)

end

end A203553.P6403346514830057154

noncomputable section

/-- A203553: Lodumo_2 of A118175, which is n 1's followed by n 0's.

Offset 0, canonical program `A203553.P6403346514830057154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553 (n : ℕ) : ℤ :=
  A203553.P6403346514830057154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203554.P1633143920349780261

`abs(A094761(n)-A259361(n))`
-/

namespace A203554.P1633143920349780261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094761 n - A259361 n|

end

end A203554.P1633143920349780261

noncomputable section

/-- A203554: Lodumo_2 of A079813, which is n 0's followed by n 1's.

Offset 0, canonical program `A203554.P1633143920349780261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203554 (n : ℕ) : ℤ :=
  A203554.P1633143920349780261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204087.P6569582494000110394

`A003418(A003056(n))/A003418(A003984(n))`
-/

namespace A204087.P6569582494000110394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A003056 n).toNat : ℚ) / (A003418 (A003984 n).toNat : ℚ)

end

end A204087.P6569582494000110394

noncomputable section

/-- A204087: Reduced Pascal triangle: C_R(n,m) = A003418(n) / max(A003418(m), A003418(n-m)), m=0,...,n.

Offset 0, canonical program `A204087.P6569582494000110394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204087 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204087.P6569582494000110394.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204114.P7253496876444969193

`gcd(A104765(n+1), A108035(n+1))`
-/

namespace A204114.P7253496876444969193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104765 (n + 1)) (A108035 (n + 1))

end

end A204114.P7253496876444969193

noncomputable section

/-- A204114: Symmetric matrix based on f(i,j) = gcd(L(i), L(j)), where L=A000032 (Lucas numbers), by antidiagonals.

Offset 1, canonical program `A204114.P7253496876444969193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204114 (n : ℕ) : ℤ :=
  (A204114.P7253496876444969193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204127.P1015151669026784656

`A193588(gcd(n, A068344(n)))`
-/

namespace A204127.P1015151669026784656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 (Int.gcd (n : ℤ) (A068344 n))

end

end A204127.P1015151669026784656

noncomputable section

/-- A204127: Symmetric matrix based on f(i,j)=(F(i+1) if i=j and 1 otherwise), where F=A000045 (Fibonacci numbers), by antidiagonals.

Offset 1, canonical program `A204127.P1015151669026784656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204127 (n : ℕ) : ℤ :=
  A204127.P1015151669026784656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204156.P2950584542744823295

`A204022(n+1)+A049581(n)`
-/

namespace A204156.P2950584542744823295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + A049581 n

end

end A204156.P2950584542744823295

noncomputable section

/-- A204156: Symmetric matrix based on f(i,j)=max(3i-j, 3j-i), by antidiagonals.

Offset 1, canonical program `A204156.P2950584542744823295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204156 (n : ℕ) : ℤ :=
  A204156.P2950584542744823295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204175.P4096975912672246987

`1-A204171(n+1)`
-/

namespace A204175.P4096975912672246987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204171 (n + 1)

end

end A204175.P4096975912672246987

noncomputable section

/-- A204175: Symmetric matrix based on f(i,j)=(1 if max(i,j) is even, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204175.P4096975912672246987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175 (n : ℕ) : ℤ :=
  A204175.P4096975912672246987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204206.P854096699827338767

`∑[A074909(n)+A010054(n)]+1`
-/

namespace A204206.P854096699827338767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A204206.P854096699827338767

noncomputable section

/-- A204206: Triangle based on (1,3/2,2) averaging array.

Offset 1, canonical program `A204206.P854096699827338767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204206 (n : ℕ) : ℤ :=
  A204206.P854096699827338767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153380.P4322513371660982384

`comp[A102700(n+1)]`
-/

namespace A153380.P4322513371660982384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153380.P4322513371660982384

noncomputable section

/-- A153380: Numbers k such that 10*k+9 is not prime.

Offset 1, canonical program `A153380.P4322513371660982384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153380 (n : ℕ) : ℤ :=
  (A153380.P4322513371660982384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153485.P1399869421749084233

`A000217(n)-A004125(n+1)`
-/

namespace A153485.P1399869421749084233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A004125 (n + 1)

end

end A153485.P1399869421749084233

noncomputable section

/-- A153485: Sum of all aliquot divisors of all positive integers <= n.

Offset 1, canonical program `A153485.P1399869421749084233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153485 (n : ℕ) : ℤ :=
  A153485.P1399869421749084233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153876.P9789927815040550119

`∑{#}[2^(n+1)-1-2^n, A000005(#+2^n)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153876.P9789927815040550119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - 1 - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (k + 2 ^ n)

end

end A153876.P9789927815040550119

noncomputable section

/-- A153876: a(n) = Sum_{i=2^(n-1)..2^n-1} sigma_0(i), sigma_0(i) number of divisors of n, n positive integer.

Offset 1, canonical program `A153876.P9789927815040550119`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[2^(n+1)-1-2^n, A000005(#+2^n)]` (program `A153876.P9789927815040550119`, by `A153876.P9789927815040550119.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A153876 (n : ℕ) : ℤ :=
  A153876.P9789927815040550119.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[2^(n+1)-1-2^n, A000005(#+2^n)]` (program `A153876.P9789927815040550119`, by `A153876.P9789927815040550119.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A153876.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A154234.P10923171375270971651

`(row(n)+1)%A000005(col(n)+1)`
-/

namespace A154234.P10923171375270971651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.triRow n + 1 : ℤ) (A000005 (SequenceMachineLib.triCol n + 1))

end

end A154234.P10923171375270971651

noncomputable section

/-- A154234: Triangle read by rows: T(n,k) = (n mod d(k)), where d(i) is the number of divisors of i.

Offset 1, canonical program `A154234.P10923171375270971651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154234 (n : ℕ) : ℤ :=
  A154234.P10923171375270971651.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154234.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154334.P4393523931861115202

`(A168523(n)+A007318(n))/2`
-/

namespace A154334.P4393523931861115202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168523 n + A007318 n : ℚ) / 2

end

end A154334.P4393523931861115202

noncomputable section

/-- A154334: A triangular sequence of coefficients of polynomials: p(x,n) = ((x - 1)^n *(Sum_{k>=0} (((-1)^n*(2*k + 1)^(n - 1)))*x^k) + (x - 1)^(n + 1)*(Sum_{k>=0} ((-1)^(n + 1)*k^n)*x^k)/x)/2.

Offset 0, canonical program `A154334.P4393523931861115202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154334 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154334.P4393523931861115202.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154510.P17255303162839916409

`∩[A154515(n+1), A264823(n+1)]`
-/

namespace A154510.P17255303162839916409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154510.P17255303162839916409

noncomputable section

/-- A154510: Primes of the form 648*k^2 + 72*k + 1.

Offset 1, canonical program `A154510.P17255303162839916409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1102 terms. -/
def A154510 (n : ℕ) : ℤ :=
  (A154510.P17255303162839916409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1102 terms. -/
def A154510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154511.P5616005869555878040

`∩[A154514(n+1), A264823(n+1)]`
-/

namespace A154511.P5616005869555878040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154511.P5616005869555878040

noncomputable section

/-- A154511: Primes of the form 648*k^2 - 72*k + 1.

Offset 1, canonical program `A154511.P5616005869555878040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A154511 (n : ℕ) : ℤ :=
  (A154511.P5616005869555878040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A154511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155071.P6054164492315748015

`p?[A294601(n+2)+1]`
-/

namespace A155071.P6054164492315748015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294601 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155071.P6054164492315748015

noncomputable section

/-- A155071: Primes with two odd digits.

Offset 1, canonical program `A155071.P6054164492315748015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155071 (n : ℕ) : ℤ :=
  A155071.P6054164492315748015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155483.P2954066192730330164

`A000040(A043489(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155483.P2954066192730330164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A043489 (n + 2)).toNat

end

end A155483.P2954066192730330164

noncomputable section

/-- A155483: a(n)=A000040(A043489(n+1)).

Offset 1, canonical program `A155483.P2954066192730330164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043489, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155483 (n : ℕ) : ℤ :=
  A155483.P2954066192730330164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043489, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155491.P14834440519157360056

`A142458(n+1)/A155495(n)*A155497(n)`
-/

namespace A155491.P14834440519157360056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / (A155495 n : ℚ) * (A155497 n : ℚ)

end

end A155491.P14834440519157360056

noncomputable section

/-- A155491: Triangle T(n, k) = binomial(n+1, k)*A142458(n+1, k+1)/(k+1), read by rows.

Offset 0, canonical program `A155491.P14834440519157360056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A155491.P14834440519157360056.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155493.P3734182141277504547

`A142459(n+1)/A155495(n)*A155497(n)`
-/

namespace A155493.P3734182141277504547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / (A155495 n : ℚ) * (A155497 n : ℚ)

end

end A155493.P3734182141277504547

noncomputable section

/-- A155493: Triangle T(n, k) = binomial(n+1, k)*A142459(n+1, k+1)/(k+1), read by rows.

Offset 0, canonical program `A155493.P3734182141277504547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A155493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A155493.P3734182141277504547.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A155493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155761.P15069823807788748563

`A053121(n)*A156663(n)`
-/

namespace A155761.P15069823807788748563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A156663 n

end

end A155761.P15069823807788748563

noncomputable section

/-- A155761: Riordan array (c(2*x^2), x*c(2*x^2)) where c(x) is the g.f. of A000108.

Offset 0, canonical program `A155761.P15069823807788748563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155761 (n : ℕ) : ℤ :=
  A155761.P15069823807788748563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155770.P11294526074375665109

`A155769(A155771(n+1))`
-/

namespace A155770.P11294526074375665109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 (A155771 (n + 1)).toNat

end

end A155770.P11294526074375665109

noncomputable section

/-- A155770: Primes of form: 2*n^2+2*n-41.

Offset 1, canonical program `A155770.P11294526074375665109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155770 (n : ℕ) : ℤ :=
  A155770.P11294526074375665109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A155770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156688.P15753806741140365688

`A000005(8*(n+1)²)/2`
-/

namespace A156688.P15753806741140365688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (8 * (n + 1) ^ 2) : ℚ) / 2

end

end A156688.P15753806741140365688

noncomputable section

/-- A156688: The total number of distinct Pythagorean triples with an area numerically equal to n times their perimeters.

Offset 1, canonical program `A156688.P15753806741140365688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156688.P15753806741140365688.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157000.P11256171497413587724

`A011973(A049068(n+1))+A011973(n)`
-/

namespace A157000.P11256171497413587724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A049068 (n + 1)).toNat + A011973 n

end

end A157000.P11256171497413587724

noncomputable section

/-- A157000: Triangle T(n,k) = (n/k)*binomial(n-k-1, k-1) read by rows.

Offset 2, canonical program `A157000.P11256171497413587724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A157000 (n : ℕ) : ℤ :=
  A157000.P11256171497413587724.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A157000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157079.P4834609474634695311

`A157509(A053742(n)+17)`
-/

namespace A157079.P4834609474634695311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157509 (A053742 n + 17).toNat

end

end A157079.P4834609474634695311

noncomputable section

/-- A157079: a(n) = 32805000*n^2 - 10513800*n + 842401.

Offset 1, canonical program `A157079.P4834609474634695311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A157079 (n : ℕ) : ℤ :=
  A157079.P4834609474634695311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A157079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157735.P9784472153742863353

`round(A157736(n+1)/sqrt(A157734(n+1)))`
-/

namespace A157735.P9784472153742863353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157736 (n + 1) : ℝ) / Real.sqrt (A157734 (n + 1) : ℝ))

end

end A157735.P9784472153742863353

noncomputable section

/-- A157735: a(n) = 18522*n - 8274.

Offset 1, canonical program `A157735.P9784472153742863353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157735 (n : ℕ) : ℤ :=
  A157735.P9784472153742863353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157977.P1664850103235532340

`p?[A102700(n+1)-A014682(A105042(n+1))]`
-/

namespace A157977.P1664850103235532340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) - A014682 (A105042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P1664850103235532340

noncomputable section

/-- A157977: Primes p such that 20*p + 19 is also prime.

Offset 1, canonical program `A157977.P1664850103235532340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A157977 (n : ℕ) : ℤ :=
  A157977.P1664850103235532340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A157977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158038.P9757458246362349300

`A333884(A000040(n+1))`
-/

namespace A158038.P9757458246362349300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A000040 (n + 1)).toNat

end

end A158038.P9757458246362349300

noncomputable section

/-- A158038: Difference between n-th prime and next cube.

Offset 1, canonical program `A158038.P9757458246362349300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158038 (n : ℕ) : ℤ :=
  A158038.P9757458246362349300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A158038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158387.P7105808994487481565

`(-1)^A000005(n+1)`
-/

namespace A158387.P7105808994487481565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A158387.P7105808994487481565

noncomputable section

/-- A158387: a(n) = -1 if n is a square, 1 if n is not a square.

Offset 1, canonical program `A158387.P7105808994487481565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158387.P7105808994487481565.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158568.P9557815991645259360

`∑{#}[A000045(n+1)-1, A000005(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158568.P9557815991645259360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (k + 1)

end

end A158568.P9557815991645259360

noncomputable section

/-- A158568: a(n) = Sum_{i=1..Fibonacci(n)} sigma_0(i) where sigma_0(n) is A000005(n).

Offset 1, canonical program `A158568.P9557815991645259360`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[A000045(n+1)-1, A000005(#+1)]` (program `A158568.P9557815991645259360`, by `A158568.P9557815991645259360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A158568 (n : ℕ) : ℤ :=
  A158568.P9557815991645259360.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[A000045(n+1)-1, A000005(#+1)]` (program `A158568.P9557815991645259360`, by `A158568.P9557815991645259360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A158568.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A159353.P2127071173178032878

`ceil(A244149(n+1)/2)`
-/

namespace A159353.P2127071173178032878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244149 (n + 1) : ℚ) / 2⌉

end

end A159353.P2127071173178032878

noncomputable section

/-- A159353: a(n) = the smallest positive integer such that a(n)*(2^n - 2) is a multiple of n.

Offset 1, canonical program `A159353.P2127071173178032878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159353 (n : ℕ) : ℤ :=
  A159353.P2127071173178032878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159459.P6853671538407110740

`A000005(col(n)+1)-A000005(gcd(row(n)-col(n)+1, col(n)+1))`
-/

namespace A159459.P6853671538407110740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.triCol n + 1) - A000005 (Int.gcd ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) (SequenceMachineLib.triCol n + 1 : ℤ))

end

end A159459.P6853671538407110740

noncomputable section

/-- A159459: Rectangular array read by antidiagonals: a(n,m) = number of divisors of m that don't divide n.

Offset 1, canonical program `A159459.P6853671538407110740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159459 (n : ℕ) : ℤ :=
  A159459.P6853671538407110740.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159973.P17166764543627180430

`eq[0, A336040(n+1)]+1`
-/

namespace A159973.P17166764543627180430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A159973.P17166764543627180430

noncomputable section

/-- A159973: Non-refactorable numbers: number of divisors of n does not divide n.

Offset 1, canonical program `A159973.P17166764543627180430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159973 (n : ℕ) : ℤ :=
  (A159973.P17166764543627180430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159978.P8849055192198304781

`A013632(A000045(n+1))`
-/

namespace A159978.P8849055192198304781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000045 (n + 1)).toNat

end

end A159978.P8849055192198304781

noncomputable section

/-- A159978: a(n) = (smallest prime > Fibonacci(n)) - Fibonacci(n).

Offset 1, canonical program `A159978.P8849055192198304781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159978 (n : ℕ) : ℤ :=
  A159978.P8849055192198304781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160097.P2922645543658032537

`A325765(n)+1-A049419(n+1)`
-/

namespace A160097.P2922645543658032537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + (1 - A049419 (n + 1))

end

end A160097.P2922645543658032537

noncomputable section

/-- A160097: Number of non-exponential divisors of n.

Offset 1, canonical program `A160097.P2922645543658032537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160097 (n : ℕ) : ℤ :=
  A160097.P2922645543658032537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160399.P12058244234794449129

`∑{#}[n, C(n+1, #+1)*A000005(#+1)]`
-/

namespace A160399.P12058244234794449129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) (k + 1) : ℤ) * A000005 (k + 1)

end

end A160399.P12058244234794449129

noncomputable section

/-- A160399: a(n) = Sum_{k=1..n} binomial(n,k) * d(k), where d(k) = the number of positive divisors of k.

Offset 1, canonical program `A160399.P12058244234794449129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A160399 (n : ℕ) : ℤ :=
  A160399.P12058244234794449129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A160399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160550.P1136096764766705031

`A001065(n+1)%A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160550.P1136096764766705031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (A000005 (n + 1))

end

end A160550.P1136096764766705031

noncomputable section

/-- A160550: a(n) = A001065(n) mod A000005(n).

Offset 1, canonical program `A160550.P1136096764766705031`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001065(n+1)%A000005(n+1)` (program `A160550.P1136096764766705031`, by `A160550.P1136096764766705031.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160550 (n : ℕ) : ℤ :=
  A160550.P1136096764766705031.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001065(n+1)%A000005(n+1)` (program `A160550.P1136096764766705031`, by `A160550.P1136096764766705031.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160550.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160680.P1309216195083858427

`A000005(A000045(n+2))+A000005(A000045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160680.P1309216195083858427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000045 (n + 2)).toNat + A000005 (A000045 (n + 1)).toNat

end

end A160680.P1309216195083858427

noncomputable section

/-- A160680: a(n) = sigma_0(F(n-1)) + sigma_0(F(n-2)) where F=A000045 and sigma_0=A000005.

Offset 3, canonical program `A160680.P1309216195083858427`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000045(n+2))+A000005(A000045(n+1))` (program `A160680.P1309216195083858427`, by `A160680.P1309216195083858427.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160680 (n : ℕ) : ℤ :=
  A160680.P1309216195083858427.a (n - 3)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000045(n+2))+A000005(A000045(n+1))` (program `A160680.P1309216195083858427`, by `A160680.P1309216195083858427.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160680.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160812.P12792635546813163810

`A161205(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160812.P12792635546813163810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (n + 1) - A000005 (n + 1)

end

end A160812.P12792635546813163810

noncomputable section

/-- A160812: a(n) = A161205(n)-A000005(n).

Offset 1, canonical program `A160812.P12792635546813163810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160812 (n : ℕ) : ℤ :=
  A160812.P12792635546813163810.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161200.P10289639632069729149

`(n+1-7*n/5)*A161202(n)`
-/

namespace A161200.P10289639632069729149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) - 7 * ((n : ℚ) / 5)) * (A161202 n : ℚ)

end

end A161200.P10289639632069729149

noncomputable section

/-- A161200: Numerators in expansion of (1-x)^(3/2).

Offset 0, canonical program `A161200.P10289639632069729149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A161200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161200.P10289639632069729149.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A161200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161660.P6730900686295854784

`1-(n+1)%A000005(a(n-1))+n` with `a(0)=1`
-/

namespace A161660.P6730900686295854784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (n + 1 : ℤ) (A000005 (a (n - 1)).toNat) + (n : ℤ)

end

end A161660.P6730900686295854784

noncomputable section

/-- A161660: a(1)=1; a(n) = largest multiple of {number of divisors of a(n-1)} that is <= n.

Offset 1, canonical program `A161660.P6730900686295854784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161660 (n : ℕ) : ℤ :=
  A161660.P6730900686295854784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161758.P18294308549773577487

`A175851(n+2)+3`
-/

namespace A161758.P18294308549773577487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2) + 3

end

end A161758.P18294308549773577487

noncomputable section

/-- A161758: a(n)=n-p+1 where p is the maximal prime less than n-2.

Offset 5, canonical program `A161758.P18294308549773577487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161758 (n : ℕ) : ℤ :=
  A161758.P18294308549773577487.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161911.P18164703308584755265

`A001223(n+1)-A000005(n+1)`
-/

namespace A161911.P18164703308584755265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A000005 (n + 1)

end

end A161911.P18164703308584755265

noncomputable section

/-- A161911: a(n) is the n-th difference between consecutive primes minus the number of divisors of n.

Offset 1, canonical program `A161911.P18164703308584755265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161911 (n : ℕ) : ℤ :=
  A161911.P18164703308584755265.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162189.P6510354814338670986

`lt[A001223(n+1), A000005(n+1)]+1`
-/

namespace A162189.P6510354814338670986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162189.P6510354814338670986

noncomputable section

/-- A162189: Numbers k such that A001223(k) < A000005(k).

Offset 1, canonical program `A162189.P6510354814338670986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162189 (n : ℕ) : ℤ :=
  (A162189.P6510354814338670986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162189.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162615.P14757173602673215028

`A162616(n+1)-A068601(A002024(n+1))`
-/

namespace A162615.P14757173602673215028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162616 (n + 1) - A068601 (A002024 (n + 1)).toNat

end

end A162615.P14757173602673215028

noncomputable section

/-- A162615: Triangle read by rows in which row n lists n terms, starting with n, such that the difference between successive terms is equal to n^3 - 1 = A068601(n).

Offset 1, canonical program `A162615.P14757173602673215028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162615 (n : ℕ) : ℤ :=
  A162615.P14757173602673215028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162648.P16341361686892732013

`A079523(n+1)-1`
-/

namespace A162648.P16341361686892732013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) - 1

end

end A162648.P16341361686892732013

noncomputable section

/-- A162648: Locations of patterns 1001 or 0110 in the Thue-Morse sequence A010060.

Offset 1, canonical program `A162648.P16341361686892732013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162648 (n : ℕ) : ℤ :=
  A162648.P16341361686892732013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162664.P15212923218758059815

`A000203(n+1)+A000005(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162664.P15212923218758059815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000005 (n + 1) ^ 2

end

end A162664.P15212923218758059815

noncomputable section

/-- A162664: a(n) = sigma(n) + tau(n)^2.

Offset 1, canonical program `A162664.P15212923218758059815`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000005(n+1)²` (program `A162664.P15212923218758059815`, by `A162664.P15212923218758059815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A162664 (n : ℕ) : ℤ :=
  A162664.P15212923218758059815.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000005(n+1)²` (program `A162664.P15212923218758059815`, by `A162664.P15212923218758059815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A162664.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A162665.P5042008694579538245

`A001157(n+1)+3*A000203(n+1)*A000005(n+1)+A000005(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162665.P5042008694579538245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + 3 * A000203 (n + 1) * A000005 (n + 1) + A000005 (n + 1) ^ 3

end

end A162665.P5042008694579538245

noncomputable section

/-- A162665: a(n) = sigma_2(n) + 3 sigma(n) tau(n) + tau(n)^3.

Offset 1, canonical program `A162665.P5042008694579538245`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(n+1)+3*A000203(n+1)*A000005(n+1)+A000005(n+1)^3` (program `A162665.P5042008694579538245`, by `A162665.P5042008694579538245.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A162665 (n : ℕ) : ℤ :=
  A162665.P5042008694579538245.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(n+1)+3*A000203(n+1)*A000005(n+1)+A000005(n+1)^3` (program `A162665.P5042008694579538245`, by `A162665.P5042008694579538245.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A162665.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A162907.P12652388002457214541

`A000217(A000203(n+1))-A000217(A000005(n+1)-1)`
-/

namespace A162907.P12652388002457214541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat - A000217 (A000005 (n + 1) - 1).toNat

end

end A162907.P12652388002457214541

noncomputable section

/-- A162907: Sum of all numbers from tau(n) to sigma(n).

Offset 1, canonical program `A162907.P12652388002457214541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162907 (n : ℕ) : ℤ :=
  A162907.P12652388002457214541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162947.P2383251509124428934

`eq[7, C(7, A000005(n+1))]+1`
-/

namespace A162947.P2383251509124428934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162947.P2383251509124428934

noncomputable section

/-- A162947: Numbers k such that the product of all divisors of k equals k^3.

Offset 1, canonical program `A162947.P2383251509124428934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162947 (n : ℕ) : ℤ :=
  (A162947.P2383251509124428934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163105.P10077423467540398757

`A000005(A000203(A000005(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163105.P10077423467540398757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (A000005 (n + 1)).toNat).toNat

end

end A163105.P10077423467540398757

noncomputable section

/-- A163105: a(n) = tau(sigma(tau(n))), where tau = number of divisors of n (A000005), and sigma = sum of divisors of n (A000203).

Offset 1, canonical program `A163105.P10077423467540398757`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000203(A000005(n+1)))` (program `A163105.P10077423467540398757`, by `A163105.P10077423467540398757.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163105 (n : ℕ) : ℤ :=
  A163105.P10077423467540398757.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000203(A000005(n+1)))` (program `A163105.P10077423467540398757`, by `A163105.P10077423467540398757.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163105.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163106.P6082347552110062596

`A000203(A000203(A000005(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163106.P6082347552110062596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A000005 (n + 1)).toNat).toNat

end

end A163106.P6082347552110062596

noncomputable section

/-- A163106: a(n) = sigma(sigma(tau(n))), where tau = number of divisors and sigma = sum of divisors.

Offset 1, canonical program `A163106.P6082347552110062596`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000203(A000005(n+1)))` (program `A163106.P6082347552110062596`, by `A163106.P6082347552110062596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163106 (n : ℕ) : ℤ :=
  A163106.P6082347552110062596.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000203(A000005(n+1)))` (program `A163106.P6082347552110062596`, by `A163106.P6082347552110062596.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163106.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163107.P1442819925276472051

`A000005(A000005(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163107.P1442819925276472051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A000203 (n + 1)).toNat).toNat

end

end A163107.P1442819925276472051

noncomputable section

/-- A163107: a(n) = tau(tau(sigma(n))), where tau = A000005, the number of divisors, and sigma = A000203, the sum of divisors of n.

Offset 1, canonical program `A163107.P1442819925276472051`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000005(A000203(n+1)))` (program `A163107.P1442819925276472051`, by `A163107.P1442819925276472051.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163107 (n : ℕ) : ℤ :=
  A163107.P1442819925276472051.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000005(A000203(n+1)))` (program `A163107.P1442819925276472051`, by `A163107.P1442819925276472051.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163107.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163108.P12665322247417856184

`A000203(A000005(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163108.P12665322247417856184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A000203 (n + 1)).toNat).toNat

end

end A163108.P12665322247417856184

noncomputable section

/-- A163108: a(n) = sigma(tau(sigma(n))).

Offset 1, canonical program `A163108.P12665322247417856184`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000005(A000203(n+1)))` (program `A163108.P12665322247417856184`, by `A163108.P12665322247417856184.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163108 (n : ℕ) : ℤ :=
  A163108.P12665322247417856184.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000005(A000203(n+1)))` (program `A163108.P12665322247417856184`, by `A163108.P12665322247417856184.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163108.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163163.P5673829929796067677

`A000203(n+1)+A000005(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163163.P5673829929796067677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000005 (n + 1) - (n + 1 : ℤ)

end

end A163163.P5673829929796067677

noncomputable section

/-- A163163: a(n) = sigma(n) + tau(n) - n.

Offset 1, canonical program `A163163.P5673829929796067677`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000005(n+1)-(n+1)` (program `A163163.P5673829929796067677`, by `A163163.P5673829929796067677.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163163 (n : ℕ) : ℤ :=
  A163163.P5673829929796067677.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000005(n+1)-(n+1)` (program `A163163.P5673829929796067677`, by `A163163.P5673829929796067677.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163163.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163180.P13831125964064735918

`A000005(n+1)+A004125(n+1)`
-/

namespace A163180.P13831125964064735918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A004125 (n + 1)

end

end A163180.P13831125964064735918

noncomputable section

/-- A163180: a(n) = tau(n) + Sum_{k=1..n} (n mod k).

Offset 1, canonical program `A163180.P13831125964064735918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163180 (n : ℕ) : ℤ :=
  A163180.P13831125964064735918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163299.P17070821777984996643

`A000005(n+1)^ceil(log(n+1)/log(2))`
-/

namespace A163299.P17070821777984996643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (⌈Real.log (n + 1 : ℝ) / Real.log (2 : ℝ)⌉ : ℤ)

end

end A163299.P17070821777984996643

noncomputable section

/-- A163299: a(n) = (the number of divisors of n)^(the binary order of n).

Offset 1, canonical program `A163299.P17070821777984996643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163299.P17070821777984996643.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163366.P615774482122360828

`A260611(n+1)²%A000040(n+1)`
-/

namespace A163366.P615774482122360828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260611 (n + 1) ^ 2) (A000040 (n + 1))

end

end A163366.P615774482122360828

noncomputable section

/-- A163366: a(n) = (-1)^floor((prime(n)+2)/2) mod prime(n).

Offset 1, canonical program `A163366.P615774482122360828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163366 (n : ℕ) : ℤ :=
  A163366.P615774482122360828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163515.P10456658372542648136

`∑{d}[A018252(n+2), A297109(#)]`
-/

namespace A163515.P10456658372542648136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A163515.P10456658372542648136

noncomputable section

/-- A163515: If n-th composite is the product of k1-th prime, k2-th prime, ..., kr-th prime then set a(n) = k1 + k2 + ... + kr.

Offset 1, canonical program `A163515.P10456658372542648136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A163515 (n : ℕ) : ℤ :=
  A163515.P10456658372542648136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A163515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163523.P17500706477665394313

`A000005(n+1)+A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163523.P17500706477665394313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A001221 (n + 1)

end

end A163523.P17500706477665394313

noncomputable section

/-- A163523: a(n) = tau(n) + omega(n).

Offset 1, canonical program `A163523.P17500706477665394313`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+A001221(n+1)` (program `A163523.P17500706477665394313`, by `A163523.P17500706477665394313.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163523 (n : ℕ) : ℤ :=
  A163523.P17500706477665394313.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+A001221(n+1)` (program `A163523.P17500706477665394313`, by `A163523.P17500706477665394313.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A163523.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A163563.P13970058634026904744

`A001462(n+2)-1`
-/

namespace A163563.P13970058634026904744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 2) - 1

end

end A163563.P13970058634026904744

noncomputable section

/-- A163563: n occurs 1+a(n) times starting with a(1)=1.

Offset 1, canonical program `A163563.P13970058634026904744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163563 (n : ℕ) : ℤ :=
  A163563.P13970058634026904744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163644.P53681428900422597

`A034386(n)/A163641(n)`
-/

namespace A163644.P53681428900422597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A163641 n : ℚ)

end

end A163644.P53681428900422597

noncomputable section

/-- A163644: Product of primes which do not exceed n and do not divide the swinging factorial n$ (A056040).

Offset 0, canonical program `A163644.P53681428900422597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163644.P53681428900422597.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164042.P10806656503751704319

`p?[2*A143827(n+1)-A057427(n)]`
-/

namespace A164042.P10806656503751704319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143827 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P10806656503751704319

noncomputable section

/-- A164042: Primes p such that 2*p^2+4*p+1 is also prime.

Offset 1, canonical program `A164042.P10806656503751704319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164042 (n : ℕ) : ℤ :=
  A164042.P10806656503751704319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164865.P8354172017210548301

`A076290(A102467(n+2))`
-/

namespace A164865.P8354172017210548301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A102467 (n + 2)).toNat

end

end A164865.P8354172017210548301

noncomputable section

/-- A164865: Sum of the distinct semiprime divisors of the n-th number with two or more distinct semiprime divisors.

Offset 1, canonical program `A164865.P8354172017210548301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A102467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164865 (n : ℕ) : ℤ :=
  A164865.P8354172017210548301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A102467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165319.P7856077442135454805

`p?[n*A000120(A000005(n+1))]`
-/

namespace A165319.P7856077442135454805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165319.P7856077442135454805

noncomputable section

/-- A165319: Primes p where the number of divisors of p+1 is a power of 2.

Offset 1, canonical program `A165319.P7856077442135454805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4777 terms. -/
def A165319 (n : ℕ) : ℤ :=
  A165319.P7856077442135454805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4777 terms. -/
def A165319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165957.P16780599109594843717

`A007954(A018252(n+1))`
-/

namespace A165957.P16780599109594843717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A018252 (n + 1)).toNat

end

end A165957.P16780599109594843717

noncomputable section

/-- A165957: Product of the digits of the n-th nonprime.

Offset 1, canonical program `A165957.P16780599109594843717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165957 (n : ℕ) : ℤ :=
  A165957.P16780599109594843717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A165957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166248.P1846598591514235586

`abs(n+1-A004125(n+1))`
-/

namespace A166248.P1846598591514235586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A004125 (n + 1)|

end

end A166248.P1846598591514235586

noncomputable section

/-- A166248: a(n) is the absolute value of n minus sum of all the remainders modulo the numbers below n.

Offset 1, canonical program `A166248.P1846598591514235586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166248 (n : ℕ) : ℤ :=
  A166248.P1846598591514235586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166344.P1539727011771892900

`A176200(n)+1-A166345(n+1)`
-/

namespace A166344.P1539727011771892900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A166345 (n + 1))

end

end A166344.P1539727011771892900

noncomputable section

/-- A166344: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+6*x+x^2)/(1-x)^4, read by rows.

Offset 1, canonical program `A166344.P1539727011771892900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166344 (n : ℕ) : ℤ :=
  A166344.P1539727011771892900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166569.P9203095429192079381

`comp[A167056(n+1)]`
-/

namespace A166569.P9203095429192079381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166569.P9203095429192079381

noncomputable section

/-- A166569: Numbers n such that 12*n+7 is not prime.

Offset 1, canonical program `A166569.P9203095429192079381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166569 (n : ℕ) : ℤ :=
  (A166569.P9203095429192079381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166777.P11006328985908807965

`A166815(n+1)+A166838(n+1)+C(n, 3)`
-/

namespace A166777.P11006328985908807965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166815 (n + 1) + (A166838 (n + 1) + (Nat.choose n 3 : ℤ))

end

end A166777.P11006328985908807965

noncomputable section

/-- A166777: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

Offset 1, canonical program `A166777.P11006328985908807965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166777 (n : ℕ) : ℤ :=
  A166777.P11006328985908807965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166801.P8919905892571881149

`A166819(n+1)+A166776(n+1)`
-/

namespace A166801.P8919905892571881149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166819 (n + 1) + A166776 (n + 1)

end

end A166801.P8919905892571881149

noncomputable section

/-- A166801: Number of nX3 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

Offset 1, canonical program `A166801.P8919905892571881149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166801 (n : ℕ) : ℤ :=
  A166801.P8919905892571881149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166826.P2968407093757897724

`A166838(n+1)+C(n, 3)`
-/

namespace A166826.P2968407093757897724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166838 (n + 1) + (Nat.choose n 3 : ℤ)

end

end A166826.P2968407093757897724

noncomputable section

/-- A166826: Number of n X 2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nonincreasing order.

Offset 1, canonical program `A166826.P2968407093757897724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166826 (n : ℕ) : ℤ :=
  A166826.P2968407093757897724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167133.P12754448107751879519

`p?[A000005(n+1)+A010051(n+1)+A001222(n+1)]`
-/

namespace A167133.P12754448107751879519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A010051 (n + 1) + A001222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167133.P12754448107751879519

noncomputable section

/-- A167133: Primes of the form (number of prime factors of k-th composite) plus (number of divisors of k-th composite).

Offset 1, canonical program `A167133.P12754448107751879519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167133 (n : ℕ) : ℤ :=
  A167133.P12754448107751879519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167412.P9290723101573142584

`p?[(n+1)*(A000005(A003132(n+1)+1)-1)]`
-/

namespace A167412.P9290723101573142584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (A003132 (n + 1) + 1).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167412.P9290723101573142584

noncomputable section

/-- A167412: Primes p such that sum of (digits^2) + 1 is prime.

Offset 1, canonical program `A167412.P9290723101573142584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A167412 (n : ℕ) : ℤ :=
  A167412.P9290723101573142584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A167412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167705.P2702715300198025274

`lt[5, A175851(n+2)]`
-/

namespace A167705.P2702715300198025274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P2702715300198025274

noncomputable section

/-- A167705: Composite numbers having four composite nearest neighbors.

Offset 1, canonical program `A167705.P2702715300198025274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167705 (n : ℕ) : ℤ :=
  (A167705.P2702715300198025274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167776.P18219303921041330074

`lt[7, A175851(n+3)]`
-/

namespace A167776.P18219303921041330074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167776.P18219303921041330074

noncomputable section

/-- A167776: Composite numbers having six composite nearest-neighbors.

Offset 1, canonical program `A167776.P18219303921041330074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167776 (n : ℕ) : ℤ :=
  (A167776.P18219303921041330074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168138.P8220877735913659820

`A000045(n+2)^A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168138.P8220877735913659820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A168138.P8220877735913659820

noncomputable section

/-- A168138: a(n) = Fibonacci(n+1)^tau(n).

Offset 1, canonical program `A168138.P8220877735913659820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168138.P8220877735913659820.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A169812.P3591227183992198110

`xor(n+1, A000005(n+1))`
-/

namespace A169812.P3591227183992198110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000005 (n + 1))

end

end A169812.P3591227183992198110

noncomputable section

/-- A169812: a(n) = n XOR d(n) (cf. A000005).

Offset 1, canonical program `A169812.P3591227183992198110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169812 (n : ℕ) : ℤ :=
  A169812.P3591227183992198110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A170804.P14400445769344292584

`A006899(n)+a(n-1)` with `a(0)=1`
-/

namespace A170804.P14400445769344292584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006899 n + a (n - 1)

end

end A170804.P14400445769344292584

noncomputable section

/-- A170804: Partial sums of (A006899, prefixed by a 1).

Offset 1, canonical program `A170804.P14400445769344292584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. -/
def A170804 (n : ℕ) : ℤ :=
  A170804.P14400445769344292584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. -/
def A170804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170805.P803000743788282295

`A006899(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A170805.P803000743788282295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006899 (n - 1) + a (n - 1)

end

end A170805.P803000743788282295

noncomputable section

/-- A170805: a(n) = A170803(n-1) + 2, with a(0) = 1, a(1) = 2.

Offset 0, canonical program `A170805.P803000743788282295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A170805 (n : ℕ) : ℤ :=
  A170805.P803000743788282295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A170805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170991.P6823033548944511429

`2*A126858(n+2)`
-/

namespace A170991.P6823033548944511429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126858 (n + 2)

end

end A170991.P6823033548944511429

noncomputable section

/-- A170991: Number of genus 2, degree n, simply ramified covers of an elliptic curve.

Offset 2, canonical program `A170991.P6823033548944511429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A170991 (n : ℕ) : ℤ :=
  A170991.P6823033548944511429.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A170991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171070.P13316125912663666615

`A178482(Δ[n²])`
-/

namespace A171070.P13316125912663666615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178482 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A171070.P13316125912663666615

noncomputable section

/-- A171070: A bisection of A178482.

Offset 1, canonical program `A171070.P13316125912663666615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A171070 (n : ℕ) : ℤ :=
  A171070.P13316125912663666615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A171070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171153.P4763760712593806838

`A308833(n+1)+A057428(n)`
-/

namespace A171153.P4763760712593806838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1) + A057428 n

end

end A171153.P4763760712593806838

noncomputable section

/-- A171153: Numbers that are not in A169606.

Offset 1, canonical program `A171153.P4763760712593806838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171153 (n : ℕ) : ℤ :=
  A171153.P4763760712593806838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171228.P4419088175126916163

`n^A013632(n)`
-/

namespace A171228.P4419088175126916163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A013632 n : ℤ)

end

end A171228.P4419088175126916163

noncomputable section

/-- A171228: n^(p-n) where p is smallest prime > n.

Offset 0, canonical program `A171228.P4419088175126916163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. -/
def A171228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171228.P4419088175126916163.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. -/
def A171228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171240.P10536427391965387438

`(n+1)^A013632(n+1)+A013632(n+1)^(n+1)`
-/

namespace A171240.P10536427391965387438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A013632 (n + 1) : ℤ) + (A013632 (n + 1) ^ (n + 1) : ℚ)

end

end A171240.P10536427391965387438

noncomputable section

/-- A171240: a(n) = n^d+d^n where d = A013632(n) is the distance to the next prime.

Offset 1, canonical program `A171240.P10536427391965387438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A171240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171240.P10536427391965387438.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A171240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171762.P5050535657731321282

`∑{#}[(n+2)²-1-((n+1)²+1), A000005(#+(n+1)²+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171762.P5050535657731321282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1 - ((n + 1) ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (k + ((n + 1) ^ 2 + 1))

end

end A171762.P5050535657731321282

noncomputable section

/-- A171762: a(n) = Sum_{k=n^2+1..(n+1)^2-1} tau(k).

Offset 1, canonical program `A171762.P5050535657731321282`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[(n+2)²-1-((n+1)²+1), A000005(#+(n+1)²+1)]` (program `A171762.P5050535657731321282`, by `A171762.P5050535657731321282.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A171762 (n : ℕ) : ℤ :=
  A171762.P5050535657731321282.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[(n+2)²-1-((n+1)²+1), A000005(#+(n+1)²+1)]` (program `A171762.P5050535657731321282`, by `A171762.P5050535657731321282.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A171762.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A171784.P11142179382414544300

`A000005(6*A014973(n+4))`
-/

namespace A171784.P11142179382414544300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * A014973 (n + 4)).toNat

end

end A171784.P11142179382414544300

noncomputable section

/-- A171784: Fourth smallest divisor of smallest number having exactly n divisors.

Offset 4, canonical program `A171784.P11142179382414544300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A171784 (n : ℕ) : ℤ :=
  A171784.P11142179382414544300.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A171784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171857.P15441258118698206598

`Δ[A171856(n+1)/2]`
-/

namespace A171857.P15441258118698206598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171856 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171857.P15441258118698206598

noncomputable section

/-- A171857: Number of n-step up-side self-avoiding walks on the lattice strip {0,1,2} x Z (up-side means that the walks move up and sideways but not down).

Offset 0, canonical program `A171857.P15441258118698206598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A171857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A171857.P15441258118698206598.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A171857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171899.P7149812686449934114

`(Δ[char[A216345(n+1)]]+2)%(n+1)`
-/

namespace A171899.P7149812686449934114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) (n + 1 : ℤ)

end

end A171899.P7149812686449934114

noncomputable section

/-- A171899: Backwards van Eck transform of A000002.

Offset 1, canonical program `A171899.P7149812686449934114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171899 (n : ℕ) : ℤ :=
  A171899.P7149812686449934114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172056.P9937115509810461680

`p?[lt[8, A175851(2*n+3)]]`
-/

namespace A172056.P9937115509810461680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172056.P9937115509810461680

noncomputable section

/-- A172056: Primes p such that 2*p+-1 and 2*p+-3 are all composites.

Offset 1, canonical program `A172056.P9937115509810461680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172056 (n : ℕ) : ℤ :=
  (A172056.P9937115509810461680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173021.P684069692350449466

`∑[char[A173024(n+1)]]`
-/

namespace A173021.P684069692350449466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P684069692350449466

noncomputable section

/-- A173021: Number of numbers <= n whose binary representation is without isolated ones or isolated double ones.

Offset 0, canonical program `A173021.P684069692350449466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173021 (n : ℕ) : ℤ :=
  (A173021.P684069692350449466.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173440.P13536661902646311987

`A000005(n+1)-A173439(n+1)`
-/

namespace A173440.P13536661902646311987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A173439 (n + 1)

end

end A173440.P13536661902646311987

noncomputable section

/-- A173440: Number of divisors d of number n such that sigma(d) does not divide sigma(n).

Offset 1, canonical program `A173440.P13536661902646311987`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173440 (n : ℕ) : ℤ :=
  A173440.P13536661902646311987.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174466.P1653296909060214153

`∑{d}[n+1, #*A000203((n+1)/#)*A000005(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174466.P1653296909060214153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d

end

end A174466.P1653296909060214153

noncomputable section

/-- A174466: a(n) = Sum_{d|n} d*sigma(n/d)*tau(d).

Offset 1, canonical program `A174466.P1653296909060214153`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000203((n+1)/#)*A000005(#)]` (program `A174466.P1653296909060214153`, by `A174466.P1653296909060214153.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174466 (n : ℕ) : ℤ :=
  A174466.P1653296909060214153.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000203((n+1)/#)*A000005(#)]` (program `A174466.P1653296909060214153`, by `A174466.P1653296909060214153.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174478.P15471531554863312844

`∑{d}[n+1, #*2^((n+1)/#)*A000005(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174478.P15471531554863312844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℝ) * (2 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ) * (A000005 d : ℝ)

end

end A174478.P15471531554863312844

noncomputable section

/-- A174478: a(n) = Sum_{d|n} d*2^(n/d)*tau(d).

Offset 1, canonical program `A174478.P15471531554863312844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174478.P15471531554863312844.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174728.P15930408949238203694

`A008292(n+1)+A137688(n)-A257609(n)`
-/

namespace A174728.P15930408949238203694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A137688 n - A257609 n)

end

end A174728.P15930408949238203694

noncomputable section

/-- A174728: Triangle read by rows: T(n, m, q) = (1-q^n)*Eulerian(n+1, m) - (1-q^n) + 1, with q = 2.

Offset 0, canonical program `A174728.P15930408949238203694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1856 terms. -/
def A174728 (n : ℕ) : ℤ :=
  A174728.P15930408949238203694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1856 terms. -/
def A174728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174729.P18166809818067086518

`A008292(n+1)+A098355(n)-A257620(n)`
-/

namespace A174729.P18166809818067086518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A098355 n - A257620 n)

end

end A174729.P18166809818067086518

noncomputable section

/-- A174729: Triangle read by rows: T(n,k) = (1-3^n) * Eulerian(n + 1, k) + 3^n.

Offset 0, canonical program `A174729.P18166809818067086518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1564 terms. -/
def A174729 (n : ℕ) : ℤ :=
  A174729.P18166809818067086518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1564 terms. -/
def A174729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174875.P9263928254306846984

`A000203(row(n)+1)%A000005(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174875.P9263928254306846984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (SequenceMachineLib.triRow n + 1)) (A000005 (SequenceMachineLib.triCol n + 1))

end

end A174875.P9263928254306846984

noncomputable section

/-- A174875: Triangle read by rows: T(n,k) = sigma(n) mod tau(k), where sigma(.) is the sum of divisors and tau(.) is the number of divisors.

Offset 1, canonical program `A174875.P9263928254306846984`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(row(n)+1)%A000005(col(n)+1)` (program `A174875.P9263928254306846984`, by `A174875.P9263928254306846984.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174875 (n : ℕ) : ℤ :=
  A174875.P9263928254306846984.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(row(n)+1)%A000005(col(n)+1)` (program `A174875.P9263928254306846984`, by `A174875.P9263928254306846984.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A174875.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174917.P15119638385152416329

`p?[A023219(n+1)+2]-2`
-/

namespace A174917.P15119638385152416329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174917.P15119638385152416329

noncomputable section

/-- A174917: Lesser of twin primes p1 such that p2+(p2^2-p1^2) is a prime number.

Offset 1, canonical program `A174917.P15119638385152416329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174917 (n : ℕ) : ℤ :=
  A174917.P15119638385152416329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175144.P696110972913207213

`A000005(A006093(n+1))+A000005(A008864(n+1))`
-/

namespace A175144.P696110972913207213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 1)).toNat + A000005 (A008864 (n + 1)).toNat

end

end A175144.P696110972913207213

noncomputable section

/-- A175144: a(n) = d(p(n)-1) + d(p(n)+1), where p(n) is the n-th prime, and where d(m) is the number of divisors of m.

Offset 1, canonical program `A175144.P696110972913207213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175144 (n : ℕ) : ℤ :=
  A175144.P696110972913207213.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175200.P5264052223094873416

`eq[0, A336387(n+1)]+1`
-/

namespace A175200.P5264052223094873416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175200.P5264052223094873416

noncomputable section

/-- A175200: Numbers k such that rad(k) divides sigma(k).

Offset 1, canonical program `A175200.P5264052223094873416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A175200 (n : ℕ) : ℤ :=
  (A175200.P5264052223094873416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A175200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175304.P3358269145109640044

`eq[A000005(A000005(n+1)+n+1), A000005(n+1)]+1`
-/

namespace A175304.P3358269145109640044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175304.P3358269145109640044

noncomputable section

/-- A175304: A positive integer n is included if d(n+d(n)) = d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A175304.P3358269145109640044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8941 terms. -/
def A175304 (n : ℕ) : ℤ :=
  (A175304.P3358269145109640044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8941 terms. -/
def A175304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175412.P16355508386573627050

`p?[n*A001222(A000005(n+1)+n)]`
-/

namespace A175412.P16355508386573627050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A000005 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175412.P16355508386573627050

noncomputable section

/-- A175412: Those primes p where p+{the number of divisors of (p+1)} is prime.

Offset 1, canonical program `A175412.P16355508386573627050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175412 (n : ℕ) : ℤ :=
  A175412.P16355508386573627050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175454.P11737271793219422854

`(A000005(n+1)-1)*(A000005(n+2)-1)`
-/

namespace A175454.P11737271793219422854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - 1) * (A000005 (n + 2) - 1)

end

end A175454.P11737271793219422854

noncomputable section

/-- A175454: a(n) = number of divisors of n(n+1) that divide neither n nor n+1.

Offset 1, canonical program `A175454.P11737271793219422854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175454 (n : ℕ) : ℤ :=
  A175454.P11737271793219422854.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175462.P10194132088798794636

`A000005(5+8*n)`
-/

namespace A175462.P10194132088798794636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 + 8 * n)

end

end A175462.P10194132088798794636

noncomputable section

/-- A175462: Number of divisors of integers of the form 5 + 8n.

Offset 0, canonical program `A175462.P10194132088798794636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175462 (n : ℕ) : ℤ :=
  A175462.P10194132088798794636.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175495.P2939561428549324534

`lt[n, A000079(A000005(n+1))]+1`
-/

namespace A175495.P2939561428549324534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175495.P2939561428549324534

noncomputable section

/-- A175495: Positive integers k such that k < 2^d(k), where d(k) is the number of divisors of k.

Offset 1, canonical program `A175495.P2939561428549324534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175495 (n : ℕ) : ℤ :=
  (A175495.P2939561428549324534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175625.P17769439164711257360

`p?[A192109(n+3)+1]`
-/

namespace A175625.P17769439164711257360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192109 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175625.P17769439164711257360

noncomputable section

/-- A175625: Numbers k such that gcd(k, 6) = 1, 2^(k-1) == 1 (mod k), and 2^(k-3) == 1 (mod (k-1)/2).

Offset 1, canonical program `A175625.P17769439164711257360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. -/
def A175625 (n : ℕ) : ℤ :=
  A175625.P17769439164711257360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. -/
def A175625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175990.P11720610328343319649

`A011973(A049068(n+2))-A011973(n+1)`
-/

namespace A175990.P11720610328343319649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A049068 (n + 2)).toNat - A011973 (n + 1)

end

end A175990.P11720610328343319649

noncomputable section

/-- A175990: Irregular triangle read by rows: t(n,m) = binomial(n-m-1,m+1) for 0 <= m <= floor((n-1)/2).

Offset 2, canonical program `A175990.P11720610328343319649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9800 terms. -/
def A175990 (n : ℕ) : ℤ :=
  A175990.P11720610328343319649.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9800 terms. -/
def A175990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176209.P9314758080330930000

`filter[A376357(n+1), A049240(#)]`
-/

namespace A176209.P9314758080330930000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A176209.P9314758080330930000

noncomputable section

/-- A176209: Numbers that can be greedily decomposed as a sum of two or more squares >= 4.

Offset 1, canonical program `A176209.P9314758080330930000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9826 terms. -/
def A176209 (n : ℕ) : ℤ :=
  A176209.P9314758080330930000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9826 terms. -/
def A176209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176346.P2858540763397008978

`A048158(n+1)+A051777(n+1)+1`
-/

namespace A176346.P2858540763397008978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + (A051777 (n + 1) + 1)

end

end A176346.P2858540763397008978

noncomputable section

/-- A176346: A dual remainder symmetrical triangle sequence T(n, m) = 1 + 2*(n+1) - (m+1)*floor((n+1)/(m+1)) - (n-m+1)*floor((n+1)/( n-m+1)), read by rows.

Offset 0, canonical program `A176346.P2858540763397008978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346 (n : ℕ) : ℤ :=
  A176346.P2858540763397008978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176615.P3860707824598876643

`∑[A320278(n+1)]`
-/

namespace A176615.P3860707824598876643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176615.P3860707824598876643

noncomputable section

/-- A176615: Number of edges in the graph on n vertices, labeled 1 to n, where two vertices are joined just if their labels sum to a perfect square.

Offset 1, canonical program `A176615.P3860707824598876643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176615 (n : ℕ) : ℤ :=
  A176615.P3860707824598876643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176902.P2034357475414807943

`p?[A323162(n+1)+2*n]`
-/

namespace A176902.P2034357475414807943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176902.P2034357475414807943

noncomputable section

/-- A176902: Primes p such that p-1 and p+1 are both non-semiprime.

Offset 1, canonical program `A176902.P2034357475414807943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176902 (n : ℕ) : ℤ :=
  A176902.P2034357475414807943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177024.P16288091499050602830

`eq[A000005(n+1), A062173(n+1)]+1`
-/

namespace A177024.P16288091499050602830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177024.P16288091499050602830

noncomputable section

/-- A177024: Numbers k such that 2^(k-1) mod k = number of divisors of k.

Offset 1, canonical program `A177024.P16288091499050602830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A177024 (n : ℕ) : ℤ :=
  (A177024.P16288091499050602830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A177024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177149.P8144833059286102892

`A000720(A052034(n+1))`
-/

namespace A177149.P8144833059286102892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A052034 (n + 1)).toNat

end

end A177149.P8144833059286102892

noncomputable section

/-- A177149: Indices n such that the sums of the squares of the digits of prime(n) are prime.

Offset 1, canonical program `A177149.P8144833059286102892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A177149 (n : ℕ) : ℤ :=
  A177149.P8144833059286102892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A177149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177338.P12772559038533815671

`(2^(row(n)+1-A000005(col(n)+1)))%(row(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177338.P12772559038533815671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - A000005 (SequenceMachineLib.triCol n + 1) : ℤ))) (SequenceMachineLib.triRow n + 1 : ℤ)

end

end A177338.P12772559038533815671

noncomputable section

/-- A177338: Triangle read by rows: T(n,k) = 2^(n-tau(k)) mod n, where tau(.) is the number of divisors of its argument.

Offset 1, canonical program `A177338.P12772559038533815671`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(row(n)+1-A000005(col(n)+1)))%(row(n)+1)` (program `A177338.P12772559038533815671`, by `A177338.P12772559038533815671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A177338 (n : ℕ) : ℤ :=
  A177338.P12772559038533815671.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(row(n)+1-A000005(col(n)+1)))%(row(n)+1)` (program `A177338.P12772559038533815671`, by `A177338.P12772559038533815671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A177338.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A177991.P11359817822590575411

`A115514(n+1)/A177994(n)`
-/

namespace A177991.P11359817822590575411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) : ℚ) / (A177994 n : ℚ)

end

end A177991.P11359817822590575411

noncomputable section

/-- A177991: Triangle read by rows, A070909 * A177990.

Offset 0, canonical program `A177991.P11359817822590575411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177991.P11359817822590575411.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178551.P17050993605296381900

`p?[A043498(n+1)]`
-/

namespace A178551.P17050993605296381900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178551.P17050993605296381900

noncomputable section

/-- A178551: Primes with exactly two 2's.

Offset 1, canonical program `A178551.P17050993605296381900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A178551 (n : ℕ) : ℤ :=
  A178551.P17050993605296381900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A178551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178739.P3877142655483989971

`filter[A030628(n+2), A355823(#)]`
-/

namespace A178739.P3877142655483989971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A178739.P3877142655483989971

noncomputable section

/-- A178739: Product of the 4th power of a prime (A030514) and a different prime (p^4*q).

Offset 1, canonical program `A178739.P3877142655483989971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178739 (n : ℕ) : ℤ :=
  A178739.P3877142655483989971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178788.P8417566413823769035

`char[A320486(n)]`
-/

namespace A178788.P8417566413823769035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178788.P8417566413823769035

noncomputable section

/-- A178788: Characteristic function of numbers having distinct digits in their decimal representation.

Offset 0, canonical program `A178788.P8417566413823769035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A178788 (n : ℕ) : ℤ :=
  (A178788.P8417566413823769035.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A178788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179655.P1047165839059861457

`dr(A005101(n+1))`
-/

namespace A179655.P1047165839059861457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005101 (n + 1))

end

end A179655.P1047165839059861457

noncomputable section

/-- A179655: Digital root of n-th abundant number.

Offset 1, canonical program `A179655.P1047165839059861457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179655 (n : ℕ) : ℤ :=
  (A179655.P1047165839059861457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179941.P10165421184791566737

`A000005(n+1)-A000038(A096582(n+1))`
-/

namespace A179941.P10165421184791566737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000038 (A096582 (n + 1)).toNat

end

end A179941.P10165421184791566737

noncomputable section

/-- A179941: Number of times n appears in a 100 X 100 multiplication table.

Offset 1, canonical program `A179941.P10165421184791566737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A179941 (n : ℕ) : ℤ :=
  A179941.P10165421184791566737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A179941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181296.P2159209662027622070

`2*A181305(n)`
-/

namespace A181296.P2159209662027622070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181305 n

end

end A181296.P2159209662027622070

noncomputable section

/-- A181296: The number of odd entries in all the 2-compositions of n.

Offset 0, canonical program `A181296.P2159209662027622070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181296 (n : ℕ) : ℤ :=
  A181296.P2159209662027622070.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181305, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181300.P8386514330720844755

`Δ[A181305(A004275(n)-n)]`
-/

namespace A181300.P8386514330720844755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181300.P8386514330720844755

noncomputable section

/-- A181300: Number of columns with top entry equal to bottom entry in all the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181300.P8386514330720844755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A181300 (n : ℕ) : ℤ :=
  A181300.P8386514330720844755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A181300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181434.P17652804712885310540

`A157657(n+1)*A260196(n)`
-/

namespace A181434.P17652804712885310540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1) * A260196 n

end

end A181434.P17652804712885310540

noncomputable section

/-- A181434: First column in matrix inverse of a mixed convolution of A052542.

Offset 1, canonical program `A181434.P17652804712885310540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181434 (n : ℕ) : ℤ :=
  A181434.P17652804712885310540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181713.P9460122261019923156

`∪[A140398(n+1), A189464(n+1)]`
-/

namespace A181713.P9460122261019923156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181713.P9460122261019923156

noncomputable section

/-- A181713: Solutions of A181712(n)=0.

Offset 1, canonical program `A181713.P9460122261019923156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181713 (n : ℕ) : ℤ :=
  (A181713.P9460122261019923156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181714.P11993731403153367927

`∪[A140400(n+1), A190158(n+1)]`
-/

namespace A181714.P11993731403153367927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181714.P11993731403153367927

noncomputable section

/-- A181714: Numbers k such that A181712(k) = 1.

Offset 1, canonical program `A181714.P11993731403153367927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181714 (n : ℕ) : ℤ :=
  (A181714.P11993731403153367927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182627.P2898415693222313609

`A000005(n+1)+∑{d}[n+1, floor(log2(#))]`
-/

namespace A182627.P2898415693222313609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.log 2 d : ℕ) : ℤ)

end

end A182627.P2898415693222313609

noncomputable section

/-- A182627: Total number of digits in binary expansion of all divisors of n.

Offset 1, canonical program `A182627.P2898415693222313609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182627 (n : ℕ) : ℤ :=
  A182627.P2898415693222313609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182760.P3743829332846930708

`A016789(n)-A287770(n+1)`
-/

namespace A182760.P3743829332846930708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A287770 (n + 1)

end

end A182760.P3743829332846930708

noncomputable section

/-- A182760: Beatty sequence for (3 + 5^(-1/2))/2.

Offset 1, canonical program `A182760.P3743829332846930708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182760 (n : ℕ) : ℤ :=
  A182760.P3743829332846930708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183423.P11999650306193014405

`lt[n*Δ[A257023(n)], n]`
-/

namespace A183423.P11999650306193014405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A183423.P11999650306193014405

noncomputable section

/-- A183423: Ordering of the numbers in tree A183421; complement of A183422.

Offset 1, canonical program `A183423.P11999650306193014405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A183423 (n : ℕ) : ℤ :=
  (A183423.P11999650306193014405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A183423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183986.P9474763813998468520

`A271709(n)+A209727(n+1)`
-/

namespace A183986.P9474763813998468520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A209727 (n + 1)

end

end A183986.P9474763813998468520

noncomputable section

/-- A183986: T(n,k) = 1/4 the number of (n+1) X (k+1) binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183986.P9474763813998468520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. -/
def A183986 (n : ℕ) : ℤ :=
  A183986.P9474763813998468520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. -/
def A183986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184328.P14837785187931186694

`p?[A050626(n+1)]`
-/

namespace A184328.P14837785187931186694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184328.P14837785187931186694

noncomputable section

/-- A184328: Primes whose digital product is a positive square.

Offset 1, canonical program `A184328.P14837785187931186694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A184328 (n : ℕ) : ℤ :=
  A184328.P14837785187931186694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A184328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184389.P1294751775581732822

`∑{#}[A000005(n+1)-1, #+1]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A184389.P1294751775581732822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1)

end

end A184389.P1294751775581732822

noncomputable section

/-- A184389: a(n) = Sum_{k=1..tau(n)} k, where tau is the number of divisors of n (A000005).

Offset 1, canonical program `A184389.P1294751775581732822`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[A000005(n+1)-1, #+1]` (program `A184389.P1294751775581732822`, by `A184389.P1294751775581732822.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A184389 (n : ℕ) : ℤ :=
  (A184389.P1294751775581732822.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[A000005(n+1)-1, #+1]` (program `A184389.P1294751775581732822`, by `A184389.P1294751775581732822.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A184389.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A184627.P12574511466743953538

`ceil(A184653(2*n+1)/2)`
-/

namespace A184627.P12574511466743953538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184653 (2 * n + 1) : ℚ) / 2⌉

end

end A184627.P12574511466743953538

noncomputable section

/-- A184627: floor((n-h)*s+h), where s=(3+sqrt(3))/2 and h=1/4; complement of A184626.

Offset 1, canonical program `A184627.P12574511466743953538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184627 (n : ℕ) : ℤ :=
  A184627.P12574511466743953538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184655.P3941700814691838186

`ceil((A188070(3*n+5)+A008585(n))/3)`
-/

namespace A184655.P3941700814691838186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188070 (3 * n + 5) + A008585 n : ℚ) / 3⌉

end

end A184655.P3941700814691838186

noncomputable section

/-- A184655: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-2/3; complement of A184654.

Offset 1, canonical program `A184655.P3941700814691838186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A184655 (n : ℕ) : ℤ :=
  A184655.P3941700814691838186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A184655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184749.P13125599606480254590

`floor(A287723(A004766(n+1))/4)`
-/

namespace A184749.P13125599606480254590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287723 (A004766 (n + 1)).toNat : ℚ) / 4⌋

end

end A184749.P13125599606480254590

noncomputable section

/-- A184749: a(n) = floor(n*s+h-h*s), where s = (7 + sqrt(5))/4, h = -1/2; complement of A184748.

Offset 1, canonical program `A184749.P13125599606480254590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A184749 (n : ℕ) : ℤ :=
  A184749.P13125599606480254590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A184749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184812.P6220005435936590522

`A194146(n+1)+A004526(A187396(n+1))`
-/

namespace A184812.P6220005435936590522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (n + 1) + A004526 (A187396 (n + 1)).toNat

end

end A184812.P6220005435936590522

noncomputable section

/-- A184812: n+floor(ns/r)+floor(nt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184812.P6220005435936590522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8603 terms. -/
def A184812 (n : ℕ) : ℤ :=
  A184812.P6220005435936590522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8603 terms. -/
def A184812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184903.P10166657498672039758

`A190506(n+1)-A287770(n+1)`
-/

namespace A184903.P10166657498672039758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190506 (n + 1) - A287770 (n + 1)

end

end A184903.P10166657498672039758

noncomputable section

/-- A184903: n+floor(nr/t)+floor(ns/t), where r=(1+sqrt(5))/2, s=r+1, t=r+2.

Offset 1, canonical program `A184903.P10166657498672039758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184903 (n : ℕ) : ℤ :=
  A184903.P10166657498672039758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185132.P17334839020279159436

`(A025228(n+1)-a(n-1))/4` with `a(0)=1`
-/

namespace A185132.P17334839020279159436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A025228 (n + 1) : ℚ) - a (n - 1)) / 4

end

end A185132.P17334839020279159436

noncomputable section

/-- A185132: Number of 4-Motzkin paths of length n with no level steps at height 0.

Offset 1, canonical program `A185132.P17334839020279159436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A185132 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185132.P17334839020279159436.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A185132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185909.P3795063088529247606

`A271916(n+1)+A127779(n+1)`
-/

namespace A185909.P3795063088529247606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A127779 (n + 1)

end

end A185909.P3795063088529247606

noncomputable section

/-- A185909: Accumulation array of A185908, by antidiagonals.

Offset 1, canonical program `A185909.P3795063088529247606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185909 (n : ℕ) : ℤ :=
  A185909.P3795063088529247606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185915.P3383916793541313678

`A104633(n+1)-A271916(A080036(n))`
-/

namespace A185915.P3383916793541313678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) - A271916 (A080036 n).toNat

end

end A185915.P3383916793541313678

noncomputable section

/-- A185915: Accumulation array of A185914, by antidiagonals.

Offset 1, canonical program `A185915.P3383916793541313678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185915 (n : ℕ) : ℤ :=
  A185915.P3383916793541313678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A185915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186034.P3246974925784444499

`val(A299918(n), 2)`
-/

namespace A186034.P3246974925784444499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299918 n).toNat 2

end

end A186034.P3246974925784444499

noncomputable section

/-- A186034: 2-adic valuation of the n-th Motzkin number.

Offset 0, canonical program `A186034.P3246974925784444499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186034 (n : ℕ) : ℤ :=
  (A186034.P3246974925784444499.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186342.P568721468802834445

`comp[A186343(n+1)-1]+1`
-/

namespace A186342.P568721468802834445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186343 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186342.P568721468802834445

noncomputable section

/-- A186342: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186343.

Offset 1, canonical program `A186342.P568721468802834445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186342 (n : ℕ) : ℤ :=
  (A186342.P568721468802834445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187577.P7426912050997007396

`∑[3-and(2, A267860(n))]`
-/

namespace A187577.P7426912050997007396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.land 2 (A267860 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187577.P7426912050997007396

noncomputable section

/-- A187577: Complement of A187576.

Offset 1, canonical program `A187577.P7426912050997007396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187577 (n : ℕ) : ℤ :=
  A187577.P7426912050997007396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187580.P2355518375788628235

`A191402(ceil(n/2))-n%2`
-/

namespace A187580.P2355518375788628235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 ⌈(n : ℚ) / 2⌉.toNat - ((n % 2 : ℕ) : ℤ)

end

end A187580.P2355518375788628235

noncomputable section

/-- A187580: Rank transform of the sequence 2*floor(n/2); complement of A187581.

Offset 1, canonical program `A187580.P2355518375788628235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187580 (n : ℕ) : ℤ :=
  A187580.P2355518375788628235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187948.P2785729738803555643

`char[A187953(n+1)-1]`
-/

namespace A187948.P2785729738803555643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187953 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A187948.P2785729738803555643

noncomputable section

/-- A187948: [nr+kr]-[nr]-[kr], where r=(1+sqrt(5))/2, k=6, [ ]=floor.

Offset 1, canonical program `A187948.P2785729738803555643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187948 (n : ℕ) : ℤ :=
  (A187948.P2785729738803555643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187950.P3606201805614441045

`a(A276757(n+1)-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A187950.P3606201805614441045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n a =>
  a (A276757 (n + 1) - 1).toNat

end

end A187950.P3606201805614441045

noncomputable section

/-- A187950: [nr+kr] - [nr] - [kr], where r = (1+sqrt(5))/2, k = 4, [.]=floor.

Offset 1, canonical program `A187950.P3606201805614441045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187950 (n : ℕ) : ℤ :=
  (A187950.P3606201805614441045.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187951.P5704434848721015730

`comp[A188468(n+1)-4]`
-/

namespace A187951.P5704434848721015730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187951.P5704434848721015730

noncomputable section

/-- A187951: Positions of 0 in A187950; complement of A187952.

Offset 1, canonical program `A187951.P5704434848721015730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187951 (n : ℕ) : ℤ :=
  (A187951.P5704434848721015730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187970.P445449769979314014

`comp[A187971(n+1)-1]+1`
-/

namespace A187970.P445449769979314014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187970.P445449769979314014

noncomputable section

/-- A187970: Positions of 0 in A187969; complement of A187971.

Offset 1, canonical program `A187970.P445449769979314014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187970 (n : ℕ) : ℤ :=
  (A187970.P445449769979314014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187975.P2328125019044732713

`A188383(n+1)+A098021(n+1)`
-/

namespace A187975.P2328125019044732713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1) + A098021 (n + 1)

end

end A187975.P2328125019044732713

noncomputable section

/-- A187975: Positions of 1 in the zero-one sequence given by s(n)=[nr+5r]-[nr]-[5r], where r=sqrt(2), n>=1, [ ]=floor.

Offset 1, canonical program `A187975.P2328125019044732713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187975 (n : ℕ) : ℤ :=
  A187975.P2328125019044732713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188014.P7770926066487780213

`A289034(A287523(n+1)+∑[A287523(n+1)])`
-/

namespace A188014.P7770926066487780213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A287523 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188014.P7770926066487780213

noncomputable section

/-- A188014: a(n) = [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=4, [ ]=floor.

Offset 1, canonical program `A188014.P7770926066487780213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188014 (n : ℕ) : ℤ :=
  A188014.P7770926066487780213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188018.P1779164048503098880

`A188468(n+1)+A188010(n+1)`
-/

namespace A188018.P1779164048503098880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) + A188010 (n + 1)

end

end A188018.P1779164048503098880

noncomputable section

/-- A188018: Positions of 0 in A188017; complement of A188019.

Offset 1, canonical program `A188018.P1779164048503098880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188018 (n : ℕ) : ℤ :=
  A188018.P1779164048503098880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188074.P15532847428602426047

`∑[A245222(n)²+3]`
-/

namespace A188074.P15532847428602426047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 n ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188074.P15532847428602426047

noncomputable section

/-- A188074: Positions of 1 in the zero-one sequence [n*r]-[3*r]-[n*r-3*r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188074.P15532847428602426047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188074 (n : ℕ) : ℤ :=
  A188074.P15532847428602426047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188237.P1096983553706900320

`A188212(n+1)-A005408(A008620(n))`
-/

namespace A188237.P1096983553706900320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188212 (n + 1) - A005408 (A008620 n).toNat

end

end A188237.P1096983553706900320

noncomputable section

/-- A188237: Number of nondecreasing arrangements of 4 numbers in -(n+2)..(n+2) with sum zero and not more than two numbers equal.

Offset 1, canonical program `A188237.P1096983553706900320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188237 (n : ℕ) : ℤ :=
  A188237.P1096983553706900320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188302.P6415183017477871457

`A000027(A188383(n+1)+3)`
-/

namespace A188302.P6415183017477871457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A188383 (n + 1) + 3).toNat

end

end A188302.P6415183017477871457

noncomputable section

/-- A188302: Positions of 1 in A188300; complement of A188301.

Offset 1, canonical program `A188302.P6415183017477871457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188302 (n : ℕ) : ℤ :=
  A188302.P6415183017477871457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188435.P2824334305626450135

`A363057(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A188435.P2824334305626450135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A363057 n + a (n - 1)

end

end A188435.P2824334305626450135

noncomputable section

/-- A188435: Positions of 1 in A188433; complement of A188434.

Offset 1, canonical program `A188435.P2824334305626450135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188435 (n : ℕ) : ℤ :=
  A188435.P2824334305626450135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188540.P8000585226121098714

`eq[2*A000005(n+1), A000005(n+3)]+1`
-/

namespace A188540.P8000585226121098714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188540.P8000585226121098714

noncomputable section

/-- A188540: Numbers k such that d(k+2) = 2*d(k) where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A188540.P8000585226121098714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5494 terms. -/
def A188540 (n : ℕ) : ℤ :=
  (A188540.P8000585226121098714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5494 terms. -/
def A188540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188654.P6164592973035775826

`comp[A212166(n+1)-1]+1`
-/

namespace A188654.P6164592973035775826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188654.P6164592973035775826

noncomputable section

/-- A188654: Numbers k such that the maximum exponent in its prime factorization does not equal the number of positive exponents (A051903(k) <> A001221(k)).

Offset 1, canonical program `A188654.P6164592973035775826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188654 (n : ℕ) : ℤ :=
  (A188654.P6164592973035775826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189401.P4880423856562258179

`A189400(n+1)+A189403(n+1)-A189399(n+1)`
-/

namespace A189401.P4880423856562258179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189400 (n + 1) + (A189403 (n + 1) - A189399 (n + 1))

end

end A189401.P4880423856562258179

noncomputable section

/-- A189401: n+[nr/t]+[ns/t]; r=1, s=sqrt(e), t=e.

Offset 1, canonical program `A189401.P4880423856562258179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189401 (n : ℕ) : ℤ :=
  A189401.P4880423856562258179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189522.P15652800251320976758

`A189403(n+1)+A292665(n+1)-A292647(n+1)`
-/

namespace A189522.P15652800251320976758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (A292665 (n + 1) - A292647 (n + 1))

end

end A189522.P15652800251320976758

noncomputable section

/-- A189522: n+[nr/s]+[nt/s]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189522.P15652800251320976758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189522 (n : ℕ) : ℤ :=
  A189522.P15652800251320976758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189706.P18258736543789234630

`xor(A116178(n), A356982(n+1))`
-/

namespace A189706.P18258736543789234630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116178 n) (A356982 (n + 1))

end

end A189706.P18258736543789234630

noncomputable section

/-- A189706: Fixed point of the morphism 0->011, 1->001.

Offset 1, canonical program `A189706.P18258736543789234630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189706 (n : ℕ) : ℤ :=
  A189706.P18258736543789234630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189716.P8656559037271871482

`comp[∪[A189715(n+1), n²]]`
-/

namespace A189716.P8656559037271871482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A189716.P8656559037271871482

noncomputable section

/-- A189716: Numbers k such that A156595(k-1) = 1; complement of A189715.

Offset 1, canonical program `A189716.P8656559037271871482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189716 (n : ℕ) : ℤ :=
  (A189716.P8656559037271871482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189728.P17289738787874107893

`or(1, A284913(n+1))+n`
-/

namespace A189728.P17289738787874107893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284913 (n + 1)) + (n : ℤ)

end

end A189728.P17289738787874107893

noncomputable section

/-- A189728: Positions of 0 in A189727; complement of A189729.

Offset 1, canonical program `A189728.P17289738787874107893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189728 (n : ℕ) : ℤ :=
  A189728.P17289738787874107893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190199.P13571509793014364535

`comp[A190200(n+1)-1]+1`
-/

namespace A190199.P13571509793014364535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190200 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190199.P13571509793014364535

noncomputable section

/-- A190199: Positions of 0 in A190198; complement of A190200.

Offset 1, canonical program `A190199.P13571509793014364535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190199 (n : ℕ) : ℤ :=
  (A190199.P13571509793014364535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190226.P7103144085363119189

`∩[2*n+1, A283776(n+1)]`
-/

namespace A190226.P7103144085363119189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190226.P7103144085363119189

noncomputable section

/-- A190226: Positions of 1 in A190224; complement of A190225.

Offset 1, canonical program `A190226.P7103144085363119189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190226 (n : ℕ) : ℤ :=
  (A190226.P7103144085363119189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A190226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190491.P14507808460934527920

`A190775(2*(n+1))`
-/

namespace A190491.P14507808460934527920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (2 * (n + 1))

end

end A190491.P14507808460934527920

noncomputable section

/-- A190491: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),3,1) and []=floor.

Offset 1, canonical program `A190491.P14507808460934527920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190491 (n : ℕ) : ℤ :=
  A190491.P14507808460934527920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190556.P9122696133138380900

`A098021(A190545(n+1))`
-/

namespace A190556.P9122696133138380900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (A190545 (n + 1)).toNat

end

end A190556.P9122696133138380900

noncomputable section

/-- A190556: Positions of 0 in A190555.

Offset 1, canonical program `A190556.P9122696133138380900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190556 (n : ℕ) : ℤ :=
  A190556.P9122696133138380900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190562.P8810397577342035983

`1+eq[0, A190561(n+1)]`
-/

namespace A190562.P8810397577342035983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190562.P8810397577342035983

noncomputable section

/-- A190562: Positions of 0 in A190561.

Offset 1, canonical program `A190562.P8810397577342035983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A190562 (n : ℕ) : ℤ :=
  (A190562.P8810397577342035983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A190562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190563.P9058313679088446124

`eq[1, A190561(n+1)]+1`
-/

namespace A190563.P9058313679088446124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190563.P9058313679088446124

noncomputable section

/-- A190563: Positions of 1 in A190561.

Offset 1, canonical program `A190563.P9058313679088446124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190563 (n : ℕ) : ℤ :=
  (A190563.P9058313679088446124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A190563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190564.P9395471730941467231

`eq[2, A190561(n+1)]+1`
-/

namespace A190564.P9395471730941467231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190564.P9395471730941467231

noncomputable section

/-- A190564: Positions of 2 in A190561.

Offset 1, canonical program `A190564.P9395471730941467231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190564 (n : ℕ) : ℤ :=
  (A190564.P9395471730941467231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190565.P10573021868143649417

`eq[3, A190561(n+1)]+1`
-/

namespace A190565.P10573021868143649417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190565.P10573021868143649417

noncomputable section

/-- A190565: Positions of 3 in A190561.

Offset 1, canonical program `A190565.P10573021868143649417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190565 (n : ℕ) : ℤ :=
  (A190565.P10573021868143649417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190670.P6357552631536216047

`∪[A003512(n+1), A190695(n+1)]`
-/

namespace A190670.P6357552631536216047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190670.P6357552631536216047

noncomputable section

/-- A190670: Positions of 0 in A190669; complement of A190671.

Offset 1, canonical program `A190670.P6357552631536216047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190670 (n : ℕ) : ℤ :=
  (A190670.P6357552631536216047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190671.P5074073965687265744

`∪[A188069(n+1), A190696(n+1)]`
-/

namespace A190671.P5074073965687265744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P5074073965687265744

noncomputable section

/-- A190671: Positions of 1 in A190669; complement of A190670.

Offset 1, canonical program `A190671.P5074073965687265744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671 (n : ℕ) : ℤ :=
  (A190671.P5074073965687265744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190672.P969204813514763096

`round(sqrt(A190704(n+1)))`
-/

namespace A190672.P969204813514763096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A190704 (n + 1) : ℝ))

end

end A190672.P969204813514763096

noncomputable section

/-- A190672: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),2,1) and [ ]=floor.

Offset 1, canonical program `A190672.P969204813514763096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190672 (n : ℕ) : ℤ :=
  A190672.P969204813514763096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190675.P10535900529426331608

`∪[A188069(n+1), A190708(n+1)]`
-/

namespace A190675.P10535900529426331608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P10535900529426331608

noncomputable section

/-- A190675: Positions of 2 in A190672.

Offset 1, canonical program `A190675.P10535900529426331608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675 (n : ℕ) : ℤ :=
  (A190675.P10535900529426331608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190723.P6473342380060936674

`a(n-1)+a(A284749(n))` with `a(0)=1`
-/

namespace A190723.P6473342380060936674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A284749 n).toNat

end

end A190723.P6473342380060936674

noncomputable section

/-- A190723: Numbers m for which A055778(m) > A055778(m-1).

Offset 1, canonical program `A190723.P6473342380060936674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190723 (n : ℕ) : ℤ :=
  (A190723.P6473342380060936674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190796.P8479633771885963645

`A042948(A362692(n+1))`
-/

namespace A190796.P8479633771885963645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A362692 (n + 1)).toNat

end

end A190796.P8479633771885963645

noncomputable section

/-- A190796: Number of digits in the minimal base-phi representation of n.

Offset 1, canonical program `A190796.P8479633771885963645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190796 (n : ℕ) : ℤ :=
  A190796.P8479633771885963645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190940.P3482057702571658597

`A000005(A002944(n+1))`
-/

namespace A190940.P3482057702571658597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002944 (n + 1)).toNat

end

end A190940.P3482057702571658597

noncomputable section

/-- A190940: Number of divisors of LCM(1,2,...,n)/n.

Offset 1, canonical program `A190940.P3482057702571658597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190940 (n : ℕ) : ℤ :=
  A190940.P3482057702571658597.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A191017.P9280210911899250304

`∪[A106915(n+1), A274675(n+1)]`
-/

namespace A191017.P9280210911899250304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191017.P9280210911899250304

noncomputable section

/-- A191017: Primes with Kronecker symbol (p|14) = 1.

Offset 1, canonical program `A191017.P9280210911899250304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191017 (n : ℕ) : ℤ :=
  (A191017.P9280210911899250304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191023.P8283022933974562373

`p?[eq[A226162(n), A322796(n)]]`
-/

namespace A191023.P8283022933974562373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191023.P8283022933974562373

noncomputable section

/-- A191023: Primes p which have Kronecker symbol (p|30) = 1.

Offset 1, canonical program `A191023.P8283022933974562373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A191023 (n : ℕ) : ℤ :=
  (A191023.P8283022933974562373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A191023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191066.P12295551427309365829

`p?[eq[-A226162(n), A322796(n)]]`
-/

namespace A191066.P12295551427309365829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226162 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191066.P12295551427309365829

noncomputable section

/-- A191066: Primes p that have Kronecker symbol (p|30) = -1.

Offset 1, canonical program `A191066.P12295551427309365829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A191066 (n : ℕ) : ℤ :=
  (A191066.P12295551427309365829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A191066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191194.P9228674649673219148

`eq[char[A191202(n+1)], A010051(3*(n+1))]`
-/

namespace A191194.P9228674649673219148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A191194.P9228674649673219148

noncomputable section

/-- A191194: Positions of 0 in A191188; complement of A191202.

Offset 1, canonical program `A191194.P9228674649673219148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A191194 (n : ℕ) : ℤ :=
  (A191194.P9228674649673219148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A191194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191319.P759594844245076753

`a(n-2)+A004526(n)*A210736(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A191319.P759594844245076753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + A004526 n * A210736 n

end

end A191319.P759594844245076753

noncomputable section

/-- A191319: Sum of pyramid weights of all dispersed Dyck paths of length n (i.e., of all Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191319.P759594844245076753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191319 (n : ℕ) : ℤ :=
  A191319.P759594844245076753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191522.P8267354329706753814

`Δ[A210736(n)]*A140106(n+1)`
-/

namespace A191522.P8267354329706753814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A140106 (n + 1)

end

end A191522.P8267354329706753814

noncomputable section

/-- A191522: Number of valleys in all left factors of Dyck paths of length n. A valley is a (1,-1)-step followed by a (1,1)-step.

Offset 0, canonical program `A191522.P8267354329706753814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191522 (n : ℕ) : ℤ :=
  A191522.P8267354329706753814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192592.P18175779352790662671

`A280084(A011760(n+1))`
-/

namespace A192592.P18175779352790662671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (A011760 (n + 1)).toNat

end

end A192592.P18175779352790662671

noncomputable section

/-- A192592: Monotonic ordering of set S generated by these rules: if x and y are in S and 3x+2y is a prime, then 3x+2y is in S, and 1 is in S.

Offset 1, canonical program `A192592.P18175779352790662671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A192592 (n : ℕ) : ℤ :=
  A192592.P18175779352790662671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A192592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193339.P11456444240374608531

`A238526(n+1)+A057427(n)+1`
-/

namespace A193339.P11456444240374608531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1) + (A057427 n + 1)

end

end A193339.P11456444240374608531

noncomputable section

/-- A193339: Indices of record values in A001783.

Offset 1, canonical program `A193339.P11456444240374608531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193339 (n : ℕ) : ℤ :=
  A193339.P11456444240374608531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193348.P8532159811995287053

`A001227(A000005(n+1))`
-/

namespace A193348.P8532159811995287053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000005 (n + 1)).toNat

end

end A193348.P8532159811995287053

noncomputable section

/-- A193348: Number of odd divisors of tau(n).

Offset 1, canonical program `A193348.P8532159811995287053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193348 (n : ℕ) : ℤ :=
  A193348.P8532159811995287053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193349.P2136370767901044889

`A000593(A000005(n+1))`
-/

namespace A193349.P2136370767901044889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000005 (n + 1)).toNat

end

end A193349.P2136370767901044889

noncomputable section

/-- A193349: Sum of odd divisors of tau(n).

Offset 1, canonical program `A193349.P2136370767901044889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193349 (n : ℕ) : ℤ :=
  A193349.P2136370767901044889.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193382.P1708561053743759439

`A046980(n)*A210736(A004524(n))`
-/

namespace A193382.P1708561053743759439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A210736 (A004524 n).toNat

end

end A193382.P1708561053743759439

noncomputable section

/-- A193382: G.f. is the real part of the function C(x) that satisfies C(x) = 1 + x/C(I*x).

Offset 0, canonical program `A193382.P1708561053743759439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A193382 (n : ℕ) : ℤ :=
  A193382.P1708561053743759439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A193382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193432.P8452424332635996808

`A000005(n²+1)`
-/

namespace A193432.P8452424332635996808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 1)

end

end A193432.P8452424332635996808

noncomputable section

/-- A193432: Number of divisors of n^2 + 1.

Offset 0, canonical program `A193432.P8452424332635996808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193432 (n : ℕ) : ℤ :=
  A193432.P8452424332635996808.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193511.P8678682823205615366

`A146076(A252736(n+1)+1)`
-/

namespace A193511.P8678682823205615366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A252736 (n + 1) + 1).toNat

end

end A193511.P8678682823205615366

noncomputable section

/-- A193511: a(n) = Sum of even divisors of Omega(n), a(1) = 0.

Offset 1, canonical program `A193511.P8678682823205615366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511 (n : ℕ) : ℤ :=
  A193511.P8678682823205615366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193562.P3255502571815278439

`A000005(n^4+1)`
-/

namespace A193562.P3255502571815278439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 4 + 1)

end

end A193562.P3255502571815278439

noncomputable section

/-- A193562: Number of divisors of n^4+1.

Offset 0, canonical program `A193562.P3255502571815278439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193562 (n : ℕ) : ℤ :=
  A193562.P3255502571815278439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193773.P5335748704601439126

`ceil(A000005(2*n+1)/2)`
-/

namespace A193773.P5335748704601439126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (2 * n + 1) : ℚ) / 2⌉

end

end A193773.P5335748704601439126

noncomputable section

/-- A193773: Number of ways to write n as 2*x*y - x - y with 1 <= x <= y.

Offset 0, canonical program `A193773.P5335748704601439126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193773 (n : ℕ) : ℤ :=
  A193773.P5335748704601439126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193816.P13211586873865539970

`A193844(n)-char[∑[n+2]]`
-/

namespace A193816.P13211586873865539970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A193816.P13211586873865539970

noncomputable section

/-- A193816: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x) = x^n + x^(n-1) + ... + x+1 and q(n,x) = (x+2)^n.

Offset 0, canonical program `A193816.P13211586873865539970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193816 (n : ℕ) : ℤ :=
  A193816.P13211586873865539970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194081.P10160956596199185077

`comp[A372397(n+1)+n+1]`
-/

namespace A194081.P10160956596199185077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372397 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194081.P10160956596199185077

noncomputable section

/-- A194081: Smallest m such that A005375(m) = n.

Offset 0, canonical program `A194081.P10160956596199185077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194081 (n : ℕ) : ℤ :=
  (A194081.P10160956596199185077.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194376.P8742211185253626047

`record[gcd(2*(n+1), A327255(n+1))]`
-/

namespace A194376.P8742211185253626047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A327255 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194376.P8742211185253626047

noncomputable section

/-- A194376: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(6) and < > denotes fractional part.

Offset 1, canonical program `A194376.P8742211185253626047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A194376 (n : ℕ) : ℤ :=
  (A194376.P8742211185253626047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A194376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194405.P14981962460593271920

`record[(n+1)%A190847(A008619(n))]`
-/

namespace A194405.P14981962460593271920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A190847 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194405.P14981962460593271920

noncomputable section

/-- A194405: Numbers m such that Sum_{k=1..m} (<1/2 + k*e> - <k*e>) < 0 where < > denotes fractional part.

Offset 1, canonical program `A194405.P14981962460593271920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A194405 (n : ℕ) : ℤ :=
  A194405.P14981962460593271920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A194405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194407.P1781012805405431426

`lt[A190847(A008619(n))-n, 1]`
-/

namespace A194407.P1781012805405431426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190847 (A008619 n).toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194407.P1781012805405431426

noncomputable section

/-- A194407: Numbers m such that Sum_{k=1..m} (<1/2 + k*e> - <k*e>) > 0 where < > denotes fractional part.

Offset 1, canonical program `A194407.P1781012805405431426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A194407 (n : ℕ) : ℤ :=
  (A194407.P1781012805405431426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A194407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194819.P10994413339944497895

`∑[A327183(n)]`
-/

namespace A194819.P10994413339944497895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194819.P10994413339944497895

noncomputable section

/-- A194819: Number of integers k in [1,n] such that {n*e+k*e} < {n*e-k*e}, where { } = fractional part.

Offset 1, canonical program `A194819.P10994413339944497895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194819 (n : ℕ) : ℤ :=
  A194819.P10994413339944497895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194820.P8632114547582103611

`∑[1-A327183(n)]`
-/

namespace A194820.P8632114547582103611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194820.P8632114547582103611

noncomputable section

/-- A194820: Number of integers k in [1,n] such that {n*e+k*e} > {n*e-k*e}, where { } = fractional part.

Offset 1, canonical program `A194820.P8632114547582103611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194820 (n : ℕ) : ℤ :=
  A194820.P8632114547582103611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195051.P1235634980371013783

`A000005(24*(n+1)-1)`
-/

namespace A195051.P1235634980371013783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (24 * (n + 1) - 1)

end

end A195051.P1235634980371013783

noncomputable section

/-- A195051: Number of divisors of 24*n - 1.

Offset 1, canonical program `A195051.P1235634980371013783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195051 (n : ℕ) : ℤ :=
  A195051.P1235634980371013783.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A197636.P5633880551885269643

`p?[A383578(n+1)]`
-/

namespace A197636.P5633880551885269643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197636.P5633880551885269643

noncomputable section

/-- A197636: Non-Wilson primes: primes p such that (p-1)! =/= -1 mod p^2.

Offset 1, canonical program `A197636.P5633880551885269643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A197636 (n : ℕ) : ℤ :=
  A197636.P5633880551885269643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A197636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201014.P5854575639799289141

`∩[A011540(n+1), A173905(n+1)]`
-/

namespace A201014.P5854575639799289141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201014.P5854575639799289141

noncomputable section

/-- A201014: Composite numbers (include 0) whose product of digits is 0.

Offset 1, canonical program `A201014.P5854575639799289141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A201014 (n : ℕ) : ℤ :=
  (A201014.P5854575639799289141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A201014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202093.P17617771732918613506

`A250426(n+2)`
-/

namespace A202093.P17617771732918613506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250426 (n + 2)

end

end A202093.P17617771732918613506

noncomputable section

/-- A202093: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202093.P17617771732918613506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202093 (n : ℕ) : ℤ :=
  A202093.P17617771732918613506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A202093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202098.P4128263867690976448

`A331575(n+11)²`
-/

namespace A202098.P4128263867690976448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331575 (n + 11) ^ 2

end

end A202098.P4128263867690976448

noncomputable section

/-- A202098: Number of (n+2) X 8 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202098.P4128263867690976448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A202098 (n : ℕ) : ℤ :=
  A202098.P4128263867690976448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A202098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202486.P8789427035128539930

`A264365(n+4)²`
-/

namespace A202486.P8789427035128539930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264365 (n + 4) ^ 2

end

end A202486.P8789427035128539930

noncomputable section

/-- A202486: Number of (n+2)X4 binary arrays avoiding patterns 000 and 010 in rows, columns and nw-to-se diagonals.

Offset 1, canonical program `A202486.P8789427035128539930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A202486 (n : ℕ) : ℤ :=
  A202486.P8789427035128539930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A202486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203847.P9260597228781313842

`A000005(n+1)*A000045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A203847.P9260597228781313842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000045 (n + 1)

end

end A203847.P9260597228781313842

noncomputable section

/-- A203847: a(n) = tau(n)*Fibonacci(n), where tau(n) = A000005(n), the number of divisors of n.

Offset 1, canonical program `A203847.P9260597228781313842`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000045(n+1)` (program `A203847.P9260597228781313842`, by `A203847.P9260597228781313842.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A203847 (n : ℕ) : ℤ :=
  A203847.P9260597228781313842.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000045(n+1)` (program `A203847.P9260597228781313842`, by `A203847.P9260597228781313842.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A203847.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A153362.P16095394824988375316

`A153364(n+1)+A153363(n+1)`
-/

namespace A153362.P16095394824988375316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (n + 1) + A153363 (n + 1)

end

end A153362.P16095394824988375316

noncomputable section

/-- A153362: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows.

Offset 1, canonical program `A153362.P16095394824988375316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153362 (n : ℕ) : ℤ :=
  A153362.P16095394824988375316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A153362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163640.P1112088024654319400

`A163641(Δ[n²])`
-/

namespace A163640.P1112088024654319400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163641 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A163640.P1112088024654319400

noncomputable section

/-- A163640: The radical of the swinging factorial A056040 for odd indices.

Offset 0, canonical program `A163640.P1112088024654319400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A163640 (n : ℕ) : ℤ :=
  A163640.P1112088024654319400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A163640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194486.P15304985710096564444

`A211911(n+1)+record[A266222(n)]+n`
-/

namespace A194486.P15304985710096564444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A194486.P15304985710096564444

noncomputable section

/-- A194486: Number of ways to arrange 2 nonattacking knights on the lower triangle of an n X n board.

Offset 1, canonical program `A194486.P15304985710096564444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A194486 (n : ℕ) : ℤ :=
  A194486.P15304985710096564444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A194486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155716.P15449909422133058851

`lt[1, A115660(n+1)]+1`
-/

namespace A155716.P15449909422133058851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A155716.P15449909422133058851

noncomputable section

/-- A155716: Numbers of the form N = a^2 + 6b^2 for some positive integers a,b.

Offset 1, canonical program `A155716.P15449909422133058851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A155716 (n : ℕ) : ℤ :=
  (A155716.P15449909422133058851.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A155716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157971.P3473186245332457378

`2*A091855(n+1)-1`
-/

namespace A157971.P3473186245332457378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091855 (n + 1) - 1

end

end A157971.P3473186245332457378

noncomputable section

/-- A157971: Odious twin locations: first members of pairs of consecutive odious numbers.

Offset 1, canonical program `A157971.P3473186245332457378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157971 (n : ℕ) : ℤ :=
  A157971.P3473186245332457378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175255.P1996567333261754558

`p?[A103982(n+1)]²`
-/

namespace A175255.P1996567333261754558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A175255.P1996567333261754558

noncomputable section

/-- A175255: Squares in A111153.

Offset 1, canonical program `A175255.P1996567333261754558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A175255 (n : ℕ) : ℤ :=
  A175255.P1996567333261754558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A175255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184615.P12937226738922486547

`and(A032766(n), A184617(n))`
-/

namespace A184615.P12937226738922486547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032766 n) (A184617 n)

end

end A184615.P12937226738922486547

noncomputable section

/-- A184615: Positive parts of the nonadjacent forms for n.

Offset 0, canonical program `A184615.P12937226738922486547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A184615 (n : ℕ) : ℤ :=
  A184615.P12937226738922486547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A184615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192895.P9345364931797933177

`∑{d}[n+1, A000120(#)]-A005843(A000120(n+1))`
-/

namespace A192895.P9345364931797933177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 d - A005843 (A000120 (n + 1)).toNat

end

end A192895.P9345364931797933177

noncomputable section

/-- A192895: A000120-deficiency of n.

Offset 1, canonical program `A192895.P9345364931797933177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192895 (n : ℕ) : ℤ :=
  A192895.P9345364931797933177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153500.P12368986149727124082

`A007088(A153499(n+1))`
-/

namespace A153500.P12368986149727124082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A153499 (n + 1)).toNat

end

end A153500.P12368986149727124082

noncomputable section

/-- A153500: First 3 terms coincide with A152756. For n>3, a(n) is the palindromic number formed from concatenation of 1, 0, A147759(n-3), 0, A147759(n-3), 0 and 1.

Offset 1, canonical program `A153500.P12368986149727124082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A153499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153500 (n : ℕ) : ℤ :=
  A153500.P12368986149727124082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A153499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154269.P12629811224364299033

`∑{d}[n+1, A323239(#)*A008836((n+1)/#)]`
-/

namespace A154269.P12629811224364299033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323239 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A154269.P12629811224364299033

noncomputable section

/-- A154269: Dirichlet inverse of A019590; Fully multiplicative with a(2^e) = (-1)^e, a(p^e) = 0 for odd primes p.

Offset 1, canonical program `A154269.P12629811224364299033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154269 (n : ℕ) : ℤ :=
  A154269.P12629811224364299033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160943.P15020166745385108868

`n+1+A007953(n)+A007953(n+2)`
-/

namespace A160943.P15020166745385108868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007953 n + A007953 (n + 2)

end

end A160943.P15020166745385108868

noncomputable section

/-- A160943: a(n) = n + digital sum(n-1) + digital sum(n+1).

Offset 1, canonical program `A160943.P15020166745385108868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160943 (n : ℕ) : ℤ :=
  A160943.P15020166745385108868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160944.P1125537009076295035

`(n+1)*A007953(n)*A007953(n+2)`
-/

namespace A160944.P1125537009076295035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007953 n * A007953 (n + 2)

end

end A160944.P1125537009076295035

noncomputable section

/-- A160944: a(n)= n * digital sum(n-1) * digital sum(n+1).

Offset 1, canonical program `A160944.P1125537009076295035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160944 (n : ℕ) : ℤ :=
  A160944.P1125537009076295035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160949.P6883797465281388832

`n+1-A007953(n+2)`
-/

namespace A160949.P6883797465281388832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007953 (n + 2)

end

end A160949.P6883797465281388832

noncomputable section

/-- A160949: a(n) = n - digital sum(n+1).

Offset 1, canonical program `A160949.P6883797465281388832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160949 (n : ℕ) : ℤ :=
  A160949.P6883797465281388832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161351.P14732412019003608859

`n+1+A007953(n+1)+A007954(n+1)`
-/

namespace A161351.P14732412019003608859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007953 (n + 1) + A007954 (n + 1)

end

end A161351.P14732412019003608859

noncomputable section

/-- A161351: a(n) = n + sum_of_digits(n) + product_of_digits(n).

Offset 1, canonical program `A161351.P14732412019003608859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161351 (n : ℕ) : ℤ :=
  A161351.P14732412019003608859.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163233.P15636141208791349415

`A000695(A003188(row(n)-col(n)))+2*A000695(A003188(col(n)))`
-/

namespace A163233.P15636141208791349415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A003188 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)).toNat + 2 * A000695 (A003188 (SequenceMachineLib.triCol n)).toNat

end

end A163233.P15636141208791349415

noncomputable section

/-- A163233: Two-dimensional Binary Reflected Gray Code: a(i,j) = bits of binary expansion of A003188(i) interleaved with that of A003188(j).

Offset 0, canonical program `A163233.P15636141208791349415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163233 (n : ℕ) : ℤ :=
  A163233.P15636141208791349415.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163449.P10187514071230630520

`A007088(A007582(n))`
-/

namespace A163449.P10187514071230630520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007582 n).toNat

end

end A163449.P10187514071230630520

noncomputable section

/-- A163449: A007582 written in base 2.

Offset 0, canonical program `A163449.P10187514071230630520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163449 (n : ℕ) : ℤ :=
  A163449.P10187514071230630520.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163450.P5943626076533476686

`A007088(A028403(n+1))`
-/

namespace A163450.P5943626076533476686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A028403 (n + 1)).toNat

end

end A163450.P5943626076533476686

noncomputable section

/-- A163450: A028403 written in base 2.

Offset 1, canonical program `A163450.P5943626076533476686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163450 (n : ℕ) : ℤ :=
  A163450.P5943626076533476686.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164046.P10135874413232948754

`A007088(A001445(n+2))`
-/

namespace A164046.P10135874413232948754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001445 (n + 2)).toNat

end

end A164046.P10135874413232948754

noncomputable section

/-- A164046: A001445 written in base 2.

Offset 1, canonical program `A164046.P10135874413232948754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164046 (n : ℕ) : ℤ :=
  A164046.P10135874413232948754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166311.P15573441771159262399

`eq[11, A007953(n)]`
-/

namespace A166311.P15573441771159262399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P15573441771159262399

noncomputable section

/-- A166311: Numbers whose sum of digits is 11.

Offset 1, canonical program `A166311.P15573441771159262399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A166311 (n : ℕ) : ℤ :=
  (A166311.P15573441771159262399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A166311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169805.P17977796700678006772

`2*A007953(n)`
-/

namespace A169805.P17977796700678006772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

end

end A169805.P17977796700678006772

noncomputable section

/-- A169805: Twice the sum of the digits of n.

Offset 0, canonical program `A169805.P17977796700678006772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169805 (n : ℕ) : ℤ :=
  A169805.P17977796700678006772.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169964.P5476345950802300353

`5*A007088(n)`
-/

namespace A169964.P5476345950802300353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007088 n

end

end A169964.P5476345950802300353

noncomputable section

/-- A169964: Numbers whose decimal expansion contains only 0's and 5's.

Offset 1, canonical program `A169964.P5476345950802300353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169964 (n : ℕ) : ℤ :=
  A169964.P5476345950802300353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169965.P4332122273764269296

`2*A007088(n)`
-/

namespace A169965.P4332122273764269296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007088 n

end

end A169965.P4332122273764269296

noncomputable section

/-- A169965: Numbers whose decimal expansion contains only 0's and 2's.

Offset 1, canonical program `A169965.P4332122273764269296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169965 (n : ℕ) : ℤ :=
  A169965.P4332122273764269296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169966.P17934816075476850432

`3*A007088(n)`
-/

namespace A169966.P17934816075476850432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007088 n

end

end A169966.P17934816075476850432

noncomputable section

/-- A169966: Numbers whose decimal expansion contains only 0's and 3's.

Offset 1, canonical program `A169966.P17934816075476850432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169966 (n : ℕ) : ℤ :=
  A169966.P17934816075476850432.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169967.P11381469564767287368

`4*A007088(n)`
-/

namespace A169967.P11381469564767287368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007088 n

end

end A169967.P11381469564767287368

noncomputable section

/-- A169967: Numbers whose decimal expansion contains only 0's and 4's.

Offset 1, canonical program `A169967.P11381469564767287368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169967 (n : ℕ) : ℤ :=
  A169967.P11381469564767287368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171181.P4361869760045339606

`A028242(n)-A007953(A057979(n))`
-/

namespace A171181.P4361869760045339606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - A007953 (A057979 n).toNat

end

end A171181.P4361869760045339606

noncomputable section

/-- A171181: n followed by (n - sum of digits of n).

Offset 0, canonical program `A171181.P4361869760045339606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A171181 (n : ℕ) : ℤ :=
  A171181.P4361869760045339606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A171181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171758.P10354067191395966200

`A007088(A171757(n+1))`
-/

namespace A171758.P10354067191395966200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171757 (n + 1)).toNat

end

end A171758.P10354067191395966200

noncomputable section

/-- A171758: Binary expansion of numbers in A171757.

Offset 1, canonical program `A171758.P10354067191395966200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171758 (n : ℕ) : ℤ :=
  A171758.P10354067191395966200.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171764.P2806346960850218837

`A007088(A171763(n+1))`
-/

namespace A171764.P2806346960850218837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171763 (n + 1)).toNat

end

end A171764.P2806346960850218837

noncomputable section

/-- A171764: Binary expansion of numbers in A171763.

Offset 1, canonical program `A171764.P2806346960850218837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171763, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171764 (n : ℕ) : ℤ :=
  A171764.P2806346960850218837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171763, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171782.P10207329375983446345

`A007088(A171781(n+1))`
-/

namespace A171782.P10207329375983446345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A171781 (n + 1)).toNat

end

end A171782.P10207329375983446345

noncomputable section

/-- A171782: Binary expansion of numbers in A171781.

Offset 1, canonical program `A171782.P10207329375983446345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171782 (n : ℕ) : ℤ :=
  A171782.P10207329375983446345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A171781, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171782.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173186.P1258675814604343579

`lt[A379971(n+1), 1]+1`
-/

namespace A173186.P1258675814604343579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A173186.P1258675814604343579

noncomputable section

/-- A173186: Numbers k such that k^2-1 is not squarefree.

Offset 1, canonical program `A173186.P1258675814604343579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173186 (n : ℕ) : ℤ :=
  (A173186.P1258675814604343579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173528.P11178338902106819806

`A053829(n)+1`
-/

namespace A173528.P11178338902106819806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n + 1

end

end A173528.P11178338902106819806

noncomputable section

/-- A173528: a(n) = 1 + sum of digits of n-1 written in base 8.

Offset 1, canonical program `A173528.P11178338902106819806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173528 (n : ℕ) : ℤ :=
  A173528.P11178338902106819806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174415.P16168713899393504005

`lt[gcd(n, A007088(n)), n]`
-/

namespace A174415.P16168713899393504005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007088 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174415.P16168713899393504005

noncomputable section

/-- A174415: Numbers such that when expressed in base 2 and then interpreted in base 10, is not a multiple of the original number.

Offset 1, canonical program `A174415.P16168713899393504005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174415 (n : ℕ) : ℤ :=
  (A174415.P16168713899393504005.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176266.P12904055352425383494

`C(A000040(n+1), A007953(n+1))/A000040(n+1)`
-/

namespace A176266.P12904055352425383494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1)).toNat (A007953 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A176266.P12904055352425383494

noncomputable section

/-- A176266: Binomial(prime(n),s)/prime(n) where s is the sum of the decimal digits of n.

Offset 1, canonical program `A176266.P12904055352425383494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176266.P12904055352425383494.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176894.P5448320031125589196

`A007088(n)+A002276(A070939(n))`
-/

namespace A176894.P5448320031125589196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + A002276 (A070939 n).toNat

end

end A176894.P5448320031125589196

noncomputable section

/-- A176894: Increase each digit in the binary representation of n by 2.

Offset 0, canonical program `A176894.P5448320031125589196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176894 (n : ℕ) : ℤ :=
  A176894.P5448320031125589196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180018.P8181294393802451233

`A007953(n)-A000120(n)`
-/

namespace A180018.P8181294393802451233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000120 n

end

end A180018.P8181294393802451233

noncomputable section

/-- A180018: Difference of sums of digits of n in decimal and in binary representation.

Offset 0, canonical program `A180018.P8181294393802451233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180018 (n : ℕ) : ℤ :=
  A180018.P8181294393802451233.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180019.P15303784812221257268

`A007953(n)-A053735(n)`
-/

namespace A180019.P15303784812221257268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A053735 n

end

end A180019.P15303784812221257268

noncomputable section

/-- A180019: Difference of sums of digits of n in decimal and in ternary representation.

Offset 0, canonical program `A180019.P15303784812221257268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180019 (n : ℕ) : ℤ :=
  A180019.P15303784812221257268.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180019.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187744.P5382630201904644489

`eq[0, A002262(A007953(n))]`
-/

namespace A187744.P5382630201904644489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P5382630201904644489

noncomputable section

/-- A187744: Numbers whose digital sum is a triangular number.

Offset 1, canonical program `A187744.P5382630201904644489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A187744 (n : ℕ) : ℤ :=
  (A187744.P5382630201904644489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A187744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187795.P2051181105605549889

`∑{d}[n+1, A294937(#)*#]`
-/

namespace A187795.P2051181105605549889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294937 d * (d : ℤ)

end

end A187795.P2051181105605549889

noncomputable section

/-- A187795: Sum of the abundant divisors of n.

Offset 1, canonical program `A187795.P2051181105605549889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187795 (n : ℕ) : ℤ :=
  A187795.P2051181105605549889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190944.P11131727820817368207

`A007088(A008585(n))`
-/

namespace A190944.P11131727820817368207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A008585 n).toNat

end

end A190944.P11131727820817368207

noncomputable section

/-- A190944: Multiples of 3 written in base 2.

Offset 0, canonical program `A190944.P11131727820817368207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190944 (n : ℕ) : ℤ :=
  A190944.P11131727820817368207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193772.P4613758967255747275

`eq[2*A000030(n), A007953(n)]`
-/

namespace A193772.P4613758967255747275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193772.P4613758967255747275

noncomputable section

/-- A193772: Nonnegative integers whose digital difference is 0.

Offset 1, canonical program `A193772.P4613758967255747275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A193772 (n : ℕ) : ℤ :=
  (A193772.P4613758967255747275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A193772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198470.P9035181533126042493

`lt[A187793(n+1), n]+1`
-/

namespace A198470.P9035181533126042493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A198470.P9035181533126042493

noncomputable section

/-- A198470: Numbers that are larger than the sum of their deficient divisors.

Offset 1, canonical program `A198470.P9035181533126042493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A198470 (n : ℕ) : ℤ :=
  (A198470.P9035181533126042493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A198470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204093.P12830992095828407750

`6*A007088(n)`
-/

namespace A204093.P12830992095828407750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007088 n

end

end A204093.P12830992095828407750

noncomputable section

/-- A204093: Numbers whose set of base-10 digits is {0,6}.

Offset 0, canonical program `A204093.P12830992095828407750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204093 (n : ℕ) : ℤ :=
  A204093.P12830992095828407750.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204094.P6203249824050151500

`7*A007088(n)`
-/

namespace A204094.P6203249824050151500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007088 n

end

end A204094.P6203249824050151500

noncomputable section

/-- A204094: Numbers whose set of base 10 digits is {0,7}.

Offset 0, canonical program `A204094.P6203249824050151500`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204094 (n : ℕ) : ℤ :=
  A204094.P6203249824050151500.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204095.P12496041222764549128

`8*A007088(n)`
-/

namespace A204095.P12496041222764549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007088 n

end

end A204095.P12496041222764549128

noncomputable section

/-- A204095: Numbers whose base 10 digits are a subset of {0, 8}.

Offset 0, canonical program `A204095.P12496041222764549128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204095 (n : ℕ) : ℤ :=
  A204095.P12496041222764549128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204095.provenance : SequenceMachineLib.Provenance := .conditional

