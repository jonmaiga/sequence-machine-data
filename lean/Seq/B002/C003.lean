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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A138331.P9701934209222227417

`(-1)^(n+1)*16*A040977(n)`
-/

namespace A138331.P9701934209222227417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * 16 * A040977 n

end

end A138331.P9701934209222227417

noncomputable section

/-- A138331: a(n) = C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3.

Offset 0, canonical program `A138331.P9701934209222227417`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3` (program `A138331.P1805238586572736106`, by `A138331.P1805238586572736106.correct`). Lean does not check the parsing of the name. -/
def A138331 (n : ℕ) : ℤ :=
  A138331.P9701934209222227417.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*(n+3)*(-1)^(n+1)*16/3` (program `A138331.P1805238586572736106`, by `A138331.P1805238586572736106.correct`). Lean does not check the parsing of the name. -/
def A138331.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 0, canonical program `A140992.P7781271617900783477`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-1)+A000071(n+1)` (program `A140992.P7781271617900783477`, by `A140992.P7781271617900783477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140992 (n : ℕ) : ℤ :=
  A140992.P7781271617900783477.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-1)+A000071(n+1)` (program `A140992.P7781271617900783477`, by `A140992.P7781271617900783477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140992.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A144483.P3915174990611328427`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A144481(4*n+1)` (program `A144483.P3915174990611328427`, by `A144483.P3915174990611328427.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144483 (n : ℕ) : ℤ :=
  A144483.P3915174990611328427.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A144481(4*n+1)` (program `A144483.P3915174990611328427`, by `A144483.P3915174990611328427.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A144483.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A134467.P13825419003851249081

`n*(n+1)-A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134467.P13825419003851249081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℤ) - A000120 n

end

end A134467.P13825419003851249081

noncomputable section

/-- A134467: a(n) = n(n+1) - A000120(n), where A000120(n) = number of 1's in binary expansion of n.

Offset 0, canonical program `A134467.P13825419003851249081`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)-A000120(n)` (program `A134467.P13825419003851249081`, by `A134467.P13825419003851249081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A134467 (n : ℕ) : ℤ :=
  A134467.P13825419003851249081.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)-A000120(n)` (program `A134467.P13825419003851249081`, by `A134467.P13825419003851249081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A134467.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A127719.P13941545238741058609

`A000196(A024450(n+1))`
-/

namespace A127719.P13941545238741058609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 1)).toNat

end

end A127719.P13941545238741058609

noncomputable section

/-- A127719: Floor of square root of sum of squares of n consecutive primes.

Offset 1, canonical program `A127719.P13941545238741058609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127719 (n : ℕ) : ℤ :=
  A127719.P13941545238741058609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127720.P7407208501453972689

`A000196(A024450(n+2)-4)`
-/

namespace A127720.P7407208501453972689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 2) - 4).toNat

end

end A127720.P7407208501453972689

noncomputable section

/-- A127720: Floor of square root of sum of squares of n odd consecutive primes.

Offset 1, canonical program `A127720.P7407208501453972689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127720 (n : ℕ) : ℤ :=
  A127720.P7407208501453972689.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127920.P1899935215268348754

`A127918(n+1)/3`
-/

namespace A127920.P1899935215268348754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 1) : ℚ) / 3

end

end A127920.P1899935215268348754

noncomputable section

/-- A127920: 1/6 of product of three numbers: n-th prime, previous and following number.

Offset 1, canonical program `A127920.P1899935215268348754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127920.P1899935215268348754.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128179.P5850376553039655428

`(1-(-1)^A004736(n+1))*A002260(n+1)/2`
-/

namespace A128179.P5850376553039655428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1 : ℚ) ^ (A004736 (n + 1) : ℤ)) * (A002260 (n + 1) : ℚ) / 2

end

end A128179.P5850376553039655428

noncomputable section

/-- A128179: A097807 * A002260.

Offset 1, canonical program `A128179.P5850376553039655428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128179.P5850376553039655428.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128614.P4000369767337592701

`(n+2)!*A005043(n+1)`
-/

namespace A128614.P4000369767337592701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) * A005043 (n + 1)

end

end A128614.P4000369767337592701

noncomputable section

/-- A128614: Number of labeled plane trees with n edges in which no vertex has outdegree one.

Offset 1, canonical program `A128614.P4000369767337592701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128614 (n : ℕ) : ℤ :=
  A128614.P4000369767337592701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128650.P16731929856799845103

`4*A001791(n)`
-/

namespace A128650.P16731929856799845103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001791 n

end

end A128650.P16731929856799845103

noncomputable section

/-- A128650: Number of polygons on n vertices with exactly three faces.

Offset 2, canonical program `A128650.P16731929856799845103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128650 (n : ℕ) : ℤ :=
  A128650.P16731929856799845103.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129184.P10440994507416109383

`A010054(n+2)`
-/

namespace A129184.P10440994507416109383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2)

end

end A129184.P10440994507416109383

noncomputable section

/-- A129184: Shift operator, right.

Offset 1, canonical program `A129184.P10440994507416109383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129184 (n : ℕ) : ℤ :=
  A129184.P10440994507416109383.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129202.P3619037989143956245

`A026741(n+1)*A051176(n+1)`
-/

namespace A129202.P3619037989143956245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A051176 (n + 1)

end

end A129202.P3619037989143956245

noncomputable section

/-- A129202: Denominator of 3*(3+(-1)^n) / (n+1)^2.

Offset 0, canonical program `A129202.P3619037989143956245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129202 (n : ℕ) : ℤ :=
  A129202.P3619037989143956245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129588.P12646106946499544468

`16*A008438(n)`
-/

namespace A129588.P12646106946499544468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A008438 n

end

end A129588.P12646106946499544468

noncomputable section

/-- A129588: Expansion of q^-1 * theta_2(q)^4 in powers of q^2.

Offset 0, canonical program `A129588.P12646106946499544468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129588 (n : ℕ) : ℤ :=
  A129588.P12646106946499544468.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129705.P9060228378975808743

`A000071(row(n)+2)-col(n)*(col(n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129705.P9060228378975808743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (SequenceMachineLib.triRow n + 2) : ℚ) - (SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A129705.P9060228378975808743

noncomputable section

/-- A129705: Triangle T(n,m) = A000071(n+2)-m*(m+1)/2 read by rows.

Offset 0, canonical program `A129705.P9060228378975808743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129705 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129705.P9060228378975808743.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130726.P14698602818690093839

`A000142(A007917(n+2))`
-/

namespace A130726.P14698602818690093839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A007917 (n + 2)).toNat

end

end A130726.P14698602818690093839

noncomputable section

/-- A130726: Factorial of the largest prime less than or equal to n.

Offset 1, canonical program `A130726.P14698602818690093839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130726 (n : ℕ) : ℤ :=
  A130726.P14698602818690093839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130750.P14488460667816927176

`2^(n+1)+A128834(n+4)`
-/

namespace A130750.P14488460667816927176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A128834 (n + 4)

end

end A130750.P14488460667816927176

noncomputable section

/-- A130750: Binomial transform of A010882.

Offset 0, canonical program `A130750.P14488460667816927176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130750 (n : ℕ) : ℤ :=
  A130750.P14488460667816927176.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130752.P9194626256441328904

`2^(n+1)+A128834(n)`
-/

namespace A130752.P9194626256441328904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A128834 n

end

end A130752.P9194626256441328904

noncomputable section

/-- A130752: Binomial transform of periodic sequence (2, 3, 1).

Offset 0, canonical program `A130752.P9194626256441328904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130752 (n : ℕ) : ℤ :=
  A130752.P9194626256441328904.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130755.P8640777015960531994

`2^(n+1)+A128834(n+2)`
-/

namespace A130755.P8640777015960531994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A128834 (n + 2)

end

end A130755.P8640777015960531994

noncomputable section

/-- A130755: Binomial transform of periodic sequence (3, 1, 2).

Offset 0, canonical program `A130755.P8640777015960531994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130755 (n : ℕ) : ℤ :=
  A130755.P8640777015960531994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131590.P3790434165472296789

`A024450(2^n)`
-/

namespace A131590.P3790434165472296789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (2 ^ n)

end

end A131590.P3790434165472296789

noncomputable section

/-- A131590: Sum of the squares of the first 2^n primes.

Offset 0, canonical program `A131590.P3790434165472296789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131590 (n : ℕ) : ℤ :=
  A131590.P3790434165472296789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131591.P7378338396436422358

`A024450(3^n)`
-/

namespace A131591.P7378338396436422358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (3 ^ n)

end

end A131591.P7378338396436422358

noncomputable section

/-- A131591: Sum of the squares of the first 3^n primes.

Offset 0, canonical program `A131591.P7378338396436422358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131591 (n : ℕ) : ℤ :=
  A131591.P7378338396436422358.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131592.P8863503537066484247

`A024450(A000312(n))`
-/

namespace A131592.P8863503537066484247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A000312 n).toNat

end

end A131592.P8863503537066484247

noncomputable section

/-- A131592: Sum of the squares of the first n^n primes.

Offset 0, canonical program `A131592.P8863503537066484247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131592 (n : ℕ) : ℤ :=
  A131592.P8863503537066484247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131668.P2464046413389403191

`A051885(2*n+1)`
-/

namespace A131668.P2464046413389403191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 * n + 1)

end

end A131668.P2464046413389403191

noncomputable section

/-- A131668: Smallest number whose sum of digits is 2n+1.

Offset 0, canonical program `A131668.P2464046413389403191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131668 (n : ℕ) : ℤ :=
  A131668.P2464046413389403191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131762.P2142285092514220910

`32-A000120(n)`
-/

namespace A131762.P2142285092514220910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A000120 n

end

end A131762.P2142285092514220910

noncomputable section

/-- A131762: Number of 1s in the 1's complement of the 32-bit binary representation of n.

Offset 0, canonical program `A131762.P2142285092514220910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131762 (n : ℕ) : ℤ :=
  A131762.P2142285092514220910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133062.P15933548885244344016

`5*A050997(n+1)-3*A030078(n+1)+2*A001248(n+1)`
-/

namespace A133062.P15933548885244344016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A050997 (n + 1) - 3 * A030078 (n + 1) + 2 * A001248 (n + 1)

end

end A133062.P15933548885244344016

noncomputable section

/-- A133062: a(n) = 5*p^5 - 3*p^3 + 2*p^2 with p = prime(n).

Offset 1, canonical program `A133062.P15933548885244344016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133062 (n : ℕ) : ℤ :=
  A133062.P15933548885244344016.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133225.P6560289750139441964

`A007917(A017910(n+2))`
-/

namespace A133225.P6560289750139441964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A017910 (n + 2)).toNat

end

end A133225.P6560289750139441964

noncomputable section

/-- A133225: Largest prime <= 2^((n+1)/2).

Offset 1, canonical program `A133225.P6560289750139441964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133225 (n : ℕ) : ℤ :=
  A133225.P6560289750139441964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133296.P4224983109469996391

`A051885(2*n)`
-/

namespace A133296.P4224983109469996391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 * n)

end

end A133296.P4224983109469996391

noncomputable section

/-- A133296: Smallest number whose sum of digits is 2n.

Offset 0, canonical program `A133296.P4224983109469996391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133296 (n : ℕ) : ℤ :=
  A133296.P4224983109469996391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133529.P6726527200779118077

`A069484(n+1)+A001248(n+3)`
-/

namespace A133529.P6726527200779118077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A001248 (n + 3)

end

end A133529.P6726527200779118077

noncomputable section

/-- A133529: Sum of squares of three consecutive primes.

Offset 1, canonical program `A133529.P6726527200779118077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133529 (n : ℕ) : ℤ :=
  A133529.P6726527200779118077.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133534.P8927698302002784896

`A030078(n+1)+A030078(n+2)`
-/

namespace A133534.P8927698302002784896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + A030078 (n + 2)

end

end A133534.P8927698302002784896

noncomputable section

/-- A133534: Sum of third powers of two consecutive primes.

Offset 1, canonical program `A133534.P8927698302002784896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133534 (n : ℕ) : ℤ :=
  A133534.P8927698302002784896.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133535.P17160611315986516138

`A030514(n+1)+A030514(n+2)`
-/

namespace A133535.P17160611315986516138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) + A030514 (n + 2)

end

end A133535.P17160611315986516138

noncomputable section

/-- A133535: Sum of fourth powers of two consecutive primes.

Offset 1, canonical program `A133535.P17160611315986516138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133535 (n : ℕ) : ℤ :=
  A133535.P17160611315986516138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133536.P9524943263663054428

`A050997(n+1)+A050997(n+2)`
-/

namespace A133536.P9524943263663054428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + A050997 (n + 2)

end

end A133536.P9524943263663054428

noncomputable section

/-- A133536: Sum of fifth powers of two consecutive primes.

Offset 1, canonical program `A133536.P9524943263663054428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133536 (n : ℕ) : ℤ :=
  A133536.P9524943263663054428.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133537.P14407544762296117018

`A030516(n+1)+A030516(n+2)`
-/

namespace A133537.P14407544762296117018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) + A030516 (n + 2)

end

end A133537.P14407544762296117018

noncomputable section

/-- A133537: Sum of sixth powers of two consecutive primes.

Offset 1, canonical program `A133537.P14407544762296117018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133537 (n : ℕ) : ℤ :=
  A133537.P14407544762296117018.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133538.P15090665572470538733

`A092759(n+1)+A092759(n+2)`
-/

namespace A133538.P15090665572470538733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) + A092759 (n + 2)

end

end A133538.P15090665572470538733

noncomputable section

/-- A133538: Sum of seventh powers of two consecutive primes.

Offset 1, canonical program `A133538.P15090665572470538733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133538 (n : ℕ) : ℤ :=
  A133538.P15090665572470538733.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133547.P11212506623590984264

`A024450(n+2)-4`
-/

namespace A133547.P11212506623590984264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 2) - 4

end

end A133547.P11212506623590984264

noncomputable section

/-- A133547: a(n) = sum of squares of first n odd primes.

Offset 1, canonical program `A133547.P11212506623590984264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133547 (n : ℕ) : ℤ :=
  A133547.P11212506623590984264.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133910.P7626543162645923989

`A064446(n+1)/(n+1)`
-/

namespace A133910.P7626543162645923989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064446 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A133910.P7626543162645923989

noncomputable section

/-- A133910: Period numbers of A133900 divided by n^2.

Offset 1, canonical program `A133910.P7626543162645923989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133910.P7626543162645923989.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134508.P12291140053637182191

`A000071(n+3)+A029907(n+1)-(n+1)`
-/

namespace A134508.P12291140053637182191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + A029907 (n + 1) - (n + 1 : ℤ)

end

end A134508.P12291140053637182191

noncomputable section

/-- A134508: Row sums of triangle A134507.

Offset 1, canonical program `A134508.P12291140053637182191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134508 (n : ℕ) : ℤ :=
  A134508.P12291140053637182191.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134591.P13784663667261059065

`A014689(n+1)+A000040(n+1)`
-/

namespace A134591.P13784663667261059065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + A000040 (n + 1)

end

end A134591.P13784663667261059065

noncomputable section

/-- A134591: a(n) is n reflected in n-th prime: distance between a(n) and prime(n) equals distance between prime(n) and n.

Offset 1, canonical program `A134591.P13784663667261059065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134591 (n : ℕ) : ℤ :=
  A134591.P13784663667261059065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135171.P10397032383344473501

`A057901(n+1)-A034785(n+1)`
-/

namespace A135171.P10397032383344473501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057901 (n + 1) - A034785 (n + 1)

end

end A135171.P10397032383344473501

noncomputable section

/-- A135171: 3^p - 2^p, where p = prime(n).

Offset 1, canonical program `A135171.P10397032383344473501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135171 (n : ℕ) : ℤ :=
  A135171.P10397032383344473501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135173.P4341705398435944029

`A057902(n+1)-A057901(n+1)-A034785(n+1)`
-/

namespace A135173.P4341705398435944029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057902 (n + 1) - A057901 (n + 1) - A034785 (n + 1)

end

end A135173.P4341705398435944029

noncomputable section

/-- A135173: a(n) = 5^p - 3^p - 2^p, where p = prime(n).

Offset 1, canonical program `A135173.P4341705398435944029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135173 (n : ℕ) : ℤ :=
  A135173.P4341705398435944029.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135177.P13258641397500885273

`A030078(n+1)-A001248(n+1)`
-/

namespace A135177.P13258641397500885273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A001248 (n + 1)

end

end A135177.P13258641397500885273

noncomputable section

/-- A135177: a(n) = p^2*(p-1), where p = prime(n).

Offset 1, canonical program `A135177.P13258641397500885273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135177 (n : ℕ) : ℤ :=
  A135177.P13258641397500885273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135179.P4376560334268819902

`A050997(n+1)-A030078(n+1)-A001248(n+1)`
-/

namespace A135179.P4376560334268819902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A030078 (n + 1) - A001248 (n + 1)

end

end A135179.P4376560334268819902

noncomputable section

/-- A135179: p^5 - p^3 - p^2. Exponents are the prime numbers in decreasing order and p is the n-th prime.

Offset 1, canonical program `A135179.P4376560334268819902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135179 (n : ℕ) : ℤ :=
  A135179.P4376560334268819902.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135182.P14277112270970235389

`A001248(n+1)+A030078(n+1)+A050997(n+1)`
-/

namespace A135182.P14277112270970235389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A030078 (n + 1) + A050997 (n + 1)

end

end A135182.P14277112270970235389

noncomputable section

/-- A135182: p^5 + p^3 + p^2. Exponents are prime numbers and p = prime(n).

Offset 1, canonical program `A135182.P14277112270970235389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135182 (n : ℕ) : ℤ :=
  A135182.P14277112270970235389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135249.P6172404458566147260

`1+A070826(n+1)`
-/

namespace A135249.P6172404458566147260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A070826 (n + 1)

end

end A135249.P6172404458566147260

noncomputable section

/-- A135249: a(n) = number of bits in the binary expansion of A046967(n).

Offset 1, canonical program `A135249.P6172404458566147260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135249 (n : ℕ) : ℤ :=
  A135249.P6172404458566147260.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135389.P8667978144181006220

`A001791(n+1)*A000984(n+1)`
-/

namespace A135389.P8667978144181006220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A000984 (n + 1)

end

end A135389.P8667978144181006220

noncomputable section

/-- A135389: Number of walks of length 2*n+2 from origin to (1,1) in a square lattice.

Offset 0, canonical program `A135389.P8667978144181006220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135389 (n : ℕ) : ℤ :=
  A135389.P8667978144181006220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135482.P9781212755023838495

`A076793(n)/4`
-/

namespace A135482.P9781212755023838495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076793 n : ℚ) / 4

end

end A135482.P9781212755023838495

noncomputable section

/-- A135482: a(n) = (1/4)*Sum_{j=1..n} 2^prime(j).

Offset 0, canonical program `A135482.P9781212755023838495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135482.P9781212755023838495.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135540.P6682804189538680421

`2^(A000523(n+1)-A000120(n+1)+2)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135540.P6682804189538680421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000523 (n + 1) - A000120 (n + 1) + 2 : ℤ) - 1

end

end A135540.P6682804189538680421

noncomputable section

/-- A135540: a(n) = 2^(A000523(n) - A000120(n) + 2) - 1.

Offset 1, canonical program `A135540.P6682804189538680421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135540.P6682804189538680421.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135568.P15746098377430896157

`floor(A002110(n)/A000142(n))`
-/

namespace A135568.P15746098377430896157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (A000142 n : ℚ)⌋

end

end A135568.P15746098377430896157

noncomputable section

/-- A135568: a(n) = floor( Product_{i=1..n} prime(i)/i ).

Offset 0, canonical program `A135568.P15746098377430896157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135568 (n : ℕ) : ℤ :=
  A135568.P15746098377430896157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135569.P11530090348024496574

`A000120(n)*2^n`
-/

namespace A135569.P11530090348024496574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * (2 ^ n : ℤ)

end

end A135569.P11530090348024496574

noncomputable section

/-- A135569: a(n) = S2(n)*2^n; where S2(n) is digit sum of n, n in binary notation.

Offset 0, canonical program `A135569.P11530090348024496574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135569 (n : ℕ) : ℤ :=
  A135569.P11530090348024496574.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135941.P6187496771370470552

`floor((n+1)/A000120(n+1))`
-/

namespace A135941.P6187496771370470552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A000120 (n + 1) : ℚ)⌋

end

end A135941.P6187496771370470552

noncomputable section

/-- A135941: a(n) = floor(n/S2(n)), where S2(n) is the binary weight of n.

Offset 1, canonical program `A135941.P6187496771370470552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135941 (n : ℕ) : ℤ :=
  A135941.P6187496771370470552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136035.P14793147470030511558

`A001348(n+1)%A008864(n+1)`
-/

namespace A136035.P14793147470030511558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001348 (n + 1)) (A008864 (n + 1))

end

end A136035.P14793147470030511558

noncomputable section

/-- A136035: Remainder when dividing 2^q - 1 by q + 1 where q is the n-th prime.

Offset 1, canonical program `A136035.P14793147470030511558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136035 (n : ℕ) : ℤ :=
  A136035.P14793147470030511558.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136107.P13068712617901272684

`A001227(n+1)-A010054(n+1)`
-/

namespace A136107.P13068712617901272684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A010054 (n + 1)

end

end A136107.P13068712617901272684

noncomputable section

/-- A136107: Number of representations of n as the difference of two positive triangular numbers.

Offset 1, canonical program `A136107.P13068712617901272684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136107 (n : ℕ) : ℤ :=
  A136107.P13068712617901272684.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136496.P805941965056846939

`A136495(n+1)+A005374(n)+n+1`
-/

namespace A136496.P805941965056846939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A005374 n + (n + 1 : ℤ)

end

end A136496.P805941965056846939

noncomputable section

/-- A136496: Solution of the complementary equation b(n)=a(a(n))+n; this is sequence b; sequence a is A136495.

Offset 1, canonical program `A136496.P805941965056846939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136496 (n : ℕ) : ℤ :=
  A136496.P805941965056846939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137389.P15135994414756883404

`A034785(n+1)+A034785(n+2)`
-/

namespace A137389.P15135994414756883404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) + A034785 (n + 2)

end

end A137389.P15135994414756883404

noncomputable section

/-- A137389: a(n) = 2^prime(n) + 2^prime(n+1).

Offset 1, canonical program `A137389.P15135994414756883404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137389 (n : ℕ) : ℤ :=
  A137389.P15135994414756883404.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137458.P10395638896452164860

`A000040(A007913(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137458.P10395638896452164860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007913 (n + 1)).toNat

end

end A137458.P10395638896452164860

noncomputable section

/-- A137458: Prime(core(n)).

Offset 1, canonical program `A137458.P10395638896452164860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137458 (n : ℕ) : ℤ :=
  A137458.P10395638896452164860.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137665.P154596859272878113

`A137664(n+1)/A000040(n+1)²`
-/

namespace A137665.P154596859272878113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137664 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)

end

end A137665.P154596859272878113

noncomputable section

/-- A137665: Quotients ((p+1)^p - 1)/p^2 for p = prime(n).

Offset 1, canonical program `A137665.P154596859272878113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137665.P154596859272878113.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137718.P18354280375618536243

`A137717(n)/2^floor(n/2)`
-/

namespace A137718.P18354280375618536243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137717 n : ℚ) / (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A137718.P18354280375618536243

noncomputable section

/-- A137718: A scaled Hankel transform.

Offset 0, canonical program `A137718.P18354280375618536243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137718.P18354280375618536243.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137727.P5637515941323942506

`A010879(A006094(n+1))`
-/

namespace A137727.P5637515941323942506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A006094 (n + 1)).toNat

end

end A137727.P5637515941323942506

noncomputable section

/-- A137727: Final digit of prime(n)*prime(n+1).

Offset 1, canonical program `A137727.P5637515941323942506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137727 (n : ℕ) : ℤ :=
  A137727.P5637515941323942506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137780.P2103839345452959621

`1+2^A001223(n+1)`
-/

namespace A137780.P2103839345452959621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (2 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A137780.P2103839345452959621

noncomputable section

/-- A137780: a(n) = 1 + 2^( prime(n + 1) - prime(n) ).

Offset 1, canonical program `A137780.P2103839345452959621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137780.P2103839345452959621.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137807.P2315973697329758852

`A010879(A001248(n+1))`
-/

namespace A137807.P2315973697329758852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A001248 (n + 1)).toNat

end

end A137807.P2315973697329758852

noncomputable section

/-- A137807: Final digit of prime(n)^2.

Offset 1, canonical program `A137807.P2315973697329758852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137807 (n : ℕ) : ℤ :=
  A137807.P2315973697329758852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138403.P9837002245501069480

`A030514(n+1)-A030078(n+1)`
-/

namespace A138403.P9837002245501069480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - A030078 (n + 1)

end

end A138403.P9837002245501069480

noncomputable section

/-- A138403: a(n) = p^3*(p-1), where p = prime(n).

Offset 1, canonical program `A138403.P9837002245501069480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138403 (n : ℕ) : ℤ :=
  A138403.P9837002245501069480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138407.P5183959354295253319

`A050997(n+1)-A030514(n+1)`
-/

namespace A138407.P5183959354295253319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A030514 (n + 1)

end

end A138407.P5183959354295253319

noncomputable section

/-- A138407: a(n) = p^4*(p-1), where p = prime(n).

Offset 1, canonical program `A138407.P5183959354295253319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138407 (n : ℕ) : ℤ :=
  A138407.P5183959354295253319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138417.P6610939322627036311

`A138401(n+1)/2`
-/

namespace A138417.P6610939322627036311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138401 (n + 1) : ℚ) / 2

end

end A138417.P6610939322627036311

noncomputable section

/-- A138417: a(n) = (prime(n)^4 - prime(n))/2.

Offset 1, canonical program `A138417.P6610939322627036311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138417 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138417.P6610939322627036311.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138424.P9846473390818304069

`A138404(n+1)/2`
-/

namespace A138424.P9846473390818304069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 2

end

end A138424.P9846473390818304069

noncomputable section

/-- A138424: a(n) = (prime(n)^5 - prime(n))/2.

Offset 1, canonical program `A138424.P9846473390818304069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138424.P9846473390818304069.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138425.P15250996574324139531

`A138404(n+1)/3`
-/

namespace A138425.P15250996574324139531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 3

end

end A138425.P15250996574324139531

noncomputable section

/-- A138425: a(n) = (prime(n)^5 - prime(n))/3.

Offset 1, canonical program `A138425.P15250996574324139531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138425 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138425.P15250996574324139531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138426.P573586868514180922

`A138404(n+1)/5`
-/

namespace A138426.P573586868514180922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 5

end

end A138426.P573586868514180922

noncomputable section

/-- A138426: a(n) = ((prime(n))^5-prime(n))/5.

Offset 1, canonical program `A138426.P573586868514180922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138426 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138426.P573586868514180922.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138427.P16097215975981541627

`A138404(n+1)/6`
-/

namespace A138427.P16097215975981541627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 6

end

end A138427.P16097215975981541627

noncomputable section

/-- A138427: a(n) = (prime(n)^5 - prime(n))/6.

Offset 1, canonical program `A138427.P16097215975981541627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138427 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138427.P16097215975981541627.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138428.P16215702972878224398

`A138404(n+1)/10`
-/

namespace A138428.P16215702972878224398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 10

end

end A138428.P16215702972878224398

noncomputable section

/-- A138428: a(n) = (prime(n)^5 - prime(n))/10.

Offset 1, canonical program `A138428.P16215702972878224398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138428 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138428.P16215702972878224398.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138429.P2386023419108001403

`A138404(n+1)/15`
-/

namespace A138429.P2386023419108001403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 15

end

end A138429.P2386023419108001403

noncomputable section

/-- A138429: a(n) = (prime(n)^5 - prime(n))/15.

Offset 1, canonical program `A138429.P2386023419108001403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138429.P2386023419108001403.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138431.P2547013115861901951

`A138405(n+1)/2`
-/

namespace A138431.P2547013115861901951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) : ℚ) / 2

end

end A138431.P2547013115861901951

noncomputable section

/-- A138431: a(n) = ((n-th prime)^5-(n-th prime)^2)/2.

Offset 1, canonical program `A138431.P2547013115861901951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138431.P2547013115861901951.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138432.P6840818557510149970

`A138406(n+1)/2`
-/

namespace A138432.P6840818557510149970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 2

end

end A138432.P6840818557510149970

noncomputable section

/-- A138432: a(n) = ((n-th prime)^5-(n-th prime)^3)/2.

Offset 1, canonical program `A138432.P6840818557510149970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138432 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138432.P6840818557510149970.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138433.P5772360468710814788

`A138406(n+1)/3`
-/

namespace A138433.P5772360468710814788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 3

end

end A138433.P5772360468710814788

noncomputable section

/-- A138433: a(n) = ((n-th prime)^5-(n-th prime)^3)/3.

Offset 1, canonical program `A138433.P5772360468710814788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138433 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138433.P5772360468710814788.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138434.P7976038697840491430

`A138406(n+1)/4`
-/

namespace A138434.P7976038697840491430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 4

end

end A138434.P7976038697840491430

noncomputable section

/-- A138434: a(n) = ((n-th prime)^5-(n-th prime)^3)/4.

Offset 1, canonical program `A138434.P7976038697840491430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138434.P7976038697840491430.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138435.P16662900395581282620

`A138406(n+1)/6`
-/

namespace A138435.P16662900395581282620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 6

end

end A138435.P16662900395581282620

noncomputable section

/-- A138435: a(n) = ((n-th prime)^5-(n-th prime)^3)/6.

Offset 1, canonical program `A138435.P16662900395581282620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138435.P16662900395581282620.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138436.P8959698969068807926

`A138406(n+1)/8`
-/

namespace A138436.P8959698969068807926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 8

end

end A138436.P8959698969068807926

noncomputable section

/-- A138436: a(n) = ((n-th prime)^5-(n-th prime)^3)/8.

Offset 1, canonical program `A138436.P8959698969068807926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138436 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138436.P8959698969068807926.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138437.P12080558741332099424

`A138406(n+1)/12`
-/

namespace A138437.P12080558741332099424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / 12

end

end A138437.P12080558741332099424

noncomputable section

/-- A138437: a(n) = ((n-th prime)^5-(n-th prime)^3)/12.

Offset 1, canonical program `A138437.P12080558741332099424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138437.P12080558741332099424.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138440.P18082488222228574981

`A138408(n+1)/2`
-/

namespace A138440.P18082488222228574981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138408 (n + 1) : ℚ) / 2

end

end A138440.P18082488222228574981

noncomputable section

/-- A138440: a(n) = ((n-th prime)^6-(n-th prime))/2.

Offset 1, canonical program `A138440.P18082488222228574981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138440.P18082488222228574981.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138441.P11845817333899223938

`A138409(n+1)/2`
-/

namespace A138441.P11845817333899223938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 2

end

end A138441.P11845817333899223938

noncomputable section

/-- A138441: a(n) = ((n-th prime)^6-(n-th prime^2))/2.

Offset 1, canonical program `A138441.P11845817333899223938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138441.P11845817333899223938.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138442.P6492284779242872051

`A138409(n+1)/3`
-/

namespace A138442.P6492284779242872051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 3

end

end A138442.P6492284779242872051

noncomputable section

/-- A138442: a(n) = ((n-th prime)^6-(n-th prime^2))/3.

Offset 1, canonical program `A138442.P6492284779242872051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138442 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138442.P6492284779242872051.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138443.P2759808841860568747

`A138409(n+1)/4`
-/

namespace A138443.P2759808841860568747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 4

end

end A138443.P2759808841860568747

noncomputable section

/-- A138443: a(n) = ((n-th prime)^6-(n-th prime^2))/4.

Offset 1, canonical program `A138443.P2759808841860568747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138443.P2759808841860568747.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138444.P17809889728788974870

`A138409(n+1)/5`
-/

namespace A138444.P17809889728788974870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 5

end

end A138444.P17809889728788974870

noncomputable section

/-- A138444: a(n) = ((n-th prime)^6-(n-th prime^2))/5.

Offset 1, canonical program `A138444.P17809889728788974870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138444.P17809889728788974870.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138445.P4192572878039783319

`A138409(n+1)/6`
-/

namespace A138445.P4192572878039783319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 6

end

end A138445.P4192572878039783319

noncomputable section

/-- A138445: a(n) = ((n-th prime)^6-(n-th prime^2))/6.

Offset 1, canonical program `A138445.P4192572878039783319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138445.P4192572878039783319.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138552.P4734613694061573768

`(A000891(n)+A000108(n))/2`
-/

namespace A138552.P4734613694061573768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000891 n + A000108 n : ℚ) / 2

end

end A138552.P4734613694061573768

noncomputable section

/-- A138552: Returning walks of length 2n on the upper half of the square lattice, distinct under reflections about the y-axis.

Offset 0, canonical program `A138552.P4734613694061573768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138552.P4734613694061573768.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138609.P859534551479299323

`A116966(A074147(n+1)-1)`
-/

namespace A138609.P859534551479299323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A074147 (n + 1) - 1).toNat

end

end A138609.P859534551479299323

noncomputable section

/-- A138609: List the first term from A042963, then 2 terms from A014601 (starting from 3), 3 terms from A042963, 4 terms from A014601, etc.

Offset 1, canonical program `A138609.P859534551479299323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138609 (n : ℕ) : ℤ :=
  A138609.P859534551479299323.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138693.P2674779579294356525

`110+A001248(n+1)`
-/

namespace A138693.P2674779579294356525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  110 + A001248 (n + 1)

end

end A138693.P2674779579294356525

noncomputable section

/-- A138693: Numbers of the form 110 + p^2. (where p is a prime).

Offset 1, canonical program `A138693.P2674779579294356525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138693 (n : ℕ) : ℤ :=
  A138693.P2674779579294356525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138782.P16420725374648186488

`A001286(n+2)+(n+1)*A062119(n+1)`
-/

namespace A138782.P16420725374648186488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (n + 2) + (n + 1 : ℤ) * A062119 (n + 1)

end

end A138782.P16420725374648186488

noncomputable section

/-- A138782: a(n) = n*(3*n-1)*n!/2.

Offset 1, canonical program `A138782.P16420725374648186488`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(3*(n+1)-1)*(n+1)!/2` (program `A138782.P2706147271877179532`, by `A138782.P2706147271877179532.correct`). Lean does not check the parsing of the name. -/
def A138782 (n : ℕ) : ℤ :=
  A138782.P16420725374648186488.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(3*(n+1)-1)*(n+1)!/2` (program `A138782.P2706147271877179532`, by `A138782.P2706147271877179532.correct`). Lean does not check the parsing of the name. -/
def A138782.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A139190.P14554345620365022831

`(A139189(n+1)-1)/2`
-/

namespace A139190.P14554345620365022831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 1) - 1 : ℚ) / 2

end

end A139190.P14554345620365022831

noncomputable section

/-- A139190: a(n) = (prime(n)!-2)/2.

Offset 1, canonical program `A139190.P14554345620365022831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139190.P14554345620365022831.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139191.P8556745552501629682

`(A139189(n+2)-2)/3`
-/

namespace A139191.P8556745552501629682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 2) - 2 : ℚ) / 3

end

end A139191.P8556745552501629682

noncomputable section

/-- A139191: Natural numbers of the form (prime(n)!-3)/3.

Offset 1, canonical program `A139191.P8556745552501629682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139191.P8556745552501629682.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139192.P8602614665101011949

`(A139189(n+3)-3)/4`
-/

namespace A139192.P8602614665101011949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 3) - 3 : ℚ) / 4

end

end A139192.P8602614665101011949

noncomputable section

/-- A139192: a(n) = (prime(n)! - 4)/4.

Offset 3, canonical program `A139192.P8602614665101011949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139192.P8602614665101011949.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139196.P8143982788016440248

`(A039716(n+3)-8)/8`
-/

namespace A139196.P8143982788016440248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 3) - 8 : ℚ) / 8

end

end A139196.P8143982788016440248

noncomputable section

/-- A139196: a(n) = (prime(n)!-8)/8.

Offset 3, canonical program `A139196.P8143982788016440248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139196.P8143982788016440248.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139198.P1615369607652417229

`A039716(n+3)/10-1`
-/

namespace A139198.P1615369607652417229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039716 (n + 3) : ℚ) / 10 - 1

