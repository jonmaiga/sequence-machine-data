import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

/-!
# A208600: Number of 6-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero.

The programs for A208600, the canonical program `A208600.P7606670319951226973` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208600 has offset 1).

The definition of A208600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208600.P7606670319951226973

`ogf((26+141x+172x^2+8x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208600

/-- `ogf((26+141x+172x^2+8x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P7606670319951226973.Spec : Prop :=
  ∀ n, P7606670319951226973.a n = A208600 (n + 1)

theorem P7606670319951226973.correct : P7606670319951226973.Spec := by
  intro n
  simp only [A208600, Nat.add_sub_cancel]

end A208600

/-! ## A208600.P12598747082814328512

`A208597(A167499(n+4)+1)`
-/

namespace A208600.P12598747082814328512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A167499 (n + 4) + 1).toNat

end

end A208600.P12598747082814328512

namespace A208600

/-- `A208597(A167499(n+4)+1)` -/
def P12598747082814328512.Spec : Prop :=
  ∀ n, P12598747082814328512.a n = A208600 (n + 1)

end A208600

/-! ## A208600.P5851029989851772675

`A208597(A000124(n+5)+5)`
-/

namespace A208600.P5851029989851772675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000124 (n + 5) + 5).toNat

end

end A208600.P5851029989851772675

namespace A208600

/-- `A208597(A000124(n+5)+5)` -/
def P5851029989851772675.Spec : Prop :=
  ∀ n, P5851029989851772675.a n = A208600 (n + 1)

end A208600

/-! ## A208600.P16095089274591987270

`A208597(A000217(n+5)+6)`
-/

namespace A208600.P16095089274591987270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000217 (n + 5) + 6).toNat

end

end A208600.P16095089274591987270

namespace A208600

/-- `A208597(A000217(n+5)+6)` -/
def P16095089274591987270.Spec : Prop :=
  ∀ n, P16095089274591987270.a n = A208600 (n + 1)

end A208600

/-! ## A208600.P6433619894871989310

`A208597(A055999(n+2)+12)`
-/

namespace A208600.P6433619894871989310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A055999 (n + 2) + 12).toNat

end

end A208600.P6433619894871989310

namespace A208600

/-- `A208597(A055999(n+2)+12)` -/
def P6433619894871989310.Spec : Prop :=
  ∀ n, P6433619894871989310.a n = A208600 (n + 1)

end A208600

/-!
# A208601: Number of 7-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero.

The programs for A208601, there is no canonical definition to state claims against.
-/

/-! ## A208601.P7189946310507135350

`ceil(A201554(n+1)/7)`
-/

namespace A208601.P7189946310507135350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201554 (n + 1) : ℚ) / 7⌉

end

end A208601.P7189946310507135350

/-! ## A208601.P12575645019139947390

`∑[Δ[A201554(n)]/7]+1`
-/

namespace A208601.P12575645019139947390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201554 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A208601.P12575645019139947390

/-! ## A208601.P398074472793890191

`n-(A023443(n)-∑[Δ[A201554(n)]/7])`
-/

namespace A208601.P398074472793890191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201554 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((A023443 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208601.P398074472793890191

/-! ## A208601.P66337619599836657

`A005408(n)-(2*n-∑[Δ[A201554(n)]/7])`
-/

namespace A208601.P66337619599836657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201554 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) - ((2 * n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208601.P66337619599836657

/-! ## A208601.P15820137782349304711

`xor(∑[Δ[A201554(n)]/7], A060576(10*n))`
-/

namespace A208601.P15820137782349304711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201554 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A060576 (10 * n))

end

end A208601.P15820137782349304711

/-!
# A208602: Number of n-bead necklaces labeled with numbers -1..1 not allowing reversal, with sum zero.

The programs for A208602, the canonical program `A208602.P205147807259406401` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208602 has offset 1).

The definition of A208602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208602.P205147807259406401

`1/(n+1)*∑{d}[n+1, A000010((n+1)/#)*A002426(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A208602

/-- `1/(n+1)*∑{d}[n+1, A000010((n+1)/#)*A002426(#)]` -/
def P205147807259406401.Spec : Prop :=
  ∀ n, P205147807259406401.a n = (A208602 (n + 1) : ℚ)

end A208602

/-! ## A208602.P12606790148610675086

`∑{d}[n+1, A290277(#)]`
-/

namespace A208602.P12606790148610675086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A290277 d

end

end A208602.P12606790148610675086

namespace A208602

/-- `∑{d}[n+1, A290277(#)]` -/
def P12606790148610675086.Spec : Prop :=
  ∀ n, P12606790148610675086.a n = A208602 (n + 1)

end A208602

/-! ## A208602.P7880625457620904497

`A295198(n+1)+A001006(n)`
-/

namespace A208602.P7880625457620904497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295198 (n + 1) + A001006 n

end

end A208602.P7880625457620904497

namespace A208602

/-- `A295198(n+1)+A001006(n)` -/
def P7880625457620904497.Spec : Prop :=
  ∀ n, P7880625457620904497.a n = A208602 (n + 1)

end A208602

/-! ## A208602.P1196428443495422053

`A005043(n+1)+A295198(n+1)+A005043(n)`
-/

namespace A208602.P1196428443495422053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A295198 (n + 1) + A005043 n)

end

end A208602.P1196428443495422053

namespace A208602

/-- `A005043(n+1)+A295198(n+1)+A005043(n)` -/
def P1196428443495422053.Spec : Prop :=
  ∀ n, P1196428443495422053.a n = A208602 (n + 1)

end A208602

/-! ## A208602.P9282408008492991459

`A208597(∑[n+1])`
-/

namespace A208602.P9282408008492991459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208602.P9282408008492991459

namespace A208602

/-- `A208597(∑[n+1])` -/
def P9282408008492991459.Spec : Prop :=
  ∀ n, P9282408008492991459.a n = A208602 (n + 1)

end A208602

/-! ## A208602.P6847335808557873022

`record[gcd(A208597(n+1), A286335(n))]`
-/

namespace A208602.P6847335808557873022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208597 (n + 1)) (A286335 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208602.P6847335808557873022

namespace A208602

/-- `record[gcd(A208597(n+1), A286335(n))]` -/
def P6847335808557873022.Spec : Prop :=
  ∀ n, (P6847335808557873022.a n : ℤ) = A208602 (n + 1)

end A208602

/-! ## A208602.P12470065714785088211

`record[gcd(A116598(n), A208597(n+2))]`
-/

namespace A208602.P12470065714785088211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 n) (A208597 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208602.P12470065714785088211

namespace A208602

/-- `record[gcd(A116598(n), A208597(n+2))]` -/
def P12470065714785088211.Spec : Prop :=
  ∀ n, (P12470065714785088211.a n : ℤ) = A208602 (n + 1)

end A208602

/-! ## A208602.P7427421222065340783

`record[(2-A004736(n+1))*A208597(n+1)]`
-/

namespace A208602.P7427421222065340783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A208597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208602.P7427421222065340783

namespace A208602

/-- `record[(2-A004736(n+1))*A208597(n+1)]` -/
def P7427421222065340783.Spec : Prop :=
  ∀ n, P7427421222065340783.a n = A208602 (n + 1)

end A208602

/-! ## A208602.P2812705485409309658

`record[A208597(A000217(A065648(n)))]`
-/

namespace A208602.P2812705485409309658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000217 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208602.P2812705485409309658

namespace A208602

/-- `record[A208597(A000217(A065648(n)))]` -/
def P2812705485409309658.Spec : Prop :=
  ∀ n, P2812705485409309658.a n = A208602 (n + 1)

end A208602

/-! ## A208602.P9247883996399095627

`record[A208597(A000217(A032742(n+1)))]`
-/

namespace A208602.P9247883996399095627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208597 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208602.P9247883996399095627

namespace A208602

/-- `record[A208597(A000217(A032742(n+1)))]` -/
def P9247883996399095627.Spec : Prop :=
  ∀ n, P9247883996399095627.a n = A208602 (n + 1)

end A208602

/-!
# A208604: Expansion of phi(-q) / phi(q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A208604, there is no canonical definition to state claims against.
-/

/-! ## A208604.P14901048075169646074

`(-1)^n*A208274(n)`
-/

namespace A208604.P14901048075169646074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208274 n

end

end A208604.P14901048075169646074

/-! ## A208604.P5156047258587223794

`A000007(n)-A127391(n)`
-/

namespace A208604.P5156047258587223794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A127391 n

end

end A208604.P5156047258587223794

/-! ## A208604.P9731252345225081499

`A000038(n)-A208274(n)`
-/

namespace A208604.P9731252345225081499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A208274 n

end

end A208604.P9731252345225081499

/-! ## A208604.P8824458369405105316

`A208274(n)*A219977(n)`
-/

namespace A208604.P8824458369405105316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n * A219977 n

end

end A208604.P8824458369405105316

/-! ## A208604.P12208200434728444347

`A208274(n)*A280193(n)`
-/

namespace A208604.P12208200434728444347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n * A280193 n

end

end A208604.P12208200434728444347

/-! ## A208604.P6380501167379208927

`A208274(n)*A323191(n)`
-/

namespace A208604.P6380501167379208927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n * A323191 n

end

end A208604.P6380501167379208927

/-! ## A208604.P8858982713924966072

`1-(A127391(n)+A057427(n))`
-/

namespace A208604.P8858982713924966072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A127391 n + A057427 n)

end

end A208604.P8858982713924966072

/-! ## A208604.P17162927947958081889

`A208274(n)*A309873(n+1)`
-/

namespace A208604.P17162927947958081889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n * A309873 (n + 1)

end

end A208604.P17162927947958081889

/-! ## A208604.P10406373350581252065

`2*A000007(n)-A208274(n)`
-/

namespace A208604.P10406373350581252065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A208274 n

end

end A208604.P10406373350581252065

/-! ## A208604.P15941184039869418829

`A208274(n)-2*A127391(n)`
-/

namespace A208604.P15941184039869418829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n - 2 * A127391 n

end

end A208604.P15941184039869418829

/-! ## A208604.P3156563250528778988

`C(2, A005117(n+1)²)-A208274(n)`
-/

namespace A208604.P3156563250528778988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A005117 (n + 1) ^ 2).toNat : ℤ) - A208274 n

end

end A208604.P3156563250528778988

/-! ## A208604.P7246861831101448087

`A010054(n+1)*A010054(n)-A127391(n)`
-/

namespace A208604.P7246861831101448087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A010054 n - A127391 n

end

end A208604.P7246861831101448087

/-! ## A208604.P6534064503651599168

`A000122(n+1)*A000122(n)-A208274(n)`
-/

namespace A208604.P6534064503651599168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1) * A000122 n - A208274 n

end

end A208604.P6534064503651599168

/-! ## A208604.P12638572423809148888

`A208274(n+1)*A208274(n)-A208274(n)`
-/

namespace A208604.P12638572423809148888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (n + 1) * A208274 n - A208274 n

end

end A208604.P12638572423809148888

/-! ## A208604.P3944246887496241111

`A208274(2*n)-A127391(n)`
-/

namespace A208604.P3944246887496241111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (2 * n) - A127391 n

end

end A208604.P3944246887496241111

/-! ## A208604.P6457151745859189460

`A134746(2*n)-A127391(n)`
-/

namespace A208604.P6457151745859189460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * n) - A127391 n

end

end A208604.P6457151745859189460

/-!
# A208605: Expansion of q * psi(q^8) / phi(q) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A208605, there is no canonical definition to state claims against.
-/

/-! ## A208605.P12207609995754949186

`(-1)^n*A123655(n+1)`
-/

namespace A208605.P12207609995754949186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A123655 (n + 1)

end

end A208605.P12207609995754949186

/-! ## A208605.P8333192976633131458

`A123655(n+1)/A033999(n)`
-/

namespace A208605.P8333192976633131458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A208605.P8333192976633131458

/-! ## A208605.P15353506296039331420

`A123655(A000027(n+1))/(-1)^n`
-/

namespace A208605.P15353506296039331420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (A000027 (n + 1)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A208605.P15353506296039331420

/-! ## A208605.P17389903318181359259

`A007096(n+1)/((1-6/2)*A280560(n+1))`
-/

namespace A208605.P17389903318181359259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (n + 1) : ℚ) / ((1 - (6 : ℚ) / 2) * (A280560 (n + 1) : ℚ))

end

end A208605.P17389903318181359259

/-! ## A208605.P1938363285940321485

`A123655(n+1)/A112128(n)*A208933(n)`
-/

namespace A208605.P1938363285940321485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (n + 1) : ℚ) / (A112128 n : ℚ) * (A208933 n : ℚ)

end

end A208605.P1938363285940321485

/-! ## A208605.P6343517880934745560

`1-(A112128(n+1)+2)/2`
-/

namespace A208605.P6343517880934745560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A112128 (n + 1) + 2 : ℚ) / 2

end

end A208605.P6343517880934745560

/-! ## A208605.P16419676520993386803

`A189925(n+1)/A189925(C(n, n+1)!)`
-/

namespace A208605.P16419676520993386803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 (n + 1) : ℚ) / (A189925 (Nat.factorial (Nat.choose n (n + 1))) : ℚ)

end

end A208605.P16419676520993386803

/-! ## A208605.P13258817131316189599

`A189925(n+1)/A189925(n)*a(n-1)` with `a(0)=1`
-/

namespace A208605.P13258817131316189599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A189925 (n + 1) : ℚ) / (A189925 n : ℚ) * a (n - 1)

end

end A208605.P13258817131316189599

/-! ## A208605.P8358683308831777688

`A189925(n+1)/A189925(A328479(2*n+1))`
-/

namespace A208605.P8358683308831777688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 (n + 1) : ℚ) / (A189925 (A328479 (2 * n + 1)).toNat : ℚ)

end

end A208605.P8358683308831777688

/-! ## A208605.P7509987271538382947

`A208933(n+1)/A084099(2*n+1)`
-/

namespace A208605.P7509987271538382947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 (n + 1) : ℚ) / (A084099 (2 * n + 1) : ℚ)

end

end A208605.P7509987271538382947

/-! ## A208605.P16568521085124571163

`A112128(n+1)/A280560(2*n+1)`
-/

namespace A208605.P16568521085124571163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (n + 1) : ℚ) / (A280560 (2 * n + 1) : ℚ)

end

end A208605.P16568521085124571163

/-! ## A208605.P4143343028512245098

`A189925(n+1)/(A280560(2*n+1)-2)`
-/

namespace A208605.P4143343028512245098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 (n + 1) : ℚ) / (A280560 (2 * n + 1) - 2 : ℚ)

end

end A208605.P4143343028512245098

/-! ## A208605.P18363151958798559803

`A033999(2*n+1)/2*A112128(n+1)`
-/

namespace A208605.P18363151958798559803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℚ) / 2 * (A112128 (n + 1) : ℚ)

end

end A208605.P18363151958798559803

/-! ## A208605.P11903109940401138462

`A112128(2*n+1)/A007096(2*n+1)*A112128(n+1)`
-/

namespace A208605.P11903109940401138462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * n + 1) : ℚ) / (A007096 (2 * n + 1) : ℚ) * (A112128 (n + 1) : ℚ)

end

end A208605.P11903109940401138462

/-! ## A208605.P13916529810843320106

`A123655(2*n+1)/A112128(2*n+1)*A112128(n+1)`
-/

namespace A208605.P13916529810843320106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (2 * n + 1) : ℚ) / (A112128 (2 * n + 1) : ℚ) * (A112128 (n + 1) : ℚ)

end

end A208605.P13916529810843320106

/-! ## A208605.P5939393374944196087

`A112128(2*n+1)/A210067(2*n+1)*A208933(n+1)`
-/

namespace A208605.P5939393374944196087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * n + 1) : ℚ) / (A210067 (2 * n + 1) : ℚ) * (A208933 (n + 1) : ℚ)

end

end A208605.P5939393374944196087

/-! ## A208605.P15734391420368817898

`A210066(2*n+1)/A014969(2*n+1)*A112128(n+1)`
-/

namespace A208605.P15734391420368817898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210066 (2 * n + 1) : ℚ) / (A014969 (2 * n + 1) : ℚ) * (A112128 (n + 1) : ℚ)

end

end A208605.P15734391420368817898

/-!
# A208607: Triangle of coefficients of polynomials v(n,x) jointly generated with A208606; see the Formula section.

The programs for A208607, the canonical program `A208607.P11777769492716241133` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208607 has offset 1).

The definition of A208607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208607.P11777769492716241133

`2*A208335(n+1)-A208334(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208607

/-- `2*A208335(n+1)-A208334(n+1)` -/
def P11777769492716241133.Spec : Prop :=
  ∀ n, P11777769492716241133.a n = A208607 (n + 1)

theorem P11777769492716241133.correct : P11777769492716241133.Spec := by
  intro n
  simp only [A208607, Nat.add_sub_cancel]

end A208607

/-! ## A208607.P12657457114833370495

`A004277(A208335(n+1))-A208334(n+1)`
-/

namespace A208607.P12657457114833370495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208335 (n + 1)).toNat - A208334 (n + 1)

end

end A208607.P12657457114833370495

namespace A208607

/-- `A004277(A208335(n+1))-A208334(n+1)` -/
def P12657457114833370495.Spec : Prop :=
  ∀ n, P12657457114833370495.a n = A208607 (n + 1)

end A208607

/-! ## A208607.P1324987385642378450

`A146290(A317733(n+1)+1)+2*A025581(n)`
-/

namespace A208607.P1324987385642378450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146290 (A317733 (n + 1) + 1).toNat + 2 * A025581 n

end

end A208607.P1324987385642378450

namespace A208607

/-- `A146290(A317733(n+1)+1)+2*A025581(n)` -/
def P1324987385642378450.Spec : Prop :=
  ∀ n, P1324987385642378450.a n = A208607 (n + 1)

end A208607

/-!
# A208608: Triangle of coefficients of polynomials u(n,x) jointly generated with A208609; see the Formula section.

The programs for A208608, the canonical program `A208608.P14066292095081044890` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208608 has offset 1).

The definition of A208608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208608.P14066292095081044890

`A210559(n+1)-A155161(A038722(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A208608

/-- `A210559(n+1)-A155161(A038722(n+1))` -/
def P14066292095081044890.Spec : Prop :=
  ∀ n, P14066292095081044890.a n = A208608 (n + 1)

theorem P14066292095081044890.correct : P14066292095081044890.Spec := by
  intro n
  simp only [A208608, Nat.add_sub_cancel]

end A208608

/-! ## A208608.P11343379834036874365

`A209703(n+1)+Δ[A155161(A038722(n+1))]`
-/

namespace A208608.P11343379834036874365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209703 (n + 1) + (f1 (n + 1) - f1 n)

end

end A208608.P11343379834036874365

namespace A208608

/-- `A209703(n+1)+Δ[A155161(A038722(n+1))]` -/
def P11343379834036874365.Spec : Prop :=
  ∀ n, P11343379834036874365.a n = A208608 (n + 1)

end A208608

/-! ## A208608.P15000910547996228085

`A048766(A063007(n)*A249755(n))`
-/

namespace A208608.P15000910547996228085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A063007 n * A249755 n).toNat

end

end A208608.P15000910547996228085

namespace A208608

/-- `A048766(A063007(n)*A249755(n))` -/
def P15000910547996228085.Spec : Prop :=
  ∀ n, P15000910547996228085.a n = A208608 (n + 1)

end A208608

/-! ## A208608.P14608705135031298370

`A172263(A123163(n)+A114687(n+1))`
-/

namespace A208608.P14608705135031298370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A123163 n + A114687 (n + 1)).toNat

end

end A208608.P14608705135031298370

namespace A208608

/-- `A172263(A123163(n)+A114687(n+1))` -/
def P14608705135031298370.Spec : Prop :=
  ∀ n, P14608705135031298370.a n = A208608 (n + 1)

end A208608

/-!
# A208609: Triangle of coefficients of polynomials v(n,x) jointly generated with A208608; see the Formula section.

The programs for A208609, the canonical program `A208609.P10537684362394957244` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208609 has offset 1).

The definition of A208609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208609.P6027704826346633740

