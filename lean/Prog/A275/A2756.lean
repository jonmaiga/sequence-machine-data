import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A275601: Triangle read by rows which is constructed with the diagram of the isosceles triangle of A279693 and filling the empty cells with zeros.

The programs for A275601, there is no canonical definition to state claims against.
-/

/-! ## A275601.P7649822510952286153

`abs(A281011(n+1))`
-/

namespace A275601.P7649822510952286153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281011 (n + 1)|

end

end A275601.P7649822510952286153

/-! ## A275601.P8952205436438138680

`A281011(C(n+1, n))²`
-/

namespace A275601.P8952205436438138680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281011 (Nat.choose (n + 1) n) ^ 2

end

end A275601.P8952205436438138680

/-! ## A275601.P2479718745679207592

`A281011(root((n+1)², 2))²`
-/

namespace A275601.P2479718745679207592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281011 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat ^ 2

end

end A275601.P2479718745679207592

/-! ## A275601.P17512794314312573208

`A281011(ceil(sqrt(n²+4)))^4`
-/

namespace A275601.P17512794314312573208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281011 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat ^ 4

end

end A275601.P17512794314312573208

/-! ## A275601.P905580841256774305

`dr(A281011(A000027(n+1)))`
-/

namespace A275601.P905580841256774305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A281011 (A000027 (n + 1)).toNat)

end

end A275601.P905580841256774305

/-! ## A275601.P79844763327594339

`gcd(A000038(n), A281011(n+1))`
-/

namespace A275601.P79844763327594339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A281011 (n + 1))

end

end A275601.P79844763327594339

/-! ## A275601.P9438585653343809950

`lcm(A020985(n), A281011(n+1))`
-/

namespace A275601.P9438585653343809950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A281011 (n + 1))

end

end A275601.P9438585653343809950

/-! ## A275601.P10275228897295760178

`and(1, A281011(A139553(n)+n))`
-/

namespace A275601.P10275228897295760178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A281011 (A139553 n + (n : ℤ)).toNat)

end

end A275601.P10275228897295760178

/-! ## A275601.P2497943288924131360

`and(A158388(n), A281011(n+1))`
-/

namespace A275601.P2497943288924131360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A281011 (n + 1))

end

end A275601.P2497943288924131360

/-! ## A275601.P4641674484937272271

`and(A262681(n), A281011(n+1))`
-/

namespace A275601.P4641674484937272271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262681 n) (A281011 (n + 1))

end

end A275601.P4641674484937272271

/-! ## A275601.P10303330024045286832

`and(A267773(n), A281011(n+1))`
-/

namespace A275601.P10303330024045286832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267773 n) (A281011 (n + 1))

end

end A275601.P10303330024045286832

/-! ## A275601.P7860201109831519348

`and(A267871(n), A281011(n+1))`
-/

namespace A275601.P7860201109831519348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267871 n) (A281011 (n + 1))

end

end A275601.P7860201109831519348

/-! ## A275601.P6585232159399028810

`and(A281011(n+1), A288120(n))`
-/

namespace A275601.P6585232159399028810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281011 (n + 1)) (A288120 n)

end

end A275601.P6585232159399028810

/-! ## A275601.P10191857608098612326

`and(A281011(n+1), A361338(n))`
-/

namespace A275601.P10191857608098612326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281011 (n + 1)) (A361338 n)

end

end A275601.P10191857608098612326

/-! ## A275601.P8016003085481310663

`A000045((A281011(n+1)^n)²)`
-/

namespace A275601.P8016003085481310663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A281011 (n + 1) ^ n) ^ 2).toNat

end

end A275601.P8016003085481310663

/-! ## A275601.P2114308367924530437

`A000045(A281011(n+1)^(2*n))`
-/

namespace A275601.P2114308367924530437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A281011 (n + 1) ^ (2 * n)).toNat

end

end A275601.P2114308367924530437

/-! ## A275601.P15564809519122050221

`and(1, A109010(n)*A281011(n+1))`
-/

namespace A275601.P15564809519122050221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A109010 n * A281011 (n + 1))

end

end A275601.P15564809519122050221

/-! ## A275601.P9442480188964797506

`and(A066715(A066715(n)), A281011(n+1))`
-/

namespace A275601.P9442480188964797506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066715 (A066715 n).toNat) (A281011 (n + 1))

end

end A275601.P9442480188964797506

/-! ## A275601.P17542926940333716619

`A281011(A000027(n+1))*A281011(n+1)`
-/

namespace A275601.P17542926940333716619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281011 (A000027 (n + 1)).toNat * A281011 (n + 1)

end

end A275601.P17542926940333716619

/-!
# A275605: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, j-2 is member of a block >= b-1.

The programs for A275605, there is no canonical definition to state claims against.
-/

/-! ## A275605.P12840437677435274246

`A287641(∑[n+3])`
-/

namespace A275605.P12840437677435274246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275605.P12840437677435274246

/-! ## A275605.P15851244537833143504

`gcd(A000038(n), A287641(A055998(n+1)))`
-/

namespace A275605.P15851244537833143504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A287641 (A055998 (n + 1)).toNat)

end

end A275605.P15851244537833143504

/-! ## A275605.P15808940368293858825

`A287641(A055998(n+1))+A000007(n+1)`
-/

namespace A275605.P15808940368293858825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A275605.P15808940368293858825

/-! ## A275605.P11939314861735169432

`A000035(2*n+1)*A287641(A055998(n+1))`
-/

namespace A275605.P11939314861735169432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A287641 (A055998 (n + 1)).toNat

end

end A275605.P11939314861735169432

/-! ## A275605.P9738128167849755118

`A287641(A055998(n+1))+A008683(9*(n+1))`
-/

namespace A275605.P9738128167849755118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A055998 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A275605.P9738128167849755118

/-!
# A275606: Spiral constructed on the nodes of the triangular net such that a(n) = signum(A274920(n)).

The programs for A275606, the canonical program `A275606.P16564742963572456798` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275606 has offset 0).

The definition of A275606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275606.P12353883130612838174

`A345439(n)%3`
-/

namespace A275606.P12353883130612838174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345439 n) 3

end

end A275606.P12353883130612838174

namespace A275606

/-- `A345439(n)%3` -/
def P12353883130612838174.Spec : Prop :=
  ∀ n, P12353883130612838174.a n = A275606 n

end A275606

/-! ## A275606.P14322480742928505618

`7%A274921(n)`
-/

namespace A275606.P14322480742928505618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A274921 n)

end

end A275606.P14322480742928505618

namespace A275606

/-- `7%A274921(n)` -/
def P14322480742928505618.Spec : Prop :=
  ∀ n, P14322480742928505618.a n = A275606 n

end A275606

/-! ## A275606.P12156238241983624141

`floor(sqrt(A274920(n)))`
-/

namespace A275606.P12156238241983624141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A274920 n)

end

end A275606.P12156238241983624141

namespace A275606

/-- `floor(sqrt(A274920(n)))` -/
def P12156238241983624141.Spec : Prop :=
  ∀ n, P12156238241983624141.a n = A275606 n

end A275606

/-! ## A275606.P16564742963572456798

`A328818(n)²%3`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A275606

/-- `A328818(n)²%3` -/
def P16564742963572456798.Spec : Prop :=
  ∀ n, P16564742963572456798.a n = A275606 n

theorem P16564742963572456798.correct : P16564742963572456798.Spec := by
  intro n
  simp only [A275606]

end A275606

/-! ## A275606.P986509678965755532

`A397826(n+1)%2`
-/

namespace A275606.P986509678965755532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397826 (n + 1)) 2

end

end A275606.P986509678965755532

namespace A275606

/-- `A397826(n+1)%2` -/
def P986509678965755532.Spec : Prop :=
  ∀ n, P986509678965755532.a n = A275606 n

end A275606

/-! ## A275606.P10821481274451550167

`floor(A274921(floor(Δ[n²]/2))/2)`
-/

namespace A275606.P10821481274451550167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274921 ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌋.toNat : ℚ) / 2⌋

end

end A275606.P10821481274451550167

namespace A275606

/-- `floor(A274921(floor(Δ[n²]/2))/2)` -/
def P10821481274451550167.Spec : Prop :=
  ∀ n, P10821481274451550167.a n = A275606 n

end A275606

/-! ## A275606.P4206707361116786107

`A010872(A345439(n))`
-/

namespace A275606.P4206707361116786107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A345439 n).toNat

end

end A275606.P4206707361116786107

namespace A275606

/-- `A010872(A345439(n))` -/
def P4206707361116786107.Spec : Prop :=
  ∀ n, P4206707361116786107.a n = A275606 n

end A275606

/-! ## A275606.P5082941245111024647

`A011655(abs(A328818(n)))`
-/

namespace A275606.P5082941245111024647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 |A328818 n|.toNat

end

end A275606.P5082941245111024647

namespace A275606

/-- `A011655(abs(A328818(n)))` -/
def P5082941245111024647.Spec : Prop :=
  ∀ n, P5082941245111024647.a n = A275606 n

end A275606

/-! ## A275606.P6743624809867596447

`A010872(A328818(n)²)`
-/

namespace A275606.P6743624809867596447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A328818 n ^ 2).toNat

end

end A275606.P6743624809867596447

namespace A275606

/-- `A010872(A328818(n)²)` -/
def P6743624809867596447.Spec : Prop :=
  ∀ n, P6743624809867596447.a n = A275606 n

end A275606

/-! ## A275606.P2934118294598712537

`A011655(A328818(n)²)`
-/

namespace A275606.P2934118294598712537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A328818 n ^ 2).toNat

end

end A275606.P2934118294598712537

namespace A275606

/-- `A011655(A328818(n)²)` -/
def P2934118294598712537.Spec : Prop :=
  ∀ n, P2934118294598712537.a n = A275606 n

end A275606

/-! ## A275606.P4167210849107742330

`A033684(A328818(n)²)`
-/

namespace A275606.P4167210849107742330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A328818 n ^ 2).toNat

end

end A275606.P4167210849107742330

namespace A275606

/-- `A033684(A328818(n)²)` -/
def P4167210849107742330.Spec : Prop :=
  ∀ n, P4167210849107742330.a n = A275606 n

end A275606

/-! ## A275606.P13313173610579182483

`A000035(A397826(n+1))`
-/

namespace A275606.P13313173610579182483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A397826 (n + 1)).toNat

end

end A275606.P13313173610579182483

namespace A275606

/-- `A000035(A397826(n+1))` -/
def P13313173610579182483.Spec : Prop :=
  ∀ n, P13313173610579182483.a n = A275606 n

end A275606

/-! ## A275606.P2084875399960128464

`A057427(n*A274920(n))`
-/

namespace A275606.P2084875399960128464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A274920 n).toNat

end

end A275606.P2084875399960128464

namespace A275606

/-- `A057427(n*A274920(n))` -/
def P2084875399960128464.Spec : Prop :=
  ∀ n, P2084875399960128464.a n = A275606 n

end A275606

/-! ## A275606.P8278808176439806641

`A000045(abs(A328818(n)))%2`
-/

namespace A275606.P8278808176439806641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 |A328818 n|.toNat) 2

end

end A275606.P8278808176439806641

namespace A275606

/-- `A000045(abs(A328818(n)))%2` -/
def P8278808176439806641.Spec : Prop :=
  ∀ n, P8278808176439806641.a n = A275606 n

end A275606

/-! ## A275606.P4118698286489540484

`and(1, A004396(abs(A328818(n))))`
-/

namespace A275606.P4118698286489540484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004396 |A328818 n|.toNat)

end

end A275606.P4118698286489540484

namespace A275606

/-- `and(1, A004396(abs(A328818(n))))` -/
def P4118698286489540484.Spec : Prop :=
  ∀ n, P4118698286489540484.a n = A275606 n

end A275606

/-! ## A275606.P1073083613530735546

`and(1, A004396(A328818(n)²))`
-/

namespace A275606.P1073083613530735546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004396 (A328818 n ^ 2).toNat)

end

end A275606.P1073083613530735546

namespace A275606

/-- `and(1, A004396(A328818(n)²))` -/
def P1073083613530735546.Spec : Prop :=
  ∀ n, P1073083613530735546.a n = A275606 n

end A275606

/-! ## A275606.P4192802118991817508

`and(A020527(n), A397826(n+1))`
-/

namespace A275606.P4192802118991817508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020527 n) (A397826 (n + 1))

end

end A275606.P4192802118991817508

namespace A275606

/-- `and(A020527(n), A397826(n+1))` -/
def P4192802118991817508.Spec : Prop :=
  ∀ n, P4192802118991817508.a n = A275606 n

end A275606

/-! ## A275606.P1345593831011167824

`and(A020737(n), A397826(n+1))`
-/

namespace A275606.P1345593831011167824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A397826 (n + 1))

end

end A275606.P1345593831011167824

namespace A275606

/-- `and(A020737(n), A397826(n+1))` -/
def P1345593831011167824.Spec : Prop :=
  ∀ n, P1345593831011167824.a n = A275606 n

end A275606

/-! ## A275606.P16561895362050080768

`and(A027608(n), A397826(n+1))`
-/

namespace A275606.P16561895362050080768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A397826 (n + 1))

end

end A275606.P16561895362050080768

namespace A275606

/-- `and(A027608(n), A397826(n+1))` -/
def P16561895362050080768.Spec : Prop :=
  ∀ n, P16561895362050080768.a n = A275606 n

end A275606

/-! ## A275606.P17075010681051293447

`and(A028400(n), A397826(n+1))`
-/

namespace A275606.P17075010681051293447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028400 n) (A397826 (n + 1))

end

end A275606.P17075010681051293447

namespace A275606

/-- `and(A028400(n), A397826(n+1))` -/
def P17075010681051293447.Spec : Prop :=
  ∀ n, P17075010681051293447.a n = A275606 n

end A275606

/-!
# A275607: a(n) = 2*12^n*Gamma(n+1/2)*(n+1)/(sqrt(Pi)*Gamma(n+3)).

The programs for A275607, there is no canonical definition to state claims against.
-/

/-! ## A275607.P6067473850339488966

`(n+1)*A000168(n)`
-/

namespace A275607.P6067473850339488966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000168 n

end

end A275607.P6067473850339488966

/-! ## A275607.P11552147354857389256

`3^(n-1)*A038629(n)`
-/

namespace A275607.P11552147354857389256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A038629 n : ℚ)

end

end A275607.P11552147354857389256

/-! ## A275607.P12704562008530671559

`(n+1)*3^n/(2*n+1)*A000108(n+1)`
-/

namespace A275607.P12704562008530671559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((3 ^ n : ℚ) / (2 * n + 1 : ℚ) * (A000108 (n + 1) : ℚ))

end

end A275607.P12704562008530671559

/-! ## A275607.P464132389536485201

`2*A005159(n)-A000168(n)`
-/

namespace A275607.P464132389536485201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005159 n - A000168 n

end

end A275607.P464132389536485201

/-! ## A275607.P17523935667800407692

`A000168(n)*A008619(2*n)`
-/

namespace A275607.P17523935667800407692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000168 n * A008619 (2 * n)

end

end A275607.P17523935667800407692

/-! ## A275607.P3951958687570805701

`A000168(n)/A000108(n)*A000984(n)`
-/

namespace A275607.P3951958687570805701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000168 n : ℚ) / (A000108 n : ℚ) * (A000984 n : ℚ)

end

end A275607.P3951958687570805701

/-! ## A275607.P18342553083110287777

`(n+1)*A238396(∑[n])`
-/

namespace A275607.P18342553083110287777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A238396 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275607.P18342553083110287777

/-!
# A275608: Numbers that divide no nonzero terms of A003422.

The programs for A275608, there is no canonical definition to state claims against.
-/

/-! ## A275608.P3382241920640209140

`comp[A049045(n+1)-1]+1`
-/

namespace A275608.P3382241920640209140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049045 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A275608.P3382241920640209140

/-! ## A275608.P7829899041757627402

`eq[0, A013584(n+1)]+1`
-/

namespace A275608.P7829899041757627402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275608.P7829899041757627402

/-! ## A275608.P12785151728655430898

`eq[0, A013584(A028310(n))]`
-/

namespace A275608.P12785151728655430898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275608.P12785151728655430898

/-! ## A275608.P16613973628341738127

`A020725(eq[0, A013584(n+1)])`
-/

namespace A275608.P16613973628341738127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275608.P16613973628341738127

/-! ## A275608.P13348209554142873926

`A065475(eq[0, A013584(n+1)])`
-/

namespace A275608.P13348209554142873926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275608.P13348209554142873926

/-! ## A275608.P17972713921883804771

`lt[A013584(n+1), A000120(n)]+1`
-/

namespace A275608.P17972713921883804771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275608.P17972713921883804771

/-! ## A275608.P10434783708146041420

`lt[A013584(n+1), A301855(n+1)]+1`
-/

namespace A275608.P10434783708146041420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275608.P10434783708146041420

/-! ## A275608.P151786324602976677

`eq[0, A013584(gcd(n, A008458(n)))]`
-/

namespace A275608.P151786324602976677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275608.P151786324602976677

/-! ## A275608.P9195886710648907000

`eq[0, A013584(A233583(n+1))]`
-/

namespace A275608.P9195886710648907000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013584 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275608.P9195886710648907000

/-! ## A275608.P9111563935565962520

`record[A114327(A000124(n))+3-A013584(n+1)]`
-/

namespace A275608.P9111563935565962520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A000124 n).toNat + 3 - A013584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275608.P9111563935565962520

/-!
# A275609: Square spiral in which each new term is the least nonnegative integer distinct from its (already assigned) eight neighbors.

The programs for A275609, there is no canonical definition to state claims against.
-/

/-! ## A275609.P14367644454507461179

`A274917(n)-1`
-/

namespace A275609.P14367644454507461179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274917 n - 1

end

end A275609.P14367644454507461179

/-! ## A275609.P7977713306806374522