end

end A139198.P1615369607652417229

noncomputable section

/-- A139198: a(n) = prime(n)!/10 - 1.

Offset 3, canonical program `A139198.P1615369607652417229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139198.P1615369607652417229.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139238.P2423314639559160566

`A001348(n+2)-A001348(n+1)`
-/

namespace A139238.P2423314639559160566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 2) - A001348 (n + 1)

end

end A139238.P2423314639559160566

noncomputable section

/-- A139238: First differences of Mersenne numbers A001348.

Offset 1, canonical program `A139238.P2423314639559160566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139238 (n : ℕ) : ℤ :=
  A139238.P2423314639559160566.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139242.P14895267864890977807

`A139241(n+1)/2`
-/

namespace A139242.P14895267864890977807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139241 (n + 1) : ℚ) / 2

end

end A139242.P14895267864890977807

noncomputable section

/-- A139242: Second differences of Mersenne numbers A001348, divided by 2.

Offset 1, canonical program `A139242.P14895267864890977807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139242 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139242.P14895267864890977807.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139288.P6523589594996836718

`A139286(n+1)/2`
-/

namespace A139288.P6523589594996836718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 2

end

end A139288.P6523589594996836718

noncomputable section

/-- A139288: 2^(2p - 1)/2, where p is prime.

Offset 1, canonical program `A139288.P6523589594996836718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139288.P6523589594996836718.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139289.P16340206791071745644

`A139286(n+1)/2-1`
-/

namespace A139289.P16340206791071745644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 2 - 1

end

end A139289.P16340206791071745644

noncomputable section

/-- A139289: (2^(2p - 1)/2)-1, where p is prime.

Offset 1, canonical program `A139289.P16340206791071745644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139289 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139289.P16340206791071745644.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139289.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139290.P17657296340908338458

`A139286(n+1)/4`
-/

namespace A139290.P17657296340908338458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 4

end

end A139290.P17657296340908338458

noncomputable section

/-- A139290: 2^(2p - 1)/4, where p is prime.

Offset 1, canonical program `A139290.P17657296340908338458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139290.P17657296340908338458.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139291.P4704060389980798102

`A000225(A131426(n+1))`
-/

namespace A139291.P4704060389980798102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A131426 (n + 1)).toNat

end

end A139291.P4704060389980798102

noncomputable section

/-- A139291: a(n) = 2^(2*prime(n) - 3) - 1.

Offset 1, canonical program `A139291.P4704060389980798102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139291 (n : ℕ) : ℤ :=
  A139291.P4704060389980798102.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139292.P6878076174781687127

`A139286(n+1)/8`
-/

namespace A139292.P6878076174781687127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 8

end

end A139292.P6878076174781687127

noncomputable section

/-- A139292: 2^(2p - 1)/8, where p is prime.

Offset 1, canonical program `A139292.P6878076174781687127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139292 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139292.P6878076174781687127.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139293.P13592913446811254453

`A139286(n+1)/8-1`
-/

namespace A139293.P13592913446811254453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 8 - 1

end

end A139293.P13592913446811254453

noncomputable section

/-- A139293: (2^(2p - 1)/8)-1, where p is prime.

Offset 1, canonical program `A139293.P13592913446811254453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139293.P13592913446811254453.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140199.P1511912442749279269

`A071917(n+1)+1`
-/

namespace A140199.P1511912442749279269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071917 (n + 1) + 1

end

end A140199.P1511912442749279269

noncomputable section

/-- A140199: a(n) = the number of pairs of (not necessarily distinct) positive integers j and k where j <= n and k <= n such that k+j is prime.

Offset 1, canonical program `A140199.P1511912442749279269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140199 (n : ℕ) : ℤ :=
  A140199.P1511912442749279269.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140299.P17580252582756976410

`4^A001223(n+1)`
-/

namespace A140299.P17580252582756976410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A140299.P17580252582756976410

noncomputable section

/-- A140299: a(n) = A100626(n+1)/A100626(n).

Offset 0, canonical program `A140299.P17580252582756976410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140299.P17580252582756976410.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140511.P1395500853735429754

`(A001248(n+2)+A000040(n+3))/2`
-/

namespace A140511.P1395500853735429754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) + A000040 (n + 3) : ℚ) / 2

end

end A140511.P1395500853735429754

noncomputable section

/-- A140511: a(n) = (prime(n)^2 + prime(n+1))/2.

Offset 2, canonical program `A140511.P1395500853735429754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140511.P1395500853735429754.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140513.P13579608035938851890

`2*A137688(n)`
-/

namespace A140513.P13579608035938851890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n

end

end A140513.P13579608035938851890

noncomputable section

/-- A140513: Repeat 2^n n times.

Offset 0, canonical program `A140513.P13579608035938851890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513 (n : ℕ) : ℤ :=
  A140513.P13579608035938851890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140756.P3277884654481900354

`(-1)^(A004736(n+1)+1)*A002260(n+1)`
-/

namespace A140756.P3277884654481900354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004736 (n + 1) + 1 : ℤ) * (A002260 (n + 1) : ℚ)

end

end A140756.P3277884654481900354

noncomputable section

/-- A140756: Count up to k sequence with alternating signs (k always positive).

Offset 1, canonical program `A140756.P3277884654481900354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140756.P3277884654481900354.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141042.P12825020349384849254

`(n+1)*A001223(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141042.P12825020349384849254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001223 (n + 1)

end

end A141042.P12825020349384849254

noncomputable section

/-- A141042: Product of n and the n-th gap between primes: a(n) = n*A001223(n).

Offset 1, canonical program `A141042.P12825020349384849254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141042 (n : ℕ) : ℤ :=
  A141042.P12825020349384849254.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141351.P15521239837132020654

`A000108(n)+A057427(n)`
-/

namespace A141351.P15521239837132020654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A057427 n

end

end A141351.P15521239837132020654

noncomputable section

/-- A141351: a(n) = C(n) + 1 - 0^n where C(n) = A000108(n).

Offset 0, canonical program `A141351.P15521239837132020654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141351 (n : ℕ) : ℤ :=
  A141351.P15521239837132020654.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141498.P12080205916971592544

`A010696(n)*A086892(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141498.P12080205916971592544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 n * A086892 (n + 1)

end

end A141498.P12080205916971592544

noncomputable section

/-- A141498: a(n) = A010696(n-1) * A086892(n).

Offset 1, canonical program `A141498.P12080205916971592544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141498 (n : ℕ) : ℤ :=
  A141498.P12080205916971592544.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141535.P16437882667195549549

`A127917(n+2)/8-A027480(n+1)`
-/

namespace A141535.P16437882667195549549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 2) : ℚ) / 8 - (A027480 (n + 1) : ℚ)

end

end A141535.P16437882667195549549

noncomputable section

/-- A141535: An eighth of the product of three integers surrounding the (n+1)-st prime, minus half of the product of the 3 numbers surrounding n+1.

Offset 1, canonical program `A141535.P16437882667195549549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141535.P16437882667195549549.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141535.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A143928.P14190391261956861434

`A079704(n+2)`
-/

namespace A143928.P14190391261956861434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 2)

end

end A143928.P14190391261956861434

noncomputable section

/-- A143928: 2*p^2, for p an odd prime.

Offset 1, canonical program `A143928.P14190391261956861434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143928 (n : ℕ) : ℤ :=
  A143928.P14190391261956861434.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144328.P13677371458497017703

`A002260(n+1)+A010054(n)-1`
-/

namespace A144328.P13677371458497017703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A010054 n - 1

end

end A144328.P13677371458497017703

noncomputable section

/-- A144328: A002260 preceded by a column of 1's: a (1, 1, 2, 3, 4, 5, ...) crescendo triangle by rows.

Offset 1, canonical program `A144328.P13677371458497017703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144328 (n : ℕ) : ℤ :=
  A144328.P13677371458497017703.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145109.P11563009872990415514

`2*(n+1)*A007913(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145109.P11563009872990415514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A007913 (2 * (n + 1))

end

end A145109.P11563009872990415514

noncomputable section

/-- A145109: a(n) = 2*n * core(2*n).

Offset 1, canonical program `A145109.P11563009872990415514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145109 (n : ℕ) : ℤ :=
  A145109.P11563009872990415514.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145445.P2754052225407888285

`A104103(n+1)²`
-/

namespace A145445.P2754052225407888285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2

end

end A145445.P2754052225407888285

noncomputable section

/-- A145445: a(n) = the smallest square > n-th prime.

Offset 1, canonical program `A145445.P2754052225407888285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145445 (n : ℕ) : ℤ :=
  A145445.P2754052225407888285.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145917.P16742270102917720148

`(A002260(n+1)-1)²-4*(A004736(n+1)-1)`
-/

namespace A145917.P16742270102917720148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) ^ 2 - 4 * (A004736 (n + 1) - 1)

end

end A145917.P16742270102917720148

noncomputable section

/-- A145917: Triangle read by rows: to get n-th row, start with -4n and successively add 5, 7, 9, 11, 13, ... until reaching a square.

Offset 0, canonical program `A145917.P16742270102917720148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145917 (n : ℕ) : ℤ :=
  A145917.P16742270102917720148.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A146313.P15935100656203728412

`A146312(n+1)+1`
-/

namespace A146313.P15935100656203728412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146312 (n + 1) + 1

end

end A146313.P15935100656203728412

noncomputable section

/-- A146313: a(n) = cosh( (2n - 1)*arcsinh(sqrt(2)) )^2 = 1 - cos( (2n - 1)*arcsin(sqrt(3)) )^2.

Offset 1, canonical program `A146313.P15935100656203728412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146313 (n : ℕ) : ℤ :=
  A146313.P15935100656203728412.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147609.P1573611172523087498

`A000290(n)-A065893(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147609.P1573611172523087498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A065893 (n + 1)

end

end A147609.P1573611172523087498

noncomputable section

/-- A147609: a(n) = A000290(n-1) - A065893(n).

Offset 1, canonical program `A147609.P1573611172523087498`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147609 (n : ℕ) : ℤ :=
  A147609.P1573611172523087498.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147965.P3324423489024112170

`n+1-A046933(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147965.P3324423489024112170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046933 (n + 1)

end

end A147965.P3324423489024112170

noncomputable section

/-- A147965: a(n) = n + 1 - A001223(n) = n - A046933(n). In words, a(n) is the difference between n+1 and the n-th gap between primes.

Offset 1, canonical program `A147965.P3324423489024112170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147965 (n : ℕ) : ℤ :=
  A147965.P3324423489024112170.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147966.P17845740115898667296

`n+A001223(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147966.P17845740115898667296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A001223 (n + 1)

end

end A147966.P17845740115898667296

noncomputable section

/-- A147966: a(n) = n+(A001223(n)-1) = n+A046933(n).

Offset 1, canonical program `A147966.P17845740115898667296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147966 (n : ℕ) : ℤ :=
  A147966.P17845740115898667296.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147967.P11868943010124678636

`(n+1)*A046933(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147967.P11868943010124678636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046933 (n + 1)

end

end A147967.P11868943010124678636

noncomputable section

/-- A147967: a(n) = n*(A001223(n)-1) = n*A046933(n).

Offset 1, canonical program `A147967.P11868943010124678636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147967 (n : ℕ) : ℤ :=
  A147967.P11868943010124678636.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151780.P15646106736797667594

`5^(A000120(n+1)-1)`
-/

namespace A151780.P15646106736797667594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A151780.P15646106736797667594

noncomputable section

/-- A151780: a(n) = 5^(wt(n) - 1) where wt(n) = A000120(n).

Offset 1, canonical program `A151780.P15646106736797667594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151780.P15646106736797667594.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151784.P1510712198885634793

`6^(A000120(n+1)-1)`
-/

namespace A151784.P1510712198885634793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A151784.P1510712198885634793

noncomputable section

/-- A151784: a(n) = 6^(wt(n) - 1) where wt(n) = A000120(n).

Offset 1, canonical program `A151784.P1510712198885634793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151784.P1510712198885634793.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152029.P2042950158805901060

`2^n*A001761(n)`
-/

namespace A152029.P2042950158805901060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001761 n

end

end A152029.P2042950158805901060

noncomputable section

/-- A152029: a(n) = 2^n*(2*n)!/((n+1)!).

Offset 0, canonical program `A152029.P2042950158805901060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152029 (n : ℕ) : ℤ :=
  A152029.P2042950158805901060.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152099.P15152217081351497144

`A034785(n+1)²-1`
-/

namespace A152099.P15152217081351497144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) ^ 2 - 1

end

end A152099.P15152217081351497144

noncomputable section

/-- A152099: a(n) = (2^prime(n) - 1)*(2^prime(n) + 1) = 2^(2*prime(n)) - 1.

Offset 1, canonical program `A152099.P15152217081351497144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152099 (n : ℕ) : ℤ :=
  A152099.P15152217081351497144.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152529.P6728657231019893610

`A152528(n+2)/2`
-/

namespace A152529.P6728657231019893610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152528 (n + 2) : ℚ) / 2

end

end A152529.P6728657231019893610

noncomputable section

/-- A152529: a(n) = (p(n)*p(n+2) - 3*p(n+1))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152529.P6728657231019893610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152529.P6728657231019893610.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152531.P4513964103738693439

`A152530(n+2)/2`
-/

namespace A152531.P4513964103738693439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152530 (n + 2) : ℚ) / 2

end

end A152531.P4513964103738693439

noncomputable section

/-- A152531: a(n) = (p(n)*p(n+2) - p(n+1))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152531.P4513964103738693439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152531.P4513964103738693439.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152762.P705449962660149675

`A001065(A000108(n))`
-/

namespace A152762.P705449962660149675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000108 n).toNat

end

end A152762.P705449962660149675

noncomputable section

/-- A152762: Sum of proper divisors of Catalan number A000108(n).

Offset 0, canonical program `A152762.P705449962660149675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152762 (n : ℕ) : ℤ :=
  A152762.P705449962660149675.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152982.P6897704514964440160

`A001065(A001006(n))`
-/

namespace A152982.P6897704514964440160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A001006 n).toNat

end

end A152982.P6897704514964440160

noncomputable section

/-- A152982: Sum of proper divisors of Motzkin number A001006(n).

Offset 0, canonical program `A152982.P6897704514964440160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152982 (n : ℕ) : ℤ :=
  A152982.P6897704514964440160.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153173.P9514743945125301852

`1+10*A085695(n)`
-/

namespace A153173.P9514743945125301852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 10 * A085695 n

end

end A153173.P9514743945125301852

noncomputable section

/-- A153173: a(n) = L(5*n)/L(n) where L(n) = n-th Lucas number A000032(n).

Offset 0, canonical program `A153173.P9514743945125301852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153173 (n : ℕ) : ℤ :=
  A153173.P9514743945125301852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153175.P17504426682200025904

`A005248(n+1)+A087215(n+1)-(-1)^(n+1)*A056854(n+1)-(-1)^(n+1)`
-/

namespace A153175.P17504426682200025904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) + A087215 (n + 1) - (-1) ^ (n + 1) * A056854 (n + 1) - (-1) ^ (n + 1)

end

end A153175.P17504426682200025904

noncomputable section

/-- A153175: a(n) = L(7*n)/L(n) where L(n) = Lucas number A000204(n).

Offset 1, canonical program `A153175.P17504426682200025904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153175 (n : ℕ) : ℤ :=
  A153175.P17504426682200025904.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153177.P1118912484270809134

`1-(-1)^(n+1)*A087215(n+1)-(-1)^(n+1)*A005248(n+1)+A056854(n+1)+A087265(n+1)`
-/

namespace A153177.P1118912484270809134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (-1) ^ (n + 1) * A087215 (n + 1) - (-1) ^ (n + 1) * A005248 (n + 1) + A056854 (n + 1) + A087265 (n + 1)

end

end A153177.P1118912484270809134

noncomputable section

/-- A153177: a(n) = L(9*n)/L(n) where L(n) = Lucas number A000204(n).

Offset 1, canonical program `A153177.P1118912484270809134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153177 (n : ℕ) : ℤ :=
  A153177.P1118912484270809134.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153177.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A156194.P5026369920537377381

`A156095(n)%9`
-/

namespace A156194.P5026369920537377381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156095 n) 9

end

end A156194.P5026369920537377381

noncomputable section

/-- A156194: Period 12: 1,2,7,1,7,2,1,1,4,2,4,1 repeated.

Offset 0, canonical program `A156194.P5026369920537377381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156194 (n : ℕ) : ℤ :=
  A156194.P5026369920537377381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156346.P5558793520633828861

`(2*A154811(n))%9-A154811(n)`
-/

namespace A156346.P5558793520633828861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A154811 n) 9 - A154811 n

end

end A156346.P5558793520633828861

noncomputable section

/-- A156346: Period length 12: repeat 1,2,-4,4,-2,-1,-1,-2,4,-4,2,1.

Offset 0, canonical program `A156346.P5558793520633828861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156346 (n : ℕ) : ℤ :=
  A156346.P5558793520633828861.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156346.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A156551.P496046076250511430

`A155110(n)%10`
-/

namespace A156551.P496046076250511430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155110 n) 10

end

end A156551.P496046076250511430

noncomputable section

/-- A156551: Period 10: repeat [8, 6, 0, 4, 2, 2, 4, 0, 6, 8].

Offset 0, canonical program `A156551.P496046076250511430`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156551 (n : ℕ) : ℤ :=
  A156551.P496046076250511430.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156551.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A158678.P5654835132515354139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158678 (n : ℕ) : ℤ :=
  A158678.P5654835132515354139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158678.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A161550.P14490817889954674957

`A007917((n+1)²+n+1)`
-/

namespace A161550.P14490817889954674957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ((n + 1) ^ 2 + (n + 1))

end

end A161550.P14490817889954674957

noncomputable section

/-- A161550: Largest prime <= n^2+n.

Offset 1, canonical program `A161550.P14490817889954674957`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161550 (n : ℕ) : ℤ :=
  A161550.P14490817889954674957.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161550.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A161758.P620541178212101114

`n+5-A007917(n+2)+1`
-/

namespace A161758.P620541178212101114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A007917 (n + 2) + 1

end

end A161758.P620541178212101114

noncomputable section

/-- A161758: a(n)=n-p+1 where p is the maximal prime less than n-2.

Offset 5, canonical program `A161758.P620541178212101114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161758 (n : ℕ) : ℤ :=
  A161758.P620541178212101114.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161758.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A166312.P18179176690285467786

`A000120(A000326(n))`
-/

namespace A166312.P18179176690285467786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000326 n).toNat

end

end A166312.P18179176690285467786

noncomputable section

/-- A166312: Number of 1's in binary expansion of A000326(n).

Offset 0, canonical program `A166312.P18179176690285467786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166312 (n : ℕ) : ℤ :=
  A166312.P18179176690285467786.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166314.P17635709383241894212

`A000120(A000124(n))`
-/

namespace A166314.P17635709383241894212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000124 n).toNat

end

end A166314.P17635709383241894212

noncomputable section

/-- A166314: Number of 1's in binary expansion of A000124(n).

Offset 0, canonical program `A166314.P17635709383241894212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166314 (n : ℕ) : ℤ :=
  A166314.P17635709383241894212.a n

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

/-! ## A171654.P14385929116533760868

`A171507(n+1)%10`
-/

namespace A171654.P14385929116533760868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171507 (n + 1)) 10

end

end A171654.P14385929116533760868

noncomputable section

/-- A171654: Period 10: repeat [0, 1, 6, 7, 2, 3, 8, 9, 4, 5].

Offset 0, canonical program `A171654.P14385929116533760868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171654 (n : ℕ) : ℤ :=
  A171654.P14385929116533760868.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171654.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A127427.P10470407826532983788

`(3*n+A053735(n)-A053735(6*n))/2`
-/

namespace A127427.P10470407826532983788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) + A053735 n - A053735 (6 * n) : ℚ) / 2

end

end A127427.P10470407826532983788

noncomputable section

/-- A127427: a(n) = v_3( (6n)! ) - v_3( (3n)! ), where v_3(N) is the 3-adic valuation A007949(N).

Offset 0, canonical program `A127427.P10470407826532983788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127427.P10470407826532983788.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127943.P11415706920937421864

`2^A127944(n)`
-/

namespace A127943.P11415706920937421864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127944 n : ℤ)

end

end A127943.P11415706920937421864

noncomputable section

/-- A127943: a(n) = 2^binomial(n+1,2)/A046161(n).

Offset 0, canonical program `A127943.P11415706920937421864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127943 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127943.P11415706920937421864.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128064.P17736054850047196674

`A002260(n+1)*A167374(n)`
-/

namespace A128064.P17736054850047196674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A167374 n

end

end A128064.P17736054850047196674

noncomputable section

/-- A128064: Triangle T with T(n,n)=n, T(n,n-1)=-(n-1) and otherwise T(n,k)=0; 0

Offset 1, canonical program `A128064.P17736054850047196674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128064 (n : ℕ) : ℤ :=
  A128064.P17736054850047196674.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129636.P13019751396834659063

`A053735(A102363(n))`
-/

namespace A129636.P13019751396834659063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A102363 n).toNat

end

end A129636.P13019751396834659063

noncomputable section

/-- A129636: Triangle T(n,k): base-3 digit sum of the Pascal type triangle A102363(n,k).

Offset 0, canonical program `A129636.P13019751396834659063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129636 (n : ℕ) : ℤ :=
  A129636.P13019751396834659063.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130174.P12281293716126292394

`a(n-1)+1+A055642(a(n-1))` with `a(0)=0`
-/

namespace A130174.P12281293716126292394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 1 + A055642 (a (n - 1)).toNat

end

end A130174.P12281293716126292394

noncomputable section

/-- A130174: a(n) = n-1 + (total number of digits in a(1), ..., a(n-1)).

Offset 1, canonical program `A130174.P12281293716126292394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130174 (n : ℕ) : ℤ :=
  A130174.P12281293716126292394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134451.P12605129592745265341

`a(A053735(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A134451.P12605129592745265341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A053735 n).toNat

end

end A134451.P12605129592745265341

noncomputable section

/-- A134451: Ternary digital root of n.

Offset 0, canonical program `A134451.P12605129592745265341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451 (n : ℕ) : ℤ :=
  (A134451.P12605129592745265341.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135261.P1033303913802881261

`3*A131090(n)-A131090(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135261.P1033303913802881261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131090 n - A131090 (n + 1)

end

end A135261.P1033303913802881261

noncomputable section

/-- A135261: a(n) = 3*A131090(n) - A131090(n+1).

Offset 0, canonical program `A135261.P1033303913802881261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135261 (n : ℕ) : ℤ :=
  A135261.P1033303913802881261.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135261.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A135295.P7575543575562511418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135295.P7575543575562511418.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136692.P13675699758737619112

`(n!/A243757(n))%5`
-/

namespace A136692.P13675699758737619112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A243757 n : ℚ))) 5

end

end A136692.P13675699758737619112

noncomputable section

/-- A136692: Final nonzero digit of n! in base 5.

Offset 0, canonical program `A136692.P13675699758737619112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136692 (n : ℕ) : ℤ :=
  A136692.P13675699758737619112.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136692.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A138908.P3143620244841362508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138908.P3143620244841362508.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139352.P2034447244462371406

`A053737(n)-A000120(n)`
-/

namespace A139352.P2034447244462371406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000120 n

end

end A139352.P2034447244462371406

noncomputable section

/-- A139352: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives o(n).

Offset 0, canonical program `A139352.P2034447244462371406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352 (n : ℕ) : ℤ :=
  A139352.P2034447244462371406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A139817.P1238485157427704906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139817 (n : ℕ) : ℤ :=
  A139817.P1238485157427704906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139817.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145222.P1301972767117422336

`(n+1)*A000387(n)`
-/

namespace A145222.P1301972767117422336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000387 n

end

end A145222.P1301972767117422336

noncomputable section

/-- A145222: a(n) is the number of odd permutations (of an n-set) with exactly 1 fixed point.

Offset 1, canonical program `A145222.P1301972767117422336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145222 (n : ℕ) : ℤ :=
  A145222.P1301972767117422336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145223.P6606573860951849830

`(n+2)*(n+1)/2*A000387(n)`
-/

namespace A145223.P6606573860951849830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / 2 * (A000387 n : ℚ)

end

end A145223.P6606573860951849830

noncomputable section

/-- A145223: a(n) is the number of odd permutations (of an n-set) with exactly 2 fixed points.

Offset 2, canonical program `A145223.P6606573860951849830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145223.P6606573860951849830.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145225.P14519174249686011272

`C(row(n), col(n))*A000387(row(n)-col(n))`
-/

namespace A145225.P14519174249686011272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000387 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A145225.P14519174249686011272

noncomputable section

/-- A145225: Triangle read by rows: T(n,k) is the number of odd permutations (of an n-set) with exactly k fixed points.

Offset 0, canonical program `A145225.P14519174249686011272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145225 (n : ℕ) : ℤ :=
  A145225.P14519174249686011272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A146076.P5513778411624192836

`A000203(n+1)-A000593(n+1)`
-/

namespace A146076.P5513778411624192836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000593 (n + 1)

end

end A146076.P5513778411624192836

noncomputable section

/-- A146076: Sum of even divisors of n.

Offset 1, canonical program `A146076.P5513778411624192836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146076 (n : ℕ) : ℤ :=
  A146076.P5513778411624192836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147845.P9272741338971517792

`2*A033045(n)+1`
-/

namespace A147845.P9272741338971517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033045 n + 1

end

end A147845.P9272741338971517792

noncomputable section

/-- A147845: Odd positive integers a(n) such that for every odd integer m>=7 there exists a unique representation of the form m=a(p)+2a(q)+4a(r).

Offset 1, canonical program `A147845.P9272741338971517792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147845 (n : ℕ) : ℤ :=
  A147845.P9272741338971517792.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151712.P17763347096143698757

`A048883(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151712.P17763347096143698757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n + 1

end

end A151712.P17763347096143698757

noncomputable section

/-- A151712: a(n) = A048883(n) + 1.

Offset 0, canonical program `A151712.P17763347096143698757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151712 (n : ℕ) : ℤ :=
  A151712.P17763347096143698757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151712.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A168119.P17787053348293007430

`A161680(n+1)+A161680(n)*A228293(n)`
-/

namespace A168119.P17787053348293007430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) + A161680 n * A228293 n

end

end A168119.P17787053348293007430

noncomputable section

/-- A168119: a(n) = n*(n^10+1)/2.

Offset 0, canonical program `A168119.P17787053348293007430`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^10+1)/2` (program `A168119.P11915101217371689496`, by `A168119.P11915101217371689496.correct`). Lean does not check the parsing of the name. -/
def A168119 (n : ℕ) : ℤ :=
  A168119.P17787053348293007430.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^10+1)/2` (program `A168119.P11915101217371689496`, by `A168119.P11915101217371689496.correct`). Lean does not check the parsing of the name. -/
def A168119.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168153.P5968874807042216587

`n²+A161680(n)*A228293(n)`
-/

namespace A168153.P5968874807042216587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A161680 n * A228293 n

end

end A168153.P5968874807042216587

noncomputable section

/-- A168153: a(n) = n^2*(n^9 + 1)/2.

Offset 0, canonical program `A168153.P5968874807042216587`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^9+1)/2` (program `A168153.P10956861409513826173`, by `A168153.P10956861409513826173.correct`). Lean does not check the parsing of the name. -/
def A168153 (n : ℕ) : ℤ :=
  A168153.P5968874807042216587.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^9+1)/2` (program `A168153.P10956861409513826173`, by `A168153.P10956861409513826173.correct`). Lean does not check the parsing of the name. -/
def A168153.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A171405.P6422937175772318841

`A000203(n+1)-A178142(n+1)`
-/

namespace A171405.P6422937175772318841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A178142 (n + 1)

end

end A171405.P6422937175772318841

noncomputable section

/-- A171405: Sum of divisors of n, excluding divisors 2 and 3.

Offset 1, canonical program `A171405.P6422937175772318841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171405 (n : ℕ) : ℤ :=
  A171405.P6422937175772318841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127341.P14709455034491234769

`p?[A036439(n+14)-A036439(n+1)]`
-/

namespace A127341.P14709455034491234769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 14) - A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127341.P14709455034491234769

noncomputable section

/-- A127341: Primes that can be written as the sum of 13 consecutive primes.

Offset 1, canonical program `A127341.P14709455034491234769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A127341 (n : ℕ) : ℤ :=
  A127341.P14709455034491234769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A127341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127349.P7412496947134571041

`A046301(n+2)+A000040(n+1)*A127345(n+2)`
-/

namespace A127349.P7412496947134571041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 2) + A000040 (n + 1) * A127345 (n + 2)

end

end A127349.P7412496947134571041

noncomputable section

/-- A127349: a(n) = Sum_{i=n..n+1} Sum_{j=i+1..n+2} Sum_{k=j+1..n+3} prime(i)*prime(j)*prime(k).

Offset 1, canonical program `A127349.P7412496947134571041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127349 (n : ℕ) : ℤ :=
  A127349.P7412496947134571041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127367.P16713287783412300096

`abs(A259361(n)+Δ[A237420(n)])`
-/

namespace A127367.P16713287783412300096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259361 n + (f1 (n + 1) - f1 n)|

end

end A127367.P16713287783412300096

noncomputable section

/-- A127367: Inverse permutation to A127366.