`T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A208609.P6027704826346633740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A208609.P6027704826346633740

namespace A208609

/-- `T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)` -/
def P6027704826346633740.Spec : Prop :=
  ∀ n, (P6027704826346633740.a n : ℤ) = A208609 (n + 1)

end A208609

/-! ## A208609.P10537684362394957244

`2*A208337(n+1)-A209127(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208609

/-- `2*A208337(n+1)-A209127(n+1)` -/
def P10537684362394957244.Spec : Prop :=
  ∀ n, P10537684362394957244.a n = A208609 (n + 1)

theorem P10537684362394957244.correct : P10537684362394957244.Spec := by
  intro n
  simp only [A208609, Nat.add_sub_cancel]

end A208609

/-! ## A208609.P17371780691108195739

`A208337(n+1)+A209126(n+1)-A038137(n)`
-/

namespace A208609.P17371780691108195739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) + (A209126 (n + 1) - A038137 n)

end

end A208609.P17371780691108195739

namespace A208609

/-- `A208337(n+1)+A209126(n+1)-A038137(n)` -/
def P17371780691108195739.Spec : Prop :=
  ∀ n, P17371780691108195739.a n = A208609 (n + 1)

end A208609

/-! ## A208609.P8742146861900596443

`A208337(n+1)+A208337(n+2)-A038137(n+1)`
-/

namespace A208609.P8742146861900596443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) + (A208337 (n + 2) - A038137 (n + 1))

end

end A208609.P8742146861900596443

namespace A208609

/-- `A208337(n+1)+A208337(n+2)-A038137(n+1)` -/
def P8742146861900596443.Spec : Prop :=
  ∀ n, P8742146861900596443.a n = A208609 (n + 1)

end A208609

/-! ## A208609.P3614337048055344526

`A207632(A038722(n+1))`
-/

namespace A208609.P3614337048055344526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (A038722 (n + 1)).toNat

end

end A208609.P3614337048055344526

namespace A208609

/-- `A207632(A038722(n+1))` -/
def P3614337048055344526.Spec : Prop :=
  ∀ n, P3614337048055344526.a n = A208609 (n + 1)

end A208609

/-! ## A208609.P6012139513448527054

`A207632(A061579(n)+1)`
-/

namespace A208609.P6012139513448527054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (A061579 n + 1).toNat

end

end A208609.P6012139513448527054

namespace A208609

/-- `A207632(A061579(n)+1)` -/
def P6012139513448527054.Spec : Prop :=
  ∀ n, P6012139513448527054.a n = A208609 (n + 1)

end A208609

/-! ## A208609.P6540542811443655445

`A209126(n+1)+A155161(A038722(n+1))`
-/

namespace A208609.P6540542811443655445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209126 (n + 1) + A155161 (A038722 (n + 1)).toNat

end

end A208609.P6540542811443655445

namespace A208609

/-- `A209126(n+1)+A155161(A038722(n+1))` -/
def P6540542811443655445.Spec : Prop :=
  ∀ n, P6540542811443655445.a n = A208609 (n + 1)

end A208609

/-! ## A208609.P12598156029683207379

`A209127(n+1)+A005843(A208337(n+1)-A209127(n+1))`
-/

namespace A208609.P12598156029683207379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209127 (n + 1) + A005843 (A208337 (n + 1) - A209127 (n + 1)).toNat

end

end A208609.P12598156029683207379

namespace A208609

/-- `A209127(n+1)+A005843(A208337(n+1)-A209127(n+1))` -/
def P12598156029683207379.Spec : Prop :=
  ∀ n, P12598156029683207379.a n = A208609 (n + 1)

end A208609

/-! ## A208609.P597307466052627503

`A005843(A208337(n+1))-A209127(n+1)`
-/

namespace A208609.P597307466052627503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208337 (n + 1)).toNat - A209127 (n + 1)

end

end A208609.P597307466052627503

namespace A208609

/-- `A005843(A208337(n+1))-A209127(n+1)` -/
def P597307466052627503.Spec : Prop :=
  ∀ n, P597307466052627503.a n = A208609 (n + 1)

end A208609

/-!
# A208610: Triangle of coefficients of polynomials u(n,x) jointly generated with A208611; see the Formula section.

The programs for A208610, there is no canonical definition to state claims against.
-/

/-! ## A208610.P16713039746152599296

`or(1, A259899(A089231(n+1)))`
-/

namespace A208610.P16713039746152599296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259899 (A089231 (n + 1)).toNat)

end

end A208610.P16713039746152599296

/-! ## A208610.P217214086388896503

`A074775(A026300(n)%A352267(3*n+2))`
-/

namespace A208610.P217214086388896503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (Int.tmod (A026300 n) (A352267 (3 * n + 2))).toNat

end

end A208610.P217214086388896503

/-! ## A208610.P2445021217489768857

`(A230104(A026300(n))%A034168(n+1))%A001358(n+1)`
-/

namespace A208610.P2445021217489768857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A230104 (A026300 n).toNat) (A034168 (n + 1))) (A001358 (n + 1))

end

end A208610.P2445021217489768857

/-!
# A208611: Triangle of coefficients of polynomials v(n,x) jointly generated with A208610; see the Formula section.

The programs for A208611, the canonical program `A208611.P15995575520268450885` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208611 has offset 1).

The definition of A208611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208611.P15995575520268450885

`2*A208339(n+1)-A209129(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208611

/-- `2*A208339(n+1)-A209129(n+1)` -/
def P15995575520268450885.Spec : Prop :=
  ∀ n, P15995575520268450885.a n = A208611 (n + 1)

theorem P15995575520268450885.correct : P15995575520268450885.Spec := by
  intro n
  simp only [A208611, Nat.add_sub_cancel]

end A208611

/-! ## A208611.P3228995147480877942

`A209129(n+1)+∑[A209128(n+1)-A209129(n+1)]`
-/

namespace A208611.P3228995147480877942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209128 (n + 1) - A209129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209129 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208611.P3228995147480877942

namespace A208611

/-- `A209129(n+1)+∑[A209128(n+1)-A209129(n+1)]` -/
def P3228995147480877942.Spec : Prop :=
  ∀ n, P3228995147480877942.a n = A208611 (n + 1)

end A208611

/-! ## A208611.P18026768906274636657

`A004277(A208339(n+1))-A209129(n+1)`
-/

namespace A208611.P18026768906274636657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208339 (n + 1)).toNat - A209129 (n + 1)

end

end A208611.P18026768906274636657

namespace A208611

/-- `A004277(A208339(n+1))-A209129(n+1)` -/
def P18026768906274636657.Spec : Prop :=
  ∀ n, P18026768906274636657.a n = A208611 (n + 1)

end A208611

/-!
# A208614: Number of partitions of n into distinct primes where all of the prime factors of n are represented in the partition.

The programs for A208614, there is no canonical definition to state claims against.
-/

/-! ## A208614.P13874914817126774175

`A348327(A047625(n))`
-/

namespace A208614.P13874914817126774175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (A047625 n).toNat

end

end A208614.P13874914817126774175

/-! ## A208614.P8466385496110582768

`A023532(or(4, A126647(n+1)))`
-/

namespace A208614.P8466385496110582768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (Int.lor 4 (A126647 (n + 1))).toNat

end

end A208614.P8466385496110582768

/-! ## A208614.P1166974529095951195

`A030190(∑[∑[A040986(n+1)]])`
-/

namespace A208614.P1166974529095951195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208614.P1166974529095951195

/-! ## A208614.P2069293693766999391

`A030302(∑[∑[A040986(n+1)]])`
-/

namespace A208614.P2069293693766999391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208614.P2069293693766999391

/-! ## A208614.P11622982581176668276

`A353628(∑[A220474(2*(n+1))])`
-/

namespace A208614.P11622982581176668276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220474 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208614.P11622982581176668276

/-!
# A208616: Number of Young tableaux with 3 n-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208616, there is no canonical definition to state claims against.
-/

/-! ## A208616.P12890864817311317788

`A208615(A167614(n+2))`
-/

namespace A208616.P12890864817311317788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A167614 (n + 2)).toNat

end

end A208616.P12890864817311317788

/-! ## A208616.P17109990217211455172

`A208615(A141214(n)+6)`
-/

namespace A208616.P17109990217211455172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A141214 n + 6).toNat

end

end A208616.P17109990217211455172

/-! ## A208616.P12992223519615662317

`A208615(A052905(n)+8)`
-/

namespace A208616.P12992223519615662317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A052905 n + 8).toNat

end

end A208616.P12992223519615662317

/-! ## A208616.P17582687449371434405

`A208615(A055999(n)+9)`
-/

namespace A208616.P17582687449371434405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A055999 n + 9).toNat

end

end A208616.P17582687449371434405

/-! ## A208616.P4812520643783139183

`A208615(eq[2, A141169(n)])`
-/

namespace A208616.P4812520643783139183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208616.P4812520643783139183

/-!
# A208617: Number of Young tableaux with 4 n-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208617, there is no canonical definition to state claims against.
-/

/-! ## A208617.P4636073228213402071

`A208615(A155212(n)+12)`
-/

namespace A208617.P4636073228213402071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A155212 n + 12).toNat

end

end A208617.P4636073228213402071

/-! ## A208617.P1802057228536463505

`A208615(eq[3, A141169(n)])`
-/

namespace A208617.P1802057228536463505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208617.P1802057228536463505

/-! ## A208617.P14225522682936270526

`A208615(eq[4, A002262(n)])`
-/

namespace A208617.P14225522682936270526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208617.P14225522682936270526

/-! ## A208617.P4695752120346845344

`A208615(eq[8, A166918(n)])`
-/

namespace A208617.P4695752120346845344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208617.P4695752120346845344

/-! ## A208617.P18226804594281427880

`A208615(eq[8, A193588(n)])`
-/

namespace A208617.P18226804594281427880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208617.P18226804594281427880

/-!
# A208618: Number of Young tableaux with 5 n-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208618, there is no canonical definition to state claims against.
-/

/-! ## A208618.P10007362812483407003

`A208615(eq[5, A002262(n)])`
-/

namespace A208618.P10007362812483407003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208618.P10007362812483407003

/-! ## A208618.P4303798259857290427

`A208615(eq[5, A141169(n)])`
-/

namespace A208618.P4303798259857290427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208618.P4303798259857290427

/-! ## A208618.P8094319782257910031

`A208615(eq[5, A144328(n+1)])`
-/

namespace A208618.P8094319782257910031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208618.P8094319782257910031

/-! ## A208618.P11630129016631455157

`A208615(eq[6, A002260(n+1)])`
-/

namespace A208618.P11630129016631455157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208618.P11630129016631455157

/-! ## A208618.P6904151987840437805

`A208615(eq[6, A134868(n+1)])`
-/

namespace A208618.P6904151987840437805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208618.P6904151987840437805

/-!
# A208619: Number of Young tableaux with 6 n-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208619, there is no canonical definition to state claims against.
-/

/-! ## A208619.P12247145706863979673

`A208615(eq[6, A002262(n)])`
-/

namespace A208619.P12247145706863979673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208619.P12247145706863979673

/-! ## A208619.P2315011842113159745

`A208615(eq[8, A141169(n)])`
-/

namespace A208619.P2315011842113159745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208619.P2315011842113159745

/-! ## A208619.P18406014453824681018

`A208615(eq[6, A144328(n+1)])`
-/

namespace A208619.P18406014453824681018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208619.P18406014453824681018

/-! ## A208619.P6856112997319994823

`A208615(eq[7, A002260(n+1)])`
-/

namespace A208619.P6856112997319994823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208619.P6856112997319994823

/-! ## A208619.P1323102558498381410

`A208615(eq[7, A134868(n+1)])`
-/

namespace A208619.P1323102558498381410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208619.P1323102558498381410

/-!
# A208620: Number of Young tableaux with 7 n-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208620, there is no canonical definition to state claims against.
-/

/-! ## A208620.P7985474093574569243

`A208615(eq[8, A002260(n+1)])`
-/

namespace A208620.P7985474093574569243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208620.P7985474093574569243

/-!
# A208621: Number of Young tableaux with 8 n-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208621, there is no canonical definition to state claims against.
-/

/-! ## A208621.P12288123680651004435

`A208615(eq[9, A002260(n+1)])`
-/

namespace A208621.P12288123680651004435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208621.P12288123680651004435

/-! ## A208621.P141892759978427767

`A208615(A000096(n+8)-n)`
-/

namespace A208621.P141892759978427767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A000096 (n + 8) - (n : ℤ)).toNat

end

end A208621.P141892759978427767

/-!
# A208624: Number of Young tableaux with n 4-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208624, there is no canonical definition to state claims against.
-/

/-! ## A208624.P10282020563529684197

`A208615(A052905(n+2))`
-/

namespace A208624.P10282020563529684197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A052905 (n + 2)).toNat

end

end A208624.P10282020563529684197

/-! ## A208624.P8415698400147942491

`A208615(eq[4, A025581(n)])`
-/

namespace A208624.P8415698400147942491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208624.P8415698400147942491

/-! ## A208624.P12749207955433275911

`A208615(eq[4, A116949(n)])`
-/

namespace A208624.P12749207955433275911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208624.P12749207955433275911

/-! ## A208624.P17896777448449744007

`A208615(eq[9, A099375(n)])`
-/

namespace A208624.P17896777448449744007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208624.P17896777448449744007

/-! ## A208624.P13633266867359830638

`A208615(eq[4, sqrt(A130321(n))])`
-/

namespace A208624.P13633266867359830638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A208624.P13633266867359830638

/-!
# A208625: Number of Young tableaux with n 5-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208625, there is no canonical definition to state claims against.
-/

/-! ## A208625.P8170283132013499459

`A208615(A055999(n+3))`
-/

namespace A208625.P8170283132013499459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A055999 (n + 3)).toNat

end

end A208625.P8170283132013499459

/-! ## A208625.P9422002542098799306

`A208615(eq[2, A116949(n)])`
-/

namespace A208625.P9422002542098799306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208625.P9422002542098799306

/-! ## A208625.P7465981157997313427

`A208615(eq[5, A025581(n)])`
-/

namespace A208625.P7465981157997313427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208625.P7465981157997313427

/-! ## A208625.P5459524454954800106

`A208615(eq[6, A193739(n)])`
-/

namespace A208625.P5459524454954800106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208625.P5459524454954800106

/-! ## A208625.P12471522235058941527

`A208615(eq[11, A099375(n)])`
-/

namespace A208625.P12471522235058941527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208625.P12471522235058941527

/-!
# A208626: Number of Young tableaux with n 6-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208626, there is no canonical definition to state claims against.
-/

/-! ## A208626.P6881058927354794162

`A208615(eq[6, A025581(n)])`
-/

namespace A208626.P6881058927354794162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208626.P6881058927354794162

/-! ## A208626.P2481233067255635057

`A208615(eq[7, A193739(n)])`
-/

namespace A208626.P2481233067255635057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208626.P2481233067255635057

/-! ## A208626.P5979040664552790035

`A208615(eq[13, A099375(n)])`
-/

namespace A208626.P5979040664552790035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208626.P5979040664552790035

/-! ## A208626.P1980381679324091368

`A208615(eq[8, sqrt(A130321(n))])`
-/

namespace A208626.P1980381679324091368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A208626.P1980381679324091368

/-! ## A208626.P10915612707988156975

`A208615(eq[7, A004736(n+1)])`
-/

namespace A208626.P10915612707988156975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208626.P10915612707988156975

/-!
# A208627: Number of Young tableaux with n 7-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208627, there is no canonical definition to state claims against.
-/

/-! ## A208627.P5666332527938184241

`A208615(eq[8, A004736(n+1)])`
-/

namespace A208627.P5666332527938184241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208627.P5666332527938184241

/-!
# A208628: Number of Young tableaux with n 8-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208628, there is no canonical definition to state claims against.
-/

/-! ## A208628.P6009079950398521159

`A208615(eq[9, A004736(n+1)])`
-/

namespace A208628.P6009079950398521159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208628.P6009079950398521159

/-! ## A208628.P11187939171328695982

`A208615(eq[A040002(n)², A116949(n)])`
-/

namespace A208628.P11187939171328695982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A208628.P11187939171328695982

/-!
# A208629: Number of Young tableaux with n 9-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208629, there is no canonical definition to state claims against.
-/

/-! ## A208629.P4012579160644535209

`A208615(eq[10, A004736(n+1)])`
-/

namespace A208629.P4012579160644535209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208629.P4012579160644535209

/-!
# A208631: Number of Young tableaux with n n-length rows, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208631, there is no canonical definition to state claims against.
-/

/-! ## A208631.P18304779966980328823

`A208615(∑[4*n])`
-/

namespace A208631.P18304779966980328823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208631.P18304779966980328823

/-! ## A208631.P12099095080835873994

`or(1, A208615(A046092(n)))`
-/

namespace A208631.P12099095080835873994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A208615 (A046092 n).toNat)

end

end A208631.P12099095080835873994

/-! ## A208631.P11323140351711504868

`A208615(A046092(n))*A208615(n)`
-/

namespace A208631.P11323140351711504868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 (A046092 n).toNat * A208615 n

end

end A208631.P11323140351711504868

/-! ## A208631.P5583223280501142436

`gcd(A000038(n), A208615(A046092(n)))`
-/

namespace A208631.P5583223280501142436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208615 (A046092 n).toNat)

end

end A208631.P5583223280501142436

/-! ## A208631.P10328846477207315195

`lcm(A033999(n), A208615(A046092(n)))`
-/

namespace A208631.P10328846477207315195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208615 (A046092 n).toNat)

end

end A208631.P10328846477207315195

/-!
# A208632: Number of n X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208632, there is no canonical definition to state claims against.
-/

/-! ## A208632.P6856812311383942258

`A208637((n+1)²+n²)`
-/

namespace A208632.P6856812311383942258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 ((n + 1) ^ 2 + n ^ 2)

end

end A208632.P6856812311383942258

/-! ## A208632.P4546351370187937281

`record[A003982(n)*A208637(n+1)]`
-/

namespace A208632.P4546351370187937281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208632.P4546351370187937281

/-! ## A208632.P16588999120203658470

`gcd(A000038(n), A208637(A001844(n)))`
-/

namespace A208632.P16588999120203658470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208637 (A001844 n).toNat)

end

end A208632.P16588999120203658470

/-! ## A208632.P4166165699847934455

`lcm(A124778(n), A208637(A001844(n)))`
-/

namespace A208632.P4166165699847934455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124778 n) (A208637 (A001844 n).toNat)

end

end A208632.P4166165699847934455

/-! ## A208632.P9210394191775544568

`or(A000007(n), A208637(A001844(n)))`
-/

namespace A208632.P9210394191775544568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208637 (A001844 n).toNat)

end

end A208632.P9210394191775544568

/-!
# A208633: Number of n X 4 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208633, the canonical program `A208633.P10775891868899599403` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208633 has offset 1).

The definition of A208633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208633.P13233693058008545522

`ogf((8-17x+4x^2)/(1-5x+6x^2-x^3))`
-/

namespace A208633.P13233693058008545522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -17, 4] [1, -5, 6, -1] n

end

end A208633.P13233693058008545522

namespace A208633

/-- `ogf((8-17x+4x^2)/(1-5x+6x^2-x^3))` -/
def P13233693058008545522.Spec : Prop :=
  ∀ n, P13233693058008545522.a n = A208633 (n + 1)

end A208633

/-! ## A208633.P10775891868899599403

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=8, a(1)=23, a(2)=71`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208633

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P10775891868899599403.Spec : Prop :=
  ∀ n, P10775891868899599403.a n = A208633 (n + 1)

theorem P10775891868899599403.correct : P10775891868899599403.Spec := by
  intro n
  simp only [A208633, Nat.add_sub_cancel]

end A208633

/-! ## A208633.P7373215823247828636

`A094648(2*(n+1))+A028495(2*n+3)`
-/

namespace A208633.P7373215823247828636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 (2 * (n + 1)) + A028495 (2 * n + 3)

end

end A208633.P7373215823247828636

namespace A208633

/-- `A094648(2*(n+1))+A028495(2*n+3)` -/
def P7373215823247828636.Spec : Prop :=
  ∀ n, P7373215823247828636.a n = A208633 (n + 1)

end A208633

/-! ## A208633.P8307048619530677861

`A096975(2*(n+1))+A028495(2*n+3)`
-/

namespace A208633.P8307048619530677861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096975 (2 * (n + 1)) + A028495 (2 * n + 3)