`A070198(n)%A274917(n)`
-/

namespace A275609.P7977713306806374522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A274917 n)

end

end A275609.P7977713306806374522

/-! ## A275609.P14114407439470125738

`A196305(n)%A274917(n)`
-/

namespace A275609.P14114407439470125738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A274917 n)

end

end A275609.P14114407439470125738

/-! ## A275609.P6732314673235041471

`A198277(n)%A274917(n)`
-/

namespace A275609.P6732314673235041471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A274917 n)

end

end A275609.P6732314673235041471

/-! ## A275609.P3935669128060247331

`A030494(n+1)%A274917(n)`
-/

namespace A275609.P3935669128060247331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A274917 n)

end

end A275609.P3935669128060247331

/-! ## A275609.P9869167138272576368

`A065017(n+1)%A274917(n)`
-/

namespace A275609.P9869167138272576368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065017 (n + 1)) (A274917 n)

end

end A275609.P9869167138272576368

/-! ## A275609.P17405235578113539232

`A069759(n+1)%A274917(n)`
-/

namespace A275609.P17405235578113539232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069759 (n + 1)) (A274917 n)

end

end A275609.P17405235578113539232

/-! ## A275609.P11276436059702936239

`A069760(n+1)%A274917(n)`
-/

namespace A275609.P11276436059702936239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069760 (n + 1)) (A274917 n)

end

end A275609.P11276436059702936239

/-! ## A275609.P16788838313858616490

`A072828(n+1)%A274917(n)`
-/

namespace A275609.P16788838313858616490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A274917 n)

end

end A275609.P16788838313858616490

/-! ## A275609.P9450018336291295992

`A079782(n+1)%A274917(n)`
-/

namespace A275609.P9450018336291295992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A274917 n)

end

end A275609.P9450018336291295992

/-! ## A275609.P213500127444762098

`A083685(n+1)%A274917(n)`
-/

namespace A275609.P213500127444762098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A274917 n)

end

end A275609.P213500127444762098

/-! ## A275609.P3353381126812899297

`A101795(n+1)%A274917(n)`
-/

namespace A275609.P3353381126812899297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101795 (n + 1)) (A274917 n)

end

end A275609.P3353381126812899297

/-! ## A275609.P14049112638408453106

`A101796(n+1)%A274917(n)`
-/

namespace A275609.P14049112638408453106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101796 (n + 1)) (A274917 n)

end

end A275609.P14049112638408453106

/-! ## A275609.P8446890526581117390

`A101797(n+1)%A274917(n)`
-/

namespace A275609.P8446890526581117390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101797 (n + 1)) (A274917 n)

end

end A275609.P8446890526581117390

/-! ## A275609.P1375686169546649047

`A101798(n+1)%A274917(n)`
-/

namespace A275609.P1375686169546649047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101798 (n + 1)) (A274917 n)

end

end A275609.P1375686169546649047

/-! ## A275609.P4737460482780583572

`A101995(n+1)%A274917(n)`
-/

namespace A275609.P4737460482780583572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101995 (n + 1)) (A274917 n)

end

end A275609.P4737460482780583572

/-! ## A275609.P3391767579949615793

`A101996(n+1)%A274917(n)`
-/

namespace A275609.P3391767579949615793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101996 (n + 1)) (A274917 n)

end

end A275609.P3391767579949615793

/-! ## A275609.P1833492381018984729

`A101997(n+1)%A274917(n)`
-/

namespace A275609.P1833492381018984729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101997 (n + 1)) (A274917 n)

end

end A275609.P1833492381018984729

/-! ## A275609.P10627065650898053347

`A101998(n+1)%A274917(n)`
-/

namespace A275609.P10627065650898053347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101998 (n + 1)) (A274917 n)

end

end A275609.P10627065650898053347

/-! ## A275609.P17793804869846912240

`A101999(n+1)%A274917(n)`
-/

namespace A275609.P17793804869846912240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101999 (n + 1)) (A274917 n)

end

end A275609.P17793804869846912240

/-!
# A275610: Hexagonal spiral constructed on the nodes of the triangular net in which every 1 of A275606 is replaced with the least positive integer not yet in the sequence.

The programs for A275610, there is no canonical definition to state claims against.
-/

/-! ## A275610.P7327069457896246478

`∑[A275606(n)]*A275606(n)`
-/

namespace A275610.P7327069457896246478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A275606 n

end

end A275610.P7327069457896246478

/-! ## A275610.P6442879250344028651

`lcm(A345439(n)%3, ∑[A275606(n)])`
-/

namespace A275610.P6442879250344028651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275606 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A345439 n) 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275610.P6442879250344028651

/-! ## A275610.P17828331764076069931

`7%A274921(n)*∑[7%A274921(n)]`
-/

namespace A275610.P17828331764076069931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A274921 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A274921 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275610.P17828331764076069931

/-! ## A275610.P9067666900523172310

`A328818(n)²%3*∑[A328818(n)²%3]`
-/

namespace A275610.P9067666900523172310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328818 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328818 n ^ 2) 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275610.P9067666900523172310

/-! ## A275610.P12192703633332928603

`7%A274921(n)*∑[A010872(A345439(n))]`
-/

namespace A275610.P12192703633332928603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A345439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A274921 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275610.P12192703633332928603

/-! ## A275610.P15703870486024284618

`A328818(n)²%3*∑[A010872(A345439(n))]`
-/

namespace A275610.P15703870486024284618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A345439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328818 n ^ 2) 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275610.P15703870486024284618

/-!
# A275611: a(0) = 1, a(n) = n * a(n-1)^2 + a(n-1).

The programs for A275611, the canonical program `A275611.P7200701182087743665` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275611 has offset 0).

The definition of A275611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)²+a(n-1)` (program `A275611.P7200701182087743665`, by `A275611.P7200701182087743665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275611.P7200701182087743665

`n*a(n-1)²+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275611

/-- `n*a(n-1)²+a(n-1)` -/
def P7200701182087743665.Spec : Prop :=
  ∀ n, (P7200701182087743665.a n : ℤ) = A275611 n

theorem P7200701182087743665.correct : P7200701182087743665.Spec := by
  intro n
  simp only [A275611]

end A275611

/-! ## A275611.P5770567768385373494

`a(n-1)*(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A275611.P5770567768385373494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n * a (n - 1) + 1)

end

end A275611.P5770567768385373494

namespace A275611

/-- `a(n-1)*(n*a(n-1)+1)` -/
def P5770567768385373494.Spec : Prop :=
  ∀ n, (P5770567768385373494.a n : ℤ) = A275611 n

end A275611

/-! ## A275611.P10823299441485475205

`xor(1, n*a(n-1))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A275611.P10823299441485475205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (n * a (n - 1)) * a (n - 1)

end

end A275611.P10823299441485475205

namespace A275611

/-- `xor(1, n*a(n-1))*a(n-1)` -/
def P10823299441485475205.Spec : Prop :=
  ∀ n, (P10823299441485475205.a n : ℤ) = A275611 n

end A275611

/-! ## A275611.P2200169006248015988

`A295391(n)*a(n-1)` with `a(0)=1`
-/

namespace A275611.P2200169006248015988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295391 n * a (n - 1)

end

end A275611.P2200169006248015988

namespace A275611

/-- `A295391(n)*a(n-1)` -/
def P2200169006248015988.Spec : Prop :=
  ∀ n, P2200169006248015988.a n = A275611 n

end A275611

/-!
# A275615: Decimal expansion of 22/111.

The programs for A275615, the canonical program `A275615.P15931674240123195158` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275615 has offset 0).

The definition of A275615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275615.P15931674240123195158

`dr(Δ[n^6])`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275615

/-- `dr(Δ[n^6])` -/
def P15931674240123195158.Spec : Prop :=
  ∀ n, (P15931674240123195158.a n : ℤ) = A275615 n

theorem P15931674240123195158.correct : P15931674240123195158.Spec := by
  intro n
  simp only [A275615]

end A275615

/-!
# A275616: Numbers k such that k and omega(k) are relatively prime, where omega(n) (A001221) is the number of distinct prime divisors of n.

The programs for A275616, the canonical program `A275616.P14201198473443466928` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275616 has offset 1).

The definition of A275616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275616.P14201198473443466928

`eq[1, gcd(n+1, A001221(n+1))]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275616

/-- `eq[1, gcd(n+1, A001221(n+1))]+1` -/
def P14201198473443466928.Spec : Prop :=
  ∀ n, (P14201198473443466928.a n : ℤ) = A275616 (n + 1)

theorem P14201198473443466928.correct : P14201198473443466928.Spec := by
  intro n
  simp only [A275616, Nat.add_sub_cancel]

end A275616

/-! ## A275616.P9470600251031254103

`eq[1, gcd(n, A001221(A000007(n)+n))]`
-/

namespace A275616.P9470600251031254103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001221 (A000007 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275616.P9470600251031254103

namespace A275616

/-- `eq[1, gcd(n, A001221(A000007(n)+n))]` -/
def P9470600251031254103.Spec : Prop :=
  ∀ n, (P9470600251031254103.a n : ℤ) = A275616 (n + 1)

end A275616

/-! ## A275616.P2711505460234447966

`record[lcm(n+1, A087802(n+1))/A087802(n+1)]`
-/

namespace A275616.P2711505460234447966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A087802 (n + 1)) : ℚ) / (A087802 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275616.P2711505460234447966

namespace A275616

/-- `record[lcm(n+1, A087802(n+1))/A087802(n+1)]` -/
def P2711505460234447966.Spec : Prop :=
  ∀ n, P2711505460234447966.a n = (A275616 (n + 1) : ℚ)

end A275616

/-! ## A275616.P10748998022618040045

`lt[n%A318369(n+1), 1]+1`
-/

namespace A275616.P10748998022618040045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A318369 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275616.P10748998022618040045

namespace A275616

/-- `lt[n%A318369(n+1), 1]+1` -/
def P10748998022618040045.Spec : Prop :=
  ∀ n, (P10748998022618040045.a n : ℤ) = A275616 (n + 1)

end A275616

/-!
# A275617: Number of (1,2,2,2)-chromatic cubic graphs with 2n nodes.

The programs for A275617, there is no canonical definition to state claims against.
-/

/-! ## A275617.P13243917076297185511

`A229082(A046825(n))`
-/

namespace A275617.P13243917076297185511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229082 (A046825 n).toNat

end

end A275617.P13243917076297185511

/-! ## A275617.P12885876229424993831

`A325162(A046826(n)!)`
-/

namespace A275617.P12885876229424993831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325162 (Nat.factorial (A046826 n).toNat)

end

end A275617.P12885876229424993831

/-!
# A275618: Number of (1,2,2,2,2)-chromatic cubic graphs with 2n nodes.

The programs for A275618, there is no canonical definition to state claims against.
-/

/-! ## A275618.P6019562623562382134

`A088931(A280291(n+2))`
-/

namespace A275618.P6019562623562382134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (A280291 (n + 2)).toNat

end

end A275618.P6019562623562382134

/-! ## A275618.P1841094490593451859

`A343239(A249933(n))+A000045(n)`
-/

namespace A275618.P1841094490593451859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343239 (A249933 n).toNat + A000045 n

end

end A275618.P1841094490593451859

/-!
# A275620: Number of (1,1,2)-chromatic cubic graphs with 2n nodes.

The programs for A275620, there is no canonical definition to state claims against.
-/

/-! ## A275620.P2810158773198618612

`A167865(C(2*n, n)/(n+1)*n!)+floor(n/(xor(n, n+1)+1))`
-/

namespace A275620.P2810158773198618612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ))).toNat + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A275620.P2810158773198618612

/-! ## A275620.P15723418104032072121

`A002415(n)+A002264(A004102(n))`
-/

namespace A275620.P15723418104032072121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + A002264 (A004102 n).toNat

end

end A275620.P15723418104032072121

/-!
# A275621: Number of (1,1,2,3)-chromatic cubic graphs with 2n nodes.

The programs for A275621, there is no canonical definition to state claims against.
-/

/-! ## A275621.P4720458113447283291

`∏{p}[A134232(∑[floor(n*2^(n-3))]), #]`
-/

namespace A275621.P4720458113447283291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134232 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275621.P4720458113447283291

/-! ## A275621.P509860511588663655

`A344290(A148130(n))`
-/

namespace A275621.P509860511588663655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344290 (A148130 n).toNat

end

end A275621.P509860511588663655

/-!
# A275623: Integers of the form Sum_{k=1..m} d(k), where d(k) is the decimal fraction 0.k (e.g. d(999)=0.999).

The programs for A275623, there is no canonical definition to state claims against.
-/

/-! ## A275623.P12849766255510612921

`A275572(n+1)%or(1, A054464(n+1))`
-/

namespace A275623.P12849766255510612921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275572 (n + 1)) (Int.lor 1 (A054464 (n + 1)))

end

end A275623.P12849766255510612921

/-! ## A275623.P18441430152634658307

`A275625(A054464(n+1))`
-/

namespace A275623.P18441430152634658307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275625 (A054464 (n + 1)).toNat

end

end A275623.P18441430152634658307

/-! ## A275623.P6164517736205868177

`A275572(n+1)-A000217(A054464(n+1))`
-/

namespace A275623.P6164517736205868177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275572 (n + 1) - A000217 (A054464 (n + 1)).toNat

end

end A275623.P6164517736205868177

/-!
# A275624: a(n) = minimal m such that Sum_{k=1..m} 0.k >= n.

The programs for A275624, there is no canonical definition to state claims against.
-/

/-! ## A275624.P4170883394752304527

`A384664(n+1)-A305391(A000111(n))`
-/

namespace A275624.P4170883394752304527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384664 (n + 1) - A305391 (A000111 n).toNat

end

end A275624.P4170883394752304527

/-! ## A275624.P11272592965231392270

`eq[A257993(n+1), A316717(A304360(n+1))]`
-/

namespace A275624.P11272592965231392270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A304360 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275624.P11272592965231392270

/-! ## A275624.P6350738833015303698

`eq[A061358(A276055(n)), A276088(3*(n+1))]`
-/

namespace A275624.P6350738833015303698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A276055 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275624.P6350738833015303698

/-!
# A275627: Expansion of (6*x^5+5*x^4+4*x^3+3*x^2+2*x+8)/(1-x-x^6).

The programs for A275627, the canonical program `A275627.P10080106931936059352` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275627 has offset 0).

The definition of A275627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8+2x+3x^2+4x^3+5x^4+6x^5)/(1-x-x^6))` (program `A275627.P10080106931936059352`, by `A275627.P10080106931936059352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275627.P8523087791487465757

`a(n-1)+a(n-6)` with `a(0)=8, a(1)=10, a(2)=13, a(3)=17, a(4)=22, a(5)=28`
-/

namespace A275627.P8523087791487465757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 10, 13, 17, 22, 28] fun n a =>
  a (n - 1) + a (n - 6)

end

end A275627.P8523087791487465757

namespace A275627

/-- `a(n-1)+a(n-6)` -/
def P8523087791487465757.Spec : Prop :=
  ∀ n, (P8523087791487465757.a n : ℤ) = A275627 n

end A275627

/-! ## A275627.P10080106931936059352

`ogf((8+2x+3x^2+4x^3+5x^4+6x^5)/(1-x-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275627

/-- `ogf((8+2x+3x^2+4x^3+5x^4+6x^5)/(1-x-x^6))` -/
def P10080106931936059352.Spec : Prop :=
  ∀ n, P10080106931936059352.a n = A275627 n

theorem P10080106931936059352.correct : P10080106931936059352.Spec := by
  intro n
  simp only [A275627]

end A275627

/-! ## A275627.P2295575543213045742

`A005708(n+11)+A005708(n)`
-/

namespace A275627.P2295575543213045742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 11) + A005708 n

end

end A275627.P2295575543213045742

namespace A275627

/-- `A005708(n+11)+A005708(n)` -/
def P2295575543213045742.Spec : Prop :=
  ∀ n, P2295575543213045742.a n = A275627 n

end A275627

/-! ## A275627.P17469188488037428581

`A193941(n+3)+A193941(n+5)+A193941(n+7)`
-/

namespace A275627.P17469188488037428581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193941 (n + 3) + (A193941 (n + 5) + A193941 (n + 7))

end

end A275627.P17469188488037428581

namespace A275627

/-- `A193941(n+3)+A193941(n+5)+A193941(n+7)` -/
def P17469188488037428581.Spec : Prop :=
  ∀ n, P17469188488037428581.a n = A275627 n

end A275627

/-! ## A275627.P9563986810425871579

`A003413(n+4)+Δ[A003413(n+6)]`
-/

namespace A275627.P9563986810425871579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003413 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003413 (n + 4) + (f1 (n + 1) - f1 n)

end

end A275627.P9563986810425871579

namespace A275627

/-- `A003413(n+4)+Δ[A003413(n+6)]` -/
def P9563986810425871579.Spec : Prop :=
  ∀ n, P9563986810425871579.a n = A275627 n

end A275627

/-! ## A275627.P12649374382548224

`A003413(n+4)-(A003413(n+6)-A003413(n+7))`
-/

namespace A275627.P12649374382548224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003413 (n + 4) - (A003413 (n + 6) - A003413 (n + 7))

end

end A275627.P12649374382548224

namespace A275627

/-- `A003413(n+4)-(A003413(n+6)-A003413(n+7))` -/
def P12649374382548224.Spec : Prop :=
  ∀ n, P12649374382548224.a n = A275627 n

end A275627

/-!
# A275628: Pisot sequence E(31,51), a(n)=[a(n-1)^2/a(n-2)+1/2].

The programs for A275628, the canonical program `A275628.P11139470369158827704` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275628 has offset 0).

The definition of A275628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275628.P11139470369158827704

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=31, a(1)=51`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275628

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P11139470369158827704.Spec : Prop :=
  ∀ n, P11139470369158827704.a n = A275628 n