Offset 0, canonical program `A127367.P16713287783412300096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127367 (n : ℕ) : ℤ :=
  A127367.P16713287783412300096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127446.P10925014091229566382

`lcm(∑[A010054(n)], A127093(n+1))`
-/

namespace A127446.P10925014091229566382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A127093 (n + 1))

end

end A127446.P10925014091229566382

noncomputable section

/-- A127446: Triangle T(n,k) = n*A051731(n,k) read by rows.

Offset 1, canonical program `A127446.P10925014091229566382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127446 (n : ℕ) : ℤ :=
  (A127446.P10925014091229566382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127526.P1101565126204537721

`Δ[A114185(n+3)-gcd(2, n)²]`
-/

namespace A127526.P1101565126204537721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114185 (n + 3) - (Nat.gcd 2 n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127526.P1101565126204537721

noncomputable section

/-- A127526: Sequence related to fifth roots of certain Fibonacci fractions.

Offset 1, canonical program `A127526.P1101565126204537721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A127526 (n : ℕ) : ℤ :=
  A127526.P1101565126204537721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A127526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127531.P14165418015592472488

`Δ[A000984(n)-A000778(n)]`
-/

namespace A127531.P14165418015592472488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A000778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P14165418015592472488

noncomputable section

/-- A127531: Number of jumps in all binary trees with n edges.

Offset 1, canonical program `A127531.P14165418015592472488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127531 (n : ℕ) : ℤ :=
  A127531.P14165418015592472488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127533.P9803744706263550024

`Δ[A000984(n)]-A002057(n)`
-/

namespace A127533.P9803744706263550024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002057 n

end

end A127533.P9803744706263550024

noncomputable section

/-- A127533: Sum of jump-lengths of all binary trees with n edges.

Offset 0, canonical program `A127533.P9803744706263550024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127533 (n : ℕ) : ℤ :=
  A127533.P9803744706263550024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A127533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127540.P10408115391990332246

`Δ[A032357(n)+n%2]`
-/

namespace A127540.P10408115391990332246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127540.P10408115391990332246

noncomputable section

/-- A127540: Number of odd-length branches starting at the root in all ordered trees with n edges.

Offset 0, canonical program `A127540.P10408115391990332246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A127540 (n : ℕ) : ℤ :=
  A127540.P10408115391990332246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A127540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127572.P3347120465689043577

`A010766(n+1)*A127570(n+1)`
-/

namespace A127572.P3347120465689043577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127570 (n + 1)

end

end A127572.P3347120465689043577

noncomputable section

/-- A127572: Triangle, T(n,k) = sigma(k) * n/k if k|n, T(n,k) = 0 otherwise.

Offset 1, canonical program `A127572.P3347120465689043577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127572 (n : ℕ) : ℤ :=
  A127572.P3347120465689043577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127572.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127647.P9391719108574296925

`A103609(A198954(n+1))`
-/

namespace A127647.P9391719108574296925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A198954 (n + 1)).toNat

end

end A127647.P9391719108574296925

noncomputable section

/-- A127647: Triangle read by rows: row n consists of n-1 zeros followed by Fibonacci(n).

Offset 1, canonical program `A127647.P9391719108574296925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127647 (n : ℕ) : ℤ :=
  A127647.P9391719108574296925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127651.P2005468339652068086

`A051731(n+1)*A075362(n+1)`
-/

namespace A127651.P2005468339652068086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A075362 (n + 1)

end

end A127651.P2005468339652068086

noncomputable section

/-- A127651: Triangle T(n,k) = n*k if k|n, 0 otherwise; 1<=k<=n.

Offset 1, canonical program `A127651.P2005468339652068086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127651 (n : ℕ) : ℤ :=
  A127651.P2005468339652068086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127677.P11101352811023800668

`A110162(n)+A000007(n)`
-/

namespace A127677.P11101352811023800668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + A000007 n

end

end A127677.P11101352811023800668

noncomputable section

/-- A127677: Scaled coefficient table for Chebyshev polynomials 2*T(2*n, sqrt(x)/2) (increasing even scaled powers, without zero entries).

Offset 0, canonical program `A127677.P11101352811023800668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127677 (n : ℕ) : ℤ :=
  A127677.P11101352811023800668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127701.P9981327961202796931

`A051340(n)*A097806(n)`
-/

namespace A127701.P9981327961202796931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A097806 n

end

end A127701.P9981327961202796931

noncomputable section

/-- A127701: Infinite lower triangular matrix with (1, 2, 3, ...) in the main diagonal, (1, 1, 1, ...) in the subdiagonal and the rest zeros.

Offset 1, canonical program `A127701.P9981327961202796931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127701 (n : ℕ) : ℤ :=
  A127701.P9981327961202796931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127804.P1283349887769768592

`A045654(n+1)/2`
-/

namespace A127804.P1283349887769768592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045654 (n + 1) : ℚ) / 2

end

end A127804.P1283349887769768592

noncomputable section

/-- A127804: a(2n) = 2^(2n), a(2n+1) = 2^(2n+1) + a(n).

Offset 0, canonical program `A127804.P1283349887769768592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127804.P1283349887769768592.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127866.P7807827458110838021

`4*A073388(n)-a(n-1)` with `a(0)=4`
-/

namespace A127866.P7807827458110838021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * A073388 n - a (n - 1)

end

end A127866.P7807827458110838021

noncomputable section

/-- A127866: Number of L-shaped tiles in all tilings of a 2 X n board with 1 X 1 and L-shaped tiles (where the L-shaped tiles cover 3 squares).

Offset 2, canonical program `A127866.P7807827458110838021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A127866 (n : ℕ) : ℤ :=
  A127866.P7807827458110838021.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A127866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127954.P6894505022089069342

`A002260(n+1)*A097805(n)`
-/

namespace A127954.P6894505022089069342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A097805 n

end

end A127954.P6894505022089069342

noncomputable section

/-- A127954: Triangle, A097805 * A127648.

Offset 1, canonical program `A127954.P6894505022089069342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127954 (n : ℕ) : ℤ :=
  A127954.P6894505022089069342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128057.P8641986801379024060

`A057077(n)*A128014(n)`
-/

namespace A128057.P8641986801379024060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A128014 n

end

end A128057.P8641986801379024060

noncomputable section

/-- A128057: Expansion of (1+x)/sqrt(1+4x^2).

Offset 0, canonical program `A128057.P8641986801379024060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A128057 (n : ℕ) : ℤ :=
  A128057.P8641986801379024060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A128057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128065.P6617849873532730236

`A007318(n)*A127948(n)`
-/

namespace A128065.P6617849873532730236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A127948 n

end

end A128065.P6617849873532730236

noncomputable section

/-- A128065: Binomial transform of A128064.

Offset 1, canonical program `A128065.P6617849873532730236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128065 (n : ℕ) : ℤ :=
  A128065.P6617849873532730236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128077.P8263080623395383439

`A002260(n+1)*A051340(n)`
-/

namespace A128077.P8263080623395383439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051340 n

end

end A128077.P8263080623395383439

noncomputable section

/-- A128077: A128064 * A002260.

Offset 1, canonical program `A128077.P8263080623395383439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128077 (n : ℕ) : ℤ :=
  A128077.P8263080623395383439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128132.P7267817112159039402

`A051340(n)*A167374(n)`
-/

namespace A128132.P7267817112159039402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A167374 n

end

end A128132.P7267817112159039402

noncomputable section

/-- A128132: A natural number transform, companion to A127701.

Offset 1, canonical program `A128132.P7267817112159039402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128132 (n : ℕ) : ℤ :=
  A128132.P7267817112159039402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128142.P9126956890442312540

`A104634(n+1)+C(A004736(n+1), 3)`
-/

namespace A128142.P9126956890442312540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + (Nat.choose (A004736 (n + 1)).toNat 3 : ℤ)

end

end A128142.P9126956890442312540

noncomputable section

/-- A128142: A128132 * A122432 (unsigned).

Offset 1, canonical program `A128142.P9126956890442312540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142 (n : ℕ) : ℤ :=
  A128142.P9126956890442312540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128151.P9049795809156300182

`A051340(n)+2*A048151(n+1)`
-/

namespace A128151.P9049795809156300182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + 2 * A048151 (n + 1)

end

end A128151.P9049795809156300182

noncomputable section

/-- A128151: A002260 * A097806.

Offset 1, canonical program `A128151.P9049795809156300182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128151 (n : ℕ) : ℤ :=
  A128151.P9049795809156300182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128175.P7586382992691236717

`A097805(n)+A137688(n)-∑[A097805(n)]`
-/

namespace A128175.P7586382992691236717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A137688 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128175.P7586382992691236717

noncomputable section

/-- A128175: Binomial transform of A128174.

Offset 1, canonical program `A128175.P7586382992691236717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128175 (n : ℕ) : ℤ :=
  A128175.P7586382992691236717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128183.P4602037080132375084

`A049611(n)+A045891(n)`
-/

namespace A128183.P4602037080132375084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + A045891 n

end

end A128183.P4602037080132375084

noncomputable section

/-- A128183: Row sums of triangle A128182.

Offset 0, canonical program `A128183.P4602037080132375084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A128183 (n : ℕ) : ℤ :=
  A128183.P4602037080132375084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A128183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128218.P17892042151444153462

`A186422(A198954(n))`
-/

namespace A128218.P17892042151444153462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (A198954 n).toNat

end

end A128218.P17892042151444153462

noncomputable section

/-- A128218: First differences of A128217.

Offset 1, canonical program `A128218.P17892042151444153462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128218 (n : ℕ) : ℤ :=
  A128218.P17892042151444153462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128227.P3230400421110190082

`gcd(a(n-1)+1, Δ[A010054(n)])` with `a(0)=1`
-/

namespace A128227.P3230400421110190082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A128227.P3230400421110190082

noncomputable section

/-- A128227: Right border (1,1,1,...) added to A002260.

Offset 0, canonical program `A128227.P3230400421110190082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128227 (n : ℕ) : ℤ :=
  (A128227.P3230400421110190082.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128259.P12325578355127469057

`A127093(n+2)-Δ[A051731(n+1)]`
-/

namespace A128259.P12325578355127469057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128259.P12325578355127469057

noncomputable section

/-- A128259: Inverse Moebius transform of A128229.

Offset 1, canonical program `A128259.P12325578355127469057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128259 (n : ℕ) : ℤ :=
  A128259.P12325578355127469057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128308.P17842185637218646687

`(A156644(n)+A125170(n))/2`
-/

namespace A128308.P17842185637218646687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156644 n + A125170 n : ℚ) / 2

end

end A128308.P17842185637218646687

noncomputable section

/-- A128308: Binomial transform of A128307.

Offset 1, canonical program `A128308.P17842185637218646687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128308 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128308.P17842185637218646687.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128437.P14087954865165796878

`floor(A001008(n+1)/(n+1))`
-/

namespace A128437.P14087954865165796878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001008 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128437.P14087954865165796878

noncomputable section

/-- A128437: a(n) = floor((numerator of H(n))/n), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A128437.P14087954865165796878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437 (n : ℕ) : ℤ :=
  A128437.P14087954865165796878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A128437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128439.P1111506070197494639

`A146005(n+1)-and(1, n)`
-/

namespace A128439.P1111506070197494639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 1) - (Nat.land 1 n : ℤ)

end

end A128439.P1111506070197494639

noncomputable section

/-- A128439: a(n) = floor(n*t^n), where t=golden ratio=(1+sqrt(5))/2.

Offset 1, canonical program `A128439.P1111506070197494639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A128439 (n : ℕ) : ℤ :=
  A128439.P1111506070197494639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A128439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128499.P9117781422651886290

`A128498(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A128499.P9117781422651886290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A128498 n - a (n - 2)

end

end A128499.P9117781422651886290

noncomputable section

/-- A128499: Fifth column (m=4) of triangle A128494.

Offset 0, canonical program `A128499.P9117781422651886290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128499 (n : ℕ) : ℤ :=
  A128499.P9117781422651886290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128508.P16546572692468515446

`A117143(A028310(n))-A117142(A028310(n))`
-/

namespace A128508.P16546572692468515446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117143 (A028310 n).toNat - A117142 (A028310 n).toNat

end

end A128508.P16546572692468515446

noncomputable section

/-- A128508: Number of partitions p of n such that max(p) - min(p) = 3.

Offset 0, canonical program `A128508.P16546572692468515446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. -/
def A128508 (n : ℕ) : ℤ :=
  A128508.P16546572692468515446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. -/
def A128508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128514.P1191630160223175623

`A116558(A104571(n))`
-/

namespace A128514.P1191630160223175623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (A104571 n).toNat

end

end A128514.P1191630160223175623

noncomputable section

/-- A128514: Triangle, Pell sequence in every column.

Offset 1, canonical program `A128514.P1191630160223175623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128514 (n : ℕ) : ℤ :=
  A128514.P1191630160223175623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128541.P11291704375790424598

`A058071(n)*A097806(n)`
-/

namespace A128541.P11291704375790424598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n * A097806 n

end

end A128541.P11291704375790424598

noncomputable section

/-- A128541: Triangle, A097806 * A127647, read by rows.

Offset 0, canonical program `A128541.P11291704375790424598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128541 (n : ℕ) : ℤ :=
  A128541.P11291704375790424598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128544.P3680955686172368637

`A094436(n)+A094436(n+1)%A094437(n+1)`
-/

namespace A128544.P3680955686172368637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + Int.tmod (A094436 (n + 1)) (A094437 (n + 1))

end

end A128544.P3680955686172368637

noncomputable section

/-- A128544: A007318 * A128540.

Offset 0, canonical program `A128544.P3680955686172368637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128544 (n : ℕ) : ℤ :=
  A128544.P3680955686172368637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128585.P13154041954292014342

`A097808(n)*A104763(n+1)`
-/

namespace A128585.P13154041954292014342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n * A104763 (n + 1)

end

end A128585.P13154041954292014342

noncomputable section

/-- A128585: Triangle read by rows: A007318^(-1) * A128541.

Offset 1, canonical program `A128585.P13154041954292014342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128585 (n : ℕ) : ℤ :=
  A128585.P13154041954292014342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128590.P16993943773611964593

`(A003057(n+2)-A209279(n+1))*A209279(n+1)`
-/

namespace A128590.P16993943773611964593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A209279 (n + 1)) * A209279 (n + 1)

end

end A128590.P16993943773611964593

noncomputable section

/-- A128590: Triangle read by rows, matrix product A128179 * A000012.

Offset 1, canonical program `A128590.P16993943773611964593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128590 (n : ℕ) : ℤ :=
  A128590.P16993943773611964593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128621.P10653779951619394494

`∑[A010054(n)]*A128174(n+1)`
-/

namespace A128621.P10653779951619394494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A128174 (n + 1)

end

end A128621.P10653779951619394494

noncomputable section

/-- A128621: A127648 * A128174 as an infinite lower triangular matrix.

Offset 1, canonical program `A128621.P10653779951619394494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128621 (n : ℕ) : ℤ :=
  A128621.P10653779951619394494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128743.P4794288623127083266

`A026376(A028310(n))-A026378(A028310(n))`
-/

namespace A128743.P4794288623127083266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (A028310 n).toNat - A026378 (A028310 n).toNat

end

end A128743.P4794288623127083266

noncomputable section

/-- A128743: Number of UU's (i.e., doublerises) in all skew Dyck paths of semilength n.

Offset 0, canonical program `A128743.P4794288623127083266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743 (n : ℕ) : ℤ :=
  A128743.P4794288623127083266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129143.P15988714660412797946

`A137688(n)+A002262(n)`
-/

namespace A129143.P15988714660412797946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A002262 n

end

end A129143.P15988714660412797946

noncomputable section

/-- A129143: Start with the empty sequence and append in step k the consecutive numbers 2^(k-1) to 2^(k-1)+k-1.

Offset 1, canonical program `A129143.P15988714660412797946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143 (n : ℕ) : ℤ :=
  A129143.P15988714660412797946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129230.P12651400722850919563

`A054347(n)-a(n-1)` with `a(0)=0`
-/

namespace A129230.P12651400722850919563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054347 n - a (n - 1)

end

end A129230.P12651400722850919563

noncomputable section

/-- A129230: a(n) = floor(n*r) + floor((n-2)*r) + floor((n-4)*r) + ... + floor(k*r), where r = golden ratio = (1 + sqrt(5))/2 and k = n mod 2.

Offset 0, canonical program `A129230.P12651400722850919563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129230 (n : ℕ) : ℤ :=
  A129230.P12651400722850919563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129231.P4429393398897307074

`Δ[A001951(n-1)+a(n-2)]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A129231.P4429393398897307074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  A001951 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129231.P4429393398897307074

noncomputable section

/-- A129231: a(n) = floor(n*r) - a(n-1), where r = sqrt(2) and a(0) = 0.

Offset 0, canonical program `A129231.P4429393398897307074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129231 (n : ℕ) : ℤ :=
  A129231.P4429393398897307074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129232.P14690578308145464037

`A001951(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A129232.P14690578308145464037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001951 n + a (n - 2)

end

end A129232.P14690578308145464037

noncomputable section

/-- A129232: a(n) = floor(n*r) + floor((n-2)*r) + floor((n-4)*r) + ... + floor(k*r), where r = 2^(1/2) and k = 0 if n is even, k = 1 if n is odd.

Offset 0, canonical program `A129232.P14690578308145464037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129232 (n : ℕ) : ℤ :=
  A129232.P14690578308145464037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129234.P10543029796257728655

`(A054531(n+1)+A002262(n))*A051731(n+1)`
-/

namespace A129234.P10543029796257728655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) + A002262 n) * A051731 (n + 1)

end

end A129234.P10543029796257728655

noncomputable section

/-- A129234: Triangle read by rows: T(n,k) = n/k + k - 1 if n mod k = 0; otherwise T(n,k)=0 (1 <= k <= n).

Offset 1, canonical program `A129234.P10543029796257728655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234 (n : ℕ) : ℤ :=
  A129234.P10543029796257728655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129265.P10106076537262202523

`val(or(A002024(n+1), A139547(n)), 2)+1`
-/

namespace A129265.P10106076537262202523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor (A002024 (n + 1)) (A139547 n)).toNat 2 + 1

end

end A129265.P10106076537262202523

noncomputable section

/-- A129265: Triangle read by rows: T(n,k) is the number of power of two divisors of n that are less than or equal to n/k.

Offset 1, canonical program `A129265.P10106076537262202523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A129265 (n : ℕ) : ℤ :=
  (A129265.P10106076537262202523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A129265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129384.P14685954410445170800

`∑[A129383(n)]`
-/

namespace A129384.P14685954410445170800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129384.P14685954410445170800

noncomputable section

/-- A129384: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k, floor((n-k)/2)).

Offset 0, canonical program `A129384.P14685954410445170800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A129384 (n : ℕ) : ℤ :=
  A129384.P14685954410445170800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A129384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129572.P323978587708688268

`A097806(gcd(n, Δ[A129372(n+1)]))`
-/

namespace A129572.P323978587708688268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n))

end

end A129572.P323978587708688268

noncomputable section

/-- A129572: A129372 * A097806.

Offset 1, canonical program `A129572.P323978587708688268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129572 (n : ℕ) : ℤ :=
  A129572.P323978587708688268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A129572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129573.P14345061609223705397

`A000007(A030111(n+1)%A046854(n))`
-/

namespace A129573.P14345061609223705397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A030111 (n + 1)) (A046854 n)).toNat

end

end A129573.P14345061609223705397

noncomputable section

/-- A129573: Triangle read by rows: A097806 * A129372 as infinite lower triangular matrices.

Offset 1, canonical program `A129573.P14345061609223705397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A129573 (n : ℕ) : ℤ :=
  A129573.P14345061609223705397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A129573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129574.P17473948637287950129

`A091954(2*(n+1))+A091954(A092535(n+1))`
-/

namespace A129574.P17473948637287950129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1)) + A091954 (A092535 (n + 1)).toNat

end

end A129574.P17473948637287950129

noncomputable section

/-- A129574: Number of odd divisors of n plus the number of odd divisors of n - 1.

Offset 1, canonical program `A129574.P17473948637287950129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129574 (n : ℕ) : ℤ :=
  A129574.P17473948637287950129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A129574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129685.P4243944531495755914

`A106246(n)*A117568(n)`
-/

namespace A129685.P4243944531495755914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106246 n * A117568 n

end

end A129685.P4243944531495755914

noncomputable section

/-- A129685: Exponential Riordan array [1-x^2/2, x].

Offset 0, canonical program `A129685.P4243944531495755914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129685 (n : ℕ) : ℤ :=
  A129685.P4243944531495755914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129703.P4207746341817496301

`A057427(n)+A005773(n+1)`
-/

namespace A129703.P4207746341817496301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005773 (n + 1)

end

end A129703.P4207746341817496301

noncomputable section

/-- A129703: Number of different walks generated by n steps that can only go in {east, southeast, southwest} directions on the 300-degree wedge in a 60-degree equilateral triangular lattice.

Offset 0, canonical program `A129703.P4207746341817496301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A129703 (n : ℕ) : ℤ :=
  A129703.P4207746341817496301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A129703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129753.P16090277469071103604

`floor(A000040(n+1)/A018252(n+1))`
-/

namespace A129753.P16090277469071103604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A018252 (n + 1) : ℚ)⌋

end

end A129753.P16090277469071103604

noncomputable section

/-- A129753: Floor(prime(n)/nonprime(n)).

Offset 1, canonical program `A129753.P16090277469071103604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129753 (n : ℕ) : ℤ :=
  A129753.P16090277469071103604.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129765.P12083585102544052263

`2-A097806(n)`
-/

namespace A129765.P12083585102544052263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A097806 n

end

end A129765.P12083585102544052263

noncomputable section

/-- A129765: Triangle, (1, 1, 2, 2, 2, ...) in every column.

Offset 1, canonical program `A129765.P12083585102544052263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129765 (n : ℕ) : ℤ :=
  A129765.P12083585102544052263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129768.P17975627728056424353

`A111333(n+1)-n`
-/

namespace A129768.P17975627728056424353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - (n : ℤ)

end

end A129768.P17975627728056424353

noncomputable section

/-- A129768: Number of odd nonprime numbers less than the n-th prime.

Offset 1, canonical program `A129768.P17975627728056424353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129768 (n : ℕ) : ℤ :=
  A129768.P17975627728056424353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129809.P16380635724625305868

`A065091(eq[2, A129750(n+1)])`
-/

namespace A129809.P16380635724625305868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129809.P16380635724625305868

noncomputable section

/-- A129809: Lesser of consecutive prime pairs whose last digits differ by 2.

Offset 1, canonical program `A129809.P16380635724625305868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809 (n : ℕ) : ℤ :=
  A129809.P16380635724625305868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129812.P15062499110324960971

`A065091(eq[7, (A000040(n+1)*A000040(n+2))%10])`
-/

namespace A129812.P15062499110324960971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129812.P15062499110324960971

noncomputable section

/-- A129812: Lesser of consecutive prime pairs whose last digits differ by 6.

Offset 2, canonical program `A129812.P15062499110324960971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A129812 (n : ℕ) : ℤ :=
  A129812.P15062499110324960971.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A129812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129856.P3920010008458318143

`p?[A001223(n+1)-1]`
-/

namespace A129856.P3920010008458318143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P3920010008458318143

noncomputable section

/-- A129856: Primes that are one less than the difference between consecutive primes.

Offset 1, canonical program `A129856.P3920010008458318143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856 (n : ℕ) : ℤ :=
  A129856.P3920010008458318143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130194.P2127097529341530346

`A009531(A004736(n+1))`
-/

namespace A130194.P2127097529341530346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A004736 (n + 1)).toNat

end

end A130194.P2127097529341530346

noncomputable section

/-- A130194: Let M = lower triangular matrix with 1's on and below the main diagonal, with columns multiplied by +1, +1, -1, -1, repeated; form M^2; read across rows of resulting triangle.

Offset 1, canonical program `A130194.P2127097529341530346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194 (n : ℕ) : ℤ :=
  A130194.P2127097529341530346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130210.P14281367747963938276

`∑{d}[A127093(n+1), A057427(#)]`
-/

namespace A130210.P14281367747963938276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A130210.P14281367747963938276

noncomputable section

/-- A130210: Triangle read by rows: T(n, k) = A000005(k) if k divides n, T(n, k) = 0 otherwise.

Offset 1, canonical program `A130210.P14281367747963938276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130210 (n : ℕ) : ℤ :=
  A130210.P14281367747963938276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130210.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130243.P18068863741385529498

`(n+2)*A130241(n+1)-A000032(A130241(n+1)+2)+3`
-/

namespace A130243.P18068863741385529498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A130241 (n + 1) - A000032 (A130241 (n + 1) + 2).toNat + 3

end

end A130243.P18068863741385529498

noncomputable section

/-- A130243: Partial sums of the 'lower' Lucas Inverse A130241.

Offset 1, canonical program `A130243.P18068863741385529498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130243 (n : ℕ) : ℤ :=
  A130243.P18068863741385529498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130244.P17329518017061737042

`∑[A130242(n)]`
-/

namespace A130244.P17329518017061737042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130244.P17329518017061737042

noncomputable section

/-- A130244: Partial sums of the 'upper' Lucas Inverse A130242.

Offset 0, canonical program `A130244.P17329518017061737042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130244 (n : ℕ) : ℤ :=
  A130244.P17329518017061737042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130247.P7336442961275218768

`A130241(n+1)-A063524(n)`
-/

namespace A130247.P7336442961275218768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (n + 1) - A063524 n

end

end A130247.P7336442961275218768

noncomputable section

/-- A130247: Inverse Lucas (A000032) numbers: index k of a Lucas number such that Lucas(k)=n; max(k|Lucas(k) < n), if there is no such index.

Offset 1, canonical program `A130247.P7336442961275218768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130247 (n : ℕ) : ℤ :=
  A130247.P7336442961275218768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130252.P11183113605279075851

`∑[A130253(n)]-A130253(n)`
-/

namespace A130252.P11183113605279075851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130253 n

end

end A130252.P11183113605279075851

noncomputable section

/-- A130252: Partial sums of A130250.

Offset 0, canonical program `A130252.P11183113605279075851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130252 (n : ℕ) : ℤ :=
  A130252.P11183113605279075851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130262.P6396722394106134302

`n*A130260(n)-A001519(A130260(n))+1`
-/

namespace A130262.P6396722394106134302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130260 n - A001519 (A130260 n).toNat + 1

end

end A130262.P6396722394106134302

noncomputable section

/-- A130262: Partial sums of the 'upper' even Fibonacci Inverse A130260.

Offset 0, canonical program `A130262.P6396722394106134302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130262 (n : ℕ) : ℤ :=
  A130262.P6396722394106134302.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130270.P2168121446390498421

`A080036(n)%A000124(∑[A010054(n)])`
-/

namespace A130270.P2168121446390498421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080036 n) (A000124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A130270.P2168121446390498421

noncomputable section

/-- A130270: Triangle read by rows, T(n) followed by 1, 2, 3, ..., n-1.

Offset 1, canonical program `A130270.P2168121446390498421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130270 (n : ℕ) : ℤ :=
  A130270.P2168121446390498421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130271.P11867080403092129136

`A002024(n+1)+A003056(n)*A051340(n)`
-/

namespace A130271.P11867080403092129136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A003056 n * A051340 n

end

end A130271.P11867080403092129136

noncomputable section

/-- A130271: Triangle read by rows: A051340^2.

Offset 1, canonical program `A130271.P11867080403092129136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130271 (n : ℕ) : ℤ :=
  A130271.P11867080403092129136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130301.P9351493198226008090

`A074909(n+1)+A003056(n*A010054(n))`
-/

namespace A130301.P9351493198226008090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + A003056 ((n : ℤ) * A010054 n).toNat

end

end A130301.P9351493198226008090

noncomputable section

/-- A130301: Triangle read by rows: A130296 * A007318, as infinite lower triangular matrices.

Offset 1, canonical program `A130301.P9351493198226008090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130301 (n : ℕ) : ℤ :=
  A130301.P9351493198226008090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130303.P17992843340813991066

`floor(A004736(n+1)+A025581(n)/a(n-1))` with `a(0)=1`
-/

namespace A130303.P17992843340813991066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A004736 (n + 1) : ℚ) + (A025581 n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A130303.P17992843340813991066

noncomputable section

/-- A130303: A130296 * A000012.

Offset 1, canonical program `A130303.P17992843340813991066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130303 (n : ℕ) : ℤ :=
  A130303.P17992843340813991066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130453.P9741272434723814228

`A011782(A128219(n+1))`
-/

namespace A130453.P9741272434723814228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A128219 (n + 1)).toNat

end

end A130453.P9741272434723814228

noncomputable section

/-- A130453: A097806 * A059268.

Offset 1, canonical program `A130453.P9741272434723814228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130453 (n : ℕ) : ℤ :=
  A130453.P9741272434723814228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130453.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130878.P6854840787225791751

`∑{d}[n+1, A100107(#)]`
-/

namespace A130878.P6854840787225791751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100107 d

end

end A130878.P6854840787225791751

noncomputable section

/-- A130878: Inverse Moebius transform of A100107.

Offset 1, canonical program `A130878.P6854840787225791751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A130878 (n : ℕ) : ℤ :=
  A130878.P6854840787225791751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A130878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130912.P7265221036495791241

`floor(A196202(n+2)/A065091(n+1))`
-/

namespace A130912.P7265221036495791241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 2) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A130912.P7265221036495791241

noncomputable section

/-- A130912: Fermat quotients, mod p: ((2^(p-1) - 1)/p) mod p = A007663(n) mod p.

Offset 2, canonical program `A130912.P7265221036495791241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A130912 (n : ℕ) : ℤ :=
  A130912.P7265221036495791241.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A130912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131108.P4431672301133884722

`A028326(n)-A097806(n)`
-/

namespace A131108.P4431672301133884722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A097806 n

end

end A131108.P4431672301133884722

noncomputable section

/-- A131108: T(n,k) = 2*A007318(n,k) - A097806(n,k).

Offset 0, canonical program `A131108.P4431672301133884722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131108 (n : ℕ) : ℤ :=
  A131108.P4431672301133884722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131127.P11296846227451289478

`A028326(n)-A167374(n)`
-/

namespace A131127.P11296846227451289478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A167374 n

end

end A131127.P11296846227451289478

noncomputable section

/-- A131127: Table read by rows: 2*A007318(n,m) - A167374(n,m).

Offset 0, canonical program `A131127.P11296846227451289478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131127 (n : ℕ) : ℤ :=
  A131127.P11296846227451289478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131127.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131227.P17976350345380412525

`2*A051340(n)-A128174(n+1)`
-/

namespace A131227.P17976350345380412525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051340 n - A128174 (n + 1)

end

end A131227.P17976350345380412525

noncomputable section

/-- A131227: 2*A051340 - A128174.

Offset 0, canonical program `A131227.P17976350345380412525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131227 (n : ℕ) : ℤ :=
  A131227.P17976350345380412525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131241.P5173463838883617248

`floor(3/2*A131240(n))`
-/

namespace A131241.P5173463838883617248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A131240 n : ℚ)⌋

end

end A131241.P5173463838883617248

noncomputable section

/-- A131241: 3*A046854 - 2*I.

Offset 0, canonical program `A131241.P5173463838883617248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131241 (n : ℕ) : ℤ :=
  A131241.P5173463838883617248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131327.P2273805108946700537

`round(4*A131325(n)/3)`
-/

namespace A131327.P2273805108946700537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * A131325 n : ℚ) / 3)

end

end A131327.P2273805108946700537

noncomputable section

/-- A131327: Triangle |4*|A049310(n,k)| - 3| read by rows, 0<=k<=n.

Offset 0, canonical program `A131327.P2273805108946700537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131327 (n : ℕ) : ℤ :=
  A131327.P2273805108946700537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131374.P1343424990653634680

`A131373(n)+1-A168561(n)`
-/

namespace A131374.P1343424990653634680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131373 n + (1 - A168561 n)

end

end A131374.P1343424990653634680

noncomputable section

/-- A131374: A046854 + A065941 - A049310.

Offset 0, canonical program `A131374.P1343424990653634680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131374 (n : ℕ) : ℤ :=
  A131374.P1343424990653634680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131400.P9116326732354589856

`A131373(n)+A023532(n)`
-/

namespace A131400.P9116326732354589856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131373 n + A023532 n

end

end A131400.P9116326732354589856

noncomputable section

/-- A131400: A046854 + A065941 - I (Identity matrix).

Offset 0, canonical program `A131400.P9116326732354589856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131400 (n : ℕ) : ℤ :=
  A131400.P9116326732354589856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131402.P8210763280089425655

`A028326(n)-A131373(n)`
-/

namespace A131402.P8210763280089425655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131373 n

end

end A131402.P8210763280089425655

noncomputable section

/-- A131402: Triangle read by rows: 2*A007318 - (A046854 + A065941 - A000012) as infinite lower triangular matrices.

Offset 0, canonical program `A131402.P8210763280089425655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131402 (n : ℕ) : ℤ :=
  A131402.P8210763280089425655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131403.P2178113084188319012

`A119587(n+1)+n`
-/

namespace A131403.P2178113084188319012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 (n + 1) + (n : ℤ)

end

end A131403.P2178113084188319012

noncomputable section

/-- A131403: Row sums of triangle A131402.

Offset 0, canonical program `A131403.P2178113084188319012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A131403 (n : ℕ) : ℤ :=
  A131403.P2178113084188319012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A131403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131416.P5420476087701445700

`A104587(n)-A025581(n)²`
-/

namespace A131416.P5420476087701445700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - A025581 n ^ 2

end

end A131416.P5420476087701445700

noncomputable section

/-- A131416: (A000012 * A002260) + (A002260 * A000012) - A000012.

Offset 1, canonical program `A131416.P5420476087701445700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131416 (n : ℕ) : ℤ :=
  A131416.P5420476087701445700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131425.P7307706375564196497

`∑[A090942(n+1)+A086801(n+1)]`
-/

namespace A131425.P7307706375564196497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) + A086801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P7307706375564196497

noncomputable section

/-- A131425: Row sums of triangle A131424.

Offset 1, canonical program `A131425.P7307706375564196497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131425 (n : ℕ) : ℤ :=
  A131425.P7307706375564196497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131430.P12639990675613689132

`A045992(n)+A014138(n)`
-/

namespace A131430.P12639990675613689132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n + A014138 n

end

end A131430.P12639990675613689132

noncomputable section

/-- A131430: Row sums of triangle A131429.

Offset 0, canonical program `A131430.P12639990675613689132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A131430 (n : ℕ) : ℤ :=
  A131430.P12639990675613689132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A131430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131609.P5672711036197391040

`A108037(n)^A002262(n)`
-/

namespace A131609.P5672711036197391040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108037 n : ℚ) ^ (A002262 n : ℤ)

end

end A131609.P5672711036197391040

noncomputable section

/-- A131609: Mirror image of triangle in A131606.