end

end A208633.P8307048619530677861

namespace A208633

/-- `A096975(2*(n+1))+A028495(2*n+3)` -/
def P8307048619530677861.Spec : Prop :=
  ∀ n, P8307048619530677861.a n = A208633 (n + 1)

end A208633

/-! ## A208633.P13987518525353036351

`A208637(A027379(n+2))`
-/

namespace A208633.P13987518525353036351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A027379 (n + 2)).toNat

end

end A208633.P13987518525353036351

namespace A208633

/-- `A208637(A027379(n+2))` -/
def P13987518525353036351.Spec : Prop :=
  ∀ n, P13987518525353036351.a n = A208633 (n + 1)

end A208633

/-!
# A208634: Number of n X 5 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208634, the canonical program `A208634.P8955280069549731136` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208634 has offset 1).

The definition of A208634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208634.P7881687390974093898

`ogf((16-49x+28x^2)/(1-6x+10x^2-4x^3))`
-/

namespace A208634.P7881687390974093898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -49, 28] [1, -6, 10, -4] n

end

end A208634.P7881687390974093898

namespace A208634

/-- `ogf((16-49x+28x^2)/(1-6x+10x^2-4x^3))` -/
def P7881687390974093898.Spec : Prop :=
  ∀ n, P7881687390974093898.a n = A208634 (n + 1)

end A208634

/-! ## A208634.P8955280069549731136

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=16, a(1)=47, a(2)=150`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208634

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P8955280069549731136.Spec : Prop :=
  ∀ n, P8955280069549731136.a n = A208634 (n + 1)

theorem P8955280069549731136.correct : P8955280069549731136.Spec := by
  intro n
  simp only [A208634, Nat.add_sub_cancel]

end A208634

/-! ## A208634.P8846428358404010784

`A208637(A046691(n+3))`
-/

namespace A208634.P8846428358404010784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A046691 (n + 3)).toNat

end

end A208634.P8846428358404010784

namespace A208634

/-- `A208637(A046691(n+3))` -/
def P8846428358404010784.Spec : Prop :=
  ∀ n, P8846428358404010784.a n = A208634 (n + 1)

end A208634

/-! ## A208634.P12512043038065306773

`A208637(Δ[A023545(n+1)])`
-/

namespace A208634.P12512043038065306773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (f1 (n + 1) - f1 n).toNat

end

end A208634.P12512043038065306773

namespace A208634

/-- `A208637(Δ[A023545(n+1)])` -/
def P12512043038065306773.Spec : Prop :=
  ∀ n, P12512043038065306773.a n = A208634 (n + 1)

end A208634

/-! ## A208634.P2164373970233276229

`A208637(A000096(n+4)-3)`
-/

namespace A208634.P2164373970233276229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000096 (n + 4) - 3).toNat

end

end A208634.P2164373970233276229

namespace A208634

/-- `A208637(A000096(n+4)-3)` -/
def P2164373970233276229.Spec : Prop :=
  ∀ n, P2164373970233276229.a n = A208634 (n + 1)

end A208634

/-!
# A208635: Number of n X 6 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208635, there is no canonical definition to state claims against.
-/

/-! ## A208635.P15111170334664121722

`A208637(A052905(n+3))`
-/

namespace A208635.P15111170334664121722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A052905 (n + 3)).toNat

end

end A208635.P15111170334664121722

/-! ## A208635.P46428167394912384

`A208637(A055999(n+3)+1)`
-/

namespace A208635.P46428167394912384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A055999 (n + 3) + 1).toNat

end

end A208635.P46428167394912384

/-! ## A208635.P7407392462431598286

`A208637(A000217(n+6)-5)`
-/

namespace A208635.P7407392462431598286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000217 (n + 6) - 5).toNat

end

end A208635.P7407392462431598286

/-! ## A208635.P11482668220618902985

`A208637(A000124(n+6)-6)`
-/

namespace A208635.P11482668220618902985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000124 (n + 6) - 6).toNat

end

end A208635.P11482668220618902985

/-! ## A208635.P7517164102566785071

`A208637(Δ[A023545(n+2)]-1)`
-/

namespace A208635.P7517164102566785071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (f1 (n + 1) - f1 n - 1).toNat

end

end A208635.P7517164102566785071

/-!
# A208636: Number of n X 7 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208636, there is no canonical definition to state claims against.
-/

/-! ## A208636.P184546369257756194

`A208637(A055999(n+4))`
-/

namespace A208636.P184546369257756194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A055999 (n + 4)).toNat

end

end A208636.P184546369257756194

/-! ## A208636.P3358185611039323668

`A208637(Δ[A026054(n+4)])`
-/

namespace A208636.P3358185611039323668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (f1 (n + 1) - f1 n).toNat

end

end A208636.P3358185611039323668

/-! ## A208636.P10118726192378124941

`A208637(A155212(n+3)+2)`
-/

namespace A208636.P10118726192378124941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A155212 (n + 3) + 2).toNat

end

end A208636.P10118726192378124941

/-! ## A208636.P9319381503617213166

`A208637(A000124(n+7)-7)`
-/

namespace A208636.P9319381503617213166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000124 (n + 7) - 7).toNat

end

end A208636.P9319381503617213166

/-! ## A208636.P14157614724257436673

`A208637(A167614(n+4)+A103517(n+1))`
-/

namespace A208636.P14157614724257436673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A167614 (n + 4) + A103517 (n + 1)).toNat

end

end A208636.P14157614724257436673

/-!
# A208637: T(n,k)=Number of nXk 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208637, there is no canonical definition to state claims against.
-/

/-! ## A208637.P5532157873122869978

`A340205(A112492(n))+A137688(n)`
-/

namespace A208637.P5532157873122869978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A112492 n).toNat + A137688 n

end

end A208637.P5532157873122869978

/-! ## A208637.P8338479318297044635

`A096466(n)-A340205(A112492(n))`
-/

namespace A208637.P8338479318297044635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096466 n - A340205 (A112492 n).toNat

end

end A208637.P8338479318297044635

/-! ## A208637.P10021321356555386626

`A358125(n+1)+A135303(A277198(3*n+2))`
-/

namespace A208637.P10021321356555386626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358125 (n + 1) + A135303 (A277198 (3 * n + 2)).toNat

end

end A208637.P10021321356555386626

/-! ## A208637.P12501833034364598443

`A346132(A322266(n+1))+A000225(A259361(2*n))`
-/

namespace A208637.P12501833034364598443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A322266 (n + 1)).toNat + A000225 (A259361 (2 * n)).toNat

end

end A208637.P12501833034364598443

/-!
# A208638: Number of 3 X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208638, the canonical program `A208638.P7847836288641293721` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208638 has offset 1).

The definition of A208638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208638.P7847836288641293721

`∑[5*2^n-1]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208638

/-- `∑[5*2^n-1]` -/
def P7847836288641293721.Spec : Prop :=
  ∀ n, P7847836288641293721.a n = A208638 (n + 1)

theorem P7847836288641293721.correct : P7847836288641293721.Spec := by
  intro n
  simp only [A208638, Nat.add_sub_cancel]

end A208638

/-! ## A208638.P12544090102215953542

`ogf((4-3x)/(1-4x+5x^2-2x^3))`
-/

namespace A208638.P12544090102215953542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -4, 5, -2] n

end

end A208638.P12544090102215953542

namespace A208638

/-- `ogf((4-3x)/(1-4x+5x^2-2x^3))` -/
def P12544090102215953542.Spec : Prop :=
  ∀ n, P12544090102215953542.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P145345299280481736

`∑[lcm(5, 2^n)]-(n+1)`
-/

namespace A208638.P145345299280481736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A208638.P145345299280481736

namespace A208638

/-- `∑[lcm(5, 2^n)]-(n+1)` -/
def P145345299280481736.Spec : Prop :=
  ∀ n, P145345299280481736.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P567692110655899982

`2*(a(n-1)+2)+n` with `a(0)=4`
-/

namespace A208638.P567692110655899982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * (a (n - 1) + 2) + n

end

end A208638.P567692110655899982

namespace A208638

/-- `2*(a(n-1)+2)+n` -/
def P567692110655899982.Spec : Prop :=
  ∀ n, (P567692110655899982.a n : ℤ) = A208638 (n + 1)

end A208638

/-! ## A208638.P16912785113426222154

`∑[2*a(n-1)]-n` with `a(0)=4, a(1)=10`
-/

namespace A208638.P16912785113426222154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 10] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A208638.P16912785113426222154

namespace A208638

/-- `∑[2*a(n-1)]-n` -/
def P16912785113426222154.Spec : Prop :=
  ∀ n, P16912785113426222154.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P4745462668036127498

`5*2^n-(1-a(n-1))` with `a(0)=4`
-/

namespace A208638.P4745462668036127498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (5 * 2 ^ n : ℤ) - (1 - a (n - 1))

end

end A208638.P4745462668036127498

namespace A208638

/-- `5*2^n-(1-a(n-1))` -/
def P4745462668036127498.Spec : Prop :=
  ∀ n, P4745462668036127498.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P9399508460181188620

`lcm(2, a(n-1)+n+2)-n` with `a(0)=4`
-/

namespace A208638.P9399508460181188620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm 2 (a (n - 1) + (n + 2 : ℤ)) : ℤ) - (n : ℤ)

end

end A208638.P9399508460181188620

namespace A208638

/-- `lcm(2, a(n-1)+n+2)-n` -/
def P9399508460181188620.Spec : Prop :=
  ∀ n, P9399508460181188620.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P175497387987784492

`a(n-1)+4+a(n-1)+n` with `a(0)=4`
-/

namespace A208638.P175497387987784492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 4 + (a (n - 1) + n)

end

end A208638.P175497387987784492

namespace A208638

/-- `a(n-1)+4+a(n-1)+n` -/
def P175497387987784492.Spec : Prop :=
  ∀ n, (P175497387987784492.a n : ℤ) = A208638 (n + 1)

end A208638

/-! ## A208638.P7013999258928210476

`3*a(n-1)-(a(n-1)-4-n)` with `a(0)=4`
-/

namespace A208638.P7013999258928210476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 4 - (n : ℤ))

end

end A208638.P7013999258928210476

namespace A208638

/-- `3*a(n-1)-(a(n-1)-4-n)` -/
def P7013999258928210476.Spec : Prop :=
  ∀ n, P7013999258928210476.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P12880345386173051554

`A094002(n+1)-1`
-/

namespace A208638.P12880345386173051554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094002 (n + 1) - 1

end

end A208638.P12880345386173051554

namespace A208638

/-- `A094002(n+1)-1` -/
def P12880345386173051554.Spec : Prop :=
  ∀ n, P12880345386173051554.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P5078001445916185873

`A188589(n+2)-1`
-/

namespace A208638.P5078001445916185873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188589 (n + 2) - 1

end

end A208638.P5078001445916185873

namespace A208638

/-- `A188589(n+2)-1` -/
def P5078001445916185873.Spec : Prop :=
  ∀ n, P5078001445916185873.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P5188923913079350259

`A133124(n+2)-3`
-/

namespace A208638.P5188923913079350259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133124 (n + 2) - 3

end

end A208638.P5188923913079350259

namespace A208638

/-- `A133124(n+2)-3` -/
def P5188923913079350259.Spec : Prop :=
  ∀ n, P5188923913079350259.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P2390657575085751171

`A097809(n+1)+n`
-/

namespace A208638.P2390657575085751171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097809 (n + 1) + (n : ℤ)

end

end A208638.P2390657575085751171

namespace A208638

/-- `A097809(n+1)+n` -/
def P2390657575085751171.Spec : Prop :=
  ∀ n, P2390657575085751171.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P14653744010535506986

`A063757(Δ[n²])-n`
-/

namespace A208638.P14653744010535506986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A208638.P14653744010535506986

namespace A208638

/-- `A063757(Δ[n²])-n` -/
def P14653744010535506986.Spec : Prop :=
  ∀ n, P14653744010535506986.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P12583252356272227683

`∑[A134062(n)+1]+2`
-/

namespace A208638.P12583252356272227683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134062 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A208638.P12583252356272227683

namespace A208638

/-- `∑[A134062(n)+1]+2` -/
def P12583252356272227683.Spec : Prop :=
  ∀ n, P12583252356272227683.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P7572044988504828350

`A048487(n+1)-(n+2)`
-/

namespace A208638.P7572044988504828350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 (n + 1) - (n + 2 : ℤ)

end

end A208638.P7572044988504828350

namespace A208638

/-- `A048487(n+1)-(n+2)` -/
def P7572044988504828350.Spec : Prop :=
  ∀ n, P7572044988504828350.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P3947922549909715072

`A154252(n+1)+2-n`
-/

namespace A208638.P3947922549909715072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154252 (n + 1) + (2 - (n : ℤ))

end

end A208638.P3947922549909715072

namespace A208638

/-- `A154252(n+1)+2-n` -/
def P3947922549909715072.Spec : Prop :=
  ∀ n, P3947922549909715072.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P11412104835766916786

`A139634(n+1)+3-n`
-/

namespace A208638.P11412104835766916786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139634 (n + 1) + (3 - (n : ℤ))

end

end A208638.P11412104835766916786

namespace A208638

/-- `A139634(n+1)+3-n` -/
def P11412104835766916786.Spec : Prop :=
  ∀ n, P11412104835766916786.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P14919476769606896391

`2*A154117(n+1)-n`
-/

namespace A208638.P14919476769606896391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154117 (n + 1) - (n : ℤ)

end

end A208638.P14919476769606896391

namespace A208638

/-- `2*A154117(n+1)-n` -/
def P14919476769606896391.Spec : Prop :=
  ∀ n, P14919476769606896391.a n = A208638 (n + 1)

end A208638

/-! ## A208638.P2282434199217375143

`A154117(n+2)-(n+3)`
-/

namespace A208638.P2282434199217375143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 (n + 2) - (n + 3 : ℤ)

end

end A208638.P2282434199217375143

namespace A208638

/-- `A154117(n+2)-(n+3)` -/
def P2282434199217375143.Spec : Prop :=
  ∀ n, P2282434199217375143.a n = A208638 (n + 1)

end A208638

/-!
# A208639: Number of 4 X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208639, the canonical program `A208639.P9429444533361249427` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208639 has offset 1).

The definition of A208639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208639.P13456753926689774038

`ogf((8-6x-3x^2+2x^4)/(1-5x+9x^2-7x^3+2x^4))`
-/

namespace A208639.P13456753926689774038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -6, -3, 0, 2] [1, -5, 9, -7, 2] n

end

end A208639.P13456753926689774038

namespace A208639

/-- `ogf((8-6x-3x^2+2x^4)/(1-5x+9x^2-7x^3+2x^4))` -/
def P13456753926689774038.Spec : Prop :=
  ∀ n, P13456753926689774038.a n = A208639 (n + 1)

end A208639

/-! ## A208639.P9429444533361249427

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=8, a(1)=34, a(2)=95, a(3)=225, a(4)=494`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208639

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P9429444533361249427.Spec : Prop :=
  ∀ n, P9429444533361249427.a n = A208639 (n + 1)

theorem P9429444533361249427.correct : P9429444533361249427.Spec := by
  intro n
  simp only [A208639, Nat.add_sub_cancel]

end A208639

/-! ## A208639.P5709371186297910680

`A208637(∑[n+3]+7)`
-/

namespace A208639.P5709371186297910680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A208639.P5709371186297910680

namespace A208639

/-- `A208637(∑[n+3]+7)` -/
def P5709371186297910680.Spec : Prop :=
  ∀ n, P5709371186297910680.a n = A208639 (n + 1)

end A208639

/-! ## A208639.P18011305470655771698

`or(A021913(n), A208637(A167614(n+2)+1))`
-/

namespace A208639.P18011305470655771698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 n) (A208637 (A167614 (n + 2) + 1).toNat)

end

end A208639.P18011305470655771698

namespace A208639

/-- `or(A021913(n), A208637(A167614(n+2)+1))` -/
def P18011305470655771698.Spec : Prop :=
  ∀ n, P18011305470655771698.a n = A208639 (n + 1)

end A208639

/-! ## A208639.P7962246514588195337

`A208637(A167614(n+2)+1)+A000007(n+1)`
-/

namespace A208639.P7962246514588195337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A167614 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A208639.P7962246514588195337

namespace A208639

/-- `A208637(A167614(n+2)+1)+A000007(n+1)` -/
def P7962246514588195337.Spec : Prop :=
  ∀ n, P7962246514588195337.a n = A208639 (n + 1)

end A208639

/-!
# A208640: Number of 5 X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208640, the canonical program `A208640.P7643991344882330148` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208640 has offset 1).

The definition of A208640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208640.P7643991344882330148

`ogf((16-7x-26x^2+8x^3+16x^4-2x^5-4x^6)/(1-6x+14x^2-16x^3+9x^4-2x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208640

/-- `ogf((16-7x-26x^2+8x^3+16x^4-2x^5-4x^6)/(1-6x+14x^2-16x^3+9x^4-2x^5))` -/
def P7643991344882330148.Spec : Prop :=
  ∀ n, P7643991344882330148.a n = A208640 (n + 1)

theorem P7643991344882330148.correct : P7643991344882330148.Spec := by
  intro n
  simp only [A208640, Nat.add_sub_cancel]

end A208640

/-! ## A208640.P2779218760828346559

`A208637(A056000(n)+15)`
-/

namespace A208640.P2779218760828346559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A056000 n + 15).toNat

end

end A208640.P2779218760828346559

namespace A208640

/-- `A208637(A056000(n)+15)` -/
def P2779218760828346559.Spec : Prop :=
  ∀ n, P2779218760828346559.a n = A208640 (n + 1)

end A208640

/-! ## A208640.P4480014117252377795

`A208637(A167614(n+3)+2)`
-/

namespace A208640.P4480014117252377795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A167614 (n + 3) + 2).toNat

end

end A208640.P4480014117252377795

namespace A208640

/-- `A208637(A167614(n+3)+2)` -/
def P4480014117252377795.Spec : Prop :=
  ∀ n, P4480014117252377795.a n = A208640 (n + 1)

end A208640

/-! ## A208640.P10585192931236361659

`A208637(A000124(n+4)+4)`
-/

namespace A208640.P10585192931236361659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000124 (n + 4) + 4).toNat

end

end A208640.P10585192931236361659

namespace A208640

/-- `A208637(A000124(n+4)+4)` -/
def P10585192931236361659.Spec : Prop :=
  ∀ n, P10585192931236361659.a n = A208640 (n + 1)

end A208640

/-! ## A208640.P15386329884996081095

`A208637(A000096(n+3)+6)`
-/

namespace A208640.P15386329884996081095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000096 (n + 3) + 6).toNat

end

end A208640.P15386329884996081095

namespace A208640

/-- `A208637(A000096(n+3)+6)` -/
def P15386329884996081095.Spec : Prop :=
  ∀ n, P15386329884996081095.a n = A208640 (n + 1)

end A208640

/-!
# A208641: Number of 6 X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208641, there is no canonical definition to state claims against.
-/

/-! ## A208641.P5137919060195106038

`A208637(A167499(n+4)+1)`
-/

namespace A208641.P5137919060195106038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A167499 (n + 4) + 1).toNat

end

end A208641.P5137919060195106038

/-! ## A208641.P3037545137020134614

`A208637(A167614(n+4)+3)`
-/

namespace A208641.P3037545137020134614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A167614 (n + 4) + 3).toNat

end

end A208641.P3037545137020134614

/-! ## A208641.P6843549568376818798

`A208637(A161680(n+6)+6)`
-/

namespace A208641.P6843549568376818798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A161680 (n + 6) + 6).toNat

end

end A208641.P6843549568376818798

/-! ## A208641.P80853311946268748

`A208637(A246172(n+1)+20)`
-/

namespace A208641.P80853311946268748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A246172 (n + 1) + 20).toNat

end

end A208641.P80853311946268748

/-! ## A208641.P6051054958744388533

`A208637(Δ[A023545(n+1)]+10)`
-/

namespace A208641.P6051054958744388533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (f1 (n + 1) - f1 n + 10).toNat

end

end A208641.P6051054958744388533

/-!
# A208642: Number of 7 X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208642, there is no canonical definition to state claims against.
-/

/-! ## A208642.P413773670985035081