theorem P11139470369158827704.correct : P11139470369158827704.Spec := by
  intro n
  simp only [A275628]

end A275628

/-! ## A275628.P17133129053527199049

`round(a(n-1)²/a(n-2))` with `a(0)=31, a(1)=51`
-/

namespace A275628.P17133129053527199049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31, 51] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A275628.P17133129053527199049

namespace A275628

/-- `round(a(n-1)²/a(n-2))` -/
def P17133129053527199049.Spec : Prop :=
  ∀ n, P17133129053527199049.a n = A275628 n

end A275628

/-!
# A275629: The least odd prime leaving a prime remainder when divided by each of the first n odd primes.

The programs for A275629, there is no canonical definition to state claims against.
-/

/-! ## A275629.P13272412249226002389

`p?[Δ[A099857(A073464(n+2))]]`
-/

namespace A275629.P13272412249226002389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 (A073464 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275629.P13272412249226002389

/-! ## A275629.P4441004598097857110

`p?[A133263(A330719(n+1)+1)]`
-/

namespace A275629.P4441004598097857110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A330719 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275629.P4441004598097857110

/-!
# A275630: a(n) = product of distinct primes dividing prime(n)^2 - 1.

The programs for A275630, the canonical program `A275630.P6039504158649628288` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275630 has offset 1).

The definition of A275630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275630.P6039504158649628288

`A007947(A084920(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A275630

/-- `A007947(A084920(n+1))` -/
def P6039504158649628288.Spec : Prop :=
  ∀ n, P6039504158649628288.a n = A275630 (n + 1)

theorem P6039504158649628288.correct : P6039504158649628288.Spec := by
  intro n
  simp only [A275630, Nat.add_sub_cancel]

end A275630

/-! ## A275630.P1913602527945616263

`A077066(n+1)*A356489(n+1)`
-/

namespace A275630.P1913602527945616263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (n + 1) * A356489 (n + 1)

end

end A275630.P1913602527945616263

namespace A275630

/-- `A077066(n+1)*A356489(n+1)` -/
def P1913602527945616263.Spec : Prop :=
  ∀ n, P1913602527945616263.a n = A275630 (n + 1)

end A275630

/-! ## A275630.P2300392837964216121

`lcm(A077063(n+1), A077066(n+1))`
-/

namespace A275630.P2300392837964216121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077063 (n + 1)) (A077066 (n + 1))

end

end A275630.P2300392837964216121

namespace A275630

/-- `lcm(A077063(n+1), A077066(n+1))` -/
def P2300392837964216121.Spec : Prop :=
  ∀ n, (P2300392837964216121.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P8562699519655553687

`A007947(A008864(n+1))*A356489(n+1)`
-/

namespace A275630.P8562699519655553687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A008864 (n + 1)).toNat * A356489 (n + 1)

end

end A275630.P8562699519655553687

namespace A275630

/-- `A007947(A008864(n+1))*A356489(n+1)` -/
def P8562699519655553687.Spec : Prop :=
  ∀ n, P8562699519655553687.a n = A275630 (n + 1)

end A275630

/-! ## A275630.P18423034635981906588

`A078637(A006093(n+1))/A000040(n+1)`
-/

namespace A275630.P18423034635981906588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078637 (A006093 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A275630.P18423034635981906588

namespace A275630

/-- `A078637(A006093(n+1))/A000040(n+1)` -/
def P18423034635981906588.Spec : Prop :=
  ∀ n, P18423034635981906588.a n = (A275630 (n + 1) : ℚ)

end A275630

/-! ## A275630.P64473790151211902

`A078637(A156037(n+1))/A000040(n+1)`
-/

namespace A275630.P64473790151211902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078637 (A156037 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A275630.P64473790151211902

namespace A275630

/-- `A078637(A156037(n+1))/A000040(n+1)` -/
def P64473790151211902.Spec : Prop :=
  ∀ n, P64473790151211902.a n = (A275630 (n + 1) : ℚ)

end A275630

/-! ## A275630.P5774332634730389772

`∏{p}[A142705(A000040(n+1)), #]`
-/

namespace A275630.P5774332634730389772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P5774332634730389772

namespace A275630

/-- `∏{p}[A142705(A000040(n+1)), #]` -/
def P5774332634730389772.Spec : Prop :=
  ∀ n, (P5774332634730389772.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P3559828670367518086

`∏{p}[A084921(n+1), #]`
-/

namespace A275630.P3559828670367518086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P3559828670367518086

namespace A275630

/-- `∏{p}[A084921(n+1), #]` -/
def P3559828670367518086.Spec : Prop :=
  ∀ n, (P3559828670367518086.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P9049856932653032114

`∏{p}[lcm(A006093(n+1), A008864(n+1)), #]`
-/

namespace A275630.P9049856932653032114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006093 (n + 1)) (A008864 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A275630.P9049856932653032114

namespace A275630

/-- `∏{p}[lcm(A006093(n+1), A008864(n+1)), #]` -/
def P9049856932653032114.Spec : Prop :=
  ∀ n, (P9049856932653032114.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P6595848446974076307

`∏{p}[A049001(n+1)+1, #]`
-/

namespace A275630.P6595848446974076307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P6595848446974076307

namespace A275630

/-- `∏{p}[A049001(n+1)+1, #]` -/
def P6595848446974076307.Spec : Prop :=
  ∀ n, (P6595848446974076307.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P3957605876313666566

`∏{p}[1-A001248(n+1), #]`
-/

namespace A275630.P3957605876313666566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P3957605876313666566

namespace A275630

/-- `∏{p}[1-A001248(n+1), #]` -/
def P3957605876313666566.Spec : Prop :=
  ∀ n, (P3957605876313666566.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P12779492785176884034

`∏{p}[floor(sqrt(A138402(n+1))), #]`
-/

namespace A275630.P12779492785176884034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A138402 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P12779492785176884034

namespace A275630

/-- `∏{p}[floor(sqrt(A138402(n+1))), #]` -/
def P12779492785176884034.Spec : Prop :=
  ∀ n, (P12779492785176884034.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P8763824310743519274

`∏{p}[Δ[A007504(n)]²-1, #]`
-/

namespace A275630.P8763824310743519274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P8763824310743519274

namespace A275630

/-- `∏{p}[Δ[A007504(n)]²-1, #]` -/
def P8763824310743519274.Spec : Prop :=
  ∀ n, (P8763824310743519274.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P3906392779132109735

`∏{p}[record[A006530(n+2)²]-1, #]`
-/

namespace A275630.P3906392779132109735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P3906392779132109735

namespace A275630

/-- `∏{p}[record[A006530(n+2)²]-1, #]` -/
def P3906392779132109735.Spec : Prop :=
  ∀ n, (P3906392779132109735.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P8172492559977031180

`∏{p}[record[A014963(n+2)²]-1, #]`
-/

namespace A275630.P8172492559977031180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P8172492559977031180

namespace A275630

/-- `∏{p}[record[A014963(n+2)²]-1, #]` -/
def P8172492559977031180.Spec : Prop :=
  ∀ n, (P8172492559977031180.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P13400729562050945200

`∏{p}[(A040976(n+1)+2)²-1, #]`
-/

namespace A275630.P13400729562050945200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275630.P13400729562050945200

namespace A275630

/-- `∏{p}[(A040976(n+1)+2)²-1, #]` -/
def P13400729562050945200.Spec : Prop :=
  ∀ n, (P13400729562050945200.a n : ℤ) = A275630 (n + 1)

end A275630

/-! ## A275630.P13166020538975065424

`∏{p}[1-A000040(n+1)², A014963(#)]`
-/

namespace A275630.P13166020538975065424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A275630.P13166020538975065424

namespace A275630

/-- `∏{p}[1-A000040(n+1)², A014963(#)]` -/
def P13166020538975065424.Spec : Prop :=
  ∀ n, P13166020538975065424.a n = A275630 (n + 1)

end A275630

/-!
# A275631: Primes p such that the product of the distinct prime factors of p^2-1 is less than p.

The programs for A275631, there is no canonical definition to state claims against.
-/

/-! ## A275631.P18090924319787938403

`p?[A375019(n+1)]`
-/

namespace A275631.P18090924319787938403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275631.P18090924319787938403

/-! ## A275631.P4510334709539406942

`∩[A373789(n+1), A375019(n+1)]`
-/

namespace A275631.P4510334709539406942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275631.P4510334709539406942

/-! ## A275631.P18225147092374450087

`∩[A049098(n+1), A375019(n+1)]`
-/

namespace A275631.P18225147092374450087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275631.P18225147092374450087

/-! ## A275631.P6227573923819459655

`∩[A045323(n+1), A375019(n+1)]`
-/

namespace A275631.P6227573923819459655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275631.P6227573923819459655

/-! ## A275631.P14186454120807961914

`∩[A045419(n+1), A375019(n+1)]`
-/

namespace A275631.P14186454120807961914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275631.P14186454120807961914

/-!
# A275632: Andrews's 4-shadow function THETA.BAR_3(q).

The programs for A275632, the canonical program `A275632.P10606339663826706146` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275632 has offset 0).

The definition of A275632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275632.P10606339663826706146

`A004275(∑{d}[n, A004396(#)]+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275632

/-- `A004275(∑{d}[n, A004396(#)]+1)` -/
def P10606339663826706146.Spec : Prop :=
  ∀ n, P10606339663826706146.a n = A275632 n

theorem P10606339663826706146.correct : P10606339663826706146.Spec := by
  intro n
  simp only [A275632]

end A275632

/-! ## A275632.P10823823433522987956

`A004273(∑{d}[n, A004396(#)])+1`
-/

namespace A275632.P10823823433522987956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ d ∈ Nat.divisors (f1 n), A004396 d).toNat + 1

end

end A275632.P10823823433522987956

namespace A275632

/-- `A004273(∑{d}[n, A004396(#)])+1` -/
def P10823823433522987956.Spec : Prop :=
  ∀ n, P10823823433522987956.a n = A275632 n

end A275632

/-! ## A275632.P12250044670884401711

`A065033(2*2*∑{d}[n, A004396(#)])`
-/

namespace A275632.P12250044670884401711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (2 * (∑ d ∈ Nat.divisors (f1 n), A004396 d))).toNat

end

end A275632.P12250044670884401711

namespace A275632

/-- `A065033(2*2*∑{d}[n, A004396(#)])` -/
def P12250044670884401711.Spec : Prop :=
  ∀ n, P12250044670884401711.a n = A275632 n

end A275632

/-! ## A275632.P9984371369013244357

`A118917(2*(n+1))+2*∑{d}[n, A004396(#)]`
-/

namespace A275632.P9984371369013244357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (2 * (n + 1)) + 2 * (∑ d ∈ Nat.divisors (f1 n), A004396 d)

end

end A275632.P9984371369013244357

namespace A275632

/-- `A118917(2*(n+1))+2*∑{d}[n, A004396(#)]` -/
def P9984371369013244357.Spec : Prop :=
  ∀ n, P9984371369013244357.a n = A275632 n

end A275632

/-! ## A275632.P13437149091756368284

`A005843(∑{d}[n, A004396(#)])+A000007(n)`
-/

namespace A275632.P13437149091756368284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ d ∈ Nat.divisors (f1 n), A004396 d).toNat + A000007 n

end

end A275632.P13437149091756368284

namespace A275632

/-- `A005843(∑{d}[n, A004396(#)])+A000007(n)` -/
def P13437149091756368284.Spec : Prop :=
  ∀ n, P13437149091756368284.a n = A275632 n

end A275632

/-! ## A275632.P16113843438431161186

`A109613(2*∑{d}[n, A004396(#)])-A057427(n)`
-/

namespace A275632.P16113843438431161186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * (∑ d ∈ Nat.divisors (f1 n), A004396 d)).toNat - A057427 n

end

end A275632.P16113843438431161186

namespace A275632

/-- `A109613(2*∑{d}[n, A004396(#)])-A057427(n)` -/
def P16113843438431161186.Spec : Prop :=
  ∀ n, P16113843438431161186.a n = A275632 n

end A275632

/-! ## A275632.P7142999858118598954

`A080545(A054271(n+1))+2*∑{d}[n, A004396(#)]`
-/

namespace A275632.P7142999858118598954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (A054271 (n + 1)).toNat + 2 * (∑ d ∈ Nat.divisors (f1 n), A004396 d)

end

end A275632.P7142999858118598954

namespace A275632

/-- `A080545(A054271(n+1))+2*∑{d}[n, A004396(#)]` -/
def P7142999858118598954.Spec : Prop :=
  ∀ n, P7142999858118598954.a n = A275632 n

end A275632

/-! ## A275632.P12094118285601884957

`A203568(A186423(n+1))+2*∑{d}[n, A004396(#)]`
-/

namespace A275632.P12094118285601884957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203568 (A186423 (n + 1)).toNat + 2 * (∑ d ∈ Nat.divisors (f1 n), A004396 d)

end

end A275632.P12094118285601884957

namespace A275632

/-- `A203568(A186423(n+1))+2*∑{d}[n, A004396(#)]` -/
def P12094118285601884957.Spec : Prop :=
  ∀ n, P12094118285601884957.a n = A275632 n

end A275632

/-! ## A275632.P4330785630941796785

`A080545((n+1)²)+2*∑{d}[n, A004396(#)]`
-/

namespace A275632.P4330785630941796785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 ((n + 1) ^ 2) + 2 * (∑ d ∈ Nat.divisors (f1 n), A004396 d)

end

end A275632.P4330785630941796785

namespace A275632

/-- `A080545((n+1)²)+2*∑{d}[n, A004396(#)]` -/
def P4330785630941796785.Spec : Prop :=
  ∀ n, P4330785630941796785.a n = A275632 n

end A275632

/-!
# A275633: Andrews's shadow difference function D_3(q).

The programs for A275633, there is no canonical definition to state claims against.
-/

/-! ## A275633.P457933672274020235

`A237833(A233583(n+1))%A220507(n+2)`
-/

namespace A275633.P457933672274020235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237833 (A233583 (n + 1)).toNat) (A220507 (n + 2))

end

end A275633.P457933672274020235

/-! ## A275633.P17427407243895752739

`∑{e}[2^n, A237833(#)]`
-/

namespace A275633.P17427407243895752739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A237833 (Nat.factorization (f1 n) p)

end

end A275633.P17427407243895752739

/-! ## A275633.P7190949226199073560

`A237833(xor(n, C(A080054(n), n²)))`
-/

namespace A275633.P7190949226199073560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237833 (Nat.xor n (Nat.choose (A080054 n).toNat (n ^ 2)))

end

end A275633.P7190949226199073560

/-! ## A275633.P18372728579812893240

`A237833(A001222(lcm(2, A000079(n))))`
-/

namespace A275633.P18372728579812893240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237833 (A001222 (Int.lcm 2 (A000079 n))).toNat

end

end A275633.P18372728579812893240

/-! ## A275633.P13457470006996885254

`A237833(n^A001221(A000079(n)))`
-/

namespace A275633.P13457470006996885254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237833 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A001221 (A000079 n).toNat : ℤ))).toNat

end

end A275633.P13457470006996885254

/-!
# A275634: Expansion of ( 3-2*x-2*x^2 ) / ( 1-5*x+2*x^2+3*x^3 ).

The programs for A275634, the canonical program `A275634.P12233597764850257171` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275634 has offset 0).

The definition of A275634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-2x-2x^2)/(1-5x+2x^2+3x^3))` (program `A275634.P12233597764850257171`, by `A275634.P12233597764850257171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275634.P12233597764850257171

`ogf((3-2x-2x^2)/(1-5x+2x^2+3x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275634

/-- `ogf((3-2x-2x^2)/(1-5x+2x^2+3x^3))` -/
def P12233597764850257171.Spec : Prop :=
  ∀ n, P12233597764850257171.a n = A275634 n

theorem P12233597764850257171.correct : P12233597764850257171.Spec := by
  intro n
  simp only [A275634]

end A275634

/-! ## A275634.P16427034824515527241

`5*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=3, a(1)=13, a(2)=57`
-/

namespace A275634.P16427034824515527241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 57] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2) - 3 * a (n - 3)

end

end A275634.P16427034824515527241

namespace A275634

/-- `5*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P16427034824515527241.Spec : Prop :=
  ∀ n, P16427034824515527241.a n = A275634 n

end A275634

/-! ## A275634.P12525264759233706736

`A287806(n+1)/2`
-/

namespace A275634.P12525264759233706736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287806 (n + 1) : ℚ) / 2

end

end A275634.P12525264759233706736

namespace A275634

/-- `A287806(n+1)/2` -/
def P12525264759233706736.Spec : Prop :=
  ∀ n, P12525264759233706736.a n = (A275634 n : ℚ)

end A275634

/-! ## A275634.P7212244934261098920

`Δ[∑[A287806(n)]/2]`
-/

namespace A275634.P7212244934261098920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287806 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275634.P7212244934261098920

namespace A275634

/-- `Δ[∑[A287806(n)]/2]` -/
def P7212244934261098920.Spec : Prop :=
  ∀ n, P7212244934261098920.a n = (A275634 n : ℚ)

end A275634

/-! ## A275634.P12435674482472465773

`record[A287806(A286619(n))/2]`
-/

namespace A275634.P12435674482472465773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287806 (A286619 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275634.P12435674482472465773

namespace A275634

/-- `record[A287806(A286619(n))/2]` -/
def P12435674482472465773.Spec : Prop :=
  ∀ n, P12435674482472465773.a n = (A275634 n : ℚ)

end A275634

/-! ## A275634.P18020045232265181260

`2^A008683(A006450(n+1))*A287806(n+1)`
-/

namespace A275634.P18020045232265181260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A287806 (n + 1) : ℚ)

end

end A275634.P18020045232265181260

namespace A275634

/-- `2^A008683(A006450(n+1))*A287806(n+1)` -/
def P18020045232265181260.Spec : Prop :=
  ∀ n, P18020045232265181260.a n = (A275634 n : ℚ)