Offset 0, canonical program `A131609.P5672711036197391040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A131609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131609.P5672711036197391040.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A131609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131694.P609237085651523433

`eq[1, ∏{e}[A008347(n), #+1]-1]`
-/

namespace A131694.P609237085651523433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131694.P609237085651523433

noncomputable section

/-- A131694: Numbers k such that abs(S(k)) = A008347(k) is prime, where S(k) = S(k-1) + A000040(k)*(-1)^k; S(0) = 0.

Offset 1, canonical program `A131694.P609237085651523433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A131694 (n : ℕ) : ℤ :=
  (A131694.P609237085651523433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A131694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131725.P6613344306997403869

`∑[A131711(n)]`
-/

namespace A131725.P6613344306997403869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131725.P6613344306997403869

noncomputable section

/-- A131725: Partial sums of A131711.

Offset 0, canonical program `A131725.P6613344306997403869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131725 (n : ℕ) : ℤ :=
  A131725.P6613344306997403869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131740.P10215158765622913185

`∑[A100479(n+1)-A000040(n+1)]`
-/

namespace A131740.P10215158765622913185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131740.P10215158765622913185

noncomputable section

/-- A131740: a(n) = sum of n successive primes after the n-th prime.

Offset 1, canonical program `A131740.P10215158765622913185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131740 (n : ℕ) : ℤ :=
  A131740.P10215158765622913185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131775.P7787466996817458597

`2*A131774(n+1)-A065941(n)`
-/

namespace A131775.P7787466996817458597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131774 (n + 1) - A065941 n

end

end A131775.P7787466996817458597

noncomputable section

/-- A131775: 3*A065941 - 2*A049310.

Offset 1, canonical program `A131775.P7787466996817458597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131775 (n : ℕ) : ℤ :=
  A131775.P7787466996817458597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131776.P11657725690283460329

`2*A131774(n+1)-A168561(n)`
-/

namespace A131776.P11657725690283460329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131774 (n + 1) - A168561 n

end

end A131776.P11657725690283460329

noncomputable section

/-- A131776: 4*A065941 - 3*A049310.

Offset 1, canonical program `A131776.P11657725690283460329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131776 (n : ℕ) : ℤ :=
  A131776.P11657725690283460329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131781.P11903417677959677227

`A131270(n)+1-A097807(n)`
-/

namespace A131781.P11903417677959677227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + (1 - A097807 n)

end

end A131781.P11903417677959677227

noncomputable section

/-- A131781: 2*A046854 - A000012 (signed by columns + - + -, ...).

Offset 1, canonical program `A131781.P11903417677959677227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131781 (n : ℕ) : ℤ :=
  A131781.P11903417677959677227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131817.P1452475157626756727

`A051340(n)+A130321(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131817.P1452475157626756727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + A130321 n - 1

end

end A131817.P1452475157626756727

noncomputable section

/-- A131817: a(n) = A051340(n) + A130321(n) - A000012(n).

Offset 0, canonical program `A131817.P1452475157626756727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131817 (n : ℕ) : ℤ :=
  A131817.P1452475157626756727.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131860.P6113387829326523069

`∩[A131857(n+1), A131859(n+1)]`
-/

namespace A131860.P6113387829326523069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131860.P6113387829326523069

noncomputable section

/-- A131860: Numbers m such that z(m)=(1,1) with z as defined in A131851.

Offset 1, canonical program `A131860.P6113387829326523069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A131860 (n : ℕ) : ℤ :=
  (A131860.P6113387829326523069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A131860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131914.P7427387489545977429

`∑[xor(1, A198954(n)-1)]`
-/

namespace A131914.P7427387489545977429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198954 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131914.P7427387489545977429

noncomputable section

/-- A131914: 3*A002024 - 2*A051340.

Offset 1, canonical program `A131914.P7427387489545977429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131914 (n : ℕ) : ℤ :=
  A131914.P7427387489545977429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132013.P17343233529562696122

`A077028(n)*A167374(n)`
-/

namespace A132013.P17343233529562696122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A167374 n

end

end A132013.P17343233529562696122

noncomputable section

/-- A132013: T(n,j) for an iterated mixed order Laguerre transform. Coefficients of the normalized generalized Laguerre polynomials (-1)^n*n!*L(n,1-n,x).

Offset 0, canonical program `A132013.P17343233529562696122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132013 (n : ℕ) : ℤ :=
  A132013.P17343233529562696122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132071.P11945813341508066537

`A063712(n+1)+A014473(n)`
-/

namespace A132071.P11945813341508066537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (n + 1) + A014473 n

end

end A132071.P11945813341508066537

noncomputable section

/-- A132071: A007318 + A002024 - A103451 as infinite lower triangular matrices.

Offset 0, canonical program `A132071.P11945813341508066537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132071 (n : ℕ) : ℤ :=
  A132071.P11945813341508066537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132128.P11388277187391197128

`A051340(n)+n`
-/

namespace A132128.P11388277187391197128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + (n : ℤ)

end

end A132128.P11388277187391197128

noncomputable section

/-- A132128: A051340 + A000027 - A000012.

Offset 1, canonical program `A132128.P11388277187391197128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132128 (n : ℕ) : ℤ :=
  A132128.P11388277187391197128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132364.P17104137420631363421

`Δ[∑[A000108(n)]-A030238(n)]`
-/

namespace A132364.P17104137420631363421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A030238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132364.P17104137420631363421

noncomputable section

/-- A132364: Expansion of 1/(1-x^2*c(x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A132364.P17104137420631363421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A132364 (n : ℕ) : ℤ :=
  A132364.P17104137420631363421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A132364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132372.P5079108891255370633

`A033878(A061579(n))`
-/

namespace A132372.P5079108891255370633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A061579 n).toNat

end

end A132372.P5079108891255370633

noncomputable section

/-- A132372: T(n, k) counts Schroeder n-paths whose ascent starting at the initial vertex has length k. Triangle T(n,k), read by rows.

Offset 0, canonical program `A132372.P5079108891255370633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A132372 (n : ℕ) : ℤ :=
  A132372.P5079108891255370633.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A132372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132749.P9165985344718256506

`A132044(n)+A023532(n)`
-/

namespace A132749.P9165985344718256506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + A023532 n

end

end A132749.P9165985344718256506

noncomputable section

/-- A132749: Triangle T(n,k) = binomial(n, k) with T(n, 0) = 2, read by rows.

Offset 0, canonical program `A132749.P9165985344718256506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132749 (n : ℕ) : ℤ :=
  A132749.P9165985344718256506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132774.P14409811669311265366

`∑[A097806(n)]*A097806(n)`
-/

namespace A132774.P14409811669311265366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A097806 n

end

end A132774.P14409811669311265366

noncomputable section

/-- A132774: A natural number operator.

Offset 1, canonical program `A132774.P14409811669311265366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132774 (n : ℕ) : ℤ :=
  A132774.P14409811669311265366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132778.P15237329709094283098

`A111650(n+1)-A051340(n)`
-/

namespace A132778.P15237329709094283098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A051340 n

end

end A132778.P15237329709094283098

noncomputable section

/-- A132778: Triangle read by rows, n-1 terms of (2n - 1) followed by n.

Offset 1, canonical program `A132778.P15237329709094283098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778 (n : ℕ) : ℤ :=
  A132778.P15237329709094283098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132790.P12556336917507910766

`∑[A000245(n)]-(n-2^n)`
-/

namespace A132790.P12556336917507910766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - (2 ^ n : ℤ))

end

end A132790.P12556336917507910766

noncomputable section

/-- A132790: Row sums of triangle A132789.

Offset 1, canonical program `A132790.P12556336917507910766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A132790 (n : ℕ) : ℤ :=
  A132790.P12556336917507910766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A132790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132818.P8465170161499007808

`A001263(n+1)*A127739(n+1)`
-/

namespace A132818.P8465170161499007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A127739 (n + 1)

end

end A132818.P8465170161499007808

noncomputable section

/-- A132818: The matrix product A127773 * A001263 of infinite lower triangular matrices.

Offset 1, canonical program `A132818.P8465170161499007808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132818 (n : ℕ) : ℤ :=
  A132818.P8465170161499007808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132823.P2002679263485787100

`abs(1-A014473(n))`
-/

namespace A132823.P2002679263485787100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A014473 n|

end

end A132823.P2002679263485787100

noncomputable section

/-- A132823: Triangle read by rows: T(n,k) = binomial(n,k) - 2 for 0 < k < n, with T(n,0) = T(n,n) = 1.

Offset 0, canonical program `A132823.P2002679263485787100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132823 (n : ℕ) : ℤ :=
  A132823.P2002679263485787100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132889.P10837545302455266262

`A116385(2*n)+A005566(n)`
-/

namespace A132889.P10837545302455266262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (2 * n) + A005566 n

end

end A132889.P10837545302455266262

noncomputable section

/-- A132889: Sum of the lengths of the longest increasing subsequence over all 321-avoiding permutations of [n].

Offset 1, canonical program `A132889.P10837545302455266262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A132889 (n : ℕ) : ℤ :=
  A132889.P10837545302455266262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A132889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133080.P11855227960840329333

`C(2, 2*A051933(n))`
-/

namespace A133080.P11855227960840329333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A051933 n).toNat

end

end A133080.P11855227960840329333

noncomputable section

/-- A133080: Interpolation operator: Triangle with an even number of zeros in each line followed by 1 or 2 ones.

Offset 1, canonical program `A133080.P11855227960840329333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133080 (n : ℕ) : ℤ :=
  (A133080.P11855227960840329333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133084.P4031868736069884571

`A007318(n)+A007318(n+1)*A060510(n+1)`
-/

namespace A133084.P4031868736069884571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007318 (n + 1) * A060510 (n + 1)

end

end A133084.P4031868736069884571

noncomputable section

/-- A133084: A007318 * A133080.

Offset 1, canonical program `A133084.P4031868736069884571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084 (n : ℕ) : ℤ :=
  A133084.P4031868736069884571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133091.P6564816861379254758

`gcd(2*A002260(n+1), A128228(n+1))`
-/

namespace A133091.P6564816861379254758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A002260 (n + 1)) (A128228 (n + 1))

end

end A133091.P6564816861379254758

noncomputable section

/-- A133091: A133080 * A002260.

Offset 1, canonical program `A133091.P6564816861379254758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133091 (n : ℕ) : ℤ :=
  (A133091.P6564816861379254758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133131.P2286619293522263378

`Δ[Δ[A131742(n)]]`
-/

namespace A133131.P2286619293522263378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133131.P2286619293522263378

noncomputable section

/-- A133131: a(4n) = 3n+1, a(4n+1) = -3n, a(4n+2) = -3n-3, a(4n+3) = 3n+2.

Offset 0, canonical program `A133131.P2286619293522263378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133131 (n : ℕ) : ℤ :=
  A133131.P2286619293522263378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133138.P17820506567274985276

`A097806(n)+A007318(n)`
-/

namespace A133138.P17820506567274985276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + A007318 n

end

end A133138.P17820506567274985276

noncomputable section

/-- A133138: Triangle T(n,k) of the coefficients of the polynomials Q(n,x)=(1+x)[(1+x)^(n-1)+x^(n-1)], Q(0,x)=2.

Offset 0, canonical program `A133138.P17820506567274985276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133138 (n : ℕ) : ℤ :=
  A133138.P17820506567274985276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133162.P1830166414594627014

`A049320(n+1)+1`
-/

namespace A133162.P1830166414594627014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (n + 1) + 1

end

end A133162.P1830166414594627014

noncomputable section

/-- A133162: Trajectory of 1 under the morphism 1 -> {1,1,2,1}, 2 -> {2}.

Offset 1, canonical program `A133162.P1830166414594627014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133162 (n : ℕ) : ℤ :=
  A133162.P1830166414594627014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133200.P7253229306496765429

`A001263(n+1)+A001263(n+1)-A010054(n)`
-/

namespace A133200.P7253229306496765429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A001263 (n + 1) - A010054 n)

end

end A133200.P7253229306496765429

noncomputable section

/-- A133200: A001263 * A136521 as infinite lower triangular matrices, where A001263 = the Narayana triangle and A136521 = an infinite lower triangular matrix with (1, 2, 2, 2, ...) in the main diagonal and the rest zeros.

Offset 1, canonical program `A133200.P7253229306496765429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133200 (n : ℕ) : ℤ :=
  A133200.P7253229306496765429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133325.P15127350892995211202

`A077447(n+1)+A077443(n+1)`
-/

namespace A133325.P15127350892995211202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077447 (n + 1) + A077443 (n + 1)

end

end A133325.P15127350892995211202

noncomputable section

/-- A133325: Numbers such that 2*X^2-82 is a square.

Offset 1, canonical program `A133325.P15127350892995211202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A133325 (n : ℕ) : ℤ :=
  A133325.P15127350892995211202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A133325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133341.P495050647053459279

`A135278(n)*A232089(n)`
-/

namespace A133341.P495050647053459279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A232089 n

end

end A133341.P495050647053459279

noncomputable section

/-- A133341: A007318 * A134312.

Offset 0, canonical program `A133341.P495050647053459279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341 (n : ℕ) : ℤ :=
  A133341.P495050647053459279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133566.P8117964737144085914

`A097806(n)*A106344(n)`
-/

namespace A133566.P8117964737144085914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106344 n

end

end A133566.P8117964737144085914

noncomputable section

/-- A133566: Triangle read by rows: (1,1,1,...) on the main diagonal and (0,1,0,1,...) on the subdiagonal.

Offset 1, canonical program `A133566.P8117964737144085914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133566 (n : ℕ) : ℤ :=
  A133566.P8117964737144085914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133630.P3680023674435169334

`filter[A133621(n+1), A066247(#)]`
-/

namespace A133630.P3680023674435169334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A133630.P3680023674435169334

noncomputable section

/-- A133630: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=10.

Offset 1, canonical program `A133630.P3680023674435169334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6243 terms. -/
def A133630 (n : ℕ) : ℤ :=
  A133630.P3680023674435169334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6243 terms. -/
def A133630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133685.P12239145801004581258

`A001414(A130291(n+1))-A001414(A130290(n+1))`
-/

namespace A133685.P12239145801004581258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A130291 (n + 1)).toNat - A001414 (A130290 (n + 1)).toNat

end

end A133685.P12239145801004581258

noncomputable section

/-- A133685: Let p = prime(n); then a(n) = (sum of prime factors of p+1) - (sum of prime factors of p-1). a(1) = 2 by convention.

Offset 1, canonical program `A133685.P12239145801004581258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133685 (n : ℕ) : ℤ :=
  A133685.P12239145801004581258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133823.P6955847078214213763

`A004737(n+1)^3`
-/

namespace A133823.P6955847078214213763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 3

end

end A133823.P6955847078214213763

noncomputable section

/-- A133823: Triangle whose rows are sequences of increasing and decreasing cubes:1; 1,8,1; 1,8,27,8,1; ... .

Offset 0, canonical program `A133823.P6955847078214213763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133823 (n : ℕ) : ℤ :=
  A133823.P6955847078214213763.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133825.P698855924864636132

`A004737(n+1)*(A004737(n+1)+1)/2`
-/

namespace A133825.P698855924864636132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) * (A004737 (n + 1) + 1) : ℚ) / 2

end

end A133825.P698855924864636132

noncomputable section

/-- A133825: Triangle whose rows are sequences of increasing and decreasing triangular numbers: 1; 1,3,1; 1,3,6,3,1; ... .

Offset 0, canonical program `A133825.P698855924864636132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133825 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133825.P698855924864636132.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133826.P5294897765685283564

`C(A004737(n+1)+2, 3)`
-/

namespace A133826.P5294897765685283564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004737 (n + 1) + 2).toNat 3

end

end A133826.P5294897765685283564

noncomputable section

/-- A133826: Triangle whose rows are sequences of increasing and decreasing tetrahedral numbers: 1; 1,4,1; 1,4,10,4,1; ... .

Offset 0, canonical program `A133826.P5294897765685283564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133826 (n : ℕ) : ℤ :=
  (A133826.P5294897765685283564.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133900.P11325494338453864124

`(n+1)*A064446(n+1)`
-/

namespace A133900.P11325494338453864124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064446 (n + 1)

end

end A133900.P11325494338453864124

noncomputable section

/-- A133900: a(n) = period of the sequence {b(m), m>=0}, defined by b(m):=binomial(m+n,n) mod n.

Offset 1, canonical program `A133900.P11325494338453864124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133900 (n : ℕ) : ℤ :=
  A133900.P11325494338453864124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133915.P1448036709764330606

`A120305(n)+A002450(n)`
-/

namespace A133915.P1448036709764330606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120305 n + A002450 n

end

end A133915.P1448036709764330606

noncomputable section

/-- A133915: a(n) = Sum_{i=0..n} C(2*n-i,n+i)*2^i.

Offset 0, canonical program `A133915.P1448036709764330606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A133915 (n : ℕ) : ℤ :=
  A133915.P1448036709764330606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A133915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133988.P925296802653209893

`(-1)^n*A089812(n)`
-/

namespace A133988.P925296802653209893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089812 n

end

end A133988.P925296802653209893

noncomputable section

/-- A133988: Expansion of phi(x) / chi(x^3) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A133988.P925296802653209893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133988 (n : ℕ) : ℤ :=
  A133988.P925296802653209893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134061.P7247591162381959497

`A124928(n)+A134059(n)-A007318(n)`
-/

namespace A134061.P7247591162381959497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n + (A134059 n - A007318 n)

end

end A134061.P7247591162381959497

noncomputable section

/-- A134061: Triangle read by rows: T(n,k) = A124928(n,k) + A134059(n,k) - A007318(n,k).

Offset 0, canonical program `A134061.P7247591162381959497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134061 (n : ℕ) : ℤ :=
  A134061.P7247591162381959497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134065.P13071345824488755756

`A132200(n)-A073424(n)`
-/

namespace A134065.P13071345824488755756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n - A073424 n

end

end A134065.P13071345824488755756

noncomputable section

/-- A134065: Triangle read by rows: A134059 + A124927 - A007318 as infinite lower triangular matrices.

Offset 0, canonical program `A134065.P13071345824488755756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134065 (n : ℕ) : ℤ :=
  A134065.P13071345824488755756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134077.P3704379988218628143

`A131944(2*n+1)`
-/

namespace A134077.P3704379988218628143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131944 (2 * n + 1)

end

end A134077.P3704379988218628143

noncomputable section

/-- A134077: Expansion of psi(x) * phi(-x)^3 / chi(-x^3)^3 in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A134077.P3704379988218628143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134077 (n : ℕ) : ℤ :=
  A134077.P3704379988218628143.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134082.P10521144562507745432

`A078812(n)*A097806(n)`
-/

namespace A134082.P10521144562507745432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A097806 n

end

end A134082.P10521144562507745432

noncomputable section

/-- A134082: Triangle read by rows, (n-1) zeros followed by (2n, 1).

Offset 0, canonical program `A134082.P10521144562507745432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134082 (n : ℕ) : ℤ :=
  A134082.P10521144562507745432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134101.P17113264373539567206

`A040976(lt[4, A001223(n+1)]+2)`
-/

namespace A134101.P17113264373539567206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A134101.P17113264373539567206

noncomputable section

/-- A134101: Odd nonprimes such that the prior odd number is not a prime but the next odd number is a prime.

Offset 1, canonical program `A134101.P17113264373539567206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134101 (n : ℕ) : ℤ :=
  A134101.P17113264373539567206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134199.P15346679385903110320

`A002260(n+1)+2*A132440(n)`
-/

namespace A134199.P15346679385903110320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A132440 n

end

end A134199.P15346679385903110320

noncomputable section

/-- A134199: A002260 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

Offset 0, canonical program `A134199.P15346679385903110320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199 (n : ℕ) : ℤ :=
  A134199.P15346679385903110320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134234.P7144028086611869884

`A004277(A094727(n+1)%A131507(n))`
-/

namespace A134234.P7144028086611869884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A094727 (n + 1)) (A131507 n)).toNat

end

end A134234.P7144028086611869884

noncomputable section

/-- A134234: Triangle read by rows, n-th row = n terms of 2n, 2n+2, 2n+4, ..., 1; with a(1) = 1.

Offset 1, canonical program `A134234.P7144028086611869884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134234 (n : ℕ) : ℤ :=
  A134234.P7144028086611869884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134239.P17118463381127374769

`A127952(n+1)+A003506(n+1)`
-/

namespace A134239.P17118463381127374769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 (n + 1) + A003506 (n + 1)

end

end A134239.P17118463381127374769

noncomputable section

/-- A134239: A127899(unsigned) * A007318.

Offset 0, canonical program `A134239.P17118463381127374769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239 (n : ℕ) : ℤ :=
  A134239.P17118463381127374769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134402.P6512888230481502878

`A132440(abs(1-n))`
-/

namespace A134402.P6512888230481502878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 |1 - (n : ℤ)|.toNat

end

end A134402.P6512888230481502878

noncomputable section

/-- A134402: Triangle read by rows, for n > 0, n zeros followed by n.

Offset 0, canonical program `A134402.P6512888230481502878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134402 (n : ℕ) : ℤ :=
  A134402.P6512888230481502878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134403.P11268712443066889151

`A010054(n)+A051162(n)-1`
-/

namespace A134403.P11268712443066889151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A051162 n - 1)

end

end A134403.P11268712443066889151

noncomputable section

/-- A134403: Triangle read by rows: row n consists of (n, n, (n+1), (n+2), (n+3), ...).

Offset 0, canonical program `A134403.P11268712443066889151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403 (n : ℕ) : ℤ :=
  A134403.P11268712443066889151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134408.P2913322129490497874

`A006336(∑[A005614(n)])`
-/

namespace A134408.P2913322129490497874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134408.P2913322129490497874

noncomputable section

/-- A134408: First differences of A006336.

Offset 1, canonical program `A134408.P2913322129490497874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134408 (n : ℕ) : ℤ :=
  A134408.P2913322129490497874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134409.P7633649844803624079

`Δ[A006336(A005206(n+1))]`
-/

namespace A134409.P7633649844803624079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (A005206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134409.P7633649844803624079

noncomputable section

/-- A134409: Second differences of A006336.

Offset 1, canonical program `A134409.P7633649844803624079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134409 (n : ℕ) : ℤ :=
  A134409.P7633649844803624079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134520.P2309234469278234575

`A128174(n+1)+A014473(n)`
-/

namespace A134520.P2309234469278234575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + A014473 n

end

end A134520.P2309234469278234575

noncomputable section

/-- A134520: Triangle read by rows: A007318 + A128174 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A134520.P2309234469278234575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134520 (n : ℕ) : ℤ :=
  A134520.P2309234469278234575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134565.P8199638910073155165

`(-1)^n*A047749(ceil(sqrt(∑[2*n])))`
-/

namespace A134565.P8199638910073155165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A047749 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A134565.P8199638910073155165

noncomputable section

/-- A134565: Expansion of reversion of (x - 2*x^2) / (1 - x)^3.

Offset 1, canonical program `A134565.P8199638910073155165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A134565 (n : ℕ) : ℤ :=
  A134565.P8199638910073155165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A134565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134636.P14217444213641303487

`A051632(n)+A028263(n)`
-/

namespace A134636.P14217444213641303487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 n + A028263 n

end

end A134636.P14217444213641303487

noncomputable section

/-- A134636: Triangle formed by Pascal's rule given borders = 2n+1.

Offset 0, canonical program `A134636.P14217444213641303487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134636 (n : ℕ) : ℤ :=
  A134636.P14217444213641303487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134676.P11721118199451395300

`A007425(A010766(n+1))*A127093(n+1)`
-/

namespace A134676.P11721118199451395300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A010766 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P11721118199451395300

noncomputable section

/-- A134676: Triangle read by rows: A127172 * A127648 as infinite lower triangular matrices.

Offset 1, canonical program `A134676.P11721118199451395300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134676 (n : ℕ) : ℤ :=
  A134676.P11721118199451395300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134693.P17907923423065045904

`A133806(n)+A133806(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134693.P17907923423065045904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 n + A133806 (n + 6)

end

end A134693.P17907923423065045904

noncomputable section

/-- A134693: a(n)=A133806(n)+A133806(n+6).

Offset 0, canonical program `A134693.P17907923423065045904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134693 (n : ℕ) : ℤ :=
  A134693.P17907923423065045904.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133806, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134757.P15787088376940040508

`Δ[A132894(n)]`
-/

namespace A134757.P15787088376940040508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P15787088376940040508

noncomputable section

/-- A134757: A007318 * A100071.

Offset 1, canonical program `A134757.P15787088376940040508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A134757 (n : ℕ) : ℤ :=
  A134757.P15787088376940040508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A134757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134861.P12598962134347157448

`A035339(n)%A372302(n+1)`
-/

namespace A134861.P12598962134347157448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035339 n) (A372302 (n + 1))

end

end A134861.P12598962134347157448

noncomputable section

/-- A134861: Wythoff BAA numbers.

Offset 1, canonical program `A134861.P12598962134347157448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134861 (n : ℕ) : ℤ :=
  A134861.P12598962134347157448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134868.P8808739083334448030

`A048151(A010054(n)+n)+1`
-/

namespace A134868.P8808739083334448030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (A010054 n + (n : ℤ)).toNat + 1

end

end A134868.P8808739083334448030

noncomputable section

/-- A134868: A103451 * A002260.

Offset 1, canonical program `A134868.P8808739083334448030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134868 (n : ℕ) : ℤ :=
  A134868.P8808739083334448030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134896.P9421466722066182485

`A134897(n+1)+A004736(record[C(n, 2)-n]+1)`
-/

namespace A134896.P9421466722066182485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134897 (n + 1) + A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A134896.P9421466722066182485

noncomputable section

/-- A134896: Ceiling(n*exp(cot n)).

Offset 1, canonical program `A134896.P9421466722066182485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A134896 (n : ℕ) : ℤ :=
  A134896.P9421466722066182485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A134896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135087.P6451622044258782504

`2*A134058(n)-1`
-/

namespace A135087.P6451622044258782504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134058 n - 1

end

end A135087.P6451622044258782504

noncomputable section

/-- A135087: Triangle T(n, k) = 2*A134058(n, k) - 1, read by rows.

Offset 0, canonical program `A135087.P6451622044258782504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135087 (n : ℕ) : ℤ :=
  A135087.P6451622044258782504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135089.P9007722127279209499

`floor(5*A134059(n)/3)`
-/

namespace A135089.P9007722127279209499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((A134059 n : ℚ) / 3)⌋

end

end A135089.P9007722127279209499

noncomputable section

/-- A135089: Triangle T(n,k) = 5*binomial(n,k) with T(0,0) = 1, read by rows.

Offset 0, canonical program `A135089.P9007722127279209499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135089 (n : ℕ) : ℤ :=
  A135089.P9007722127279209499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135178.P2117100385622879640

`A001248(n+1)+A030078(n+1)`
-/

namespace A135178.P2117100385622879640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A030078 (n + 1)

end

end A135178.P2117100385622879640

noncomputable section

/-- A135178: a(n) = p^3 + p^2 where p = prime(n).

Offset 1, canonical program `A135178.P2117100385622879640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135178 (n : ℕ) : ℤ :=
  A135178.P2117100385622879640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135223.P14742202444666781604

`A008805(A198954(n))+A002262(n)`
-/

namespace A135223.P14742202444666781604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A198954 n).toNat + A002262 n

end

end A135223.P14742202444666781604

noncomputable section

/-- A135223: Triangle A000012 * A127648 * A103451, read by rows.

Offset 1, canonical program `A135223.P14742202444666781604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223 (n : ℕ) : ℤ :=
  A135223.P14742202444666781604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135225.P1573324357091350278

`A097805(A073423(n)+n)`
-/

namespace A135225.P1573324357091350278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A073423 n + (n : ℤ)).toNat

end

end A135225.P1573324357091350278

noncomputable section

/-- A135225: Pascal's triangle A007318 augmented with a leftmost border column of 1's.

Offset 0, canonical program `A135225.P1573324357091350278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135225 (n : ℕ) : ℤ :=
  A135225.P1573324357091350278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135227.P11035620043874226728

`A007318(A198954(n)+n)`
-/

namespace A135227.P11035620043874226728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A198954 n + (n : ℤ)).toNat

end

end A135227.P11035620043874226728

noncomputable section

/-- A135227: Triangle A000012 * A135225, read by rows.

Offset 0, canonical program `A135227.P11035620043874226728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135227 (n : ℕ) : ℤ :=
  A135227.P11035620043874226728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135232.P1770735486883114960

`∑[A089581(n+1)]`
-/

namespace A135232.P1770735486883114960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P1770735486883114960

noncomputable section

/-- A135232: Sum of the products of the first n prime pairs.

Offset 1, canonical program `A135232.P1770735486883114960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135232 (n : ℕ) : ℤ :=
  A135232.P1770735486883114960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135499.P1507345973480139614

`lt[lcm(n, A055017(n)), n]`
-/

namespace A135499.P1507345973480139614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055017 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135499.P1507345973480139614

noncomputable section

/-- A135499: Numbers for which Sum_digits(odd positions) = Sum_digits(even positions).

Offset 1, canonical program `A135499.P1507345973480139614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A135499 (n : ℕ) : ℤ :=
  (A135499.P1507345973480139614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A135499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135618.P17133991811513535197

`A134718(n+1)/2`
-/

namespace A135618.P17133991811513535197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134718 (n + 1) : ℚ) / 2

end

end A135618.P17133991811513535197

noncomputable section

/-- A135618: Even Motzkin numbers divided by 2.

Offset 1, canonical program `A135618.P17133991811513535197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135618 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135618.P17133991811513535197.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135775.P6442385644065745739

`eq[A057427(n)+A032741(n), A110592(n)]`
-/

namespace A135775.P6442385644065745739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135775.P6442385644065745739

noncomputable section

/-- A135775: Numbers having number of divisors equal to number of digits in base 5.

Offset 1, canonical program `A135775.P6442385644065745739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A135775 (n : ℕ) : ℤ :=
  (A135775.P6442385644065745739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A135775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135837.P1451698449987845866

`A007318(n)*A060546(A002262(n))`
-/

namespace A135837.P1451698449987845866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A060546 (A002262 n).toNat

end

end A135837.P1451698449987845866

noncomputable section

/-- A135837: A007318 * a triangle with (1, 2, 2, 4, 4, 8, 8, ...) in the main diagonal and the rest zeros.

Offset 1, canonical program `A135837.P1451698449987845866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135837 (n : ℕ) : ℤ :=
  A135837.P1451698449987845866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135840.P14133601689704318792

`ceil((A010054(n)+A004736(n+1))/2)`
-/

namespace A135840.P14133601689704318792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010054 n + A004736 (n + 1) : ℚ) / 2⌉

end

end A135840.P14133601689704318792

noncomputable section

/-- A135840: A135839 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A135840.P14133601689704318792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135840 (n : ℕ) : ℤ :=
  A135840.P14133601689704318792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135852.P3513124287864982456

`A103406(n)*A211164(A198954(n))`
-/

namespace A135852.P3513124287864982456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n * A211164 (A198954 n).toNat

end

end A135852.P3513124287864982456

noncomputable section

/-- A135852: A007318 * A103516 as a lower triangular matrix.

Offset 0, canonical program `A135852.P3513124287864982456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135852 (n : ℕ) : ℤ :=
  A135852.P3513124287864982456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136063.P6007751385196214412

`p?[9*A006093(n+1)+1]`
-/

namespace A136063.P6007751385196214412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P6007751385196214412

noncomputable section

/-- A136063: Mother primes of order 4.

Offset 1, canonical program `A136063.P6007751385196214412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A136063 (n : ℕ) : ℤ :=
  A136063.P6007751385196214412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A136063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136064.P4369276691916224669

`p?[11*A006093(n+1)+1]`
-/

namespace A136064.P4369276691916224669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P4369276691916224669

noncomputable section

/-- A136064: Mother primes of order 5.

Offset 1, canonical program `A136064.P4369276691916224669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A136064 (n : ℕ) : ℤ :=
  A136064.P4369276691916224669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A136064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136068.P14960565714948340303

`p?[19*A006093(n+1)+1]`
-/

namespace A136068.P14960565714948340303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P14960565714948340303

noncomputable section

/-- A136068: Mother primes of order 9.

Offset 1, canonical program `A136068.P14960565714948340303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A136068 (n : ℕ) : ℤ :=
  A136068.P14960565714948340303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A136068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136069.P239198590526988614

`p?[21*A006093(n+1)+1]`
-/

namespace A136069.P239198590526988614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P239198590526988614

noncomputable section

/-- A136069: Mother primes of order 10.

Offset 1, canonical program `A136069.P239198590526988614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. -/
def A136069 (n : ℕ) : ℤ :=
  A136069.P239198590526988614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. -/
def A136069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136070.P4483853176803871753

`p?[23*A006093(n+1)+1]`
-/

namespace A136070.P4483853176803871753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P4483853176803871753

noncomputable section

/-- A136070: Mother primes of order 11.

Offset 1, canonical program `A136070.P4483853176803871753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A136070 (n : ℕ) : ℤ :=
  A136070.P4483853176803871753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. -/
def A136070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136072.P9164867386790231185

`p?[7*A008864(n+1)-1]`
-/

namespace A136072.P9164867386790231185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P9164867386790231185

noncomputable section

/-- A136072: Primes of the form 7*p + 6 with p prime.

Offset 1, canonical program `A136072.P9164867386790231185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A136072 (n : ℕ) : ℤ :=
  A136072.P9164867386790231185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A136072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136076.P10771529814166551126

`p?[15*A008864(n+1)-1]`
-/

namespace A136076.P10771529814166551126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P10771529814166551126

noncomputable section

/-- A136076: Primes of the form 15*p + 14 with p prime.

Offset 1, canonical program `A136076.P10771529814166551126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A136076 (n : ℕ) : ℤ :=
  A136076.P10771529814166551126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A136076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136079.P13389629835075669409

`p?[21*A008864(n+1)-1]`
-/

namespace A136079.P13389629835075669409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P13389629835075669409

noncomputable section

/-- A136079: Primes of the form 21*p + 20 with p prime.

Offset 1, canonical program `A136079.P13389629835075669409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A136079 (n : ℕ) : ℤ :=
  A136079.P13389629835075669409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. -/
def A136079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136083.P9300838305206565208

`floor(A136075(n+1)/13)`
-/

namespace A136083.P9300838305206565208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136075 (n + 1) : ℚ) / 13⌋

end

end A136083.P9300838305206565208

noncomputable section

/-- A136083: Son primes of order 6.

Offset 1, canonical program `A136083.P9300838305206565208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136083 (n : ℕ) : ℤ :=
  A136083.P9300838305206565208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136088.P4566538024030285443

`floor(A136080(n+1)/23)`
-/

namespace A136088.P4566538024030285443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136080 (n + 1) : ℚ) / 23⌋

end

end A136088.P4566538024030285443

noncomputable section

/-- A136088: Son primes of order 11.

Offset 1, canonical program `A136088.P4566538024030285443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136088 (n : ℕ) : ℤ :=
  A136088.P4566538024030285443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136288.P6117601976786394949

`p?[A008347(n)]`
-/

namespace A136288.P6117601976786394949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136288.P6117601976786394949

noncomputable section

/-- A136288: Primes which are the absolute value of the alternating sum and difference of the first n primes.

Offset 1, canonical program `A136288.P6117601976786394949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A136288 (n : ℕ) : ℤ :=
  A136288.P6117601976786394949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A136288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136444.P17468755045038828291

`Δ[A118430(abs(1-n))]`
-/

namespace A136444.P17468755045038828291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136444.P17468755045038828291

noncomputable section

/-- A136444: a(n) = Sum_{k=0..n} k*binomial(n-k, 2*k).

Offset 0, canonical program `A136444.P17468755045038828291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A136444 (n : ℕ) : ℤ :=
  A136444.P17468755045038828291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. -/
def A136444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136462.P13145340659209256192

`C(A296612(A061579(n)), A002262(n))`
-/

namespace A136462.P13145340659209256192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A296612 (A061579 n).toNat).toNat (A002262 n).toNat

end

end A136462.P13145340659209256192

noncomputable section

/-- A136462: Square table, read by antidiagonals, where T(n,k) = C((n+1)*2^(k-1), k) for n>=0, k>=0.

Offset 0, canonical program `A136462.P13145340659209256192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A136462 (n : ℕ) : ℤ :=
  (A136462.P13145340659209256192.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A136462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136521.P12057220829858395137

`A046698(A131431(n))`
-/

namespace A136521.P12057220829858395137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A131431 n).toNat

end

end A136521.P12057220829858395137

noncomputable section

/-- A136521: Triangle read by rows: (1, 2, 2, 2, ...) on the main diagonal and the rest zeros.

Offset 0, canonical program `A136521.P12057220829858395137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136521 (n : ℕ) : ℤ :=
  A136521.P12057220829858395137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136576.P9301730966538288022

`A062157(n)/2*A071356(n)`
-/

namespace A136576.P9301730966538288022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 n : ℚ) / 2 * (A071356 n : ℚ)

end

end A136576.P9301730966538288022

noncomputable section

/-- A136576: Series reversion of x*c(x)/(1 - 2*x), c(x) the g.f. of A000108.

Offset 0, canonical program `A136576.P9301730966538288022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A136576 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136576.P9301730966538288022.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A136576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136579.P5647402470606448

`A116447(A133728(n+1))`
-/

namespace A136579.P5647402470606448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A133728 (n + 1)).toNat

end

end A136579.P5647402470606448

noncomputable section

/-- A136579: Triangle read by rows: A128174 * A136572.

Offset 0, canonical program `A136579.P5647402470606448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136579 (n : ℕ) : ℤ :=
  A136579.P5647402470606448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A136579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137382.P7698479652326352668

`A071973(A000040(n+2))-A071973(A000040(n+1))`
-/

namespace A137382.P7698479652326352668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (A000040 (n + 2)).toNat - A071973 (A000040 (n + 1)).toNat

end

end A137382.P7698479652326352668

noncomputable section

/-- A137382: Number of primes between Pi^(prime(n)) and Pi^(prime(n+1)).

Offset 1, canonical program `A137382.P7698479652326352668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137382 (n : ℕ) : ℤ :=
  A137382.P7698479652326352668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137735.P991700169822903993

`A000194(n+1-A384688(n))`
-/

namespace A137735.P991700169822903993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1 : ℤ) - A384688 n).toNat

end

end A137735.P991700169822903993

noncomputable section

/-- A137735: a(0)=1. a(n) = floor(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137735.P991700169822903993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735 (n : ℕ) : ℤ :=
  A137735.P991700169822903993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137893.P5279872751976216164

`1-A080846(n+1)`
-/

namespace A137893.P5279872751976216164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080846 (n + 1)

end

end A137893.P5279872751976216164

noncomputable section

/-- A137893: Fixed point of the morphism 0->100, 1->101, starting from a(1) = 1.

Offset 1, canonical program `A137893.P5279872751976216164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137893 (n : ℕ) : ℤ :=
  A137893.P5279872751976216164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137992.P6858819124335204496

`∑[A039969(n)]%3`
-/

namespace A137992.P6858819124335204496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137992.P6858819124335204496

noncomputable section

/-- A137992: A014137 (= partial sums of Catalan numbers A000108) mod 3.

Offset 0, canonical program `A137992.P6858819124335204496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137992 (n : ℕ) : ℤ :=
  A137992.P6858819124335204496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137993.P8968071889324067760

`∑[(-1)^n*A039964(n)]`
-/

namespace A137993.P8968071889324067760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A039964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137993.P8968071889324067760

noncomputable section

/-- A137993: A014138 (= partial sums of Catalan numbers starting with 1,2,5) mod 3.

Offset 0, canonical program `A137993.P8968071889324067760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137993 (n : ℕ) : ℤ :=
  A137993.P8968071889324067760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138383.P12057680443366448035

`abs(Δ[A034953(abs(1-n)+1)])`
-/

namespace A138383.P12057680443366448035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138383.P12057680443366448035

noncomputable section

/-- A138383: If prime(i) = i-th prime, a(n) = prime(n)+1 + prime(n)+2 + ... + prime(n+1). a(0) = 3 by convention.

Offset 0, canonical program `A138383.P12057680443366448035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138383 (n : ℕ) : ℤ :=
  A138383.P12057680443366448035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138412.P9166921573337738631

`A030516(n+1)-A050997(n+1)`
-/

namespace A138412.P9166921573337738631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A050997 (n + 1)

end

end A138412.P9166921573337738631

noncomputable section

/-- A138412: a(n) = p^5*(p-1) where p = prime(n).

Offset 1, canonical program `A138412.P9166921573337738631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138412 (n : ℕ) : ℤ :=
  A138412.P9166921573337738631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138416.P16017585133365700482

`A127918(n+1)-A008837(n+1)`
-/

namespace A138416.P16017585133365700482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127918 (n + 1) - A008837 (n + 1)

end

end A138416.P16017585133365700482

noncomputable section

/-- A138416: a(n) = (p^3 - p^2)/2, where p = prime(n).

Offset 1, canonical program `A138416.P16017585133365700482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138416 (n : ℕ) : ℤ :=
  A138416.P16017585133365700482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138679.P638953005839991339

`A138674(n+2)²%A000040(n+1)`
-/

namespace A138679.P638953005839991339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138674 (n + 2) ^ 2) (A000040 (n + 1))

end

end A138679.P638953005839991339

noncomputable section

/-- A138679: Prime(n)^10 mod prime(n-1).

Offset 2, canonical program `A138679.P638953005839991339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138679 (n : ℕ) : ℤ :=
  A138679.P638953005839991339.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138680.P17821806884942595706

`(A038702(n+2)*A138678(n+2))%A000040(n+1)`
-/

namespace A138680.P17821806884942595706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038702 (n + 2) * A138678 (n + 2)) (A000040 (n + 1))

end

end A138680.P17821806884942595706

noncomputable section

/-- A138680: Prime(n)^11 mod prime(n-1).

Offset 2, canonical program `A138680.P17821806884942595706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138680 (n : ℕ) : ℤ :=
  A138680.P17821806884942595706.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138681.P10355278238073095109

`A138675(n+2)²%A000040(n+1)`
-/

namespace A138681.P10355278238073095109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138675 (n + 2) ^ 2) (A000040 (n + 1))

end

end A138681.P10355278238073095109

noncomputable section

/-- A138681: Prime(n)^12 mod prime(n-1).

Offset 2, canonical program `A138681.P10355278238073095109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138681 (n : ℕ) : ℤ :=
  A138681.P10355278238073095109.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138691.P362918012422747968

`A001248(n+1)+68`
-/

namespace A138691.P362918012422747968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 68

end

end A138691.P362918012422747968

noncomputable section

/-- A138691: Numbers of the form 68+p^2 (where p is a prime).

Offset 1, canonical program `A138691.P362918012422747968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138691 (n : ℕ) : ℤ :=
  A138691.P362918012422747968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138840.P8735630634193650490

`A073729(A000040(n+1))`
-/

namespace A138840.P8735630634193650490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073729 (A000040 (n + 1)).toNat

end

end A138840.P8735630634193650490

noncomputable section

/-- A138840: Concatenation of initial and final digits of n-th prime.

Offset 1, canonical program `A138840.P8735630634193650490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138840 (n : ℕ) : ℤ :=
  A138840.P8735630634193650490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138840.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138952.P8845093039142531308

`(-1)^n*A138950(n+1)`
-/

namespace A138952.P8845093039142531308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138950 (n + 1)

end

end A138952.P8845093039142531308

noncomputable section

/-- A138952: Expansion of (eta(q^2)^7 * eta(q^3)^2 * eta(q^12) / (eta(q)^2 * eta(q^4)^3 * eta(q^6)^3) - 1) / 2 in powers of q.

Offset 1, canonical program `A138952.P8845093039142531308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138952 (n : ℕ) : ℤ :=
  A138952.P8845093039142531308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139270.P18097877948354523741

`A018252(n+1)*2`
-/

namespace A139270.P18097877948354523741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * 2

end

end A139270.P18097877948354523741

noncomputable section

/-- A139270: Twice nonprime numbers.

Offset 1, canonical program `A139270.P18097877948354523741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139270 (n : ℕ) : ℤ :=
  A139270.P18097877948354523741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139312.P310610346778643042

`floor(A065091(n+1)²/A090076(n+1))`
-/

namespace A139312.P310610346778643042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 1) ^ 2 : ℚ) / (A090076 (n + 1) : ℚ)⌋

end

end A139312.P310610346778643042

noncomputable section

/-- A139312: Characteristic function of the good primes (version 1).

Offset 2, canonical program `A139312.P310610346778643042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139312 (n : ℕ) : ℤ :=
  A139312.P310610346778643042.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139379.P15890021872242137643