`A208637(A167499(n+5)+2)`
-/

namespace A208642.P413773670985035081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A167499 (n + 5) + 2).toNat

end

end A208642.P413773670985035081

/-! ## A208642.P12707097327736277802

`A208637(A000124(n+6)+6)`
-/

namespace A208642.P12707097327736277802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000124 (n + 6) + 6).toNat

end

end A208642.P12707097327736277802

/-! ## A208642.P11747818553873608899

`A208637(A000096(n+5)+8)`
-/

namespace A208642.P11747818553873608899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000096 (n + 5) + 8).toNat

end

end A208642.P11747818553873608899

/-! ## A208642.P6783471234399093327

`A208637(A000217(n+6)+7)`
-/

namespace A208642.P6783471234399093327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A000217 (n + 6) + 7).toNat

end

end A208642.P6783471234399093327

/-! ## A208642.P5169890614590246285

`A208637(A161680(n+7)+7)`
-/

namespace A208642.P5169890614590246285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208637 (A161680 (n + 7) + 7).toNat

end

end A208642.P5169890614590246285

/-!
# A208643: Least positive integer m such that those k*(k-1) mod m with k=1,...,n are pairwise distinct.

The programs for A208643, there is no canonical definition to state claims against.
-/

/-! ## A208643.P13986537243642727565

`A060264(n)-A113429(A022278(n))`
-/

namespace A208643.P13986537243642727565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n - A113429 (A022278 n).toNat

end

end A208643.P13986537243642727565

/-! ## A208643.P15573121741441357573

`A151800(2*n)-A113429(A022278(n))`
-/

namespace A208643.P15573121741441357573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n) - A113429 (A022278 n).toNat

end

end A208643.P15573121741441357573

/-! ## A208643.P7477048750391232112

`A113429(A007931(n+1))+A060264(n)`
-/

namespace A208643.P7477048750391232112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113429 (A007931 (n + 1)).toNat + A060264 n

end

end A208643.P7477048750391232112

/-! ## A208643.P8719770904319360725

`A151800(2*n)-A121373(A025487(3*n+1))`
-/

namespace A208643.P8719770904319360725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n) - A121373 (A025487 (3 * n + 1)).toNat

end

end A208643.P8719770904319360725

/-! ## A208643.P9084931052072744945

`A151800(2*n)-A136522(A195025(n))`
-/

namespace A208643.P9084931052072744945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n) - A136522 (A195025 n).toNat

end

end A208643.P9084931052072744945

/-!
# A208644: Consider any chain of consecutive primes which divides n; take all longest such chains; maximize the product of the primes in the chain.

The programs for A208644, there is no canonical definition to state claims against.
-/

/-! ## A208644.P11918547129873888068

`A074044(∏{p}[A061537(n+1), #])`
-/

namespace A208644.P11918547129873888068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A208644.P11918547129873888068

/-! ## A208644.P13523538977934861149

`A074044(∏{p}[A183103(n+1), #])`
-/

namespace A208644.P13523538977934861149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A208644.P13523538977934861149

/-! ## A208644.P3866288633261054331

`A074044(∏{p}[A183105(n+1), #])`
-/

namespace A208644.P3866288633261054331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A208644.P3866288633261054331

/-! ## A208644.P16986759497894704105

`lcm(A079068(A045967(n+1)), A226040(n))`
-/

namespace A208644.P16986759497894704105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079068 (A045967 (n + 1)).toNat) (A226040 n)

end

end A208644.P16986759497894704105

/-! ## A208644.P15634845489690001803

`A074044(A007947((n+1)²²))`
-/

namespace A208644.P15634845489690001803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (A007947 (((n + 1) ^ 2) ^ 2)).toNat

end

end A208644.P15634845489690001803

/-!
# A208645: Least x>0 such that x^2+x+n is not prime.

The programs for A208645, there is no canonical definition to state claims against.
-/

/-! ## A208645.P347271327446969232

`gcd(A029578(n), A175499(A051744(n+1)))`
-/

namespace A208645.P347271327446969232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029578 n) (A175499 (A051744 (n + 1)).toNat)

end

end A208645.P347271327446969232

/-! ## A208645.P2473009796231406878

`gcd(∑[A062448(n)], A298748(2*(n+1)))`
-/

namespace A208645.P2473009796231406878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A298748 (2 * (n + 1)))

end

end A208645.P2473009796231406878

/-! ## A208645.P9599126515157448688

`gcd(A156246(A217412(n+3)), A217397(n+1))`
-/

namespace A208645.P9599126515157448688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156246 (A217412 (n + 3)).toNat) (A217397 (n + 1))

end

end A208645.P9599126515157448688

/-! ## A208645.P16383685948369655150

`gcd(A007646(n+1)+1, log2(A011782(n)))`
-/

namespace A208645.P16383685948369655150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007646 (n + 1) + 1) (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ)))

end

end A208645.P16383685948369655150

/-!
# A208647: Numerators of Pokrovskiy's lower bound on the ratio of e(G^n) the number of edges in the n-th power of a graph G, to E(G) the number of edges of G.

The programs for A208647, there is no canonical definition to state claims against.
-/

/-! ## A208647.P17015814663212222607

`∑[∑[(-1)^(n%3)]*A138188(n)]`
-/

namespace A208647.P17015814663212222607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A138188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208647.P17015814663212222607

/-! ## A208647.P227202306748226761

`∑[A008611(n)*A138188(n)]`
-/

namespace A208647.P227202306748226761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A138188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208647.P227202306748226761

/-! ## A208647.P17334019101397875728

`∑[A063942(n)*A138188(n)]`
-/

namespace A208647.P17334019101397875728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 n * A138188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208647.P17334019101397875728

/-! ## A208647.P6643128360214886907

`∑[A122918(n)*A138188(n)]`
-/

namespace A208647.P6643128360214886907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 n * A138188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208647.P6643128360214886907

/-! ## A208647.P2291805371886348835

`A008620(n*A005131(n+7))`
-/

namespace A208647.P2291805371886348835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * A005131 (n + 7)).toNat

end

end A208647.P2291805371886348835

/-!
# A208648: Denominators of Pokrovskiy's lower bound on the ratio of e(G^n) the number of edges in the n-th power of a graph G, to E(G) the number of edges of G.

The programs for A208648, there is no canonical definition to state claims against.
-/

/-! ## A208648.P2191446030814215211

`Δ[ceil(n/3)²]+1`
-/

namespace A208648.P2191446030814215211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A208648.P2191446030814215211

/-! ## A208648.P13547087755283593168

`runs[Δ[Δ[round(sqrt(n+3))]]]`
-/

namespace A208648.P13547087755283593168
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 3 : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A208648.P13547087755283593168

/-!
# A208649: (1/n)*A073617(n+1).

The programs for A208649, there is no canonical definition to state claims against.
-/

/-! ## A208649.P16803334408050739928

`1/(n+1)*A073617(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A208649.P16803334408050739928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A073617 (n + 2) : ℚ)

end

end A208649.P16803334408050739928

/-! ## A208649.P6300143988803882975

`∏[A262033(n)/A172089(A161680(n))]`
-/

namespace A208649.P6300143988803882975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262033 n : ℚ) / (A172089 (A161680 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208649.P6300143988803882975

/-! ## A208649.P1838841480982952788

`A073617(n+2)/(n+1)`
-/

namespace A208649.P1838841480982952788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073617 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A208649.P1838841480982952788

/-!
# A208650: Number of constant paths through the subset array of {1,2,...,n}; see Comments.

The programs for A208650, there is no canonical definition to state claims against.
-/

/-! ## A208650.P11002570176804174998

`(n+1)*∏[n^n/n!]`
-/

namespace A208650.P11002570176804174998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A208650.P11002570176804174998

/-! ## A208650.P2989031913960541385

`(n+1)*A001142(n)`
-/

namespace A208650.P2989031913960541385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001142 n

end

end A208650.P2989031913960541385

/-! ## A208650.P15465318865376278064

`(n+1)*A090447(∑[n]+n)`
-/

namespace A208650.P15465318865376278064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A090447 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A208650.P15465318865376278064

/-! ## A208650.P1427501316970466807

`A001142(n)*A348553(n)`
-/

namespace A208650.P1427501316970466807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 n * A348553 n

end

end A208650.P1427501316970466807

/-! ## A208650.P10746222058260017780

`A001142(n)*A008619(2*n)`
-/

namespace A208650.P10746222058260017780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 n * A008619 (2 * n)

end

end A208650.P10746222058260017780

/-!
# A208651: Number of paths through the subset array whose trace is a permutation of (1,2,...,n); see Comments.

The programs for A208651, there is no canonical definition to state claims against.
-/

/-! ## A208651.P16759285585969083873

`∏[(n+1)*n^n/n!]`
-/

namespace A208651.P16759285585969083873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n ^ n : ℚ) / (Nat.factorial n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208651.P16759285585969083873

/-! ## A208651.P6214880463538008694

`(n+1)*n^n/n!*a(n-1)` with `a(0)=1`
-/

namespace A208651.P6214880463538008694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((n ^ n : ℚ) / (Nat.factorial n : ℚ) * a (n - 1))

end

end A208651.P6214880463538008694

/-! ## A208651.P15032734631629463699

`n!*A208650(n+1)`
-/

namespace A208651.P15032734631629463699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A208650 (n + 1)

end

end A208651.P15032734631629463699

/-! ## A208651.P11029504293214531800

`∏[n+1]*A001142(n)`
-/

namespace A208651.P11029504293214531800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001142 n

end

end A208651.P11029504293214531800

/-! ## A208651.P2582577740131631309

`A000142(n)*A208650(n+1)`
-/

namespace A208651.P2582577740131631309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A208650 (n + 1)

end

end A208651.P2582577740131631309

/-!
# A208652: Product{i*C(n,i) : 1<=i<=floor[(n+1)/2]}.

The programs for A208652, there is no canonical definition to state claims against.
-/

/-! ## A208652.P13396106125924984601

`A208654(n+1)/A208653(n+1)`
-/

namespace A208652.P13396106125924984601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208654 (n + 1) : ℚ) / (A208653 (n + 1) : ℚ)

end

end A208652.P13396106125924984601

/-! ## A208652.P14802187176826326387

`(n+1)*A208655(n+1)/A208653(n+1)`
-/

namespace A208652.P14802187176826326387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A208655 (n + 1) : ℚ) / (A208653 (n + 1) : ℚ)

end

end A208652.P14802187176826326387

/-! ## A208652.P4383047588170694925

`A001142(n)*A078707(n+1)/A208653(n+1)`
-/

namespace A208652.P4383047588170694925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001142 n * A078707 (n + 1) : ℚ) / (A208653 (n + 1) : ℚ)

end

end A208652.P4383047588170694925

/-! ## A208652.P15682452024004693261

`A208655(n+1)/A208653(n+1)*A348553(n)`
-/

namespace A208652.P15682452024004693261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208655 (n + 1) : ℚ) / (A208653 (n + 1) : ℚ) * (A348553 n : ℚ)

end

end A208652.P15682452024004693261

/-! ## A208652.P3932000970707856976

`A208655(n+1)*A348553(n)/A208653(A348553(n))`
-/

namespace A208652.P3932000970707856976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208655 (n + 1) * A348553 n : ℚ) / (A208653 (A348553 n).toNat : ℚ)

end

end A208652.P3932000970707856976

/-!
# A208653: a(n) = Product_{i=floor((n + 1)/2)..n-1} binomial(n-1, i).

The programs for A208653, there is no canonical definition to state claims against.
-/

/-! ## A208653.P850703298835408002

`A090447(A140106((n+1)²))`
-/

namespace A208653.P850703298835408002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 (A140106 ((n + 1) ^ 2)).toNat

end

end A208653.P850703298835408002

/-! ## A208653.P10858678769024631798

`A090447(abs(2-A080827(n+1)))`
-/

namespace A208653.P10858678769024631798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 |2 - A080827 (n + 1)|.toNat

end

end A208653.P10858678769024631798

/-! ## A208653.P7729402465838930518

`A001142(n)/A061778(round(sqrt(n²+1)))`
-/

namespace A208653.P7729402465838930518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001142 n : ℚ) / (A061778 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A208653.P7729402465838930518

/-! ## A208653.P11750692708077845603

`A208654(n+1)/A208652(n+1)`
-/

namespace A208653.P11750692708077845603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208654 (n + 1) : ℚ) / (A208652 (n + 1) : ℚ)

end

end A208653.P11750692708077845603

/-! ## A208653.P10754993845565725494

`(n+1)*A208655(n+1)/A208652(n+1)`
-/

namespace A208653.P10754993845565725494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A208655 (n + 1) : ℚ) / (A208652 (n + 1) : ℚ)

end

end A208653.P10754993845565725494

/-!
# A208654: Number of palindromic paths through the subset array of {1,2,...,n}; see Comments.

The programs for A208654, there is no canonical definition to state claims against.
-/

/-! ## A208654.P903262909223360572

`(n+1)*A208655(n+1)`
-/

namespace A208654.P903262909223360572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208655 (n + 1)

end

end A208654.P903262909223360572

/-! ## A208654.P16634653600782017183

`A001142(n)*A078707(n+1)`
-/

namespace A208654.P16634653600782017183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 n * A078707 (n + 1)

end

end A208654.P16634653600782017183

/-! ## A208654.P15347212561957320362

`A208655(n+1)*A348553(n)`
-/

namespace A208654.P15347212561957320362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208655 (n + 1) * A348553 n

end

end A208654.P15347212561957320362

/-! ## A208654.P8335119196937937881

`A208652(n+1)*A208653(n+1)`
-/

namespace A208654.P8335119196937937881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208652 (n + 1) * A208653 (n + 1)

end

end A208654.P8335119196937937881

/-! ## A208654.P13426447463952527443

`A002109(n)/A000178(n)*A078707(n+1)`
-/

namespace A208654.P13426447463952527443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002109 n : ℚ) / (A000178 n : ℚ) * (A078707 (n + 1) : ℚ)

end

end A208654.P13426447463952527443

/-!
# A208655: Number of palindromic paths starting with 1 through the subset array of {1,2,...,n}; see Comments.

The programs for A208655, there is no canonical definition to state claims against.
-/

/-! ## A208655.P6757726872417044031

`A208654(n+1)/(n+1)`
-/

namespace A208655.P6757726872417044031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208654 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A208655.P6757726872417044031

/-! ## A208655.P9832759440241138666

`A001142(n)*A078707(n+1)/(n+1)`
-/

namespace A208655.P9832759440241138666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001142 n * A078707 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A208655.P9832759440241138666

/-! ## A208655.P5948939474085272041

`A208652(n+1)*A208653(n+1)/(n+1)`
-/

namespace A208655.P5948939474085272041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208652 (n + 1) * A208653 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A208655.P5948939474085272041

/-! ## A208655.P2902349266875495525

`A002109(n)/A000178(n)*A078707(n+1)/A348553(n)`
-/

namespace A208655.P2902349266875495525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002109 n : ℚ) / (A000178 n : ℚ) * (A078707 (n + 1) : ℚ) / (A348553 n : ℚ)

end

end A208655.P2902349266875495525

/-!
# A208656: Triangle T(n, k) = n*C(n,k) - C(n-1,k-1), 1 <= k <= n, read by rows.

The programs for A208656, the canonical program `A208656.P5785186373780383108` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208656 has offset 1).

The definition of A208656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)*C(row(n)+1, col(n)+1)-C(row(n), col(n))` (program `A208656.P5785186373780383108`, by `A208656.P5785186373780383108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A208656.P5785186373780383108

`(row(n)+1)*C(row(n)+1, col(n)+1)-C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208656

/-- `(row(n)+1)*C(row(n)+1, col(n)+1)-C(row(n), col(n))` -/
def P5785186373780383108.Spec : Prop :=
  ∀ n, P5785186373780383108.a n = A208656 (n + 1)

theorem P5785186373780383108.correct : P5785186373780383108.Spec := by
  intro n
  simp only [A208656, Nat.add_sub_cancel]

end A208656

/-! ## A208656.P8927906641783300416

`A002024(n+1)*A135278(n)-A007318(n)`
-/

namespace A208656.P8927906641783300416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A135278 n - A007318 n

end

end A208656.P8927906641783300416

namespace A208656

/-- `A002024(n+1)*A135278(n)-A007318(n)` -/
def P8927906641783300416.Spec : Prop :=
  ∀ n, P8927906641783300416.a n = A208656 (n + 1)

end A208656

/-! ## A208656.P8281119494343366409

`A003506(n+1)²/A103406(n)-A007318(n)`
-/

namespace A208656.P8281119494343366409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) ^ 2 : ℚ) / (A103406 n : ℚ) - (A007318 n : ℚ)

end

end A208656.P8281119494343366409

namespace A208656

/-- `A003506(n+1)²/A103406(n)-A007318(n)` -/
def P8281119494343366409.Spec : Prop :=
  ∀ n, P8281119494343366409.a n = (A208656 (n + 1) : ℚ)

end A208656

/-! ## A208656.P8415666963856947720

`A002024(n+1)*A135278(n)-(A102363(n+1)-A102363(n))`
-/

namespace A208656.P8415666963856947720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A135278 n - (A102363 (n + 1) - A102363 n)

end

end A208656.P8415666963856947720

namespace A208656

/-- `A002024(n+1)*A135278(n)-(A102363(n+1)-A102363(n))` -/
def P8415666963856947720.Spec : Prop :=
  ∀ n, P8415666963856947720.a n = A208656 (n + 1)

end A208656

/-! ## A208656.P529259553848562506

`A123578(n+1)*A135278(n)-A007318(n)`
-/

namespace A208656.P529259553848562506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) * A135278 n - A007318 n

end

end A208656.P529259553848562506

namespace A208656

/-- `A123578(n+1)*A135278(n)-A007318(n)` -/
def P529259553848562506.Spec : Prop :=
  ∀ n, P529259553848562506.a n = A208656 (n + 1)

end A208656

/-! ## A208656.P5923805460852214134

`A007318(A014132(n+1))*A123578(n+1)-A007318(n)`
-/

namespace A208656.P5923805460852214134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A123578 (n + 1) - A007318 n

end

end A208656.P5923805460852214134

namespace A208656

/-- `A007318(A014132(n+1))*A123578(n+1)-A007318(n)` -/
def P5923805460852214134.Spec : Prop :=
  ∀ n, P5923805460852214134.a n = A208656 (n + 1)

end A208656

/-! ## A208656.P1897153419872859362

`A208657(row(n)*(row(n)+3)/2-col(n)+1)`
-/

namespace A208656.P1897153419872859362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208657 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ) + 1)).toNat

end

end A208656.P1897153419872859362

namespace A208656

/-- `A208657(row(n)*(row(n)+3)/2-col(n)+1)` -/
def P1897153419872859362.Spec : Prop :=
  ∀ n, P1897153419872859362.a n = A208656 (n + 1)

end A208656

/-! ## A208656.P12338135823710215600

`A208657(A038722(n+1))`
-/

namespace A208656.P12338135823710215600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208657 (A038722 (n + 1)).toNat

end

end A208656.P12338135823710215600

namespace A208656

/-- `A208657(A038722(n+1))` -/
def P12338135823710215600.Spec : Prop :=
  ∀ n, P12338135823710215600.a n = A208656 (n + 1)

end A208656

/-! ## A208656.P14459565270830201652

`A208657(A061579(n)+1)`
-/

namespace A208656.P14459565270830201652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208657 (A061579 n + 1).toNat

end

end A208656.P14459565270830201652

namespace A208656

/-- `A208657(A061579(n)+1)` -/
def P14459565270830201652.Spec : Prop :=
  ∀ n, P14459565270830201652.a n = A208656 (n + 1)

end A208656

/-!
# A208657: Triangular array read by rows: n*binomial(n,n-k+1)-binomial(n-1,n-k) with k = 1..n, n >= 1.

The programs for A208657, the canonical program `A208657.P11812723099242280050` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208657 has offset 1).

The definition of A208657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208657.P8284049297398632465

`(row(n)+1)*C(row(n)+1, col(n))-C(row(n), col(n))`
-/

namespace A208657.P8284049297398632465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A208657.P8284049297398632465

namespace A208657