end A275634

/-!
# A275635: a(n) = (3^n-1)*(3^n-3)*(3^n+3)/4!.

The programs for A275635, the canonical program `A275635.P913360196368355570` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275635 has offset 0).

The definition of A275635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275635.P913360196368355570

`(9-3^(2+n)-9^n+27^n)/24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275635

/-- `(9-3^(2+n)-9^n+27^n)/24` -/
def P913360196368355570.Spec : Prop :=
  ∀ n, P913360196368355570.a n = (A275635 n : ℚ)

end A275635

/-! ## A275635.P3927390389866454347

`(3^n-1)*(3^n-3)*(3^n+3)/4!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275635.P3927390389866454347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) * ((3 ^ n : ℤ) - 3) * (3 ^ n + 3 : ℤ) : ℚ) / (Nat.factorial 4 : ℚ)

end

end A275635.P3927390389866454347

namespace A275635

/-- `(3^n-1)*(3^n-3)*(3^n+3)/4!` -/
def P3927390389866454347.Spec : Prop :=
  ∀ n, P3927390389866454347.a n = (A275635 n : ℚ)

end A275635

/-! ## A275635.P8035893026243603820

`A003462(n)*A054878(A004273(n))`
-/

namespace A275635.P8035893026243603820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A054878 (A004273 n).toNat

end

end A275635.P8035893026243603820

namespace A275635

/-- `A003462(n)*A054878(A004273(n))` -/
def P8035893026243603820.Spec : Prop :=
  ∀ n, P8035893026243603820.a n = A275635 n

end A275635

/-! ## A275635.P6509749890344696969

`lcm(A024023(n), A054878(A004273(n)))`
-/

namespace A275635.P6509749890344696969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024023 n) (A054878 (A004273 n).toNat)

end

end A275635.P6509749890344696969

namespace A275635

/-- `lcm(A024023(n), A054878(A004273(n)))` -/
def P6509749890344696969.Spec : Prop :=
  ∀ n, (P6509749890344696969.a n : ℤ) = A275635 n

end A275635

/-! ## A275635.P5560366474705838299

`Δ[A111277(n)]*A054878(A004273(n))`
-/

namespace A275635.P5560366474705838299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054878 (A004273 n).toNat

end

end A275635.P5560366474705838299

namespace A275635

/-- `Δ[A111277(n)]*A054878(A004273(n))` -/
def P5560366474705838299.Spec : Prop :=
  ∀ n, P5560366474705838299.a n = A275635 n

end A275635

/-! ## A275635.P10190975030286492621

`(A003462(n)²-A003462(n))*A124302(n)`
-/

namespace A275635.P10190975030286492621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003462 n ^ 2 - A003462 n) * A124302 n

end

end A275635.P10190975030286492621

namespace A275635

/-- `(A003462(n)²-A003462(n))*A124302(n)` -/
def P10190975030286492621.Spec : Prop :=
  ∀ n, P10190975030286492621.a n = A275635 n

end A275635

/-!
# A275636: a(n) = (3^n-1)*(3^n+3)/3!.

The programs for A275636, the canonical program `A275636.P8381221619285769142` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275636 has offset 0).

The definition of A275636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n-1)*(3^n+3)/3!` (program `A275636.P4471713851691905318`, by `A275636.P4471713851691905318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275636.P8381221619285769142

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=2, a(2)=16`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275636

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P8381221619285769142.Spec : Prop :=
  ∀ n, P8381221619285769142.a n = A275636 n

theorem P8381221619285769142.correct : P8381221619285769142.Spec := by
  intro n
  simp only [A275636]

end A275636

/-! ## A275636.P5484432350052734369

`(2*3^n+9^n-3)/6`
-/

namespace A275636.P5484432350052734369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 3 ^ n + 9 ^ n : ℤ) - 3 : ℚ) / 6

end

end A275636.P5484432350052734369

namespace A275636

/-- `(2*3^n+9^n-3)/6` -/
def P5484432350052734369.Spec : Prop :=
  ∀ n, P5484432350052734369.a n = (A275636 n : ℚ)

theorem P5484432350052734369.correct : P5484432350052734369.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A275636, Nat.add_sub_cancel, A275636.P5484432350052734369.a, A275636.P8381221619285769142.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A275636, Nat.add_sub_cancel, A275636.P5484432350052734369.a, A275636.P8381221619285769142.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275636

/-! ## A275636.P4471713851691905318

`(3^n-1)*(3^n+3)/3!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275636.P4471713851691905318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) * (3 ^ n + 3 : ℤ) : ℚ) / (Nat.factorial 3 : ℚ)

end

end A275636.P4471713851691905318

namespace A275636

/-- `(3^n-1)*(3^n+3)/3!` -/
def P4471713851691905318.Spec : Prop :=
  ∀ n, P4471713851691905318.a n = (A275636 n : ℚ)

theorem P4471713851691905318.correct : P4471713851691905318.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A275636, Nat.add_sub_cancel, A275636.P4471713851691905318.a, A275636.P8381221619285769142.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A275636, Nat.add_sub_cancel, A275636.P4471713851691905318.a, A275636.P8381221619285769142.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275636

/-! ## A275636.P15639189303411257777

`floor(A122008(2*n+1)/2)`
-/

namespace A275636.P15639189303411257777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122008 (2 * n + 1) : ℚ) / 2⌋

end

end A275636.P15639189303411257777

namespace A275636

/-- `floor(A122008(2*n+1)/2)` -/
def P15639189303411257777.Spec : Prop :=
  ∀ n, P15639189303411257777.a n = A275636 n

end A275636

/-! ## A275636.P10101433274847035089

`(3^n-1)/2*A094388(n)`
-/

namespace A275636.P10101433274847035089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - 1 : ℚ) / 2 * (A094388 n : ℚ)

end

end A275636.P10101433274847035089

namespace A275636

/-- `(3^n-1)/2*A094388(n)` -/
def P10101433274847035089.Spec : Prop :=
  ∀ n, P10101433274847035089.a n = (A275636 n : ℚ)

end A275636

/-! ## A275636.P476199404183783910

`A024023(n)*A124302(n)`
-/

namespace A275636.P476199404183783910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A124302 n

end

end A275636.P476199404183783910

namespace A275636

/-- `A024023(n)*A124302(n)` -/
def P476199404183783910.Spec : Prop :=
  ∀ n, P476199404183783910.a n = A275636 n

end A275636

/-! ## A275636.P9289961736917917077

`record[A232801(n)-A076040(n)]`
-/

namespace A275636.P9289961736917917077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 n - A076040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275636.P9289961736917917077

namespace A275636

/-- `record[A232801(n)-A076040(n)]` -/
def P9289961736917917077.Spec : Prop :=
  ∀ n, P9289961736917917077.a n = A275636 n

end A275636

/-! ## A275636.P4782777855686372048

`A003462(2*n)-A219205(n)`
-/

namespace A275636.P4782777855686372048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * n) - A219205 n

end

end A275636.P4782777855686372048

namespace A275636

/-- `A003462(2*n)-A219205(n)` -/
def P4782777855686372048.Spec : Prop :=
  ∀ n, P4782777855686372048.a n = A275636 n

end A275636

/-! ## A275636.P6964878620556565156

`A003462(n)+A219205(n)/2`
-/

namespace A275636.P6964878620556565156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) + (A219205 n : ℚ) / 2

end

end A275636.P6964878620556565156

namespace A275636

/-- `A003462(n)+A219205(n)/2` -/
def P6964878620556565156.Spec : Prop :=
  ∀ n, P6964878620556565156.a n = (A275636 n : ℚ)

end A275636

/-! ## A275636.P12284313475513114393

`A048328(2*n)*A124302(n)`
-/

namespace A275636.P12284313475513114393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (2 * n) * A124302 n

end

end A275636.P12284313475513114393

namespace A275636

/-- `A048328(2*n)*A124302(n)` -/
def P12284313475513114393.Spec : Prop :=
  ∀ n, P12284313475513114393.a n = A275636 n

end A275636

/-! ## A275636.P4927591819626896070

`A167993(2*n)+A124302(n+1)-1`
-/

namespace A275636.P4927591819626896070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (2 * n) + (A124302 (n + 1) - 1)

end

end A275636.P4927591819626896070

namespace A275636

/-- `A167993(2*n)+A124302(n+1)-1` -/
def P4927591819626896070.Spec : Prop :=
  ∀ n, P4927591819626896070.a n = A275636 n

end A275636

/-! ## A275636.P1851536978587791581

`A003462(2*n)-A122006(2*n+1)`
-/

namespace A275636.P1851536978587791581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * n) - A122006 (2 * n + 1)

end

end A275636.P1851536978587791581

namespace A275636

/-- `A003462(2*n)-A122006(2*n+1)` -/
def P1851536978587791581.Spec : Prop :=
  ∀ n, P1851536978587791581.a n = A275636 n

end A275636

/-! ## A275636.P12493474673401595629

`A115098(2*n)-(A122006(2*n+1)+2)`
-/

namespace A275636.P12493474673401595629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (2 * n) - (A122006 (2 * n + 1) + 2)

end

end A275636.P12493474673401595629

namespace A275636

/-- `A115098(2*n)-(A122006(2*n+1)+2)` -/
def P12493474673401595629.Spec : Prop :=
  ∀ n, P12493474673401595629.a n = A275636 n

end A275636

/-! ## A275636.P4157484462139245792

`A032120(A004273(n))-A124302(n)`
-/

namespace A275636.P4157484462139245792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 (A004273 n).toNat - A124302 n

end

end A275636.P4157484462139245792

namespace A275636

/-- `A032120(A004273(n))-A124302(n)` -/
def P4157484462139245792.Spec : Prop :=
  ∀ n, P4157484462139245792.a n = A275636 n

end A275636

/-! ## A275636.P11933528460477748846

`A007051(n)*A094388(n)-A094388(n)`
-/

namespace A275636.P11933528460477748846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A094388 n - A094388 n

end

end A275636.P11933528460477748846

namespace A275636

/-- `A007051(n)*A094388(n)-A094388(n)` -/
def P11933528460477748846.Spec : Prop :=
  ∀ n, P11933528460477748846.a n = A275636 n

end A275636

/-! ## A275636.P5403537016046210637

`A124302(n+1)*A182522(2*n)-A124302(2*n)`
-/

namespace A275636.P5403537016046210637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) * A182522 (2 * n) - A124302 (2 * n)

end

end A275636.P5403537016046210637

namespace A275636

/-- `A124302(n+1)*A182522(2*n)-A124302(2*n)` -/
def P5403537016046210637.Spec : Prop :=
  ∀ n, P5403537016046210637.a n = A275636 n

end A275636

/-! ## A275636.P843961063738672516

`A167993(2*n)+A167993(2*n+1)/A056449(2*n)`
-/

namespace A275636.P843961063738672516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167993 (2 * n) : ℚ) + (A167993 (2 * n + 1) : ℚ) / (A056449 (2 * n) : ℚ)

end

end A275636.P843961063738672516

namespace A275636

/-- `A167993(2*n)+A167993(2*n+1)/A056449(2*n)` -/
def P843961063738672516.Spec : Prop :=
  ∀ n, P843961063738672516.a n = (A275636 n : ℚ)

end A275636

/-! ## A275636.P4116103675811933716

`A167993(2*n)+A167993(2*n+1)/A108411(2*n)`
-/

namespace A275636.P4116103675811933716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167993 (2 * n) : ℚ) + (A167993 (2 * n + 1) : ℚ) / (A108411 (2 * n) : ℚ)

end

end A275636.P4116103675811933716

namespace A275636

/-- `A167993(2*n)+A167993(2*n+1)/A108411(2*n)` -/
def P4116103675811933716.Spec : Prop :=
  ∀ n, P4116103675811933716.a n = (A275636 n : ℚ)

end A275636

/-! ## A275636.P8511251124837671579

`A167993(2*n)+A167993(2*n+1)/A254006(2*n)`
-/

namespace A275636.P8511251124837671579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167993 (2 * n) : ℚ) + (A167993 (2 * n + 1) : ℚ) / (A254006 (2 * n) : ℚ)

end

end A275636.P8511251124837671579

namespace A275636

/-- `A167993(2*n)+A167993(2*n+1)/A254006(2*n)` -/
def P8511251124837671579.Spec : Prop :=
  ∀ n, P8511251124837671579.a n = (A275636 n : ℚ)

end A275636

/-! ## A275636.P1501387956495870014

`A167993(2*n)+A167993(2*n+1)/A182522(2*n+1)`
-/

namespace A275636.P1501387956495870014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167993 (2 * n) : ℚ) + (A167993 (2 * n + 1) : ℚ) / (A182522 (2 * n + 1) : ℚ)

end

end A275636.P1501387956495870014

namespace A275636

/-- `A167993(2*n)+A167993(2*n+1)/A182522(2*n+1)` -/
def P1501387956495870014.Spec : Prop :=
  ∀ n, P1501387956495870014.a n = (A275636 n : ℚ)

end A275636

/-!
# A275637: a(n) = (3^n-1)*(3^n-3)*(3^n+3)*(3^n-4)/5!.

The programs for A275637, the canonical program `A275637.P3585182250765465646` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275637 has offset 0).

The definition of A275637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275637.P3585182250765465646

`(3^n-1)*(3^n-3)*(3^n+3)*(3^n-4)/5!`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275637

/-- `(3^n-1)*(3^n-3)*(3^n+3)*(3^n-4)/5!` -/
def P3585182250765465646.Spec : Prop :=
  ∀ n, P3585182250765465646.a n = (A275637 n : ℚ)

end A275637

/-!
# A275638: Expansion of (1-q)^k/Product_{j=1..k} (1-q^j) for k=4.

The programs for A275638, the canonical program `A275638.P13000109410374725641` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275638 has offset 0).

The definition of A275638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275638.P9086934479350980230

`∑[∑[A112553(n)]]*A033999(n)`
-/

namespace A275638.P9086934479350980230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112553 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A275638.P9086934479350980230

namespace A275638

/-- `∑[∑[A112553(n)]]*A033999(n)` -/
def P9086934479350980230.Spec : Prop :=
  ∀ n, P9086934479350980230.a n = A275638 n

end A275638

/-! ## A275638.P13000109410374725641

`Δ[Δ[Δ[A005044(n)]]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275638

/-- `Δ[Δ[Δ[A005044(n)]]]` -/
def P13000109410374725641.Spec : Prop :=
  ∀ n, P13000109410374725641.a n = A275638 n

theorem P13000109410374725641.correct : P13000109410374725641.Spec := by
  intro n
  simp only [A275638]

end A275638

/-! ## A275638.P2550579410086588917

`Δ[Δ[A106466(n)-A002264(n)]]`
-/

namespace A275638.P2550579410086588917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n - A002264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275638.P2550579410086588917

namespace A275638

/-- `Δ[Δ[A106466(n)-A002264(n)]]` -/
def P2550579410086588917.Spec : Prop :=
  ∀ n, P2550579410086588917.a n = A275638 n

end A275638

/-! ## A275638.P5781777062761526026

`Δ[Δ[A106466(n)-A008620(n)]]`
-/

namespace A275638.P5781777062761526026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n - A008620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275638.P5781777062761526026

namespace A275638

/-- `Δ[Δ[A106466(n)-A008620(n)]]` -/
def P5781777062761526026.Spec : Prop :=
  ∀ n, P5781777062761526026.a n = A275638 n

end A275638

/-! ## A275638.P6978918132765105058

`Δ[Δ[A106466(n)-A042968(n+1)]]`
-/

namespace A275638.P6978918132765105058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n - A042968 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275638.P6978918132765105058

namespace A275638

/-- `Δ[Δ[A106466(n)-A042968(n+1)]]` -/
def P6978918132765105058.Spec : Prop :=
  ∀ n, P6978918132765105058.a n = A275638 n

end A275638

/-!
# A275647: Decimal expansion of Pi^2/6 - Sum_{k>=1} 1/prime(k)^2.

The programs for A275647, there is no canonical definition to state claims against.
-/

/-! ## A275647.P510266410936445431

`A335589(n-A178334(n))`
-/

namespace A275647.P510266410936445431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335589 ((n : ℤ) - A178334 n).toNat

end

end A275647.P510266410936445431

/-! ## A275647.P16578796519669377658

`A335589(A004280(n+2)-(n+2))`
-/

namespace A275647.P16578796519669377658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335589 (A004280 (n + 2) - (n + 2 : ℤ)).toNat

end

end A275647.P16578796519669377658

/-! ## A275647.P2390200783270996831

`A335589(n-or(1, A266377(a(n-1))))` with `a(0)=1`
-/

namespace A275647.P2390200783270996831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335589 ((n : ℤ) - Int.lor 1 (A266377 (a (n - 1)).toNat)).toNat

end

end A275647.P2390200783270996831

/-!
# A275651: a(n) = (2*n)!*Sum_{k = 0..n} (-1)^k/(2*k)!.

The programs for A275651, the canonical program `A275651.P3778205961840223336` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275651 has offset 0).

The definition of A275651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275651.P3778205961840223336

`2*n*(2*n-1)*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275651

/-- `2*n*(2*n-1)*a(n-1)+(-1)^n` -/
def P3778205961840223336.Spec : Prop :=
  ∀ n, P3778205961840223336.a n = A275651 n

theorem P3778205961840223336.correct : P3778205961840223336.Spec := by
  intro n
  simp only [A275651]

end A275651

/-! ## A275651.P14763182566057305521

`A009102(2*n)`
-/

namespace A275651.P14763182566057305521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009102 (2 * n)

end

end A275651.P14763182566057305521

namespace A275651

/-- `A009102(2*n)` -/
def P14763182566057305521.Spec : Prop :=
  ∀ n, P14763182566057305521.a n = A275651 n

end A275651

/-! ## A275651.P11987760272349978118