`A014318(n-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A139379.P15890021872242137643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A014318 (n - 1) - a (n - 1)

end

end A139379.P15890021872242137643

noncomputable section

/-- A139379: A Jacobsthal Catalan convolution.

Offset 0, canonical program `A139379.P15890021872242137643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A139379 (n : ℕ) : ℤ :=
  A139379.P15890021872242137643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A139379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139413.P8227947109060917718

`dr(∑[A010054(n)]*A002260(n+1))`
-/

namespace A139413.P8227947109060917718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1))

end

end A139413.P8227947109060917718

noncomputable section

/-- A139413: Triangle read by rows: row n gives the numbers A010888(n*k) for k = 1..n.

Offset 1, canonical program `A139413.P8227947109060917718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139413 (n : ℕ) : ℤ :=
  (A139413.P8227947109060917718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139528.P15347248445636500749

`eq[2*n+1, A295012(2*n+1)]`
-/

namespace A139528.P15347248445636500749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P15347248445636500749

noncomputable section

/-- A139528: Numbers k such that 24*k + 11 is prime.

Offset 1, canonical program `A139528.P15347248445636500749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139528 (n : ℕ) : ℤ :=
  (A139528.P15347248445636500749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139548.P13919224620626575933

`A000079(floor(sqrt(n)))*A034870(n)`
-/

namespace A139548.P13919224620626575933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.sqrt n) * A034870 n

end

end A139548.P13919224620626575933

noncomputable section

/-- A139548: Triangle T(n,k) with the coefficient of [x^k] of the polynomial (2*(x+1)^2)^n in row n, column k, 0<=k<=2n.

Offset 0, canonical program `A139548.P13919224620626575933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139548 (n : ℕ) : ℤ :=
  A139548.P13919224620626575933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139633.P14427635210752987056

`gcd(A103406(n), A124847(n+1))`
-/

namespace A139633.P14427635210752987056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103406 n) (A124847 (n + 1))

end

end A139633.P14427635210752987056

noncomputable section

/-- A139633: Triangle read by rows: binomial transform of a diagonalized matrix of A026741.

Offset 1, canonical program `A139633.P14427635210752987056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139633 (n : ℕ) : ℤ :=
  (A139633.P14427635210752987056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139672.P16331376886917432233

`∑[A115264(n)]`
-/

namespace A139672.P16331376886917432233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P16331376886917432233

noncomputable section

/-- A139672: Convolution of A008619 and A001400.

Offset 1, canonical program `A139672.P16331376886917432233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139672 (n : ℕ) : ℤ :=
  A139672.P16331376886917432233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139848.P6895027528915671648

`∩[A139492(n+1), A139832(n+1)]`
-/

namespace A139848.P6895027528915671648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P6895027528915671648

noncomputable section

/-- A139848: Primes of the form 7x^2 + 15y^2.

Offset 1, canonical program `A139848.P6895027528915671648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139848 (n : ℕ) : ℤ :=
  (A139848.P6895027528915671648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A139848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139852.P10236531295007452952

`∩[A045382(n+1), A107133(n+1)]`
-/

namespace A139852.P10236531295007452952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P10236531295007452952

noncomputable section

/-- A139852: Primes of the form 7x^2 + 16y^2.

Offset 1, canonical program `A139852.P10236531295007452952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A139852 (n : ℕ) : ℤ :=
  (A139852.P10236531295007452952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A139852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139857.P15412644130510987931

`p?[or(4, A107137(n+1))]`
-/

namespace A139857.P15412644130510987931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107137 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139857.P15412644130510987931

noncomputable section

/-- A139857: Primes of the form 8x^2 + 15y^2.

Offset 1, canonical program `A139857.P15412644130510987931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A139857 (n : ℕ) : ℤ :=
  A139857.P15412644130510987931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A139857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139858.P3447086168202137661

`∩[A107137(n+1), A107181(n+1)]`
-/

namespace A139858.P3447086168202137661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P3447086168202137661

noncomputable section

/-- A139858: Primes of the form 8x^2+8xy+17y^2.

Offset 1, canonical program `A139858.P3447086168202137661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858 (n : ℕ) : ℤ :=
  (A139858.P3447086168202137661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139874.P13463748736922216680

`∩[A106915(n+1), A107007(n+1)]`
-/

namespace A139874.P13463748736922216680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P13463748736922216680

noncomputable section

/-- A139874: Primes of the form 3x^2 + 56y^2.

Offset 1, canonical program `A139874.P13463748736922216680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A139874 (n : ℕ) : ℤ :=
  (A139874.P13463748736922216680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. -/
def A139874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139877.P18183384045405049100

`∩[A107003(n+1), A139851(n+1)]`
-/

namespace A139877.P18183384045405049100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P18183384045405049100

noncomputable section

/-- A139877: Primes of the form 8x^2+21y^2.

Offset 1, canonical program `A139877.P18183384045405049100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139877 (n : ℕ) : ℤ :=
  (A139877.P18183384045405049100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139880.P8297169787361859027

`∩[A068228(n+1), A106915(n+1)]`
-/

namespace A139880.P8297169787361859027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P8297169787361859027

noncomputable section

/-- A139880: Primes of the form 13x^2+2xy+13y^2.

Offset 1, canonical program `A139880.P8297169787361859027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139880 (n : ℕ) : ℤ :=
  (A139880.P8297169787361859027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139902.P17311505389906131483

`∩[A107168(n+1), A139829(n+1)]`
-/

namespace A139902.P17311505389906131483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139902.P17311505389906131483

noncomputable section

/-- A139902: Primes of the form 16x^2+16xy+19y^2.

Offset 1, canonical program `A139902.P17311505389906131483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A139902 (n : ℕ) : ℤ :=
  (A139902.P17311505389906131483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A139902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139916.P4993580715478633109

`∩[A107178(n+1), A139830(n+1)]`
-/

namespace A139916.P4993580715478633109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139916.P4993580715478633109

noncomputable section

/-- A139916: Primes of the form 7x^2+40y^2.

Offset 1, canonical program `A139916.P4993580715478633109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139916 (n : ℕ) : ℤ :=
  (A139916.P4993580715478633109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139919.P16813899981993222055

`∩[A007519(n+1), A107178(n+1)]`
-/

namespace A139919.P16813899981993222055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139919.P16813899981993222055

noncomputable section

/-- A139919: Primes of the form 17x^2+6xy+17y^2.

Offset 1, canonical program `A139919.P16813899981993222055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A139919 (n : ℕ) : ℤ :=
  (A139919.P16813899981993222055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A139919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140149.P6676264140885778980

`A136047(n+1)+A140145(n+1)-A000217(n+1)`
-/

namespace A140149.P6676264140885778980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140145 (n + 1) - A000217 (n + 1))

end

end A140149.P6676264140885778980

noncomputable section

/-- A140149: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^3 if n is even.

Offset 1, canonical program `A140149.P6676264140885778980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140149 (n : ℕ) : ℤ :=
  A140149.P6676264140885778980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140150.P5080303164108488707

`A136047(n+1)+A140146(n+1)-A000217(n+1)`
-/

namespace A140150.P5080303164108488707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140146 (n + 1) - A000217 (n + 1))

end

end A140150.P5080303164108488707

noncomputable section

/-- A140150: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^4 if n is even.

Offset 1, canonical program `A140150.P5080303164108488707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140150 (n : ℕ) : ℤ :=
  A140150.P5080303164108488707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140151.P653801514374288644

`A136047(n+1)+A140147(n+1)-A000217(n+1)`
-/

namespace A140151.P653801514374288644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + (A140147 (n + 1) - A000217 (n + 1))

end

end A140151.P653801514374288644

noncomputable section

/-- A140151: a(1)=1, a(n)=a(n-1)+n^2 if n odd, a(n)=a(n-1)+ n^5 if n is even.

Offset 1, canonical program `A140151.P653801514374288644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140151 (n : ℕ) : ℤ :=
  A140151.P653801514374288644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140159.P985911684354668683

`A000330(n+1)+A140158(n+1)-A136047(n+1)`
-/

namespace A140159.P985911684354668683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A140158 (n + 1) - A136047 (n + 1))

end

end A140159.P985911684354668683

noncomputable section

/-- A140159: a(1)=1, a(n) = a(n-1) + n^4 if n odd, a(n) = a(n-1) + n^2 if n is even.

Offset 1, canonical program `A140159.P985911684354668683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140159 (n : ℕ) : ℤ :=
  A140159.P985911684354668683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140434.P96571140770797263

`A004277(n-A016035(n+1))`
-/

namespace A140434.P96571140770797263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) - A016035 (n + 1)).toNat

end

end A140434.P96571140770797263

noncomputable section

/-- A140434: Number of new visible points created at each step in an n X n grid.

Offset 1, canonical program `A140434.P96571140770797263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140434 (n : ℕ) : ℤ :=
  A140434.P96571140770797263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140442.P14828285863840832277

`A045392(n+2)`
-/

namespace A140442.P14828285863840832277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 2)

end

end A140442.P14828285863840832277

noncomputable section

/-- A140442: Primes congruent to 9 mod 14.

Offset 1, canonical program `A140442.P14828285863840832277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140442 (n : ℕ) : ℤ :=
  A140442.P14828285863840832277.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140633.P5719042277873821348

`p?[xor(6, A139832(n+1))+6]`
-/

namespace A140633.P5719042277873821348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A139832 (n + 1)) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140633.P5719042277873821348

noncomputable section

/-- A140633: Primes of the form 7x^2+4xy+52y^2.

Offset 1, canonical program `A140633.P5719042277873821348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A140633 (n : ℕ) : ℤ :=
  A140633.P5719042277873821348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A140633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140705.P9027791330258946632

`A061202(A010766(n+1))`
-/

namespace A140705.P9027791330258946632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061202 (A010766 (n + 1)).toNat

end

end A140705.P9027791330258946632

noncomputable section

/-- A140705: A000012 * A051731^4.

Offset 1, canonical program `A140705.P9027791330258946632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140705 (n : ℕ) : ℤ :=
  A140705.P9027791330258946632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140856.P9183042723212956771

`∩[A089720(n+1), A140732(n+1)]`
-/

namespace A140856.P9183042723212956771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140856.P9183042723212956771

noncomputable section

/-- A140856: Primes of the form 210n+71.

Offset 1, canonical program `A140856.P9183042723212956771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A140856 (n : ℕ) : ℤ :=
  (A140856.P9183042723212956771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A140856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141053.P15553414134495763727

`A008963(5*n+3)`
-/

namespace A141053.P15553414134495763727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (5 * n + 3)

end

end A141053.P15553414134495763727

noncomputable section

/-- A141053: Most-significant decimal digit of Fibonacci(5n+3).

Offset 0, canonical program `A141053.P15553414134495763727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A141053 (n : ℕ) : ℤ :=
  A141053.P15553414134495763727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A141053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141105.P16209607723613337592

`A109613(A019446(n+1))+A005408(n)`
-/

namespace A141105.P16209607723613337592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A019446 (n + 1)).toNat + A005408 n

end

end A141105.P16209607723613337592

noncomputable section

/-- A141105: Upper Even Swappage of Upper Wythoff Sequence.

Offset 1, canonical program `A141105.P16209607723613337592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141105 (n : ℕ) : ℤ :=
  A141105.P16209607723613337592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141223.P3003367329312781899

`A049027(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A141223.P3003367329312781899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049027 n + 4 * a (n - 1)

end

end A141223.P3003367329312781899

noncomputable section

/-- A141223: Expansion of 1/(sqrt(1-4*x)*(1-3*x*c(x))), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A141223.P3003367329312781899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A141223 (n : ℕ) : ℤ :=
  A141223.P3003367329312781899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A141223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141253.P13668534883310486471

`(n+1)*∑[A099376(abs(1-n))]`
-/

namespace A141253.P13668534883310486471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141253.P13668534883310486471

noncomputable section

/-- A141253: Number of permutations that lie in the cyclic closure of Av(132)--i.e., at least one cyclic rotation of the permutation avoids the pattern 132.

Offset 1, canonical program `A141253.P13668534883310486471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A141253 (n : ℕ) : ℤ :=
  A141253.P13668534883310486471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A141253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141274.P557557382975155527

`A018252(p?[A014692(n+1)-3]+2)`
-/

namespace A141274.P557557382975155527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A141274.P557557382975155527

noncomputable section

/-- A141274: Composite numbers k such that k+1 is prime and the index in the composites is also prime.

Offset 1, canonical program `A141274.P557557382975155527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A141274 (n : ℕ) : ℤ :=
  A141274.P557557382975155527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A141274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141396.P1544682609068793782

`A000244(A002262(n))*A001651(A004736(n+1))`
-/

namespace A141396.P1544682609068793782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A001651 (A004736 (n + 1)).toNat

end

end A141396.P1544682609068793782

noncomputable section

/-- A141396: Triangle read by rows, antidiagonals of a multiplication table: 3^n * (numbers not multiples of 3).

Offset 0, canonical program `A141396.P1544682609068793782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141396 (n : ℕ) : ℤ :=
  A141396.P1544682609068793782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141412.P1807454739439104391

`A173333(n+1)/A008275(n+1)*A140749(n)`
-/

namespace A141412.P1807454739439104391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A140749 n : ℚ)

end

end A141412.P1807454739439104391

noncomputable section

/-- A141412: Triangle c(n,k) of the denominators of coefficients [x^k] P(n,x) of the polynomials P(n,x) of A129891.

Offset 0, canonical program `A141412.P1807454739439104391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A141412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141412.P1807454739439104391.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A141412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141436.P7162572235992512063

`∪[A006450(n+1), A018252(A018252(n+1))]`
-/

namespace A141436.P7162572235992512063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141436.P7162572235992512063

noncomputable section

/-- A141436: Tisdale's sieve: generators for an infinite set of disjoint prime/nonprime sequences (see Comments for precise definition).

Offset 1, canonical program `A141436.P7162572235992512063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141436 (n : ℕ) : ℤ :=
  (A141436.P7162572235992512063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141454.P14851454927162054000

`(5-A007652(n+1))%3`
-/

namespace A141454.P14851454927162054000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - A007652 (n + 1)) 3

end

end A141454.P14851454927162054000

noncomputable section

/-- A141454: A Legendre symbol type assignment of the modulo ten primes to the polynomial: Expand[(x-1)*(x+1)*(x-2)*(x+2)*(x-0)]=4 x - 5 x^3 + x^5; c(n) = If[Mod[n, 10] == 1, 1, If[Mod[n, 10] == 9, -1, If[Mod[n, 10] == 3, 2, If[Mod[n, 10] == 7, -2, 0]]]] such that n is a prime[n].

Offset 1, canonical program `A141454.P14851454927162054000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141454 (n : ℕ) : ℤ :=
  A141454.P14851454927162054000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A141454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141543.P279450556099849721

`A130266(A061579(n))-∑[A010054(n)]`
-/

namespace A141543.P279450556099849721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141543.P279450556099849721

noncomputable section

/-- A141543: Triangle T(n,k) read by rows: T(n,2k)=k, T(n,2k+1) = k-n, for 0<=k<=n.

Offset 0, canonical program `A141543.P279450556099849721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543 (n : ℕ) : ℤ :=
  A141543.P279450556099849721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141616.P13865560224781549027

`A120070(∑[char[n²]+2])`
-/

namespace A141616.P13865560224781549027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141616.P13865560224781549027

noncomputable section

/-- A141616: Even terms in A120070.

Offset 1, canonical program `A141616.P13865560224781549027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141616 (n : ℕ) : ℤ :=
  A141616.P13865560224781549027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141620.P10826181863323884884

`Δ[A120070(n+2)]`
-/

namespace A141620.P10826181863323884884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141620.P10826181863323884884

noncomputable section

/-- A141620: First differences of A120070.

Offset 0, canonical program `A141620.P10826181863323884884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141620 (n : ℕ) : ℤ :=
  A141620.P10826181863323884884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141687.P87017313414526891

`(A116366(n+1)/2)%2`
-/

namespace A141687.P87017313414526891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A116366 (n + 1) : ℚ) / 2)) 2

end

end A141687.P87017313414526891

noncomputable section

/-- A141687: Triangle read by rows: t(n,m) = 1 - ((prime(n) - prime(m))/2 mod 2).

Offset 1, canonical program `A141687.P87017313414526891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A141687 (n : ℕ) : ℤ :=
  A141687.P87017313414526891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A141687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141689.P17765687442390039653

`round((A014473(n)+A008292(n+1))/2)`
-/

namespace A141689.P17765687442390039653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014473 n + A008292 (n + 1) : ℚ) / 2)

end

end A141689.P17765687442390039653

noncomputable section

/-- A141689: Average of Eulerian numbers (A008292) and Pascal's triangle (A007318): t(n,m) = (A008292(n,m) + A007318(n,m))/2.

Offset 1, canonical program `A141689.P17765687442390039653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A141689 (n : ℕ) : ℤ :=
  A141689.P17765687442390039653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. -/
def A141689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141696.P6177568062758844150

`2*A141690(n)-A008292(n+1)`
-/

namespace A141696.P6177568062758844150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141690 n - A008292 (n + 1)

end

end A141696.P6177568062758844150

noncomputable section

/-- A141696: Triangle read by rows, T(n, k) = ( ( 6 * Sum_{j=0..k+1} (-1)^j * binomial(n+1, j) * (k-j+1)^n ) - 4 * binomial(n-1, k) ) / 2.

Offset 1, canonical program `A141696.P6177568062758844150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A141696 (n : ℕ) : ℤ :=
  A141696.P6177568062758844150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A141696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141700.P8708006094042400397

`∑{p}[A138618(n+1), #]`
-/

namespace A141700.P8708006094042400397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A141700.P8708006094042400397

noncomputable section

/-- A141700: Triangle read by rows: A120007 interleaved with (k-1) zeros.

Offset 1, canonical program `A141700.P8708006094042400397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141700 (n : ℕ) : ℤ :=
  (A141700.P8708006094042400397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A141700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141784.P8518960646770701231

`p?[A018252(n+1)-(n+2)]`
-/

namespace A141784.P8518960646770701231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141784.P8518960646770701231

noncomputable section

/-- A141784: Primes of the form A141468(n)-n, where A141468(n)=n-th nonprime.

Offset 1, canonical program `A141784.P8518960646770701231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A141784 (n : ℕ) : ℤ :=
  A141784.P8518960646770701231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A141784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141792.P16182169028404405002

`p?[A018252(n+1)-(n+1)]`
-/

namespace A141792.P16182169028404405002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141792.P16182169028404405002

noncomputable section

/-- A141792: Primes of the form A018252(n)-n, where A018252(n)=n-th nonprime.

Offset 1, canonical program `A141792.P16182169028404405002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2787 terms. -/
def A141792 (n : ℕ) : ℤ :=
  A141792.P16182169028404405002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2787 terms. -/
def A141792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141867.P11823466263771838989

`p?[A001057(n)+A001057(A001223(2*n+1))]`
-/

namespace A141867.P11823466263771838989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + A001057 (A001223 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141867.P11823466263771838989

noncomputable section

/-- A141867: Primes of the form (k/2+p(k-1)-p(k))/2, where p(k)=k-th prime.

Offset 1, canonical program `A141867.P11823466263771838989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A141867 (n : ℕ) : ℤ :=
  A141867.P11823466263771838989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A141867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142710.P15116843330980903994

`A142585(n)+A142586(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142710.P15116843330980903994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142585 n + A142586 n

end

end A142710.P15116843330980903994

noncomputable section

/-- A142710: a(n) = A142585(n) + A142586(n).

Offset 0, canonical program `A142710.P15116843330980903994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A142710 (n : ℕ) : ℤ :=
  A142710.P15116843330980903994.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A142710.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A142789.P14610620924255852265

`∩[A107168(n+1), A141887(n+1)]`
-/

namespace A142789.P14610620924255852265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P14610620924255852265

noncomputable section

/-- A142789: Primes congruent to 19 mod 60.

Offset 1, canonical program `A142789.P14610620924255852265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A142789 (n : ℕ) : ℤ :=
  (A142789.P14610620924255852265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A142789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142882.P13423732587579757471

`A120070(3*n+2)`
-/

namespace A142882.P13423732587579757471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (3 * n + 2)

end

end A142882.P13423732587579757471

noncomputable section

/-- A142882: First trisection of A120070.

Offset 1, canonical program `A142882.P13423732587579757471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142882 (n : ℕ) : ℤ :=
  A142882.P13423732587579757471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142934.P14016541385754084313

`A091968(eq[1, and(3, A092022(n+1))]+1)`
-/

namespace A142934.P14016541385754084313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142934.P14016541385754084313

noncomputable section

/-- A142934: Primes congruent to 19 mod 64.

Offset 1, canonical program `A142934.P14016541385754084313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A142934 (n : ℕ) : ℤ :=
  A142934.P14016541385754084313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A142934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142940.P17418045244918883104

`A091968(eq[2, and(3, A092022(n+1))]+1)`
-/

namespace A142940.P17418045244918883104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142940.P17418045244918883104

noncomputable section

/-- A142940: Primes congruent to 35 mod 64.

Offset 1, canonical program `A142940.P17418045244918883104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A142940 (n : ℕ) : ℤ :=
  A142940.P17418045244918883104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. -/
def A142940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142948.P11630965134437301542

`A091968(eq[3, and(3, A092022(n+1))]+1)`
-/

namespace A142948.P11630965134437301542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142948.P11630965134437301542

noncomputable section

/-- A142948: Primes congruent to 51 mod 64.

Offset 1, canonical program `A142948.P11630965134437301542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A142948 (n : ℕ) : ℤ :=
  A142948.P11630965134437301542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A142948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143037.P245684199888480199

`∑[A004736(n+1)]-C(A004736(n+1), 3)`
-/

namespace A143037.P245684199888480199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (A004736 (n + 1)).toNat 3 : ℤ)

end

end A143037.P245684199888480199

noncomputable section

/-- A143037: Triangle read by rows, A000012 * A127773 * A000012. A000012 is an infinite lower triangular matrix with all 1's, A127773 = (1; 0,3; 0,0,6; 0,0,0,10; ...).

Offset 1, canonical program `A143037.P245684199888480199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143037 (n : ℕ) : ℤ :=
  A143037.P245684199888480199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143053.P16641876007468896160

`A143051(A143051(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143053.P16641876007468896160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A143051 n).toNat

end

end A143053.P16641876007468896160

noncomputable section

/-- A143053: a(n) = A143051(A143051(n)).

Offset 0, canonical program `A143053.P16641876007468896160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143053 (n : ℕ) : ℤ :=
  A143053.P16641876007468896160.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143090.P16008400457537948654

`A001065(A028310(a(n-1)))` with `a(0)=12`
-/

namespace A143090.P16008400457537948654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143090.P16008400457537948654

noncomputable section

/-- A143090: Aliquot sequence starting at 12.

Offset 0, canonical program `A143090.P16008400457537948654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143090 (n : ℕ) : ℤ :=
  A143090.P16008400457537948654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143200.P1078575733488683412

`(1-A014473(n))%2`
-/

namespace A143200.P1078575733488683412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A014473 n) 2

end

end A143200.P1078575733488683412

noncomputable section

/-- A143200: Triangle read by rows: T(n, k) = 1 if k = 0 or k = n, T(n, k) = -1 if ( binomial(n, k) mod 2 ) = 1, otherwise T(n, k) = 0.

Offset 0, canonical program `A143200.P1078575733488683412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143200 (n : ℕ) : ℤ :=
  A143200.P1078575733488683412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143232.P2526893967125323833

`ceil(xor(1, n)/2)+2-A080677(n+1)`
-/

namespace A143232.P2526893967125323833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ + (2 - A080677 (n + 1))

end

end A143232.P2526893967125323833

noncomputable section

/-- A143232: Sum of denominators of Egyptian fraction expansion of A004001(n) - n/2.

Offset 1, canonical program `A143232.P2526893967125323833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143232 (n : ℕ) : ℤ :=
  A143232.P2526893967125323833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143329.P17825903406367476627

`p?[A143292(n+1)]`
-/

namespace A143329.P17825903406367476627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P17825903406367476627

noncomputable section

/-- A143329: Primes in A143292.

Offset 1, canonical program `A143329.P17825903406367476627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A143329 (n : ℕ) : ℤ :=
  A143329.P17825903406367476627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A143329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143418.P1053362496203516466

`C(C(A003057(n+2), A004736(n+1)), 2)`
-/

namespace A143418.P1053362496203516466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A003057 (n + 2)).toNat (A004736 (n + 1)).toNat) 2

end

end A143418.P1053362496203516466

noncomputable section

/-- A143418: Triangle read by rows. T(n,k) = binomial(n,k)*(binomial(n,k)-1)/2.

Offset 1, canonical program `A143418.P1053362496203516466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143418 (n : ℕ) : ℤ :=
  (A143418.P1053362496203516466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143497.P17063427898058652900

`A094587(n)*A104713(n+3)`
-/

namespace A143497.P17063427898058652900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A104713 (n + 3)

end

end A143497.P17063427898058652900

noncomputable section

/-- A143497: Triangle of unsigned 2-Lah numbers.

Offset 2, canonical program `A143497.P17063427898058652900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A143497 (n : ℕ) : ℤ :=
  A143497.P17063427898058652900.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A143497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143645.P16129284712906338068

`A001065(A028310(a(n-1)))` with `a(0)=24`
-/

namespace A143645.P16129284712906338068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143645.P16129284712906338068

noncomputable section

/-- A143645: Aliquot sequence starting at 24.

Offset 0, canonical program `A143645.P16129284712906338068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143645 (n : ℕ) : ℤ :=
  A143645.P16129284712906338068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143668.P5009634550339019748

`abs(A005614(n)-(-1)^n)`
-/

namespace A143668.P5009634550339019748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005614 n - (-1) ^ n|

end

end A143668.P5009634550339019748

noncomputable section

/-- A143668: Result of the morphing 01->01021212, 02->0102121201, 12->01021201, iterated from '01'. Sequence of the Fibonacci word fractal.

Offset 1, canonical program `A143668.P5009634550339019748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143668 (n : ℕ) : ℤ :=
  A143668.P5009634550339019748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143721.P7011217225613206170

`A001065(A028310(a(n-1)))` with `a(0)=38`
-/

namespace A143721.P7011217225613206170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [38] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143721.P7011217225613206170

noncomputable section

/-- A143721: Aliquot sequence starting at 38.

Offset 0, canonical program `A143721.P7011217225613206170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143721 (n : ℕ) : ℤ :=
  A143721.P7011217225613206170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143722.P17896220060263114756

`A001065(A028310(a(n-1)))` with `a(0)=48`
-/

namespace A143722.P17896220060263114756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [48] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143722.P17896220060263114756

noncomputable section

/-- A143722: Aliquot sequence starting at 48.

Offset 0, canonical program `A143722.P17896220060263114756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143722 (n : ℕ) : ℤ :=
  A143722.P17896220060263114756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143733.P14942451708713840128

`A001065(A028310(a(n-1)))` with `a(0)=62`
-/

namespace A143733.P14942451708713840128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [62] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143733.P14942451708713840128

noncomputable section

/-- A143733: Aliquot sequence starting at 62.

Offset 0, canonical program `A143733.P14942451708713840128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143733 (n : ℕ) : ℤ :=
  A143733.P14942451708713840128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143737.P5154442546781460554

`A001065(A028310(a(n-1)))` with `a(0)=68`
-/

namespace A143737.P5154442546781460554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [68] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143737.P5154442546781460554

noncomputable section

/-- A143737: Aliquot sequence starting at 68.

Offset 0, canonical program `A143737.P5154442546781460554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143737 (n : ℕ) : ℤ :=
  A143737.P5154442546781460554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143741.P8770090365676448905

`A001065(A028310(a(n-1)))` with `a(0)=72`
-/

namespace A143741.P8770090365676448905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143741.P8770090365676448905

noncomputable section

/-- A143741: Aliquot sequence starting at 72.

Offset 0, canonical program `A143741.P8770090365676448905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143741 (n : ℕ) : ℤ :=
  A143741.P8770090365676448905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143754.P2508071916945020361

`A001065(A028310(a(n-1)))` with `a(0)=75`
-/

namespace A143754.P2508071916945020361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [75] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143754.P2508071916945020361

noncomputable section

/-- A143754: Aliquot sequence starting at 75.

Offset 0, canonical program `A143754.P2508071916945020361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143754 (n : ℕ) : ℤ :=
  A143754.P2508071916945020361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143755.P1843957366251075047

`A001065(A028310(a(n-1)))` with `a(0)=80`
-/

namespace A143755.P1843957366251075047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143755.P1843957366251075047

noncomputable section

/-- A143755: Aliquot sequence starting at 80.

Offset 0, canonical program `A143755.P1843957366251075047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143755 (n : ℕ) : ℤ :=
  A143755.P1843957366251075047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143757.P11374647760075091587

`A001065(A028310(a(n-1)))` with `a(0)=82`
-/

namespace A143757.P11374647760075091587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143757.P11374647760075091587

noncomputable section

/-- A143757: Aliquot sequence starting at 82.

Offset 0, canonical program `A143757.P11374647760075091587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143757 (n : ℕ) : ℤ :=
  A143757.P11374647760075091587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143758.P5003512289083084374

`A001065(A028310(a(n-1)))` with `a(0)=84`
-/

namespace A143758.P5003512289083084374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [84] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143758.P5003512289083084374

noncomputable section

/-- A143758: Aliquot sequence starting at 84.

Offset 0, canonical program `A143758.P5003512289083084374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143758 (n : ℕ) : ℤ :=
  A143758.P5003512289083084374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143767.P13231538878095060477

`A001065(A028310(a(n-1)))` with `a(0)=87`
-/

namespace A143767.P13231538878095060477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [87] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143767.P13231538878095060477

noncomputable section

/-- A143767: Aliquot sequence starting at 87.

Offset 0, canonical program `A143767.P13231538878095060477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143767 (n : ℕ) : ℤ :=
  A143767.P13231538878095060477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143846.P9170851586254703169

`A001065(A028310(a(n-1)))` with `a(0)=88`
-/

namespace A143846.P9170851586254703169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [88] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143846.P9170851586254703169

noncomputable section

/-- A143846: Aliquot sequence starting at 88.

Offset 0, canonical program `A143846.P9170851586254703169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143846 (n : ℕ) : ℤ :=
  A143846.P9170851586254703169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143847.P819203088057460504

`A001065(A028310(a(n-1)))` with `a(0)=96`
-/

namespace A143847.P819203088057460504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [96] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A143847.P819203088057460504

noncomputable section

/-- A143847: Aliquot sequence starting at 96.

Offset 0, canonical program `A143847.P819203088057460504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143847 (n : ℕ) : ℤ :=
  A143847.P819203088057460504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143929.P90318685514600081

`A004736(n+1)*A088305(A002262(n))`
-/

namespace A143929.P90318685514600081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A088305 (A002262 n).toNat

end

end A143929.P90318685514600081

noncomputable section

/-- A143929: Eigentriangle by rows, termwise products of the natural numbers decrescendo and the bisected Fibonacci series.

Offset 1, canonical program `A143929.P90318685514600081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143929 (n : ℕ) : ℤ :=
  A143929.P90318685514600081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143955.P2620701624282528188

`A000245(n)-A014138(n)`
-/

namespace A143955.P2620701624282528188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A014138 n

end

end A143955.P2620701624282528188

noncomputable section

/-- A143955: Sum of the altitudes of the leftmost valleys of all Dyck paths of semilength n (if path has no valley, then this altitude is taken to be 0).

Offset 0, canonical program `A143955.P2620701624282528188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955 (n : ℕ) : ℤ :=
  A143955.P2620701624282528188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144001.P7449045138667428568

`A003991(n+1)-A144000(n+1)`
-/

namespace A144001.P7449045138667428568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A144000 (n + 1)

end

end A144001.P7449045138667428568

noncomputable section

/-- A144001: Rectangular array read by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which x + y == 0 (mod 3); then R(m,n) is the number of unmarked squares in the rectangle [0,m] X [0,n].

Offset 1, canonical program `A144001.P7449045138667428568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144001 (n : ℕ) : ℤ :=
  A144001.P7449045138667428568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144113.P8996339345414942979

`A144112(A038722(n+1))`
-/

namespace A144113.P8996339345414942979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A038722 (n + 1)).toNat

end

end A144113.P8996339345414942979

noncomputable section

/-- A144113: Weight array W={w(i,j)} of the natural number array A038722.

Offset 1, canonical program `A144113.P8996339345414942979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144113 (n : ℕ) : ℤ :=
  A144113.P8996339345414942979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144225.P8396101801530063706

`A097805(n)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A144225.P8396101801530063706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A097805 n - a (n - 1)

end

end A144225.P8396101801530063706

noncomputable section

/-- A144225: Bordered Pascal's triangle in rectangular format.

Offset 1, canonical program `A144225.P8396101801530063706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144225 (n : ℕ) : ℤ :=
  A144225.P8396101801530063706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144408.P12771811640547746423

`A135266(n)%10`
-/

namespace A144408.P12771811640547746423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135266 n) 10

end

end A144408.P12771811640547746423

noncomputable section

/-- A144408: Last digit of A135266(n).

Offset 0, canonical program `A144408.P12771811640547746423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A144408 (n : ℕ) : ℤ :=
  A144408.P12771811640547746423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A144408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144816.P2801218708024354472

`A046161(A002262(n))*A046161(A025581(n))`
-/

namespace A144816.P2801218708024354472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A002262 n).toNat * A046161 (A025581 n).toNat

end

end A144816.P2801218708024354472

noncomputable section

/-- A144816: Denominators of triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the coefficient of x^(2*k+1) in polynomial t_n(x), used to define continuous and n times differentiable sigmoidal transfer functions.

Offset 0, canonical program `A144816.P2801218708024354472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144816 (n : ℕ) : ℤ :=
  A144816.P2801218708024354472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144943.P9912739384439111059

`A048785(n+1)+A000007(n)-2`
-/

namespace A144943.P9912739384439111059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) + (A000007 n - 2)

end

end A144943.P9912739384439111059

noncomputable section

/-- A144943: a(n) = number of divisors of n^3 (excluding 1 and n^3).

Offset 1, canonical program `A144943.P9912739384439111059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144943 (n : ℕ) : ℤ :=
  A144943.P9912739384439111059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144944.P9640827706144714788

`A033878(n)+a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A144944.P9640827706144714788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033878 n + Int.tmod (a (n - 2)) (a (n - 1))

end

end A144944.P9640827706144714788

noncomputable section

/-- A144944: Super-Catalan triangle (read by rows) = triangular array associated with little Schroeder numbers (read by rows): T(0,0)=1, T(p,q) = T(p,q-1) if 0 < p = q, T(p,q) = T(p,q-1) + T(p-1,q) + T(p-1,q-1) if -1 < p < q and T(p,q) = 0 otherwise.

Offset 0, canonical program `A144944.P9640827706144714788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A144944 (n : ℕ) : ℤ :=
  A144944.P9640827706144714788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A144944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145017.P13290880054075597946

`record[A007913(n+1)/A007913(A071797(n+1))]`
-/

namespace A145017.P13290880054075597946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A007913 (A071797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P13290880054075597946

noncomputable section

/-- A145017: Squarefree positive integers k for which k-(floor(sqrt(k)))^2 is a perfect square.

Offset 1, canonical program `A145017.P13290880054075597946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A145017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145017.P13290880054075597946.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A145017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145117.P14926614837438717936

`∑[∑[A104144(n+7)]]+1`
-/

namespace A145117.P14926614837438717936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A145117.P14926614837438717936

noncomputable section

/-- A145117: Numbers of length n binary words with fewer than 9 0-digits between any pair of consecutive 1-digits.

Offset 0, canonical program `A145117.P14926614837438717936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A145117 (n : ℕ) : ℤ :=
  A145117.P14926614837438717936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A145117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145353.P8451049038095436919

`∑[A049419(n+1)]`
-/

namespace A145353.P8451049038095436919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145353.P8451049038095436919

noncomputable section

/-- A145353: Sum of the number of e-divisors of all numbers from 1 up to n.

Offset 1, canonical program `A145353.P8451049038095436919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145353 (n : ℕ) : ℤ :=
  A145353.P8451049038095436919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145382.P14950422092557236085

`A080079(p?[xor(1, n)+1])-1`
-/