/-- `(row(n)+1)*C(row(n)+1, col(n))-C(row(n), col(n))` -/
def P8284049297398632465.Spec : Prop :=
  ∀ n, P8284049297398632465.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P11812723099242280050

`∑[A010054(n)]*A074909(n)-A007318(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A208657

/-- `∑[A010054(n)]*A074909(n)-A007318(n)` -/
def P11812723099242280050.Spec : Prop :=
  ∀ n, P11812723099242280050.a n = A208657 (n + 1)

theorem P11812723099242280050.correct : P11812723099242280050.Spec := by
  intro n
  simp only [A208657, Nat.add_sub_cancel]

end A208657

/-! ## A208657.P2752388255770820551

`A002024(n+1)*A074909(n)-A007318(n)`
-/

namespace A208657.P2752388255770820551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A074909 n - A007318 n

end

end A208657.P2752388255770820551

namespace A208657

/-- `A002024(n+1)*A074909(n)-A007318(n)` -/
def P2752388255770820551.Spec : Prop :=
  ∀ n, P2752388255770820551.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P5833400844296023807

`A001263(n+1)*A061885(n)/A135278(n)`
-/

namespace A208657.P5833400844296023807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) * A061885 n : ℚ) / (A135278 n : ℚ)

end

end A208657.P5833400844296023807

namespace A208657

/-- `A001263(n+1)*A061885(n)/A135278(n)` -/
def P5833400844296023807.Spec : Prop :=
  ∀ n, P5833400844296023807.a n = (A208657 (n + 1) : ℚ)

end A208657

/-! ## A208657.P17504931481853349871

`A003057(n+2)*A074909(n)-A029656(n+1)`
-/

namespace A208657.P17504931481853349871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A074909 n - A029656 (n + 1)

end

end A208657.P17504931481853349871

namespace A208657

/-- `A003057(n+2)*A074909(n)-A029656(n+1)` -/
def P17504931481853349871.Spec : Prop :=
  ∀ n, P17504931481853349871.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P4783507239305697663

`A002260(n+1)*A014410(n+2)-A029656(n+1)`
-/

namespace A208657.P4783507239305697663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A014410 (n + 2) - A029656 (n + 1)

end

end A208657.P4783507239305697663

namespace A208657

/-- `A002260(n+1)*A014410(n+2)-A029656(n+1)` -/
def P4783507239305697663.Spec : Prop :=
  ∀ n, P4783507239305697663.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P8906435114353039956

`A208656(row(n)*(row(n)+3)/2-col(n)+1)`
-/

namespace A208657.P8906435114353039956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208656 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ) + 1)).toNat

end

end A208657.P8906435114353039956

namespace A208657

/-- `A208656(row(n)*(row(n)+3)/2-col(n)+1)` -/
def P8906435114353039956.Spec : Prop :=
  ∀ n, P8906435114353039956.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P17048547574598765916

`A208656(A038722(n+1))`
-/

namespace A208657.P17048547574598765916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208656 (A038722 (n + 1)).toNat

end

end A208657.P17048547574598765916

namespace A208657

/-- `A208656(A038722(n+1))` -/
def P17048547574598765916.Spec : Prop :=
  ∀ n, P17048547574598765916.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P3804290427374964530

`A208656(A061579(n)+1)`
-/

namespace A208657.P3804290427374964530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208656 (A061579 n + 1).toNat

end

end A208657.P3804290427374964530

namespace A208657

/-- `A208656(A061579(n)+1)` -/
def P3804290427374964530.Spec : Prop :=
  ∀ n, P3804290427374964530.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P14837853715183654611

`A003506(A080036(n))-A029655(n)`
-/

namespace A208657.P14837853715183654611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A080036 n).toNat - A029655 n

end

end A208657.P14837853715183654611

namespace A208657

/-- `A003506(A080036(n))-A029655(n)` -/
def P14837853715183654611.Spec : Prop :=
  ∀ n, P14837853715183654611.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P4829509903751949563

`A003506(A014132(n+1))-A029656(n+1)`
-/

namespace A208657.P4829509903751949563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A014132 (n + 1)).toNat - A029656 (n + 1)

end

end A208657.P4829509903751949563

namespace A208657

/-- `A003506(A014132(n+1))-A029656(n+1)` -/
def P4829509903751949563.Spec : Prop :=
  ∀ n, P4829509903751949563.a n = A208657 (n + 1)

end A208657

/-! ## A208657.P17489189538671956255

`A000005(A137688(n))*A074909(n)-A007318(n)`
-/

namespace A208657.P17489189538671956255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137688 n).toNat * A074909 n - A007318 n

end

end A208657.P17489189538671956255

namespace A208657

/-- `A000005(A137688(n))*A074909(n)-A007318(n)` -/
def P17489189538671956255.Spec : Prop :=
  ∀ n, P17489189538671956255.a n = A208657 (n + 1)

end A208657

/-!
# A208658: Row sums of A208657.

The programs for A208658, the canonical program `A208658.P2277438212855398066` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208658 has offset 1).

The definition of A208658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208658.P2277438212855398066

`floor((1/2+n)*∑[2^n])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208658

/-- `floor((1/2+n)*∑[2^n])` -/
def P2277438212855398066.Spec : Prop :=
  ∀ n, P2277438212855398066.a n = A208658 (n + 1)

theorem P2277438212855398066.correct : P2277438212855398066.Spec := by
  intro n
  simp only [A208658, Nat.add_sub_cancel]

end A208658

/-! ## A208658.P15257172129292904666

`lcm(2*n+1, 2^n)-(n+1)`
-/

namespace A208658.P15257172129292904666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (2 ^ n) : ℤ) - (n + 1 : ℤ)

end

end A208658.P15257172129292904666

namespace A208658

/-- `lcm(2*n+1, 2^n)-(n+1)` -/
def P15257172129292904666.Spec : Prop :=
  ∀ n, P15257172129292904666.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P11097420879173568769

`∑[∑[ogf((1-3x^2+2x^3)/(1-4x+4x^2))]]-(n+1)`
-/

namespace A208658.P11097420879173568769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 2] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A208658.P11097420879173568769

namespace A208658

/-- `∑[∑[ogf((1-3x^2+2x^3)/(1-4x+4x^2))]]-(n+1)` -/
def P11097420879173568769.Spec : Prop :=
  ∀ n, P11097420879173568769.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P5711002706050995301

`∑[∑[ogf((1-3x^2+2x^3)/(1-4x+4x^2))]]-1-n`
-/

namespace A208658.P5711002706050995301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 2] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A208658.P5711002706050995301

namespace A208658

/-- `∑[∑[ogf((1-3x^2+2x^3)/(1-4x+4x^2))]]-1-n` -/
def P5711002706050995301.Spec : Prop :=
  ∀ n, P5711002706050995301.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P4956796046262414126

`∑[A052951(n)-1]`
-/

namespace A208658.P4956796046262414126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208658.P4956796046262414126

namespace A208658

/-- `∑[A052951(n)-1]` -/
def P4956796046262414126.Spec : Prop :=
  ∀ n, P4956796046262414126.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P11580695166701551378

`A271771(n+1)-1`
-/

namespace A208658.P11580695166701551378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271771 (n + 1) - 1

end

end A208658.P11580695166701551378

namespace A208658

/-- `A271771(n+1)-1` -/
def P11580695166701551378.Spec : Prop :=
  ∀ n, P11580695166701551378.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P14722579260156467010

`A014480(n)-(n+1)`
-/

namespace A208658.P14722579260156467010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n - (n + 1 : ℤ)

end

end A208658.P14722579260156467010

namespace A208658

/-- `A014480(n)-(n+1)` -/
def P14722579260156467010.Spec : Prop :=
  ∀ n, P14722579260156467010.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P11111657151482780239

`A066524(n+1)-2^n`
-/

namespace A208658.P11111657151482780239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (n + 1) - (2 ^ n : ℤ)

end

end A208658.P11111657151482780239

namespace A208658

/-- `A066524(n+1)-2^n` -/
def P11111657151482780239.Spec : Prop :=
  ∀ n, P11111657151482780239.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P3663623069496673834

`A093968(Δ[n²])-(n+1)`
-/

namespace A208658.P3663623069496673834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A208658.P3663623069496673834

namespace A208658

/-- `A093968(Δ[n²])-(n+1)` -/
def P3663623069496673834.Spec : Prop :=
  ∀ n, P3663623069496673834.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P6038474513537016440

`A132344(Δ[n²])-(n+1)`
-/

namespace A208658.P6038474513537016440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A208658.P6038474513537016440

namespace A208658

/-- `A132344(Δ[n²])-(n+1)` -/
def P6038474513537016440.Spec : Prop :=
  ∀ n, P6038474513537016440.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P4356173362260190594

`Δ[n²]*A000225(n)+n`
-/

namespace A208658.P4356173362260190594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000225 n + (n : ℤ)

end

end A208658.P4356173362260190594

namespace A208658

/-- `Δ[n²]*A000225(n)+n` -/
def P4356173362260190594.Spec : Prop :=
  ∀ n, P4356173362260190594.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P14083595267543881368

`A003261(n+1)-2^n-n`
-/

namespace A208658.P14083595267543881368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1) - (2 ^ n : ℤ) - (n : ℤ)

end

end A208658.P14083595267543881368

namespace A208658

/-- `A003261(n+1)-2^n-n` -/
def P14083595267543881368.Spec : Prop :=
  ∀ n, P14083595267543881368.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P6818987686824360324

`and((2*n+1)*A000079(n)-1, -(n+1))`
-/

namespace A208658.P6818987686824360324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 1 : ℤ) * A000079 n - 1) (-(n + 1 : ℤ))

end

end A208658.P6818987686824360324

namespace A208658

/-- `and((2*n+1)*A000079(n)-1, -(n+1))` -/
def P6818987686824360324.Spec : Prop :=
  ∀ n, P6818987686824360324.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P5543545929953717134

`A059672(n)+A000225(n)`
-/

namespace A208658.P5543545929953717134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059672 n + A000225 n

end

end A208658.P5543545929953717134

namespace A208658

/-- `A059672(n)+A000225(n)` -/
def P5543545929953717134.Spec : Prop :=
  ∀ n, P5543545929953717134.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P9405914927689270482

`A095151(n)+A036799(n)`
-/

namespace A208658.P9405914927689270482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n + A036799 n

end

end A208658.P9405914927689270482

namespace A208658

/-- `A095151(n)+A036799(n)` -/
def P9405914927689270482.Spec : Prop :=
  ∀ n, P9405914927689270482.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P10654307529352619651

`A087323(n)+A066524(n)`
-/

namespace A208658.P10654307529352619651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A066524 n

end

end A208658.P10654307529352619651

namespace A208658

/-- `A087323(n)+A066524(n)` -/
def P10654307529352619651.Spec : Prop :=
  ∀ n, P10654307529352619651.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P6047340337475732869

`A260006(n)+A000337(n)`
-/

namespace A208658.P6047340337475732869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260006 n + A000337 n

end

end A208658.P6047340337475732869

namespace A208658

/-- `A260006(n)+A000337(n)` -/
def P6047340337475732869.Spec : Prop :=
  ∀ n, P6047340337475732869.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P17030459805638881658

`A113070(n)-A154222(n)`
-/

namespace A208658.P17030459805638881658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113070 n - A154222 n

end

end A208658.P17030459805638881658

namespace A208658

/-- `A113070(n)-A154222(n)` -/
def P17030459805638881658.Spec : Prop :=
  ∀ n, P17030459805638881658.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P13556612642677040125

`A027982(n)-A247904(n)`
-/

namespace A208658.P13556612642677040125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027982 n - A247904 n

end

end A208658.P13556612642677040125

namespace A208658

/-- `A027982(n)-A247904(n)` -/
def P13556612642677040125.Spec : Prop :=
  ∀ n, P13556612642677040125.a n = A208658 (n + 1)

end A208658

/-! ## A208658.P7046064944875215405

`A048476(n)-A343291(n)`
-/

namespace A208658.P7046064944875215405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048476 n - A343291 n

end

end A208658.P7046064944875215405

namespace A208658

/-- `A048476(n)-A343291(n)` -/
def P7046064944875215405.Spec : Prop :=
  ∀ n, P7046064944875215405.a n = A208658 (n + 1)

end A208658

/-!
# A208659: Triangle of coefficients of polynomials v(n,x) jointly generated with A185045; see the Formula section.

The programs for A208659, the canonical program `A208659.P8694380069998307686` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208659 has offset 1).

The definition of A208659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029653, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A208659.P8694380069998307686

`A029653(C(row(n)+1, 2)+col(n))*2^col(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A208659

/-- `A029653(C(row(n)+1, 2)+col(n))*2^col(n)` -/
def P8694380069998307686.Spec : Prop :=
  ∀ n, P8694380069998307686.a n = A208659 (n + 1)

theorem P8694380069998307686.correct : P8694380069998307686.Spec := by
  intro n
  simp only [A208659, Nat.add_sub_cancel]

end A208659

/-! ## A208659.P2287406252301502497

`2*T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=2`
-/

namespace A208659.P2287406252301502497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A208659.P2287406252301502497

namespace A208659

/-- `2*T(n-1,k-1)+T(n-1,k)` -/
def P2287406252301502497.Spec : Prop :=
  ∀ n, (P2287406252301502497.a n : ℤ) = A208659 (n + 1)

end A208659

/-! ## A208659.P12018181261705381642

`T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A208659.P12018181261705381642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)

end

end A208659.P12018181261705381642

namespace A208659

/-- `T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)` -/
def P12018181261705381642.Spec : Prop :=
  ∀ n, (P12018181261705381642.a n : ℤ) = A208659 (n + 1)

end A208659

/-! ## A208659.P4282979485699147916

`T(n-2,k)+2*(T(n-2,k-1)+T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A208659.P4282979485699147916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  SequenceMachineLib.triUp2 a n + 2 * (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n)

end

end A208659.P4282979485699147916

namespace A208659

/-- `T(n-2,k)+2*(T(n-2,k-1)+T(n-1,k-1))` -/
def P4282979485699147916.Spec : Prop :=
  ∀ n, (P4282979485699147916.a n : ℤ) = A208659 (n + 1)

end A208659

/-! ## A208659.P3634066697274672147

`3*T(n-1,k)-2*(T(n-1,k)-T(n-1,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A208659.P3634066697274672147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n)

end

end A208659.P3634066697274672147

namespace A208659

/-- `3*T(n-1,k)-2*(T(n-1,k)-T(n-1,k-1))` -/
def P3634066697274672147.Spec : Prop :=
  ∀ n, P3634066697274672147.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P11619568391103515923

`A185045(n+1)+char[∑[n+1]]`
-/

namespace A208659.P11619568391103515923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185045 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208659.P11619568391103515923

namespace A208659

/-- `A185045(n+1)+char[∑[n+1]]` -/
def P11619568391103515923.Spec : Prop :=
  ∀ n, P11619568391103515923.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P4846878712330380114

`A029653(n)*A059268(n)`
-/

namespace A208659.P4846878712330380114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n * A059268 n

end

end A208659.P4846878712330380114

namespace A208659

/-- `A029653(n)*A059268(n)` -/
def P4846878712330380114.Spec : Prop :=
  ∀ n, P4846878712330380114.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P784888937773157157

`A040000(n)*A081277(n)`
-/

namespace A208659.P784888937773157157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A081277 n

end

end A208659.P784888937773157157

namespace A208659

/-- `A040000(n)*A081277(n)` -/
def P784888937773157157.Spec : Prop :=
  ∀ n, P784888937773157157.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P10207586281187054832

`lcm(A029653(n), A185045(n+1))`
-/

namespace A208659.P10207586281187054832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029653 n) (A185045 (n + 1))

end

end A208659.P10207586281187054832

namespace A208659

/-- `lcm(A029653(n), A185045(n+1))` -/
def P10207586281187054832.Spec : Prop :=
  ∀ n, (P10207586281187054832.a n : ℤ) = A208659 (n + 1)

end A208659

/-! ## A208659.P894632259136046109

`(A073424(n)+1)*A185045(n+1)`
-/

namespace A208659.P894632259136046109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073424 n + 1) * A185045 (n + 1)

end

end A208659.P894632259136046109

namespace A208659

/-- `(A073424(n)+1)*A185045(n+1)` -/
def P894632259136046109.Spec : Prop :=
  ∀ n, P894632259136046109.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P3383152314110237213

`A014963(A001316(n))*A081277(n)`
-/

namespace A208659.P3383152314110237213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A081277 n

end

end A208659.P3383152314110237213

namespace A208659

/-- `A014963(A001316(n))*A081277(n)` -/
def P3383152314110237213.Spec : Prop :=
  ∀ n, P3383152314110237213.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P17745278851817394118

`A020639(A004277(n))*A081277(n)`
-/

namespace A208659.P17745278851817394118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A081277 n

end

end A208659.P17745278851817394118

namespace A208659

/-- `A020639(A004277(n))*A081277(n)` -/
def P17745278851817394118.Spec : Prop :=
  ∀ n, P17745278851817394118.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P12939118699892977455

`A000005(A020639(n+1))*A081277(n)`
-/

namespace A208659.P12939118699892977455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020639 (n + 1)).toNat * A081277 n

end

end A208659.P12939118699892977455

namespace A208659

/-- `A000005(A020639(n+1))*A081277(n)` -/
def P12939118699892977455.Spec : Prop :=
  ∀ n, P12939118699892977455.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P5764442980934229508

`A020639(A000010(n+2))*A081277(n)`
-/

namespace A208659.P5764442980934229508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A081277 n

end

end A208659.P5764442980934229508

namespace A208659

/-- `A020639(A000010(n+2))*A081277(n)` -/
def P5764442980934229508.Spec : Prop :=
  ∀ n, P5764442980934229508.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P5579150756962804651

`A209757(n+1)/A110813(n)*A029653(n)`
-/

namespace A208659.P5579150756962804651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209757 (n + 1) : ℚ) / (A110813 n : ℚ) * (A029653 n : ℚ)

end

end A208659.P5579150756962804651

namespace A208659

/-- `A209757(n+1)/A110813(n)*A029653(n)` -/
def P5579150756962804651.Spec : Prop :=
  ∀ n, P5579150756962804651.a n = (A208659 (n + 1) : ℚ)

end A208659

/-! ## A208659.P14630520077391868429

`A185045(n+1)+A029653(n)-A208510(n+1)`
-/

namespace A208659.P14630520077391868429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185045 (n + 1) + A029653 n - A208510 (n + 1)

end

end A208659.P14630520077391868429

namespace A208659

/-- `A185045(n+1)+A029653(n)-A208510(n+1)` -/
def P14630520077391868429.Spec : Prop :=
  ∀ n, P14630520077391868429.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P9892392433416196965

`A208747(n+1)/A208342(n+1)*A029653(n)`
-/

namespace A208659.P9892392433416196965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208747 (n + 1) : ℚ) / (A208342 (n + 1) : ℚ) * (A029653 n : ℚ)

end

end A208659.P9892392433416196965

namespace A208659

/-- `A208747(n+1)/A208342(n+1)*A029653(n)` -/
def P9892392433416196965.Spec : Prop :=
  ∀ n, P9892392433416196965.a n = (A208659 (n + 1) : ℚ)

end A208659

/-! ## A208659.P10125233140242836735

`A013609(n+1)+A013609(n)-A081277(n+1)`
-/

namespace A208659.P10125233140242836735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (n + 1) + (A013609 n - A081277 (n + 1))

end

end A208659.P10125233140242836735

namespace A208659

/-- `A013609(n+1)+A013609(n)-A081277(n+1)` -/
def P10125233140242836735.Spec : Prop :=
  ∀ n, P10125233140242836735.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P12512390689963093210

`A036453(2*n+1)*A081277(n)`
-/

namespace A208659.P12512390689963093210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A081277 n

end

end A208659.P12512390689963093210

namespace A208659

/-- `A036453(2*n+1)*A081277(n)` -/
def P12512390689963093210.Spec : Prop :=
  ∀ n, P12512390689963093210.a n = A208659 (n + 1)

end A208659

/-! ## A208659.P15369625885097325352

`A020639(A000118(n))*A081277(n)`
-/

namespace A208659.P15369625885097325352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A081277 n

end

end A208659.P15369625885097325352

namespace A208659