`abs(A337749(2*n))`
-/

namespace A275651.P11987760272349978118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A337749 (2 * n)|

end

end A275651.P11987760272349978118

namespace A275651

/-- `abs(A337749(2*n))` -/
def P11987760272349978118.Spec : Prop :=
  ∀ n, P11987760272349978118.a n = A275651 n

end A275651

/-! ## A275651.P2102547111226330654

`abs(record[A009102(n+1)])`
-/

namespace A275651.P2102547111226330654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A275651.P2102547111226330654

namespace A275651

/-- `abs(record[A009102(n+1)])` -/
def P2102547111226330654.Spec : Prop :=
  ∀ n, P2102547111226330654.a n = A275651 n

end A275651

/-!
# A275652: a(n) = binomial(3*n,3*n/2)*binomial(2*n,n)*binomial(5*n/2,n/2)/binomial(n,n/2).

The programs for A275652, there is no canonical definition to state claims against.
-/

/-! ## A275652.P12575522878161331878

`A000897(n)/A347857(n)*A347856(n)`
-/

namespace A275652.P12575522878161331878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000897 n : ℚ) / (A347857 n : ℚ) * (A347856 n : ℚ)

end

end A275652.P12575522878161331878

/-! ## A275652.P14059616512998201011

`A091527(n)/A262733(n)*A352652(n)`
-/

namespace A275652.P14059616512998201011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A262733 n : ℚ) * (A352652 n : ℚ)

end

end A275652.P14059616512998201011

/-! ## A275652.P11476620411951827201

`A091496(n)/A276098(n)*A352652(n)`
-/

namespace A275652.P11476620411951827201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091496 n : ℚ) / (A276098 n : ℚ) * (A352652 n : ℚ)

end

end A275652.P11476620411951827201

/-! ## A275652.P2958235376957435772

`A000984(n)/A352651(n)*A001460(n)`
-/

namespace A275652.P2958235376957435772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A352651 n : ℚ) * (A001460 n : ℚ)

end

end A275652.P2958235376957435772

/-! ## A275652.P12087328232167830509

`A008978(n)/A352651(n)`
-/

namespace A275652.P12087328232167830509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008978 n : ℚ) / (A352651 n : ℚ)

end

end A275652.P12087328232167830509

/-!
# A275653: a(n) = binomial(4*n,2*n)*binomial(3*n,2*n).

The programs for A275653, the canonical program `A275653.P54206937842841634` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275653 has offset 0).

The definition of A275653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, 2*n)*C(3*n, 2*n)` (program `A275653.P54206937842841634`, by `A275653.P54206937842841634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275653.P54206937842841634

`C(4*n, 2*n)*C(3*n, 2*n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275653

/-- `C(4*n, 2*n)*C(3*n, 2*n)` -/
def P54206937842841634.Spec : Prop :=
  ∀ n, (P54206937842841634.a n : ℤ) = A275653 n

theorem P54206937842841634.correct : P54206937842841634.Spec := by
  intro n
  simp only [A275653]

end A275653

/-! ## A275653.P15710549208509813585

`A001448(n)*A005809(n)`
-/

namespace A275653.P15710549208509813585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A005809 n

end

end A275653.P15710549208509813585

namespace A275653

/-- `A001448(n)*A005809(n)` -/
def P15710549208509813585.Spec : Prop :=
  ∀ n, P15710549208509813585.a n = A275653 n

end A275653

/-! ## A275653.P15759264391607407886

`A001448(n)*A264772(∑[n])`
-/

namespace A275653.P15759264391607407886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A264772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275653.P15759264391607407886

namespace A275653

/-- `A001448(n)*A264772(∑[n])` -/
def P15759264391607407886.Spec : Prop :=
  ∀ n, P15759264391607407886.a n = A275653 n

end A275653

/-! ## A275653.P286307696522419794

`record[A344503(n)]*A001448(n)`
-/

namespace A275653.P286307696522419794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001448 n

end

end A275653.P286307696522419794

namespace A275653

/-- `record[A344503(n)]*A001448(n)` -/
def P286307696522419794.Spec : Prop :=
  ∀ n, P286307696522419794.a n = A275653 n

end A275653

/-! ## A275653.P7444356439349775182

`A000984(2*n)*A005809(n)`
-/

namespace A275653.P7444356439349775182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A005809 n

end

end A275653.P7444356439349775182

namespace A275653

/-- `A000984(2*n)*A005809(n)` -/
def P7444356439349775182.Spec : Prop :=
  ∀ n, P7444356439349775182.a n = A275653 n

end A275653

/-! ## A275653.P5621272900607764315

`A001448(n)*A065942(2*n)`
-/

namespace A275653.P5621272900607764315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A065942 (2 * n)

end

end A275653.P5621272900607764315

namespace A275653

/-- `A001448(n)*A065942(2*n)` -/
def P5621272900607764315.Spec : Prop :=
  ∀ n, P5621272900607764315.a n = A275653 n

end A275653

/-! ## A275653.P5548576194806847621

`A001448(n)*A081204(2*n)`
-/

namespace A275653.P5548576194806847621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A081204 (2 * n)

end

end A275653.P5548576194806847621

namespace A275653

/-- `A001448(n)*A081204(2*n)` -/
def P5548576194806847621.Spec : Prop :=
  ∀ n, P5548576194806847621.a n = A275653 n

end A275653

/-! ## A275653.P13812066905475691939

`A001448(n)*A051033(3*n)`
-/

namespace A275653.P13812066905475691939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A051033 (3 * n)

end

end A275653.P13812066905475691939

namespace A275653

/-- `A001448(n)*A051033(3*n)` -/
def P13812066905475691939.Spec : Prop :=
  ∀ n, P13812066905475691939.a n = A275653 n

end A275653

/-! ## A275653.P15855320217101905465

`A001405(4*n)*A005809(n)`
-/

namespace A275653.P15855320217101905465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (4 * n) * A005809 n

end

end A275653.P15855320217101905465

namespace A275653

/-- `A001405(4*n)*A005809(n)` -/
def P15855320217101905465.Spec : Prop :=
  ∀ n, P15855320217101905465.a n = A275653 n

end A275653

/-! ## A275653.P4048045630131313338

`A000984(2*n)*A264772(∑[n])`
-/

namespace A275653.P4048045630131313338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A264772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275653.P4048045630131313338

namespace A275653

/-- `A000984(2*n)*A264772(∑[n])` -/
def P4048045630131313338.Spec : Prop :=
  ∀ n, P4048045630131313338.a n = A275653 n

end A275653

/-!
# A275654: a(n) = (5*n)!/((3*n)!*n!^2) * ((3*n/2)!*(7*n/2)!)/(5*n/2)!^2.

The programs for A275654, there is no canonical definition to state claims against.
-/

/-! ## A275654.P6579121177478502717

`record[A364303(A055999(n))]`
-/

namespace A275654.P6579121177478502717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364303 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275654.P6579121177478502717

/-!
# A275655: a(n) = binomial(6*n,3*n)*binomial(2*n,n).

The programs for A275655, the canonical program `A275655.P4495389094997987911` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275655 has offset 0).

The definition of A275655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(6*n, 3*n)*C(2*n, n)` (program `A275655.P4495389094997987911`, by `A275655.P4495389094997987911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275655.P4495389094997987911

`C(6*n, 3*n)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275655

/-- `C(6*n, 3*n)*C(2*n, n)` -/
def P4495389094997987911.Spec : Prop :=
  ∀ n, (P4495389094997987911.a n : ℤ) = A275655 n

theorem P4495389094997987911.correct : P4495389094997987911.Spec := by
  intro n
  simp only [A275655]

end A275655

/-! ## A275655.P17529179874901664694

`A066802(n)*A000984(n)`
-/

namespace A275655.P17529179874901664694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066802 n * A000984 n

end

end A275655.P17529179874901664694

namespace A275655

/-- `A066802(n)*A000984(n)` -/
def P17529179874901664694.Spec : Prop :=
  ∀ n, P17529179874901664694.a n = A275655 n

theorem P17529179874901664694.correct : P17529179874901664694.Spec := by
  intro n
  simp only [A275655, Nat.add_sub_cancel, A275655.P17529179874901664694.a, A275655.P4495389094997987911.a, A000984, A000984.P7946844122574426130.a, A066802, A066802.P9844520095216327590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275655

/-! ## A275655.P9344559579111030493

`A005810(n)*A211419(n)`
-/

namespace A275655.P9344559579111030493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n * A211419 n

end

end A275655.P9344559579111030493

namespace A275655

/-- `A005810(n)*A211419(n)` -/
def P9344559579111030493.Spec : Prop :=
  ∀ n, P9344559579111030493.a n = A275655 n

end A275655

/-! ## A275655.P11521599852896386409

`sqrt(A002894(n))*A066802(n)`
-/

namespace A275655.P11521599852896386409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A066802 n : ℝ)

end

end A275655.P11521599852896386409

namespace A275655

/-- `sqrt(A002894(n))*A066802(n)` -/
def P11521599852896386409.Spec : Prop :=
  ∀ n, P11521599852896386409.a n = (A275655 n : ℝ)

end A275655

/-! ## A275655.P12354916496685193113

`A066802(n)*A068555(∑[n])`
-/

namespace A275655.P12354916496685193113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066802 n * A068555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275655.P12354916496685193113

namespace A275655

/-- `A066802(n)*A068555(∑[n])` -/
def P12354916496685193113.Spec : Prop :=
  ∀ n, P12354916496685193113.a n = A275655 n

end A275655

/-!
# A275656: Number of ordered ways to write n as 4^k*(1+x^2+y^2)+z^2, where k,x,y,z are nonnegative integers with x <= y <= z.

The programs for A275656, there is no canonical definition to state claims against.
-/

/-! ## A275656.P17707955415451180162

`A274450(A023990(n+1)^A008679(n))`
-/

namespace A275656.P17707955415451180162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274450 (SequenceMachineLib.roundAway ((A023990 (n + 1) : ℚ) ^ (A008679 n : ℤ))).toNat

end

end A275656.P17707955415451180162

/-! ## A275656.P6096088086587986702

`A001221(A000265(or(12, A108895(n))))`
-/

namespace A275656.P6096088086587986702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000265 (Int.lor 12 (A108895 n)).toNat).toNat

end

end A275656.P6096088086587986702

/-! ## A275656.P15255680778333759597

`A328966(A310311(n)+2-n%2)`
-/

namespace A275656.P15255680778333759597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328966 (A310311 n + (2 - ((n % 2 : ℕ) : ℤ))).toNat

end

end A275656.P15255680778333759597

/-! ## A275656.P9336032479544655575

`A051064(A170965(n)+A027362(n+1))`
-/

namespace A275656.P9336032479544655575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A170965 n + A027362 (n + 1)).toNat

end

end A275656.P9336032479544655575

/-! ## A275656.P17134984680107676682

`A328966(A310311(n)+A000034(n+1))`
-/

namespace A275656.P17134984680107676682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328966 (A310311 n + A000034 (n + 1)).toNat

end

end A275656.P17134984680107676682

/-!
# A275660: Numbers n such that sigma(n) = Sum_{j=1..k} d(n^j) for some k, where sigma(n) is the sum of the divisors of n and d(n) is the number of divisors of n.

The programs for A275660, there is no canonical definition to state claims against.
-/

/-! ## A275660.P15392715628569471360

`eq[A082119(2*(n+2)), A305776(A219094(3*n+2))]`
-/

namespace A275660.P15392715628569471360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082119 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A219094 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275660.P15392715628569471360

/-!
# A275661: a(1)=1. At any step consider the stream of 0's and 1's as two base-2 numbers: the first reading from left to right and the second from right to left. Sum the two numbers in base 2 and add them to the end of the sequence. Repeat.

The programs for A275661, there is no canonical definition to state claims against.
-/

/-! ## A275661.P11667449385589644510

`A266892(A096106(2*(n+1))%A001316(n+1))`
-/

namespace A275661.P11667449385589644510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266892 (Int.tmod (A096106 (2 * (n + 1))) (A001316 (n + 1))).toNat

end

end A275661.P11667449385589644510

/-! ## A275661.P18200771572479573759

`A030308(gcd(A000108(n), A127103(n+1)))`
-/

namespace A275661.P18200771572479573759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (Int.gcd (A000108 n) (A127103 (n + 1)))

end

end A275661.P18200771572479573759

/-!
# A275662: Triangle read by rows: T(n,k) = number of convex domino towers with n dominoes having widest row with k dominoes.

The programs for A275662, there is no canonical definition to state claims against.
-/

/-! ## A275662.P16113473241583333249

`A218252(A193845(n)%A218373(n+1))`
-/

namespace A275662.P16113473241583333249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218252 (Int.tmod (A193845 n) (A218373 (n + 1))).toNat

end

end A275662.P16113473241583333249

/-!
# A275664: a(n) is the sum of the LCM and GCD of all previous terms, with a(0) = 2.

The programs for A275664, there is no canonical definition to state claims against.
-/

/-! ## A275664.P12693414485311895096

`((1-a(n-1))²+3)/2` with `a(0)=2, a(1)=4`
-/

namespace A275664.P12693414485311895096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  ((1 - a (n - 1)) ^ 2 + 3) / 2

end

end A275664.P12693414485311895096

/-! ## A275664.P1067412895230206046

`2-(a(n-1)-a(n-1)²/2)` with `a(0)=2, a(1)=4`
-/

namespace A275664.P1067412895230206046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 - (a (n - 1) - a (n - 1) ^ 2 / 2)

end

end A275664.P1067412895230206046

/-! ## A275664.P14665329467142891253

`(a(n-1)/2-1)*a(n-1)+2` with `a(0)=2, a(1)=4`
-/

namespace A275664.P14665329467142891253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  (a (n - 1) / 2 - 1) * a (n - 1) + 2

end

end A275664.P14665329467142891253

/-! ## A275664.P3287730724629567846

`2-(1-a(n-1)/2)*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A275664.P3287730724629567846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 - (1 - a (n - 1) / 2) * a (n - 1)

end

end A275664.P3287730724629567846

/-! ## A275664.P10532804631111523700

`2*A129871(n)`
-/

namespace A275664.P10532804631111523700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129871 n

end

end A275664.P10532804631111523700

/-!
# A275665: Numbers n such that n and sopf(n) are relatively prime, where sopf(n) (A008472) is the sum of the distinct primes dividing n.

The programs for A275665, the canonical program `A275665.P16385943556992474853` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275665 has offset 1).

The definition of A275665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275665.P15694773557823412888

`eq[1, A099636(n+1)]+1`
-/

namespace A275665.P15694773557823412888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275665.P15694773557823412888

namespace A275665

/-- `eq[1, A099636(n+1)]+1` -/
def P15694773557823412888.Spec : Prop :=
  ∀ n, (P15694773557823412888.a n : ℤ) = A275665 (n + 1)

end A275665

/-! ## A275665.P5261249863165735223

`eq[1, gcd(n+1, A008472(n+1))]+1`
-/

namespace A275665.P5261249863165735223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275665.P5261249863165735223

namespace A275665

/-- `eq[1, gcd(n+1, A008472(n+1))]+1` -/
def P5261249863165735223.Spec : Prop :=
  ∀ n, (P5261249863165735223.a n : ℤ) = A275665 (n + 1)

end A275665

/-! ## A275665.P15306474084556690667

`eq[A007947(n+1), A340677(n+1)]+1`
-/

namespace A275665.P15306474084556690667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275665.P15306474084556690667

namespace A275665

/-- `eq[A007947(n+1), A340677(n+1)]+1` -/
def P15306474084556690667.Spec : Prop :=
  ∀ n, (P15306474084556690667.a n : ℤ) = A275665 (n + 1)

end A275665

/-! ## A275665.P16385943556992474853

`eq[1, A099635(n+1)]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275665

/-- `eq[1, A099635(n+1)]+1` -/
def P16385943556992474853.Spec : Prop :=
  ∀ n, (P16385943556992474853.a n : ℤ) = A275665 (n + 1)

theorem P16385943556992474853.correct : P16385943556992474853.Spec := by
  intro n
  simp only [A275665, Nat.add_sub_cancel]

end A275665

/-! ## A275665.P14788940796771411701

`record[(n+1)*A010052(4*A099636(n+1))]`
-/