namespace A145382.P14950422092557236085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A145382.P14950422092557236085

noncomputable section

/-- A145382: Write the n-th prime in binary. Change all 0's to 1's and all 1's to 0's. a(n) is the decimal equivalent of the result.

Offset 1, canonical program `A145382.P14950422092557236085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145382 (n : ℕ) : ℤ :=
  A145382.P14950422092557236085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145471.P5456915067997334848

`p?[a(n-1)+2*A001223(n+1)]` with `a(0)=1`
-/

namespace A145471.P5456915067997334848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P5456915067997334848

noncomputable section

/-- A145471: Primes p such that (5+p)/2 is prime.

Offset 1, canonical program `A145471.P5456915067997334848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5803 terms. -/
def A145471 (n : ℕ) : ℤ :=
  A145471.P5456915067997334848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5803 terms. -/
def A145471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145472.P4180650491768818475

`p?[A100484(n+1)-7]`
-/

namespace A145472.P4180650491768818475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P4180650491768818475

noncomputable section

/-- A145472: Primes p such that (p+7)/2 is prime.

Offset 1, canonical program `A145472.P4180650491768818475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A145472 (n : ℕ) : ℤ :=
  A145472.P4180650491768818475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. -/
def A145472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145473.P9926158279256282826

`p?[A100484(n+1)-11]`
-/

namespace A145473.P9926158279256282826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P9926158279256282826

noncomputable section

/-- A145473: Primes p such that (11 + p)/2 is prime.

Offset 1, canonical program `A145473.P9926158279256282826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A145473 (n : ℕ) : ℤ :=
  A145473.P9926158279256282826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. -/
def A145473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145475.P16725095266388124518

`p?[A100484(n+1)-17]`
-/

namespace A145475.P16725095266388124518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P16725095266388124518

noncomputable section

/-- A145475: Primes p such that (17+p)/2 is prime.

Offset 1, canonical program `A145475.P16725095266388124518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A145475 (n : ℕ) : ℤ :=
  A145475.P16725095266388124518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A145475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145477.P7650776150596688372

`p?[2*A006093(n+1)-21]`
-/

namespace A145477.P7650776150596688372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P7650776150596688372

noncomputable section

/-- A145477: Primes p such that (23 + p)/2 is prime.

Offset 1, canonical program `A145477.P7650776150596688372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1283 terms. -/
def A145477 (n : ℕ) : ℤ :=
  A145477.P7650776150596688372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1283 terms. -/
def A145477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145610.P553506621032330798

`A002805(2*(n+1))`
-/

namespace A145610.P553506621032330798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (2 * (n + 1))

end

end A145610.P553506621032330798

noncomputable section

/-- A145610: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

Offset 1, canonical program `A145610.P553506621032330798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610 (n : ℕ) : ℤ :=
  A145610.P553506621032330798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145907.P71648537022638446

`p?[A133280(A102781(n+1))]`
-/

namespace A145907.P71648537022638446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P71648537022638446

noncomputable section

/-- A145907: Primes p such that p + ceiling(sqrt(p)) is also prime.

Offset 1, canonical program `A145907.P71648537022638446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A145907 (n : ℕ) : ℤ :=
  A145907.P71648537022638446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A145907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145909.P5620417034163878499

`8*A145911(n)`
-/

namespace A145909.P5620417034163878499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A145911 n

end

end A145909.P5620417034163878499

noncomputable section

/-- A145909: First 6-fold decimation of A061039. First bisection of A144454.

Offset 0, canonical program `A145909.P5620417034163878499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145909 (n : ℕ) : ℤ :=
  A145909.P5620417034163878499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146533.P16673604564613569017

`A029651(n)+A144706(n)-A000984(n)`
-/

namespace A146533.P16673604564613569017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n + (A144706 n - A000984 n)

end

end A146533.P16673604564613569017

noncomputable section

/-- A146533: Catalan transform of A135092.

Offset 0, canonical program `A146533.P16673604564613569017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A146533 (n : ℕ) : ℤ :=
  A146533.P16673604564613569017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A146533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147582.P8026772899085515765

`floor(12*A048883(n)/9)`
-/

namespace A147582.P8026772899085515765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * A048883 n : ℚ) / 9⌋

end

end A147582.P8026772899085515765

noncomputable section

/-- A147582: First differences of A147562.

Offset 1, canonical program `A147582.P8026772899085515765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147582 (n : ℕ) : ℤ :=
  A147582.P8026772899085515765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147630.P14535170275121298868

`(n+1)!*A097188(n)`
-/

namespace A147630.P14535170275121298868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A097188 n

end

end A147630.P14535170275121298868

noncomputable section

/-- A147630: a(n) = Product_{k = 1..n-1} (9*k - 3).

Offset 1, canonical program `A147630.P14535170275121298868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147630 (n : ℕ) : ℤ :=
  A147630.P14535170275121298868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147661.P789511450984016641

`A007913(C(or(1, n), n))`
-/

namespace A147661.P789511450984016641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.choose (Nat.lor 1 n) n)

end

end A147661.P789511450984016641

noncomputable section

/-- A147661: a(n) = squarefree part of n^n.

Offset 1, canonical program `A147661.P789511450984016641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147661 (n : ℕ) : ℤ :=
  A147661.P789511450984016641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147757.P12480497626968793521

`A000533(n)+∑[A011557(n)]-A138144(n+1)`
-/

namespace A147757.P12480497626968793521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n + (∑ j ∈ Finset.range (n + 1), f1 j - A138144 (n + 1))

end

end A147757.P12480497626968793521

noncomputable section

/-- A147757: Palindromes formed from the reflected decimal expansion of the concatenation of 1, 0 and infinite digits 1.

Offset 1, canonical program `A147757.P12480497626968793521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A147757 (n : ℕ) : ℤ :=
  A147757.P12480497626968793521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A147757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147760.P15763218434351887986

`(n+2)*A060818(n+1)-1`
-/

namespace A147760.P15763218434351887986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060818 (n + 1) - 1

end

end A147760.P15763218434351887986

noncomputable section

/-- A147760: a(n) is the smallest positive integer m with exactly n ones in its binary representation and with n represented in binary as a substring of the binary representation of m.

Offset 1, canonical program `A147760.P15763218434351887986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A147760 (n : ℕ) : ℤ :=
  A147760.P15763218434351887986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A147760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147812.P3936914708627381155

`A065091(lt[A001223(n+2), A001223(n+1)])`
-/

namespace A147812.P3936914708627381155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147812.P3936914708627381155

noncomputable section

/-- A147812: Primes prime(n) such that prime(n+1) - prime(n) > prime(n+2) - prime(n+1).

Offset 1, canonical program `A147812.P3936914708627381155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4749 terms. -/
def A147812 (n : ℕ) : ℤ :=
  A147812.P3936914708627381155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4749 terms. -/
def A147812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147991.P1055187431059900303

`A137951(n)+1`
-/

namespace A147991.P1055187431059900303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137951 n + 1

end

end A147991.P1055187431059900303

noncomputable section

/-- A147991: Sequence S such that 1 is in S and if x is in S, then 3x-1 and 3x+1 are in S.

Offset 1, canonical program `A147991.P1055187431059900303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147991 (n : ℕ) : ℤ :=
  A147991.P1055187431059900303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147996.P1933238142574789408

`A001019(n)-A001555(n)`
-/

namespace A147996.P1933238142574789408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - A001555 n

end

end A147996.P1933238142574789408

noncomputable section

/-- A147996: a(n) = 9^n-8^n-7^n-6^n-5^n-4^n-3^n-2^n-1.

Offset 1, canonical program `A147996.P1933238142574789408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A147996 (n : ℕ) : ℤ :=
  A147996.P1933238142574789408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A147996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151667.P15819438536939067945

`char[A033042(n)]`
-/

namespace A151667.P15819438536939067945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151667.P15819438536939067945

noncomputable section

/-- A151667: Number of partitions of n into distinct powers of 5.

Offset 0, canonical program `A151667.P15819438536939067945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151667 (n : ℕ) : ℤ :=
  (A151667.P15819438536939067945.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151779.P14955371846823112406

`A003948(A000120(n))`
-/

namespace A151779.P14955371846823112406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (A000120 n).toNat

end

end A151779.P14955371846823112406

noncomputable section

/-- A151779: a(1)=1; for n > 1, a(n)=6*5^{wt(n-1)-1}.

Offset 1, canonical program `A151779.P14955371846823112406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151779 (n : ℕ) : ℤ :=
  A151779.P14955371846823112406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151792.P3133912318885071183

`∑[A151791(n+1)]`
-/

namespace A151792.P3133912318885071183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151792.P3133912318885071183

noncomputable section

/-- A151792: Partial sums of A151791.

Offset 1, canonical program `A151792.P3133912318885071183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151792 (n : ℕ) : ℤ :=
  A151792.P3133912318885071183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151793.P2092265182392595412

`∑[A151782(n+1)]`
-/

namespace A151793.P2092265182392595412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151793.P2092265182392595412

noncomputable section

/-- A151793: Partial sums of A151782.

Offset 1, canonical program `A151793.P2092265182392595412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151793 (n : ℕ) : ℤ :=
  A151793.P2092265182392595412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151902.P9395804359895518622

`A000120(floor(2*n/3))`
-/

namespace A151902.P9395804359895518622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A151902.P9395804359895518622

noncomputable section

/-- A151902: a(n) = wt(k) + f(j) if n = 6k+j, 0 <= j < 6, where wt() = A000120(), f() = A151899().

Offset 0, canonical program `A151902.P9395804359895518622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151902 (n : ℕ) : ℤ :=
  A151902.P9395804359895518622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151922.P1912274686757086494

`A079316(2*n)`
-/

namespace A151922.P1912274686757086494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079316 (2 * n)

end

end A151922.P1912274686757086494

noncomputable section

/-- A151922: Number of first-quadrant cells (including the two boundaries) that are "ON" after n-th stage of the Holladay-Ulam cellular automaton.

Offset 0, canonical program `A151922.P1912274686757086494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151922 (n : ℕ) : ℤ :=
  A151922.P1912274686757086494.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151923.P3934618073960995862

`A079316(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151923.P3934618073960995862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079316 (2 * n + 1)

end

end A151923.P3934618073960995862

noncomputable section

/-- A151923: a(n) = A079316(2n+1).

Offset 0, canonical program `A151923.P3934618073960995862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151923 (n : ℕ) : ℤ :=
  A151923.P3934618073960995862.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152084.P18358934088096042135

`p?[A006165(A045344(n+1))]`
-/

namespace A152084.P18358934088096042135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A045344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P18358934088096042135

noncomputable section

/-- A152084: Primes p such that p + 2^floor(log_2(p)) is prime.

Offset 1, canonical program `A152084.P18358934088096042135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A152084 (n : ℕ) : ℤ :=
  A152084.P18358934088096042135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A152084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152204.P767689205357383764

`2*A082375(n)+1`
-/

namespace A152204.P767689205357383764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082375 n + 1

end

end A152204.P767689205357383764

noncomputable section

/-- A152204: Triangle read by rows: T(n,k) = 2*n-4*k+5 (n >= 0, 1 <= k <= 1+floor(n/2)).

Offset 0, canonical program `A152204.P767689205357383764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152204 (n : ℕ) : ℤ :=
  A152204.P767689205357383764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152420.P2270128080283716414

`(1-A080883(n))*(3-A071797(n+1))`
-/

namespace A152420.P2270128080283716414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080883 n) * (3 - A071797 (n + 1))

end

end A152420.P2270128080283716414

noncomputable section

/-- A152420: Irregular triangle read by rows: T(n,k) = n*(n-2) - (k-n)*(k-n-2), with 0 <= k <= 2*n.

Offset 0, canonical program `A152420.P2270128080283716414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152420 (n : ℕ) : ℤ :=
  A152420.P2270128080283716414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152568.P4268834110349744832

`Δ[A034008(A004736(abs(1-n)+1))]`
-/

namespace A152568.P4268834110349744832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004736 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P4268834110349744832

noncomputable section

/-- A152568: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 2^(n - 1), T(n,k) = -2^(n - k - 1), 1 <= k <= n - 1.

Offset 0, canonical program `A152568.P4268834110349744832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152568 (n : ℕ) : ℤ :=
  A152568.P4268834110349744832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152670.P12437644103347504857

`A000108(A062289(n+1))`
-/

namespace A152670.P12437644103347504857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A062289 (n + 1)).toNat

end

end A152670.P12437644103347504857

noncomputable section

/-- A152670: Even Catalan numbers.

Offset 1, canonical program `A152670.P12437644103347504857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152670 (n : ℕ) : ℤ :=
  A152670.P12437644103347504857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152678.P16261350358217221362

`A000203(A028983(n+1))`
-/

namespace A152678.P16261350358217221362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028983 (n + 1)).toNat

end

end A152678.P16261350358217221362

noncomputable section

/-- A152678: Even members of A000203.

Offset 1, canonical program `A152678.P16261350358217221362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152678 (n : ℕ) : ℤ :=
  A152678.P16261350358217221362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028983, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152753.P13521144537100370814

`lcm(2, A152669(A062289(n+1)))`
-/

namespace A152753.P13521144537100370814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152669 (A062289 (n + 1)).toNat)

end

end A152753.P13521144537100370814

noncomputable section

/-- A152753: Last digit of even Catalan number A152670(n).

Offset 1, canonical program `A152753.P13521144537100370814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A152753 (n : ℕ) : ℤ :=
  (A152753.P13521144537100370814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A152753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152881.P17251037129773782981

`A067988(n)-A001629(n+2)`
-/

namespace A152881.P17251037129773782981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067988 n - A001629 (n + 2)

end

end A152881.P17251037129773782981

noncomputable section

/-- A152881: Positions of those 1's that are followed by a 0, summed over all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

Offset 1, canonical program `A152881.P17251037129773782981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A152881 (n : ℕ) : ℤ :=
  A152881.P17251037129773782981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A152881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152907.P2636118499686291148

`A152905(floor(n/2))`
-/

namespace A152907.P2636118499686291148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 ⌊(n : ℚ) / 2⌋.toNat

end

end A152907.P2636118499686291148

noncomputable section

/-- A152907: Irregular triangle read by rows, numbers in A007318 repeated four times .

Offset 0, canonical program `A152907.P2636118499686291148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152907 (n : ℕ) : ℤ :=
  A152907.P2636118499686291148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152928.P14754759326661192641

`A005248(n+2)²+A001906(n+3)²`
-/

namespace A152928.P14754759326661192641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 2) ^ 2 + A001906 (n + 3) ^ 2

end

end A152928.P14754759326661192641

noncomputable section

/-- A152928: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of two m-gonal polygonal components chained with string components of length 1 as m varies.

Offset 2, canonical program `A152928.P14754759326661192641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A152928 (n : ℕ) : ℤ :=
  A152928.P14754759326661192641.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A152928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153081.P13540850000672631907

`A101448(n+2)-1`
-/

namespace A153081.P13540850000672631907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 2) - 1

end

end A153081.P13540850000672631907

noncomputable section

/-- A153081: Nonnegative numbers k such that 2k + 13 is prime.

Offset 1, canonical program `A153081.P13540850000672631907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153081 (n : ℕ) : ℤ :=
  A153081.P13540850000672631907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A153081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153129.P13567585466040387804

`comp[A105133(n+1)]`
-/

namespace A153129.P13567585466040387804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153129.P13567585466040387804

noncomputable section

/-- A153129: Numbers n such that 8*n + 5 is not prime.

Offset 1, canonical program `A153129.P13567585466040387804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153129 (n : ℕ) : ℤ :=
  (A153129.P13567585466040387804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153134.P3803390437604555717

`A024898(n+1)+1`
-/

namespace A153134.P3803390437604555717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) + 1

end

end A153134.P3803390437604555717

noncomputable section

/-- A153134: Numbers k such that 6k - 7 is prime.

Offset 1, canonical program `A153134.P3803390437604555717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153134 (n : ℕ) : ℤ :=
  A153134.P3803390437604555717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153142.P15201218157463627631

`A087734(n)+A003188(n-A087734(n))`
-/

namespace A153142.P15201218157463627631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n + A003188 ((n : ℤ) - A087734 n).toNat

end

end A153142.P15201218157463627631

noncomputable section

/-- A153142: Permutation of nonnegative integers: A059893-conjugate of A153152.

Offset 0, canonical program `A153142.P15201218157463627631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153142 (n : ℕ) : ℤ :=
  A153142.P15201218157463627631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153153.P13380444019182590244

`or(A038554(2*n+1), A053644(n))`
-/

namespace A153153.P13380444019182590244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038554 (2 * n + 1)) (A053644 n)

end

end A153153.P13380444019182590244

noncomputable section

/-- A153153: Permutation of natural numbers: A059893-conjugate of A003188.

Offset 0, canonical program `A153153.P13380444019182590244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153153 (n : ℕ) : ℤ :=
  A153153.P13380444019182590244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153235.P14619884982715841541

`lt[n+1, A258835(n)]`
-/

namespace A153235.P14619884982715841541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P14619884982715841541

noncomputable section

/-- A153235: Numbers n such that 8*n+7 is not prime.

Offset 1, canonical program `A153235.P14619884982715841541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153235 (n : ℕ) : ℤ :=
  (A153235.P14619884982715841541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153267.P6837733007436105427

`A000032(2*(n+1))-A009117(n+2)`
-/

namespace A153267.P6837733007436105427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) - A009117 (n + 2)

end

end A153267.P6837733007436105427

noncomputable section

/-- A153267: a(n) = -4*a(n-3) + 11*a(n-2) - a(n-1), a(0) = -5, a(1) = 39, a(2) = -110.

Offset 0, canonical program `A153267.P6837733007436105427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A153267 (n : ℕ) : ℤ :=
  A153267.P6837733007436105427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A153267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153281.P9058196011063740068

`A104763(n+1)*A130321(n)`
-/

namespace A153281.P9058196011063740068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A130321 n

end

end A153281.P9058196011063740068

noncomputable section

/-- A153281: Triangle read by rows, A130321 * A127647. Also, number of subsets of [n+2] with consecutive integers that start at k.

Offset 0, canonical program `A153281.P9058196011063740068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153281 (n : ℕ) : ℤ :=
  A153281.P9058196011063740068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153317.P12265112891409764898

`A010686(n)*A041049(n)`
-/

namespace A153317.P12265112891409764898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n * A041049 n

end

end A153317.P12265112891409764898

noncomputable section

/-- A153317: Denominators of continued fraction convergents to sqrt(6/5).

Offset 0, canonical program `A153317.P12265112891409764898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A153317 (n : ℕ) : ℤ :=
  A153317.P12265112891409764898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A153317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153347.P13382014231303859893

`comp[A089033(n+1)]+1`
-/

namespace A153347.P13382014231303859893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153347.P13382014231303859893

noncomputable section

/-- A153347: Numbers n>0 such that 7*n-4 is not prime.

Offset 1, canonical program `A153347.P13382014231303859893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153347 (n : ℕ) : ℤ :=
  (A153347.P13382014231303859893.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153347.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154809.P10885830400059510628

`lt[1, A055945(n)²+1]`
-/

namespace A154809.P10885830400059510628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154809.P10885830400059510628

noncomputable section

/-- A154809: Numbers whose binary expansion is not palindromic.

Offset 1, canonical program `A154809.P10885830400059510628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154809 (n : ℕ) : ℤ :=
  (A154809.P10885830400059510628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154809.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157528.P869269647061177937

`A004277(A004247(n))`
-/

namespace A157528.P869269647061177937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004247 n).toNat

end

end A157528.P869269647061177937

noncomputable section

/-- A157528: Triangle read by rows: T(n, k) = 2*k*(n - k) with T(n, 0) = T(n, n) = 1.

Offset 0, canonical program `A157528.P869269647061177937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157528 (n : ℕ) : ℤ :=
  A157528.P869269647061177937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157528.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157633.P6196470863883295893

`A176286(n)-A057427(A004247(n))`
-/

namespace A157633.P6196470863883295893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n - A057427 (A004247 n).toNat

end

end A157633.P6196470863883295893

noncomputable section

/-- A157633: Triangle T(n,m) read rows: 1 in column m=0 and on the diagonal, 2*m*(n-m)*(m^2-n*m+2*n^2) otherwise.

Offset 0, canonical program `A157633.P6196470863883295893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A157633 (n : ℕ) : ℤ :=
  A157633.P6196470863883295893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A157633.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158495.P10891886949087608278

`A158499(n)-A155559(n)`
-/

namespace A158495.P10891886949087608278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n - A155559 n

end

end A158495.P10891886949087608278

noncomputable section

/-- A158495: Expansion of ((1-4*x) + sqrt(1-4*x))/(2*(1-2*x)).

Offset 0, canonical program `A158495.P10891886949087608278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A158495 (n : ℕ) : ℤ :=
  A158495.P10891886949087608278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A158495.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A158893: Triangle read by rows: T(n,1)=7n-6; T(n,m)= 1+n-m, 1

Offset 1, canonical program `A158893.P14217373209629324848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158893 (n : ℕ) : ℤ :=
  A158893.P14217373209629324848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158893.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A159342.P4932538038691876782

`A181984(n)+A159349(n)`
-/

namespace A159342.P4932538038691876782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159349 n

end

end A159342.P4932538038691876782

noncomputable section

/-- A159342: Transform of the finite sequence (1, 0, -1, 0, 1, 0, -1) by the T_{0,1} transform (see link).

Offset 0, canonical program `A159342.P4932538038691876782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159342 (n : ℕ) : ℤ :=
  A159342.P4932538038691876782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A159342.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160588.P1469078919604768349

`A004524(A053641(n+2))`
-/

namespace A160588.P1469078919604768349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A053641 (n + 2)).toNat

end

end A160588.P1469078919604768349

noncomputable section

/-- A160588: Interleaving of A053645 and A000027.

Offset 0, canonical program `A160588.P1469078919604768349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160588 (n : ℕ) : ℤ :=
  A160588.P1469078919604768349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160588.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161602.P6450540273462134984

`lt[0, A055945(n)]`
-/

namespace A161602.P6450540273462134984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161602.P6450540273462134984

noncomputable section

/-- A161602: Positive integers k that are greater than the value of the reversal of k's binary representation.

Offset 1, canonical program `A161602.P6450540273462134984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161602 (n : ℕ) : ℤ :=
  (A161602.P6450540273462134984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161607.P5708958967834932712

`eq[1, gcd(n, A055945(n))]`
-/

namespace A161607.P5708958967834932712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A055945 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161607.P5708958967834932712

noncomputable section

/-- A161607: Positive integers k that are coprime to the value of the reversal of k's representation in binary.

Offset 1, canonical program `A161607.P5708958967834932712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8899 terms. -/
def A161607 (n : ℕ) : ℤ :=
  (A161607.P5708958967834932712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8899 terms. -/
def A161607.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161782.P15101117424861432951

`A000217(A031131(n+1))-A000217(A046933(n+1))`
-/

namespace A161782.P15101117424861432951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A031131 (n + 1)).toNat - A000217 (A046933 (n + 1)).toNat

end

end A161782.P15101117424861432951

noncomputable section

/-- A161782: a(n) = sum of all numbers from and including (prime(n+1)-prime(n)) to and including (prime(n+2)-prime(n).)

Offset 1, canonical program `A161782.P15101117424861432951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161782 (n : ℕ) : ℤ :=
  A161782.P15101117424861432951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161788.P11266253725805918745

`A003817(∑{d}[n+1, A135416(#)])`
-/

namespace A161788.P11266253725805918745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (∑ d ∈ Nat.divisors (f1 n), A135416 d).toNat

end

end A161788.P11266253725805918745

noncomputable section

/-- A161788: a(n) is the largest integer of the form 2^k - 1 that divides n.

Offset 1, canonical program `A161788.P11266253725805918745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A161788 (n : ℕ) : ℤ :=
  A161788.P11266253725805918745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A161788.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A163508.P3710448584942683645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163508 (n : ℕ) : ℤ :=
  A163508.P3710448584942683645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163508.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163844.P3622098309337509437

`A026375(n+1)-A000984(n+1)`
-/

namespace A163844.P3622098309337509437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - A000984 (n + 1)

end

end A163844.P3622098309337509437

noncomputable section

/-- A163844: Row sums of triangle A163841.

Offset 0, canonical program `A163844.P3622098309337509437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A163844 (n : ℕ) : ℤ :=
  A163844.P3622098309337509437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A163844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163872.P13171049366053346656

`A132894(n+1)+A132894(n)`
-/

namespace A163872.P13171049366053346656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 (n + 1) + A132894 n

end

end A163872.P13171049366053346656

noncomputable section

/-- A163872: Inverse binomial transform of the beta numbers 1/beta(n+1,n+1) (A002457).

Offset 0, canonical program `A163872.P13171049366053346656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A163872 (n : ℕ) : ℤ :=
  A163872.P13171049366053346656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A163872.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A164416.P2577009813336469056

`A164391(n+4)-A164391(n)`
-/

namespace A164416.P2577009813336469056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164391 (n + 4) - A164391 n

end

end A164416.P2577009813336469056

noncomputable section

/-- A164416: Number of binary strings of length n with no substrings equal to 0000 0001 or 1111.

Offset 4, canonical program `A164416.P2577009813336469056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A164416 (n : ℕ) : ℤ :=
  A164416.P2577009813336469056.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A164416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164420.P13663796949390325508

`∑[A047084(n+2)-A047084(n)]`
-/

namespace A164420.P13663796949390325508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 2) - A047084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164420.P13663796949390325508

noncomputable section

/-- A164420: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0111.

Offset 0, canonical program `A164420.P13663796949390325508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A164420 (n : ℕ) : ℤ :=
  A164420.P13663796949390325508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A164420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164494.P7691253228734499853

`A137495(n+4)`
-/

namespace A164494.P7691253228734499853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137495 (n + 4)

end

end A164494.P7691253228734499853

noncomputable section

/-- A164494: Number of binary strings of length n with no substrings equal to 0010 0101 or 1010.

Offset 4, canonical program `A164494.P7691253228734499853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164494 (n : ℕ) : ℤ :=
  A164494.P7691253228734499853.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A164494.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165686.P1058354228064450562

`A165684(n+1)-A152467(A004275(n))`
-/

namespace A165686.P1058354228064450562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165684 (n + 1) - A152467 (A004275 n).toNat

end

end A165686.P1058354228064450562

noncomputable section

/-- A165686: Dimension of the space of Siegel cusp forms of genus 2 and weight 2k which are not Saito-Kurokawa lifts of forms of genus 1.

Offset 1, canonical program `A165686.P1058354228064450562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A165686 (n : ℕ) : ℤ :=
  A165686.P1058354228064450562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A165686.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166546.P7750365788369680669

`eq[A032741(A032741(n)+2), A057427(n)]`
-/

namespace A166546.P7750365788369680669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166546.P7750365788369680669

noncomputable section

/-- A166546: Natural numbers n such that d(n) + 1 is prime.

Offset 1, canonical program `A166546.P7750365788369680669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6955 terms. -/
def A166546 (n : ℕ) : ℤ :=
  (A166546.P7750365788369680669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6955 terms. -/
def A166546.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A169712.P12999999471380340020

`(n+1)*or(1, A022144(n)+n*A010014(n))`
-/

namespace A169712.P12999999471380340020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor 1 (A022144 n + (n : ℤ) * A010014 n)

end

end A169712.P12999999471380340020

noncomputable section

/-- A169712: The function W_n(8) (see Borwein et al. reference for definition).

Offset 1, canonical program `A169712.P12999999471380340020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169712 (n : ℕ) : ℤ :=
  A169712.P12999999471380340020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169712.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171734.P16815318355326185533

`(n+1)*A266074(A124625(n))`
-/

namespace A171734.P16815318355326185533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266074 (A124625 n).toNat

end

end A171734.P16815318355326185533

noncomputable section

/-- A171734: First differences of A171733.

Offset 0, canonical program `A171734.P16815318355326185533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171734 (n : ℕ) : ℤ :=
  A171734.P16815318355326185533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171734.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172061.P9656388105380330391

`A026641(n+2)-A000958(n+3)`
-/

namespace A172061.P9656388105380330391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 (n + 2) - A000958 (n + 3)

end

end A172061.P9656388105380330391

noncomputable section

/-- A172061: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=4.

Offset 0, canonical program `A172061.P9656388105380330391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172061 (n : ℕ) : ℤ :=
  A172061.P9656388105380330391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172062.P6130199588010829759

`∑[A001791(n+2)-A001558(n+1)]`
-/

namespace A172062.P6130199588010829759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 2) - A001558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172062.P6130199588010829759

noncomputable section

/-- A172062: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=5.

Offset 0, canonical program `A172062.P6130199588010829759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172062 (n : ℕ) : ℤ :=
  A172062.P6130199588010829759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A172062.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127458.P1588143884690926353

`lt[n+1, A013632(n+1)^3]+1`
-/

namespace A127458.P1588143884690926353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127458.P1588143884690926353

noncomputable section

/-- A127458: Numbers k such that there are no primes between k and k + k^(1/3).

Offset 1, canonical program `A127458.P1588143884690926353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 848 terms. -/
def A127458 (n : ℕ) : ℤ :=
  (A127458.P1588143884690926353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 848 terms. -/
def A127458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127992.P8707308965457283916

`A001221(2*(n+1)^3-2*(n+1)+9)`
-/

namespace A127992.P8707308965457283916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((2 * (n + 1) ^ 3 : ℤ) - (2 * (n + 1) : ℤ) + 9).toNat

end

end A127992.P8707308965457283916

noncomputable section

/-- A127992: Number of distinct prime factors of 2*n^3 - 2*n + 9.

Offset 1, canonical program `A127992.P8707308965457283916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127992 (n : ℕ) : ℤ :=
  A127992.P8707308965457283916.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128056.P4683975455215267477

`A011782(n)*A219233(A110654(n))`
-/

namespace A128056.P4683975455215267477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A219233 (A110654 n).toNat

end

end A128056.P4683975455215267477

noncomputable section

/-- A128056: Hankel transform of A128057.

Offset 0, canonical program `A128056.P4683975455215267477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A128056 (n : ℕ) : ℤ :=
  A128056.P4683975455215267477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A128056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128099.P4870284722196018582

`A000079(A055087(n))*A011973(n)`
-/

namespace A128099.P4870284722196018582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A011973 n

end

end A128099.P4870284722196018582

noncomputable section

/-- A128099: Triangle read by rows: T(n,k) is the number of ways to tile a 3 X n rectangle with k pieces of 2 X 2 tiles and 3n-4k pieces of 1 X 1 tiles (0 <= k <= floor(n/2)).

Offset 0, canonical program `A128099.P4870284722196018582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128099 (n : ℕ) : ℤ :=
  A128099.P4870284722196018582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128428.P12680153532119411941

`A001221((n+1)²+1)`
-/

namespace A128428.P12680153532119411941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) ^ 2 + 1)

end

end A128428.P12680153532119411941

noncomputable section

/-- A128428: Number of distinct prime factors of n^2+1.

Offset 1, canonical program `A128428.P12680153532119411941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128428 (n : ℕ) : ℤ :=
  A128428.P12680153532119411941.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128748.P7166467053256492629

`Δ[A242586(n)-∑[A033321(n)]]`
-/

namespace A128748.P7166467053256492629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128748.P7166467053256492629

noncomputable section

/-- A128748: Number of peaks at height >1 in all skew Dyck paths of semilength n.

Offset 1, canonical program `A128748.P7166467053256492629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128748 (n : ℕ) : ℤ :=
  A128748.P7166467053256492629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128863.P11289184588227468378

`A000005(n+a(n-1))` with `a(0)=1`
-/

namespace A128863.P11289184588227468378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n : ℤ) + a (n - 1)).toNat

end

end A128863.P11289184588227468378

noncomputable section

/-- A128863: a(0)=1. For n >= 1, a(n) = number of positive divisors of (n+a(n-1)).

Offset 0, canonical program `A128863.P11289184588227468378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128863 (n : ℕ) : ℤ :=
  A128863.P11289184588227468378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129235.P483503928581819009

`2*A000203(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129235.P483503928581819009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A000005 (n + 1)

end

end A129235.P483503928581819009

noncomputable section

/-- A129235: a(n) = 2*sigma(n) - tau(n), where tau(n) is the number of divisors of n (A000005) and sigma(n) is the sum of divisors of n (A000203).

Offset 1, canonical program `A129235.P483503928581819009`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-A000005(n+1)` (program `A129235.P483503928581819009`, by `A129235.P483503928581819009.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A129235 (n : ℕ) : ℤ :=
  A129235.P483503928581819009.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-A000005(n+1)` (program `A129235.P483503928581819009`, by `A129235.P483503928581819009.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A129235.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A129567.P3074375712733796166

`A000005(A002805(n+1))`
-/

namespace A129567.P3074375712733796166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002805 (n + 1)).toNat

end

end A129567.P3074375712733796166

noncomputable section

/-- A129567: a(n) = number of positive divisors of the denominator of the n-th harmonic number H(n) = Sum_{k=1..n} 1/k.

Offset 1, canonical program `A129567.P3074375712733796166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129567 (n : ℕ) : ℤ :=
  A129567.P3074375712733796166.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129568.P17056387709866541555

`A000005(A001008(n+1))`
-/

namespace A129568.P17056387709866541555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001008 (n + 1)).toNat

end

end A129568.P17056387709866541555

noncomputable section

/-- A129568: a(n) is the number of positive divisors of the numerator of the n-th harmonic number H(n) = Sum_{k=1..n} 1/k.

Offset 1, canonical program `A129568.P17056387709866541555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129568 (n : ℕ) : ℤ :=
  A129568.P17056387709866541555.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129720.P8695700237349023739

`A291241(n)-A000045(n+1)`
-/

namespace A129720.P8695700237349023739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 n - A000045 (n + 1)

end

end A129720.P8695700237349023739

noncomputable section

/-- A129720: Number of 0's in odd position in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

Offset 0, canonical program `A129720.P8695700237349023739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129720 (n : ℕ) : ℤ :=
  A129720.P8695700237349023739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129983.P17535563486194149249

`∑[A129984(abs(1-n))]`
-/

namespace A129983.P17535563486194149249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129983.P17535563486194149249

noncomputable section

/-- A129983: Binomial transform of A129982.

Offset 0, canonical program `A129983.P17535563486194149249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129983 (n : ℕ) : ℤ :=
  A129983.P17535563486194149249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129986.P6583462632365360205

`A129987(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A129986.P6583462632365360205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129987 (n - 1) + a (n - 1)

end

end A129986.P6583462632365360205

noncomputable section

/-- A129986: Second differences of A129983.

Offset 0, canonical program `A129986.P6583462632365360205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129986 (n : ℕ) : ℤ :=
  A129986.P6583462632365360205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A129986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130047.P13624895427520759219

`A034868(n)%2`
-/

namespace A130047.P13624895427520759219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034868 n) 2

end

end A130047.P13624895427520759219

noncomputable section

/-- A130047: Left half of Pascal's triangle (A034868) modulo 2.

Offset 0, canonical program `A130047.P13624895427520759219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130047 (n : ℕ) : ℤ :=
  A130047.P13624895427520759219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130235.P2048728621119098997

`(n+1)*A130233(n)-A000045(A130233(n)+2)+1`
-/

namespace A130235.P2048728621119098997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130233 n - A000045 (A130233 n + 2).toNat + 1

end

end A130235.P2048728621119098997

noncomputable section

/-- A130235: Partial sums of the 'lower' Fibonacci Inverse A130233.

Offset 0, canonical program `A130235.P2048728621119098997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130235 (n : ℕ) : ℤ :=
  A130235.P2048728621119098997.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130238.P11176055656399190720

`(n*(n+1)*A130233(n)-(A000045(A130233(n))-1)*(A000045(A130233(n)+1)-1))/2`
-/

namespace A130238.P11176055656399190720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * A130233 n - (A000045 (A130233 n).toNat - 1) * (A000045 (A130233 n + 1).toNat - 1) : ℚ) / 2

end

end A130238.P11176055656399190720

noncomputable section

/-- A130238: Partial sums of A130237.