/-- `A020639(A000118(n))*A081277(n)` -/
def P15369625885097325352.Spec : Prop :=
  ∀ n, P15369625885097325352.a n = A208659 (n + 1)

end A208659

/-!
# A208660: Triangle of coefficients of polynomials u(n,x) jointly generated with A208904; see the Formula section.

The programs for A208660, the canonical program `A208660.P14427275204864668988` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208660 has offset 1).

The definition of A208660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208660.P16684666062160974219

`A114188(n)*A238303(n)`
-/

namespace A208660.P16684666062160974219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 n * A238303 n

end

end A208660.P16684666062160974219

namespace A208660

/-- `A114188(n)*A238303(n)` -/
def P16684666062160974219.Spec : Prop :=
  ∀ n, P16684666062160974219.a n = A208660 (n + 1)

end A208660

/-! ## A208660.P14427275204864668988

`(2-A010054(n))*A114188(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A208660

/-- `(2-A010054(n))*A114188(n)` -/
def P14427275204864668988.Spec : Prop :=
  ∀ n, P14427275204864668988.a n = A208660 (n + 1)

theorem P14427275204864668988.correct : P14427275204864668988.Spec := by
  intro n
  simp only [A208660, Nat.add_sub_cancel]

end A208660

/-! ## A208660.P9467477994608013397

`gcd(2*A110511(n), A010816(n))`
-/

namespace A208660.P9467477994608013397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A110511 n) (A010816 n)

end

end A208660.P9467477994608013397

namespace A208660

/-- `gcd(2*A110511(n), A010816(n))` -/
def P9467477994608013397.Spec : Prop :=
  ∀ n, (P9467477994608013397.a n : ℤ) = A208660 (n + 1)

end A208660

/-! ## A208660.P1566630774441263215

`A040000(A002262(n))*A114188(n)`
-/

namespace A208660.P1566630774441263215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A002262 n).toNat * A114188 n

end

end A208660.P1566630774441263215

namespace A208660

/-- `A040000(A002262(n))*A114188(n)` -/
def P1566630774441263215.Spec : Prop :=
  ∀ n, P1566630774441263215.a n = A208660 (n + 1)

end A208660

/-! ## A208660.P4902390615759448617

`(A054977(n)-A073423(n)+1)*A114188(n)`
-/

namespace A208660.P4902390615759448617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n - A073423 n + 1) * A114188 n

end

end A208660.P4902390615759448617

namespace A208660

/-- `(A054977(n)-A073423(n)+1)*A114188(n)` -/
def P4902390615759448617.Spec : Prop :=
  ∀ n, P4902390615759448617.a n = A208660 (n + 1)

end A208660

/-! ## A208660.P8640788860346774910

`A054977(A073423(n)*A114188(n))*A114188(n)`
-/

namespace A208660.P8640788860346774910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A073423 n * A114188 n).toNat * A114188 n

end

end A208660.P8640788860346774910

namespace A208660

/-- `A054977(A073423(n)*A114188(n))*A114188(n)` -/
def P8640788860346774910.Spec : Prop :=
  ∀ n, P8640788860346774910.a n = A208660 (n + 1)

end A208660

/-! ## A208660.P8462285120221818007

`A000034(A255127(n+2))*A114188(n)`
-/

namespace A208660.P8462285120221818007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A255127 (n + 2)).toNat * A114188 n

end

end A208660.P8462285120221818007

namespace A208660

/-- `A000034(A255127(n+2))*A114188(n)` -/
def P8462285120221818007.Spec : Prop :=
  ∀ n, P8462285120221818007.a n = A208660 (n + 1)

end A208660

/-! ## A208660.P11581338318009740014

`A020639(A124927(n))*A114188(n)`
-/

namespace A208660.P11581338318009740014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124927 n).toNat * A114188 n

end

end A208660.P11581338318009740014

namespace A208660

/-- `A020639(A124927(n))*A114188(n)` -/
def P11581338318009740014.Spec : Prop :=
  ∀ n, P11581338318009740014.a n = A208660 (n + 1)

end A208660

/-! ## A208660.P10599377062880546687

`A020639(A035607(n))*A114188(n)`
-/

namespace A208660.P10599377062880546687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035607 n).toNat * A114188 n

end

end A208660.P10599377062880546687

namespace A208660

/-- `A020639(A035607(n))*A114188(n)` -/
def P10599377062880546687.Spec : Prop :=
  ∀ n, P10599377062880546687.a n = A208660 (n + 1)

end A208660

/-! ## A208660.P789806321916142265

`A014963(A059268(n))*A114188(n)`
-/

namespace A208660.P789806321916142265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A059268 n).toNat * A114188 n

end

end A208660.P789806321916142265

namespace A208660

/-- `A014963(A059268(n))*A114188(n)` -/
def P789806321916142265.Spec : Prop :=
  ∀ n, P789806321916142265.a n = A208660 (n + 1)

end A208660

/-!
# A208661: Number of paths through the subset array of {1,2,...,n} that have range a subset of {1,2}; see Comments at A208650.

The programs for A208661, there is no canonical definition to state claims against.
-/

/-! ## A208661.P10353789461180349086

`Δ[A198633(n)]*A001142(n)`
-/

namespace A208661.P10353789461180349086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001142 n

end

end A208661.P10353789461180349086

/-! ## A208661.P13973325159230396142

`A001142(n)*A151821(n+1)`
-/

namespace A208661.P13973325159230396142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 n * A151821 (n + 1)

end

end A208661.P13973325159230396142

/-! ## A208661.P15058168531050263550

`record[Δ[A088041(n+1)]]*A001142(n)`
-/

namespace A208661.P15058168531050263550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001142 n

end

end A208661.P15058168531050263550

/-! ## A208661.P7170401160100591139

`record[A324819(n+1)+1]*A001142(n)`
-/

namespace A208661.P7170401160100591139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001142 n

end

end A208661.P7170401160100591139

/-! ## A208661.P15474278778851103068

`A090447(∑[n]+n)*A151821(n+1)`
-/

namespace A208661.P15474278778851103068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 (∑ j ∈ Finset.range (n + 1), f1 j + n) * A151821 (n + 1)

end

end A208661.P15474278778851103068

/-!
# A208662: Smallest m such that the n-th odd prime is the smallest prime for all decompositions of 2*m into two primes.

The programs for A208662, there is no canonical definition to state claims against.
-/

/-! ## A208662.P2775742622361077367

`A025017(n+2)/2`
-/

namespace A208662.P2775742622361077367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025017 (n + 2) : ℚ) / 2

end

end A208662.P2775742622361077367

/-! ## A208662.P14289574027203033498

`a(n-1)*ratio[A025017(n+1)]` with `a(0)=3`
-/

namespace A208662.P14289574027203033498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A208662.P14289574027203033498

/-! ## A208662.P335712015980974854

`A014682(A025017(n+2))`
-/

namespace A208662.P335712015980974854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A025017 (n + 2)).toNat

end

end A208662.P335712015980974854

/-! ## A208662.P17783503421580301192

`A305897(A025017(n+2)-2)`
-/

namespace A208662.P17783503421580301192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A025017 (n + 2) - 2).toNat

end

end A208662.P17783503421580301192

/-! ## A208662.P7998056233887741201

`Δ[A273943(∑[A025017(n+1)])]`
-/

namespace A208662.P7998056233887741201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208662.P7998056233887741201

/-!
# A208663: Non-Abelian numbers: n such that A000001(n)/A000688(n) is a new record.

The programs for A208663, there is no canonical definition to state claims against.
-/

/-! ## A208663.P16922938552731312954

`A342126(A315647(n)+A000749(n))`
-/

namespace A208663.P16922938552731312954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A315647 n + A000749 n).toNat

end

end A208663.P16922938552731312954

/-! ## A208663.P11024518084720008199

`A342126(A315669(n)+A000749(n))`
-/

namespace A208663.P11024518084720008199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A315669 n + A000749 n).toNat

end

end A208663.P11024518084720008199

/-! ## A208663.P12595193272931526877

`A029744(∪[A031288(n+1), A065966(n+1)])`
-/

namespace A208663.P12595193272931526877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A208663.P12595193272931526877

/-! ## A208663.P15240409221273992597

`eq[1, A228495(A303574(n))]`
-/

namespace A208663.P15240409221273992597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A303574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208663.P15240409221273992597

/-! ## A208663.P509832256357411683

`record[A105321(n*A170979(n))]`
-/

namespace A208663.P509832256357411683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 ((n : ℤ) * A170979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208663.P509832256357411683

/-!
# A208664: Expansion of f(x) * f(x^11) in powers of x where f() is a Ramanujan theta function.

The programs for A208664, there is no canonical definition to state claims against.
-/

/-! ## A208664.P16506796416616508897

`(-1)^n*A030200(n)`
-/

namespace A208664.P16506796416616508897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030200 n

end

end A208664.P16506796416616508897

/-! ## A208664.P6960386345297789013

`A030200(n)*A033999(n)`
-/

namespace A208664.P6960386345297789013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 n * A033999 n

end

end A208664.P6960386345297789013

/-! ## A208664.P10969871337387147154

`A030200(n)/A030200(Δ[or(1, n)])`
-/

namespace A208664.P10969871337387147154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030200 n : ℚ) / (A030200 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A208664.P10969871337387147154

/-! ## A208664.P14625667937057596619

`A030200(n)/A030200(Δ[A004526(n)])`
-/

namespace A208664.P14625667937057596619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030200 n : ℚ) / (A030200 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A208664.P14625667937057596619

/-! ## A208664.P15516553154590516986

`A030200(n)/A033999(A234613(n))`
-/

namespace A208664.P15516553154590516986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030200 n : ℚ) / (A033999 (A234613 n).toNat : ℚ)

end

end A208664.P15516553154590516986

/-!
# A208665: Numbers that match odd ternary polynomials; see Comments.

The programs for A208665, the canonical program `A208665.P2940059047597316845` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208665 has offset 1).

The definition of A208665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208665.P2940059047597316845

`∑[3*A120437(1+n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A208665

/-- `∑[3*A120437(1+n)]` -/
def P2940059047597316845.Spec : Prop :=
  ∀ n, P2940059047597316845.a n = A208665 (n + 1)

theorem P2940059047597316845.correct : P2940059047597316845.Spec := by
  intro n
  simp only [A208665, Nat.add_sub_cancel]

end A208665

/-! ## A208665.P5078435574388339291

`∑[ceil((A074724(n+1)/2)²)]`
-/

namespace A208665.P5078435574388339291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A074724 (n + 1) : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208665.P5078435574388339291

namespace A208665

/-- `∑[ceil((A074724(n+1)/2)²)]` -/
def P5078435574388339291.Spec : Prop :=
  ∀ n, P5078435574388339291.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P259061086135232364

`∑[A258774(A038500(n+1))]`
-/

namespace A208665.P259061086135232364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208665.P259061086135232364

namespace A208665

/-- `∑[A258774(A038500(n+1))]` -/
def P259061086135232364.Spec : Prop :=
  ∀ n, P259061086135232364.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P12216455644142083912

`3*A037314(n+1)`
-/

namespace A208665.P12216455644142083912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037314 (n + 1)

end

end A208665.P12216455644142083912

namespace A208665

/-- `3*A037314(n+1)` -/
def P12216455644142083912.Spec : Prop :=
  ∀ n, P12216455644142083912.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P14142891912151207013

`Δ[3*∑[A037314(n)]]`
-/

namespace A208665.P14142891912151207013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208665.P14142891912151207013

namespace A208665

/-- `Δ[3*∑[A037314(n)]]` -/
def P14142891912151207013.Spec : Prop :=
  ∀ n, P14142891912151207013.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P13681683122579031047

`3*A338086(n+1)/4`
-/

namespace A208665.P13681683122579031047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A338086 (n + 1) : ℚ) / 4)

end

end A208665.P13681683122579031047

namespace A208665

/-- `3*A338086(n+1)/4` -/
def P13681683122579031047.Spec : Prop :=
  ∀ n, P13681683122579031047.a n = (A208665 (n + 1) : ℚ)

end A208665

/-! ## A208665.P10189831436148152280

`A338086(n+1)-A037314(n+1)`
-/

namespace A208665.P10189831436148152280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (n + 1) - A037314 (n + 1)

end

end A208665.P10189831436148152280

namespace A208665

/-- `A338086(n+1)-A037314(n+1)` -/
def P10189831436148152280.Spec : Prop :=
  ∀ n, P10189831436148152280.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P7637387948171953811

`3*A037468(A037453(n+1))`
-/

namespace A208665.P7637387948171953811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037468 (A037453 (n + 1)).toNat

end

end A208665.P7637387948171953811

namespace A208665

/-- `3*A037468(A037453(n+1))` -/
def P7637387948171953811.Spec : Prop :=
  ∀ n, P7637387948171953811.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P2496201004822783189

`∑[A008486(Δ[A037314(n)])]`
-/

namespace A208665.P2496201004822783189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208665.P2496201004822783189

namespace A208665

/-- `∑[A008486(Δ[A037314(n)])]` -/
def P2496201004822783189.Spec : Prop :=
  ∀ n, P2496201004822783189.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P1893470034934116844

`filter[A032938(n+1), A182581(#)]`
-/

namespace A208665.P1893470034934116844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A208665.P1893470034934116844

namespace A208665

/-- `filter[A032938(n+1), A182581(#)]` -/
def P1893470034934116844.Spec : Prop :=
  ∀ n, P1893470034934116844.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P15555126257858534079

`∩[A032938(n+1), A145204(n+1)]`
-/

namespace A208665.P15555126257858534079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208665.P15555126257858534079

namespace A208665

/-- `∩[A032938(n+1), A145204(n+1)]` -/
def P15555126257858534079.Spec : Prop :=
  ∀ n, (P15555126257858534079.a n : ℤ) = A208665 (n + 1)

end A208665

/-! ## A208665.P15932399096802984132

`A008486(A037314(n+1))`
-/

namespace A208665.P15932399096802984132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A037314 (n + 1)).toNat

end

end A208665.P15932399096802984132

namespace A208665

/-- `A008486(A037314(n+1))` -/
def P15932399096802984132.Spec : Prop :=
  ∀ n, P15932399096802984132.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P4947110621856626003

`A163332(A163334(∑[n+2]))`
-/

namespace A208665.P4947110621856626003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163334 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A208665.P4947110621856626003

namespace A208665

/-- `A163332(A163334(∑[n+2]))` -/
def P4947110621856626003.Spec : Prop :=
  ∀ n, P4947110621856626003.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P3836972165937802675

`A008486(record[A065369(n+1)])`
-/

namespace A208665.P3836972165937802675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208665.P3836972165937802675

namespace A208665

/-- `A008486(record[A065369(n+1)])` -/
def P3836972165937802675.Spec : Prop :=
  ∀ n, P3836972165937802675.a n = A208665 (n + 1)

end A208665

/-! ## A208665.P15163281064240593708

`∩[A032938(n+1), A189630(n+1)]`
-/

namespace A208665.P15163281064240593708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208665.P15163281064240593708

namespace A208665

/-- `∩[A032938(n+1), A189630(n+1)]` -/
def P15163281064240593708.Spec : Prop :=
  ∀ n, (P15163281064240593708.a n : ℤ) = A208665 (n + 1)

end A208665

/-!
# A208666: Number of 2n-bead necklaces labeled with numbers 1..n allowing reversal, with neighbors differing by exactly 1.

The programs for A208666, there is no canonical definition to state claims against.
-/

/-! ## A208666.P14711323821437835221

`A208671(∑[4*n]+1)`
-/

namespace A208666.P14711323821437835221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208666.P14711323821437835221

/-! ## A208666.P252618142788672836

`record[A208671(∑[A266981(n)])]`
-/

namespace A208666.P252618142788672836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208666.P252618142788672836

/-! ## A208666.P3873223716057515658

`A208671(A001844(n))+char[22]`
-/

namespace A208666.P3873223716057515658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208666.P3873223716057515658

/-! ## A208666.P1568162081135930743

`record[A003982(n)*A208671(n+1)]`
-/

namespace A208666.P1568162081135930743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208666.P1568162081135930743

/-! ## A208666.P14730108165865240631

`A326471(n)+A208671(A001844(n))`
-/

namespace A208666.P14730108165865240631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326471 n + A208671 (A001844 n).toNat

end

end A208666.P14730108165865240631

/-!
# A208667: Number of 2n-bead necklaces labeled with numbers 1..4 allowing reversal, with neighbors differing by exactly 1.

The programs for A208667, the canonical program `A208667.P16891552016121104606` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208667 has offset 1).

The definition of A208667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208667.P16891552016121104606

`(2*A208723(n+1)+A090991(n+1))/4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208667

/-- `(2*A208723(n+1)+A090991(n+1))/4` -/
def P16891552016121104606.Spec : Prop :=
  ∀ n, P16891552016121104606.a n = (A208667 (n + 1) : ℚ)

end A208667

/-! ## A208667.P1528376113888004435

`A005595(n+1)+1`
-/

namespace A208667.P1528376113888004435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005595 (n + 1) + 1

end

end A208667.P1528376113888004435

namespace A208667

/-- `A005595(n+1)+1` -/
def P1528376113888004435.Spec : Prop :=
  ∀ n, P1528376113888004435.a n = A208667 (n + 1)

end A208667

/-! ## A208667.P10846320067613438362

`Δ[∑[A005595(n)]-A001489(n)]`
-/

namespace A208667.P10846320067613438362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208667.P10846320067613438362

namespace A208667

/-- `Δ[∑[A005595(n)]-A001489(n)]` -/
def P10846320067613438362.Spec : Prop :=
  ∀ n, P10846320067613438362.a n = A208667 (n + 1)

end A208667

/-! ## A208667.P14816074204175342879

`(A032198(n+1)+A000045(n+4))/2+1`
-/

namespace A208667.P14816074204175342879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032198 (n + 1) + A000045 (n + 4) : ℚ) / 2 + 1

end

end A208667.P14816074204175342879

namespace A208667

/-- `(A032198(n+1)+A000045(n+4))/2+1` -/
def P14816074204175342879.Spec : Prop :=
  ∀ n, P14816074204175342879.a n = (A208667 (n + 1) : ℚ)

end A208667

/-! ## A208667.P4633867140535990014

`A208671(A141214(n+1))`
-/

namespace A208667.P4633867140535990014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (A141214 (n + 1)).toNat

end

end A208667.P4633867140535990014

namespace A208667

/-- `A208671(A141214(n+1))` -/
def P4633867140535990014.Spec : Prop :=
  ∀ n, P4633867140535990014.a n = A208667 (n + 1)

end A208667

/-!
# A208668: Number of 2n-bead necklaces labeled with numbers 1..5 allowing reversal, with neighbors differing by exactly 1.

The programs for A208668, the canonical program `A208668.P1079484261684294791` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208668 has offset 1).

The definition of A208668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208668.P1079484261684294791

`(2*A208724(n+1)+A090993(n+1))/4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208668

/-- `(2*A208724(n+1)+A090993(n+1))/4` -/
def P1079484261684294791.Spec : Prop :=
  ∀ n, P1079484261684294791.a n = (A208668 (n + 1) : ℚ)

end A208668

/-! ## A208668.P9200307225926287166

`A032283(n+1)+2`
-/

namespace A208668.P9200307225926287166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032283 (n + 1) + 2

end

end A208668.P9200307225926287166

namespace A208668

/-- `A032283(n+1)+2` -/
def P9200307225926287166.Spec : Prop :=
  ∀ n, P9200307225926287166.a n = A208668 (n + 1)

end A208668

/-! ## A208668.P9917851392002352553

`A208671(Δ[A264443(n)])`
-/

namespace A208668.P9917851392002352553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (f1 (n + 1) - f1 n).toNat

end

end A208668.P9917851392002352553

namespace A208668

/-- `A208671(Δ[A264443(n)])` -/
def P9917851392002352553.Spec : Prop :=
  ∀ n, P9917851392002352553.a n = A208668 (n + 1)

end A208668

/-! ## A208668.P17556285730805050981

`A208671(A056115(n)+11)`
-/

namespace A208668.P17556285730805050981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (A056115 n + 11).toNat

end

end A208668.P17556285730805050981

namespace A208668

/-- `A208671(A056115(n)+11)` -/
def P17556285730805050981.Spec : Prop :=
  ∀ n, P17556285730805050981.a n = A208668 (n + 1)