namespace A275665.P14788940796771411701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (4 * A099636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275665.P14788940796771411701

namespace A275665

/-- `record[(n+1)*A010052(4*A099636(n+1))]` -/
def P14788940796771411701.Spec : Prop :=
  ∀ n, P14788940796771411701.a n = A275665 (n + 1)

end A275665

/-!
# A275668: First occurrence of a value in A268755: a(i) = j iff A268755(j) = i-1 and A268755(j+1) = 0.

The programs for A275668, there is no canonical definition to state claims against.
-/

/-! ## A275668.P9206610274712569946

`record[gcd(n+1, A268755(n+2))]`
-/

namespace A275668.P9206610274712569946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A268755 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275668.P9206610274712569946

/-! ## A275668.P4704221027725513913

`lt[A268755(n+2), 1]+1`
-/

namespace A275668.P4704221027725513913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268755 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275668.P4704221027725513913

/-! ## A275668.P4664170968477070207

`eq[A135416(n+1), A268755(n+1)]`
-/

namespace A275668.P4664170968477070207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275668.P4664170968477070207

/-! ## A275668.P16909185406158471357

`eq[1, A024372(A268755(n+2)+1)]+1`
-/

namespace A275668.P16909185406158471357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024372 (A268755 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275668.P16909185406158471357

/-! ## A275668.P16481454173149292910

`eq[A000038(n), A268755(n+1)]`
-/

namespace A275668.P16481454173149292910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275668.P16481454173149292910

/-! ## A275668.P6758991013475415950

`eq[A000007(n), A268755(n+1)]`
-/

namespace A275668.P6758991013475415950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275668.P6758991013475415950

/-!
# A275669: Numbers k such that 3*k-1 is composite.

The programs for A275669, the canonical program `A275669.P2524086312850330406` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275669 has offset 1).

The definition of A275669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275669.P2524086312850330406

`lt[1, ∑{e}[a(n-1)-3, #]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275669

/-- `lt[1, ∑{e}[a(n-1)-3, #]]` -/
def P2524086312850330406.Spec : Prop :=
  ∀ n, (P2524086312850330406.a n : ℤ) = A275669 (n + 1)

theorem P2524086312850330406.correct : P2524086312850330406.Spec := by
  intro n
  simp only [A275669, Nat.add_sub_cancel]

end A275669

/-! ## A275669.P13075277967621248821

`lt[1, ∑{e}[2*n+n-1, #]]`
-/

namespace A275669.P13075277967621248821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275669.P13075277967621248821

namespace A275669

/-- `lt[1, ∑{e}[2*n+n-1, #]]` -/
def P13075277967621248821.Spec : Prop :=
  ∀ n, (P13075277967621248821.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P1713552721218982

`lt[∑{p}[a(n-1)-3, #], 2*n]` with `a(0)=1`
-/

namespace A275669.P1713552721218982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A275669.P1713552721218982

namespace A275669

/-- `lt[∑{p}[a(n-1)-3, #], 2*n]` -/
def P1713552721218982.Spec : Prop :=
  ∀ n, (P1713552721218982.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P6702219991532419193

`lt[∑{p}[2*n+n-1, #], 2*n]`
-/

namespace A275669.P6702219991532419193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A275669.P6702219991532419193

namespace A275669

/-- `lt[∑{p}[2*n+n-1, #], 2*n]` -/
def P6702219991532419193.Spec : Prop :=
  ∀ n, (P6702219991532419193.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P9401103901941262926

`lt[(n+1)², ∏{d}[2*n+n-1, #]]`
-/

namespace A275669.P9401103901941262926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275669.P9401103901941262926

namespace A275669

/-- `lt[(n+1)², ∏{d}[2*n+n-1, #]]` -/
def P9401103901941262926.Spec : Prop :=
  ∀ n, (P9401103901941262926.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P655662733877801118

`A153170(n+1)+1`
-/

namespace A275669.P655662733877801118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1) + 1

end

end A275669.P655662733877801118

namespace A275669

/-- `A153170(n+1)+1` -/
def P655662733877801118.Spec : Prop :=
  ∀ n, P655662733877801118.a n = A275669 (n + 1)

end A275669

/-! ## A275669.P1255427585274298972

`comp[A024893(n+1)]+1`
-/

namespace A275669.P1255427585274298972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A275669.P1255427585274298972

namespace A275669

/-- `comp[A024893(n+1)]+1` -/
def P1255427585274298972.Spec : Prop :=
  ∀ n, (P1255427585274298972.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P2898964428026596416

`comp[A088879(n+1)]+2`
-/

namespace A275669.P2898964428026596416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A275669.P2898964428026596416

namespace A275669

/-- `comp[A088879(n+1)]+2` -/
def P2898964428026596416.Spec : Prop :=
  ∀ n, (P2898964428026596416.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P18428849467725262259

`lt[1, A231776(n+1)]+1`
-/

namespace A275669.P18428849467725262259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275669.P18428849467725262259

namespace A275669

/-- `lt[1, A231776(n+1)]+1` -/
def P18428849467725262259.Spec : Prop :=
  ∀ n, (P18428849467725262259.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P13532907441584639802

`lt[2, A060324(n+1)]+1`
-/

namespace A275669.P13532907441584639802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275669.P13532907441584639802

namespace A275669

/-- `lt[2, A060324(n+1)]+1` -/
def P13532907441584639802.Spec : Prop :=
  ∀ n, (P13532907441584639802.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P2439994254870945452

`comp[A087370(n+1)-1]+1`
-/

namespace A275669.P2439994254870945452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A275669.P2439994254870945452

namespace A275669

/-- `comp[A087370(n+1)-1]+1` -/
def P2439994254870945452.Spec : Prop :=
  ∀ n, (P2439994254870945452.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P11676159328694256967

`comp[A228121(n+1)-2]+1`
-/

namespace A275669.P11676159328694256967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A275669.P11676159328694256967

namespace A275669

/-- `comp[A228121(n+1)-2]+1` -/
def P11676159328694256967.Spec : Prop :=
  ∀ n, (P11676159328694256967.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P12179214649752833011

`comp[2*A059325(n+1)]+2`
-/

namespace A275669.P12179214649752833011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A275669.P12179214649752833011

namespace A275669

/-- `comp[2*A059325(n+1)]+2` -/
def P12179214649752833011.Spec : Prop :=
  ∀ n, (P12179214649752833011.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P15075758856878006964

`lt[1, A001222(3*n+2)]+1`
-/

namespace A275669.P15075758856878006964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275669.P15075758856878006964

namespace A275669

/-- `lt[1, A001222(3*n+2)]+1` -/
def P15075758856878006964.Spec : Prop :=
  ∀ n, (P15075758856878006964.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P16961580564241915732

`lt[1, A337135(3*n+2)]+1`
-/

namespace A275669.P16961580564241915732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275669.P16961580564241915732

namespace A275669

/-- `lt[1, A337135(3*n+2)]+1` -/
def P16961580564241915732.Spec : Prop :=
  ∀ n, (P16961580564241915732.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P1629108581338800707

`lt[2, A000005(3*n+2)]+1`
-/

namespace A275669.P1629108581338800707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275669.P1629108581338800707

namespace A275669

/-- `lt[2, A000005(3*n+2)]+1` -/
def P1629108581338800707.Spec : Prop :=
  ∀ n, (P1629108581338800707.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P17338999668655612442

`∪[2*n+3, A199593(n+2)]`
-/

namespace A275669.P17338999668655612442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A275669.P17338999668655612442

namespace A275669

/-- `∪[2*n+3, A199593(n+2)]` -/
def P17338999668655612442.Spec : Prop :=
  ∀ n, (P17338999668655612442.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P9530115106992738421

`lt[A020639(3*n+2), n+1]+1`
-/

namespace A275669.P9530115106992738421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275669.P9530115106992738421

namespace A275669

/-- `lt[A020639(3*n+2), n+1]+1` -/
def P9530115106992738421.Spec : Prop :=
  ∀ n, (P9530115106992738421.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P3726320091005029933

`lt[A006530(3*n+2), 2*n]+1`
-/

namespace A275669.P3726320091005029933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275669.P3726320091005029933

namespace A275669

/-- `lt[A006530(3*n+2), 2*n]+1` -/
def P3726320091005029933.Spec : Prop :=
  ∀ n, (P3726320091005029933.a n : ℤ) = A275669 (n + 1)

end A275669

/-! ## A275669.P1443520396160689434

`A020725(A153170(n+1))`
-/

namespace A275669.P1443520396160689434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A153170 (n + 1)).toNat

end

end A275669.P1443520396160689434

namespace A275669

/-- `A020725(A153170(n+1))` -/
def P1443520396160689434.Spec : Prop :=
  ∀ n, P1443520396160689434.a n = A275669 (n + 1)

end A275669

/-!
# A275670: G.f. A(x,y) satisfies: A(x,y) = x*y + A(x,x*y)^2, with A(0,y) = 1.

The programs for A275670, there is no canonical definition to state claims against.
-/

/-! ## A275670.P10697864796663069876

`and(A013979(n), A051176(A247512(n)))`
-/

namespace A275670.P10697864796663069876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013979 n) (A051176 (A247512 n).toNat)

end

end A275670.P10697864796663069876

/-! ## A275670.P13127213729332787700

`and(A051176(A247512(n)), A089299(n))`
-/

namespace A275670.P13127213729332787700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051176 (A247512 n).toNat) (A089299 n)

end

end A275670.P13127213729332787700

/-! ## A275670.P13921367099203664034

`and(A026741(A005176(n)), A226643(n+1))`
-/

namespace A275670.P13921367099203664034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026741 (A005176 n).toNat) (A226643 (n + 1))

end

end A275670.P13921367099203664034

/-! ## A275670.P15384915085076579565

`and(A293548(n), A330996(A027424(n+1)))`
-/

namespace A275670.P15384915085076579565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293548 n) (A330996 (A027424 (n + 1)).toNat)

end

end A275670.P15384915085076579565

/-! ## A275670.P3702683530883021504

`and(A000203(A337890(n+2)), A013979(n))`
-/

namespace A275670.P3702683530883021504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A337890 (n + 2)).toNat) (A013979 n)

end

end A275670.P3702683530883021504

/-!
# A275671: Even values produced by the sigma function A000203, in increasing order.

The programs for A275671, the canonical program `A275671.P10918635563416212347` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275671 has offset 1).

The definition of A275671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275671.P10918635563416212347

`eq[gcd(2, n), A175192(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A275671

/-- `eq[gcd(2, n), A175192(n+1)]+1` -/
def P10918635563416212347.Spec : Prop :=
  ∀ n, (P10918635563416212347.a n : ℤ) = A275671 (n + 1)

theorem P10918635563416212347.correct : P10918635563416212347.Spec := by
  intro n
  simp only [A275671, Nat.add_sub_cancel]

end A275671

/-! ## A275671.P10158305996188082418

`eq[1, A175192(n^and(1, n)+1)]+1`
-/

namespace A275671.P10158305996188082418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n ^ Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275671.P10158305996188082418

namespace A275671

/-- `eq[1, A175192(n^and(1, n)+1)]+1` -/
def P10158305996188082418.Spec : Prop :=
  ∀ n, (P10158305996188082418.a n : ℤ) = A275671 (n + 1)

end A275671

/-! ## A275671.P14622324009051232590

`∩[2*n, A002191(n+1)]`
-/

namespace A275671.P14622324009051232590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275671.P14622324009051232590

namespace A275671

/-- `∩[2*n, A002191(n+1)]` -/
def P14622324009051232590.Spec : Prop :=
  ∀ n, (P14622324009051232590.a n : ℤ) = A275671 (n + 1)

end A275671

/-! ## A275671.P18121109923069189210

`filter[A004277(n+1), A175192(#)]`
-/

namespace A275671.P18121109923069189210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P18121109923069189210

namespace A275671

/-- `filter[A004277(n+1), A175192(#)]` -/
def P18121109923069189210.Spec : Prop :=
  ∀ n, P18121109923069189210.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P15350412311209275598

`filter[A005843(n+1), A175192(#)]`
-/

namespace A275671.P15350412311209275598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P15350412311209275598

namespace A275671

/-- `filter[A005843(n+1), A175192(#)]` -/
def P15350412311209275598.Spec : Prop :=
  ∀ n, P15350412311209275598.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P9159188880375017442

`filter[A103517(n+1), A175192(#)]`
-/

namespace A275671.P9159188880375017442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P9159188880375017442

namespace A275671

/-- `filter[A103517(n+1), A175192(#)]` -/
def P9159188880375017442.Spec : Prop :=
  ∀ n, P9159188880375017442.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P12235207997271828635

`filter[A163300(n+2), A175192(#)]`
-/

namespace A275671.P12235207997271828635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P12235207997271828635

namespace A275671

/-- `filter[A163300(n+2), A175192(#)]` -/
def P12235207997271828635.Spec : Prop :=
  ∀ n, P12235207997271828635.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P2772585539624717329

`filter[A051755(n+3), A175192(#)]`
-/

namespace A275671.P2772585539624717329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P2772585539624717329

namespace A275671

/-- `filter[A051755(n+3), A175192(#)]` -/
def P2772585539624717329.Spec : Prop :=
  ∀ n, P2772585539624717329.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P12968245295262092384

`∩[A002191(n+1), A005843(n)]`
-/

namespace A275671.P12968245295262092384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275671.P12968245295262092384

namespace A275671

/-- `∩[A002191(n+1), A005843(n)]` -/
def P12968245295262092384.Spec : Prop :=
  ∀ n, (P12968245295262092384.a n : ℤ) = A275671 (n + 1)

end A275671

/-! ## A275671.P5010710985975948489

`filter[A092486(2*n+1), A175192(#)]`
-/

namespace A275671.P5010710985975948489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P5010710985975948489

namespace A275671

/-- `filter[A092486(2*n+1), A175192(#)]` -/
def P5010710985975948489.Spec : Prop :=
  ∀ n, P5010710985975948489.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P15808000103889956076

`∩[A002191(n+1), A163300(n+1)]`
-/

namespace A275671.P15808000103889956076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275671.P15808000103889956076

namespace A275671

/-- `∩[A002191(n+1), A163300(n+1)]` -/
def P15808000103889956076.Spec : Prop :=
  ∀ n, (P15808000103889956076.a n : ℤ) = A275671 (n + 1)

end A275671

/-! ## A275671.P10670348303647975186

`filter[A004275(n+2), A175192(#)]`
-/

namespace A275671.P10670348303647975186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P10670348303647975186

namespace A275671

/-- `filter[A004275(n+2), A175192(#)]` -/
def P10670348303647975186.Spec : Prop :=
  ∀ n, P10670348303647975186.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P12429016326513665463

`filter[A300576(n+2), A175192(#)]`
-/

namespace A275671.P12429016326513665463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P12429016326513665463

namespace A275671

/-- `filter[A300576(n+2), A175192(#)]` -/
def P12429016326513665463.Spec : Prop :=
  ∀ n, P12429016326513665463.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P9937766221575198455

`lt[A175253(n+1), n%2]+1`
-/

namespace A275671.P9937766221575198455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A275671.P9937766221575198455

namespace A275671

/-- `lt[A175253(n+1), n%2]+1` -/
def P9937766221575198455.Spec : Prop :=
  ∀ n, (P9937766221575198455.a n : ℤ) = A275671 (n + 1)

end A275671

/-! ## A275671.P14169090712864489358

`lt[A175253(round(acot(n)+n)), (-1)^n]`
-/

namespace A275671.P14169090712864489358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275671.P14169090712864489358

namespace A275671

/-- `lt[A175253(round(acot(n)+n)), (-1)^n]` -/
def P14169090712864489358.Spec : Prop :=
  ∀ n, (P14169090712864489358.a n : ℤ) = A275671 (n + 1)

end A275671

/-! ## A275671.P14948468416328224948

`filter[A133265(n), A175192(#)]`
-/

namespace A275671.P14948468416328224948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P14948468416328224948

namespace A275671

/-- `filter[A133265(n), A175192(#)]` -/
def P14948468416328224948.Spec : Prop :=
  ∀ n, P14948468416328224948.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P1693752544511127358

`filter[A275365(n+1), A175192(#)]`
-/

namespace A275671.P1693752544511127358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P1693752544511127358

namespace A275671

/-- `filter[A275365(n+1), A175192(#)]` -/
def P1693752544511127358.Spec : Prop :=
  ∀ n, P1693752544511127358.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P1661837547354743601

`filter[A002191(n+2), A135528(#)]`
-/

namespace A275671.P1661837547354743601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A275671.P1661837547354743601

namespace A275671

/-- `filter[A002191(n+2), A135528(#)]` -/
def P1661837547354743601.Spec : Prop :=
  ∀ n, P1661837547354743601.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P913305258176050363

`filter[A321220(2*n), A175192(#)]`
-/

namespace A275671.P913305258176050363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P913305258176050363

namespace A275671

/-- `filter[A321220(2*n), A175192(#)]` -/
def P913305258176050363.Spec : Prop :=
  ∀ n, P913305258176050363.a n = A275671 (n + 1)

end A275671

/-! ## A275671.P11667355326643775317

`filter[A014681(2*n+1), A175192(#)]`
-/

namespace A275671.P11667355326643775317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A275671.P11667355326643775317

namespace A275671

/-- `filter[A014681(2*n+1), A175192(#)]` -/
def P11667355326643775317.Spec : Prop :=
  ∀ n, P11667355326643775317.a n = A275671 (n + 1)

end A275671

/-!
# A275673: List of numbers that are in a spoke of a hexagonal spiral.

The programs for A275673, the canonical program `A275673.P12325511593406820021` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275673 has offset 1).

The definition of A275673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275673.P12325511593406820021

`∑[ceil(n/6)]+1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275673

/-- `∑[ceil(n/6)]+1` -/
def P12325511593406820021.Spec : Prop :=
  ∀ n, P12325511593406820021.a n = A275673 (n + 1)

theorem P12325511593406820021.correct : P12325511593406820021.Spec := by
  intro n
  simp only [A275673, Nat.add_sub_cancel]

end A275673

/-! ## A275673.P11300837193409724408

`ceil(a(n-1)+n/6)` with `a(0)=1`
-/

namespace A275673.P11300837193409724408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n : ℚ) / 6⌉

end

end A275673.P11300837193409724408

namespace A275673

/-- `ceil(a(n-1)+n/6)` -/
def P11300837193409724408.Spec : Prop :=
  ∀ n, P11300837193409724408.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P3440360517146311979

`round(a(n-1)+(n+2)/6)` with `a(0)=1`
-/

namespace A275673.P3440360517146311979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n + 2 : ℚ) / 6)

end

end A275673.P3440360517146311979

namespace A275673

/-- `round(a(n-1)+(n+2)/6)` -/
def P3440360517146311979.Spec : Prop :=
  ∀ n, P3440360517146311979.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P8177374403131452291

`floor(a(n-1)+(n+5)/6)` with `a(0)=1`
-/

namespace A275673.P8177374403131452291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n + 5 : ℚ) / 6⌋

end

end A275673.P8177374403131452291

namespace A275673

/-- `floor(a(n-1)+(n+5)/6)` -/
def P8177374403131452291.Spec : Prop :=
  ∀ n, P8177374403131452291.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P4457238963089982248

`ceil(sqrt(∑[A001973(n)]))`
-/

namespace A275673.P4457238963089982248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A275673.P4457238963089982248

namespace A275673

/-- `ceil(sqrt(∑[A001973(n)]))` -/
def P4457238963089982248.Spec : Prop :=
  ∀ n, P4457238963089982248.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P11226049125877508819

`∑[A097992(abs(1-n))]`
-/

namespace A275673.P11226049125877508819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P11226049125877508819

namespace A275673

/-- `∑[A097992(abs(1-n))]` -/
def P11226049125877508819.Spec : Prop :=
  ∀ n, P11226049125877508819.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P3968092608396099285

`∑[ceil(A004277(n)/12)]`
-/

namespace A275673.P3968092608396099285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004277 n : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P3968092608396099285

namespace A275673

/-- `∑[ceil(A004277(n)/12)]` -/
def P3968092608396099285.Spec : Prop :=
  ∀ n, P3968092608396099285.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P8710234051200507103

`∑[∑[char[A271114(n+1)]]+1]`
-/

namespace A275673.P8710234051200507103
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P8710234051200507103

namespace A275673

/-- `∑[∑[char[A271114(n+1)]]+1]` -/
def P8710234051200507103.Spec : Prop :=
  ∀ n, (P8710234051200507103.a n : ℤ) = A275673 (n + 1)

end A275673

/-! ## A275673.P4540387159323651396

`∑[∑[char[A016969(n)+2]]+1]`
-/

namespace A275673.P4540387159323651396
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P4540387159323651396

namespace A275673

/-- `∑[∑[char[A016969(n)+2]]+1]` -/
def P4540387159323651396.Spec : Prop :=
  ∀ n, (P4540387159323651396.a n : ℤ) = A275673 (n + 1)

end A275673

/-! ## A275673.P5558396556086617735

`∑[A008620(A065033(n)-1)]`
-/

namespace A275673.P5558396556086617735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A065033 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P5558396556086617735

namespace A275673

/-- `∑[A008620(A065033(n)-1)]` -/
def P5558396556086617735.Spec : Prop :=
  ∀ n, P5558396556086617735.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P12604629545287215525

`∑[A008615(2*A065033(n))]`
-/

namespace A275673.P12604629545287215525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P12604629545287215525

namespace A275673

/-- `∑[A008615(2*A065033(n))]` -/
def P12604629545287215525.Spec : Prop :=
  ∀ n, P12604629545287215525.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P5251541753511987668

`∑[A065033(n-A004523(n))]`
-/

namespace A275673.P5251541753511987668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n : ℤ) - A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P5251541753511987668

namespace A275673

/-- `∑[A065033(n-A004523(n))]` -/
def P5251541753511987668.Spec : Prop :=
  ∀ n, P5251541753511987668.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P716514408440663735

`∑[A002264(A140106(n+1))+1]`
-/

namespace A275673.P716514408440663735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A140106 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P716514408440663735

namespace A275673

/-- `∑[A002264(A140106(n+1))+1]` -/
def P716514408440663735.Spec : Prop :=
  ∀ n, P716514408440663735.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P16699343278327483475

`record[A008735(n)-n/2]`
-/

namespace A275673.P16699343278327483475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008735 n : ℚ) - (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275673.P16699343278327483475

namespace A275673

/-- `record[A008735(n)-n/2]` -/
def P16699343278327483475.Spec : Prop :=
  ∀ n, P16699343278327483475.a n = (A275673 (n + 1) : ℚ)

end A275673

/-! ## A275673.P15694973898731817716

`A183220(a(n-1))` with `a(0)=1`
-/

namespace A275673.P15694973898731817716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183220 (a (n - 1)).toNat

end

end A275673.P15694973898731817716

namespace A275673

/-- `A183220(a(n-1))` -/
def P15694973898731817716.Spec : Prop :=
  ∀ n, P15694973898731817716.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P5189881500215621735

`∑[val(A020714(abs(1-n)), 64)+1]`
-/

namespace A275673.P5189881500215621735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020714 |1 - (n : ℤ)|.toNat).toNat 64 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P5189881500215621735

namespace A275673

/-- `∑[val(A020714(abs(1-n)), 64)+1]` -/
def P5189881500215621735.Spec : Prop :=
  ∀ n, (P5189881500215621735.a n : ℤ) = A275673 (n + 1)

end A275673

/-! ## A275673.P2315370457876492926

`∑[val(A005015(abs(1-n)+6), 64)]`
-/

namespace A275673.P2315370457876492926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005015 (|1 - (n : ℤ)| + 6).toNat).toNat 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275673.P2315370457876492926

namespace A275673

/-- `∑[val(A005015(abs(1-n)+6), 64)]` -/
def P2315370457876492926.Spec : Prop :=
  ∀ n, (P2315370457876492926.a n : ℤ) = A275673 (n + 1)

end A275673

/-! ## A275673.P14833334934769471583

`A090701(A082873(n+2))`
-/

namespace A275673.P14833334934769471583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A082873 (n + 2)).toNat

end

end A275673.P14833334934769471583

namespace A275673

/-- `A090701(A082873(n+2))` -/
def P14833334934769471583.Spec : Prop :=
  ∀ n, P14833334934769471583.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P9519632055815737535

`A008619(A156040(n+1))`
-/

namespace A275673.P9519632055815737535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A156040 (n + 1)).toNat

end

end A275673.P9519632055815737535

namespace A275673

/-- `A008619(A156040(n+1))` -/
def P9519632055815737535.Spec : Prop :=
  ∀ n, P9519632055815737535.a n = A275673 (n + 1)

end A275673

/-! ## A275673.P13652394856815692215

`A008619(A025767(2*(n+1)))`
-/

namespace A275673.P13652394856815692215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025767 (2 * (n + 1))).toNat

end

end A275673.P13652394856815692215

namespace A275673

/-- `A008619(A025767(2*(n+1)))` -/
def P13652394856815692215.Spec : Prop :=
  ∀ n, P13652394856815692215.a n = A275673 (n + 1)

end A275673

/-!
# A275674: Numbers m for which sum of divisors of sum of divisors of m is a power of 2.

The programs for A275674, there is no canonical definition to state claims against.
-/

/-! ## A275674.P1742257175571453781

`filter[A234639(n+1), A266178(#)]`
-/

namespace A275674.P1742257175571453781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266178 (f1 j).toNat = 1) n)

end

end A275674.P1742257175571453781

/-! ## A275674.P5691869104180487161

`filter[A234639(n+1), A266298(#)]`
-/

namespace A275674.P5691869104180487161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266298 (f1 j).toNat = 1) n)

end

end A275674.P5691869104180487161

/-! ## A275674.P2758619391202665185

`∩[A234639(n+1), A363283(n+1)]`
-/

namespace A275674.P2758619391202665185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275674.P2758619391202665185

/-! ## A275674.P8024083731852494248

`∩[A234639(n+1), A320137(n+1)]`
-/

namespace A275674.P8024083731852494248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275674.P8024083731852494248

/-! ## A275674.P6703484147271766551

`∩[A234639(n+1), A349151(n+1)]`
-/

namespace A275674.P6703484147271766551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275674.P6703484147271766551

/-!
# A275675: Number of ordered ways to write n as 4^k*(1+x^2+y^2)+5*z^2, where k,x,y,z are nonnegative integers with x <= y.

The programs for A275675, there is no canonical definition to state claims against.
-/

/-! ## A275675.P5799071226672923599

`A373531(A024965(n+4))`
-/

namespace A275675.P5799071226672923599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373531 (A024965 (n + 4)).toNat

end

end A275675.P5799071226672923599

/-! ## A275675.P18110466782235178806

`A037912(A020711(n))+1`
-/

namespace A275675.P18110466782235178806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A020711 n).toNat + 1

end

end A275675.P18110466782235178806

/-! ## A275675.P13502674258699021206

`A093320(A124598(n+1))`
-/

namespace A275675.P13502674258699021206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (A124598 (n + 1)).toNat

end

end A275675.P13502674258699021206

/-! ## A275675.P7689857149241839685

`A001221(A290261(n+1)+A008284(2*n+3))`
-/

namespace A275675.P7689857149241839685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A290261 (n + 1) + A008284 (2 * n + 3)).toNat

end

end A275675.P7689857149241839685

/-! ## A275675.P15699133482028266904

`A157129(A222006(n))`
-/

namespace A275675.P15699133482028266904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157129 (A222006 n).toNat

end

end A275675.P15699133482028266904

/-!
# A275676: Number of ordered ways to write n as 4^k*(1+5*x^2+y^2) + z^2, where k,x,y,z are nonnegative integers with x <= y.

The programs for A275676, there is no canonical definition to state claims against.
-/

/-! ## A275676.P2925544987973766118

`A097847(A001358(n+2)+A000040(n+1))`
-/

namespace A275676.P2925544987973766118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097847 (A001358 (n + 2) + A000040 (n + 1)).toNat

end

end A275676.P2925544987973766118

/-! ## A275676.P9718402278408806330

`A182850(A336322(2*(n+2))+1)`
-/

namespace A275676.P9718402278408806330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A336322 (2 * (n + 2)) + 1).toNat

end

end A275676.P9718402278408806330

/-! ## A275676.P16685991026169332975

`A051064(∑{d}[n+1, #]*A141002(n))`
-/

namespace A275676.P16685991026169332975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A141002 n).toNat

end

end A275676.P16685991026169332975

/-! ## A275676.P15866914738317597781

`A051064(A000203(n+1)*A141002(n))`
-/

namespace A275676.P15866914738317597781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A000203 (n + 1) * A141002 n).toNat

end

end A275676.P15866914738317597781

/-! ## A275676.P5665147561886830743

`A156256(A353401(n+3))+A100428(n+1)`
-/

namespace A275676.P5665147561886830743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156256 (A353401 (n + 3)).toNat + A100428 (n + 1)

end

end A275676.P5665147561886830743

/-!
# A275678: Number of ordered ways to write n as 4^k*(1+4*x^2+y^2) + z^2, where k,x,y,z are nonnegative integers with x <= y.

The programs for A275678, there is no canonical definition to state claims against.
-/

/-! ## A275678.P3222406197823609845

`A034693(A145604(n+5)+A063007(n))`
-/

namespace A275678.P3222406197823609845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A145604 (n + 5) + A063007 n).toNat

end

end A275678.P3222406197823609845

/-! ## A275678.P13905499042827777606

`A275806(A123104(n)*A257731(3*(n+1)))`
-/

namespace A275678.P13905499042827777606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A123104 (n + 31) * A257731 (3 * (n + 1))).toNat

end

end A275678.P13905499042827777606

/-! ## A275678.P1397163557654338068

`∑{e}[A016813(A024625(n+1)), #]`
-/

namespace A275678.P1397163557654338068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A024625 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275678.P1397163557654338068

/-! ## A275678.P2686894603398796375

`A043537(A270509(n+5)+A167865(n))`
-/

namespace A275678.P2686894603398796375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A270509 (n + 5) + A167865 n).toNat

end

end A275678.P2686894603398796375

/-! ## A275678.P885934604159153163

`A165413(A091627(n+3)*A142467(n+3))`
-/

namespace A275678.P885934604159153163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A091627 (n + 3) * A142467 (n + 3)).toNat