Offset 0, canonical program `A130238.P11176055656399190720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130238.P11176055656399190720.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130239.P4605926808634395640

`A130233(floor(sqrt(n)))`
-/

namespace A130239.P4605926808634395640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (Nat.sqrt n)

end

end A130239.P4605926808634395640

noncomputable section

/-- A130239: Maximal index k of the square of a Fibonacci number such that Fib(k)^2 <= n (the 'lower' squared Fibonacci Inverse).

Offset 0, canonical program `A130239.P4605926808634395640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130239 (n : ℕ) : ℤ :=
  A130239.P4605926808634395640.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130256.P8888391435086218073

`A130260(A005379(n))+A057427(A005379(n))`
-/

namespace A130256.P8888391435086218073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A005379 n).toNat + A057427 (A005379 n).toNat

end

end A130256.P8888391435086218073

noncomputable section

/-- A130256: Minimal index k of an odd Fibonacci number A001519 such that A001519(k) = Fibonacci(2*k-1) >= n (the 'upper' odd Fibonacci Inverse).

Offset 0, canonical program `A130256.P8888391435086218073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130256 (n : ℕ) : ℤ :=
  A130256.P8888391435086218073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130302.P1457114923218138745

`C(A144257(n+1)+1, A025581(n))`
-/

namespace A130302.P1457114923218138745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (n + 1) + 1).toNat (A025581 n).toNat

end

end A130302.P1457114923218138745

noncomputable section

/-- A130302: A000012 * A130296.

Offset 1, canonical program `A130302.P1457114923218138745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130302 (n : ℕ) : ℤ :=
  (A130302.P1457114923218138745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130753.P6587758951476041366

`2*(A275437(n)+A240025(n))`
-/

namespace A130753.P6587758951476041366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275437 n + A240025 n)

end

end A130753.P6587758951476041366

noncomputable section

/-- A130753: A folded-back triangular sequence based on symmetry of CnH2*n+2 straight chain alkanes and the number of hydrogen atoms of a given symmetry type: Besides methane at 4 there are only three symmetry types: two CH3's->6: a single CH2->2, two CH2's->4.

Offset 1, canonical program `A130753.P6587758951476041366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130753 (n : ℕ) : ℤ :=
  A130753.P6587758951476041366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131187.P4579191634371129488

`n+3-A000005(n+1)-A000005(n+2)`
-/

namespace A131187.P4579191634371129488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A000005 (n + 1) - A000005 (n + 2)

end

end A131187.P4579191634371129488

noncomputable section

/-- A131187: a(n) = the number of positive integers < n that are neither a divisor of n nor a divisor of (n+1).

Offset 1, canonical program `A131187.P4579191634371129488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131187 (n : ℕ) : ℤ :=
  A131187.P4579191634371129488.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131219.P16671854604704535896

`A166280(n)*A253084(n)`
-/

namespace A131219.P16671854604704535896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166280 n * A253084 n

end

end A131219.P16671854604704535896

noncomputable section

/-- A131219: Triangle read by rows: T(n, k) = A047999(n, k)*A131218(n-k, k).

Offset 0, canonical program `A131219.P16671854604704535896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131219 (n : ℕ) : ℤ :=
  A131219.P16671854604704535896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A131219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131323.P11558536358663034912

`2*A079523(n+1)+1`
-/

namespace A131323.P11558536358663034912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079523 (n + 1) + 1

end

end A131323.P11558536358663034912

noncomputable section

/-- A131323: Odd numbers whose binary expansion ends in an even number of 1's.

Offset 1, canonical program `A131323.P11558536358663034912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131323 (n : ℕ) : ℤ :=
  A131323.P11558536358663034912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131853.P6901481179883769974

`∩[A378624(n+1), A008587(n)]`
-/

namespace A131853.P6901481179883769974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131853.P6901481179883769974

noncomputable section

/-- A131853: Numbers m such that z(m)=(0,0) with z as defined in A131851.

Offset 1, canonical program `A131853.P6901481179883769974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A131853 (n : ℕ) : ℤ :=
  (A131853.P6901481179883769974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. -/
def A131853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131856.P1766368326207610902

`∩[A131857(n+1), A016873(n)]`
-/

namespace A131856.P1766368326207610902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131856.P1766368326207610902

noncomputable section

/-- A131856: Numbers m such that z(m)=(0,1) with z as defined in A131851.

Offset 1, canonical program `A131856.P1766368326207610902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2748 terms. -/
def A131856 (n : ℕ) : ℤ :=
  (A131856.P1766368326207610902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2748 terms. -/
def A131856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131894.P11952724371346339213

`A279891(n)+A158860(n+1)`
-/

namespace A131894.P11952724371346339213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A158860 (n + 1)

end

end A131894.P11952724371346339213

noncomputable section

/-- A131894: A131843 * A000012.

Offset 0, canonical program `A131894.P11952724371346339213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131894 (n : ℕ) : ℤ :=
  A131894.P11952724371346339213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131922.P15853728421612671045

`A094727(A193592(n)+n)`
-/

namespace A131922.P15853728421612671045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A193592 n + (n : ℤ)).toNat

end

end A131922.P15853728421612671045

noncomputable section

/-- A131922: Triangle read by rows: 2*A002024 - A130296 as infinite lower triangular matrices.

Offset 0, canonical program `A131922.P15853728421612671045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131922 (n : ℕ) : ℤ :=
  A131922.P15853728421612671045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132014.P8642909977413927530

`A094441(n)*A185018(n)`
-/

namespace A132014.P8642909977413927530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A185018 n

end

end A132014.P8642909977413927530

noncomputable section

/-- A132014: T(n,j) for double application of an iterated mixed order Laguerre transform: Coefficients of Laguerre polynomial (-1)^n*n!*L(n,2-n,x).

Offset 0, canonical program `A132014.P8642909977413927530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132014 (n : ℕ) : ℤ :=
  A132014.P8642909977413927530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132143.P10521542141353229339

`∪[A038872(n+1), A045398(n+1)]`
-/

namespace A132143.P10521542141353229339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132143.P10521542141353229339

noncomputable section

/-- A132143: Prime numbers P such that (P^k-2) is not divisible by 35(=A119691(1)) for any value of k.

Offset 1, canonical program `A132143.P10521542141353229339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132143 (n : ℕ) : ℤ :=
  (A132143.P10521542141353229339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132157.P13318743662329449319

`Δ[A202014(n+1)]`
-/

namespace A132157.P13318743662329449319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132157.P13318743662329449319

noncomputable section

/-- A132157: a(n) = number of times n occurs in A063882.

Offset 1, canonical program `A132157.P13318743662329449319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A132157 (n : ℕ) : ℤ :=
  A132157.P13318743662329449319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A132157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132665.P14542286321658660860

`A000045(A130233(n+2)+2)-(n+1)-3`
-/

namespace A132665.P14542286321658660860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 2) + 2).toNat - (n + 1 : ℤ) - 3

end

end A132665.P14542286321658660860

noncomputable section

/-- A132665: a(1)=1, a(2)=3, a(n) = a(n-1) + n if the minimal positive integer not yet in the sequence is greater than a(n-1), else a(n) = a(n-1)-1.

Offset 1, canonical program `A132665.P14542286321658660860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132665 (n : ℕ) : ℤ :=
  A132665.P14542286321658660860.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132885.P5107990570951772901

`A002426(A082375(n))*A011973(n)`
-/

namespace A132885.P5107990570951772901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A082375 n).toNat * A011973 n

end

end A132885.P5107990570951772901

noncomputable section

/-- A132885: Triangle read by rows: T(n,k) is the number of paths in the right half-plane from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k H=(2,0) steps (0 <= k <= floor(n/2)).

Offset 0, canonical program `A132885.P5107990570951772901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A132885 (n : ℕ) : ℤ :=
  A132885.P5107990570951772901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A132885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133579.P16500229085264912069

`A000244(A253092(n))`
-/

namespace A133579.P16500229085264912069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A253092 n).toNat

end

end A133579.P16500229085264912069

noncomputable section

/-- A133579: a(0)=a(1)=1; for n > 1, a(n) = 3*a(n-1) if a(n-1) and n are coprime, otherwise a(n) = a(n-1)/gcd(a(n-1), n).

Offset 0, canonical program `A133579.P16500229085264912069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133579 (n : ℕ) : ℤ :=
  A133579.P16500229085264912069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A133579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133635.P12044644420769387225

`filter[A133634(n+1), A011558(#)]`
-/

namespace A133635.P12044644420769387225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A133635.P12044644420769387225

noncomputable section

/-- A133635: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=5.

Offset 1, canonical program `A133635.P12044644420769387225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A133635 (n : ℕ) : ℤ :=
  A133635.P12044644420769387225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. -/
def A133635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133992.P13069906901288895750

`A000005(A000040(n+1)*A000040(A000040(n+1))-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133992.P13069906901288895750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) * A000040 (A000040 (n + 1)).toNat - 1).toNat

end

end A133992.P13069906901288895750

noncomputable section

/-- A133992: a(n) = tau( prime(n)*prime(prime(n)) - 1 ).

Offset 1, canonical program `A133992.P13069906901288895750`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000040(n+1)*A000040(A000040(n+1))-1)` (program `A133992.P13069906901288895750`, by `A133992.P13069906901288895750.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A133992 (n : ℕ) : ℤ :=
  A133992.P13069906901288895750.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000040(n+1)*A000040(A000040(n+1))-1)` (program `A133992.P13069906901288895750`, by `A133992.P13069906901288895750.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A133992.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A134156.P11875869690967924309

`2*A000005(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134156.P11875869690967924309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - (n + 1 : ℤ)

end

end A134156.P11875869690967924309

noncomputable section

/-- A134156: a(n) = 2*tau(n) - n, where tau(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A134156.P11875869690967924309`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000005(n+1)-(n+1)` (program `A134156.P11875869690967924309`, by `A134156.P11875869690967924309.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A134156 (n : ℕ) : ℤ :=
  A134156.P11875869690967924309.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000005(n+1)-(n+1)` (program `A134156.P11875869690967924309`, by `A134156.P11875869690967924309.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A134156.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A134340.P8323735923062830065

`A214262(6*n+5)/24`
-/

namespace A134340.P8323735923062830065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214262 (6 * n + 5) : ℚ) / 24

end

end A134340.P8323735923062830065

noncomputable section

/-- A134340: Expansion of psi(x)^3 * f(-x^3)^3 / chi(-x)^2 in powers of x where psi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A134340.P8323735923062830065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A134340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134340.P8323735923062830065.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A134340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134488.P1572113780692596198

`n+A000005(a(n-1))` with `a(0)=1`
-/

namespace A134488.P1572113780692596198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) + A000005 (a (n - 1)).toNat

end

end A134488.P1572113780692596198

noncomputable section

/-- A134488: a(0)=1. a(n) = n + d(a(n-1)), where d(m) is the number of positive divisors of m.

Offset 0, canonical program `A134488.P1572113780692596198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134488 (n : ℕ) : ℤ :=
  A134488.P1572113780692596198.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134505.P6935622930957667742

`A107230(n)/gcd(A107230(n), A108044(n))`
-/

namespace A134505.P6935622930957667742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107230 n : ℚ) / (Int.gcd (A107230 n) (A108044 n) : ℚ)

end

end A134505.P6935622930957667742

noncomputable section

/-- A134505: Replace 0's with 1's in triangle A049310, and take absolute values.

Offset 1, canonical program `A134505.P6935622930957667742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134505.P6935622930957667742.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134512.P14449246097379148271

`A291241(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A134512.P14449246097379148271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A291241 (n - 1) + a (n - 2)

end

end A134512.P14449246097379148271

noncomputable section

/-- A134512: Row sums of triangle A134511.

Offset 0, canonical program `A134512.P14449246097379148271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A134512 (n : ℕ) : ℤ :=
  A134512.P14449246097379148271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A134512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135111.P10146640050812540402

`eq[A053735(n), A280167(A000120(n))]`
-/

namespace A135111.P10146640050812540402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135111.P10146640050812540402

noncomputable section

/-- A135111: Numbers such that the digital sum base 2 and the digital sum base 3 are in a ratio of 2:3.

Offset 1, canonical program `A135111.P10146640050812540402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A135111 (n : ℕ) : ℤ :=
  (A135111.P10146640050812540402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A135111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135323.P6195842534897767785

`(n+1)*A008480(n+1)`
-/

namespace A135323.P6195842534897767785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008480 (n + 1)

end

end A135323.P6195842534897767785

noncomputable section

/-- A135323: a(1)=1, a(n) = Sum_{p=prime, p|n} a(n/p)*p.

Offset 1, canonical program `A135323.P6195842534897767785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135323 (n : ℕ) : ℤ :=
  A135323.P6195842534897767785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135508.P13264437964193426359

`A370634(n+2)-2`
-/

namespace A135508.P13264437964193426359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370634 (n + 2) - 2

end

end A135508.P13264437964193426359

noncomputable section

/-- A135508: a(n) = x(n+1)/x(n) - 2 where x(1)=1 and x(n) = 2*x(n-1) + lcm(x(n-1),n).

Offset 1, canonical program `A135508.P13264437964193426359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135508 (n : ℕ) : ℤ :=
  A135508.P13264437964193426359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A135508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135529.P639261192653949235

`A135533(n+1)+1-2^(A000120(n+1)-1)`
-/

namespace A135529.P639261192653949235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135533 (n + 1) + 1 : ℚ) - (2 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A135529.P639261192653949235

noncomputable section

/-- A135529: Guy Steele's sequence GS(4,5) (see A135416).

Offset 1, canonical program `A135529.P639261192653949235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135529.P639261192653949235.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135932.P7824624221458301450

`p?[A176864(n+1)]`
-/

namespace A135932.P7824624221458301450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135932.P7824624221458301450

noncomputable section

/-- A135932: Primes whose integer square root remainder is also prime.

Offset 1, canonical program `A135932.P7824624221458301450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1027 terms. -/
def A135932 (n : ℕ) : ℤ :=
  A135932.P7824624221458301450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1027 terms. -/
def A135932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135933.P13627273315557700751

`p?[comp[A176864(n+1)]]`
-/

namespace A135933.P13627273315557700751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135933.P13627273315557700751

noncomputable section

/-- A135933: Primes whose integer square root remainder is not a prime.

Offset 1, canonical program `A135933.P13627273315557700751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A135933 (n : ℕ) : ℤ :=
  (A135933.P13627273315557700751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. -/
def A135933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135950.P561711394440477786

`A157963(n)*A165326(A002024(n+1))`
-/

namespace A135950.P561711394440477786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 n * A165326 (A002024 (n + 1)).toNat

end

end A135950.P561711394440477786

noncomputable section

/-- A135950: Matrix inverse of triangle A022166.

Offset 0, canonical program `A135950.P561711394440477786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A135950 (n : ℕ) : ℤ :=
  A135950.P561711394440477786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A135950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136056.P16665451693116353274

`ceil(A136066(n+1)/15)`
-/

namespace A136056.P16665451693116353274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136066 (n + 1) : ℚ) / 15⌉

end

end A136056.P16665451693116353274

noncomputable section

/-- A136056: Daughter primes of order 7.

Offset 1, canonical program `A136056.P16665451693116353274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136056 (n : ℕ) : ℤ :=
  A136056.P16665451693116353274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136084.P3655251885475289472

`p?[A004396(A102700(n+1)-1)]`
-/

namespace A136084.P3655251885475289472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A102700 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P3655251885475289472

noncomputable section

/-- A136084: Son primes of order 7.

Offset 1, canonical program `A136084.P3655251885475289472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A136084 (n : ℕ) : ℤ :=
  A136084.P3655251885475289472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A136084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136125.P2982316925870976645

`gcd(Δ[A094310(n+1)], A136572(n))`
-/

namespace A136125.P2982316925870976645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A136572 n)

end

end A136125.P2982316925870976645

noncomputable section

/-- A136125: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which the size of the last cycle is k (the cycles are ordered by increasing smallest elements; 1 <= k <=n).

Offset 1, canonical program `A136125.P2982316925870976645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125 (n : ℕ) : ℤ :=
  (A136125.P2982316925870976645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136333.P7255330385303398448

`eq[1, gcd(10, A007954(n))]`
-/

namespace A136333.P7255330385303398448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A007954 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136333.P7255330385303398448

noncomputable section

/-- A136333: Numbers containing only digits coprime to 10 in their decimal representation.

Offset 1, canonical program `A136333.P7255330385303398448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A136333 (n : ℕ) : ℤ :=
  (A136333.P7255330385303398448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A136333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136399.P7416713261732785122

`∪[A277964(n+1), comp[A007089(n)]]`
-/

namespace A136399.P7416713261732785122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A136399.P7416713261732785122

noncomputable section

/-- A136399: Numbers having in their decimal representation at least one digit greater than 1.

Offset 1, canonical program `A136399.P7416713261732785122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136399 (n : ℕ) : ℤ :=
  (A136399.P7416713261732785122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136437.P3343558122618861714

`A212598(A000040(n+1))`
-/

namespace A136437.P3343558122618861714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A000040 (n + 1)).toNat

end

end A136437.P3343558122618861714

noncomputable section

/-- A136437: a(n) = prime(n) - k! where k is the greatest number such that k! <= prime(n).

Offset 1, canonical program `A136437.P3343558122618861714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136437 (n : ℕ) : ℤ :=
  A136437.P3343558122618861714.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212598, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136437.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136655.P6898673837673144474

`A140210(n+1)*A140211(n+1)`
-/

namespace A136655.P6898673837673144474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140210 (n + 1) * A140211 (n + 1)

end

end A136655.P6898673837673144474

noncomputable section

/-- A136655: Product of odd divisors of n.

Offset 1, canonical program `A136655.P6898673837673144474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140210, A140211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136655 (n : ℕ) : ℤ :=
  A136655.P6898673837673144474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140210, A140211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136687.P466848025406381974

`∑[char[A262037(n)]]`
-/

namespace A136687.P466848025406381974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P466848025406381974

noncomputable section

/-- A136687: Number of palindromes in the range [0,n] inclusive.

Offset 0, canonical program `A136687.P466848025406381974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136687 (n : ℕ) : ℤ :=
  (A136687.P466848025406381974.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136688.P3993852175964647821

`A134513(n)*A156663(n)`
-/

namespace A136688.P3993852175964647821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 n * A156663 n

end

end A136688.P3993852175964647821

noncomputable section

/-- A136688: Triangle of polynomials F(x,n) = x*F(x,n-1) + 2*F(x,n-2).

Offset 1, canonical program `A136688.P3993852175964647821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136688 (n : ℕ) : ℤ :=
  A136688.P3993852175964647821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137686.P2137066375668895625

`A081399(n)-A137687(n)`
-/

namespace A137686.P2137066375668895625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 n - A137687 n

end

end A137686.P2137066375668895625

noncomputable section

/-- A137686: a(n) = Bigomega(Catalan(n)) - round( 3 n /(2 log(n+2))) (= A081399 - A137687).

Offset 0, canonical program `A137686.P2137066375668895625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A137686 (n : ℕ) : ℤ :=
  A137686.P2137066375668895625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A137686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137709.P10048687972345600020

`2*A287775(n+1)-(n+1)`
-/

namespace A137709.P10048687972345600020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287775 (n + 1) - (n + 1 : ℤ)

end

end A137709.P10048687972345600020

noncomputable section

/-- A137709: Secondary upper Wythoff sequence.

Offset 1, canonical program `A137709.P10048687972345600020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137709 (n : ℕ) : ℤ :=
  A137709.P10048687972345600020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137728.P9076727154508020560

`A056129(n+1)*A157928(n)`
-/

namespace A137728.P9076727154508020560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056129 (n + 1) * A157928 n

end

end A137728.P9076727154508020560

noncomputable section

/-- A137728: Second digit from the end of product of first n primes.

Offset 1, canonical program `A137728.P9076727154508020560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728 (n : ℕ) : ℤ :=
  A137728.P9076727154508020560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137734.P16570986701740849317

`A259361(A143051(n))+1`
-/

namespace A137734.P16570986701740849317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A143051 n).toNat + 1

end

end A137734.P16570986701740849317

noncomputable section

/-- A137734: a(0)=1. a(n) = ceiling(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137734.P16570986701740849317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734 (n : ℕ) : ℤ :=
  A137734.P16570986701740849317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137773.P5744758728077306555

`A247049(A131431(n))`
-/

namespace A137773.P5744758728077306555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A131431 n).toNat

end

end A137773.P5744758728077306555

noncomputable section

/-- A137773: Triangular sequence: The Fibonacci sequence on the diagonal, 1's at all other places.

Offset 1, canonical program `A137773.P5744758728077306555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137773 (n : ℕ) : ℤ :=
  A137773.P5744758728077306555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137877.P18443067678914737995

`∩[A111094(n+1), A138918(n+1)]`
-/

namespace A137877.P18443067678914737995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137877.P18443067678914737995

noncomputable section

/-- A137877: Numbers k such that 18*k - 1 and 18*k + 1 are twin primes.

Offset 1, canonical program `A137877.P18443067678914737995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2134 terms. -/
def A137877 (n : ℕ) : ℤ :=
  (A137877.P18443067678914737995.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2134 terms. -/
def A137877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138012.P10289845696173396267

`∑{d}[n+1, A000007((n+1)%A000005(#))]`
-/

namespace A138012.P10289845696173396267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (n + 1 : ℤ) (A000005 d)).toNat

end

end A138012.P10289845696173396267

noncomputable section

/-- A138012: a(n) = number of positive divisors, k, of n where d(k) divides n (where d(k) = number of positive divisors of k, A000005).

Offset 1, canonical program `A138012.P10289845696173396267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138012 (n : ℕ) : ℤ :=
  A138012.P10289845696173396267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138172.P13850476572932011494

`lt[A000005(abs((n-1)%2+1-n)+2), A000005(n+1)]`
-/

namespace A138172.P13850476572932011494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|Int.tmod ((n : ℤ) - 1) 2 + 1 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138172.P13850476572932011494

noncomputable section

/-- A138172: Even n where d(n) < d(n+1), where d(n) = number of positive divisors of n.

Offset 1, canonical program `A138172.P13850476572932011494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3657 terms. -/
def A138172 (n : ℕ) : ℤ :=
  (A138172.P13850476572932011494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3657 terms. -/
def A138172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138268.P13452783451208394077

`-A275858(2*(n+1))`
-/

namespace A138268.P13452783451208394077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A275858 (2 * (n + 1))

end

end A138268.P13452783451208394077

noncomputable section

/-- A138268: Negative of the Hankel transform of C(n) - C(n+2), where C = A000108.

Offset 0, canonical program `A138268.P13452783451208394077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A138268 (n : ℕ) : ℤ :=
  A138268.P13452783451208394077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A138268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138302.P16562127225600739451

`eq[1, A355823(n+1)]+1`
-/

namespace A138302.P16562127225600739451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138302.P16562127225600739451

noncomputable section

/-- A138302: Exponentially 2^n-numbers: 1 together with positive integers k such that all exponents in prime factorization of k are powers of 2.

Offset 1, canonical program `A138302.P16562127225600739451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138302 (n : ℕ) : ℤ :=
  (A138302.P16562127225600739451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138624.P17333592088374729543

`floor(A138623(n+1)/17)`
-/

namespace A138624.P17333592088374729543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138623 (n + 1) : ℚ) / 17⌋

end

end A138624.P17333592088374729543

noncomputable section

/-- A138624: Nonnegative integers k such that 17*k+5 is prime.

Offset 1, canonical program `A138624.P17333592088374729543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138624 (n : ℕ) : ℤ :=
  A138624.P17333592088374729543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138626.P1319008390697014529

`ceil(A138625(n+1)/17)`
-/

namespace A138626.P1319008390697014529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138625 (n + 1) : ℚ) / 17⌉

end

end A138626.P1319008390697014529

noncomputable section

/-- A138626: Nonnegative integers n such that 17*n-5 is prime.

Offset 1, canonical program `A138626.P1319008390697014529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138626 (n : ℕ) : ℤ :=
  A138626.P1319008390697014529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138628.P9747259890444117167

`ceil(A138627(n+1)/17)`
-/

namespace A138628.P9747259890444117167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138627 (n + 1) : ℚ) / 17⌉

end

end A138628.P9747259890444117167

noncomputable section

/-- A138628: Positive integers k such that 17*k-7 is prime.

Offset 1, canonical program `A138628.P9747259890444117167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138628 (n : ℕ) : ℤ :=
  A138628.P9747259890444117167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138630.P18334919423305993658

`floor(A138629(n+1)/17)`
-/

namespace A138630.P18334919423305993658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138629 (n + 1) : ℚ) / 17⌋

end

end A138630.P18334919423305993658

noncomputable section

/-- A138630: Nonnegative integers k such that 17*k+7 is prime.

Offset 1, canonical program `A138630.P18334919423305993658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138630 (n : ℕ) : ℤ :=
  A138630.P18334919423305993658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138632.P18181026254445876438

`floor(A138631(n+1)/17)`
-/

namespace A138632.P18181026254445876438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138631 (n + 1) : ℚ) / 17⌋

end

end A138632.P18181026254445876438

noncomputable section

/-- A138632: Nonnegative integers k such that 17*k+9 is prime.

Offset 1, canonical program `A138632.P18181026254445876438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138632 (n : ℕ) : ℤ :=
  A138632.P18181026254445876438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138634.P7859391578108386486

`ceil(A138633(n+1)/17)`
-/

namespace A138634.P7859391578108386486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138633 (n + 1) : ℚ) / 17⌉

end

end A138634.P7859391578108386486

noncomputable section

/-- A138634: Nonnegative integers k such that 17*k-9 is prime.

Offset 1, canonical program `A138634.P7859391578108386486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138634 (n : ℕ) : ℤ :=
  A138634.P7859391578108386486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138639.P4190226665619492302

`ceil(A138638(n+1)/19)`
-/

namespace A138639.P4190226665619492302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138638 (n + 1) : ℚ) / 19⌉

end

end A138639.P4190226665619492302

noncomputable section

/-- A138639: Nonnegative integers n such that 19*n-1 is prime.

Offset 1, canonical program `A138639.P4190226665619492302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138639 (n : ℕ) : ℤ :=
  A138639.P4190226665619492302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138641.P13288651267268791020

`ceil(A138640(n+1)/19)`
-/

namespace A138641.P13288651267268791020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138640 (n + 1) : ℚ) / 19⌉

end

end A138641.P13288651267268791020

noncomputable section

/-- A138641: Nonnegative integers n such that 19*n-2 is prime.

Offset 1, canonical program `A138641.P13288651267268791020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138641 (n : ℕ) : ℤ :=
  A138641.P13288651267268791020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138643.P5751644139118484023

`ceil(A138642(n+1)/19)`
-/

namespace A138643.P5751644139118484023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138642 (n + 1) : ℚ) / 19⌉

end

end A138643.P5751644139118484023

noncomputable section

/-- A138643: Nonnegative integers k such that 19*k-3 is prime.

Offset 1, canonical program `A138643.P5751644139118484023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138643 (n : ℕ) : ℤ :=
  A138643.P5751644139118484023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138666.P6051759932238396872

`A065475(A166602(n+1))`
-/

namespace A138666.P6051759932238396872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A166602 (n + 1)).toNat

end

end A138666.P6051759932238396872

noncomputable section

/-- A138666: Numbers n such that every sum of consecutive positive numbers ending in n is not prime.

Offset 1, canonical program `A138666.P6051759932238396872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138666 (n : ℕ) : ℤ :=
  A138666.P6051759932238396872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139333.P6431755698224016243

`floor(A192232(n+1)+A112576(n)*ϕ)`
-/

namespace A139333.P6431755698224016243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192232 (n + 1) : ℝ) + (A112576 n : ℝ) * Real.goldenRatio⌋

end

end A139333.P6431755698224016243

noncomputable section

/-- A139333: Floor of entry (2,1) of [0,1; 1,phi]^n.

Offset 1, canonical program `A139333.P6431755698224016243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139333 (n : ℕ) : ℤ :=
  A139333.P6431755698224016243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192232, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139367.P12848330086499471846

`A102700(n+1)-A102342(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139367.P12848330086499471846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) - A102342 (n + 1)

end

end A139367.P12848330086499471846

noncomputable section

/-- A139367: a(n) = A102700(n) - A102342(n).

Offset 1, canonical program `A139367.P12848330086499471846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, A102700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139367 (n : ℕ) : ℤ :=
  A139367.P12848330086499471846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, A102700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139390.P2912127074114890688

`A034387(A000244(n))`
-/

namespace A139390.P2912127074114890688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A000244 n).toNat

end

end A139390.P2912127074114890688

noncomputable section

/-- A139390: Sum of primes <= 3^n.

Offset 0, canonical program `A139390.P2912127074114890688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139390 (n : ℕ) : ℤ :=
  A139390.P2912127074114890688.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139406.P4242831370835616806

`∩[A005123(n+1), A105133(n+1)]`
-/

namespace A139406.P4242831370835616806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139406.P4242831370835616806

noncomputable section

/-- A139406: Numbers k such that 8*k+1 and 8*k+5 are primes.

Offset 1, canonical program `A139406.P4242831370835616806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A139406 (n : ℕ) : ℤ :=
  (A139406.P4242831370835616806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A139406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139422.P6616369610320219079

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A139422.P6616369610320219079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat + A000005 (a (n - 2)).toNat

end

end A139422.P6616369610320219079

noncomputable section

/-- A139422: a(1)=a(2)=1. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

Offset 1, canonical program `A139422.P6616369610320219079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139422 (n : ℕ) : ℤ :=
  A139422.P6616369610320219079.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139423.P3314553419540253664

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A139423.P3314553419540253664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat + A000005 (a (n - 2)).toNat

end

end A139423.P3314553419540253664

noncomputable section

/-- A139423: a(1)=1, a(2)=2. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