end A208668

/-! ## A208668.P1238285074200803700

`A208671(eq[4, A193592(n)])`
-/

namespace A208668.P1238285074200803700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208668.P1238285074200803700

namespace A208668

/-- `A208671(eq[4, A193592(n)])` -/
def P1238285074200803700.Spec : Prop :=
  ∀ n, P1238285074200803700.a n = A208668 (n + 1)

end A208668

/-!
# A208669: Number of 2n-bead necklaces labeled with numbers 1..6 allowing reversal, with neighbors differing by exactly 1.

The programs for A208669, the canonical program `A208669.P18070253735021277602` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208669 has offset 1).

The definition of A208669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208669.P18070253735021277602

`(2*A208725(n+1)+A090995(n+1))/4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208669

/-- `(2*A208725(n+1)+A090995(n+1))/4` -/
def P18070253735021277602.Spec : Prop :=
  ∀ n, P18070253735021277602.a n = (A208669 (n + 1) : ℚ)

end A208669

/-! ## A208669.P15336544023074153976

`(A208725(n+1)+A090990(n+1))/2`
-/

namespace A208669.P15336544023074153976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208725 (n + 1) + A090990 (n + 1) : ℚ) / 2

end

end A208669.P15336544023074153976

namespace A208669

/-- `(A208725(n+1)+A090990(n+1))/2` -/
def P15336544023074153976.Spec : Prop :=
  ∀ n, P15336544023074153976.a n = (A208669 (n + 1) : ℚ)

end A208669

/-! ## A208669.P15918052757640485724

`A208671(A056119(n)+16)`
-/

namespace A208669.P15918052757640485724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (A056119 n + 16).toNat

end

end A208669.P15918052757640485724

namespace A208669

/-- `A208671(A056119(n)+16)` -/
def P15918052757640485724.Spec : Prop :=
  ∀ n, P15918052757640485724.a n = A208669 (n + 1)

end A208669

/-! ## A208669.P13111301138252841939

`A208671(eq[3, A219347(n)])`
-/

namespace A208669.P13111301138252841939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208669.P13111301138252841939

namespace A208669

/-- `A208671(eq[3, A219347(n)])` -/
def P13111301138252841939.Spec : Prop :=
  ∀ n, P13111301138252841939.a n = A208669 (n + 1)

end A208669

/-! ## A208669.P9788300569220036508

`A208671(eq[5, A193592(n)])`
-/

namespace A208669.P9788300569220036508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208669.P9788300569220036508

namespace A208669

/-- `A208671(eq[5, A193592(n)])` -/
def P9788300569220036508.Spec : Prop :=
  ∀ n, P9788300569220036508.a n = A208669 (n + 1)

end A208669

/-!
# A208670: Number of 2n-bead necklaces labeled with numbers 1..7 allowing reversal, with neighbors differing by exactly 1.

The programs for A208670, there is no canonical definition to state claims against.
-/

/-! ## A208670.P1885993703414589577

`A208671(eq[4, A219347(n)])`
-/

namespace A208670.P1885993703414589577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208670.P1885993703414589577

/-! ## A208670.P15213362003753354182

`A208671(eq[5, A332954(n)])`
-/

namespace A208670.P15213362003753354182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208670.P15213362003753354182

/-! ## A208670.P10158697913721818735

`A208671(eq[6, A193592(n)])`
-/

namespace A208670.P10158697913721818735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208670.P10158697913721818735

/-! ## A208670.P488766506720042823

`A208671(A155212(n+3)+2)`
-/

namespace A208670.P488766506720042823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (A155212 (n + 3) + 2).toNat

end

end A208670.P488766506720042823

/-! ## A208670.P6965561672667722436

`A208671(A046691(n+5)-2)`
-/

namespace A208670.P6965561672667722436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (A046691 (n + 5) - 2).toNat

end

end A208670.P6965561672667722436

/-!
# A208671: T(n,k) = number of 2n-bead necklaces labeled with numbers 1..k allowing reversal, with neighbors differing by exactly 1.

The programs for A208671, there is no canonical definition to state claims against.
-/

/-! ## A208671.P14213834177245487017

`A208727(n+1)-A187081(A208673(n))`
-/

namespace A208671.P14213834177245487017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (n + 1) - A187081 (A208673 n).toNat

end

end A208671.P14213834177245487017

/-! ## A208671.P12903546465957953956

`A208727(n+1)+A178798(A201375(n+1))`
-/

namespace A208671.P12903546465957953956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (n + 1) + A178798 (A201375 (n + 1)).toNat

end

end A208671.P12903546465957953956

/-! ## A208671.P5764318946957179204

`A208727(n+1)-A335520(A075195(n+1))`
-/

namespace A208671.P5764318946957179204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (n + 1) - A335520 (A075195 (n + 1)).toNat

end

end A208671.P5764318946957179204

/-! ## A208671.P15302024022901396658

`A208727(n+1)-A126696(A328081(n))`
-/

namespace A208671.P15302024022901396658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (n + 1) - A126696 (A328081 n).toNat

end

end A208671.P15302024022901396658

/-! ## A208671.P3442320651793460153

`A208727(n+1)-A025466(A296386(n+1))`
-/

namespace A208671.P3442320651793460153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (n + 1) - A025466 (A296386 (n + 1)).toNat

end

end A208671.P3442320651793460153

/-!
# A208672: a(n) = floor[1/(1-f(n))], where f(n) is the least nonnegative number such that f(n)^n = cos(f(n)).

The programs for A208672, there is no canonical definition to state claims against.
-/

/-! ## A208672.P16748550444158048890

`round(sqrt(2*A184923(∑[1+n])))`
-/

namespace A208672.P16748550444158048890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A184923 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A208672.P16748550444158048890

/-! ## A208672.P6019545860669939415

`A002024(A184923(∑[n+1]))`
-/

namespace A208672.P6019545860669939415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A184923 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A208672.P6019545860669939415

/-! ## A208672.P1668726149353798883

`A003057(A184923(∑[n+1])+1)-1`
-/

namespace A208672.P1668726149353798883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A184923 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat - 1

end

end A208672.P1668726149353798883

/-! ## A208672.P14614037178912186427

`round(sqrt(A188372(∑[4*(n+1)]-2)))`
-/

namespace A208672.P14614037178912186427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A188372 (∑ j ∈ Finset.range (n + 1), f1 j - 2) : ℝ))

end

end A208672.P14614037178912186427

/-! ## A208672.P6066907127816670226

`A002024(∑[record[A002260(29*(n+1))]])`
-/

namespace A208672.P6066907127816670226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (29 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208672.P6066907127816670226

/-! ## A208672.P16832593145230738876

`A002024(∑[A002024(A195145(n+1))])`
-/

namespace A208672.P16832593145230738876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A195145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208672.P16832593145230738876

/-!
# A208674: Number of words, either empty or beginning with the first letter of the n-ary alphabet, where each letter of the alphabet occurs 3 times and letters of neighboring word positions are equal or neighbors in the alphabet.

The programs for A208674, the canonical program `A208674.P16199276637033005138` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208674 has offset 0).

The definition of A208674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208674.P16199276637033005138

`ogf((1-4x+6x^2+2x^3+4x^4)/(1-5x+x^2+14x^3+2x^4-4x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208674

/-- `ogf((1-4x+6x^2+2x^3+4x^4)/(1-5x+x^2+14x^3+2x^4-4x^5))` -/
def P16199276637033005138.Spec : Prop :=
  ∀ n, P16199276637033005138.a n = A208674 n

theorem P16199276637033005138.correct : P16199276637033005138.Spec := by
  intro n
  simp only [A208674]

end A208674

/-! ## A208674.P1719402076317151523

`A208673(∑[n+3]+6)`
-/

namespace A208674.P1719402076317151523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A208674.P1719402076317151523

namespace A208674

/-- `A208673(∑[n+3]+6)` -/
def P1719402076317151523.Spec : Prop :=
  ∀ n, P1719402076317151523.a n = A208674 n

end A208674

/-! ## A208674.P4047541189467496077

`A208673(A167614(n+2))+A178798(n)`
-/

namespace A208674.P4047541189467496077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (A167614 (n + 2)).toNat + A178798 n

end

end A208674.P4047541189467496077

namespace A208674

/-- `A208673(A167614(n+2))+A178798(n)` -/
def P4047541189467496077.Spec : Prop :=
  ∀ n, P4047541189467496077.a n = A208674 n

end A208674

/-! ## A208674.P10704194726964479292

`gcd(A151810(n), A208673(A167614(n+2)))`
-/

namespace A208674.P10704194726964479292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151810 n) (A208673 (A167614 (n + 2)).toNat)

end

end A208674.P10704194726964479292

namespace A208674

/-- `gcd(A151810(n), A208673(A167614(n+2)))` -/
def P10704194726964479292.Spec : Prop :=
  ∀ n, (P10704194726964479292.a n : ℤ) = A208674 n

end A208674

/-! ## A208674.P5779851278465261154

`or(A000007(n), A208673(A167614(n+2)))`
-/

namespace A208674.P5779851278465261154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208673 (A167614 (n + 2)).toNat)

end

end A208674.P5779851278465261154

namespace A208674

/-- `or(A000007(n), A208673(A167614(n+2)))` -/
def P5779851278465261154.Spec : Prop :=
  ∀ n, P5779851278465261154.a n = A208674 n

end A208674

/-!
# A208675: Number of words, either empty or beginning with the first letter of the ternary alphabet, where each letter of the alphabet occurs n times and letters of neighboring word positions are equal or neighbors in the alphabet.

The programs for A208675, there is no canonical definition to state claims against.
-/

/-! ## A208675.P16801093523778770927

`A103882(n)+A103882(n)-A005258(n)`
-/

namespace A208675.P16801093523778770927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103882 n + (A103882 n - A005258 n)

end

end A208675.P16801093523778770927

/-! ## A208675.P15851706375223375665

`2*A103882(n)-A005258(n)`
-/

namespace A208675.P15851706375223375665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103882 n - A005258 n

end

end A208675.P15851706375223375665

/-! ## A208675.P308411560815394209

`A108625(2*n²)`
-/

namespace A208675.P308411560815394209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (2 * n ^ 2)

end

end A208675.P308411560815394209

/-! ## A208675.P5436824910593886082

`or(1, A108625(A001105(n)))`
-/

namespace A208675.P5436824910593886082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108625 (A001105 n).toNat)

end

end A208675.P5436824910593886082

/-! ## A208675.P13277677538301561364

`gcd(A000038(n), A108625(A001105(n)))`
-/

namespace A208675.P13277677538301561364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108625 (A001105 n).toNat)

end

end A208675.P13277677538301561364

/-! ## A208675.P16700215718711038554

`lcm(A033999(n), A108625(A001105(n)))`
-/

namespace A208675.P16700215718711038554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A108625 (A001105 n).toNat)

end

end A208675.P16700215718711038554

/-! ## A208675.P888330611132072905

`A108625(A001105(n))+A000038(n+1)`
-/

namespace A208675.P888330611132072905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A001105 n).toNat + A000038 (n + 1)

end

end A208675.P888330611132072905

/-! ## A208675.P1093865523096120825

`A108625(A001105(n))/gcd(2, A108625(n))`
-/

namespace A208675.P1093865523096120825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108625 (A001105 n).toNat : ℚ) / (Int.gcd 2 (A108625 n) : ℚ)

end

end A208675.P1093865523096120825

/-! ## A208675.P6700998428409243090

`A006337(A001952(n+1))*A108625(A001105(n))`
-/

namespace A208675.P6700998428409243090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A001952 (n + 1)).toNat * A108625 (A001105 n).toNat

end

end A208675.P6700998428409243090

/-! ## A208675.P12345573069916067270

`A006337(A003152(n+1))*A108625(A001105(n))`
-/

namespace A208675.P12345573069916067270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A003152 (n + 1)).toNat * A108625 (A001105 n).toNat

end

end A208675.P12345573069916067270

/-!
# A208676: G.f.: 1 = Sum_{n>=1} a(n) * x^n*(1-x)^(n+1) / Product_{k=1..n} (1 + (k+1)*x).

The programs for A208676, there is no canonical definition to state claims against.
-/

/-! ## A208676.P10783658950653351388

`A031980(A122704(n))`
-/

namespace A208676.P10783658950653351388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031980 (A122704 n).toNat

end

end A208676.P10783658950653351388

/-! ## A208676.P13964559979875613269

`A213591(n+1)-A004198(A001514(n))`
-/

namespace A208676.P13964559979875613269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213591 (n + 1) - A004198 (A001514 n).toNat

end

end A208676.P13964559979875613269

/-!
# A208677: G.f.: 1 = Sum_{n>=1} a(n) * x^n*(1-x)^(n+1) / Product_{k=1..n} (1 + (k+2)*x).

The programs for A208677, there is no canonical definition to state claims against.
-/

/-! ## A208677.P9410196980484972659

`A065033(A082580(n)-A081408(n))`
-/

namespace A208677.P9410196980484972659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A082580 n - A081408 n).toNat

end

end A208677.P9410196980484972659

/-! ## A208677.P8230406923698060585

`A008611(A174493(n+1)-A179397(n+3))`
-/

namespace A208677.P8230406923698060585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A174493 (n + 1) - A179397 (n + 3)).toNat

end

end A208677.P8230406923698060585

/-!
# A208678: Row sums of triangle A132623.

The programs for A208678, there is no canonical definition to state claims against.
-/

/-! ## A208678.P2791534905426737171

`∑[∑[A000961(A321678(2*n))]]`
-/

namespace A208678.P2791534905426737171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A321678 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208678.P2791534905426737171

/-! ## A208678.P3653356445929523079

`A080036(A222058(n))+A002264(n)`
-/

namespace A208678.P3653356445929523079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A222058 n).toNat + A002264 n

end

end A208678.P3653356445929523079

/-!
# A208679: Kashaev's invariant for the (5,2)-torus knot (Solomon's seal knot).

The programs for A208679, there is no canonical definition to state claims against.
-/

/-! ## A208679.P10526110525276724937

`abs(A156285(Δ[n²]))`
-/

namespace A208679.P10526110525276724937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A208679.P10526110525276724937

/-! ## A208679.P6902704476000392452

`lcm(2, A156285(2*n+1))/2`
-/

namespace A208679.P6902704476000392452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A156285 (2 * n + 1)) : ℚ) / 2

end

end A208679.P6902704476000392452

/-! ## A208679.P2528177932502683858

`record[abs(A156285(A004442(n)))]`
-/

namespace A208679.P2528177932502683858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156285 (A004442 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208679.P2528177932502683858

/-! ## A208679.P14209159398767836194

`record[abs(A156285(A006257(n)))]`
-/

namespace A208679.P14209159398767836194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156285 (A006257 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208679.P14209159398767836194

/-! ## A208679.P14133167670377576179

`record[gcd(A142150(n), A156285(n))]`
-/

namespace A208679.P14133167670377576179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 n) (A156285 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208679.P14133167670377576179

/-!
# A208680: Kashaev invariant for the (7,2)-torus knot.

The programs for A208680, there is no canonical definition to state claims against.
-/

/-! ## A208680.P16460335831847663005

`abs(A156370(Δ[n²]))`
-/

namespace A208680.P16460335831847663005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A208680.P16460335831847663005

/-! ## A208680.P14466610765165291723

`record[abs(A156370(A006257(n)))]`
-/

namespace A208680.P14466610765165291723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156370 (A006257 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208680.P14466610765165291723

/-! ## A208680.P11198550861329553150

`record[gcd(A142150(n), A156370(n))]`
-/

namespace A208680.P11198550861329553150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 n) (A156370 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208680.P11198550861329553150

/-!
# A208681: Kashaev's invariant for the (9,2)-torus knot.

The programs for A208681, there is no canonical definition to state claims against.
-/

/-! ## A208681.P17536111365091313978

`abs(A156652(2*n+1))`
-/

namespace A208681.P17536111365091313978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156652 (2 * n + 1)|

end

end A208681.P17536111365091313978

/-! ## A208681.P12160178773141854831

`record[abs(A156652(A006257(n)))]`
-/

namespace A208681.P12160178773141854831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156652 (A006257 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208681.P12160178773141854831

/-! ## A208681.P2825031741207252454

`record[gcd(A142150(n), A156652(n))]`
-/

namespace A208681.P2825031741207252454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 n) (A156652 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208681.P2825031741207252454

/-!
# A208683: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208683, there is no canonical definition to state claims against.
-/

/-! ## A208683.P3662282021287650354

`A208688((n+1)²+n²)`
-/

namespace A208683.P3662282021287650354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 ((n + 1) ^ 2 + n ^ 2)

end

end A208683.P3662282021287650354

/-! ## A208683.P4283866482890377384

`record[A003982(n)*A208688(n+1)]`
-/

namespace A208683.P4283866482890377384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208683.P4283866482890377384

/-! ## A208683.P6910904647934393163

`record[root(A208688(n+1), A217029(n+1))]`
-/

namespace A208683.P6910904647934393163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208688 (n + 1) : ℝ) ^ (1 / (A217029 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208683.P6910904647934393163

/-! ## A208683.P18346958225657092542

`record[gcd(A204016(n+1), A208688(n+1))]`
-/

namespace A208683.P18346958225657092542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A208688 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208683.P18346958225657092542

/-! ## A208683.P712088584482863048

`A208688(A001844(n))+A185284(n)`
-/

namespace A208683.P712088584482863048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A001844 n).toNat + A185284 n

end

end A208683.P712088584482863048

/-!
# A208684: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208684, there is no canonical definition to state claims against.
-/

/-! ## A208684.P9751566668896294817

`A207724(n+1)/A207725(n+1)*A207726(n+1)`
-/

namespace A208684.P9751566668896294817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) : ℚ) / (A207725 (n + 1) : ℚ) * (A207726 (n + 1) : ℚ)

end

end A208684.P9751566668896294817

/-! ## A208684.P16102044847609085024

`sqrt(A207069(n+1))*sqrt(A207727(n+1))`
-/

namespace A208684.P16102044847609085024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) : ℝ) * Real.sqrt (A207727 (n + 1) : ℝ)

end

end A208684.P16102044847609085024

/-! ## A208684.P6110719634713868543

`A207724(n+1)/A207726(n+1)*A207727(n+1)`
-/

namespace A208684.P6110719634713868543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) : ℚ) / (A207726 (n + 1) : ℚ) * (A207727 (n + 1) : ℚ)

end

end A208684.P6110719634713868543

/-! ## A208684.P3471399513339896471

`sqrt(A207069(n+1)*A207727(n+1))`
-/

namespace A208684.P3471399513339896471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) * A207727 (n + 1) : ℝ)

end

end A208684.P3471399513339896471

/-! ## A208684.P6890766546818030562

`A208688(A027379(n+2))`
-/

namespace A208684.P6890766546818030562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A027379 (n + 2)).toNat

end

end A208684.P6890766546818030562

/-!
# A208685: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208685, there is no canonical definition to state claims against.
-/

/-! ## A208685.P16316283407671686076

`A207724(n+1)/A207726(n+1)*A207728(n+1)`
-/

namespace A208685.P16316283407671686076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) : ℚ) / (A207726 (n + 1) : ℚ) * (A207728 (n + 1) : ℚ)

end

end A208685.P16316283407671686076

/-! ## A208685.P5094531107376227813

`A208688(A046691(n+3))`
-/

namespace A208685.P5094531107376227813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A046691 (n + 3)).toNat

end

end A208685.P5094531107376227813

/-! ## A208685.P18218342432573399042

`A208688(Δ[A023545(n+1)])`
-/

namespace A208685.P18218342432573399042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (f1 (n + 1) - f1 n).toNat

end

end A208685.P18218342432573399042

/-! ## A208685.P16789781602077000397

`A208688(A052905(n+2)+1)`
-/

namespace A208685.P16789781602077000397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A052905 (n + 2) + 1).toNat

end

end A208685.P16789781602077000397

/-! ## A208685.P13034820210085711389

`A208688(A000124(n+5)-5)`
-/

namespace A208685.P13034820210085711389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A000124 (n + 5) - 5).toNat

end

end A208685.P13034820210085711389

/-!
# A208686: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208686, there is no canonical definition to state claims against.
-/

/-! ## A208686.P11960397824812954493

`A208688(∑[n+6]+10)`
-/