end

end A275678.P885934604159153163

/-!
# A275681: Table read by rows: list of sexy prime triples (p, p+6, p+12) such that p+18 is composite.

The programs for A275681, there is no canonical definition to state claims against.
-/

/-! ## A275681.P11084378492650845499

`p?[A266084(n)%A146772(n)]`
-/

namespace A275681.P11084378492650845499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266084 n) (A146772 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275681.P11084378492650845499

/-! ## A275681.P4919496665117764617

`p?[xor(A185177(n+1), A287864(n+1))]`
-/

namespace A275681.P4919496665117764617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185177 (n + 1)) (A287864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275681.P4919496665117764617

/-! ## A275681.P15168580560845185668

`p?[A226581(A325264(n+1))]`
-/

namespace A275681.P15168580560845185668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226581 (A325264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275681.P15168580560845185668

/-! ## A275681.P5084321349435152219

`p?[A016813(n)-A024639(n)]`
-/

namespace A275681.P5084321349435152219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A024639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275681.P5084321349435152219

/-!
# A275682: Table read by rows: list of sexy prime quadruples (p, p+6, p+12, p+18) such that p+24 is composite.

The programs for A275682, there is no canonical definition to state claims against.
-/

/-! ## A275682.P16241752770958718125

`A123083(n+5)`
-/

namespace A275682.P16241752770958718125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123083 (n + 5)

end

end A275682.P16241752770958718125

/-! ## A275682.P6828439914682422016

`record[A123083(A100637(n))]`
-/

namespace A275682.P6828439914682422016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123083 (A100637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275682.P6828439914682422016

/-! ## A275682.P435957735522339722

`record[A123083(A000194(p?[4*n-1]))]`
-/

namespace A275682.P435957735522339722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123083 (A000194 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275682.P435957735522339722

/-! ## A275682.P1624441449615545408

`filter[A216227(n+2), A353513(#)]`
-/

namespace A275682.P1624441449615545408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353513 (f1 j).toNat = 1) n)

end

end A275682.P1624441449615545408

/-! ## A275682.P3130151879667072466

`A241082(A246301(n+2))`
-/

namespace A275682.P3130151879667072466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241082 (A246301 (n + 2)).toNat

end

end A275682.P3130151879667072466

/-!
# A275690: G.f. A(x) satisfies: 1 = ...(((((A(x) - x)^(1/3) - x^2)^(1/3) - x^3)^(1/3) - x^4)^(1/3) - x^5)^(1/3) -...- x^n)^(1/3) -..., an infinite series of nested cube roots.

The programs for A275690, there is no canonical definition to state claims against.
-/

/-! ## A275690.P7571389218419134250

`A028310(A054897(n+2)+A003243(2*n+1))`
-/

namespace A275690.P7571389218419134250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A054897 (n + 2) + A003243 (2 * n + 1)).toNat

end

end A275690.P7571389218419134250

/-! ## A275690.P13418004273023514953

`round(A296662(n²+1)/3)`
-/

namespace A275690.P13418004273023514953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A296662 (n ^ 2 + 1) : ℚ) / 3)

end

end A275690.P13418004273023514953

/-! ## A275690.P17857933994356650834

`A003441(n+1)-A282317(A267802(n))`
-/

namespace A275690.P17857933994356650834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003441 (n + 1) - A282317 (A267802 n).toNat

end

end A275690.P17857933994356650834

/-!
# A275691: G.f. A(x) satisfies: 1 = ...(((((A(x) - x^2)^(1/2) - x^3)^(1/2) - x^4)^(1/2) - x^5)^(1/2) - x^6)^(1/2) -...- x^n)^(1/2) -..., an infinite series of nested square roots.

The programs for A275691, there is no canonical definition to state claims against.
-/

/-! ## A275691.P2200695613754747450

`Δ[A077113(Δ[A091487(n+1)])]`
-/

namespace A275691.P2200695613754747450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275691.P2200695613754747450

/-! ## A275691.P2091305402671676827

`Δ[A100196(Δ[A091487(n+1)])]`
-/

namespace A275691.P2091305402671676827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275691.P2091305402671676827

/-! ## A275691.P5883934859265426926

`A335467(abs(ceil((-2)^(n-2)))+1)`
-/

namespace A275691.P5883934859265426926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (|⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉| + 1).toNat

end

end A275691.P5883934859265426926

/-! ## A275691.P11495894546445585340

`A000194(A239948(n²))`
-/

namespace A275691.P11495894546445585340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A239948 (n ^ 2)).toNat

end

end A275691.P11495894546445585340

/-! ## A275691.P13597408665378075929

`A000194(A171966(∑[n]))`
-/

namespace A275691.P13597408665378075929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A171966 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A275691.P13597408665378075929

/-!
# A275692: Numbers k such that every rotation of the binary digits of k is less than k.

The programs for A275692, there is no canonical definition to state claims against.
-/

/-! ## A275692.P5664788701866356340

`∩[A091065(n+1), A368747(n)]`
-/

namespace A275692.P5664788701866356340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275692.P5664788701866356340

/-! ## A275692.P1573024877460605349

`record[A342242(A368747(n))]`
-/

namespace A275692.P1573024877460605349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 (A368747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275692.P1573024877460605349

/-! ## A275692.P17277690402356481253

`eq[A257697(2*n+1), A342242(n)]`
-/

namespace A275692.P17277690402356481253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275692.P17277690402356481253

/-! ## A275692.P1516686124589762067

`A053645(A329401(n+1))`
-/

namespace A275692.P1516686124589762067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A329401 (n + 1)).toNat

end

end A275692.P1516686124589762067

/-! ## A275692.P7462129769466678169

`A164089(2*A329401(n+1))`
-/

namespace A275692.P7462129769466678169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * A329401 (n + 1)).toNat

end

end A275692.P7462129769466678169

/-! ## A275692.P3038988252146137696

`∑{d}[A329401(n+1), A300725(#)]`
-/

namespace A275692.P3038988252146137696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300725 d

end

end A275692.P3038988252146137696

/-! ## A275692.P4568292728085829623

`A257697(A329401(Δ[n²]-n))`
-/