Offset 1, canonical program `A139423.P3314553419540253664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139423 (n : ℕ) : ℤ :=
  A139423.P3314553419540253664.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139645.P1524683957140260505

`∩[A007519(n+1), A274675(n+1)]`
-/

namespace A139645.P1524683957140260505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P1524683957140260505

noncomputable section

/-- A139645: Primes of the form x^2 + 112*y^2.

Offset 1, canonical program `A139645.P1524683957140260505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A139645 (n : ℕ) : ℤ :=
  (A139645.P1524683957140260505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A139645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139827.P12561689821490357478

`∩[A191060(n+1), A243183(n+1)]`
-/

namespace A139827.P12561689821490357478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P12561689821490357478

noncomputable section

/-- A139827: Primes of the form 2x^2 + 2xy + 17y^2.

Offset 1, canonical program `A139827.P12561689821490357478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139827 (n : ℕ) : ℤ :=
  (A139827.P12561689821490357478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A139827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139887.P8075278152614741056

`∩[A106859(n+1), A141190(n+1)]`
-/

namespace A139887.P8075278152614741056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139887.P8075278152614741056

noncomputable section

/-- A139887: Primes of the form 2x^2+105y^2.

Offset 1, canonical program `A139887.P8075278152614741056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A139887 (n : ℕ) : ℤ :=
  (A139887.P8075278152614741056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A139887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139915.P6958585210119532422

`∩[A033205(n+1), A141191(n+1)]`
-/

namespace A139915.P6958585210119532422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139915.P6958585210119532422

noncomputable section

/-- A139915: Primes of the form 5x^2+56y^2.

Offset 1, canonical program `A139915.P6958585210119532422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A139915 (n : ℕ) : ℤ :=
  (A139915.P6958585210119532422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. -/
def A139915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140098.P3927488538195493875

`A184821(n+1)-A158919(n+1)`
-/

namespace A140098.P3927488538195493875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184821 (n + 1) - A158919 (n + 1)

end

end A140098.P3927488538195493875

noncomputable section

/-- A140098: A Beatty sequence: a(n) = [n*(1+1/t)], where t = tribonacci constant (A058265); complement of A140099.

Offset 1, canonical program `A140098.P3927488538195493875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140098 (n : ℕ) : ℤ :=
  A140098.P3927488538195493875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140280.P15285720908636328681

`A007954(A007318(n))`
-/

namespace A140280.P15285720908636328681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007318 n).toNat

end

end A140280.P15285720908636328681

noncomputable section

/-- A140280: Product of digits of values in Pascal's triangle, by rows.

Offset 0, canonical program `A140280.P15285720908636328681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140280 (n : ℕ) : ℤ :=
  A140280.P15285720908636328681.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140298.P6130233779866552396

`∑[A140313(n+2)]+1`
-/

namespace A140298.P6130233779866552396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140298.P6130233779866552396

noncomputable section

/-- A140298: a(0)=1; a(3n+1) = a(3n)+1, a(3n+2) = a(3n+1) + a(3n) (=3*A000244), a(3n+3) = a(3n+2) + a(3n) (=A003462(n+2)).

Offset 0, canonical program `A140298.P6130233779866552396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140298 (n : ℕ) : ℤ :=
  A140298.P6130233779866552396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A140298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140390.P5860684244642945090

`filter[A215146(n), A373977(#)]`
-/

namespace A140390.P5860684244642945090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P5860684244642945090

noncomputable section

/-- A140390: Nonprimes of the form 21k+1.

Offset 1, canonical program `A140390.P5860684244642945090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A140390 (n : ℕ) : ℤ :=
  A140390.P5860684244642945090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. -/
def A140390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140459.P6193242358392747816

`eq[0, and(n+1, A000005(n+1))]+1`
-/

namespace A140459.P6193242358392747816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140459.P6193242358392747816

noncomputable section

/-- A140459: A positive integer n is included if n can be added to d(n) in binary without any carries, where d(n) is the number of positive divisors of n. In other words, no 1 in the binary representation of n is in the same position as any 1 in the binary representation of d(n).

Offset 1, canonical program `A140459.P6193242358392747816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140459 (n : ℕ) : ℤ :=
  (A140459.P6193242358392747816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140482.P11303161972345714232

`2*(n+1)+A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140482.P11303161972345714232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A000005 (n + 1)

end

end A140482.P11303161972345714232

noncomputable section

/-- A140482: a(n) = 2*n + tau(n).

Offset 1, canonical program `A140482.P11303161972345714232`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)+A000005(n+1)` (program `A140482.P11303161972345714232`, by `A140482.P11303161972345714232.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140482 (n : ℕ) : ℤ :=
  A140482.P11303161972345714232.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)+A000005(n+1)` (program `A140482.P11303161972345714232`, by `A140482.P11303161972345714232.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140482.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140612.P4476291011363944334

`eq[1, A229062(A229062(n)+n)]`
-/

namespace A140612.P4476291011363944334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A229062 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140612.P4476291011363944334

noncomputable section

/-- A140612: Integers k such that both k and k+1 are the sum of 2 squares.

Offset 1, canonical program `A140612.P4476291011363944334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2741 terms. -/
def A140612 (n : ℕ) : ℤ :=
  (A140612.P4476291011363944334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2741 terms. -/
def A140612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140616.P17621141678928507057

`∩[A040117(n+1), A141191(n+1)]`
-/

namespace A140616.P17621141678928507057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P17621141678928507057

noncomputable section

/-- A140616: Primes of the form 5x^2+4xy+68y^2.

Offset 1, canonical program `A140616.P17621141678928507057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A140616 (n : ℕ) : ℤ :=
  (A140616.P17621141678928507057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. -/
def A140616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140653.P6821184278077143935

`(C(2, n)-char[A193732(n+1)])²`
-/

namespace A140653.P6821184278077143935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A140653.P6821184278077143935

noncomputable section

/-- A140653: A triangular sequence of cyclotomic polynomial doubling: For cyclotomic polynomial:c(x,n) p(x,n)=c(x,Prime[n])*c(x,2*Prime[n]).

Offset 1, canonical program `A140653.P6821184278077143935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140653 (n : ℕ) : ℤ :=
  A140653.P6821184278077143935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A140653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140843.P9580371541351845501

`∩[A140569(n+1), A141897(n+1)]`
-/

namespace A140843.P9580371541351845501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140843.P9580371541351845501

noncomputable section

/-- A140843: Primes of the form 210k + 19.

Offset 1, canonical program `A140843.P9580371541351845501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140843 (n : ℕ) : ℤ :=
  (A140843.P9580371541351845501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140844.P12090693961516773908

`∩[A140572(n+1), A142091(n+1)]`
-/

namespace A140844.P12090693961516773908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140844.P12090693961516773908

noncomputable section

/-- A140844: Primes of the form 210k + 23.

Offset 1, canonical program `A140844.P12090693961516773908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140844 (n : ℕ) : ℤ :=
  (A140844.P12090693961516773908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140846.P12576340371996529633

`∩[A140587(n+1), A142096(n+1)]`
-/

namespace A140846.P12576340371996529633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140846.P12576340371996529633

noncomputable section

/-- A140846: Primes of the form 210k + 31.

Offset 1, canonical program `A140846.P12576340371996529633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140846 (n : ℕ) : ℤ :=
  (A140846.P12576340371996529633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A140846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140847.P3135573964198693593

`∩[A140593(n+1), A142077(n+1)]`
-/

namespace A140847.P3135573964198693593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140847.P3135573964198693593

noncomputable section

/-- A140847: Primes of the form 210k + 37.

Offset 1, canonical program `A140847.P3135573964198693593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A140847 (n : ℕ) : ℤ :=
  (A140847.P3135573964198693593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A140847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140849.P15281982838425384881

`∩[A140640(n+1), A142081(n+1)]`
-/

namespace A140849.P15281982838425384881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140849.P15281982838425384881

noncomputable section

/-- A140849: Primes of the form 210k + 43.

Offset 1, canonical program `A140849.P15281982838425384881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A140849 (n : ℕ) : ℤ :=
  (A140849.P15281982838425384881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A140849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140850.P1912603944725706303

`∩[A140641(n+1), A142084(n+1)]`
-/

namespace A140850.P1912603944725706303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140850.P1912603944725706303

noncomputable section

/-- A140850: Primes of the form 210k + 47.

Offset 1, canonical program `A140850.P1912603944725706303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A140850 (n : ℕ) : ℤ :=
  (A140850.P1912603944725706303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A140850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140851.P6553668124277126355

`∩[A140655(n+1), A142088(n+1)]`
-/

namespace A140851.P6553668124277126355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140851.P6553668124277126355

noncomputable section

/-- A140851: Primes of the form 210k + 53.

Offset 1, canonical program `A140851.P6553668124277126355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A140851 (n : ℕ) : ℤ :=
  (A140851.P6553668124277126355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. -/
def A140851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140852.P12170253662013968918

`∩[A140687(n+1), A142092(n+1)]`
-/

namespace A140852.P12170253662013968918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140852.P12170253662013968918

noncomputable section

/-- A140852: Primes of the form 210k + 59.

Offset 1, canonical program `A140852.P12170253662013968918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A140852 (n : ℕ) : ℤ :=
  (A140852.P12170253662013968918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A140852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140854.P16545780512389553731

`∩[A140726(n+1), A142093(n+1)]`
-/

namespace A140854.P16545780512389553731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140854.P16545780512389553731

noncomputable section

/-- A140854: Primes of the form 210k + 61.

Offset 1, canonical program `A140854.P16545780512389553731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A140854 (n : ℕ) : ℤ :=
  (A140854.P16545780512389553731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A140854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140855.P12155307500454723385

`∩[A140731(n+1), A142097(n+1)]`
-/

namespace A140855.P12155307500454723385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140855.P12155307500454723385

noncomputable section

/-- A140855: Primes of the form 210k + 67.

Offset 1, canonical program `A140855.P12155307500454723385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140855 (n : ℕ) : ℤ :=
  (A140855.P12155307500454723385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A140855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140857.P17096779143594867496

`∩[A140742(n+1), A142078(n+1)]`
-/

namespace A140857.P17096779143594867496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140857.P17096779143594867496

noncomputable section

/-- A140857: Primes of the form 210k + 73.

Offset 1, canonical program `A140857.P17096779143594867496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140857 (n : ℕ) : ℤ :=
  (A140857.P17096779143594867496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140869.P8726722076403287160

`ceil(A154684(n+1)/2)`
-/

namespace A140869.P8726722076403287160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154684 (n + 1) : ℚ) / 2⌉

end

end A140869.P8726722076403287160

noncomputable section

/-- A140869: Triangle read by rows where T(m,n) = floor((2mn+m+n-2)/2), m >= n >= 1.

Offset 1, canonical program `A140869.P8726722076403287160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A140869 (n : ℕ) : ℤ :=
  A140869.P8726722076403287160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A140869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141113.P12877220988294223017

`eq[0, (n+1)%A000005(A000005(n+1))]+1`
-/

namespace A141113.P12877220988294223017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A000005 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141113.P12877220988294223017

noncomputable section

/-- A141113: Positive integers k such that d(d(k)) divides k, where d(k) is the number of divisors of k.

Offset 1, canonical program `A141113.P12877220988294223017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141113 (n : ℕ) : ℤ :=
  (A141113.P12877220988294223017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141570.P17933169272359299398

`∩[A140771(n+1), A141898(n+1)]`
-/

namespace A141570.P17933169272359299398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P17933169272359299398

noncomputable section

/-- A141570: Primes of the form 2*3*5*7*n+83.

Offset 1, canonical program `A141570.P17933169272359299398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A141570 (n : ℕ) : ℤ :=
  (A141570.P17933169272359299398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A141570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141657.P6051655849065492727

`p?[A307985(A072473(n+1))]`
-/

namespace A141657.P6051655849065492727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P6051655849065492727

noncomputable section

/-- A141657: a(n) = (prime(2*m)-prime(m))/6 where m is the n-th positive integer such that (prime(2*m)-prime(m))/6 is prime.

Offset 1, canonical program `A141657.P6051655849065492727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657 (n : ℕ) : ℤ :=
  A141657.P6051655849065492727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141677.P12769491184657216177

`A000005(n+1)*A000720(n+1)`
-/

namespace A141677.P12769491184657216177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000720 (n + 1)

end

end A141677.P12769491184657216177

noncomputable section

/-- A141677: Number of divisors of n times the number of primes <= n.

Offset 1, canonical program `A141677.P12769491184657216177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141677 (n : ℕ) : ℤ :=
  A141677.P12769491184657216177.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141777.P6795889752722178215

`∩[A045355(n+1), A191060(n+1)]`
-/

namespace A141777.P6795889752722178215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141777.P6795889752722178215

noncomputable section

/-- A141777: Primes of the form -3*x^2 + 4*x*y + 6*y^2 (as well as of the form 7*x^2 + 12*x*y + 2*y^2).

Offset 1, canonical program `A141777.P6795889752722178215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A141777 (n : ℕ) : ℤ :=
  (A141777.P6795889752722178215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A141777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141866.P14888924645696795511

`∩[A140772(n+1), A141890(n+1)]`
-/

namespace A141866.P14888924645696795511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141866.P14888924645696795511

noncomputable section

/-- A141866: Primes of the form 2*3*5*7*k+89, k >= 0.

Offset 1, canonical program `A141866.P14888924645696795511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A141866 (n : ℕ) : ℤ :=
  (A141866.P14888924645696795511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A141866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142295.P4010947513429565633

`A141854(eq[2, and(2, A141854(n+1))]+1)`
-/

namespace A142295.P4010947513429565633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A141854 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142295.P4010947513429565633

noncomputable section

/-- A142295: Primes congruent to 7 mod 44.

Offset 1, canonical program `A142295.P4010947513429565633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A142295 (n : ℕ) : ℤ :=
  A142295.P4010947513429565633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. -/
def A142295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142305.P14501484807531580135

`A141854(eq[1, and(3, A141854(n+1))]+1)`
-/

namespace A142305.P14501484807531580135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A141854 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142305.P14501484807531580135

noncomputable section

/-- A142305: Primes congruent to 29 mod 44.

Offset 1, canonical program `A142305.P14501484807531580135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A142305 (n : ℕ) : ℤ :=
  A142305.P14501484807531580135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A142305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142515.P6396351685030339680

`record[A093191(n+1)/A093191(n+1)%4]`
-/

namespace A142515.P6396351685030339680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093191 (n + 1) : ℚ) / (Int.tmod (A093191 (n + 1)) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142515.P6396351685030339680

noncomputable section

/-- A142515: Primes congruent to 17 mod 52.

Offset 1, canonical program `A142515.P6396351685030339680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142515.P6396351685030339680.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142517.P2418825759442637778

`A092178(eq[1, A092178(n+1)%4]+1)`
-/

namespace A142517.P2418825759442637778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092178 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142517.P2418825759442637778

noncomputable section

/-- A142517: Primes congruent to 21 mod 52.

Offset 1, canonical program `A142517.P2418825759442637778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5017 terms. -/
def A142517 (n : ℕ) : ℤ :=
  A142517.P2418825759442637778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5017 terms. -/
def A142517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142600.P14886303188790276877

`A174325(n+2)`
-/

namespace A142600.P14886303188790276877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174325 (n + 2)

end

end A142600.P14886303188790276877

noncomputable section

/-- A142600: Third trisection of A061037.

Offset 1, canonical program `A142600.P14886303188790276877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A142600 (n : ℕ) : ℤ :=
  A142600.P14886303188790276877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A142600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142978.P10033750224547927258

`A217874(A007401(n+1))`
-/

namespace A142978.P10033750224547927258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (A007401 (n + 1)).toNat

end

end A142978.P10033750224547927258

noncomputable section

/-- A142978: Table of figurate numbers for the n-dimensional cross polytopes.

Offset 1, canonical program `A142978.P10033750224547927258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A142978 (n : ℕ) : ℤ :=
  A142978.P10033750224547927258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A142978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143235.P5698293328692504766

`A000005(row(n)+1)*A000005(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143235.P5698293328692504766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.triRow n + 1) * A000005 (SequenceMachineLib.triCol n + 1)

end

end A143235.P5698293328692504766

noncomputable section

/-- A143235: Triangle read by rows: T(n,k) = tau(n)*tau(k), the product of the number of divisors.

Offset 1, canonical program `A143235.P5698293328692504766`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(row(n)+1)*A000005(col(n)+1)` (program `A143235.P5698293328692504766`, by `A143235.P5698293328692504766.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143235 (n : ℕ) : ℤ :=
  A143235.P5698293328692504766.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(row(n)+1)*A000005(col(n)+1)` (program `A143235.P5698293328692504766`, by `A143235.P5698293328692504766.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143235.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143271.P8968321967540902119

`A000005(A002024(n+1))*A002260(n+1)`
-/

namespace A143271.P8968321967540902119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002024 (n + 1)).toNat * A002260 (n + 1)

end

end A143271.P8968321967540902119

noncomputable section

/-- A143271: Triangle read by rows: A130209 * A000012 * A127648.

Offset 1, canonical program `A143271.P8968321967540902119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143271 (n : ℕ) : ℤ :=
  A143271.P8968321967540902119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143272.P7912368619552031399

`A000005(n+1)*(n+1)*(n+2)/2`
-/

namespace A143272.P7912368619552031399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * (n + 1 : ℤ) * (n + 2 : ℤ) : ℚ) / 2

end

end A143272.P7912368619552031399

noncomputable section

/-- A143272: a(n) = d(n)*T(n), where d(n) is the number of divisors of n (A000005) and T(n)=n(n+1)/2 are the triangular numbers (A000217).

Offset 1, canonical program `A143272.P7912368619552031399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143272.P7912368619552031399.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143273.P10442517176887740100

`A000005(A002260(n+1))*A002024(n+1)`
-/

namespace A143273.P10442517176887740100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A002024 (n + 1)

end

end A143273.P10442517176887740100

noncomputable section

/-- A143273: Triangle read by rows: A127648 * A000012 * A130209.

Offset 1, canonical program `A143273.P10442517176887740100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143273 (n : ℕ) : ℤ :=
  A143273.P10442517176887740100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143331.P16828638926480326570

`A026465(2*n+1)`
-/

namespace A143331.P16828638926480326570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (2 * n + 1)

end

end A143331.P16828638926480326570

noncomputable section

/-- A143331: Lengths of successive runs of 0's in the Thue-Morse sequence A010060.

Offset 1, canonical program `A143331.P16828638926480326570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143331 (n : ℕ) : ℤ :=
  A143331.P16828638926480326570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144291.P10227368257690352592

`A000217(record[n*A323162(n+1)])`
-/

namespace A144291.P10227368257690352592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144291.P10227368257690352592

noncomputable section

/-- A144291: Triangular numbers n*(n-1)/2 with n and n -1 nonprime.

Offset 1, canonical program `A144291.P10227368257690352592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144291 (n : ℕ) : ℤ :=
  A144291.P10227368257690352592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144976.P4719089841805348065

`filter[A336064(n+1), A087049(#)]`
-/

namespace A144976.P4719089841805348065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A144976.P4719089841805348065

noncomputable section

/-- A144976: Nonsquarefree numbers k such that k is divisible by the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A144976.P4719089841805348065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976 (n : ℕ) : ℤ :=
  A144976.P4719089841805348065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145016.P7226238084777437609

`p?[A263651(n+2)]`
-/

namespace A145016.P7226238084777437609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145016.P7226238084777437609

noncomputable section

/-- A145016: Primes p of the form 4k+1 for which p - floor(sqrt(p))^2 is a square.

Offset 1, canonical program `A145016.P7226238084777437609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145016 (n : ℕ) : ℤ :=
  A145016.P7226238084777437609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145312.P5025964341216795

`(n+1)*A145094(n+2)`
-/

namespace A145312.P5025964341216795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145094 (n + 2)

end

end A145312.P5025964341216795

noncomputable section

/-- A145312: Coefficients in expansion of E''_4(q), where E_4 is the Eisenstein series in A004009.

Offset 0, canonical program `A145312.P5025964341216795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A145312 (n : ℕ) : ℤ :=
  A145312.P5025964341216795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A145312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145488.P501580674884008196

`(A145474(n+1)-13)/12`
-/

namespace A145488.P501580674884008196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145474 (n + 1) - 13 : ℚ) / 12

end

end A145488.P501580674884008196

noncomputable section

/-- A145488: Numbers k such that 6k+13 is prime and 12k+13 is also prime.

Offset 1, canonical program `A145488.P501580674884008196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145488.P501580674884008196.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147594.P14715063837161271747

`A000005(n+1+a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147594.P14715063837161271747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n + 1 : ℤ) + a (n - 1)).toNat

end

end A147594.P14715063837161271747

noncomputable section

/-- A147594: a(n) = sigma_0(n + a(n-1)), with a(1) = 1.

Offset 1, canonical program `A147594.P14715063837161271747`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1+a(n-1))` (program `A147594.P14715063837161271747`, by `A147594.P14715063837161271747.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A147594 (n : ℕ) : ℤ :=
  A147594.P14715063837161271747.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1+a(n-1))` (program `A147594.P14715063837161271747`, by `A147594.P14715063837161271747.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A147594.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A147809.P2695604963517228140

`A000005((n+1)²+1)/2-1`
-/

namespace A147809.P2695604963517228140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 2 + 1) : ℚ) / 2 - 1

end

end A147809.P2695604963517228140

noncomputable section

/-- A147809: Half the number of proper divisors (> 1) of n^2 + 1, i.e., tau(n^2 + 1)/2 - 1.

Offset 1, canonical program `A147809.P2695604963517228140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147809.P2695604963517228140.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147814.P6067598058715786826

`A292046(A008864(n+1))-p?[A005100(n+1)]`
-/

namespace A147814.P6067598058715786826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 (A008864 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147814.P6067598058715786826

noncomputable section

/-- A147814: a(n) is the number of bits in the Elias omega-coded value of prime(n).

Offset 1, canonical program `A147814.P6067598058715786826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A147814 (n : ℕ) : ℤ :=
  A147814.P6067598058715786826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A147814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147956.P1737531422126429600

`eq[1, A005092(n+1)]+1`
-/

namespace A147956.P1737531422126429600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A147956.P1737531422126429600

noncomputable section

/-- A147956: All positive integers that are not multiples of any Fibonacci numbers >= 2.

Offset 1, canonical program `A147956.P1737531422126429600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4843 terms. -/
def A147956 (n : ℕ) : ℤ :=
  (A147956.P1737531422126429600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4843 terms. -/
def A147956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152211.P8934016512484736310

`(n+1)*A000005(n+1)+A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152211.P8934016512484736310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) + A000203 (n + 1)

end

end A152211.P8934016512484736310

noncomputable section

/-- A152211: a(n) = n * sigma_0(n) + sigma_1(n).

Offset 1, canonical program `A152211.P8934016512484736310`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)+A000203(n+1)` (program `A152211.P8934016512484736310`, by `A152211.P8934016512484736310.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A152211 (n : ℕ) : ℤ :=
  A152211.P8934016512484736310.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)+A000203(n+1)` (program `A152211.P8934016512484736310`, by `A152211.P8934016512484736310.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A152211.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A152235.P232875130101871600

`A007947(A000005(n+1))`
-/

namespace A152235.P232875130101871600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000005 (n + 1)).toNat

end

end A152235.P232875130101871600

noncomputable section

/-- A152235: Largest squarefree number dividing the number of divisors n.

Offset 1, canonical program `A152235.P232875130101871600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152235 (n : ℕ) : ℤ :=
  A152235.P232875130101871600.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152763.P4357628965309988966

`A000005(A000108(n))`
-/

namespace A152763.P4357628965309988966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000108 n).toNat

end

end A152763.P4357628965309988966

noncomputable section

/-- A152763: Number of divisors of Catalan number A000108(n).

Offset 0, canonical program `A152763.P4357628965309988966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152763 (n : ℕ) : ℤ :=
  A152763.P4357628965309988966.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152772.P17987001240875005932

`A000203(n+1)-3*A000005(n+1)+3`
-/

namespace A152772.P17987001240875005932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 3 * A000005 (n + 1) + 3

end

end A152772.P17987001240875005932

noncomputable section

/-- A152772: a(n) = sigma(n) - 3*d(n) + 3.

Offset 1, canonical program `A152772.P17987001240875005932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152772 (n : ℕ) : ℤ :=
  A152772.P17987001240875005932.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152911.P11080031176988882643

`record[A000203(n+1)-(A000005(n+1)+n)]`
-/

namespace A152911.P11080031176988882643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A000005 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P11080031176988882643

noncomputable section

/-- A152911: Records in A152770.

Offset 1, canonical program `A152911.P11080031176988882643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A152911 (n : ℕ) : ℤ :=
  A152911.P11080031176988882643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A152911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152983.P16244814053645438890

`A000005(A001006(n))`
-/

namespace A152983.P16244814053645438890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001006 n).toNat

end

end A152983.P16244814053645438890

noncomputable section

/-- A152983: Number of divisors of Motzkin number A001006(n).

Offset 0, canonical program `A152983.P16244814053645438890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152983 (n : ℕ) : ℤ :=
  A152983.P16244814053645438890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152993.P5731568849682305493

`n+1-A000005(n+1)-A000720(n+1)+1`
-/

namespace A152993.P5731568849682305493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) - A000720 (n + 1) + 1

end

end A152993.P5731568849682305493

noncomputable section

/-- A152993: a(n) = n - d(n) - pi(n) + 1.

Offset 1, canonical program `A152993.P5731568849682305493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152993 (n : ℕ) : ℤ :=
  A152993.P5731568849682305493.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152993.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A158573.P7707022528032758565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158573 (n : ℕ) : ℤ :=
  A158573.P7707022528032758565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132231, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158573.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A158648.P12379688915653926394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158648 (n : ℕ) : ℤ :=
  A158648.P12379688915653926394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158648.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A160550.P1136096764766705031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160550 (n : ℕ) : ℤ :=
  A160550.P1136096764766705031.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160550.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A163523.P17500706477665394313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163523 (n : ℕ) : ℤ :=
  A163523.P17500706477665394313.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163523.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A164474.P915032775425265953

`A164457(n+5)-(A286938(n+1)+A286938(n+2))`
-/

namespace A164474.P915032775425265953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 (n + 5) - (A286938 (n + 1) + A286938 (n + 2))

end

end A164474.P915032775425265953

noncomputable section

/-- A164474: Number of binary strings of length n with no substrings equal to 0001 0101 or 1100.

Offset 4, canonical program `A164474.P915032775425265953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A164474 (n : ℕ) : ℤ :=
  A164474.P915032775425265953.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A164474.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171157.P8672816315949041848

`A001221(n+1)-A171182(n+1)`
-/

namespace A171157.P8672816315949041848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A171182 (n + 1)

end

end A171157.P8672816315949041848

noncomputable section

/-- A171157: Number of distinct primes > 3 that divide n.

Offset 1, canonical program `A171157.P8672816315949041848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171157 (n : ℕ) : ℤ :=
  A171157.P8672816315949041848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171157.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A127576.P6805997865159069615

`∪[A142041(n+1), A127578(n+1)]`
-/

namespace A127576.P6805997865159069615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P6805997865159069615

noncomputable section

/-- A127576: Primes of the form 16n+15.

Offset 1, canonical program `A127576.P6805997865159069615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127576 (n : ℕ) : ℤ :=
  (A127576.P6805997865159069615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127589.P13683201596712911778

`∪[A142036(n+1), A142043(n+1)]`
-/

namespace A127589.P13683201596712911778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P13683201596712911778

noncomputable section

/-- A127589: Primes of the form 16k + 5.

Offset 1, canonical program `A127589.P13683201596712911778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127589 (n : ℕ) : ℤ :=
  (A127589.P13683201596712911778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131651.P2612238070486693050

`eq[4, A318874(n+1)]+1`
-/

namespace A131651.P2612238070486693050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P2612238070486693050

noncomputable section

/-- A131651: Positive integers obtained as the difference of two triangular numbers in exactly 4 ways.

Offset 1, canonical program `A131651.P2612238070486693050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131651 (n : ℕ) : ℤ :=
  (A131651.P2612238070486693050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133869.P3744791445234372630

`floor(A133870(n+1)/32)`
-/

namespace A133869.P3744791445234372630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133870 (n + 1) : ℚ) / 32⌋

end

end A133869.P3744791445234372630

noncomputable section

/-- A133869: Numbers k such that 32*k + 1 is prime.

Offset 1, canonical program `A133869.P3744791445234372630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133869 (n : ℕ) : ℤ :=
  A133869.P3744791445234372630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140012.P3091804146325170739

`∩[A139854(n+1), A140619(n+1)]`
-/

namespace A140012.P3091804146325170739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140012.P3091804146325170739

noncomputable section

/-- A140012: Primes of the form 40x^2+40xy+43y^2.

Offset 1, canonical program `A140012.P3091804146325170739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A140012 (n : ℕ) : ℤ :=
  (A140012.P3091804146325170739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A140012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147648.P4961228732914761023

`round(log2(A284389(val(3*n-(n-2), 2))))`
-/

namespace A147648.P4961228732914761023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A284389 (SequenceMachineLib.valuation ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat 2) : ℝ))

end

end A147648.P4961228732914761023

noncomputable section

/-- A147648: Number of distinct even superperfect numbers dividing n.

Offset 1, canonical program `A147648.P4961228732914761023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147648 (n : ℕ) : ℤ :=
  A147648.P4961228732914761023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130517.P17548095738158104865

`abs(A056951(n+1))`
-/

namespace A130517.P17548095738158104865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056951 (n + 1)|

end

end A130517.P17548095738158104865

noncomputable section

/-- A130517: Triangle read by rows: row n counts down from n in steps of 2, then counts up the remaining elements in the set {1,2,...,n}, again in steps of 2.

Offset 1, canonical program `A130517.P17548095738158104865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130517 (n : ℕ) : ℤ :=
  A130517.P17548095738158104865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130675.P361296147729104695

`A008480(n+1)*A112624(n+1)`
-/

namespace A130675.P361296147729104695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A112624 (n + 1)

end

end A130675.P361296147729104695

noncomputable section

/-- A130675: Factorial of bigomega(n).

Offset 1, canonical program `A130675.P361296147729104695`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A130675 (n : ℕ) : ℤ :=
  A130675.P361296147729104695.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A130675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131099.P17198853455723490305

`(n+1)*A002324(n+1)`
-/

namespace A131099.P17198853455723490305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002324 (n + 1)

end

end A131099.P17198853455723490305

noncomputable section

/-- A131099: a(n) = n times number of divisors of n of form 3m+1 - n times number of divisors of form 3m+2.

Offset 1, canonical program `A131099.P17198853455723490305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131099 (n : ℕ) : ℤ :=
  A131099.P17198853455723490305.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135619.P12431492879390114788

`A134720(n+1)/2`
-/

namespace A135619.P12431492879390114788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134720 (n + 1) : ℚ) / 2

end

end A135619.P12431492879390114788

noncomputable section

/-- A135619: Even Padovan numbers divided by 2.

Offset 1, canonical program `A135619.P12431492879390114788`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135619.P12431492879390114788.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141459.P15198710371829255089

`∏{d}[n, A090585(#)]`
-/

namespace A141459.P15198710371829255089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A090585 d

end

end A141459.P15198710371829255089

noncomputable section

/-- A141459: a(n) = Product_{p-1 divides n} p, where p is an odd prime.

Offset 0, canonical program `A141459.P15198710371829255089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141459 (n : ℕ) : ℤ :=
  A141459.P15198710371829255089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143299.P15563677956109418683

`a(A066628(n))+1` with `a(0)=1`
-/

namespace A143299.P15563677956109418683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A066628 n).toNat + 1

end

end A143299.P15563677956109418683

noncomputable section

/-- A143299: Number of terms in the Zeckendorf representation of every number in row n of the Wythoff array.

Offset 1, canonical program `A143299.P15563677956109418683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143299 (n : ℕ) : ℤ :=
  (A143299.P15563677956109418683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143433.P568368968491830476

`round(A010054(n)/A228826(n))`
-/

namespace A143433.P568368968491830476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010054 n : ℚ) / (A228826 n : ℚ))

end

end A143433.P568368968491830476

noncomputable section

/-- A143433: Expansion of f(-x, x^3) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A143433.P568368968491830476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143433 (n : ℕ) : ℤ :=
  A143433.P568368968491830476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143520.P7922226448334733284

`(n+1)*A112329(n+1)`
-/

namespace A143520.P7922226448334733284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112329 (n + 1)

end

end A143520.P7922226448334733284

noncomputable section

/-- A143520: a(n) is n times number of divisors of n if n is odd, zero if n is twice odd, n times number of divisors of n/4 if n is divisible by 4.

Offset 1, canonical program `A143520.P7922226448334733284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143520 (n : ℕ) : ℤ :=
  A143520.P7922226448334733284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145377.P12032856002733329322

`A002324(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145377.P12032856002733329322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002324 (n + 1)) 2

end

end A145377.P12032856002733329322

noncomputable section

/-- A145377: a(n) = A002324(n) mod 2.

Offset 1, canonical program `A145377.P12032856002733329322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145377 (n : ℕ) : ℤ :=
  A145377.P12032856002733329322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145394.P404841157394091667

`(A000203(n+1)+2*A002324(n+1))/3`
-/

namespace A145394.P404841157394091667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 2 * A002324 (n + 1) : ℚ) / 3

end

end A145394.P404841157394091667

noncomputable section

/-- A145394: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are considered equivalent if one can be rotated by a multiple of Pi/3 to give the other.

Offset 1, canonical program `A145394.P404841157394091667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145394 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145394.P404841157394091667.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145394.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A158341.P1356125387868036850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158341 (n : ℕ) : ℤ :=
  A158341.P1356125387868036850.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158341.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A127906.P12019539335536084683

`n*A007088(n)`
-/

namespace A127906.P12019539335536084683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007088 n

end

end A127906.P12019539335536084683

noncomputable section

/-- A127906: a(n) = (n in base 10) * (n in base 2).

Offset 0, canonical program `A127906.P12019539335536084683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127906 (n : ℕ) : ℤ :=
  A127906.P12019539335536084683.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127988.P16825810271688874760

`8*A000695(n)`
-/

namespace A127988.P16825810271688874760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000695 n

end

end A127988.P16825810271688874760

noncomputable section

/-- A127988: Sequence determining the parity of A025748.

Offset 0, canonical program `A127988.P16825810271688874760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988 (n : ℕ) : ℤ :=
  A127988.P16825810271688874760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128203.P8982327639887167633

`A007953(n*(n+1))`
-/

namespace A128203.P8982327639887167633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n * (n + 1))

end

end A128203.P8982327639887167633

noncomputable section

/-- A128203: Sum of the digits of n*(n+1).

Offset 0, canonical program `A128203.P8982327639887167633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128203 (n : ℕ) : ℤ :=
  A128203.P8982327639887167633.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128212.P12226177893353124099

`A007953(A007954(n+1))`
-/

namespace A128212.P12226177893353124099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007954 (n + 1)).toNat

end

end A128212.P12226177893353124099

noncomputable section

/-- A128212: a(n) = Sum_digits(p), where p is the product of the digits of n.

Offset 1, canonical program `A128212.P12226177893353124099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128212 (n : ℕ) : ℤ :=
  A128212.P12226177893353124099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128244.P376771842225601192

`A007954(A007953(n+1))`
-/

namespace A128244.P376771842225601192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007953 (n + 1)).toNat

end

end A128244.P376771842225601192

noncomputable section

/-- A128244: Let s be the sum of the digits of n; a(n) is the product of the digits of s.

Offset 1, canonical program `A128244.P376771842225601192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128244 (n : ℕ) : ℤ :=
  A128244.P376771842225601192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A128244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128936.P7498908394709636250

`C(n, A007953(n))`
-/

namespace A128936.P7498908394709636250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A007953 n).toNat

end

end A128936.P7498908394709636250

noncomputable section

/-- A128936: a(n) = binomial(n, sum_digits_n).

Offset 0, canonical program `A128936.P7498908394709636250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128936 (n : ℕ) : ℤ :=
  (A128936.P7498908394709636250.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132189.P8063069834652726525

`2*A132345(n+1)`
-/

namespace A132189.P8063069834652726525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132345 (n + 1)

end

end A132189.P8063069834652726525

noncomputable section

/-- A132189: Number of non-constant 3-term geometric progressions with no term exceeding n.

Offset 1, canonical program `A132189.P8063069834652726525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132189 (n : ℕ) : ℤ :=
  A132189.P8063069834652726525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132628.P1682638940278180444

`lt[A000203(n+1)%A007953(n+1), 1]+1`
-/

namespace A132628.P1682638940278180444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A007953 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A132628.P1682638940278180444

noncomputable section

/-- A132628: Numbers k for which the sum of their digits divides sigma(k).

Offset 1, canonical program `A132628.P1682638940278180444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132628 (n : ℕ) : ℤ :=
  (A132628.P1682638940278180444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135124.P15966436925166688135

`A033045(A000695(n+1))`
-/

namespace A135124.P15966436925166688135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A000695 (n + 1)).toNat

end

end A135124.P15966436925166688135

noncomputable section

/-- A135124: Numbers such that the digital sums in base 2, base 4 and base 8 are all equal.

Offset 1, canonical program `A135124.P15966436925166688135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135124 (n : ℕ) : ℤ :=
  A135124.P15966436925166688135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136613.P13511050304393903560

`10^A055642(n)*A007953(n)+n`
-/

namespace A136613.P13511050304393903560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) * (A007953 n : ℚ) + (n : ℚ)

end

end A136613.P13511050304393903560

noncomputable section

/-- A136613: Concatenation of (sum of digits of n) and n.

Offset 0, canonical program `A136613.P13511050304393903560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136613 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136613.P13511050304393903560.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139374.P15184791697190815955

`A007953(A000032(n))`
-/

namespace A139374.P15184791697190815955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000032 n).toNat

end

end A139374.P15184791697190815955

noncomputable section

/-- A139374: Digit sum of Lucas numbers.

Offset 0, canonical program `A139374.P15184791697190815955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139374 (n : ℕ) : ℤ :=
  A139374.P15184791697190815955.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139707.P12191564313970735729

`A007088(A139706(n+1))`
-/

namespace A139707.P12191564313970735729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A139706 (n + 1)).toNat

end

end A139707.P12191564313970735729

noncomputable section

/-- A139707: Take n in binary. Rotate the binary digits to the right until a 1 once again appears as the leftmost digit. a(n) is result written in binary.

Offset 1, canonical program `A139707.P12191564313970735729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139707 (n : ℕ) : ℤ :=
  A139707.P12191564313970735729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139762.P8061600169167864390

`A007953(a(n-1))+A007953(n)` with `a(0)=0`
-/

namespace A139762.P8061600169167864390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007953 (a (n - 1)).toNat + A007953 n

end

end A139762.P8061600169167864390

noncomputable section

/-- A139762: a(n)=Sum_digits_of_a(n-1)+Sum_digits_of(n).

Offset 0, canonical program `A139762.P8061600169167864390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A139762 (n : ℕ) : ℤ :=
  A139762.P8061600169167864390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A139762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140105.P12886462540237060989

`A007088(A049606(n))`
-/

namespace A140105.P12886462540237060989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A049606 n).toNat

end

end A140105.P12886462540237060989

noncomputable section

/-- A140105: Trailing zeros removed from n! in binary.

Offset 0, canonical program `A140105.P12886462540237060989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140105 (n : ℕ) : ℤ :=
  A140105.P12886462540237060989.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141022.P7720121601839125489

`n%(1+A007953(n))`
-/

namespace A141022.P7720121601839125489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (1 + A007953 n)

end

end A141022.P7720121601839125489

noncomputable section

/-- A141022: a(n) = n mod ((sum of digits of n)+1).

Offset 0, canonical program `A141022.P7720121601839125489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141022 (n : ℕ) : ℤ :=
  A141022.P7720121601839125489.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141063.P7516955287568242112

`(n+1)%A007953(A000040(n+1))`
-/

namespace A141063.P7516955287568242112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (A000040 (n + 1)).toNat)

end

end A141063.P7516955287568242112

noncomputable section

/-- A141063: a(n) = n mod (sum of digits of prime(n)).

Offset 1, canonical program `A141063.P7516955287568242112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141063 (n : ℕ) : ℤ :=
  A141063.P7516955287568242112.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141063.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141071.P16936850486521262733

`A000040(n+1)%A007953(n+1)`
-/

namespace A141071.P16936850486521262733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A007953 (n + 1))

end

end A141071.P16936850486521262733

noncomputable section

/-- A141071: a(n) = prime(n) mod (sum of base-10 digits of n) where prime(n) is the n-th prime.

Offset 1, canonical program `A141071.P16936850486521262733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141071 (n : ℕ) : ℤ :=
  A141071.P16936850486521262733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141071.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147568.P4088074706858455040

`2*A000695(n)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147568.P4088074706858455040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n + 3

end

end A147568.P4088074706858455040

noncomputable section

/-- A147568: a(n) = 2*A000695(n)+3.

Offset 0, canonical program `A147568.P4088074706858455040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568 (n : ℕ) : ℤ :=
  A147568.P4088074706858455040.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147848.P5380392809057908469

`∑{d}[n+1, A008966(#)*A093148((n+1)/#-1)]`
-/

namespace A147848.P5380392809057908469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A093148 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A147848.P5380392809057908469

noncomputable section

/-- A147848: Number (up to isomorphism) of groups of order 2n that have Z/nZ as a subgroup (that is, that have an element of order n).

Offset 1, canonical program `A147848.P5380392809057908469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147848 (n : ℕ) : ℤ :=
  A147848.P5380392809057908469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154402.P17788350560659442917

`A305426(n+1)+A036987(n+1)`
-/

namespace A154402.P17788350560659442917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (n + 1) + A036987 (n + 1)

end

end A154402.P17788350560659442917

noncomputable section

/-- A154402: Inverse Moebius transform of Fredholm-Rueppel sequence, cf. A036987.

Offset 1, canonical program `A154402.P17788350560659442917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154402 (n : ℕ) : ℤ :=
  A154402.P17788350560659442917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154402.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A166238.P1577242016306719435

`val(record[A265263(A265263(n)+1+n)], 2)`
-/

namespace A166238.P1577242016306719435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 (A265263 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A166238.P1577242016306719435

noncomputable section

/-- A166238: Horizontal para-Narayana sequence: says which column of 3rd-order Zeckendorf array (starting column count at 0) contains n.

Offset 1, canonical program `A166238.P1577242016306719435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166238 (n : ℕ) : ℤ :=
  (A166238.P1577242016306719435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A166238.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128173.P11177856239651542119

`A244042(n)+2*A244042(A004526(n))`
-/

namespace A128173.P11177856239651542119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n + 2 * A244042 (A004526 n).toNat

end

end A128173.P11177856239651542119

noncomputable section

/-- A128173: Numbers in ternary reflected Gray code order.

Offset 0, canonical program `A128173.P11177856239651542119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128173 (n : ℕ) : ℤ :=
  A128173.P11177856239651542119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128173.provenance : SequenceMachineLib.Provenance := .conjectured