namespace A208686.P11960397824812954493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A208686.P11960397824812954493

/-! ## A208686.P10473826905895753372

`A208688(A052905(n+3))%A208839(n+1)`
-/

namespace A208686.P10473826905895753372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208688 (A052905 (n + 3)).toNat) (A208839 (n + 1))

end

end A208686.P10473826905895753372

/-! ## A208686.P8463532731058016478

`A208688(A052905(n+3))%A107361(A167499(n))`
-/

namespace A208686.P8463532731058016478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208688 (A052905 (n + 3)).toNat) (A107361 (A167499 n).toNat)

end

end A208686.P8463532731058016478

/-! ## A208686.P14635801691812981144

`A208848(A208848(n))+A208688(A052905(n+3))`
-/

namespace A208686.P14635801691812981144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208848 (A208848 n).toNat + A208688 (A052905 (n + 3)).toNat

end

end A208686.P14635801691812981144

/-! ## A208686.P16179192180936032002

`A210709(3*(n+1))+A208688(A052905(n+3))`
-/

namespace A208686.P16179192180936032002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (3 * (n + 1)) + A208688 (A052905 (n + 3)).toNat

end

end A208686.P16179192180936032002

/-!
# A208687: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208687, there is no canonical definition to state claims against.
-/

/-! ## A208687.P9451383317658372843

`A208688(A055999(n+4))`
-/

namespace A208687.P9451383317658372843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A055999 (n + 4)).toNat

end

end A208687.P9451383317658372843

/-! ## A208687.P9085297794232804262

`A208688(A027379(n+5)-3)`
-/

namespace A208687.P9085297794232804262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A027379 (n + 5) - 3).toNat

end

end A208687.P9085297794232804262

/-! ## A208687.P751089683291045654

`A208688(A000096(n+6)-5)`
-/

namespace A208687.P751089683291045654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A000096 (n + 6) - 5).toNat

end

end A208687.P751089683291045654

/-! ## A208687.P7081868969952995880

`A208688(A000124(n+7)-7)`
-/

namespace A208687.P7081868969952995880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A000124 (n + 7) - 7).toNat

end

end A208687.P7081868969952995880

/-! ## A208687.P4917952350620813365

`A208688(eq[8, A004736(n+1)]-(n+6))`
-/

namespace A208687.P4917952350620813365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 6))

end

end A208687.P4917952350620813365

/-!
# A208688: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208688, there is no canonical definition to state claims against.
-/

/-! ## A208688.P1693910355693543979

`A210709(A067747(n+1))+A208840(n+1)`
-/

namespace A208688.P1693910355693543979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A067747 (n + 1)).toNat + A208840 (n + 1)

end

end A208688.P1693910355693543979

/-! ## A208688.P14836941681846191340

`A210709(A289439(3*n+4))+A208840(n+1)`
-/

namespace A208688.P14836941681846191340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A289439 (3 * n + 4)).toNat + A208840 (n + 1)

end

end A208688.P14836941681846191340

/-! ## A208688.P5642622594648514361

`A210709(A216556(n))+A208840(n+1)`
-/

namespace A208688.P5642622594648514361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A216556 n).toNat + A208840 (n + 1)

end

end A208688.P5642622594648514361

/-! ## A208688.P11871142712955935550

`A208840(n+1)%A005392(n)`
-/

namespace A208688.P11871142712955935550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208840 (n + 1)) (A005392 n)

end

end A208688.P11871142712955935550

/-! ## A208688.P11528239652285812063

`A208840(C(n+1, n))%A349086(Δ[n²])`
-/

namespace A208688.P11528239652285812063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208840 (Nat.choose (n + 1) n)) (A349086 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A208688.P11528239652285812063

/-!
# A208689: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208689, the canonical program `A208689.P13785335137073894226` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208689 has offset 1).

The definition of A208689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208689.P9916666939556006226

`Δ[ogf(6/(1-2x-4x^2+3x^3))]`
-/

namespace A208689.P9916666939556006226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -2, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208689.P9916666939556006226

namespace A208689

/-- `Δ[ogf(6/(1-2x-4x^2+3x^3))]` -/
def P9916666939556006226.Spec : Prop :=
  ∀ n, P9916666939556006226.a n = A208689 (n + 1)

end A208689

/-! ## A208689.P14665942484180308907

`ogf((6+24x-18x^2)/(1-2x-4x^2+3x^3))`
-/

namespace A208689.P14665942484180308907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, -18] [1, -2, -4, 3] n

end

end A208689.P14665942484180308907

namespace A208689

/-- `ogf((6+24x-18x^2)/(1-2x-4x^2+3x^3))` -/
def P14665942484180308907.Spec : Prop :=
  ∀ n, P14665942484180308907.a n = A208689 (n + 1)

end A208689

/-! ## A208689.P13785335137073894226

`6*Δ[3^n+a(n-2)-a(n-1)]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208689

/-- `6*Δ[3^n+a(n-2)-a(n-1)]` -/
def P13785335137073894226.Spec : Prop :=
  ∀ n, P13785335137073894226.a n = A208689 (n + 1)

theorem P13785335137073894226.correct : P13785335137073894226.Spec := by
  intro n
  simp only [A208689, Nat.add_sub_cancel]

end A208689

/-! ## A208689.P12594544520798719311

`2*a(n-1)+4*a(n-2)-3*a(n-3)` with `a(0)=6, a(1)=36, a(2)=78`
-/

namespace A208689.P12594544520798719311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 36, 78] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 3 * a (n - 3)

end

end A208689.P12594544520798719311

namespace A208689

/-- `2*a(n-1)+4*a(n-2)-3*a(n-3)` -/
def P12594544520798719311.Spec : Prop :=
  ∀ n, P12594544520798719311.a n = A208689 (n + 1)

end A208689

/-! ## A208689.P18206147544510855238

`Δ[6*A107361(n)]`
-/

namespace A208689.P18206147544510855238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A107361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208689.P18206147544510855238

namespace A208689

/-- `Δ[6*A107361(n)]` -/
def P18206147544510855238.Spec : Prop :=
  ∀ n, P18206147544510855238.a n = A208689 (n + 1)

end A208689

/-! ## A208689.P8296335500542207729

`6*A239530(n+2)`
-/

namespace A208689.P8296335500542207729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A239530 (n + 2)

end

end A208689.P8296335500542207729

namespace A208689

/-- `6*A239530(n+2)` -/
def P8296335500542207729.Spec : Prop :=
  ∀ n, P8296335500542207729.a n = A208689 (n + 1)

end A208689

/-! ## A208689.P10413018006939920802

`A239532(n+2)/A239530(n+2)`
-/

namespace A208689.P10413018006939920802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239532 (n + 2) : ℚ) / (A239530 (n + 2) : ℚ)

end

end A208689.P10413018006939920802

namespace A208689

/-- `A239532(n+2)/A239530(n+2)` -/
def P10413018006939920802.Spec : Prop :=
  ∀ n, P10413018006939920802.a n = (A208689 (n + 1) : ℚ)

end A208689

/-! ## A208689.P14917386823950796170

`A208840(∑[n+2]+4)`
-/

namespace A208689.P14917386823950796170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208689.P14917386823950796170

namespace A208689

/-- `A208840(∑[n+2]+4)` -/
def P14917386823950796170.Spec : Prop :=
  ∀ n, P14917386823950796170.a n = A208689 (n + 1)

end A208689

/-! ## A208689.P15283125084533699714

`A208688(∑[n+2]+4)`
-/

namespace A208689.P15283125084533699714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208689.P15283125084533699714

namespace A208689

/-- `A208688(∑[n+2]+4)` -/
def P15283125084533699714.Spec : Prop :=
  ∀ n, P15283125084533699714.a n = A208689 (n + 1)

end A208689

/-!
# A208690: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208690, the canonical program `A208690.P1047065650142410368` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208690 has offset 1).

The definition of A208690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208690.P13453170723452202987

`ogf((9+72x+18x^2-90x^3)/(1-x-10x^2-2x^3+10x^4))`
-/

namespace A208690.P13453170723452202987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 72, 18, -90] [1, -1, -10, -2, 10] n

end

end A208690.P13453170723452202987

namespace A208690

/-- `ogf((9+72x+18x^2-90x^3)/(1-x-10x^2-2x^3+10x^4))` -/
def P13453170723452202987.Spec : Prop :=
  ∀ n, P13453170723452202987.a n = A208690 (n + 1)

end A208690

/-! ## A208690.P1047065650142410368

`a(n-1)+10*a(n-2)+2*a(n-3)-10*a(n-4)` with `a(0)=9, a(1)=81, a(2)=189, a(3)=927`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208690

/-- `a(n-1)+10*a(n-2)+2*a(n-3)-10*a(n-4)` -/
def P1047065650142410368.Spec : Prop :=
  ∀ n, P1047065650142410368.a n = A208690 (n + 1)

theorem P1047065650142410368.correct : P1047065650142410368.Spec := by
  intro n
  simp only [A208690, Nat.add_sub_cancel]

end A208690

/-! ## A208690.P3051967992545771732

`A208688(A052905(n)+9)`
-/

namespace A208690.P3051967992545771732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A052905 n + 9).toNat

end

end A208690.P3051967992545771732

namespace A208690

/-- `A208688(A052905(n)+9)` -/
def P3051967992545771732.Spec : Prop :=
  ∀ n, P3051967992545771732.a n = A208690 (n + 1)

end A208690

/-! ## A208690.P294749511343128231

`A208688(A055999(n)+10)`
-/

namespace A208690.P294749511343128231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A055999 n + 10).toNat

end

end A208690.P294749511343128231

namespace A208690

/-- `A208688(A055999(n)+10)` -/
def P294749511343128231.Spec : Prop :=
  ∀ n, P294749511343128231.a n = A208690 (n + 1)

end A208690

/-! ## A208690.P17715398985595470588

`A208688(A167614(n+2)+1)`
-/

namespace A208690.P17715398985595470588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A167614 (n + 2) + 1).toNat

end

end A208690.P17715398985595470588

namespace A208690

/-- `A208688(A167614(n+2)+1)` -/
def P17715398985595470588.Spec : Prop :=
  ∀ n, P17715398985595470588.a n = A208690 (n + 1)

end A208690

/-!
# A208691: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208691, there is no canonical definition to state claims against.
-/

/-! ## A208691.P8231861157411338989

`A208688(A167499(n+3))`
-/

namespace A208691.P8231861157411338989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A167499 (n + 3)).toNat

end

end A208691.P8231861157411338989

/-! ## A208691.P9001616915996496791

`A208688(A056000(n)+15)`
-/

namespace A208691.P9001616915996496791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A056000 n + 15).toNat

end

end A208691.P9001616915996496791

/-! ## A208691.P7552063907339827435

`A208688(A167614(n+3)+2)`
-/

namespace A208691.P7552063907339827435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A167614 (n + 3) + 2).toNat

end

end A208691.P7552063907339827435

/-! ## A208691.P7860187835143732301

`A208688(A046691(n+2)+9)`
-/

namespace A208691.P7860187835143732301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A046691 (n + 2) + 9).toNat

end

end A208691.P7860187835143732301

/-! ## A208691.P29232503043799412

`A208688(A052905(n+1)+10)`
-/

namespace A208691.P29232503043799412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A052905 (n + 1) + 10).toNat

end

end A208691.P29232503043799412

/-!
# A208692: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208692, there is no canonical definition to state claims against.
-/

/-! ## A208692.P1779329154556122552

`A208688(A167499(n+4)+1)`
-/

namespace A208692.P1779329154556122552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A167499 (n + 4) + 1).toNat

end

end A208692.P1779329154556122552

/-! ## A208692.P12901080770706213345

`A208688(A167614(n+4)+3)`
-/

namespace A208692.P12901080770706213345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A167614 (n + 4) + 3).toNat

end

end A208692.P12901080770706213345

/-! ## A208692.P11589745969048373717

`A208688(A046691(n+3)+10)`
-/

namespace A208692.P11589745969048373717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A046691 (n + 3) + 10).toNat

end

end A208692.P11589745969048373717

/-! ## A208692.P6916641796160924382

`A208688(A052905(n+2)+11)`
-/

namespace A208692.P6916641796160924382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A052905 (n + 2) + 11).toNat

end

end A208692.P6916641796160924382

/-! ## A208692.P2116278162823164790

`A208688(A055999(n+2)+12)`
-/

namespace A208692.P2116278162823164790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A055999 (n + 2) + 12).toNat

end

end A208692.P2116278162823164790

/-!
# A208693: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A208693, there is no canonical definition to state claims against.
-/

/-! ## A208693.P13799049191337151742

`A208688(A167487(n+5))`
-/

namespace A208693.P13799049191337151742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A167487 (n + 5)).toNat

end

end A208693.P13799049191337151742

/-! ## A208693.P10892164514277664081

`A208688(A133263(n+6)+5)`
-/

namespace A208693.P10892164514277664081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A133263 (n + 6) + 5).toNat

end

end A208693.P10892164514277664081

/-! ## A208693.P11468351331636821766

`A208688(A000124(n+6)+6)`
-/

namespace A208693.P11468351331636821766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A000124 (n + 6) + 6).toNat

end

end A208693.P11468351331636821766

/-! ## A208693.P14491074132376683381

`A208688(A000217(n+6)+7)`
-/

namespace A208693.P14491074132376683381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A000217 (n + 6) + 7).toNat

end

end A208693.P14491074132376683381

/-! ## A208693.P17274503329360334688

`A208688(A052905(n+3)+12)`
-/

namespace A208693.P17274503329360334688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (A052905 (n + 3) + 12).toNat

end

end A208693.P17274503329360334688

/-!
# A208694: Number of n X n 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208694, there is no canonical definition to state claims against.
-/

/-! ## A208694.P7968347329133264408

`A208698(∑[4*n]+1)`
-/

namespace A208694.P7968347329133264408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208694.P7968347329133264408

/-! ## A208694.P18072007099397107706

`and(-1, A208698(A001844(n)))`
-/

namespace A208694.P18072007099397107706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A208698 (A001844 n).toNat)

end

end A208694.P18072007099397107706

/-! ## A208694.P14814660950253620914

`record[gcd(A114327(n), A208698(n+1))]`
-/

namespace A208694.P14814660950253620914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208698 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208694.P14814660950253620914

/-! ## A208694.P18039344749788006013

`A208698(A001844(n))+A185238(n)`
-/

namespace A208694.P18039344749788006013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A001844 n).toNat + A185238 n

end

end A208694.P18039344749788006013

/-! ## A208694.P4402886670818393949

`A208698(A001844(n))+A185284(n)`
-/

namespace A208694.P4402886670818393949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A001844 n).toNat + A185284 n

end

end A208694.P4402886670818393949

/-!
# A208695: Number of nX5 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208695, there is no canonical definition to state claims against.
-/

/-! ## A208695.P2139114876232905577

`A208698(Δ[A264443(n)])`
-/

namespace A208695.P2139114876232905577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (f1 (n + 1) - f1 n).toNat

end

end A208695.P2139114876232905577

/-! ## A208695.P6493647599575182015

`A208698(A046691(n+3))`
-/

namespace A208695.P6493647599575182015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A046691 (n + 3)).toNat

end

end A208695.P6493647599575182015

/-! ## A208695.P3672310747323547617

`A208698(Δ[A023545(n+1)])`
-/

namespace A208695.P3672310747323547617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (f1 (n + 1) - f1 n).toNat

end

end A208695.P3672310747323547617

/-! ## A208695.P469791481299637414

`A208698(A000124(n+5)-5)`
-/

namespace A208695.P469791481299637414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A000124 (n + 5) - 5).toNat

end

end A208695.P469791481299637414

/-! ## A208695.P17127113405181401157

`A208698(A161680(n+6)-4)`
-/

namespace A208695.P17127113405181401157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A161680 (n + 6) - 4).toNat

end

end A208695.P17127113405181401157

/-!
# A208696: Number of nX6 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208696, there is no canonical definition to state claims against.
-/

/-! ## A208696.P8475748326545030447

`A208698(A056119(n)+16)`
-/

namespace A208696.P8475748326545030447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A056119 n + 16).toNat

end

end A208696.P8475748326545030447

/-! ## A208696.P6598331487810657626

`A208698(eq[3, A219347(n)])`
-/

namespace A208696.P6598331487810657626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208696.P6598331487810657626

/-! ## A208696.P15489599690667117735

`A208698(eq[5, A193592(n)])`
-/

namespace A208696.P15489599690667117735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208696.P15489599690667117735

/-! ## A208696.P5992727190559182416

`A208698(eq[7, A049286(n+1)])`
-/

namespace A208696.P5992727190559182416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208696.P5992727190559182416

/-! ## A208696.P5379351529764376617

`A208698(Δ[Δ[A006504(n+1)]])`
-/

namespace A208696.P5379351529764376617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (f1 (n + 1) - f1 n).toNat

end

end A208696.P5379351529764376617

/-!
# A208697: Number of nX7 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208697, there is no canonical definition to state claims against.
-/

/-! ## A208697.P13820906006346330828

`A208698(A055999(n+4))`
-/

namespace A208697.P13820906006346330828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A055999 (n + 4)).toNat

end

end A208697.P13820906006346330828

/-! ## A208697.P11810837650619133570

`A208698(eq[4, A219347(n)])`
-/

namespace A208697.P11810837650619133570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208697.P11810837650619133570

/-! ## A208697.P5076020472038753370

`A208698(eq[6, A193592(n)])`
-/

namespace A208697.P5076020472038753370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208697.P5076020472038753370

/-! ## A208697.P15299032568115768232

`A208698(Δ[n²]+A000217(n+5)+6)`
-/

namespace A208697.P15299032568115768232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A208697.P15299032568115768232

/-! ## A208697.P7118501630995091645

`A208698(eq[7, A200370(n+1)])`
-/

namespace A208697.P7118501630995091645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208697.P7118501630995091645

/-!
# A208698: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208698, there is no canonical definition to state claims against.
-/

/-! ## A208698.P2043351002689176232

`A207519(n+1)+A016389(A119502(n))`
-/

namespace A208698.P2043351002689176232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (n + 1) + A016389 (A119502 n).toNat

end

end A208698.P2043351002689176232

/-! ## A208698.P16824531828069736930

`A207519(n+1)+A016389(A152656(n))`
-/

namespace A208698.P16824531828069736930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (n + 1) + A016389 (A152656 n).toNat

end

end A208698.P16824531828069736930

/-! ## A208698.P8564864143347989397

`A207519(n+1)+A070204(A126331(n))`
-/

namespace A208698.P8564864143347989397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (n + 1) + A070204 (A126331 n).toNat

end

end A208698.P8564864143347989397

/-! ## A208698.P15791727683604500267

`A359472(A060281(n+1))+A207519(n+1)`
-/

namespace A208698.P15791727683604500267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359472 (A060281 (n + 1)).toNat + A207519 (n + 1)

end

end A208698.P15791727683604500267

/-! ## A208698.P6790225233586910445

`A207519(A242474(n+1))+A014083(n)`
-/

namespace A208698.P6790225233586910445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A242474 (n + 1)).toNat + A014083 n

end

end A208698.P6790225233586910445

/-!
# A208699: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208699, there is no canonical definition to state claims against.
-/

/-! ## A208699.P15290779221902574061

`A208698(A141214(n)+7)`
-/

namespace A208699.P15290779221902574061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A141214 n + 7).toNat

end

end A208699.P15290779221902574061

/-! ## A208699.P4907307031866442605

`A208698(A052905(n)+9)`
-/

namespace A208699.P4907307031866442605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A052905 n + 9).toNat

end

end A208699.P4907307031866442605

/-! ## A208699.P5013878899948890439

`A208698(A055999(n)+10)`
-/

namespace A208699.P5013878899948890439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A055999 n + 10).toNat

end

end A208699.P5013878899948890439

/-! ## A208699.P6463367280662116837

`A208698(A167614(n+2)+1)`
-/

namespace A208699.P6463367280662116837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A167614 (n + 2) + 1).toNat

end

end A208699.P6463367280662116837

/-! ## A208699.P16494152347942382700

`A208698(A000217(n+3)+4)`
-/

namespace A208699.P16494152347942382700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A000217 (n + 3) + 4).toNat

end

end A208699.P16494152347942382700