namespace A275692.P4568292728085829623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (A329401 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A275692.P4568292728085829623

/-! ## A275692.P5190073710816423286

`A257697(A329401(n+1)-char[2])`
-/

namespace A275692.P5190073710816423286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (A329401 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A275692.P5190073710816423286

/-! ## A275692.P12450638874617100171

`A257697(A329401(n+1))%A000041(n+1)`
-/

namespace A275692.P12450638874617100171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257697 (A329401 (n + 1)).toNat) (A000041 (n + 1))

end

end A275692.P12450638874617100171

/-!
# A275693: Lexicographically earliest increasing sequence such that the a(n)th term of the sequence has n noncomposite divisors.

The programs for A275693, there is no canonical definition to state claims against.
-/

/-! ## A275693.P6775584594945645697

`lt[A276086(n), A002260(A248407(3*n+5))]`
-/

namespace A275693.P6775584594945645697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A248407 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275693.P6775584594945645697

/-! ## A275693.P14852088592001997943

`lt[A346101(n+1), A035019(2*n+1)]+1`
-/

namespace A275693.P14852088592001997943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275693.P14852088592001997943

/-! ## A275693.P15692416030566414600

`lt[A276086(n), A053833(A314290(n))]`
-/

namespace A275693.P15692416030566414600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053833 (A314290 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275693.P15692416030566414600

/-! ## A275693.P10572698086273932508

`eq[A107286(A045568(n+1)), A328396(n)]`
-/

namespace A275693.P10572698086273932508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A045568 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275693.P10572698086273932508

/-!
# A275694: Lazy expansion of Pi in golden base (i.e., phi = (1+sqrt(5))/2) without consecutive zeros.

The programs for A275694, there is no canonical definition to state claims against.
-/

/-! ## A275694.P10450614530644677957

`A080764(and(A122304(2*n+1), A184119(n+1)))`
-/

namespace A275694.P10450614530644677957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (Int.land (A122304 (2 * n + 1)) (A184119 (n + 1))).toNat

end

end A275694.P10450614530644677957

/-! ## A275694.P16773461540469156024

`A267056(A115966(2*n+5)*A159684(n))`
-/

namespace A275694.P16773461540469156024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267056 (A115966 (2 * n + 5) * A159684 n).toNat

end

end A275694.P16773461540469156024

/-! ## A275694.P4172465633385437721

`A187606(A082088(n+2)-char[∑[n+1]])²%3`
-/

namespace A275694.P4172465633385437721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187606 (A082088 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat ^ 2) 3

end

end A275694.P4172465633385437721

/-! ## A275694.P11466033714244422422

`A115381(lcm(A055494(n+1), A123583(n)))`
-/

namespace A275694.P11466033714244422422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115381 (Int.lcm (A055494 (n + 1)) (A123583 n))

end

end A275694.P11466033714244422422

/-! ## A275694.P2347903836015001238

`A204443(A193731(n)+A000069(n+2))`
-/

namespace A275694.P2347903836015001238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204443 (A193731 n + A000069 (n + 2)).toNat

end

end A275694.P2347903836015001238

/-!
# A275695: a(0) = a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1; for n>6, a(n) = ( a(n-1)+a(n-3)+a(n-5) )*( a(n-2)+a(n-4)+a(n-6) ) / a(n-7).

The programs for A275695, there is no canonical definition to state claims against.
-/

/-! ## A275695.P911108976731745365

`A000027(A276284(abs(2-n)))`
-/

namespace A275695.P911108976731745365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A276284 |2 - (n : ℤ)|.toNat).toNat

end

end A275695.P911108976731745365

/-! ## A275695.P12279636864394884718

`∏{p}[A241704(n+1), A002372(#)]`
-/

namespace A275695.P12279636864394884718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002372 p

end

end A275695.P12279636864394884718

/-! ## A275695.P11780495614252765472

`A276284(A037958(n)+A002266(3*n+4))`
-/

namespace A275695.P11780495614252765472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276284 (A037958 n + A002266 (3 * n + 4)).toNat

end

end A275695.P11780495614252765472

/-! ## A275695.P15992830958115592291

`and(A141183(A073799(n+1)), A163551(2*n+1))`
-/

namespace A275695.P15992830958115592291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141183 (A073799 (n + 1)).toNat) (A163551 (2 * n + 1))

end

end A275695.P15992830958115592291

/-! ## A275695.P570892406497750286

`A193920(C(n, 6))`
-/

namespace A275695.P570892406497750286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193920 (Nat.choose n 6)

end

end A275695.P570892406497750286

/-!
# A275697: Primes p such that gcd(p-1, q-1) = q - p, where q is the next prime after p.

The programs for A275697, the canonical program `A275697.P6247169262184432070` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275697 has offset 1).

The definition of A275697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275697.P6247169262184432070

`p?[p?[2*n+1]-A058263(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A275697

/-- `p?[p?[2*n+1]-A058263(n+1)]` -/
def P6247169262184432070.Spec : Prop :=
  ∀ n, P6247169262184432070.a n = A275697 (n + 1)

theorem P6247169262184432070.correct : P6247169262184432070.Spec := by
  intro n
  simp only [A275697, Nat.add_sub_cancel]

end A275697

/-! ## A275697.P5604314051370120955

`A008864(lt[A071866(n+1), 4]+1)-1`
-/

namespace A275697.P5604314051370120955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071866 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A275697.P5604314051370120955

namespace A275697

/-- `A008864(lt[A071866(n+1), 4]+1)-1` -/
def P5604314051370120955.Spec : Prop :=
  ∀ n, P5604314051370120955.a n = A275697 (n + 1)

end A275697

/-! ## A275697.P14696741609711639095

`A064989(A162565(n+1))`
-/

namespace A275697.P14696741609711639095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A162565 (n + 1)).toNat

end

end A275697.P14696741609711639095

namespace A275697

/-- `A064989(A162565(n+1))` -/
def P14696741609711639095.Spec : Prop :=
  ∀ n, P14696741609711639095.a n = A275697 (n + 1)

end A275697

/-! ## A275697.P11145741474335760661

`A283463(A162565(n+1)+1)`
-/

namespace A275697.P11145741474335760661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A162565 (n + 1) + 1).toNat

end

end A275697.P11145741474335760661

namespace A275697

/-- `A283463(A162565(n+1)+1)` -/
def P11145741474335760661.Spec : Prop :=
  ∀ n, P11145741474335760661.a n = A275697 (n + 1)

end A275697

/-! ## A275697.P10249642212453941857

`p?[n*A013632(n%A013632(n))]`
-/

namespace A275697.P10249642212453941857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013632 (Int.tmod (n : ℤ) (A013632 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275697.P10249642212453941857

namespace A275697

/-- `p?[n*A013632(n%A013632(n))]` -/
def P10249642212453941857.Spec : Prop :=
  ∀ n, P10249642212453941857.a n = A275697 (n + 1)

end A275697

/-! ## A275697.P9662778580166030078

`p?[A337853((n+1)%A013632(n+1))+n+1]`
-/

namespace A275697.P9662778580166030078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337853 (Int.tmod (n + 1 : ℤ) (A013632 (n + 1))).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275697.P9662778580166030078

namespace A275697

/-- `p?[A337853((n+1)%A013632(n+1))+n+1]` -/
def P9662778580166030078.Spec : Prop :=
  ∀ n, P9662778580166030078.a n = A275697 (n + 1)

end A275697

/-! ## A275697.P5168641709797984793

`p?[A321366(A291463(n+1)/2)]`
-/

namespace A275697.P5168641709797984793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (SequenceMachineLib.roundAway ((A291463 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275697.P5168641709797984793

namespace A275697

/-- `p?[A321366(A291463(n+1)/2)]` -/
def P5168641709797984793.Spec : Prop :=
  ∀ n, P5168641709797984793.a n = A275697 (n + 1)

end A275697

/-!
# A275698: a(0) = 2, after that a(n) is 3 plus the least common multiple of previous terms.

The programs for A275698, the canonical program `A275698.P4697352800404435883` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275698 has offset 0).

The definition of A275698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275698.P4697352800404435883

`3+a(n-1)*(a(n-1)-3)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A275698

/-- `3+a(n-1)*(a(n-1)-3)` -/
def P4697352800404435883.Spec : Prop :=
  ∀ n, P4697352800404435883.a n = A275698 n

theorem P4697352800404435883.correct : P4697352800404435883.Spec := by
  intro n
  simp only [A275698]

end A275698

/-! ## A275698.P6557515278740499850

`lcm(3-a(n-1), a(n-1))+3` with `a(0)=2`
-/

namespace A275698.P6557515278740499850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (3 - (a (n - 1) : ℤ)) (a (n - 1) : ℤ) + 3

end

end A275698.P6557515278740499850

namespace A275698

/-- `lcm(3-a(n-1), a(n-1))+3` -/
def P6557515278740499850.Spec : Prop :=
  ∀ n, (P6557515278740499850.a n : ℤ) = A275698 n

end A275698

/-! ## A275698.P1230581992716457192

`3-(3-a(n-1))*a(n-1)` with `a(0)=2, a(1)=5`
-/

namespace A275698.P1230581992716457192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  3 - (3 - a (n - 1)) * a (n - 1)

end

end A275698.P1230581992716457192

namespace A275698

/-- `3-(3-a(n-1))*a(n-1)` -/
def P1230581992716457192.Spec : Prop :=
  ∀ n, P1230581992716457192.a n = A275698 n

theorem P1230581992716457192.correct : P1230581992716457192.Spec := by
  intro n
  simp only [A275698, Nat.add_sub_cancel, A275698.P1230581992716457192.a, A275698.P4697352800404435883.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275698

/-! ## A275698.P8072201459972144150

`(1-a(n-1))²+2-a(n-1)` with `a(0)=2, a(1)=5`
-/

namespace A275698.P8072201459972144150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (1 - a (n - 1)) ^ 2 + (2 - a (n - 1))

end

end A275698.P8072201459972144150

namespace A275698

/-- `(1-a(n-1))²+2-a(n-1)` -/
def P8072201459972144150.Spec : Prop :=
  ∀ n, P8072201459972144150.a n = A275698 n

theorem P8072201459972144150.correct : P8072201459972144150.Spec := by
  intro n
  simp only [A275698, Nat.add_sub_cancel, A275698.P8072201459972144150.a, A275698.P4697352800404435883.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275698

/-! ## A275698.P3807690069644589943

`(1-a(n-1))²-(a(n-1)-2)` with `a(0)=2, a(1)=5`
-/

namespace A275698.P3807690069644589943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (1 - a (n - 1)) ^ 2 - (a (n - 1) - 2)

end

end A275698.P3807690069644589943

namespace A275698

/-- `(1-a(n-1))²-(a(n-1)-2)` -/
def P3807690069644589943.Spec : Prop :=
  ∀ n, P3807690069644589943.a n = A275698 n

theorem P3807690069644589943.correct : P3807690069644589943.Spec := by
  intro n
  simp only [A275698, Nat.add_sub_cancel, A275698.P3807690069644589943.a, A275698.P4697352800404435883.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275698

/-!
# A275699: Excess of numbers that are not squarefree.

The programs for A275699, the canonical program `A275699.P9019799113090837571` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275699 has offset 1).

The definition of A275699 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275699.P9019799113090837571

`A046660(A013929(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A275699

/-- `A046660(A013929(n+1))` -/
def P9019799113090837571.Spec : Prop :=
  ∀ n, P9019799113090837571.a n = A275699 (n + 1)

theorem P9019799113090837571.correct : P9019799113090837571.Spec := by
  intro n
  simp only [A275699, Nat.add_sub_cancel]

end A275699

/-! ## A275699.P7704924277354876402

`∑{e}[A084936(n+1), #]`
-/

namespace A275699.P7704924277354876402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P7704924277354876402

namespace A275699

/-- `∑{e}[A084936(n+1), #]` -/
def P7704924277354876402.Spec : Prop :=
  ∀ n, (P7704924277354876402.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P1139436950339633825

`A001222(A084936(n+1))`
-/

namespace A275699.P1139436950339633825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084936 (n + 1)).toNat

end

end A275699.P1139436950339633825

namespace A275699

/-- `A001222(A084936(n+1))` -/
def P1139436950339633825.Spec : Prop :=
  ∀ n, P1139436950339633825.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P14375902008211021381

`A001222(A013929(n+1)/A076333(n+1))`
-/

namespace A275699.P14375902008211021381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A076333 (n + 1) : ℚ))).toNat

end

end A275699.P14375902008211021381

namespace A275699

/-- `A001222(A013929(n+1)/A076333(n+1))` -/
def P14375902008211021381.Spec : Prop :=
  ∀ n, P14375902008211021381.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P16875536515707347688

`A046660(A368040(n+1))`
-/

namespace A275699.P16875536515707347688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A368040 (n + 1)).toNat

end

end A275699.P16875536515707347688

namespace A275699

/-- `A046660(A368040(n+1))` -/
def P16875536515707347688.Spec : Prop :=
  ∀ n, P16875536515707347688.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P9887157759454486891

`A046660(A162966(n+2))`
-/

namespace A275699.P9887157759454486891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A162966 (n + 2)).toNat

end

end A275699.P9887157759454486891

namespace A275699

/-- `A046660(A162966(n+2))` -/
def P9887157759454486891.Spec : Prop :=
  ∀ n, P9887157759454486891.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P17939631777117758929

`A046660(lt[1, A005361(n+1)]+1)`
-/

namespace A275699.P17939631777117758929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A275699.P17939631777117758929

namespace A275699

/-- `A046660(lt[1, A005361(n+1)]+1)` -/
def P17939631777117758929.Spec : Prop :=
  ∀ n, P17939631777117758929.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P2225186707341546025

`A046660(lt[A008966(n+1), 1]+1)`
-/

namespace A275699.P2225186707341546025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A275699.P2225186707341546025

namespace A275699

/-- `A046660(lt[A008966(n+1), 1]+1)` -/
def P2225186707341546025.Spec : Prop :=
  ∀ n, P2225186707341546025.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P12887829312409324269

`A046660(lt[1, A046951(n+1)]+1)`
-/

namespace A275699.P12887829312409324269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A275699.P12887829312409324269

namespace A275699

/-- `A046660(lt[1, A046951(n+1)]+1)` -/
def P12887829312409324269.Spec : Prop :=
  ∀ n, P12887829312409324269.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P12896784181318338571

`A046660(lt[A008683(n+1)², 1]+1)`
-/

namespace A275699.P12896784181318338571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A275699.P12896784181318338571

namespace A275699

/-- `A046660(lt[A008683(n+1)², 1]+1)` -/
def P12896784181318338571.Spec : Prop :=
  ∀ n, P12896784181318338571.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P10949430422897529765

`A046660(lt[1, A046660(n+1)+1]+1)`
-/

namespace A275699.P10949430422897529765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A275699.P10949430422897529765

namespace A275699

/-- `A046660(lt[1, A046660(n+1)+1]+1)` -/
def P10949430422897529765.Spec : Prop :=
  ∀ n, P10949430422897529765.a n = A275699 (n + 1)

end A275699

/-! ## A275699.P10123120782681386434

`∏{e}[A162510(lt[1, A005361(n+1)]+1), #]`
-/

namespace A275699.P10123120782681386434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P10123120782681386434

namespace A275699

/-- `∏{e}[A162510(lt[1, A005361(n+1)]+1), #]` -/
def P10123120782681386434.Spec : Prop :=
  ∀ n, (P10123120782681386434.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P15915149648504212937

`∏{e}[A162510(lt[A008966(n+1), 1]+1), #]`
-/

namespace A275699.P15915149648504212937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P15915149648504212937

namespace A275699

/-- `∏{e}[A162510(lt[A008966(n+1), 1]+1), #]` -/
def P15915149648504212937.Spec : Prop :=
  ∀ n, (P15915149648504212937.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P3974173723714549161

`∏{e}[A162510(lt[1, A046951(n+1)]+1), #]`
-/

namespace A275699.P3974173723714549161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P3974173723714549161

namespace A275699

/-- `∏{e}[A162510(lt[1, A046951(n+1)]+1), #]` -/
def P3974173723714549161.Spec : Prop :=
  ∀ n, (P3974173723714549161.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P9293905959732409818

`∏{e}[A162510(lt[1, A351219(n+1)]+1), #]`
-/

namespace A275699.P9293905959732409818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P9293905959732409818

namespace A275699

/-- `∏{e}[A162510(lt[1, A351219(n+1)]+1), #]` -/
def P9293905959732409818.Spec : Prop :=
  ∀ n, (P9293905959732409818.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P12213025553643718427

`∏{e}[A162510(lt[A008683(n+1)², 1]+1), #]`
-/

namespace A275699.P12213025553643718427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P12213025553643718427

namespace A275699

/-- `∏{e}[A162510(lt[A008683(n+1)², 1]+1), #]` -/
def P12213025553643718427.Spec : Prop :=
  ∀ n, (P12213025553643718427.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P10855219687375363948

`∏{e}[A162510(lt[2, A051903(n+1)+1]+1), #]`
-/

namespace A275699.P10855219687375363948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P10855219687375363948

namespace A275699

/-- `∏{e}[A162510(lt[2, A051903(n+1)+1]+1), #]` -/
def P10855219687375363948.Spec : Prop :=
  ∀ n, (P10855219687375363948.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P12092765961315184540

`∏{e}[A162510(lt[3, A280292(n+1)+2]+1), #]`
-/

namespace A275699.P12092765961315184540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275699.P12092765961315184540

namespace A275699

/-- `∏{e}[A162510(lt[3, A280292(n+1)+2]+1), #]` -/
def P12092765961315184540.Spec : Prop :=
  ∀ n, (P12092765961315184540.a n : ℤ) = A275699 (n + 1)

end A275699

/-! ## A275699.P13558997722620842372

`A275812(A013929(n+1))-A212177(n+1)`
-/

namespace A275699.P13558997722620842372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A013929 (n + 1)).toNat - A212177 (n + 1)

end

end A275699.P13558997722620842372

namespace A275699

/-- `A275812(A013929(n+1))-A212177(n+1)` -/
def P13558997722620842372.Spec : Prop :=
  ∀ n, P13558997722620842372.a n = A275699 (n + 1)

theorem P13558997722620842372.correct : P13558997722620842372.Spec := by
  intro n
  simp only [A275699, Nat.add_sub_cancel, A275699.P13558997722620842372.a, A275699.P9019799113090837571.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A046660, A046660.P3614759855976580945.a, A212177, A212177.P15343509916105935241.a, A275812, A275812.P13506188268199266465.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005361, A005361.P7238185687981551187.a, A056169, A056169.P17430176249366647977.a, A056170, A056170.P910878729848546389.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A055231, A055231.P8962300905713718501.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275699

